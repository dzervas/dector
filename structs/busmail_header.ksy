meta:
  id: busmail_header
  endian: be
  bit-endian: be
  # Got from SC14CVMDECTDEVKT.pdf page 89

enums:
  ic_enum:
    0: information
    1: control
    
  ctrl_frame_type:
    0: supervisory
    1: unnumbered
    
  su_id_type:
    0b00: receive_ready
    0b01: reject
    0b10: receive_not_ready
    
  un_id_type:
    0b00: async_balanced

seq:
  - id: ic_frame
    type: b1
    enum: ic_enum

  # TODO: Since we're handling bits, it doesn't seem like we can do switch switching types (consumes the next byte!)
  - id: tx_seq
    type: b3
    if: ic_frame == ic_enum::information
    
  - id: su_control_frame
    type: b1
    enum: ctrl_frame_type
    if: ic_frame == ic_enum::control
    doc: >
      Bit 6: S/U. Only valid if I/C=1.
      0 => Supervisory ctrl frame,
      1 => Unnumbered ctrl frame.
  
  - id: su_id
    type: b2
    enum: su_id_type
    if: ic_frame == ic_enum::control and su_control_frame == ctrl_frame_type::supervisory
    doc: Supervisory Identifier (00=RR, 01=REJ, 10=RNR, etc.)
  - id: un_id
    type: b2
    enum: un_id_type
    if: ic_frame == ic_enum::control and su_control_frame == ctrl_frame_type::unnumbered
    doc: Unnumbered frame Identifier (00=SABM, etc.)
  
  - id: poll_final
    type: b1
    doc: If true, a status is expected (?)

  - id: rx_seq
    type: b3
    # In the case of an unnumbered frame, this is reserved but who cares

