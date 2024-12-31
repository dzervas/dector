meta:
  id: busmail_mail
  endian: be
  # Got from SC14CVMDECTDEVKT.pdf page 92

seq:
  - id: program_id
    type: u1
    doc: >
      This is some kind of debugging for the target.
      The docs say that when sending a frame, this should always be 0.
      On reception it might be something else, but it should be ignored.

  - id: task_id
    type: u1
    doc: >
      The TaskID specifies which software task inside the CVM module should receive the API mail.
      Docs say that for development, sent frames should have a value of 1 (API_TEST).
      They note: other values of the TaskID should not be used as they could send mails to undesired tasks of the
      When receiving mails from the CVM, the TaskID might be a different value.
      At reception, please ignore this value.

  - id: primitive
    type: u2le
    doc: >
      The primitive is the actual API command to send/receive commands to/from the CVM
      example: keypad command to send a key to the pstn line
      primitive = API_PP_KEYPAD_REQ (0x858A)

  - id: parameters
    size-eos: true
    doc: >
      An array of parameters for the primitive.

      example: if sending the primitive API_PP_KEYPAD_REQ, the mail parameters to follow would be
      the number of digits to send and the actual digits
      parameters = bNumOfDigits, bDigits[]
