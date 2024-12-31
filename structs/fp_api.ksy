meta:
  id: fp_api

enums:
  api:
    # Management
    0x4004: GET_ID_REQ                 # Get the ID of the base
    0x4005: GET_ID_CFM                 # ^ response
    0x4006: GET_MODEL_REQ              # request a string indicating the model and manufacture
    0x4007: GET_MODEL_CFM              # ^ response
    0x4008: SET_ACCESS_CODE_REQ        # set the DECT access code
    0x4009: SET_ACCESS_CODE_CFM        # ^ response
    0x400A: GET_ACCESS_CODE_REQ        # get the DECT access code
    0x400B: GET_ACCESS_CODE_CFM        # ^ response
    0x4100: GET_REGISTRATION_COUNT_REQ # request the maximum number of PP's that can be registered to the FP, the number of PP's and the IPEI Ids of the PP's registered currently
    0x4101: GET_REGISTRATION_COUNT_CFM # ^ response
    0x4108: HANDSET_PRESENT_IND        # inform the Host when a PP has made a location update. This happens right after registration, when the PP is powered up and when it gets in to range again when it has been out of range. A CODEC list is included if the PP supports wide band audio (CAT-iq handset).
    0x4109: GET_HANDSET_IPUI_REQ       # equest the IPUI of one of the handsets registered
    0x410A: GET_HANDSET_IPUI_CFM       # ^ response
    0x410B: STOP_PROTOCOL_REQ          # request a complete stop of the protocol. When stopped the FP will stop transmitting the dummybearer so all PP's will be unlocked. To restart the protocol the FP needs to be powercycled or reset by the API command API_FP_RESET_REQ
    0x410C: EXT_HIGHER_LAYER_CAP2_REQ  # request the FP to set extended higher layer capabilities part2, refer to ETSI EN 300 175-5 V2.2.6 (2009-11) Annex F.3 After FP reset the capability bits a24,a29,a34,a35,a37 are set to 1, all other bits are set to 0. I.e. the 3 bytes default to 0x84, 0x34 and 0
    0x410D: START_PROTOCOL_REQ         # request a complete start of the protocol. After powerup, the Fp the protocol will remain idle, not transmitting the dummybearer. After receiving API_FP_MM_START_PROTOCOL_REQ the FP will start transmitting the dummybearer so all PP's will be able to lock to the base
    0x410E: HANDSET_DETACH_IND         # inform the Host when a PP is detached. This can happen when the handset is controlled powered off e.g. the user turns off the handset
    0x4110: GET_NAME_REQ               # get the FP name. Only valid for systems without LAS. Systems with LAS must access the name through the DECT system settings list
    0x4111: GET_NAME_CFM               # ^ response
    0x4112: SET_NAME_REQ               # set the FP name
    0x4113: SET_NAME_CFM               # ^ response
