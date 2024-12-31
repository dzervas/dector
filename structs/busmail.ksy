meta:
  id: busmail
  endian: be
  imports:
    - busmail_header
    - busmail_mail

seq:
  - id: frame_char
    type: u1
    doc: Start-of-frame indicator (often 0x10)

  - id: length
    type: u2
    doc: Length of header (1 byte) + payload (mail)

  - id: header
    type: busmail_header
    size: 1
    doc: The actual header is going to get parsed after the CRC calculation

  - id: mail
    type: busmail_mail
    size: length - 1
    if: length - 1 > 0
    doc: The payload of the frame, parsed later

  - id: checksum
    type: u1
    doc: "8-bit checksum = (header_raw + all payload bytes) mod 256"

# TODO: Check if the checksum is correct
