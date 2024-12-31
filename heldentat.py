from pwn import serialtube, u16

# i = serialtube('/dev/pts/2', baudrate=115200)
o = serialtube('/dev/ttyUSB0', baudrate=115200)
i = o

# frame = i.recvn(5)
# print(frame.hex())
# print(f"RECV LENGTH {frame[1] + frame[2]} CODE {hex(frame[3])} CRC {hex(frame[4])}")
print("sending sync frame")
o.write(b'\x10\x00\x01\xc8\xc8')

while True:
    nextByte = i.recvn(1)
    if nextByte == b'\x10':
        lengthBytes = i.recvn(2)
        length = u16(lengthBytes, endianness='big')
        ctrlCode = i.recvn(1)
        payload = i.recvn(length-1)
        crcSum = i.recvn(1)
        print(f"FRAME {ctrlCode.hex()} LENGTH {length} PAYLOAD {payload.hex()} CRC {crcSum.hex()}")
        continue
    print(nextByte.hex())
