.equ    io_offs, 2147483648
.equ    msg_base, 0
.equ    digit_base, 8
.equ    digit_incr, 24
.equ    io_digit_enable, 14
.equ    io_digit_base, 8
.equ    "Rece", 0x52656365
.equ    "ived", 0x69766564
.equ    "n", 0x0a
.equ    SW,0
.equ    LD,1
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
# Digit encodings
data_setup:
    li x2, msg_base # base address for msg
    li x1, "Rece" 
    sw x1, 0(x2)
    li x1, "ived" # e
    sw x1, 4(x2)
    li x1, "n" # c
    sb x1, 8(x2)
    li x2, io_offs      # IO address offset
main:
# Update the LEDs to match the switches
# Keep this as a quick test to see if the loop is not stuck
    lb x1, 0(x2)        # load SW
    sb x1, 1(x2)        # store into LD

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

    li x1, 0
    li x3, 100000            # wait for 10k cycles (~1ms)
wait_cnt:
    addi x1, x1, 1
    blt x1, x3, wait_cnt
    jal zero, main          # repeat the entire loop again
