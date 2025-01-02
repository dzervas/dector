from pwn import serialtube, u16
from kaitaistruct import KaitaiStream, BytesIO

from busmail import Busmail, BusmailHeader

# i = serialtube('/dev/pts/2', baudrate=115200)
o = serialtube('/dev/ttyUSB0', baudrate=115200)
i = o

frame = i.recvn(5)
print(frame.hex())
print(f"RECV LENGTH {frame[1] + frame[2]} CODE {hex(frame[3])} CRC {hex(frame[4])}")
print("sending sync frame")
o.write(b'\x10\x00\x01\xc8\xc8')
rxseq = 0

while True:
    nextByte = i.recvn(1)
    if nextByte == b'\x10':
        lengthBytes = i.recvn(2)
        length = u16(lengthBytes, endianness='big')
        ctrlCode = i.recvn(1)
        payload = i.recvn(length-1)
        crcSum = i.recvn(1)
        # print(f"FRAME {ctrlCode.hex()} LENGTH {length} PAYLOAD {payload.hex()} CRC {crcSum.hex()}")

        # merge all the bytes into a single frame
        frame = nextByte + lengthBytes + ctrlCode + payload + crcSum
        mail = Busmail.from_bytes(frame)
        mail._read()
        print(f"FRAME {hex(mail.frame_char)} LENGTH {mail.length} CRC {hex(mail.checksum)}")
        if mail.header.ic_frame == BusmailHeader.IcEnum.information:
            print(f"\tINFO TX {mail.header.tx_seq} POLL {mail.header.poll_final} RX {mail.header.rx_seq}")
        else:
            print(f"\tCTRL {mail.header.su_control_frame} POLL {mail.header.poll_final} ")

        if hasattr(mail, "mail"):
            print(f"\tPROGRAM ID {hex(mail.mail.program_id)} TASK ID {hex(mail.mail.task_id)} PRIMITIVE {mail.mail.primitive} PARAMETERS {mail.mail.parameters}")


        if mail.header.ic_frame == BusmailHeader.IcEnum.control and mail.header.su_control_frame == BusmailHeader.CtrlFrameType.unnumbered:
            rxseq = 0

        # Fix out-of-sync rx sequence
        if hasattr(mail.header, "rx_seq"):
            rxseq = mail.header.rx_seq

        ack = Busmail(KaitaiStream(BytesIO()))
        ack.frame_char = 0x10
        ack.header = BusmailHeader(KaitaiStream(BytesIO()))
        ack.header.ic_frame = BusmailHeader.IcEnum.control
        ack.header.su_control_frame = BusmailHeader.CtrlFrameType.supervisory
        ack.header.su_id = BusmailHeader.SuIdType.receive_ready
        ack.header.poll_final = False
        ack.header.su_id = rxseq
        ack.length = 1 # Just the header
        print(f"SEND ACK RX {ack.header._io}")
        ack.checksum = ack.header._io._io.getvalue()[0]
        rxseq += 1
        o.write(ack._io._io.getvalue())
        # o.write(bytearray([
        #     0x10, # Frame start
        #     0x00, 0x01, # Length
        #     0x01, # Header: Information frame, 0 tx sequence, not poll final, 1 rx sequence
        #     # Mail
        #     0x00, # Program ID (should always be 0)
        #     0x01, # Task ID (should always be 1)
        #     0x02, 0x59, # Primitive 0x5902 API_HAL_LED_REQ
        #     # Mail parameters
        #     0x01, # LED number
        #     0x01, # Command count
        #     0x02, # Command: LED repeat sequence
        #     0xf4, 0x01, # Duration 500ms
        # ]))

        # o.write(bytearray([
        #     0x10, # Frame start
        #     0x00, 0x01, # Length
        #     0x01, # Header: Information frame, 0 tx sequence, not poll final, 1 rx sequence
        #     # Mail
        #     0x00, # Program ID (should always be 0)
        #     0x01, # Task ID (should always be 1)
        #     0x02, 0x59, # Primitive 0x5902 API_HAL_LED_REQ
        #     # Mail parameters
        #     0x01, # LED number
        #     0x01, # Command count
        #     0x02, # Command: LED repeat sequence
        #     0xf4, 0x01, # Duration 500ms
        # ]))
        continue
    print(nextByte.hex())
