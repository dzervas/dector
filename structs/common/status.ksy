meta:
  id: status

enums:
  status:
    0x00: SUCCESS               # The request completed successfully.
    0x01: NOT_SUPPORTED         # The request is not supported.
    0x02: BAD_ARGUMENTS         # One or more arguments are not correct.
    0x03: BAD_ADDRESS           # The address is incorrect.
    0x04: BAD_FUNCTION          # Incorrect function.
    0x05: BAD_HANDLE            # The handle is invalid.
    0x06: BAD_DATA              # The data is invalid.
    0x07: BAD_LENGTH            # The program issued a command but the command length is incorrect.
    0x08: NO_MEMORY             # Not enough storage is available to process this command.
    0x09: NO_DEVICE             # No such device
    0x0A: NO_DATA               # No data is available.
    0x0B: RETRY                 # The operation could not be completed. A retry should be performed.
    0x0C: NOT_READY             # The device is not ready.
    0x0D: IO                    # I/O error
    0x0E: CRC                   # Data error (cyclic redundancy check).
    0x0F: CANCELLED             # The operation was cancelled.
    0x10: RESET                 # The I/O bus was reset.
    0x11: PENDING               # The operation is in progress.
    0x12: BUSY                  # Device or resource busy
    0x13: TIMEOUT               # This operation returned because the timeout period expired.
    0x14: OVERFLOW              # Value too large for defined data type
    0x15: NOT_FOUND             # Element not found.
    0x16: STALLED               # Endpoint stalled.
    0x17: DENIED                # Access denied or authentication failed.
    0x18: REJECTED              # Rejected (e.g. by user).
    0x19: AMBIGUOUS             # Ambiguous e.g. name or number.
    0x1A: NO_RESOURCE           # Not enough resources are available to process this command.
    0x1B: NOT_CONNECTED         # No connection to destination.
    0x1C: OFFLINE               # Destination is offline.
    0x1D: REMOTE_ERROR          # Failed at remote destination.
    0x1E: NO_CAPABILITY         # A required capability is missing.
    0x1F: FILE_ACCESS           # File access error.
    0x20: DUPLICATE             # Duplicate entry e.g. same entry already exists when trying to create.
    0x21: LOGGED_OUT            # Operation not possible while logged out.
    0x22: ABNORMAL_TERMINATION  # Operation terminated abnormally.
    0x23: FAILED                # Operation failed.
    0x24: UNKNOWN               # Unknown error.
    0x25: BLOCKED               # Destination is blocked.
    0x26: NOT_AUTHORIZED        # You are not authorized to perform this operation.
    0x27: PROXY_CONNECT         # Could not connect to proxy.
    0x28: INVALID_PASSWORD      # Invalid password.
    0x29: FORBIDDEN             # Forbidden.
    0x2A: MISSING_PARAMETER     # One or more mandatory paramters are missing.
    0x2B: SPARE_2B              # Spare.
    0x2C: SPARE_2C              # Spare.
    0x2D: SPARE_2D              # Spare.
    0x2E: SPARE_2E              # Spare.
    0x2F: SPARE_2F              # Spare.
    0x30: UNAVAILABLE           # Service unavailable.
    0x31: NETWORK               # Network error.
    0x32: NO_CREDITS            # No credits.
    0x33: LOW_CREDITS           # Low credits.
    0xFF: MAX
