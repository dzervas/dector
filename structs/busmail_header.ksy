meta:
  id: busmail_header
  endian: be
  # Got from SC14CVMDECTDEVKT.pdf page 89

enums:
  ic_enum:
    0: information
    1: control
    
  ctrl_frame_type:
    0: supervisory
    1: unnumbered

seq:
  # We read 1 bit for I/C, 1 bit for S/U (which is only relevant
  # if I/C=1), and then parse the remaining 6 bits differently
  # depending on I/C and S/U
  - id: ic_frame
    type: b1
    enum: ic_enum
    doc: >
      Bit 7: I/C.
      0 => Information frame
      1 => Control frame

  # For the remaining 6 bits, we parse them differently
  - id: frame_data
    type:
      switch-on: ic_frame
      cases:
        ic_enum::information: information_frame
        ic_enum::control: control_frame
    doc: >
      The remaining 6 bits differ based on whether this is an
      Information frame (I/C=0) or a Control frame (I/C=1).

types:
  information_frame:
    seq:
      # We already used 2 bits for i_c and s_u, so the next 6 bits
      # are effectively bits 5..0 in your diagram. But conceptually:
      #
      #  bits 6..4 => TxSeq (3 bits)
      #  bit 3     => PF
      #  bits 2..0 => RxSeq
      #
      # Because we read i_c (1 bit) + s_u(1 bit) first, we have 6 bits left,
      # so we do them in the correct order:
      - id: tx_seq
        type: b3
      - id: pf
        type: b1
      - id: rx_seq
        type: b3

  control_frame:
    seq:
    - id: su_control_frame
      type: b1
      enum: ctrl_frame_type
      doc: >
        Bit 6: S/U. Only valid if I/C=1.
        0 => Supervisory ctrl frame,
        1 => Unnumbered ctrl frame.
        
    # We have 6 bits left in the byte, but we need to see if it's
    # Supervisory (S/U=0) or Unnumbered (S/U=1). We'll switch again.
    - id: ctrl_subtype
      type:
        switch-on: su_control_frame
        cases:
          ctrl_frame_type::supervisory: supervisory_ctrl_frame
          ctrl_frame_type::unnumbered: unnumbered_ctrl_frame
      doc: >
        Control frames split into Supervisory (S/U=0) or Unnumbered (S/U=1).

  supervisory_ctrl_frame:
    seq:
      # In your doc: bits 5..4 => SuId (2 bits), bit 3 => PF, bits 2..0 => RxSeq
      - id: su_id
        type: b2
        doc: >
          Supervisory Identifier (00=RR, 01=REJ, 10=RNR, etc.)
      - id: pf
        type: b1
        doc: >
          Poll/Final bit
      - id: rx_seq
        type: b3
        doc: >
          3-bit Rx sequence number

  unnumbered_ctrl_frame:
    seq:
      # In your doc: bits 5..4 => UnId (2 bits), bit 3 => PF, bits 2..0 => reserved
      - id: un_id
        type: b2
        doc: >
          Unnumbered frame Identifier (00=SABM, etc.)
      - id: pf
        type: b1
        doc: >
          Poll/Final bit
      - id: reserved
        type: b3
        doc: >
          Reserved bits in unnumbered frame
