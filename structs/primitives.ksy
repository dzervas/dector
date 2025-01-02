meta:
  id: primitives

enums:
  primitives:
    # FP API
    # Got using `rg -o 'Primitive?:? API_[\w_]+ = 0x\w+' <path to "the PDF" that got turned into txt> | awk '{ print $4 ":" , $2}' | sort`
    0x4000: API_FP_RESET_REQ
    0x4002: API_FP_GET_FW_VERSION_REQ
    0x4004: API_FP_MM_GET_ID_REQ
    0x4006: API_FP_MM_GET_MODEL_REQ
    0x4008: API_FP_MM_SET_ACCESS_CODE_REQ
    0x400A: API_FP_MM_GET_ACCESS_CODE_REQ
    0x407F: API_FP_SET_CRADLE_STATUS_REQ
    0x4082: API_FP_SET_TIME_REQ
    0x4084: API_FP_GET_TIME_REQ
    0x4087: API_FP_SYNC_TIME_REQ
    0x40A1: API_FP_SET_FEATURES_CFM
    0x40A3: API_FP_GET_FEATURES_CFM
    0x4100: API_FP_MM_GET_REGISTRATION_COUNT_REQ
    0x4102: API_FP_MM_DELETE_REGISTRATION_REQ
    0x4105: API_FP_MM_SET_REGISTRATION_MODE_REQ
    0x4109: API_FP_MM_GET_HANDSET_IPUI_REQ
    0x4114: API_FP_MM_REGISTRATION_MODE_DISABLED_IND
    0x4161: API_FP_MM_SET_FEATURES_CFM
    0x4163: API_FP_MM_GET_FEATURES_CFM
    0x4170: API_FP_MM_GET_FP_CAPABILITIES_REQ
    0x4171: API_FP_MM_GET_FP_CAPABILITIES_CFM
    0x4180: API_FP_MM_UNITDATA_REQ
    0x4182: API_FP_MM_ALERT_BROADCAST_REQ
    0x4183: API_FP_MM_START_PROTOCOL_PCM_SYNC_REQ
    0x4186: API_FP_ULE_DATA_REQ
    0x4188: API_FP_ULE_INIT_REQ
    0x418A: API_FP_ULE_TESTCMD_REQ
    0x418C: API_FP_ULE_GET_REGISTRATION_COUNT_REQ
    0x418E: API_FP_ULE_GET_DEVICE_IPUI_REQ
    0x4190: API_FP_ULE_ABORT_DATA_REQ
    0x4191: API_FP_ULE_ABORT_DATA_CFM
    0x4192: API_FP_ULE_DELETE_REGISTRATION_REQ
    0x41A1: API_FP_ULE_SET_FEATURES_CFM
    0x41AB: API_FP_ULE_GET_FEATURES_CFM
    0x4200: API_FP_INIT_PCM_REQ
    0x4206: API_FP_INIT_USB_REQ
    0x4210: API_FP_SET_AUDIO_FORMAT_REQ
    0x4212: API_FP_AUDIO_MUTE_REQ
    0x4214: API_FP_AUDIO_UNMUTE_REQ
    0x4216: API_FP_AUDIO_INTERNAL_CODEC_SETUP_REQ
    0x4218: API_FP_AUDIO_SET_HW_SRC_REQ
    0x421C: API_FP_AUDIO_ENABLE_EC_REQ
    0x4221: API_FP_AUDIO_SET_FEATURES_CFM
    0x4224: API_FP_AUDIO_GET_FEATURES_CFM
    0x4401: API_FP_CC_SETUP_RES
    0x4405: API_FP_CC_ALERT_REQ
    0x4408: API_FP_CC_CONNECT_RES
    0x4409: API_FP_CC_CONNECT_REQ
    0x4410: API_FP_CC_RELEASE_RES
    0x4411: API_FP_CC_RELEASE_REQ
    0x4415: API_FP_CC_CALL_PROC_REQ
    0x441D: API_FP_CC_MODIFY_CODEC_REQ
    0x4420: API_FP_CC_MODIFY_CODEC_RES
    0x4423: API_FP_CC_SETUP_ACK_REQ
    0x4427: API_FP_CC_SYSTEM_CALL_ID_REQ
    0x442C: API_FP_CC_RECONNECT_AUDIO_REQ
    0x442E: API_FP_CC_INFO_REQ
    0x4430: API_FP_CC_SELECTED_ADPCM_IND
    0x4451: API_FP_CC_SET_FEATURES_CFM
    0x4453: API_FP_CC_GET_FEATURES_CFM
    0x4600: API_FP_MAC_NO_EMISSION_MODE_ENABLE_REQ
    0x4601: API_FP_MAC_NO_EMISSION_MODE_DISABLE_REQ
    0x4602: API_FP_MAC_NO_EMISSION_MODE_STOP_REQ
    0x4606: API_FP_MAC_NO_EMISSION_MODE_SET_PREF_CARRIER_REQ
    0x4710: API_LINUX_INIT_GET_SYSTEM_INFO_REQ
    0x4715: API_LINUX_INTERNAL_ERROR_IND
    0x4740: API_SCL_GET_MODE_REQ
    0x4741: API_SCL_GET_MODE_CFM
    0x4742: API_SCL_SET_MODE_REQ
    0x4743: API_SCL_SET_MODE_CFM
    0x4744: API_SCL_GET_URL_REQ
    0x4745: API_SCL_GET_URL_CFM
    0x4746: API_SCL_SET_URL_REQ
    0x4747: API_SCL_SET_URL_CFM
    0x4748: API_SCL_OPERATION_REQ
    0x4749: API_SCL_OPERATION_CFM
    0x474A: API_SCL_STATUS_IND
    0x474B: API_SCL_VERSIONS_IND
    0x474C: API_SCL_GET_GUID_REQ
    0x474D: API_SCL_GET_GUID_CFM
    0x474E: API_SCL_SET_GUID_REQ
    0x474F: API_SCL_SET_GUID_CFM
    0x47B5: API_FP_LLME_SET_FEATURES_CFM
    0x47B7: API_FP_LLME_GET_FEATURES_CFM
    0x47D0: API_ISP_IDENTIFY_REQ
    0x47D1: API_ISP_IDENTIFY_CFM
    0x47D2: API_ISP_ERASE_REQ
    0x47D3: API_ISP_ERASE_CFM
    0x47D4: API_ISP_WRITE_REQ
    0x47D5: API_ISP_WRITE_CFM
    0x47D6: API_ISP_CRC_REQ
    0x47D7: API_ISP_CRC_CFM
    0x47D8: API_ISP_EMPTY_REQ
    0x47D9: API_ISP_EMPTY_CFM
    0x47DA: API_ISP_MD5_REQ
    0x47DB: API_ISP_MD5_CFM
    0x47DC: API_ISP_WRPTR_REQ
    0x4801: API_LDS_OPEN_CFM
    0x4802: API_LDS_OPEN_IND
    0x4803: API_LDS_OPEN_RES
    0x4804: API_LDS_CLOSE_REQ
    0x4805: API_LDS_CLOSE_CFM
    0x4806: API_LDS_CLOSE_IND
    0x4807: API_LDS_REJECT_REQ
    0x4808: API_LDS_REJECT_IND
    0x4820: API_LDS_TX_READY_IND
    0x4821: API_LDS_TX_DATA_REQ
    0x4822: API_LDS_TX_DATA_CFM
    0x4823: API_LDS_RX_DATA_IND
    0x4833: API_LDS_GET_FEATURES_CFM
    0x4880: API_SUOTA_SW_VERSION_INFO_REQ
    0x4881: API_SUOTA_SW_VERSION_INFO_IND
    0x4882: API_SUOTA_NEW_SW_AVAILABLE_REQ
    0x4883: API_SUOTA_NEW_SW_AVAILABLE_IND
    0x4884: API_SUOTA_NEGATIVE_ACK_REQ
    0x4885: API_SUOTA_NEGATIVE_ACK_IND
    0x4893: API_SUOTA_GET_FEATURES_CFM
    0x4900: API_FP_WIFI_EXCLUDE_REQ
    0x4F00: API_FWU_ENABLE_REQ
    0x4F01: API_FWU_ENABLE_CFM
    0x4F02: API_FWU_DEVICE_NOTIFY_IND
    0x4F03: API_FWU_UPDATE_REQ
    0x4F04: API_FWU_UPDATE_CFM
    0x4F05: API_FWU_UPDATE_IND
    0x4F06: API_FWU_UPDATE_RES
    0x4F07: API_FWU_GET_BLOCK_IND
    0x4F08: API_FWU_GET_BLOCK_RES
    0x4F09: API_FWU_GET_CRC_IND
    0x4F0A: API_FWU_GET_CRC_RES
    0x4F0B: API_FWU_COMPLETE_IND
    0x4F0C: API_FWU_STATUS_IND
    0x4F0D: API_FWU_MULTI_CRC_IND
    0x4F0E: API_FWU_MULTI_CRC_RES
    0x4FFE: API_PROD_TEST_REQ
    0x5500: API_LAS_START_SESSION_REQ
    0x5502: API_LAS_END_SESSION_REQ
    0x5510: API_LAS_SEARCH_ENTRIES_REQ
    0x5582: API_LAS_GET_FIELD_PROTECTION_REQ
    0x5584: API_LAS_SET_FIELD_PROTECTION_REQ
    0x5586: API_LAS_GET_LOCKED_ENTRIES_LIST_REQ
    0x5588: API_LAS_SET_FIELD_DEFAULT_REQ
    0x55C0: API_LAS_DB_CLEAR_REQ
    0x5601: API_LAS_DB_QUERY_SUPPORTED_LISTS_RES
    0x5603: API_LAS_DB_QUERY_SUPPORTED_ENTRY_FIELDS_RES
    0x5605: API_LAS_DB_LIST_SORTING_REQUEST_RES
    0x5607: API_LAS_DB_LIST_SORTING_RELEASE_RES
    0x5609: API_LAS_DB_TOTAL_ENTRIES_RES
    0x560B: API_LAS_DB_READ_RES
    0x560D: API_LAS_DB_EDIT_RES
    0x560F: API_LAS_DB_SAVE_RES
    0x5611: API_LAS_DB_SEARCH_RES
    0x5613: API_LAS_DB_DELETE_RES
    0x5615: API_LAS_DB_DELETE_LIST_RES
    0x5616: API_LAS_DB_NEGATIVE_ACKNOWLEDGE_REQ
    0x5617: API_LAS_DB_NEGATIVE_ACKNOWLEDGE_IND
    0x5619: API_LAS_DB_DATA_PACKET_RES
    0x561A: API_LAS_DB_DATA_PACKET_REQ
    0x5631: API_LAS_DB_RESET_RES
    0x5633: API_LAS_DB_GET_FIELD_PROTECTION_RES
    0x5635: API_LAS_DB_SET_FIELD_PROTECTION_RES
    0x5637: API_LAS_DB_SET_FIELD_DEFAULT_RES
    0x5650: API_LAS_DB_SET_ACTIVE_DB_REQ
    0x5652: API_LAS_DB_GET_ACTIVE_DB_REQ
    0x56C0: API_LAS_DB_CLEAR_DB_IND
    0x5700: API_FP_GENEVENOT_EVENT_REQ
    0x5703: API_PP_GENEVENOT_EVENT_REQ
    0x5709: API_FP_GENEVENOT_FEATURES_CFM
    0x5800: API_IMAGE_INFO_REQ
    0x5802: API_IMAGE_ACTIVATE_REQ
    0x5900: API_HAL_DEVICE_CONTROL_REQ
    0x5902: API_HAL_LED_REQ
    0x5904: API_HAL_READ_REQ
    0x5906: API_HAL_WRITE_REQ

    # PP API
    # Got using `rg -o 'Primitive?:? API_[\w_]+ = 0x\w+' <path to "the PDF" that got turned into txt> | awk '{ print $4 ":" , $2}' | sort`
    0x4500: API_TAM_PLAY_ICM_REQ
    0x4502: API_TAM_ICM_SEARCH_REQ
    0x4503: API_TAM_ICM_SEARCH_CFM
    0x4504: API_TAM_ICM_STATUS_REQ
    0x4505: API_TAM_ICM_STATUS_CFM
    0x4507: API_TAM_DELETE_ICM_CFM
    0x4508: API_TAM_STOP_REQ
    0x4509: API_TAM_STOP_CFM
    0x450A: API_TAM_MARK_CURRENT_ICM_REQ
    0x450B: API_TAM_MARK_CURRENT_ICM_CFM
    0x450C: API_TAM_STATUS_IND
    0x450D: API_TAM_RECORD_MEMO_REQ
    0x450E: API_TAM_RECORD_MEMO_CFM
    0x450F: API_TAM_RECORD_VOICETAG_REQ
    0x4510: API_TAM_RECORD_VOICETAG_CFM
    0x4511: API_TAM_PLAY_VOICEPROMPT_REQ
    0x4513: API_TAM_PLAY_VOICETAG_REQ
    0x4514: API_TAM_PLAY_VOICETAG_CFM
    0x4515: API_TAM_DELETE_VOICETAG_REQ
    0x4516: API_TAM_DELETE_VOICETAG_CFM
    0x4517: API_TAM_SET_SETTINGS_REQ
    0x4518: API_TAM_SET_SETTINGS_CFM
    0x4519: API_TAM_GET_SETTINGS_REQ
    0x451A: API_TAM_GET_SETTINGS_CFM
    0x451B: API_TAM_SET_SYSTEM_SETTINGS_REQ
    0x451C: API_TAM_SET_SYSTEM_SETTINGS_CFM
    0x451D: API_TAM_GET_SYSTEM_SETTINGS_REQ
    0x451E: API_TAM_GET_SYSTEM_SETTINGS_CFM
    0x4521: API_TAM_WRITE_DATA_REQ
    0x4525: API_TAM_SETUP_REQ
    0x4526: API_TAM_RELEASE_REQ
    0x4740: API_SCL_GET_MODE_REQ
    0x4741: API_SCL_GET_MODE_CFM
    0x4742: API_SCL_SET_MODE_REQ
    0x4743: API_SCL_SET_MODE_CFM
    0x4744: API_SCL_GET_URL_REQ
    0x4745: API_SCL_GET_URL_CFM
    0x4746: API_SCL_SET_URL_REQ
    0x4747: API_SCL_SET_URL_CFM
    0x4748: API_SCL_OPERATION_REQ
    0x4749: API_SCL_OPERATION_CFM
    0x474A: API_SCL_STATUS_IND
    0x474B: API_SCL_VERSIONS_IND
    0x474C: API_SCL_GET_GUID_REQ
    0x474D: API_SCL_GET_GUID_CFM
    0x474E: API_SCL_SET_GUID_REQ
    0x474F: API_SCL_SET_GUID_CFM
    0x4801: API_LDS_OPEN_CFM
    0x4802: API_LDS_OPEN_IND
    0x4803: API_LDS_OPEN_RES
    0x4804: API_LDS_CLOSE_REQ
    0x4805: API_LDS_CLOSE_CFM
    0x4806: API_LDS_CLOSE_IND
    0x4807: API_LDS_REJECT_REQ
    0x4808: API_LDS_REJECT_IND
    0x4820: API_LDS_TX_READY_IND
    0x4821: API_LDS_TX_DATA_REQ
    0x4822: API_LDS_TX_DATA_CFM
    0x4823: API_LDS_RX_DATA_IND
    0x4833: API_LDS_GET_FEATURES_CFM
    0x4880: API_SUOTA_SW_VERSION_INFO_REQ
    0x4881: API_SUOTA_SW_VERSION_INFO_IND
    0x4882: API_SUOTA_NEW_SW_AVAILABLE_REQ
    0x4883: API_SUOTA_NEW_SW_AVAILABLE_IND
    0x4884: API_SUOTA_NEGATIVE_ACK_REQ
    0x4885: API_SUOTA_NEGATIVE_ACK_IND
    0x4893: API_SUOTA_GET_FEATURES_CFM
    0x4922: API_PP2PP_EXIT_REQ
    0x492B: API_PP2PP_RELEASE_REQ
    0x4F00: API_FWU_ENABLE_REQ
    0x4F01: API_FWU_ENABLE_CFM
    0x4F02: API_FWU_DEVICE_NOTIFY_IND
    0x4F03: API_FWU_UPDATE_REQ
    0x4F04: API_FWU_UPDATE_CFM
    0x4F05: API_FWU_UPDATE_IND
    0x4F06: API_FWU_UPDATE_RES
    0x4F07: API_FWU_GET_BLOCK_IND
    0x4F08: API_FWU_GET_BLOCK_RES
    0x4F09: API_FWU_GET_CRC_IND
    0x4F0A: API_FWU_GET_CRC_RES
    0x4F0B: API_FWU_COMPLETE_IND
    0x4F0C: API_FWU_STATUS_IND
    0x4F0D: API_FWU_MULTI_CRC_IND
    0x4F0E: API_FWU_MULTI_CRC_RES
    0x4FFE: API_PROD_TEST_REQ
    0x5100: API_PP_MM_GET_ID_REQ
    0x5102: API_PP_MM_GET_MODEL_REQ
    0x5104: API_PP_MM_READ_RSSI_REQ
    0x5106: API_PP_MM_LOCK_REQ
    0x5107: API_PP_MM_LOCKED_REQ
    0x5108: API_PP_MM_LOCKED_IND
    0x510A: API_PP_MM_STOP_PROTOCOL_REQ
    0x510B: API_PP_MM_REGISTRATION_AUTO_REQ
    0x510C: API_PP_MM_REGISTRATION_SEARCH_REQ
    0x510E: API_PP_MM_REGISTRATION_SELECTED_REQ
    0x510F: API_PP_MM_REGISTRATION_STOP_REQ
    0x5110: API_PP_MM_REGISTRATION_COMPLETE_IND
    0x5123: API_PP_MM_GET_SUBSCRIPTION_RFPI_REQ
    0x5200: API_PP_GET_FW_VERSION_REQ
    0x5202: API_PP_RESET_REQ
    0x5204: API_PP_POWER_OFF_REQ
    0x5205: API_PP_CRADLE_DETECT_REQ
    0x5207: API_PP_SET_TIME_REQ
    0x5209: API_PP_GET_TIME_REQ
    0x520B: API_PP_SYNC_TIME_REQ
    0x5300: API_PP_AUDIO_MUTE_REQ
    0x5301: API_PP_AUDIO_UNMUTE_REQ
    0x5302: API_PP_AUDIO_SET_MODE_REQ
    0x5303: API_PP_AUDIO_SET_VOLUME_REQ
    0x5307: API_PP_AUDIO_STOP_TONE_REQ
    0x530C: API_PP_AUDIO_STOP_MIDI_REQ
    0x530F: API_PP_AUDIO_TEST_CMD_REQ
    0x531f: API_PP_AUDIO_START_DTMF_REQ
    0x5321: API_PP_AUDIO_STOP_DTMF_REQ
    0x5323: API_PP_AUDIO_OPEN_REQ
    0x5324: API_PP_AUDIO_CLOSE_REQ
    0x5325: API_PP_AUDIO_START_VOICE_DETECTION_REQ
    0x5326: API_PP_AUDIO_STOP_VOICE_DETECTION_REQ
    0x532A: API_PP_AUDIO_INIT_PCM_REQ
    0x5400: API_PP_BAT_CAPACITY_REQ
    0x5404: API_PP_BAT_POWER_ON_REASON_REQ
    0x5406: API_PP_BAT_CHARGE_REQ
    0x5500: API_LAS_START_SESSION_REQ
    0x5502: API_LAS_END_SESSION_REQ
    0x5510: API_LAS_SEARCH_ENTRIES_REQ
    0x5582: API_LAS_GET_FIELD_PROTECTION_REQ
    0x5584: API_LAS_SET_FIELD_PROTECTION_REQ
    0x5586: API_LAS_GET_LOCKED_ENTRIES_LIST_REQ
    0x5588: API_LAS_SET_FIELD_DEFAULT_REQ
    0x55C0: API_LAS_DB_CLEAR_REQ
    0x5700: API_FP_GENEVENOT_EVENT_REQ
    0x5703: API_PP_GENEVENOT_EVENT_REQ
    0x5709: API_FP_GENEVENOT_FEATURES_CFM
    0x5800: API_IMAGE_INFO_REQ
    0x5802: API_IMAGE_ACTIVATE_REQ
    0x5900: API_HAL_DEVICE_CONTROL_REQ
    0x5902: API_HAL_LED_REQ
    0x5904: API_HAL_READ_REQ
    0x5906: API_HAL_WRITE_REQ
    0x5C00: API_PP_MAC_NO_EMISSION_MODE_ENABLE_REQ
    0x5C01: API_PP_MAC_NO_EMISSION_MODE_DISABLE_REQ
    0x5C02: API_PP_MAC_NO_EMISSION_MODE_STOP_REQ
    0x5C49: API_CLSS_SET_FEATURES_CFM
    0x5C4B: API_CLSS_GET_FEATURES_CFM