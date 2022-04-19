.equ    io_offs, 2147483648
.equ    msg_base, 0
.equ    digit_base, 9
.equ    digit_incr, 24
.equ    io_digit_enable, 14
.equ    io_digit_base, 8
.equ    "Rece", 0x65636552 # byte order duh
.equ    "ived", 0x64657669
.equ    "n", 0x0a
.equ    SW,0
.equ    LD,1
.equ    GPIO_mode_lsb, 2
.equ    GPIO_mode_msb, 3
.equ    GPIO_wdata_lsb, 6
.equ    RX_status, 15
.equ    RX_control, 16
.equ    RX_do, 17
.equ    TX_status, 18
.equ    TX_control, 19
.equ    TX_din, 20
.equ    TX_TRANSMIT, 255
.equ    SSG_ENABLE, 255
.equ    RX_READ, 255
.equ    DISABLE, 0

.section .text
# Need to test the less-than and equality loops because they use different
# functionality. Unsigned comparison needs a separate test too. 
# Since I don't have an OS to manage execution, I need to place the
# values of all the data into memory myself.
# Load everything into memory
# String "Received\n"
# Digit encodings\

data_setup:
    li x2, msg_base # base address for msg
    li x1, "Rece" 
    sw x1, 0(x2)
    li x1, "ived" # e
    sw x1, 4(x2)
    li x1, "n" # c
    sb x1, 8(x2)
    li x2, digit_base # base address for digits
    li x1, 0x3f # ssg 0
    sb x1, 0(x2)
    li x1, 0x06 # ssg 1
    sb x1, 1(x2)
    li x1, 0x5b # ssg 2
    sb x1, 2(x2)
    li x1, 0x4f # ssg 3
    sb x1, 3(x2)
    li x1, 0x66 # ssg 4
    sb x1, 4(x2)
    li x1, 0x6d # ssg 5
    sb x1, 5(x2)
    li x1, 0x7d # ssg 6
    sb x1, 6(x2)
    li x1, 0x07 # ssg 7
    sb x1, 7(x2)
    li x1, 0x7f # ssg 8
    sb x1, 8(x2)
    li x1, 0x6f # ssg 9
    sb x1, 9(x2)
    li x1, 0x77 # ssg a
    sb x1, 10(x2)
    li x1, 0x7c # ssg b
    sb x1, 11(x2)
    li x1, 0x39 # ssg c
    sb x1, 12(x2)
    li x1, 0x5e # ssg d
    sb x1, 13(x2)
    li x1, 0x79 # ssg e
    sb x1, 14(x2)
    li x1, 0x71 # ssg f
    sb x1, 15(x2)
    li x2, io_offs      # IO address offset
    li x1, 255 # for ssg control
    sb x1, io_digit_enable(x2) # enable the digit display
    li x1, DISABLE
    sb x1, GPIO_mode_msb(x2) # Turn msb gpio bank into inputs (simulation use only for now)
main:
# Update the LEDs to match the switches
    lb x1, SW(x2)        # load SW
    sb x1, LD(x2)        # store into LD
    sb x1, GPIO_wdata_lsb(x2) # store into GPIO lsb too
    # Display rx data at the current location
    andi x7, x1, 0x0f       # put SW[3:0] into x7
    #addi x7, x7, digit_base 
    andi x8, x1, 0xf0       # put SW[7:4] into x8
    srli x8, x8, 4          # x8 >> 4 
    lb x7, digit_base(x7)   # load mem[x7+digit_base] into x7
    lb x8, digit_base(x8)   # load mem[x8+digit_base] into x8
    addi x9, x2, io_digit_base
    sb x7, 0(x9)# x7 -> mem[io_base  + io_digit_base + lsb_index]
    sb x8, 1(x9)# x8 -> mem[io_base + io_digit_base + msb_index]
    # wait for 100 cycles (~0.01ms)

    # Send "Received\n" message regardless
    li x1, 0                # i = 0
    li x3, 8                # i =< 8
tx_loop:
    lb x6, msg_base(x1)     # get msg[i] (byte)
    sb x6, TX_din(x2)       # put into TX_din register
    li x6, TX_TRANSMIT      # 255 activates the transmitter
    sb x6, TX_control(x2)   # put into the control register
    sb zero, TX_control(x2) # immediately unset
wait_tx:
    lb x7, TX_status(x2)    # get transmitter status
    bne x7, zero, wait_tx   # while not rdy, wait
    addi x1, x1, 1
    ble x1, x3, tx_loop     # loop until x1 > 8 (message is 9 bytes long)

    # Wait for 1ms
    li x1, 0
    li x3, 100000            
wait_cnt:
    addi x1, x1, 1
    blt x1, x3, wait_cnt
    jal zero, main          # repeat the entire loop again
