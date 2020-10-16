# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaLive
  module Types

    # Aac Settings
    #
    # @note When making an API call, you may pass AacSettings
    #   data as a hash:
    #
    #       {
    #         bitrate: 1.0,
    #         coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #         input_type: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #         profile: "HEV1", # accepts HEV1, HEV2, LC
    #         rate_control_mode: "CBR", # accepts CBR, VBR
    #         raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #         sample_rate: 1.0,
    #         spec: "MPEG2", # accepts MPEG2, MPEG4
    #         vbr_quality: "HIGH", # accepts HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW
    #       }
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second. Valid values depend on rate control
    #   mode and profile.
    #   @return [Float]
    #
    # @!attribute [rw] coding_mode
    #   Mono, Stereo, or 5.1 channel layout. Valid values depend on rate
    #   control mode and profile. The adReceiverMix setting receives a
    #   stereo description plus control track and emits a mono AAC encode of
    #   the description track, with control data emitted in the PES header
    #   as per ETSI TS 101 154 Annex E.
    #   @return [String]
    #
    # @!attribute [rw] input_type
    #   Set to "broadcasterMixedAd" when input contains pre-mixed main
    #   audio + AD (narration) as a stereo pair. The Audio Type field
    #   (audioType) will be set to 3, which signals to downstream systems
    #   that this stream contains "broadcaster mixed AD". Note that the
    #   input received by the encoder must contain pre-mixed audio; the
    #   encoder does not perform the mixing. The values in audioTypeControl
    #   and audioType (in AudioDescription) are ignored when set to
    #   broadcasterMixedAd. Leave set to "normal" when input does not
    #   contain pre-mixed audio + AD.
    #   @return [String]
    #
    # @!attribute [rw] profile
    #   AAC Profile.
    #   @return [String]
    #
    # @!attribute [rw] rate_control_mode
    #   Rate Control Mode.
    #   @return [String]
    #
    # @!attribute [rw] raw_format
    #   Sets LATM / LOAS AAC output for raw containers.
    #   @return [String]
    #
    # @!attribute [rw] sample_rate
    #   Sample rate in Hz. Valid values depend on rate control mode and
    #   profile.
    #   @return [Float]
    #
    # @!attribute [rw] spec
    #   Use MPEG-2 AAC audio instead of MPEG-4 AAC audio for raw or MPEG-2
    #   Transport Stream containers.
    #   @return [String]
    #
    # @!attribute [rw] vbr_quality
    #   VBR Quality Level - Only used if rateControlMode is VBR.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AacSettings AWS API Documentation
    #
    class AacSettings < Struct.new(
      :bitrate,
      :coding_mode,
      :input_type,
      :profile,
      :rate_control_mode,
      :raw_format,
      :sample_rate,
      :spec,
      :vbr_quality)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ac3 Settings
    #
    # @note When making an API call, you may pass Ac3Settings
    #   data as a hash:
    #
    #       {
    #         bitrate: 1.0,
    #         bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #         coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #         dialnorm: 1,
    #         drc_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #         lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #         metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #       }
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second. Valid bitrates depend on the coding
    #   mode.
    #   @return [Float]
    #
    # @!attribute [rw] bitstream_mode
    #   Specifies the bitstream mode (bsmod) for the emitted AC-3 stream.
    #   See ATSC A/52-2012 for background on these values.
    #   @return [String]
    #
    # @!attribute [rw] coding_mode
    #   Dolby Digital coding mode. Determines number of channels.
    #   @return [String]
    #
    # @!attribute [rw] dialnorm
    #   Sets the dialnorm for the output. If excluded and input audio is
    #   Dolby Digital, dialnorm will be passed through.
    #   @return [Integer]
    #
    # @!attribute [rw] drc_profile
    #   If set to filmStandard, adds dynamic range compression signaling to
    #   the output bitstream as defined in the Dolby Digital specification.
    #   @return [String]
    #
    # @!attribute [rw] lfe_filter
    #   When set to enabled, applies a 120Hz lowpass filter to the LFE
    #   channel prior to encoding. Only valid in codingMode32Lfe mode.
    #   @return [String]
    #
    # @!attribute [rw] metadata_control
    #   When set to "followInput", encoder metadata will be sourced from
    #   the DD, DD+, or DolbyE decoder that supplied this audio data. If
    #   audio was not supplied from one of these streams, then the static
    #   metadata settings will be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Ac3Settings AWS API Documentation
    #
    class Ac3Settings < Struct.new(
      :bitrate,
      :bitstream_mode,
      :coding_mode,
      :dialnorm,
      :drc_profile,
      :lfe_filter,
      :metadata_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AcceptInputDeviceTransferRequest
    #   data as a hash:
    #
    #       {
    #         input_device_id: "__string", # required
    #       }
    #
    # @!attribute [rw] input_device_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AcceptInputDeviceTransferRequest AWS API Documentation
    #
    class AcceptInputDeviceTransferRequest < Struct.new(
      :input_device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AcceptInputDeviceTransferResponse AWS API Documentation
    #
    class AcceptInputDeviceTransferResponse < Aws::EmptyStructure; end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AccessDenied AWS API Documentation
    #
    class AccessDenied < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ancillary Source Settings
    #
    # @note When making an API call, you may pass AncillarySourceSettings
    #   data as a hash:
    #
    #       {
    #         source_ancillary_channel_number: 1,
    #       }
    #
    # @!attribute [rw] source_ancillary_channel_number
    #   Specifies the number (1 to 4) of the captions channel you want to
    #   extract from the ancillary captions. If you plan to convert the
    #   ancillary captions to another format, complete this field. If you
    #   plan to choose Embedded as the captions destination in the output
    #   (to pass through all the channels in the ancillary captions), leave
    #   this field blank because MediaLive ignores the field.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AncillarySourceSettings AWS API Documentation
    #
    class AncillarySourceSettings < Struct.new(
      :source_ancillary_channel_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Archive Container Settings
    #
    # @note When making an API call, you may pass ArchiveContainerSettings
    #   data as a hash:
    #
    #       {
    #         m2ts_settings: {
    #           absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #           arib: "DISABLED", # accepts DISABLED, ENABLED
    #           arib_captions_pid: "__string",
    #           arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #           audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #           audio_frames_per_pes: 1,
    #           audio_pids: "__string",
    #           audio_stream_type: "ATSC", # accepts ATSC, DVB
    #           bitrate: 1,
    #           buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #           cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #           dvb_nit_settings: {
    #             network_id: 1, # required
    #             network_name: "__stringMin1Max256", # required
    #             rep_interval: 1,
    #           },
    #           dvb_sdt_settings: {
    #             output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #             rep_interval: 1,
    #             service_name: "__stringMin1Max256",
    #             service_provider_name: "__stringMin1Max256",
    #           },
    #           dvb_sub_pids: "__string",
    #           dvb_tdt_settings: {
    #             rep_interval: 1,
    #           },
    #           dvb_teletext_pid: "__string",
    #           ebif: "NONE", # accepts NONE, PASSTHROUGH
    #           ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #           ebp_lookahead_ms: 1,
    #           ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #           ecm_pid: "__string",
    #           es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #           etv_platform_pid: "__string",
    #           etv_signal_pid: "__string",
    #           fragment_time: 1.0,
    #           klv: "NONE", # accepts NONE, PASSTHROUGH
    #           klv_data_pids: "__string",
    #           nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #           null_packet_bitrate: 1.0,
    #           pat_interval: 1,
    #           pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #           pcr_period: 1,
    #           pcr_pid: "__string",
    #           pmt_interval: 1,
    #           pmt_pid: "__string",
    #           program_num: 1,
    #           rate_mode: "CBR", # accepts CBR, VBR
    #           scte_27_pids: "__string",
    #           scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #           scte_35_pid: "__string",
    #           segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #           segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #           segmentation_time: 1.0,
    #           timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #           timed_metadata_pid: "__string",
    #           transport_stream_id: 1,
    #           video_pid: "__string",
    #         },
    #         raw_settings: {
    #         },
    #       }
    #
    # @!attribute [rw] m2ts_settings
    #   M2ts Settings
    #   @return [Types::M2tsSettings]
    #
    # @!attribute [rw] raw_settings
    #   Raw Settings
    #   @return [Types::RawSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ArchiveContainerSettings AWS API Documentation
    #
    class ArchiveContainerSettings < Struct.new(
      :m2ts_settings,
      :raw_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Archive Group Settings
    #
    # @note When making an API call, you may pass ArchiveGroupSettings
    #   data as a hash:
    #
    #       {
    #         destination: { # required
    #           destination_ref_id: "__string",
    #         },
    #         rollover_interval: 1,
    #       }
    #
    # @!attribute [rw] destination
    #   A directory and base filename where archive files should be written.
    #   @return [Types::OutputLocationRef]
    #
    # @!attribute [rw] rollover_interval
    #   Number of seconds to write to archive file before closing and
    #   starting a new one.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ArchiveGroupSettings AWS API Documentation
    #
    class ArchiveGroupSettings < Struct.new(
      :destination,
      :rollover_interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # Archive Output Settings
    #
    # @note When making an API call, you may pass ArchiveOutputSettings
    #   data as a hash:
    #
    #       {
    #         container_settings: { # required
    #           m2ts_settings: {
    #             absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #             arib: "DISABLED", # accepts DISABLED, ENABLED
    #             arib_captions_pid: "__string",
    #             arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #             audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #             audio_frames_per_pes: 1,
    #             audio_pids: "__string",
    #             audio_stream_type: "ATSC", # accepts ATSC, DVB
    #             bitrate: 1,
    #             buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #             cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #             dvb_nit_settings: {
    #               network_id: 1, # required
    #               network_name: "__stringMin1Max256", # required
    #               rep_interval: 1,
    #             },
    #             dvb_sdt_settings: {
    #               output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #               rep_interval: 1,
    #               service_name: "__stringMin1Max256",
    #               service_provider_name: "__stringMin1Max256",
    #             },
    #             dvb_sub_pids: "__string",
    #             dvb_tdt_settings: {
    #               rep_interval: 1,
    #             },
    #             dvb_teletext_pid: "__string",
    #             ebif: "NONE", # accepts NONE, PASSTHROUGH
    #             ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #             ebp_lookahead_ms: 1,
    #             ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #             ecm_pid: "__string",
    #             es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #             etv_platform_pid: "__string",
    #             etv_signal_pid: "__string",
    #             fragment_time: 1.0,
    #             klv: "NONE", # accepts NONE, PASSTHROUGH
    #             klv_data_pids: "__string",
    #             nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #             null_packet_bitrate: 1.0,
    #             pat_interval: 1,
    #             pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #             pcr_period: 1,
    #             pcr_pid: "__string",
    #             pmt_interval: 1,
    #             pmt_pid: "__string",
    #             program_num: 1,
    #             rate_mode: "CBR", # accepts CBR, VBR
    #             scte_27_pids: "__string",
    #             scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #             scte_35_pid: "__string",
    #             segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #             segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #             segmentation_time: 1.0,
    #             timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #             timed_metadata_pid: "__string",
    #             transport_stream_id: 1,
    #             video_pid: "__string",
    #           },
    #           raw_settings: {
    #           },
    #         },
    #         extension: "__string",
    #         name_modifier: "__string",
    #       }
    #
    # @!attribute [rw] container_settings
    #   Settings specific to the container type of the file.
    #   @return [Types::ArchiveContainerSettings]
    #
    # @!attribute [rw] extension
    #   Output file extension. If excluded, this will be auto-selected from
    #   the container type.
    #   @return [String]
    #
    # @!attribute [rw] name_modifier
    #   String concatenated to the end of the destination filename. Required
    #   for multiple outputs of the same type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ArchiveOutputSettings AWS API Documentation
    #
    class ArchiveOutputSettings < Struct.new(
      :container_settings,
      :extension,
      :name_modifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Arib Destination Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AribDestinationSettings AWS API Documentation
    #
    class AribDestinationSettings < Aws::EmptyStructure; end

    # Arib Source Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AribSourceSettings AWS API Documentation
    #
    class AribSourceSettings < Aws::EmptyStructure; end

    # Audio Channel Mapping
    #
    # @note When making an API call, you may pass AudioChannelMapping
    #   data as a hash:
    #
    #       {
    #         input_channel_levels: [ # required
    #           {
    #             gain: 1, # required
    #             input_channel: 1, # required
    #           },
    #         ],
    #         output_channel: 1, # required
    #       }
    #
    # @!attribute [rw] input_channel_levels
    #   Indices and gain values for each input channel that should be
    #   remixed into this output channel.
    #   @return [Array<Types::InputChannelLevel>]
    #
    # @!attribute [rw] output_channel
    #   The index of the output channel being produced.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AudioChannelMapping AWS API Documentation
    #
    class AudioChannelMapping < Struct.new(
      :input_channel_levels,
      :output_channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # Audio Codec Settings
    #
    # @note When making an API call, you may pass AudioCodecSettings
    #   data as a hash:
    #
    #       {
    #         aac_settings: {
    #           bitrate: 1.0,
    #           coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #           input_type: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #           profile: "HEV1", # accepts HEV1, HEV2, LC
    #           rate_control_mode: "CBR", # accepts CBR, VBR
    #           raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #           sample_rate: 1.0,
    #           spec: "MPEG2", # accepts MPEG2, MPEG4
    #           vbr_quality: "HIGH", # accepts HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW
    #         },
    #         ac_3_settings: {
    #           bitrate: 1.0,
    #           bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #           dialnorm: 1,
    #           drc_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #           lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #         },
    #         eac_3_settings: {
    #           attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #           bitrate: 1.0,
    #           bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #           dc_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           dialnorm: 1,
    #           drc_line: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #           drc_rf: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #           lfe_control: "LFE", # accepts LFE, NO_LFE
    #           lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           lo_ro_center_mix_level: 1.0,
    #           lo_ro_surround_mix_level: 1.0,
    #           lt_rt_center_mix_level: 1.0,
    #           lt_rt_surround_mix_level: 1.0,
    #           metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           passthrough_control: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, WHEN_POSSIBLE
    #           phase_control: "NO_SHIFT", # accepts NO_SHIFT, SHIFT_90_DEGREES
    #           stereo_downmix: "DPL2", # accepts DPL2, LO_RO, LT_RT, NOT_INDICATED
    #           surround_ex_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #           surround_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #         },
    #         mp_2_settings: {
    #           bitrate: 1.0,
    #           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0
    #           sample_rate: 1.0,
    #         },
    #         pass_through_settings: {
    #         },
    #         wav_settings: {
    #           bit_depth: 1.0,
    #           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_4_0, CODING_MODE_8_0
    #           sample_rate: 1.0,
    #         },
    #       }
    #
    # @!attribute [rw] aac_settings
    #   Aac Settings
    #   @return [Types::AacSettings]
    #
    # @!attribute [rw] ac_3_settings
    #   Ac3 Settings
    #   @return [Types::Ac3Settings]
    #
    # @!attribute [rw] eac_3_settings
    #   Eac3 Settings
    #   @return [Types::Eac3Settings]
    #
    # @!attribute [rw] mp_2_settings
    #   Mp2 Settings
    #   @return [Types::Mp2Settings]
    #
    # @!attribute [rw] pass_through_settings
    #   Pass Through Settings
    #   @return [Types::PassThroughSettings]
    #
    # @!attribute [rw] wav_settings
    #   Wav Settings
    #   @return [Types::WavSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AudioCodecSettings AWS API Documentation
    #
    class AudioCodecSettings < Struct.new(
      :aac_settings,
      :ac_3_settings,
      :eac_3_settings,
      :mp_2_settings,
      :pass_through_settings,
      :wav_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Audio Description
    #
    # @note When making an API call, you may pass AudioDescription
    #   data as a hash:
    #
    #       {
    #         audio_normalization_settings: {
    #           algorithm: "ITU_1770_1", # accepts ITU_1770_1, ITU_1770_2
    #           algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO
    #           target_lkfs: 1.0,
    #         },
    #         audio_selector_name: "__string", # required
    #         audio_type: "CLEAN_EFFECTS", # accepts CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY
    #         audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #         codec_settings: {
    #           aac_settings: {
    #             bitrate: 1.0,
    #             coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #             input_type: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #             profile: "HEV1", # accepts HEV1, HEV2, LC
    #             rate_control_mode: "CBR", # accepts CBR, VBR
    #             raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #             sample_rate: 1.0,
    #             spec: "MPEG2", # accepts MPEG2, MPEG4
    #             vbr_quality: "HIGH", # accepts HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW
    #           },
    #           ac_3_settings: {
    #             bitrate: 1.0,
    #             bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #             coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #             dialnorm: 1,
    #             drc_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #             lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #             metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           },
    #           eac_3_settings: {
    #             attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #             bitrate: 1.0,
    #             bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #             coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #             dc_filter: "DISABLED", # accepts DISABLED, ENABLED
    #             dialnorm: 1,
    #             drc_line: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #             drc_rf: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #             lfe_control: "LFE", # accepts LFE, NO_LFE
    #             lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #             lo_ro_center_mix_level: 1.0,
    #             lo_ro_surround_mix_level: 1.0,
    #             lt_rt_center_mix_level: 1.0,
    #             lt_rt_surround_mix_level: 1.0,
    #             metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             passthrough_control: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, WHEN_POSSIBLE
    #             phase_control: "NO_SHIFT", # accepts NO_SHIFT, SHIFT_90_DEGREES
    #             stereo_downmix: "DPL2", # accepts DPL2, LO_RO, LT_RT, NOT_INDICATED
    #             surround_ex_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #             surround_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #           },
    #           mp_2_settings: {
    #             bitrate: 1.0,
    #             coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0
    #             sample_rate: 1.0,
    #           },
    #           pass_through_settings: {
    #           },
    #           wav_settings: {
    #             bit_depth: 1.0,
    #             coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_4_0, CODING_MODE_8_0
    #             sample_rate: 1.0,
    #           },
    #         },
    #         language_code: "__stringMin1Max35",
    #         language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #         name: "__string", # required
    #         remix_settings: {
    #           channel_mappings: [ # required
    #             {
    #               input_channel_levels: [ # required
    #                 {
    #                   gain: 1, # required
    #                   input_channel: 1, # required
    #                 },
    #               ],
    #               output_channel: 1, # required
    #             },
    #           ],
    #           channels_in: 1,
    #           channels_out: 1,
    #         },
    #         stream_name: "__string",
    #       }
    #
    # @!attribute [rw] audio_normalization_settings
    #   Advanced audio normalization settings.
    #   @return [Types::AudioNormalizationSettings]
    #
    # @!attribute [rw] audio_selector_name
    #   The name of the AudioSelector used as the source for this
    #   AudioDescription.
    #   @return [String]
    #
    # @!attribute [rw] audio_type
    #   Applies only if audioTypeControl is useConfigured. The values for
    #   audioType are defined in ISO-IEC 13818-1.
    #   @return [String]
    #
    # @!attribute [rw] audio_type_control
    #   Determines how audio type is determined. followInput: If the input
    #   contains an ISO 639 audioType, then that value is passed through to
    #   the output. If the input contains no ISO 639 audioType, the value in
    #   Audio Type is included in the output. useConfigured: The value in
    #   Audio Type is included in the output. Note that this field and
    #   audioType are both ignored if inputType is broadcasterMixedAd.
    #   @return [String]
    #
    # @!attribute [rw] codec_settings
    #   Audio codec settings.
    #   @return [Types::AudioCodecSettings]
    #
    # @!attribute [rw] language_code
    #   RFC 5646 language code representing the language of the audio output
    #   track. Only used if languageControlMode is useConfigured, or there
    #   is no ISO 639 language code specified in the input.
    #   @return [String]
    #
    # @!attribute [rw] language_code_control
    #   Choosing followInput will cause the ISO 639 language code of the
    #   output to follow the ISO 639 language code of the input. The
    #   languageCode will be used when useConfigured is set, or when
    #   followInput is selected but there is no ISO 639 language code
    #   specified by the input.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this AudioDescription. Outputs will use this name to
    #   uniquely identify this AudioDescription. Description names should be
    #   unique within this Live Event.
    #   @return [String]
    #
    # @!attribute [rw] remix_settings
    #   Settings that control how input audio channels are remixed into the
    #   output audio channels.
    #   @return [Types::RemixSettings]
    #
    # @!attribute [rw] stream_name
    #   Used for MS Smooth and Apple HLS outputs. Indicates the name
    #   displayed by the player (eg. English, or Director Commentary).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AudioDescription AWS API Documentation
    #
    class AudioDescription < Struct.new(
      :audio_normalization_settings,
      :audio_selector_name,
      :audio_type,
      :audio_type_control,
      :codec_settings,
      :language_code,
      :language_code_control,
      :name,
      :remix_settings,
      :stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Audio Language Selection
    #
    # @note When making an API call, you may pass AudioLanguageSelection
    #   data as a hash:
    #
    #       {
    #         language_code: "__string", # required
    #         language_selection_policy: "LOOSE", # accepts LOOSE, STRICT
    #       }
    #
    # @!attribute [rw] language_code
    #   Selects a specific three-letter language code from within an audio
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] language_selection_policy
    #   When set to "strict", the transport stream demux strictly
    #   identifies audio streams by their language descriptor. If a PMT
    #   update occurs such that an audio stream matching the initially
    #   selected language is no longer present then mute will be encoded
    #   until the language returns. If "loose", then on a PMT update the
    #   demux will choose another audio stream in the program with the same
    #   stream type if it can't find one with the same language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AudioLanguageSelection AWS API Documentation
    #
    class AudioLanguageSelection < Struct.new(
      :language_code,
      :language_selection_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Audio Normalization Settings
    #
    # @note When making an API call, you may pass AudioNormalizationSettings
    #   data as a hash:
    #
    #       {
    #         algorithm: "ITU_1770_1", # accepts ITU_1770_1, ITU_1770_2
    #         algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO
    #         target_lkfs: 1.0,
    #       }
    #
    # @!attribute [rw] algorithm
    #   Audio normalization algorithm to use. itu17701 conforms to the CALM
    #   Act specification, itu17702 conforms to the EBU R-128 specification.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_control
    #   When set to correctAudio the output audio is corrected using the
    #   chosen algorithm. If set to measureOnly, the audio will be measured
    #   but not adjusted.
    #   @return [String]
    #
    # @!attribute [rw] target_lkfs
    #   Target LKFS(loudness) to adjust volume to. If no value is entered, a
    #   default value will be used according to the chosen algorithm. The
    #   CALM Act (1770-1) recommends a target of -24 LKFS. The EBU R-128
    #   specification (1770-2) recommends a target of -23 LKFS.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AudioNormalizationSettings AWS API Documentation
    #
    class AudioNormalizationSettings < Struct.new(
      :algorithm,
      :algorithm_control,
      :target_lkfs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Audio Only Hls Settings
    #
    # @note When making an API call, you may pass AudioOnlyHlsSettings
    #   data as a hash:
    #
    #       {
    #         audio_group_id: "__string",
    #         audio_only_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #         segment_type: "AAC", # accepts AAC, FMP4
    #       }
    #
    # @!attribute [rw] audio_group_id
    #   Specifies the group to which the audio Rendition belongs.
    #   @return [String]
    #
    # @!attribute [rw] audio_only_image
    #   Optional. Specifies the .jpg or .png image to use as the cover art
    #   for an audio-only output. We recommend a low bit-size file because
    #   the image increases the output audio bandwidth. The image is
    #   attached to the audio as an ID3 tag, frame type APIC, picture type
    #   0x10, as per the "ID3 tag version 2.4.0 - Native Frames" standard.
    #   @return [Types::InputLocation]
    #
    # @!attribute [rw] audio_track_type
    #   Four types of audio-only tracks are supported: Audio-Only Variant
    #   Stream The client can play back this audio-only stream instead of
    #   video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF
    #   in the HLS manifest. Alternate Audio, Auto Select, Default Alternate
    #   rendition that the client should try to play back by default.
    #   Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES,
    #   AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate
    #   rendition that the client may try to play back by default.
    #   Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO,
    #   AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition
    #   that the client will not try to play back by default. Represented as
    #   an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
    #   @return [String]
    #
    # @!attribute [rw] segment_type
    #   Specifies the segment type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AudioOnlyHlsSettings AWS API Documentation
    #
    class AudioOnlyHlsSettings < Struct.new(
      :audio_group_id,
      :audio_only_image,
      :audio_track_type,
      :segment_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Audio Pid Selection
    #
    # @note When making an API call, you may pass AudioPidSelection
    #   data as a hash:
    #
    #       {
    #         pid: 1, # required
    #       }
    #
    # @!attribute [rw] pid
    #   Selects a specific PID from within a source.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AudioPidSelection AWS API Documentation
    #
    class AudioPidSelection < Struct.new(
      :pid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Audio Selector
    #
    # @note When making an API call, you may pass AudioSelector
    #   data as a hash:
    #
    #       {
    #         name: "__stringMin1", # required
    #         selector_settings: {
    #           audio_language_selection: {
    #             language_code: "__string", # required
    #             language_selection_policy: "LOOSE", # accepts LOOSE, STRICT
    #           },
    #           audio_pid_selection: {
    #             pid: 1, # required
    #           },
    #           audio_track_selection: {
    #             tracks: [ # required
    #               {
    #                 track: 1, # required
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of this AudioSelector. AudioDescriptions will use this name
    #   to uniquely identify this Selector. Selector names should be unique
    #   per input.
    #   @return [String]
    #
    # @!attribute [rw] selector_settings
    #   The audio selector settings.
    #   @return [Types::AudioSelectorSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AudioSelector AWS API Documentation
    #
    class AudioSelector < Struct.new(
      :name,
      :selector_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Audio Selector Settings
    #
    # @note When making an API call, you may pass AudioSelectorSettings
    #   data as a hash:
    #
    #       {
    #         audio_language_selection: {
    #           language_code: "__string", # required
    #           language_selection_policy: "LOOSE", # accepts LOOSE, STRICT
    #         },
    #         audio_pid_selection: {
    #           pid: 1, # required
    #         },
    #         audio_track_selection: {
    #           tracks: [ # required
    #             {
    #               track: 1, # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] audio_language_selection
    #   Audio Language Selection
    #   @return [Types::AudioLanguageSelection]
    #
    # @!attribute [rw] audio_pid_selection
    #   Audio Pid Selection
    #   @return [Types::AudioPidSelection]
    #
    # @!attribute [rw] audio_track_selection
    #   Audio Track Selection
    #   @return [Types::AudioTrackSelection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AudioSelectorSettings AWS API Documentation
    #
    class AudioSelectorSettings < Struct.new(
      :audio_language_selection,
      :audio_pid_selection,
      :audio_track_selection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Audio Track
    #
    # @note When making an API call, you may pass AudioTrack
    #   data as a hash:
    #
    #       {
    #         track: 1, # required
    #       }
    #
    # @!attribute [rw] track
    #   1-based integer value that maps to a specific audio track
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AudioTrack AWS API Documentation
    #
    class AudioTrack < Struct.new(
      :track)
      SENSITIVE = []
      include Aws::Structure
    end

    # Audio Track Selection
    #
    # @note When making an API call, you may pass AudioTrackSelection
    #   data as a hash:
    #
    #       {
    #         tracks: [ # required
    #           {
    #             track: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] tracks
    #   Selects one or more unique audio tracks from within a source.
    #   @return [Array<Types::AudioTrack>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AudioTrackSelection AWS API Documentation
    #
    class AudioTrackSelection < Struct.new(
      :tracks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for Automatic Input Failover.
    #
    # @note When making an API call, you may pass AutomaticInputFailoverSettings
    #   data as a hash:
    #
    #       {
    #         input_preference: "EQUAL_INPUT_PREFERENCE", # accepts EQUAL_INPUT_PREFERENCE, PRIMARY_INPUT_PREFERRED
    #         secondary_input_id: "__string", # required
    #       }
    #
    # @!attribute [rw] input_preference
    #   Input preference when deciding which input to make active when a
    #   previously failed input has recovered.
    #   @return [String]
    #
    # @!attribute [rw] secondary_input_id
    #   The input ID of the secondary input in the automatic input failover
    #   pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AutomaticInputFailoverSettings AWS API Documentation
    #
    class AutomaticInputFailoverSettings < Struct.new(
      :input_preference,
      :secondary_input_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Avail Blanking
    #
    # @note When making an API call, you may pass AvailBlanking
    #   data as a hash:
    #
    #       {
    #         avail_blanking_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         state: "DISABLED", # accepts DISABLED, ENABLED
    #       }
    #
    # @!attribute [rw] avail_blanking_image
    #   Blanking image to be used. Leave empty for solid black. Only bmp and
    #   png images are supported.
    #   @return [Types::InputLocation]
    #
    # @!attribute [rw] state
    #   When set to enabled, causes video, audio and captions to be blanked
    #   when insertion metadata is added.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AvailBlanking AWS API Documentation
    #
    class AvailBlanking < Struct.new(
      :avail_blanking_image,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Avail Configuration
    #
    # @note When making an API call, you may pass AvailConfiguration
    #   data as a hash:
    #
    #       {
    #         avail_settings: {
    #           scte_35_splice_insert: {
    #             ad_avail_offset: 1,
    #             no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           },
    #           scte_35_time_signal_apos: {
    #             ad_avail_offset: 1,
    #             no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] avail_settings
    #   Ad avail settings.
    #   @return [Types::AvailSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AvailConfiguration AWS API Documentation
    #
    class AvailConfiguration < Struct.new(
      :avail_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Avail Settings
    #
    # @note When making an API call, you may pass AvailSettings
    #   data as a hash:
    #
    #       {
    #         scte_35_splice_insert: {
    #           ad_avail_offset: 1,
    #           no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #         },
    #         scte_35_time_signal_apos: {
    #           ad_avail_offset: 1,
    #           no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #         },
    #       }
    #
    # @!attribute [rw] scte_35_splice_insert
    #   Scte35 Splice Insert
    #   @return [Types::Scte35SpliceInsert]
    #
    # @!attribute [rw] scte_35_time_signal_apos
    #   Scte35 Time Signal Apos
    #   @return [Types::Scte35TimeSignalApos]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AvailSettings AWS API Documentation
    #
    class AvailSettings < Struct.new(
      :scte_35_splice_insert,
      :scte_35_time_signal_apos)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BadGatewayException AWS API Documentation
    #
    class BadGatewayException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Batch delete resource request
    #
    # @!attribute [rw] channel_ids
    #   List of channel IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_ids
    #   List of input IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_security_group_ids
    #   List of input security group IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] multiplex_ids
    #   List of multiplex IDs
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchDelete AWS API Documentation
    #
    class BatchDelete < Struct.new(
      :channel_ids,
      :input_ids,
      :input_security_group_ids,
      :multiplex_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteRequest
    #   data as a hash:
    #
    #       {
    #         channel_ids: ["__string"],
    #         input_ids: ["__string"],
    #         input_security_group_ids: ["__string"],
    #         multiplex_ids: ["__string"],
    #       }
    #
    # @!attribute [rw] channel_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_security_group_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] multiplex_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchDeleteRequest AWS API Documentation
    #
    class BatchDeleteRequest < Struct.new(
      :channel_ids,
      :input_ids,
      :input_security_group_ids,
      :multiplex_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed
    #   @return [Array<Types::BatchFailedResultModel>]
    #
    # @!attribute [rw] successful
    #   @return [Array<Types::BatchSuccessfulResultModel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchDeleteResponse AWS API Documentation
    #
    class BatchDeleteResponse < Struct.new(
      :failed,
      :successful)
      SENSITIVE = []
      include Aws::Structure
    end

    # Batch delete resource results
    #
    # @!attribute [rw] failed
    #   List of failed operations
    #   @return [Array<Types::BatchFailedResultModel>]
    #
    # @!attribute [rw] successful
    #   List of successful operations
    #   @return [Array<Types::BatchSuccessfulResultModel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchDeleteResultModel AWS API Documentation
    #
    class BatchDeleteResultModel < Struct.new(
      :failed,
      :successful)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details from a failed operation
    #
    # @!attribute [rw] arn
    #   ARN of the resource
    #   @return [String]
    #
    # @!attribute [rw] code
    #   Error code for the failed operation
    #   @return [String]
    #
    # @!attribute [rw] id
    #   ID of the resource
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error message for the failed operation
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchFailedResultModel AWS API Documentation
    #
    class BatchFailedResultModel < Struct.new(
      :arn,
      :code,
      :id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of schedule actions to create (in a request) or that have been
    # created (in a response).
    #
    # @note When making an API call, you may pass BatchScheduleActionCreateRequest
    #   data as a hash:
    #
    #       {
    #         schedule_actions: [ # required
    #           {
    #             action_name: "__string", # required
    #             schedule_action_settings: { # required
    #               hls_id_3_segment_tagging_settings: {
    #                 tag: "__string", # required
    #               },
    #               hls_timed_metadata_settings: {
    #                 id_3: "__string", # required
    #               },
    #               input_prepare_settings: {
    #                 input_attachment_name_reference: "__string",
    #                 input_clipping_settings: {
    #                   input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #                   start_timecode: {
    #                     timecode: "__string",
    #                   },
    #                   stop_timecode: {
    #                     last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #                     timecode: "__string",
    #                   },
    #                 },
    #                 url_path: ["__string"],
    #               },
    #               input_switch_settings: {
    #                 input_attachment_name_reference: "__string", # required
    #                 input_clipping_settings: {
    #                   input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #                   start_timecode: {
    #                     timecode: "__string",
    #                   },
    #                   stop_timecode: {
    #                     last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #                     timecode: "__string",
    #                   },
    #                 },
    #                 url_path: ["__string"],
    #               },
    #               pause_state_settings: {
    #                 pipelines: [
    #                   {
    #                     pipeline_id: "PIPELINE_0", # required, accepts PIPELINE_0, PIPELINE_1
    #                   },
    #                 ],
    #               },
    #               scte_35_return_to_network_settings: {
    #                 splice_event_id: 1, # required
    #               },
    #               scte_35_splice_insert_settings: {
    #                 duration: 1,
    #                 splice_event_id: 1, # required
    #               },
    #               scte_35_time_signal_settings: {
    #                 scte_35_descriptors: [ # required
    #                   {
    #                     scte_35_descriptor_settings: { # required
    #                       segmentation_descriptor_scte_35_descriptor_settings: { # required
    #                         delivery_restrictions: {
    #                           archive_allowed_flag: "ARCHIVE_NOT_ALLOWED", # required, accepts ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
    #                           device_restrictions: "NONE", # required, accepts NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
    #                           no_regional_blackout_flag: "REGIONAL_BLACKOUT", # required, accepts REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
    #                           web_delivery_allowed_flag: "WEB_DELIVERY_NOT_ALLOWED", # required, accepts WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED
    #                         },
    #                         segment_num: 1,
    #                         segmentation_cancel_indicator: "SEGMENTATION_EVENT_NOT_CANCELED", # required, accepts SEGMENTATION_EVENT_NOT_CANCELED, SEGMENTATION_EVENT_CANCELED
    #                         segmentation_duration: 1,
    #                         segmentation_event_id: 1, # required
    #                         segmentation_type_id: 1,
    #                         segmentation_upid: "__string",
    #                         segmentation_upid_type: 1,
    #                         segments_expected: 1,
    #                         sub_segment_num: 1,
    #                         sub_segments_expected: 1,
    #                       },
    #                     },
    #                   },
    #                 ],
    #               },
    #               static_image_activate_settings: {
    #                 duration: 1,
    #                 fade_in: 1,
    #                 fade_out: 1,
    #                 height: 1,
    #                 image: { # required
    #                   password_param: "__string",
    #                   uri: "__string", # required
    #                   username: "__string",
    #                 },
    #                 image_x: 1,
    #                 image_y: 1,
    #                 layer: 1,
    #                 opacity: 1,
    #                 width: 1,
    #               },
    #               static_image_deactivate_settings: {
    #                 fade_out: 1,
    #                 layer: 1,
    #               },
    #             },
    #             schedule_action_start_settings: { # required
    #               fixed_mode_schedule_action_start_settings: {
    #                 time: "__string", # required
    #               },
    #               follow_mode_schedule_action_start_settings: {
    #                 follow_point: "END", # required, accepts END, START
    #                 reference_action_name: "__string", # required
    #               },
    #               immediate_mode_schedule_action_start_settings: {
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] schedule_actions
    #   A list of schedule actions to create.
    #   @return [Array<Types::ScheduleAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchScheduleActionCreateRequest AWS API Documentation
    #
    class BatchScheduleActionCreateRequest < Struct.new(
      :schedule_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of actions that have been created in the schedule.
    #
    # @!attribute [rw] schedule_actions
    #   List of actions that have been created in the schedule.
    #   @return [Array<Types::ScheduleAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchScheduleActionCreateResult AWS API Documentation
    #
    class BatchScheduleActionCreateResult < Struct.new(
      :schedule_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of schedule actions to delete.
    #
    # @note When making an API call, you may pass BatchScheduleActionDeleteRequest
    #   data as a hash:
    #
    #       {
    #         action_names: ["__string"], # required
    #       }
    #
    # @!attribute [rw] action_names
    #   A list of schedule actions to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchScheduleActionDeleteRequest AWS API Documentation
    #
    class BatchScheduleActionDeleteRequest < Struct.new(
      :action_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of actions that have been deleted from the schedule.
    #
    # @!attribute [rw] schedule_actions
    #   List of actions that have been deleted from the schedule.
    #   @return [Array<Types::ScheduleAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchScheduleActionDeleteResult AWS API Documentation
    #
    class BatchScheduleActionDeleteResult < Struct.new(
      :schedule_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Batch start resource request
    #
    # @!attribute [rw] channel_ids
    #   List of channel IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] multiplex_ids
    #   List of multiplex IDs
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchStart AWS API Documentation
    #
    class BatchStart < Struct.new(
      :channel_ids,
      :multiplex_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchStartRequest
    #   data as a hash:
    #
    #       {
    #         channel_ids: ["__string"],
    #         multiplex_ids: ["__string"],
    #       }
    #
    # @!attribute [rw] channel_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] multiplex_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchStartRequest AWS API Documentation
    #
    class BatchStartRequest < Struct.new(
      :channel_ids,
      :multiplex_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed
    #   @return [Array<Types::BatchFailedResultModel>]
    #
    # @!attribute [rw] successful
    #   @return [Array<Types::BatchSuccessfulResultModel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchStartResponse AWS API Documentation
    #
    class BatchStartResponse < Struct.new(
      :failed,
      :successful)
      SENSITIVE = []
      include Aws::Structure
    end

    # Batch start resource results
    #
    # @!attribute [rw] failed
    #   List of failed operations
    #   @return [Array<Types::BatchFailedResultModel>]
    #
    # @!attribute [rw] successful
    #   List of successful operations
    #   @return [Array<Types::BatchSuccessfulResultModel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchStartResultModel AWS API Documentation
    #
    class BatchStartResultModel < Struct.new(
      :failed,
      :successful)
      SENSITIVE = []
      include Aws::Structure
    end

    # Batch stop resource request
    #
    # @!attribute [rw] channel_ids
    #   List of channel IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] multiplex_ids
    #   List of multiplex IDs
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchStop AWS API Documentation
    #
    class BatchStop < Struct.new(
      :channel_ids,
      :multiplex_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchStopRequest
    #   data as a hash:
    #
    #       {
    #         channel_ids: ["__string"],
    #         multiplex_ids: ["__string"],
    #       }
    #
    # @!attribute [rw] channel_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] multiplex_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchStopRequest AWS API Documentation
    #
    class BatchStopRequest < Struct.new(
      :channel_ids,
      :multiplex_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed
    #   @return [Array<Types::BatchFailedResultModel>]
    #
    # @!attribute [rw] successful
    #   @return [Array<Types::BatchSuccessfulResultModel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchStopResponse AWS API Documentation
    #
    class BatchStopResponse < Struct.new(
      :failed,
      :successful)
      SENSITIVE = []
      include Aws::Structure
    end

    # Batch stop resource results
    #
    # @!attribute [rw] failed
    #   List of failed operations
    #   @return [Array<Types::BatchFailedResultModel>]
    #
    # @!attribute [rw] successful
    #   List of successful operations
    #   @return [Array<Types::BatchSuccessfulResultModel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchStopResultModel AWS API Documentation
    #
    class BatchStopResultModel < Struct.new(
      :failed,
      :successful)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details from a successful operation
    #
    # @!attribute [rw] arn
    #   ARN of the resource
    #   @return [String]
    #
    # @!attribute [rw] id
    #   ID of the resource
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Current state of the resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchSuccessfulResultModel AWS API Documentation
    #
    class BatchSuccessfulResultModel < Struct.new(
      :arn,
      :id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to create actions (add actions to the schedule), delete
    # actions (remove actions from the schedule), or both create and delete
    # actions.
    #
    # @note When making an API call, you may pass BatchUpdateScheduleRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "__string", # required
    #         creates: {
    #           schedule_actions: [ # required
    #             {
    #               action_name: "__string", # required
    #               schedule_action_settings: { # required
    #                 hls_id_3_segment_tagging_settings: {
    #                   tag: "__string", # required
    #                 },
    #                 hls_timed_metadata_settings: {
    #                   id_3: "__string", # required
    #                 },
    #                 input_prepare_settings: {
    #                   input_attachment_name_reference: "__string",
    #                   input_clipping_settings: {
    #                     input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #                     start_timecode: {
    #                       timecode: "__string",
    #                     },
    #                     stop_timecode: {
    #                       last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #                       timecode: "__string",
    #                     },
    #                   },
    #                   url_path: ["__string"],
    #                 },
    #                 input_switch_settings: {
    #                   input_attachment_name_reference: "__string", # required
    #                   input_clipping_settings: {
    #                     input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #                     start_timecode: {
    #                       timecode: "__string",
    #                     },
    #                     stop_timecode: {
    #                       last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #                       timecode: "__string",
    #                     },
    #                   },
    #                   url_path: ["__string"],
    #                 },
    #                 pause_state_settings: {
    #                   pipelines: [
    #                     {
    #                       pipeline_id: "PIPELINE_0", # required, accepts PIPELINE_0, PIPELINE_1
    #                     },
    #                   ],
    #                 },
    #                 scte_35_return_to_network_settings: {
    #                   splice_event_id: 1, # required
    #                 },
    #                 scte_35_splice_insert_settings: {
    #                   duration: 1,
    #                   splice_event_id: 1, # required
    #                 },
    #                 scte_35_time_signal_settings: {
    #                   scte_35_descriptors: [ # required
    #                     {
    #                       scte_35_descriptor_settings: { # required
    #                         segmentation_descriptor_scte_35_descriptor_settings: { # required
    #                           delivery_restrictions: {
    #                             archive_allowed_flag: "ARCHIVE_NOT_ALLOWED", # required, accepts ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
    #                             device_restrictions: "NONE", # required, accepts NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
    #                             no_regional_blackout_flag: "REGIONAL_BLACKOUT", # required, accepts REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
    #                             web_delivery_allowed_flag: "WEB_DELIVERY_NOT_ALLOWED", # required, accepts WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED
    #                           },
    #                           segment_num: 1,
    #                           segmentation_cancel_indicator: "SEGMENTATION_EVENT_NOT_CANCELED", # required, accepts SEGMENTATION_EVENT_NOT_CANCELED, SEGMENTATION_EVENT_CANCELED
    #                           segmentation_duration: 1,
    #                           segmentation_event_id: 1, # required
    #                           segmentation_type_id: 1,
    #                           segmentation_upid: "__string",
    #                           segmentation_upid_type: 1,
    #                           segments_expected: 1,
    #                           sub_segment_num: 1,
    #                           sub_segments_expected: 1,
    #                         },
    #                       },
    #                     },
    #                   ],
    #                 },
    #                 static_image_activate_settings: {
    #                   duration: 1,
    #                   fade_in: 1,
    #                   fade_out: 1,
    #                   height: 1,
    #                   image: { # required
    #                     password_param: "__string",
    #                     uri: "__string", # required
    #                     username: "__string",
    #                   },
    #                   image_x: 1,
    #                   image_y: 1,
    #                   layer: 1,
    #                   opacity: 1,
    #                   width: 1,
    #                 },
    #                 static_image_deactivate_settings: {
    #                   fade_out: 1,
    #                   layer: 1,
    #                 },
    #               },
    #               schedule_action_start_settings: { # required
    #                 fixed_mode_schedule_action_start_settings: {
    #                   time: "__string", # required
    #                 },
    #                 follow_mode_schedule_action_start_settings: {
    #                   follow_point: "END", # required, accepts END, START
    #                   reference_action_name: "__string", # required
    #                 },
    #                 immediate_mode_schedule_action_start_settings: {
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         deletes: {
    #           action_names: ["__string"], # required
    #         },
    #       }
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @!attribute [rw] creates
    #   Schedule actions to create in the schedule.
    #   @return [Types::BatchScheduleActionCreateRequest]
    #
    # @!attribute [rw] deletes
    #   Schedule actions to delete from the schedule.
    #   @return [Types::BatchScheduleActionDeleteRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchUpdateScheduleRequest AWS API Documentation
    #
    class BatchUpdateScheduleRequest < Struct.new(
      :channel_id,
      :creates,
      :deletes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creates
    #   List of actions that have been created in the schedule.
    #   @return [Types::BatchScheduleActionCreateResult]
    #
    # @!attribute [rw] deletes
    #   List of actions that have been deleted from the schedule.
    #   @return [Types::BatchScheduleActionDeleteResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchUpdateScheduleResponse AWS API Documentation
    #
    class BatchUpdateScheduleResponse < Struct.new(
      :creates,
      :deletes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Results of a batch schedule update.
    #
    # @!attribute [rw] creates
    #   Schedule actions created in the schedule.
    #   @return [Types::BatchScheduleActionCreateResult]
    #
    # @!attribute [rw] deletes
    #   Schedule actions deleted from the schedule.
    #   @return [Types::BatchScheduleActionDeleteResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchUpdateScheduleResult AWS API Documentation
    #
    class BatchUpdateScheduleResult < Struct.new(
      :creates,
      :deletes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Blackout Slate
    #
    # @note When making an API call, you may pass BlackoutSlate
    #   data as a hash:
    #
    #       {
    #         blackout_slate_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         network_end_blackout: "DISABLED", # accepts DISABLED, ENABLED
    #         network_end_blackout_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         network_id: "__stringMin34Max34",
    #         state: "DISABLED", # accepts DISABLED, ENABLED
    #       }
    #
    # @!attribute [rw] blackout_slate_image
    #   Blackout slate image to be used. Leave empty for solid black. Only
    #   bmp and png images are supported.
    #   @return [Types::InputLocation]
    #
    # @!attribute [rw] network_end_blackout
    #   Setting to enabled causes the encoder to blackout the video, audio,
    #   and captions, and raise the "Network Blackout Image" slate when an
    #   SCTE104/35 Network End Segmentation Descriptor is encountered. The
    #   blackout will be lifted when the Network Start Segmentation
    #   Descriptor is encountered. The Network End and Network Start
    #   descriptors must contain a network ID that matches the value entered
    #   in "Network ID".
    #   @return [String]
    #
    # @!attribute [rw] network_end_blackout_image
    #   Path to local file to use as Network End Blackout image. Image will
    #   be scaled to fill the entire output raster.
    #   @return [Types::InputLocation]
    #
    # @!attribute [rw] network_id
    #   Provides Network ID that matches EIDR ID format (e.g.,
    #   "10.XXXX/XXXX-XXXX-XXXX-XXXX-XXXX-C").
    #   @return [String]
    #
    # @!attribute [rw] state
    #   When set to enabled, causes video, audio and captions to be blanked
    #   when indicated by program metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BlackoutSlate AWS API Documentation
    #
    class BlackoutSlate < Struct.new(
      :blackout_slate_image,
      :network_end_blackout,
      :network_end_blackout_image,
      :network_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Burn In Destination Settings
    #
    # @note When making an API call, you may pass BurnInDestinationSettings
    #   data as a hash:
    #
    #       {
    #         alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #         background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #         background_opacity: 1,
    #         font: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #         font_opacity: 1,
    #         font_resolution: 1,
    #         font_size: "__string",
    #         outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #         outline_size: 1,
    #         shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #         shadow_opacity: 1,
    #         shadow_x_offset: 1,
    #         shadow_y_offset: 1,
    #         teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #         x_position: 1,
    #         y_position: 1,
    #       }
    #
    # @!attribute [rw] alignment
    #   If no explicit xPosition or yPosition is provided, setting alignment
    #   to centered will place the captions at the bottom center of the
    #   output. Similarly, setting a left alignment will align captions to
    #   the bottom left of the output. If x and y positions are given in
    #   conjunction with the alignment parameter, the font will be justified
    #   (either left or centered) relative to those coordinates. Selecting
    #   "smart" justification will left-justify live subtitles and
    #   center-justify pre-recorded subtitles. All burn-in and DVB-Sub font
    #   settings must match.
    #   @return [String]
    #
    # @!attribute [rw] background_color
    #   Specifies the color of the rectangle behind the captions. All
    #   burn-in and DVB-Sub font settings must match.
    #   @return [String]
    #
    # @!attribute [rw] background_opacity
    #   Specifies the opacity of the background rectangle. 255 is opaque; 0
    #   is transparent. Leaving this parameter out is equivalent to setting
    #   it to 0 (transparent). All burn-in and DVB-Sub font settings must
    #   match.
    #   @return [Integer]
    #
    # @!attribute [rw] font
    #   External font file used for caption burn-in. File extension must be
    #   'ttf' or 'tte'. Although the user can select output fonts for
    #   many different types of input captions, embedded, STL and teletext
    #   sources use a strict grid system. Using external fonts with these
    #   caption sources could cause unexpected display of proportional
    #   fonts. All burn-in and DVB-Sub font settings must match.
    #   @return [Types::InputLocation]
    #
    # @!attribute [rw] font_color
    #   Specifies the color of the burned-in captions. This option is not
    #   valid for source captions that are STL, 608/embedded or teletext.
    #   These source settings are already pre-defined by the caption stream.
    #   All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    #
    # @!attribute [rw] font_opacity
    #   Specifies the opacity of the burned-in captions. 255 is opaque; 0 is
    #   transparent. All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] font_resolution
    #   Font resolution in DPI (dots per inch); default is 96 dpi. All
    #   burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] font_size
    #   When set to 'auto' fontSize will scale depending on the size of
    #   the output. Giving a positive integer will specify the exact font
    #   size in points. All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    #
    # @!attribute [rw] outline_color
    #   Specifies font outline color. This option is not valid for source
    #   captions that are either 608/embedded or teletext. These source
    #   settings are already pre-defined by the caption stream. All burn-in
    #   and DVB-Sub font settings must match.
    #   @return [String]
    #
    # @!attribute [rw] outline_size
    #   Specifies font outline size in pixels. This option is not valid for
    #   source captions that are either 608/embedded or teletext. These
    #   source settings are already pre-defined by the caption stream. All
    #   burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] shadow_color
    #   Specifies the color of the shadow cast by the captions. All burn-in
    #   and DVB-Sub font settings must match.
    #   @return [String]
    #
    # @!attribute [rw] shadow_opacity
    #   Specifies the opacity of the shadow. 255 is opaque; 0 is
    #   transparent. Leaving this parameter out is equivalent to setting it
    #   to 0 (transparent). All burn-in and DVB-Sub font settings must
    #   match.
    #   @return [Integer]
    #
    # @!attribute [rw] shadow_x_offset
    #   Specifies the horizontal offset of the shadow relative to the
    #   captions in pixels. A value of -2 would result in a shadow offset 2
    #   pixels to the left. All burn-in and DVB-Sub font settings must
    #   match.
    #   @return [Integer]
    #
    # @!attribute [rw] shadow_y_offset
    #   Specifies the vertical offset of the shadow relative to the captions
    #   in pixels. A value of -2 would result in a shadow offset 2 pixels
    #   above the text. All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] teletext_grid_control
    #   Controls whether a fixed grid size will be used to generate the
    #   output subtitles bitmap. Only applicable for Teletext inputs and
    #   DVB-Sub/Burn-in outputs.
    #   @return [String]
    #
    # @!attribute [rw] x_position
    #   Specifies the horizontal position of the caption relative to the
    #   left side of the output in pixels. A value of 10 would result in the
    #   captions starting 10 pixels from the left of the output. If no
    #   explicit xPosition is provided, the horizontal caption position will
    #   be determined by the alignment parameter. All burn-in and DVB-Sub
    #   font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] y_position
    #   Specifies the vertical position of the caption relative to the top
    #   of the output in pixels. A value of 10 would result in the captions
    #   starting 10 pixels from the top of the output. If no explicit
    #   yPosition is provided, the caption will be positioned towards the
    #   bottom of the output. All burn-in and DVB-Sub font settings must
    #   match.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BurnInDestinationSettings AWS API Documentation
    #
    class BurnInDestinationSettings < Struct.new(
      :alignment,
      :background_color,
      :background_opacity,
      :font,
      :font_color,
      :font_opacity,
      :font_resolution,
      :font_size,
      :outline_color,
      :outline_size,
      :shadow_color,
      :shadow_opacity,
      :shadow_x_offset,
      :shadow_y_offset,
      :teletext_grid_control,
      :x_position,
      :y_position)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelInputDeviceTransferRequest
    #   data as a hash:
    #
    #       {
    #         input_device_id: "__string", # required
    #       }
    #
    # @!attribute [rw] input_device_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CancelInputDeviceTransferRequest AWS API Documentation
    #
    class CancelInputDeviceTransferRequest < Struct.new(
      :input_device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CancelInputDeviceTransferResponse AWS API Documentation
    #
    class CancelInputDeviceTransferResponse < Aws::EmptyStructure; end

    # Caption Description
    #
    # @note When making an API call, you may pass CaptionDescription
    #   data as a hash:
    #
    #       {
    #         caption_selector_name: "__string", # required
    #         destination_settings: {
    #           arib_destination_settings: {
    #           },
    #           burn_in_destination_settings: {
    #             alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #             background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #             background_opacity: 1,
    #             font: {
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #             font_opacity: 1,
    #             font_resolution: 1,
    #             font_size: "__string",
    #             outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #             outline_size: 1,
    #             shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #             shadow_opacity: 1,
    #             shadow_x_offset: 1,
    #             shadow_y_offset: 1,
    #             teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #             x_position: 1,
    #             y_position: 1,
    #           },
    #           dvb_sub_destination_settings: {
    #             alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #             background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #             background_opacity: 1,
    #             font: {
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #             font_opacity: 1,
    #             font_resolution: 1,
    #             font_size: "__string",
    #             outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #             outline_size: 1,
    #             shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #             shadow_opacity: 1,
    #             shadow_x_offset: 1,
    #             shadow_y_offset: 1,
    #             teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #             x_position: 1,
    #             y_position: 1,
    #           },
    #           ebu_tt_d_destination_settings: {
    #             fill_line_gap: "DISABLED", # accepts DISABLED, ENABLED
    #             font_family: "__string",
    #             style_control: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #           },
    #           embedded_destination_settings: {
    #           },
    #           embedded_plus_scte_20_destination_settings: {
    #           },
    #           rtmp_caption_info_destination_settings: {
    #           },
    #           scte_20_plus_embedded_destination_settings: {
    #           },
    #           scte_27_destination_settings: {
    #           },
    #           smpte_tt_destination_settings: {
    #           },
    #           teletext_destination_settings: {
    #           },
    #           ttml_destination_settings: {
    #             style_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED
    #           },
    #           webvtt_destination_settings: {
    #           },
    #         },
    #         language_code: "__string",
    #         language_description: "__string",
    #         name: "__string", # required
    #       }
    #
    # @!attribute [rw] caption_selector_name
    #   Specifies which input caption selector to use as a caption source
    #   when generating output captions. This field should match a
    #   captionSelector name.
    #   @return [String]
    #
    # @!attribute [rw] destination_settings
    #   Additional settings for captions destination that depend on the
    #   destination type.
    #   @return [Types::CaptionDestinationSettings]
    #
    # @!attribute [rw] language_code
    #   ISO 639-2 three-digit code: http://www.loc.gov/standards/iso639-2/
    #   @return [String]
    #
    # @!attribute [rw] language_description
    #   Human readable information to indicate captions available for
    #   players (eg. English, or Spanish).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the caption description. Used to associate a caption
    #   description with an output. Names must be unique within an event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CaptionDescription AWS API Documentation
    #
    class CaptionDescription < Struct.new(
      :caption_selector_name,
      :destination_settings,
      :language_code,
      :language_description,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Caption Destination Settings
    #
    # @note When making an API call, you may pass CaptionDestinationSettings
    #   data as a hash:
    #
    #       {
    #         arib_destination_settings: {
    #         },
    #         burn_in_destination_settings: {
    #           alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #           background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #           background_opacity: 1,
    #           font: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #           font_opacity: 1,
    #           font_resolution: 1,
    #           font_size: "__string",
    #           outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #           outline_size: 1,
    #           shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #           shadow_opacity: 1,
    #           shadow_x_offset: 1,
    #           shadow_y_offset: 1,
    #           teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #           x_position: 1,
    #           y_position: 1,
    #         },
    #         dvb_sub_destination_settings: {
    #           alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #           background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #           background_opacity: 1,
    #           font: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #           font_opacity: 1,
    #           font_resolution: 1,
    #           font_size: "__string",
    #           outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #           outline_size: 1,
    #           shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #           shadow_opacity: 1,
    #           shadow_x_offset: 1,
    #           shadow_y_offset: 1,
    #           teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #           x_position: 1,
    #           y_position: 1,
    #         },
    #         ebu_tt_d_destination_settings: {
    #           fill_line_gap: "DISABLED", # accepts DISABLED, ENABLED
    #           font_family: "__string",
    #           style_control: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #         },
    #         embedded_destination_settings: {
    #         },
    #         embedded_plus_scte_20_destination_settings: {
    #         },
    #         rtmp_caption_info_destination_settings: {
    #         },
    #         scte_20_plus_embedded_destination_settings: {
    #         },
    #         scte_27_destination_settings: {
    #         },
    #         smpte_tt_destination_settings: {
    #         },
    #         teletext_destination_settings: {
    #         },
    #         ttml_destination_settings: {
    #           style_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED
    #         },
    #         webvtt_destination_settings: {
    #         },
    #       }
    #
    # @!attribute [rw] arib_destination_settings
    #   Arib Destination Settings
    #   @return [Types::AribDestinationSettings]
    #
    # @!attribute [rw] burn_in_destination_settings
    #   Burn In Destination Settings
    #   @return [Types::BurnInDestinationSettings]
    #
    # @!attribute [rw] dvb_sub_destination_settings
    #   Dvb Sub Destination Settings
    #   @return [Types::DvbSubDestinationSettings]
    #
    # @!attribute [rw] ebu_tt_d_destination_settings
    #   Ebu Tt DDestination Settings
    #   @return [Types::EbuTtDDestinationSettings]
    #
    # @!attribute [rw] embedded_destination_settings
    #   Embedded Destination Settings
    #   @return [Types::EmbeddedDestinationSettings]
    #
    # @!attribute [rw] embedded_plus_scte_20_destination_settings
    #   Embedded Plus Scte20 Destination Settings
    #   @return [Types::EmbeddedPlusScte20DestinationSettings]
    #
    # @!attribute [rw] rtmp_caption_info_destination_settings
    #   Rtmp Caption Info Destination Settings
    #   @return [Types::RtmpCaptionInfoDestinationSettings]
    #
    # @!attribute [rw] scte_20_plus_embedded_destination_settings
    #   Scte20 Plus Embedded Destination Settings
    #   @return [Types::Scte20PlusEmbeddedDestinationSettings]
    #
    # @!attribute [rw] scte_27_destination_settings
    #   Scte27 Destination Settings
    #   @return [Types::Scte27DestinationSettings]
    #
    # @!attribute [rw] smpte_tt_destination_settings
    #   Smpte Tt Destination Settings
    #   @return [Types::SmpteTtDestinationSettings]
    #
    # @!attribute [rw] teletext_destination_settings
    #   Teletext Destination Settings
    #   @return [Types::TeletextDestinationSettings]
    #
    # @!attribute [rw] ttml_destination_settings
    #   Ttml Destination Settings
    #   @return [Types::TtmlDestinationSettings]
    #
    # @!attribute [rw] webvtt_destination_settings
    #   Webvtt Destination Settings
    #   @return [Types::WebvttDestinationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CaptionDestinationSettings AWS API Documentation
    #
    class CaptionDestinationSettings < Struct.new(
      :arib_destination_settings,
      :burn_in_destination_settings,
      :dvb_sub_destination_settings,
      :ebu_tt_d_destination_settings,
      :embedded_destination_settings,
      :embedded_plus_scte_20_destination_settings,
      :rtmp_caption_info_destination_settings,
      :scte_20_plus_embedded_destination_settings,
      :scte_27_destination_settings,
      :smpte_tt_destination_settings,
      :teletext_destination_settings,
      :ttml_destination_settings,
      :webvtt_destination_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Maps a caption channel to an ISO 693-2 language code
    # (http://www.loc.gov/standards/iso639-2), with an optional description.
    #
    # @note When making an API call, you may pass CaptionLanguageMapping
    #   data as a hash:
    #
    #       {
    #         caption_channel: 1, # required
    #         language_code: "__stringMin3Max3", # required
    #         language_description: "__stringMin1", # required
    #       }
    #
    # @!attribute [rw] caption_channel
    #   The closed caption channel being described by this
    #   CaptionLanguageMapping. Each channel mapping must have a unique
    #   channel number (maximum of 4)
    #   @return [Integer]
    #
    # @!attribute [rw] language_code
    #   Three character ISO 639-2 language code (see
    #   http://www.loc.gov/standards/iso639-2)
    #   @return [String]
    #
    # @!attribute [rw] language_description
    #   Textual description of language
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CaptionLanguageMapping AWS API Documentation
    #
    class CaptionLanguageMapping < Struct.new(
      :caption_channel,
      :language_code,
      :language_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output groups for this Live Event. Output groups contain information
    # about where streams should be distributed.
    #
    # @note When making an API call, you may pass CaptionSelector
    #   data as a hash:
    #
    #       {
    #         language_code: "__string",
    #         name: "__stringMin1", # required
    #         selector_settings: {
    #           ancillary_source_settings: {
    #             source_ancillary_channel_number: 1,
    #           },
    #           arib_source_settings: {
    #           },
    #           dvb_sub_source_settings: {
    #             pid: 1,
    #           },
    #           embedded_source_settings: {
    #             convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #             scte_20_detection: "AUTO", # accepts AUTO, OFF
    #             source_608_channel_number: 1,
    #             source_608_track_number: 1,
    #           },
    #           scte_20_source_settings: {
    #             convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #             source_608_channel_number: 1,
    #           },
    #           scte_27_source_settings: {
    #             pid: 1,
    #           },
    #           teletext_source_settings: {
    #             page_number: "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] language_code
    #   When specified this field indicates the three letter language code
    #   of the caption track to extract from the source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name identifier for a caption selector. This name is used to
    #   associate this caption selector with one or more caption
    #   descriptions. Names must be unique within an event.
    #   @return [String]
    #
    # @!attribute [rw] selector_settings
    #   Caption selector settings.
    #   @return [Types::CaptionSelectorSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CaptionSelector AWS API Documentation
    #
    class CaptionSelector < Struct.new(
      :language_code,
      :name,
      :selector_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Caption Selector Settings
    #
    # @note When making an API call, you may pass CaptionSelectorSettings
    #   data as a hash:
    #
    #       {
    #         ancillary_source_settings: {
    #           source_ancillary_channel_number: 1,
    #         },
    #         arib_source_settings: {
    #         },
    #         dvb_sub_source_settings: {
    #           pid: 1,
    #         },
    #         embedded_source_settings: {
    #           convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #           scte_20_detection: "AUTO", # accepts AUTO, OFF
    #           source_608_channel_number: 1,
    #           source_608_track_number: 1,
    #         },
    #         scte_20_source_settings: {
    #           convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #           source_608_channel_number: 1,
    #         },
    #         scte_27_source_settings: {
    #           pid: 1,
    #         },
    #         teletext_source_settings: {
    #           page_number: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] ancillary_source_settings
    #   Ancillary Source Settings
    #   @return [Types::AncillarySourceSettings]
    #
    # @!attribute [rw] arib_source_settings
    #   Arib Source Settings
    #   @return [Types::AribSourceSettings]
    #
    # @!attribute [rw] dvb_sub_source_settings
    #   Dvb Sub Source Settings
    #   @return [Types::DvbSubSourceSettings]
    #
    # @!attribute [rw] embedded_source_settings
    #   Embedded Source Settings
    #   @return [Types::EmbeddedSourceSettings]
    #
    # @!attribute [rw] scte_20_source_settings
    #   Scte20 Source Settings
    #   @return [Types::Scte20SourceSettings]
    #
    # @!attribute [rw] scte_27_source_settings
    #   Scte27 Source Settings
    #   @return [Types::Scte27SourceSettings]
    #
    # @!attribute [rw] teletext_source_settings
    #   Teletext Source Settings
    #   @return [Types::TeletextSourceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CaptionSelectorSettings AWS API Documentation
    #
    class CaptionSelectorSettings < Struct.new(
      :ancillary_source_settings,
      :arib_source_settings,
      :dvb_sub_source_settings,
      :embedded_source_settings,
      :scte_20_source_settings,
      :scte_27_source_settings,
      :teletext_source_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CdiInputSpecification
    #   data as a hash:
    #
    #       {
    #         resolution: "SD", # accepts SD, HD, FHD, UHD
    #       }
    #
    # @!attribute [rw] resolution
    #   Maximum CDI input resolution
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CdiInputSpecification AWS API Documentation
    #
    class CdiInputSpecification < Struct.new(
      :resolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The unique arn of the channel.
    #   @return [String]
    #
    # @!attribute [rw] cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    #
    # @!attribute [rw] channel_class
    #   The class for this channel. STANDARD for a channel with two
    #   pipelines or SINGLE\_PIPELINE for a channel with one pipeline.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #   @return [Array<Types::OutputDestination>]
    #
    # @!attribute [rw] egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #   @return [Array<Types::ChannelEgressEndpoint>]
    #
    # @!attribute [rw] encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    #
    # @!attribute [rw] id
    #   The unique id of the channel.
    #   @return [String]
    #
    # @!attribute [rw] input_attachments
    #   List of input attachments for channel.
    #   @return [Array<Types::InputAttachment>]
    #
    # @!attribute [rw] input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    #
    # @!attribute [rw] log_level
    #   The log level being written to CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the channel. (user-mutable)
    #   @return [String]
    #
    # @!attribute [rw] pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #   @return [Array<Types::PipelineDetail>]
    #
    # @!attribute [rw] pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the
    #   Channel.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Channel AWS API Documentation
    #
    class Channel < Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :encoder_settings,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] validation_errors
    #   A collection of validation error responses.
    #   @return [Array<Types::ValidationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ChannelConfigurationValidationError AWS API Documentation
    #
    class ChannelConfigurationValidationError < Struct.new(
      :message,
      :validation_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_ip
    #   Public IP of where a channel's output comes from
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ChannelEgressEndpoint AWS API Documentation
    #
    class ChannelEgressEndpoint < Struct.new(
      :source_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The unique arn of the channel.
    #   @return [String]
    #
    # @!attribute [rw] cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    #
    # @!attribute [rw] channel_class
    #   The class for this channel. STANDARD for a channel with two
    #   pipelines or SINGLE\_PIPELINE for a channel with one pipeline.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #   @return [Array<Types::OutputDestination>]
    #
    # @!attribute [rw] egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #   @return [Array<Types::ChannelEgressEndpoint>]
    #
    # @!attribute [rw] id
    #   The unique id of the channel.
    #   @return [String]
    #
    # @!attribute [rw] input_attachments
    #   List of input attachments for channel.
    #   @return [Array<Types::InputAttachment>]
    #
    # @!attribute [rw] input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    #
    # @!attribute [rw] log_level
    #   The log level being written to CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the channel. (user-mutable)
    #   @return [String]
    #
    # @!attribute [rw] pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the
    #   Channel.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ChannelSummary AWS API Documentation
    #
    class ChannelSummary < Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :name,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Passthrough applies no color space conversion to the output
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ColorSpacePassthroughSettings AWS API Documentation
    #
    class ColorSpacePassthroughSettings < Aws::EmptyStructure; end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    #
    # @!attribute [rw] channel_class
    #   The class for this channel. STANDARD for a channel with two
    #   pipelines or SINGLE\_PIPELINE for a channel with one pipeline.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::OutputDestination>]
    #
    # @!attribute [rw] encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    #
    # @!attribute [rw] input_attachments
    #   List of input attachments for channel.
    #   @return [Array<Types::InputAttachment>]
    #
    # @!attribute [rw] input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    #
    # @!attribute [rw] log_level
    #   The log level to write to CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of channel.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   Unique request ID to be specified. This is needed to prevent retries from creating multiple resources. **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] reserved
    #   Deprecated field that's only usable by whitelisted customers.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   An optional Amazon Resource Name (ARN) of the role to assume when
    #   running the Channel.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateChannel AWS API Documentation
    #
    class CreateChannel < Struct.new(
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :encoder_settings,
      :input_attachments,
      :input_specification,
      :log_level,
      :name,
      :request_id,
      :reserved,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateChannelRequest
    #   data as a hash:
    #
    #       {
    #         cdi_input_specification: {
    #           resolution: "SD", # accepts SD, HD, FHD, UHD
    #         },
    #         channel_class: "STANDARD", # accepts STANDARD, SINGLE_PIPELINE
    #         destinations: [
    #           {
    #             id: "__string",
    #             media_package_settings: [
    #               {
    #                 channel_id: "__stringMin1",
    #               },
    #             ],
    #             multiplex_settings: {
    #               multiplex_id: "__stringMin1",
    #               program_name: "__stringMin1",
    #             },
    #             settings: [
    #               {
    #                 password_param: "__string",
    #                 stream_name: "__string",
    #                 url: "__string",
    #                 username: "__string",
    #               },
    #             ],
    #           },
    #         ],
    #         encoder_settings: {
    #           audio_descriptions: [ # required
    #             {
    #               audio_normalization_settings: {
    #                 algorithm: "ITU_1770_1", # accepts ITU_1770_1, ITU_1770_2
    #                 algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO
    #                 target_lkfs: 1.0,
    #               },
    #               audio_selector_name: "__string", # required
    #               audio_type: "CLEAN_EFFECTS", # accepts CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY
    #               audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               codec_settings: {
    #                 aac_settings: {
    #                   bitrate: 1.0,
    #                   coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                   input_type: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                   profile: "HEV1", # accepts HEV1, HEV2, LC
    #                   rate_control_mode: "CBR", # accepts CBR, VBR
    #                   raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                   sample_rate: 1.0,
    #                   spec: "MPEG2", # accepts MPEG2, MPEG4
    #                   vbr_quality: "HIGH", # accepts HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW
    #                 },
    #                 ac_3_settings: {
    #                   bitrate: 1.0,
    #                   bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                   dialnorm: 1,
    #                   drc_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                   lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #                   metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                 },
    #                 eac_3_settings: {
    #                   attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                   bitrate: 1.0,
    #                   bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                   dc_filter: "DISABLED", # accepts DISABLED, ENABLED
    #                   dialnorm: 1,
    #                   drc_line: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #                   drc_rf: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #                   lfe_control: "LFE", # accepts LFE, NO_LFE
    #                   lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #                   lo_ro_center_mix_level: 1.0,
    #                   lo_ro_surround_mix_level: 1.0,
    #                   lt_rt_center_mix_level: 1.0,
    #                   lt_rt_surround_mix_level: 1.0,
    #                   metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   passthrough_control: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, WHEN_POSSIBLE
    #                   phase_control: "NO_SHIFT", # accepts NO_SHIFT, SHIFT_90_DEGREES
    #                   stereo_downmix: "DPL2", # accepts DPL2, LO_RO, LT_RT, NOT_INDICATED
    #                   surround_ex_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #                   surround_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #                 },
    #                 mp_2_settings: {
    #                   bitrate: 1.0,
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0
    #                   sample_rate: 1.0,
    #                 },
    #                 pass_through_settings: {
    #                 },
    #                 wav_settings: {
    #                   bit_depth: 1.0,
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_4_0, CODING_MODE_8_0
    #                   sample_rate: 1.0,
    #                 },
    #               },
    #               language_code: "__stringMin1Max35",
    #               language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               name: "__string", # required
    #               remix_settings: {
    #                 channel_mappings: [ # required
    #                   {
    #                     input_channel_levels: [ # required
    #                       {
    #                         gain: 1, # required
    #                         input_channel: 1, # required
    #                       },
    #                     ],
    #                     output_channel: 1, # required
    #                   },
    #                 ],
    #                 channels_in: 1,
    #                 channels_out: 1,
    #               },
    #               stream_name: "__string",
    #             },
    #           ],
    #           avail_blanking: {
    #             avail_blanking_image: {
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             state: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           avail_configuration: {
    #             avail_settings: {
    #               scte_35_splice_insert: {
    #                 ad_avail_offset: 1,
    #                 no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #                 web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #               },
    #               scte_35_time_signal_apos: {
    #                 ad_avail_offset: 1,
    #                 no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #                 web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #               },
    #             },
    #           },
    #           blackout_slate: {
    #             blackout_slate_image: {
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             network_end_blackout: "DISABLED", # accepts DISABLED, ENABLED
    #             network_end_blackout_image: {
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             network_id: "__stringMin34Max34",
    #             state: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           caption_descriptions: [
    #             {
    #               caption_selector_name: "__string", # required
    #               destination_settings: {
    #                 arib_destination_settings: {
    #                 },
    #                 burn_in_destination_settings: {
    #                   alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #                   background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                   background_opacity: 1,
    #                   font: {
    #                     password_param: "__string",
    #                     uri: "__string", # required
    #                     username: "__string",
    #                   },
    #                   font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                   font_opacity: 1,
    #                   font_resolution: 1,
    #                   font_size: "__string",
    #                   outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                   outline_size: 1,
    #                   shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                   shadow_opacity: 1,
    #                   shadow_x_offset: 1,
    #                   shadow_y_offset: 1,
    #                   teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #                   x_position: 1,
    #                   y_position: 1,
    #                 },
    #                 dvb_sub_destination_settings: {
    #                   alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #                   background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                   background_opacity: 1,
    #                   font: {
    #                     password_param: "__string",
    #                     uri: "__string", # required
    #                     username: "__string",
    #                   },
    #                   font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                   font_opacity: 1,
    #                   font_resolution: 1,
    #                   font_size: "__string",
    #                   outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                   outline_size: 1,
    #                   shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                   shadow_opacity: 1,
    #                   shadow_x_offset: 1,
    #                   shadow_y_offset: 1,
    #                   teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #                   x_position: 1,
    #                   y_position: 1,
    #                 },
    #                 ebu_tt_d_destination_settings: {
    #                   fill_line_gap: "DISABLED", # accepts DISABLED, ENABLED
    #                   font_family: "__string",
    #                   style_control: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                 },
    #                 embedded_destination_settings: {
    #                 },
    #                 embedded_plus_scte_20_destination_settings: {
    #                 },
    #                 rtmp_caption_info_destination_settings: {
    #                 },
    #                 scte_20_plus_embedded_destination_settings: {
    #                 },
    #                 scte_27_destination_settings: {
    #                 },
    #                 smpte_tt_destination_settings: {
    #                 },
    #                 teletext_destination_settings: {
    #                 },
    #                 ttml_destination_settings: {
    #                   style_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED
    #                 },
    #                 webvtt_destination_settings: {
    #                 },
    #               },
    #               language_code: "__string",
    #               language_description: "__string",
    #               name: "__string", # required
    #             },
    #           ],
    #           feature_activations: {
    #             input_prepare_schedule_actions: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           global_configuration: {
    #             initial_audio_gain: 1,
    #             input_end_action: "NONE", # accepts NONE, SWITCH_AND_LOOP_INPUTS
    #             input_loss_behavior: {
    #               black_frame_msec: 1,
    #               input_loss_image_color: "__stringMin6Max6",
    #               input_loss_image_slate: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               input_loss_image_type: "COLOR", # accepts COLOR, SLATE
    #               repeat_frame_msec: 1,
    #             },
    #             output_locking_mode: "EPOCH_LOCKING", # accepts EPOCH_LOCKING, PIPELINE_LOCKING
    #             output_timing_source: "INPUT_CLOCK", # accepts INPUT_CLOCK, SYSTEM_CLOCK
    #             support_low_framerate_inputs: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           nielsen_configuration: {
    #             distributor_id: "__string",
    #             nielsen_pcm_to_id_3_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           output_groups: [ # required
    #             {
    #               name: "__stringMax32",
    #               output_group_settings: { # required
    #                 archive_group_settings: {
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   rollover_interval: 1,
    #                 },
    #                 frame_capture_group_settings: {
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                 },
    #                 hls_group_settings: {
    #                   ad_markers: ["ADOBE"], # accepts ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
    #                   base_url_content: "__string",
    #                   base_url_content_1: "__string",
    #                   base_url_manifest: "__string",
    #                   base_url_manifest_1: "__string",
    #                   caption_language_mappings: [
    #                     {
    #                       caption_channel: 1, # required
    #                       language_code: "__stringMin3Max3", # required
    #                       language_description: "__stringMin1", # required
    #                     },
    #                   ],
    #                   caption_language_setting: "INSERT", # accepts INSERT, NONE, OMIT
    #                   client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                   codec_specification: "RFC_4281", # accepts RFC_4281, RFC_6381
    #                   constant_iv: "__stringMin32Max32",
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #                   encryption_type: "AES128", # accepts AES128, SAMPLE_AES
    #                   hls_cdn_settings: {
    #                     hls_akamai_settings: {
    #                       connection_retry_interval: 1,
    #                       filecache_duration: 1,
    #                       http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                       num_retries: 1,
    #                       restart_delay: 1,
    #                       salt: "__string",
    #                       token: "__string",
    #                     },
    #                     hls_basic_put_settings: {
    #                       connection_retry_interval: 1,
    #                       filecache_duration: 1,
    #                       num_retries: 1,
    #                       restart_delay: 1,
    #                     },
    #                     hls_media_store_settings: {
    #                       connection_retry_interval: 1,
    #                       filecache_duration: 1,
    #                       media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #                       num_retries: 1,
    #                       restart_delay: 1,
    #                     },
    #                     hls_webdav_settings: {
    #                       connection_retry_interval: 1,
    #                       filecache_duration: 1,
    #                       http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                       num_retries: 1,
    #                       restart_delay: 1,
    #                     },
    #                   },
    #                   hls_id_3_segment_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #                   i_frame_only_playlists: "DISABLED", # accepts DISABLED, STANDARD
    #                   index_n_segments: 1,
    #                   input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #                   iv_in_manifest: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                   iv_source: "EXPLICIT", # accepts EXPLICIT, FOLLOWS_SEGMENT_NUMBER
    #                   keep_segments: 1,
    #                   key_format: "__string",
    #                   key_format_versions: "__string",
    #                   key_provider_settings: {
    #                     static_key_settings: {
    #                       key_provider_server: {
    #                         password_param: "__string",
    #                         uri: "__string", # required
    #                         username: "__string",
    #                       },
    #                       static_key_value: "__stringMin32Max32", # required
    #                     },
    #                   },
    #                   manifest_compression: "GZIP", # accepts GZIP, NONE
    #                   manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                   min_segment_length: 1,
    #                   mode: "LIVE", # accepts LIVE, VOD
    #                   output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY, VARIANT_MANIFESTS_AND_SEGMENTS
    #                   program_date_time: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                   program_date_time_period: 1,
    #                   redundant_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #                   segment_length: 1,
    #                   segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #                   segments_per_subdirectory: 1,
    #                   stream_inf_resolution: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                   timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #                   timed_metadata_id_3_period: 1,
    #                   timestamp_delta_milliseconds: 1,
    #                   ts_file_mode: "SEGMENTED_FILES", # accepts SEGMENTED_FILES, SINGLE_FILE
    #                 },
    #                 media_package_group_settings: {
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                 },
    #                 ms_smooth_group_settings: {
    #                   acquisition_point_id: "__string",
    #                   audio_only_timecode_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED_CLOCK
    #                   certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #                   connection_retry_interval: 1,
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   event_id: "__string",
    #                   event_id_mode: "NO_EVENT_ID", # accepts NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP
    #                   event_stop_behavior: "NONE", # accepts NONE, SEND_EOS
    #                   filecache_duration: 1,
    #                   fragment_length: 1,
    #                   input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                   segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #                   send_delay_ms: 1,
    #                   sparse_track_type: "NONE", # accepts NONE, SCTE_35, SCTE_35_WITHOUT_SEGMENTATION
    #                   stream_manifest_behavior: "DO_NOT_SEND", # accepts DO_NOT_SEND, SEND
    #                   timestamp_offset: "__string",
    #                   timestamp_offset_mode: "USE_CONFIGURED_OFFSET", # accepts USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE
    #                 },
    #                 multiplex_group_settings: {
    #                 },
    #                 rtmp_group_settings: {
    #                   authentication_scheme: "AKAMAI", # accepts AKAMAI, COMMON
    #                   cache_full_behavior: "DISCONNECT_IMMEDIATELY", # accepts DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER
    #                   cache_length: 1,
    #                   caption_data: "ALL", # accepts ALL, FIELD1_608, FIELD1_AND_FIELD2_608
    #                   input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #                   restart_delay: 1,
    #                 },
    #                 udp_group_settings: {
    #                   input_loss_action: "DROP_PROGRAM", # accepts DROP_PROGRAM, DROP_TS, EMIT_PROGRAM
    #                   timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #                   timed_metadata_id_3_period: 1,
    #                 },
    #               },
    #               outputs: [ # required
    #                 {
    #                   audio_description_names: ["__string"],
    #                   caption_description_names: ["__string"],
    #                   output_name: "__stringMin1Max255",
    #                   output_settings: { # required
    #                     archive_output_settings: {
    #                       container_settings: { # required
    #                         m2ts_settings: {
    #                           absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                           arib: "DISABLED", # accepts DISABLED, ENABLED
    #                           arib_captions_pid: "__string",
    #                           arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                           audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                           audio_frames_per_pes: 1,
    #                           audio_pids: "__string",
    #                           audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                           bitrate: 1,
    #                           buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                           cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                           dvb_nit_settings: {
    #                             network_id: 1, # required
    #                             network_name: "__stringMin1Max256", # required
    #                             rep_interval: 1,
    #                           },
    #                           dvb_sdt_settings: {
    #                             output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                             rep_interval: 1,
    #                             service_name: "__stringMin1Max256",
    #                             service_provider_name: "__stringMin1Max256",
    #                           },
    #                           dvb_sub_pids: "__string",
    #                           dvb_tdt_settings: {
    #                             rep_interval: 1,
    #                           },
    #                           dvb_teletext_pid: "__string",
    #                           ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                           ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                           ebp_lookahead_ms: 1,
    #                           ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                           ecm_pid: "__string",
    #                           es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                           etv_platform_pid: "__string",
    #                           etv_signal_pid: "__string",
    #                           fragment_time: 1.0,
    #                           klv: "NONE", # accepts NONE, PASSTHROUGH
    #                           klv_data_pids: "__string",
    #                           nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           null_packet_bitrate: 1.0,
    #                           pat_interval: 1,
    #                           pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                           pcr_period: 1,
    #                           pcr_pid: "__string",
    #                           pmt_interval: 1,
    #                           pmt_pid: "__string",
    #                           program_num: 1,
    #                           rate_mode: "CBR", # accepts CBR, VBR
    #                           scte_27_pids: "__string",
    #                           scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                           scte_35_pid: "__string",
    #                           segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                           segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                           segmentation_time: 1.0,
    #                           timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           timed_metadata_pid: "__string",
    #                           transport_stream_id: 1,
    #                           video_pid: "__string",
    #                         },
    #                         raw_settings: {
    #                         },
    #                       },
    #                       extension: "__string",
    #                       name_modifier: "__string",
    #                     },
    #                     frame_capture_output_settings: {
    #                       name_modifier: "__string",
    #                     },
    #                     hls_output_settings: {
    #                       h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                       hls_settings: { # required
    #                         audio_only_hls_settings: {
    #                           audio_group_id: "__string",
    #                           audio_only_image: {
    #                             password_param: "__string",
    #                             uri: "__string", # required
    #                             username: "__string",
    #                           },
    #                           audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                           segment_type: "AAC", # accepts AAC, FMP4
    #                         },
    #                         fmp_4_hls_settings: {
    #                           audio_rendition_sets: "__string",
    #                           nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         },
    #                         standard_hls_settings: {
    #                           audio_rendition_sets: "__string",
    #                           m3u_8_settings: { # required
    #                             audio_frames_per_pes: 1,
    #                             audio_pids: "__string",
    #                             ecm_pid: "__string",
    #                             nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                             pat_interval: 1,
    #                             pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                             pcr_period: 1,
    #                             pcr_pid: "__string",
    #                             pmt_interval: 1,
    #                             pmt_pid: "__string",
    #                             program_num: 1,
    #                             scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                             scte_35_pid: "__string",
    #                             timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                             timed_metadata_pid: "__string",
    #                             transport_stream_id: 1,
    #                             video_pid: "__string",
    #                           },
    #                         },
    #                       },
    #                       name_modifier: "__stringMin1",
    #                       segment_modifier: "__string",
    #                     },
    #                     media_package_output_settings: {
    #                     },
    #                     ms_smooth_output_settings: {
    #                       h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                       name_modifier: "__string",
    #                     },
    #                     multiplex_output_settings: {
    #                       destination: { # required
    #                         destination_ref_id: "__string",
    #                       },
    #                     },
    #                     rtmp_output_settings: {
    #                       certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #                       connection_retry_interval: 1,
    #                       destination: { # required
    #                         destination_ref_id: "__string",
    #                       },
    #                       num_retries: 1,
    #                     },
    #                     udp_output_settings: {
    #                       buffer_msec: 1,
    #                       container_settings: { # required
    #                         m2ts_settings: {
    #                           absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                           arib: "DISABLED", # accepts DISABLED, ENABLED
    #                           arib_captions_pid: "__string",
    #                           arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                           audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                           audio_frames_per_pes: 1,
    #                           audio_pids: "__string",
    #                           audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                           bitrate: 1,
    #                           buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                           cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                           dvb_nit_settings: {
    #                             network_id: 1, # required
    #                             network_name: "__stringMin1Max256", # required
    #                             rep_interval: 1,
    #                           },
    #                           dvb_sdt_settings: {
    #                             output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                             rep_interval: 1,
    #                             service_name: "__stringMin1Max256",
    #                             service_provider_name: "__stringMin1Max256",
    #                           },
    #                           dvb_sub_pids: "__string",
    #                           dvb_tdt_settings: {
    #                             rep_interval: 1,
    #                           },
    #                           dvb_teletext_pid: "__string",
    #                           ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                           ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                           ebp_lookahead_ms: 1,
    #                           ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                           ecm_pid: "__string",
    #                           es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                           etv_platform_pid: "__string",
    #                           etv_signal_pid: "__string",
    #                           fragment_time: 1.0,
    #                           klv: "NONE", # accepts NONE, PASSTHROUGH
    #                           klv_data_pids: "__string",
    #                           nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           null_packet_bitrate: 1.0,
    #                           pat_interval: 1,
    #                           pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                           pcr_period: 1,
    #                           pcr_pid: "__string",
    #                           pmt_interval: 1,
    #                           pmt_pid: "__string",
    #                           program_num: 1,
    #                           rate_mode: "CBR", # accepts CBR, VBR
    #                           scte_27_pids: "__string",
    #                           scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                           scte_35_pid: "__string",
    #                           segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                           segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                           segmentation_time: 1.0,
    #                           timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           timed_metadata_pid: "__string",
    #                           transport_stream_id: 1,
    #                           video_pid: "__string",
    #                         },
    #                       },
    #                       destination: { # required
    #                         destination_ref_id: "__string",
    #                       },
    #                       fec_output_settings: {
    #                         column_depth: 1,
    #                         include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #                         row_length: 1,
    #                       },
    #                     },
    #                   },
    #                   video_description_name: "__string",
    #                 },
    #               ],
    #             },
    #           ],
    #           timecode_config: { # required
    #             source: "EMBEDDED", # required, accepts EMBEDDED, SYSTEMCLOCK, ZEROBASED
    #             sync_threshold: 1,
    #           },
    #           video_descriptions: [ # required
    #             {
    #               codec_settings: {
    #                 frame_capture_settings: {
    #                   capture_interval: 1, # required
    #                   capture_interval_units: "MILLISECONDS", # accepts MILLISECONDS, SECONDS
    #                 },
    #                 h264_settings: {
    #                   adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #                   afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #                   bitrate: 1,
    #                   buf_fill_pct: 1,
    #                   buf_size: 1,
    #                   color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                   color_space_settings: {
    #                     color_space_passthrough_settings: {
    #                     },
    #                     rec_601_settings: {
    #                     },
    #                     rec_709_settings: {
    #                     },
    #                   },
    #                   entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                   filter_settings: {
    #                     temporal_filter_settings: {
    #                       post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                       strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                     },
    #                   },
    #                   fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #                   flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                   force_field_pictures: "DISABLED", # accepts DISABLED, ENABLED
    #                   framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   framerate_denominator: 1,
    #                   framerate_numerator: 1,
    #                   gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                   gop_closed_cadence: 1,
    #                   gop_num_b_frames: 1,
    #                   gop_size: 1.0,
    #                   gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                   level: "H264_LEVEL_1", # accepts H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO
    #                   look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #                   max_bitrate: 1,
    #                   min_i_interval: 1,
    #                   num_ref_frames: 1,
    #                   par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   par_denominator: 1,
    #                   par_numerator: 1,
    #                   profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                   quality_level: "ENHANCED_QUALITY", # accepts ENHANCED_QUALITY, STANDARD_QUALITY
    #                   qvbr_quality_level: 1,
    #                   rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR, VBR
    #                   scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #                   scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                   slices: 1,
    #                   softness: 1,
    #                   spatial_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                   subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #                   syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                   temporal_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                   timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                 },
    #                 h265_settings: {
    #                   adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #                   afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #                   alternative_transfer_function: "INSERT", # accepts INSERT, OMIT
    #                   bitrate: 1,
    #                   buf_size: 1,
    #                   color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                   color_space_settings: {
    #                     color_space_passthrough_settings: {
    #                     },
    #                     hdr_10_settings: {
    #                       max_cll: 1,
    #                       max_fall: 1,
    #                     },
    #                     rec_601_settings: {
    #                     },
    #                     rec_709_settings: {
    #                     },
    #                   },
    #                   filter_settings: {
    #                     temporal_filter_settings: {
    #                       post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                       strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                     },
    #                   },
    #                   fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #                   flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                   framerate_denominator: 1, # required
    #                   framerate_numerator: 1, # required
    #                   gop_closed_cadence: 1,
    #                   gop_size: 1.0,
    #                   gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                   level: "H265_LEVEL_1", # accepts H265_LEVEL_1, H265_LEVEL_2, H265_LEVEL_2_1, H265_LEVEL_3, H265_LEVEL_3_1, H265_LEVEL_4, H265_LEVEL_4_1, H265_LEVEL_5, H265_LEVEL_5_1, H265_LEVEL_5_2, H265_LEVEL_6, H265_LEVEL_6_1, H265_LEVEL_6_2, H265_LEVEL_AUTO
    #                   look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #                   max_bitrate: 1,
    #                   min_i_interval: 1,
    #                   par_denominator: 1,
    #                   par_numerator: 1,
    #                   profile: "MAIN", # accepts MAIN, MAIN_10BIT
    #                   qvbr_quality_level: 1,
    #                   rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR
    #                   scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #                   scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                   slices: 1,
    #                   tier: "HIGH", # accepts HIGH, MAIN
    #                   timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                 },
    #                 mpeg_2_settings: {
    #                   adaptive_quantization: "AUTO", # accepts AUTO, HIGH, LOW, MEDIUM, OFF
    #                   afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #                   color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                   color_space: "AUTO", # accepts AUTO, PASSTHROUGH
    #                   display_aspect_ratio: "DISPLAYRATIO16X9", # accepts DISPLAYRATIO16X9, DISPLAYRATIO4X3
    #                   filter_settings: {
    #                     temporal_filter_settings: {
    #                       post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                       strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                     },
    #                   },
    #                   fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #                   framerate_denominator: 1, # required
    #                   framerate_numerator: 1, # required
    #                   gop_closed_cadence: 1,
    #                   gop_num_b_frames: 1,
    #                   gop_size: 1.0,
    #                   gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                   scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #                   subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #                   timecode_insertion: "DISABLED", # accepts DISABLED, GOP_TIMECODE
    #                 },
    #               },
    #               height: 1,
    #               name: "__string", # required
    #               respond_to_afd: "NONE", # accepts NONE, PASSTHROUGH, RESPOND
    #               scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #               sharpness: 1,
    #               width: 1,
    #             },
    #           ],
    #         },
    #         input_attachments: [
    #           {
    #             automatic_input_failover_settings: {
    #               input_preference: "EQUAL_INPUT_PREFERENCE", # accepts EQUAL_INPUT_PREFERENCE, PRIMARY_INPUT_PREFERRED
    #               secondary_input_id: "__string", # required
    #             },
    #             input_attachment_name: "__string",
    #             input_id: "__string",
    #             input_settings: {
    #               audio_selectors: [
    #                 {
    #                   name: "__stringMin1", # required
    #                   selector_settings: {
    #                     audio_language_selection: {
    #                       language_code: "__string", # required
    #                       language_selection_policy: "LOOSE", # accepts LOOSE, STRICT
    #                     },
    #                     audio_pid_selection: {
    #                       pid: 1, # required
    #                     },
    #                     audio_track_selection: {
    #                       tracks: [ # required
    #                         {
    #                           track: 1, # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               ],
    #               caption_selectors: [
    #                 {
    #                   language_code: "__string",
    #                   name: "__stringMin1", # required
    #                   selector_settings: {
    #                     ancillary_source_settings: {
    #                       source_ancillary_channel_number: 1,
    #                     },
    #                     arib_source_settings: {
    #                     },
    #                     dvb_sub_source_settings: {
    #                       pid: 1,
    #                     },
    #                     embedded_source_settings: {
    #                       convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                       scte_20_detection: "AUTO", # accepts AUTO, OFF
    #                       source_608_channel_number: 1,
    #                       source_608_track_number: 1,
    #                     },
    #                     scte_20_source_settings: {
    #                       convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                       source_608_channel_number: 1,
    #                     },
    #                     scte_27_source_settings: {
    #                       pid: 1,
    #                     },
    #                     teletext_source_settings: {
    #                       page_number: "__string",
    #                     },
    #                   },
    #                 },
    #               ],
    #               deblock_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               denoise_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               filter_strength: 1,
    #               input_filter: "AUTO", # accepts AUTO, DISABLED, FORCED
    #               network_input_settings: {
    #                 hls_input_settings: {
    #                   bandwidth: 1,
    #                   buffer_segments: 1,
    #                   retries: 1,
    #                   retry_interval: 1,
    #                 },
    #                 server_validation: "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", # accepts CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY
    #               },
    #               smpte_2038_data_preference: "IGNORE", # accepts IGNORE, PREFER
    #               source_end_behavior: "CONTINUE", # accepts CONTINUE, LOOP
    #               video_selector: {
    #                 color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709
    #                 color_space_usage: "FALLBACK", # accepts FALLBACK, FORCE
    #                 selector_settings: {
    #                   video_selector_pid: {
    #                     pid: 1,
    #                   },
    #                   video_selector_program_id: {
    #                     program_id: 1,
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         input_specification: {
    #           codec: "MPEG2", # accepts MPEG2, AVC, HEVC
    #           maximum_bitrate: "MAX_10_MBPS", # accepts MAX_10_MBPS, MAX_20_MBPS, MAX_50_MBPS
    #           resolution: "SD", # accepts SD, HD, UHD
    #         },
    #         log_level: "ERROR", # accepts ERROR, WARNING, INFO, DEBUG, DISABLED
    #         name: "__string",
    #         request_id: "__string",
    #         reserved: "__string",
    #         role_arn: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] cdi_input_specification
    #   @return [Types::CdiInputSpecification]
    #
    # @!attribute [rw] channel_class
    #   A standard channel has two encoding pipelines and a single pipeline
    #   channel only has one.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::OutputDestination>]
    #
    # @!attribute [rw] encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    #
    # @!attribute [rw] input_attachments
    #   @return [Array<Types::InputAttachment>]
    #
    # @!attribute [rw] input_specification
    #   @return [Types::InputSpecification]
    #
    # @!attribute [rw] log_level
    #   The log level the user wants for their channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] reserved
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateChannelRequest AWS API Documentation
    #
    class CreateChannelRequest < Struct.new(
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :encoder_settings,
      :input_attachments,
      :input_specification,
      :log_level,
      :name,
      :request_id,
      :reserved,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   @return [Types::Channel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateChannelResponse AWS API Documentation
    #
    class CreateChannelResponse < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   @return [Types::Channel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateChannelResultModel AWS API Documentation
    #
    class CreateChannelResultModel < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destinations
    #   Destination settings for PUSH type inputs.
    #   @return [Array<Types::InputDestinationRequest>]
    #
    # @!attribute [rw] input_devices
    #   Settings for the devices.
    #   @return [Array<Types::InputDeviceSettings>]
    #
    # @!attribute [rw] input_security_groups
    #   A list of security groups referenced by IDs to attach to the input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] media_connect_flows
    #   A list of the MediaConnect Flows that you want to use in this input.
    #   You can specify as few as one Flow and presently, as many as two.
    #   The only requirement is when you have more than one is that each
    #   Flow is in a separate Availability Zone as this ensures your EML
    #   input is redundant to AZ issues.
    #   @return [Array<Types::MediaConnectFlowRequest>]
    #
    # @!attribute [rw] name
    #   Name of the input.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   Unique identifier of the request to ensure the request is handled exactly once in case of retries. **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role this input assumes during
    #   and after creation.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The source URLs for a PULL-type input. Every PULL type input needs
    #   exactly two source URLs for redundancy. Only specify sources for
    #   PULL type Inputs. Leave Destinations empty.
    #   @return [Array<Types::InputSourceRequest>]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   Settings for a private VPC Input. When this property is specified,
    #   the input destination addresses will be created in a VPC rather than
    #   with public Internet addresses. This property requires setting the
    #   roleArn property on Input creation. Not compatible with the
    #   inputSecurityGroups property.
    #   @return [Types::InputVpcRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInput AWS API Documentation
    #
    class CreateInput < Struct.new(
      :destinations,
      :input_devices,
      :input_security_groups,
      :media_connect_flows,
      :name,
      :request_id,
      :role_arn,
      :sources,
      :tags,
      :type,
      :vpc)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInputRequest
    #   data as a hash:
    #
    #       {
    #         destinations: [
    #           {
    #             stream_name: "__string",
    #           },
    #         ],
    #         input_devices: [
    #           {
    #             id: "__string",
    #           },
    #         ],
    #         input_security_groups: ["__string"],
    #         media_connect_flows: [
    #           {
    #             flow_arn: "__string",
    #           },
    #         ],
    #         name: "__string",
    #         request_id: "__string",
    #         role_arn: "__string",
    #         sources: [
    #           {
    #             password_param: "__string",
    #             url: "__string",
    #             username: "__string",
    #           },
    #         ],
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         type: "UDP_PUSH", # accepts UDP_PUSH, RTP_PUSH, RTMP_PUSH, RTMP_PULL, URL_PULL, MP4_FILE, MEDIACONNECT, INPUT_DEVICE, AWS_CDI
    #         vpc: {
    #           security_group_ids: ["__string"],
    #           subnet_ids: ["__string"], # required
    #         },
    #       }
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::InputDestinationRequest>]
    #
    # @!attribute [rw] input_devices
    #   @return [Array<Types::InputDeviceSettings>]
    #
    # @!attribute [rw] input_security_groups
    #   @return [Array<String>]
    #
    # @!attribute [rw] media_connect_flows
    #   @return [Array<Types::MediaConnectFlowRequest>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   @return [Array<Types::InputSourceRequest>]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   Settings for a private VPC Input. When this property is specified,
    #   the input destination addresses will be created in a VPC rather than
    #   with public Internet addresses. This property requires setting the
    #   roleArn property on Input creation. Not compatible with the
    #   inputSecurityGroups property.
    #   @return [Types::InputVpcRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInputRequest AWS API Documentation
    #
    class CreateInputRequest < Struct.new(
      :destinations,
      :input_devices,
      :input_security_groups,
      :media_connect_flows,
      :name,
      :request_id,
      :role_arn,
      :sources,
      :tags,
      :type,
      :vpc)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input
    #   @return [Types::Input]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInputResponse AWS API Documentation
    #
    class CreateInputResponse < Struct.new(
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input
    #   @return [Types::Input]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInputResultModel AWS API Documentation
    #
    class CreateInputResultModel < Struct.new(
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInputSecurityGroupRequest
    #   data as a hash:
    #
    #       {
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         whitelist_rules: [
    #           {
    #             cidr: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] whitelist_rules
    #   @return [Array<Types::InputWhitelistRuleCidr>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInputSecurityGroupRequest AWS API Documentation
    #
    class CreateInputSecurityGroupRequest < Struct.new(
      :tags,
      :whitelist_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_group
    #   An Input Security Group
    #   @return [Types::InputSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInputSecurityGroupResponse AWS API Documentation
    #
    class CreateInputSecurityGroupResponse < Struct.new(
      :security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_group
    #   An Input Security Group
    #   @return [Types::InputSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInputSecurityGroupResultModel AWS API Documentation
    #
    class CreateInputSecurityGroupResultModel < Struct.new(
      :security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] availability_zones
    #   A list of availability zones for the multiplex. You must specify
    #   exactly two.
    #   @return [Array<String>]
    #
    # @!attribute [rw] multiplex_settings
    #   Configuration for a multiplex event.
    #   @return [Types::MultiplexSettings]
    #
    # @!attribute [rw] name
    #   Name of multiplex.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   Unique request ID. This prevents retries from creating multiple resources. **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateMultiplex AWS API Documentation
    #
    class CreateMultiplex < Struct.new(
      :availability_zones,
      :multiplex_settings,
      :name,
      :request_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex_program_settings
    #   The settings for this multiplex program.
    #   @return [Types::MultiplexProgramSettings]
    #
    # @!attribute [rw] program_name
    #   Name of multiplex program.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   Unique request ID. This prevents retries from creating multiple resources. **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateMultiplexProgram AWS API Documentation
    #
    class CreateMultiplexProgram < Struct.new(
      :multiplex_program_settings,
      :program_name,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMultiplexProgramRequest
    #   data as a hash:
    #
    #       {
    #         multiplex_id: "__string", # required
    #         multiplex_program_settings: { # required
    #           preferred_channel_pipeline: "CURRENTLY_ACTIVE", # accepts CURRENTLY_ACTIVE, PIPELINE_0, PIPELINE_1
    #           program_number: 1, # required
    #           service_descriptor: {
    #             provider_name: "__stringMax256", # required
    #             service_name: "__stringMax256", # required
    #           },
    #           video_settings: {
    #             constant_bitrate: 1,
    #             statmux_settings: {
    #               maximum_bitrate: 1,
    #               minimum_bitrate: 1,
    #               priority: 1,
    #             },
    #           },
    #         },
    #         program_name: "__string", # required
    #         request_id: "__string", # required
    #       }
    #
    # @!attribute [rw] multiplex_id
    #   @return [String]
    #
    # @!attribute [rw] multiplex_program_settings
    #   Multiplex Program settings configuration.
    #   @return [Types::MultiplexProgramSettings]
    #
    # @!attribute [rw] program_name
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateMultiplexProgramRequest AWS API Documentation
    #
    class CreateMultiplexProgramRequest < Struct.new(
      :multiplex_id,
      :multiplex_program_settings,
      :program_name,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex_program
    #   The multiplex program object.
    #   @return [Types::MultiplexProgram]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateMultiplexProgramResponse AWS API Documentation
    #
    class CreateMultiplexProgramResponse < Struct.new(
      :multiplex_program)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex_program
    #   The newly created multiplex program.
    #   @return [Types::MultiplexProgram]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateMultiplexProgramResultModel AWS API Documentation
    #
    class CreateMultiplexProgramResultModel < Struct.new(
      :multiplex_program)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMultiplexRequest
    #   data as a hash:
    #
    #       {
    #         availability_zones: ["__string"], # required
    #         multiplex_settings: { # required
    #           maximum_video_buffer_delay_milliseconds: 1,
    #           transport_stream_bitrate: 1, # required
    #           transport_stream_id: 1, # required
    #           transport_stream_reserved_bitrate: 1,
    #         },
    #         name: "__string", # required
    #         request_id: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] availability_zones
    #   @return [Array<String>]
    #
    # @!attribute [rw] multiplex_settings
    #   Contains configuration for a Multiplex event
    #   @return [Types::MultiplexSettings]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateMultiplexRequest AWS API Documentation
    #
    class CreateMultiplexRequest < Struct.new(
      :availability_zones,
      :multiplex_settings,
      :name,
      :request_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex
    #   The multiplex object.
    #   @return [Types::Multiplex]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateMultiplexResponse AWS API Documentation
    #
    class CreateMultiplexResponse < Struct.new(
      :multiplex)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex
    #   The newly created multiplex.
    #   @return [Types::Multiplex]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateMultiplexResultModel AWS API Documentation
    #
    class CreateMultiplexResultModel < Struct.new(
      :multiplex)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateTagsRequest AWS API Documentation
    #
    class CreateTagsRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "__string", # required
    #       }
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteChannelRequest AWS API Documentation
    #
    class DeleteChannelRequest < Struct.new(
      :channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] cdi_input_specification
    #   @return [Types::CdiInputSpecification]
    #
    # @!attribute [rw] channel_class
    #   A standard channel has two encoding pipelines and a single pipeline
    #   channel only has one.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::OutputDestination>]
    #
    # @!attribute [rw] egress_endpoints
    #   @return [Array<Types::ChannelEgressEndpoint>]
    #
    # @!attribute [rw] encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] input_attachments
    #   @return [Array<Types::InputAttachment>]
    #
    # @!attribute [rw] input_specification
    #   @return [Types::InputSpecification]
    #
    # @!attribute [rw] log_level
    #   The log level the user wants for their channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] pipeline_details
    #   @return [Array<Types::PipelineDetail>]
    #
    # @!attribute [rw] pipelines_running_count
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteChannelResponse AWS API Documentation
    #
    class DeleteChannelResponse < Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :encoder_settings,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInputRequest
    #   data as a hash:
    #
    #       {
    #         input_id: "__string", # required
    #       }
    #
    # @!attribute [rw] input_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteInputRequest AWS API Documentation
    #
    class DeleteInputRequest < Struct.new(
      :input_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteInputResponse AWS API Documentation
    #
    class DeleteInputResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteInputSecurityGroupRequest
    #   data as a hash:
    #
    #       {
    #         input_security_group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] input_security_group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteInputSecurityGroupRequest AWS API Documentation
    #
    class DeleteInputSecurityGroupRequest < Struct.new(
      :input_security_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteInputSecurityGroupResponse AWS API Documentation
    #
    class DeleteInputSecurityGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteMultiplexProgramRequest
    #   data as a hash:
    #
    #       {
    #         multiplex_id: "__string", # required
    #         program_name: "__string", # required
    #       }
    #
    # @!attribute [rw] multiplex_id
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteMultiplexProgramRequest AWS API Documentation
    #
    class DeleteMultiplexProgramRequest < Struct.new(
      :multiplex_id,
      :program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @!attribute [rw] multiplex_program_settings
    #   Multiplex Program settings configuration.
    #   @return [Types::MultiplexProgramSettings]
    #
    # @!attribute [rw] packet_identifiers_map
    #   Packet identifiers map for a given Multiplex program.
    #   @return [Types::MultiplexProgramPacketIdentifiersMap]
    #
    # @!attribute [rw] pipeline_details
    #   @return [Array<Types::MultiplexProgramPipelineDetail>]
    #
    # @!attribute [rw] program_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteMultiplexProgramResponse AWS API Documentation
    #
    class DeleteMultiplexProgramResponse < Struct.new(
      :channel_id,
      :multiplex_program_settings,
      :packet_identifiers_map,
      :pipeline_details,
      :program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMultiplexRequest
    #   data as a hash:
    #
    #       {
    #         multiplex_id: "__string", # required
    #       }
    #
    # @!attribute [rw] multiplex_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteMultiplexRequest AWS API Documentation
    #
    class DeleteMultiplexRequest < Struct.new(
      :multiplex_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   @return [Array<String>]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::MultiplexOutputDestination>]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] multiplex_settings
    #   Contains configuration for a Multiplex event
    #   @return [Types::MultiplexSettings]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] pipelines_running_count
    #   @return [Integer]
    #
    # @!attribute [rw] program_count
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The current state of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteMultiplexResponse AWS API Documentation
    #
    class DeleteMultiplexResponse < Struct.new(
      :arn,
      :availability_zones,
      :destinations,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteReservationRequest
    #   data as a hash:
    #
    #       {
    #         reservation_id: "__string", # required
    #       }
    #
    # @!attribute [rw] reservation_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteReservationRequest AWS API Documentation
    #
    class DeleteReservationRequest < Struct.new(
      :reservation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] count
    #   @return [Integer]
    #
    # @!attribute [rw] currency_code
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   @return [Integer]
    #
    # @!attribute [rw] duration_units
    #   Units for duration, e.g. 'MONTHS'
    #   @return [String]
    #
    # @!attribute [rw] end
    #   @return [String]
    #
    # @!attribute [rw] fixed_price
    #   @return [Float]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] offering_description
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   Offering type, e.g. 'NO\_UPFRONT'
    #   @return [String]
    #
    # @!attribute [rw] region
    #   @return [String]
    #
    # @!attribute [rw] reservation_id
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   Resource configuration (codec, resolution, bitrate, ...)
    #   @return [Types::ReservationResourceSpecification]
    #
    # @!attribute [rw] start
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Current reservation state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] usage_price
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteReservationResponse AWS API Documentation
    #
    class DeleteReservationResponse < Struct.new(
      :arn,
      :count,
      :currency_code,
      :duration,
      :duration_units,
      :end,
      :fixed_price,
      :name,
      :offering_description,
      :offering_id,
      :offering_type,
      :region,
      :reservation_id,
      :resource_specification,
      :start,
      :state,
      :tags,
      :usage_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteScheduleRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "__string", # required
    #       }
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteScheduleRequest AWS API Documentation
    #
    class DeleteScheduleRequest < Struct.new(
      :channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteScheduleResponse AWS API Documentation
    #
    class DeleteScheduleResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteTagsRequest AWS API Documentation
    #
    class DeleteTagsRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "__string", # required
    #       }
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeChannelRequest AWS API Documentation
    #
    class DescribeChannelRequest < Struct.new(
      :channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] cdi_input_specification
    #   @return [Types::CdiInputSpecification]
    #
    # @!attribute [rw] channel_class
    #   A standard channel has two encoding pipelines and a single pipeline
    #   channel only has one.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::OutputDestination>]
    #
    # @!attribute [rw] egress_endpoints
    #   @return [Array<Types::ChannelEgressEndpoint>]
    #
    # @!attribute [rw] encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] input_attachments
    #   @return [Array<Types::InputAttachment>]
    #
    # @!attribute [rw] input_specification
    #   @return [Types::InputSpecification]
    #
    # @!attribute [rw] log_level
    #   The log level the user wants for their channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] pipeline_details
    #   @return [Array<Types::PipelineDetail>]
    #
    # @!attribute [rw] pipelines_running_count
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeChannelResponse AWS API Documentation
    #
    class DescribeChannelResponse < Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :encoder_settings,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInputDeviceRequest
    #   data as a hash:
    #
    #       {
    #         input_device_id: "__string", # required
    #       }
    #
    # @!attribute [rw] input_device_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputDeviceRequest AWS API Documentation
    #
    class DescribeInputDeviceRequest < Struct.new(
      :input_device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection between the input device and AWS.
    #   @return [String]
    #
    # @!attribute [rw] device_settings_sync_state
    #   The status of the action to synchronize the device configuration. If
    #   you change the configuration of the input device (for example, the
    #   maximum bitrate), MediaLive sends the new data to the device. The
    #   device might not update itself immediately. SYNCED means the device
    #   has updated its configuration. SYNCING means that it has not updated
    #   its configuration.
    #   @return [String]
    #
    # @!attribute [rw] hd_device_settings
    #   Settings that describe the active source from the input device, and
    #   the video characteristics of that source.
    #   @return [Types::InputDeviceHdSettings]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] network_settings
    #   The network settings for the input device.
    #   @return [Types::InputDeviceNetworkSettings]
    #
    # @!attribute [rw] serial_number
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the input device. For an AWS Elemental Link device that
    #   outputs resolutions up to 1080, choose "HD".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputDeviceResponse AWS API Documentation
    #
    class DescribeInputDeviceResponse < Struct.new(
      :arn,
      :connection_state,
      :device_settings_sync_state,
      :hd_device_settings,
      :id,
      :mac_address,
      :name,
      :network_settings,
      :serial_number,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInputDeviceThumbnailRequest
    #   data as a hash:
    #
    #       {
    #         input_device_id: "__string", # required
    #         accept: "image/jpeg", # required, accepts image/jpeg
    #       }
    #
    # @!attribute [rw] input_device_id
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputDeviceThumbnailRequest AWS API Documentation
    #
    class DescribeInputDeviceThumbnailRequest < Struct.new(
      :input_device_id,
      :accept)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   @return [IO]
    #
    # @!attribute [rw] content_type
    #   @return [String]
    #
    # @!attribute [rw] content_length
    #   @return [Integer]
    #
    # @!attribute [rw] etag
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputDeviceThumbnailResponse AWS API Documentation
    #
    class DescribeInputDeviceThumbnailResponse < Struct.new(
      :body,
      :content_type,
      :content_length,
      :etag,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInputRequest
    #   data as a hash:
    #
    #       {
    #         input_id: "__string", # required
    #       }
    #
    # @!attribute [rw] input_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputRequest AWS API Documentation
    #
    class DescribeInputRequest < Struct.new(
      :input_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] attached_channels
    #   @return [Array<String>]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::InputDestination>]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] input_class
    #   A standard input has two sources and a single pipeline input only
    #   has one.
    #   @return [String]
    #
    # @!attribute [rw] input_devices
    #   @return [Array<Types::InputDeviceSettings>]
    #
    # @!attribute [rw] input_source_type
    #   There are two types of input sources, static and dynamic. If an
    #   input source is dynamic you can change the source url of the input
    #   dynamically using an input switch action. However, the only input
    #   type to support a dynamic url at this time is MP4\_FILE. By default
    #   all input sources are static.
    #   @return [String]
    #
    # @!attribute [rw] media_connect_flows
    #   @return [Array<Types::MediaConnectFlow>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   @return [Array<String>]
    #
    # @!attribute [rw] sources
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputResponse AWS API Documentation
    #
    class DescribeInputResponse < Struct.new(
      :arn,
      :attached_channels,
      :destinations,
      :id,
      :input_class,
      :input_devices,
      :input_source_type,
      :media_connect_flows,
      :name,
      :role_arn,
      :security_groups,
      :sources,
      :state,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInputSecurityGroupRequest
    #   data as a hash:
    #
    #       {
    #         input_security_group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] input_security_group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputSecurityGroupRequest AWS API Documentation
    #
    class DescribeInputSecurityGroupRequest < Struct.new(
      :input_security_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] whitelist_rules
    #   @return [Array<Types::InputWhitelistRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputSecurityGroupResponse AWS API Documentation
    #
    class DescribeInputSecurityGroupResponse < Struct.new(
      :arn,
      :id,
      :inputs,
      :state,
      :tags,
      :whitelist_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMultiplexProgramRequest
    #   data as a hash:
    #
    #       {
    #         multiplex_id: "__string", # required
    #         program_name: "__string", # required
    #       }
    #
    # @!attribute [rw] multiplex_id
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeMultiplexProgramRequest AWS API Documentation
    #
    class DescribeMultiplexProgramRequest < Struct.new(
      :multiplex_id,
      :program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @!attribute [rw] multiplex_program_settings
    #   Multiplex Program settings configuration.
    #   @return [Types::MultiplexProgramSettings]
    #
    # @!attribute [rw] packet_identifiers_map
    #   Packet identifiers map for a given Multiplex program.
    #   @return [Types::MultiplexProgramPacketIdentifiersMap]
    #
    # @!attribute [rw] pipeline_details
    #   @return [Array<Types::MultiplexProgramPipelineDetail>]
    #
    # @!attribute [rw] program_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeMultiplexProgramResponse AWS API Documentation
    #
    class DescribeMultiplexProgramResponse < Struct.new(
      :channel_id,
      :multiplex_program_settings,
      :packet_identifiers_map,
      :pipeline_details,
      :program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMultiplexRequest
    #   data as a hash:
    #
    #       {
    #         multiplex_id: "__string", # required
    #       }
    #
    # @!attribute [rw] multiplex_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeMultiplexRequest AWS API Documentation
    #
    class DescribeMultiplexRequest < Struct.new(
      :multiplex_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   @return [Array<String>]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::MultiplexOutputDestination>]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] multiplex_settings
    #   Contains configuration for a Multiplex event
    #   @return [Types::MultiplexSettings]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] pipelines_running_count
    #   @return [Integer]
    #
    # @!attribute [rw] program_count
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The current state of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeMultiplexResponse AWS API Documentation
    #
    class DescribeMultiplexResponse < Struct.new(
      :arn,
      :availability_zones,
      :destinations,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeOfferingRequest
    #   data as a hash:
    #
    #       {
    #         offering_id: "__string", # required
    #       }
    #
    # @!attribute [rw] offering_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeOfferingRequest AWS API Documentation
    #
    class DescribeOfferingRequest < Struct.new(
      :offering_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   @return [Integer]
    #
    # @!attribute [rw] duration_units
    #   Units for duration, e.g. 'MONTHS'
    #   @return [String]
    #
    # @!attribute [rw] fixed_price
    #   @return [Float]
    #
    # @!attribute [rw] offering_description
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   Offering type, e.g. 'NO\_UPFRONT'
    #   @return [String]
    #
    # @!attribute [rw] region
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   Resource configuration (codec, resolution, bitrate, ...)
    #   @return [Types::ReservationResourceSpecification]
    #
    # @!attribute [rw] usage_price
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeOfferingResponse AWS API Documentation
    #
    class DescribeOfferingResponse < Struct.new(
      :arn,
      :currency_code,
      :duration,
      :duration_units,
      :fixed_price,
      :offering_description,
      :offering_id,
      :offering_type,
      :region,
      :resource_specification,
      :usage_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReservationRequest
    #   data as a hash:
    #
    #       {
    #         reservation_id: "__string", # required
    #       }
    #
    # @!attribute [rw] reservation_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeReservationRequest AWS API Documentation
    #
    class DescribeReservationRequest < Struct.new(
      :reservation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] count
    #   @return [Integer]
    #
    # @!attribute [rw] currency_code
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   @return [Integer]
    #
    # @!attribute [rw] duration_units
    #   Units for duration, e.g. 'MONTHS'
    #   @return [String]
    #
    # @!attribute [rw] end
    #   @return [String]
    #
    # @!attribute [rw] fixed_price
    #   @return [Float]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] offering_description
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   Offering type, e.g. 'NO\_UPFRONT'
    #   @return [String]
    #
    # @!attribute [rw] region
    #   @return [String]
    #
    # @!attribute [rw] reservation_id
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   Resource configuration (codec, resolution, bitrate, ...)
    #   @return [Types::ReservationResourceSpecification]
    #
    # @!attribute [rw] start
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Current reservation state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] usage_price
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeReservationResponse AWS API Documentation
    #
    class DescribeReservationResponse < Struct.new(
      :arn,
      :count,
      :currency_code,
      :duration,
      :duration_units,
      :end,
      :fixed_price,
      :name,
      :offering_description,
      :offering_id,
      :offering_type,
      :region,
      :reservation_id,
      :resource_specification,
      :start,
      :state,
      :tags,
      :usage_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScheduleRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeScheduleRequest AWS API Documentation
    #
    class DescribeScheduleRequest < Struct.new(
      :channel_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] schedule_actions
    #   @return [Array<Types::ScheduleAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeScheduleResponse AWS API Documentation
    #
    class DescribeScheduleResponse < Struct.new(
      :next_token,
      :schedule_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # DVB Network Information Table (NIT)
    #
    # @note When making an API call, you may pass DvbNitSettings
    #   data as a hash:
    #
    #       {
    #         network_id: 1, # required
    #         network_name: "__stringMin1Max256", # required
    #         rep_interval: 1,
    #       }
    #
    # @!attribute [rw] network_id
    #   The numeric value placed in the Network Information Table (NIT).
    #   @return [Integer]
    #
    # @!attribute [rw] network_name
    #   The network name text placed in the networkNameDescriptor inside the
    #   Network Information Table. Maximum length is 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] rep_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DvbNitSettings AWS API Documentation
    #
    class DvbNitSettings < Struct.new(
      :network_id,
      :network_name,
      :rep_interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # DVB Service Description Table (SDT)
    #
    # @note When making an API call, you may pass DvbSdtSettings
    #   data as a hash:
    #
    #       {
    #         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #         rep_interval: 1,
    #         service_name: "__stringMin1Max256",
    #         service_provider_name: "__stringMin1Max256",
    #       }
    #
    # @!attribute [rw] output_sdt
    #   Selects method of inserting SDT information into output stream. The
    #   sdtFollow setting copies SDT information from input stream to output
    #   stream. The sdtFollowIfPresent setting copies SDT information from
    #   input stream to output stream if SDT information is present in the
    #   input, otherwise it will fall back on the user-defined values. The
    #   sdtManual setting means user will enter the SDT information. The
    #   sdtNone setting means output stream will not contain SDT
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] rep_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] service_name
    #   The service name placed in the serviceDescriptor in the Service
    #   Description Table. Maximum length is 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] service_provider_name
    #   The service provider name placed in the serviceDescriptor in the
    #   Service Description Table. Maximum length is 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DvbSdtSettings AWS API Documentation
    #
    class DvbSdtSettings < Struct.new(
      :output_sdt,
      :rep_interval,
      :service_name,
      :service_provider_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dvb Sub Destination Settings
    #
    # @note When making an API call, you may pass DvbSubDestinationSettings
    #   data as a hash:
    #
    #       {
    #         alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #         background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #         background_opacity: 1,
    #         font: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #         font_opacity: 1,
    #         font_resolution: 1,
    #         font_size: "__string",
    #         outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #         outline_size: 1,
    #         shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #         shadow_opacity: 1,
    #         shadow_x_offset: 1,
    #         shadow_y_offset: 1,
    #         teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #         x_position: 1,
    #         y_position: 1,
    #       }
    #
    # @!attribute [rw] alignment
    #   If no explicit xPosition or yPosition is provided, setting alignment
    #   to centered will place the captions at the bottom center of the
    #   output. Similarly, setting a left alignment will align captions to
    #   the bottom left of the output. If x and y positions are given in
    #   conjunction with the alignment parameter, the font will be justified
    #   (either left or centered) relative to those coordinates. Selecting
    #   "smart" justification will left-justify live subtitles and
    #   center-justify pre-recorded subtitles. This option is not valid for
    #   source captions that are STL or 608/embedded. These source settings
    #   are already pre-defined by the caption stream. All burn-in and
    #   DVB-Sub font settings must match.
    #   @return [String]
    #
    # @!attribute [rw] background_color
    #   Specifies the color of the rectangle behind the captions. All
    #   burn-in and DVB-Sub font settings must match.
    #   @return [String]
    #
    # @!attribute [rw] background_opacity
    #   Specifies the opacity of the background rectangle. 255 is opaque; 0
    #   is transparent. Leaving this parameter blank is equivalent to
    #   setting it to 0 (transparent). All burn-in and DVB-Sub font settings
    #   must match.
    #   @return [Integer]
    #
    # @!attribute [rw] font
    #   External font file used for caption burn-in. File extension must be
    #   'ttf' or 'tte'. Although the user can select output fonts for
    #   many different types of input captions, embedded, STL and teletext
    #   sources use a strict grid system. Using external fonts with these
    #   caption sources could cause unexpected display of proportional
    #   fonts. All burn-in and DVB-Sub font settings must match.
    #   @return [Types::InputLocation]
    #
    # @!attribute [rw] font_color
    #   Specifies the color of the burned-in captions. This option is not
    #   valid for source captions that are STL, 608/embedded or teletext.
    #   These source settings are already pre-defined by the caption stream.
    #   All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    #
    # @!attribute [rw] font_opacity
    #   Specifies the opacity of the burned-in captions. 255 is opaque; 0 is
    #   transparent. All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] font_resolution
    #   Font resolution in DPI (dots per inch); default is 96 dpi. All
    #   burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] font_size
    #   When set to auto fontSize will scale depending on the size of the
    #   output. Giving a positive integer will specify the exact font size
    #   in points. All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    #
    # @!attribute [rw] outline_color
    #   Specifies font outline color. This option is not valid for source
    #   captions that are either 608/embedded or teletext. These source
    #   settings are already pre-defined by the caption stream. All burn-in
    #   and DVB-Sub font settings must match.
    #   @return [String]
    #
    # @!attribute [rw] outline_size
    #   Specifies font outline size in pixels. This option is not valid for
    #   source captions that are either 608/embedded or teletext. These
    #   source settings are already pre-defined by the caption stream. All
    #   burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] shadow_color
    #   Specifies the color of the shadow cast by the captions. All burn-in
    #   and DVB-Sub font settings must match.
    #   @return [String]
    #
    # @!attribute [rw] shadow_opacity
    #   Specifies the opacity of the shadow. 255 is opaque; 0 is
    #   transparent. Leaving this parameter blank is equivalent to setting
    #   it to 0 (transparent). All burn-in and DVB-Sub font settings must
    #   match.
    #   @return [Integer]
    #
    # @!attribute [rw] shadow_x_offset
    #   Specifies the horizontal offset of the shadow relative to the
    #   captions in pixels. A value of -2 would result in a shadow offset 2
    #   pixels to the left. All burn-in and DVB-Sub font settings must
    #   match.
    #   @return [Integer]
    #
    # @!attribute [rw] shadow_y_offset
    #   Specifies the vertical offset of the shadow relative to the captions
    #   in pixels. A value of -2 would result in a shadow offset 2 pixels
    #   above the text. All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] teletext_grid_control
    #   Controls whether a fixed grid size will be used to generate the
    #   output subtitles bitmap. Only applicable for Teletext inputs and
    #   DVB-Sub/Burn-in outputs.
    #   @return [String]
    #
    # @!attribute [rw] x_position
    #   Specifies the horizontal position of the caption relative to the
    #   left side of the output in pixels. A value of 10 would result in the
    #   captions starting 10 pixels from the left of the output. If no
    #   explicit xPosition is provided, the horizontal caption position will
    #   be determined by the alignment parameter. This option is not valid
    #   for source captions that are STL, 608/embedded or teletext. These
    #   source settings are already pre-defined by the caption stream. All
    #   burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] y_position
    #   Specifies the vertical position of the caption relative to the top
    #   of the output in pixels. A value of 10 would result in the captions
    #   starting 10 pixels from the top of the output. If no explicit
    #   yPosition is provided, the caption will be positioned towards the
    #   bottom of the output. This option is not valid for source captions
    #   that are STL, 608/embedded or teletext. These source settings are
    #   already pre-defined by the caption stream. All burn-in and DVB-Sub
    #   font settings must match.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DvbSubDestinationSettings AWS API Documentation
    #
    class DvbSubDestinationSettings < Struct.new(
      :alignment,
      :background_color,
      :background_opacity,
      :font,
      :font_color,
      :font_opacity,
      :font_resolution,
      :font_size,
      :outline_color,
      :outline_size,
      :shadow_color,
      :shadow_opacity,
      :shadow_x_offset,
      :shadow_y_offset,
      :teletext_grid_control,
      :x_position,
      :y_position)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dvb Sub Source Settings
    #
    # @note When making an API call, you may pass DvbSubSourceSettings
    #   data as a hash:
    #
    #       {
    #         pid: 1,
    #       }
    #
    # @!attribute [rw] pid
    #   When using DVB-Sub with Burn-In or SMPTE-TT, use this PID for the
    #   source content. Unused for DVB-Sub passthrough. All DVB-Sub content
    #   is passed through, regardless of selectors.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DvbSubSourceSettings AWS API Documentation
    #
    class DvbSubSourceSettings < Struct.new(
      :pid)
      SENSITIVE = []
      include Aws::Structure
    end

    # DVB Time and Date Table (SDT)
    #
    # @note When making an API call, you may pass DvbTdtSettings
    #   data as a hash:
    #
    #       {
    #         rep_interval: 1,
    #       }
    #
    # @!attribute [rw] rep_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DvbTdtSettings AWS API Documentation
    #
    class DvbTdtSettings < Struct.new(
      :rep_interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # Eac3 Settings
    #
    # @note When making an API call, you may pass Eac3Settings
    #   data as a hash:
    #
    #       {
    #         attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #         bitrate: 1.0,
    #         bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #         coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #         dc_filter: "DISABLED", # accepts DISABLED, ENABLED
    #         dialnorm: 1,
    #         drc_line: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #         drc_rf: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #         lfe_control: "LFE", # accepts LFE, NO_LFE
    #         lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #         lo_ro_center_mix_level: 1.0,
    #         lo_ro_surround_mix_level: 1.0,
    #         lt_rt_center_mix_level: 1.0,
    #         lt_rt_surround_mix_level: 1.0,
    #         metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #         passthrough_control: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, WHEN_POSSIBLE
    #         phase_control: "NO_SHIFT", # accepts NO_SHIFT, SHIFT_90_DEGREES
    #         stereo_downmix: "DPL2", # accepts DPL2, LO_RO, LT_RT, NOT_INDICATED
    #         surround_ex_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #         surround_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #       }
    #
    # @!attribute [rw] attenuation_control
    #   When set to attenuate3Db, applies a 3 dB attenuation to the surround
    #   channels. Only used for 3/2 coding mode.
    #   @return [String]
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second. Valid bitrates depend on the coding
    #   mode.
    #   @return [Float]
    #
    # @!attribute [rw] bitstream_mode
    #   Specifies the bitstream mode (bsmod) for the emitted E-AC-3 stream.
    #   See ATSC A/52-2012 (Annex E) for background on these values.
    #   @return [String]
    #
    # @!attribute [rw] coding_mode
    #   Dolby Digital Plus coding mode. Determines number of channels.
    #   @return [String]
    #
    # @!attribute [rw] dc_filter
    #   When set to enabled, activates a DC highpass filter for all input
    #   channels.
    #   @return [String]
    #
    # @!attribute [rw] dialnorm
    #   Sets the dialnorm for the output. If blank and input audio is Dolby
    #   Digital Plus, dialnorm will be passed through.
    #   @return [Integer]
    #
    # @!attribute [rw] drc_line
    #   Sets the Dolby dynamic range compression profile.
    #   @return [String]
    #
    # @!attribute [rw] drc_rf
    #   Sets the profile for heavy Dolby dynamic range compression, ensures
    #   that the instantaneous signal peaks do not exceed specified levels.
    #   @return [String]
    #
    # @!attribute [rw] lfe_control
    #   When encoding 3/2 audio, setting to lfe enables the LFE channel
    #   @return [String]
    #
    # @!attribute [rw] lfe_filter
    #   When set to enabled, applies a 120Hz lowpass filter to the LFE
    #   channel prior to encoding. Only valid with codingMode32 coding mode.
    #   @return [String]
    #
    # @!attribute [rw] lo_ro_center_mix_level
    #   Left only/Right only center mix level. Only used for 3/2 coding
    #   mode.
    #   @return [Float]
    #
    # @!attribute [rw] lo_ro_surround_mix_level
    #   Left only/Right only surround mix level. Only used for 3/2 coding
    #   mode.
    #   @return [Float]
    #
    # @!attribute [rw] lt_rt_center_mix_level
    #   Left total/Right total center mix level. Only used for 3/2 coding
    #   mode.
    #   @return [Float]
    #
    # @!attribute [rw] lt_rt_surround_mix_level
    #   Left total/Right total surround mix level. Only used for 3/2 coding
    #   mode.
    #   @return [Float]
    #
    # @!attribute [rw] metadata_control
    #   When set to followInput, encoder metadata will be sourced from the
    #   DD, DD+, or DolbyE decoder that supplied this audio data. If audio
    #   was not supplied from one of these streams, then the static metadata
    #   settings will be used.
    #   @return [String]
    #
    # @!attribute [rw] passthrough_control
    #   When set to whenPossible, input DD+ audio will be passed through if
    #   it is present on the input. This detection is dynamic over the life
    #   of the transcode. Inputs that alternate between DD+ and non-DD+
    #   content will have a consistent DD+ output as the system alternates
    #   between passthrough and encoding.
    #   @return [String]
    #
    # @!attribute [rw] phase_control
    #   When set to shift90Degrees, applies a 90-degree phase shift to the
    #   surround channels. Only used for 3/2 coding mode.
    #   @return [String]
    #
    # @!attribute [rw] stereo_downmix
    #   Stereo downmix preference. Only used for 3/2 coding mode.
    #   @return [String]
    #
    # @!attribute [rw] surround_ex_mode
    #   When encoding 3/2 audio, sets whether an extra center back surround
    #   channel is matrix encoded into the left and right surround channels.
    #   @return [String]
    #
    # @!attribute [rw] surround_mode
    #   When encoding 2/0 audio, sets whether Dolby Surround is matrix
    #   encoded into the two channels.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Eac3Settings AWS API Documentation
    #
    class Eac3Settings < Struct.new(
      :attenuation_control,
      :bitrate,
      :bitstream_mode,
      :coding_mode,
      :dc_filter,
      :dialnorm,
      :drc_line,
      :drc_rf,
      :lfe_control,
      :lfe_filter,
      :lo_ro_center_mix_level,
      :lo_ro_surround_mix_level,
      :lt_rt_center_mix_level,
      :lt_rt_surround_mix_level,
      :metadata_control,
      :passthrough_control,
      :phase_control,
      :stereo_downmix,
      :surround_ex_mode,
      :surround_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ebu Tt DDestination Settings
    #
    # @note When making an API call, you may pass EbuTtDDestinationSettings
    #   data as a hash:
    #
    #       {
    #         fill_line_gap: "DISABLED", # accepts DISABLED, ENABLED
    #         font_family: "__string",
    #         style_control: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #       }
    #
    # @!attribute [rw] fill_line_gap
    #   Specifies how to handle the gap between the lines (in multi-line
    #   captions). - enabled: Fill with the captions background color (as
    #   specified in the input captions). - disabled: Leave the gap
    #   unfilled.
    #   @return [String]
    #
    # @!attribute [rw] font_family
    #   Specifies the font family to include in the font data attached to
    #   the EBU-TT captions. Valid only if styleControl is set to include.
    #   If you leave this field empty, the font family is set to
    #   "monospaced". (If styleControl is set to exclude, the font family
    #   is always set to "monospaced".) You specify only the font family.
    #   All other style information (color, bold, position and so on) is
    #   copied from the input captions. The size is always set to 100% to
    #   allow the downstream player to choose the size. - Enter a list of
    #   font families, as a comma-separated list of font names, in order of
    #   preference. The name can be a font family (such as “Arial”), or a
    #   generic font family (such as “serif”), or “default” (to let the
    #   downstream player choose the font). - Leave blank to set the family
    #   to “monospace”.
    #   @return [String]
    #
    # @!attribute [rw] style_control
    #   Specifies the style information (font color, font position, and so
    #   on) to include in the font data that is attached to the EBU-TT
    #   captions. - include: Take the style information (font color, font
    #   position, and so on) from the source captions and include that
    #   information in the font data attached to the EBU-TT captions. This
    #   option is valid only if the source captions are Embedded or
    #   Teletext. - exclude: In the font data attached to the EBU-TT
    #   captions, set the font family to "monospaced". Do not include any
    #   other style information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/EbuTtDDestinationSettings AWS API Documentation
    #
    class EbuTtDDestinationSettings < Struct.new(
      :fill_line_gap,
      :font_family,
      :style_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # Embedded Destination Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/EmbeddedDestinationSettings AWS API Documentation
    #
    class EmbeddedDestinationSettings < Aws::EmptyStructure; end

    # Embedded Plus Scte20 Destination Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/EmbeddedPlusScte20DestinationSettings AWS API Documentation
    #
    class EmbeddedPlusScte20DestinationSettings < Aws::EmptyStructure; end

    # Embedded Source Settings
    #
    # @note When making an API call, you may pass EmbeddedSourceSettings
    #   data as a hash:
    #
    #       {
    #         convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #         scte_20_detection: "AUTO", # accepts AUTO, OFF
    #         source_608_channel_number: 1,
    #         source_608_track_number: 1,
    #       }
    #
    # @!attribute [rw] convert_608_to_708
    #   If upconvert, 608 data is both passed through via the "608
    #   compatibility bytes" fields of the 708 wrapper as well as
    #   translated into 708. 708 data present in the source content will be
    #   discarded.
    #   @return [String]
    #
    # @!attribute [rw] scte_20_detection
    #   Set to "auto" to handle streams with intermittent and/or
    #   non-aligned SCTE-20 and Embedded captions.
    #   @return [String]
    #
    # @!attribute [rw] source_608_channel_number
    #   Specifies the 608/708 channel number within the video track from
    #   which to extract captions. Unused for passthrough.
    #   @return [Integer]
    #
    # @!attribute [rw] source_608_track_number
    #   This field is unused and deprecated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/EmbeddedSourceSettings AWS API Documentation
    #
    class EmbeddedSourceSettings < Struct.new(
      :convert_608_to_708,
      :scte_20_detection,
      :source_608_channel_number,
      :source_608_track_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Empty AWS API Documentation
    #
    class Empty < Aws::EmptyStructure; end

    # Encoder Settings
    #
    # @note When making an API call, you may pass EncoderSettings
    #   data as a hash:
    #
    #       {
    #         audio_descriptions: [ # required
    #           {
    #             audio_normalization_settings: {
    #               algorithm: "ITU_1770_1", # accepts ITU_1770_1, ITU_1770_2
    #               algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO
    #               target_lkfs: 1.0,
    #             },
    #             audio_selector_name: "__string", # required
    #             audio_type: "CLEAN_EFFECTS", # accepts CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY
    #             audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             codec_settings: {
    #               aac_settings: {
    #                 bitrate: 1.0,
    #                 coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                 input_type: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                 profile: "HEV1", # accepts HEV1, HEV2, LC
    #                 rate_control_mode: "CBR", # accepts CBR, VBR
    #                 raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                 sample_rate: 1.0,
    #                 spec: "MPEG2", # accepts MPEG2, MPEG4
    #                 vbr_quality: "HIGH", # accepts HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW
    #               },
    #               ac_3_settings: {
    #                 bitrate: 1.0,
    #                 bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                 coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                 dialnorm: 1,
    #                 drc_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                 lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #                 metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               },
    #               eac_3_settings: {
    #                 attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                 bitrate: 1.0,
    #                 bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                 coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                 dc_filter: "DISABLED", # accepts DISABLED, ENABLED
    #                 dialnorm: 1,
    #                 drc_line: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #                 drc_rf: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #                 lfe_control: "LFE", # accepts LFE, NO_LFE
    #                 lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #                 lo_ro_center_mix_level: 1.0,
    #                 lo_ro_surround_mix_level: 1.0,
    #                 lt_rt_center_mix_level: 1.0,
    #                 lt_rt_surround_mix_level: 1.0,
    #                 metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                 passthrough_control: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, WHEN_POSSIBLE
    #                 phase_control: "NO_SHIFT", # accepts NO_SHIFT, SHIFT_90_DEGREES
    #                 stereo_downmix: "DPL2", # accepts DPL2, LO_RO, LT_RT, NOT_INDICATED
    #                 surround_ex_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #                 surround_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #               },
    #               mp_2_settings: {
    #                 bitrate: 1.0,
    #                 coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0
    #                 sample_rate: 1.0,
    #               },
    #               pass_through_settings: {
    #               },
    #               wav_settings: {
    #                 bit_depth: 1.0,
    #                 coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_4_0, CODING_MODE_8_0
    #                 sample_rate: 1.0,
    #               },
    #             },
    #             language_code: "__stringMin1Max35",
    #             language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             name: "__string", # required
    #             remix_settings: {
    #               channel_mappings: [ # required
    #                 {
    #                   input_channel_levels: [ # required
    #                     {
    #                       gain: 1, # required
    #                       input_channel: 1, # required
    #                     },
    #                   ],
    #                   output_channel: 1, # required
    #                 },
    #               ],
    #               channels_in: 1,
    #               channels_out: 1,
    #             },
    #             stream_name: "__string",
    #           },
    #         ],
    #         avail_blanking: {
    #           avail_blanking_image: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           state: "DISABLED", # accepts DISABLED, ENABLED
    #         },
    #         avail_configuration: {
    #           avail_settings: {
    #             scte_35_splice_insert: {
    #               ad_avail_offset: 1,
    #               no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #               web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             },
    #             scte_35_time_signal_apos: {
    #               ad_avail_offset: 1,
    #               no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #               web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             },
    #           },
    #         },
    #         blackout_slate: {
    #           blackout_slate_image: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           network_end_blackout: "DISABLED", # accepts DISABLED, ENABLED
    #           network_end_blackout_image: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           network_id: "__stringMin34Max34",
    #           state: "DISABLED", # accepts DISABLED, ENABLED
    #         },
    #         caption_descriptions: [
    #           {
    #             caption_selector_name: "__string", # required
    #             destination_settings: {
    #               arib_destination_settings: {
    #               },
    #               burn_in_destination_settings: {
    #                 alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #                 background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                 background_opacity: 1,
    #                 font: {
    #                   password_param: "__string",
    #                   uri: "__string", # required
    #                   username: "__string",
    #                 },
    #                 font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                 font_opacity: 1,
    #                 font_resolution: 1,
    #                 font_size: "__string",
    #                 outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                 outline_size: 1,
    #                 shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                 shadow_opacity: 1,
    #                 shadow_x_offset: 1,
    #                 shadow_y_offset: 1,
    #                 teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #                 x_position: 1,
    #                 y_position: 1,
    #               },
    #               dvb_sub_destination_settings: {
    #                 alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #                 background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                 background_opacity: 1,
    #                 font: {
    #                   password_param: "__string",
    #                   uri: "__string", # required
    #                   username: "__string",
    #                 },
    #                 font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                 font_opacity: 1,
    #                 font_resolution: 1,
    #                 font_size: "__string",
    #                 outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                 outline_size: 1,
    #                 shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                 shadow_opacity: 1,
    #                 shadow_x_offset: 1,
    #                 shadow_y_offset: 1,
    #                 teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #                 x_position: 1,
    #                 y_position: 1,
    #               },
    #               ebu_tt_d_destination_settings: {
    #                 fill_line_gap: "DISABLED", # accepts DISABLED, ENABLED
    #                 font_family: "__string",
    #                 style_control: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               },
    #               embedded_destination_settings: {
    #               },
    #               embedded_plus_scte_20_destination_settings: {
    #               },
    #               rtmp_caption_info_destination_settings: {
    #               },
    #               scte_20_plus_embedded_destination_settings: {
    #               },
    #               scte_27_destination_settings: {
    #               },
    #               smpte_tt_destination_settings: {
    #               },
    #               teletext_destination_settings: {
    #               },
    #               ttml_destination_settings: {
    #                 style_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED
    #               },
    #               webvtt_destination_settings: {
    #               },
    #             },
    #             language_code: "__string",
    #             language_description: "__string",
    #             name: "__string", # required
    #           },
    #         ],
    #         feature_activations: {
    #           input_prepare_schedule_actions: "DISABLED", # accepts DISABLED, ENABLED
    #         },
    #         global_configuration: {
    #           initial_audio_gain: 1,
    #           input_end_action: "NONE", # accepts NONE, SWITCH_AND_LOOP_INPUTS
    #           input_loss_behavior: {
    #             black_frame_msec: 1,
    #             input_loss_image_color: "__stringMin6Max6",
    #             input_loss_image_slate: {
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             input_loss_image_type: "COLOR", # accepts COLOR, SLATE
    #             repeat_frame_msec: 1,
    #           },
    #           output_locking_mode: "EPOCH_LOCKING", # accepts EPOCH_LOCKING, PIPELINE_LOCKING
    #           output_timing_source: "INPUT_CLOCK", # accepts INPUT_CLOCK, SYSTEM_CLOCK
    #           support_low_framerate_inputs: "DISABLED", # accepts DISABLED, ENABLED
    #         },
    #         nielsen_configuration: {
    #           distributor_id: "__string",
    #           nielsen_pcm_to_id_3_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #         },
    #         output_groups: [ # required
    #           {
    #             name: "__stringMax32",
    #             output_group_settings: { # required
    #               archive_group_settings: {
    #                 destination: { # required
    #                   destination_ref_id: "__string",
    #                 },
    #                 rollover_interval: 1,
    #               },
    #               frame_capture_group_settings: {
    #                 destination: { # required
    #                   destination_ref_id: "__string",
    #                 },
    #               },
    #               hls_group_settings: {
    #                 ad_markers: ["ADOBE"], # accepts ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
    #                 base_url_content: "__string",
    #                 base_url_content_1: "__string",
    #                 base_url_manifest: "__string",
    #                 base_url_manifest_1: "__string",
    #                 caption_language_mappings: [
    #                   {
    #                     caption_channel: 1, # required
    #                     language_code: "__stringMin3Max3", # required
    #                     language_description: "__stringMin1", # required
    #                   },
    #                 ],
    #                 caption_language_setting: "INSERT", # accepts INSERT, NONE, OMIT
    #                 client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                 codec_specification: "RFC_4281", # accepts RFC_4281, RFC_6381
    #                 constant_iv: "__stringMin32Max32",
    #                 destination: { # required
    #                   destination_ref_id: "__string",
    #                 },
    #                 directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #                 encryption_type: "AES128", # accepts AES128, SAMPLE_AES
    #                 hls_cdn_settings: {
    #                   hls_akamai_settings: {
    #                     connection_retry_interval: 1,
    #                     filecache_duration: 1,
    #                     http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                     num_retries: 1,
    #                     restart_delay: 1,
    #                     salt: "__string",
    #                     token: "__string",
    #                   },
    #                   hls_basic_put_settings: {
    #                     connection_retry_interval: 1,
    #                     filecache_duration: 1,
    #                     num_retries: 1,
    #                     restart_delay: 1,
    #                   },
    #                   hls_media_store_settings: {
    #                     connection_retry_interval: 1,
    #                     filecache_duration: 1,
    #                     media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #                     num_retries: 1,
    #                     restart_delay: 1,
    #                   },
    #                   hls_webdav_settings: {
    #                     connection_retry_interval: 1,
    #                     filecache_duration: 1,
    #                     http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                     num_retries: 1,
    #                     restart_delay: 1,
    #                   },
    #                 },
    #                 hls_id_3_segment_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #                 i_frame_only_playlists: "DISABLED", # accepts DISABLED, STANDARD
    #                 index_n_segments: 1,
    #                 input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #                 iv_in_manifest: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                 iv_source: "EXPLICIT", # accepts EXPLICIT, FOLLOWS_SEGMENT_NUMBER
    #                 keep_segments: 1,
    #                 key_format: "__string",
    #                 key_format_versions: "__string",
    #                 key_provider_settings: {
    #                   static_key_settings: {
    #                     key_provider_server: {
    #                       password_param: "__string",
    #                       uri: "__string", # required
    #                       username: "__string",
    #                     },
    #                     static_key_value: "__stringMin32Max32", # required
    #                   },
    #                 },
    #                 manifest_compression: "GZIP", # accepts GZIP, NONE
    #                 manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                 min_segment_length: 1,
    #                 mode: "LIVE", # accepts LIVE, VOD
    #                 output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY, VARIANT_MANIFESTS_AND_SEGMENTS
    #                 program_date_time: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                 program_date_time_period: 1,
    #                 redundant_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #                 segment_length: 1,
    #                 segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #                 segments_per_subdirectory: 1,
    #                 stream_inf_resolution: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                 timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #                 timed_metadata_id_3_period: 1,
    #                 timestamp_delta_milliseconds: 1,
    #                 ts_file_mode: "SEGMENTED_FILES", # accepts SEGMENTED_FILES, SINGLE_FILE
    #               },
    #               media_package_group_settings: {
    #                 destination: { # required
    #                   destination_ref_id: "__string",
    #                 },
    #               },
    #               ms_smooth_group_settings: {
    #                 acquisition_point_id: "__string",
    #                 audio_only_timecode_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED_CLOCK
    #                 certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #                 connection_retry_interval: 1,
    #                 destination: { # required
    #                   destination_ref_id: "__string",
    #                 },
    #                 event_id: "__string",
    #                 event_id_mode: "NO_EVENT_ID", # accepts NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP
    #                 event_stop_behavior: "NONE", # accepts NONE, SEND_EOS
    #                 filecache_duration: 1,
    #                 fragment_length: 1,
    #                 input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #                 num_retries: 1,
    #                 restart_delay: 1,
    #                 segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #                 send_delay_ms: 1,
    #                 sparse_track_type: "NONE", # accepts NONE, SCTE_35, SCTE_35_WITHOUT_SEGMENTATION
    #                 stream_manifest_behavior: "DO_NOT_SEND", # accepts DO_NOT_SEND, SEND
    #                 timestamp_offset: "__string",
    #                 timestamp_offset_mode: "USE_CONFIGURED_OFFSET", # accepts USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE
    #               },
    #               multiplex_group_settings: {
    #               },
    #               rtmp_group_settings: {
    #                 authentication_scheme: "AKAMAI", # accepts AKAMAI, COMMON
    #                 cache_full_behavior: "DISCONNECT_IMMEDIATELY", # accepts DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER
    #                 cache_length: 1,
    #                 caption_data: "ALL", # accepts ALL, FIELD1_608, FIELD1_AND_FIELD2_608
    #                 input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #                 restart_delay: 1,
    #               },
    #               udp_group_settings: {
    #                 input_loss_action: "DROP_PROGRAM", # accepts DROP_PROGRAM, DROP_TS, EMIT_PROGRAM
    #                 timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #                 timed_metadata_id_3_period: 1,
    #               },
    #             },
    #             outputs: [ # required
    #               {
    #                 audio_description_names: ["__string"],
    #                 caption_description_names: ["__string"],
    #                 output_name: "__stringMin1Max255",
    #                 output_settings: { # required
    #                   archive_output_settings: {
    #                     container_settings: { # required
    #                       m2ts_settings: {
    #                         absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                         arib: "DISABLED", # accepts DISABLED, ENABLED
    #                         arib_captions_pid: "__string",
    #                         arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                         audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                         audio_frames_per_pes: 1,
    #                         audio_pids: "__string",
    #                         audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                         bitrate: 1,
    #                         buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                         cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                         dvb_nit_settings: {
    #                           network_id: 1, # required
    #                           network_name: "__stringMin1Max256", # required
    #                           rep_interval: 1,
    #                         },
    #                         dvb_sdt_settings: {
    #                           output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                           rep_interval: 1,
    #                           service_name: "__stringMin1Max256",
    #                           service_provider_name: "__stringMin1Max256",
    #                         },
    #                         dvb_sub_pids: "__string",
    #                         dvb_tdt_settings: {
    #                           rep_interval: 1,
    #                         },
    #                         dvb_teletext_pid: "__string",
    #                         ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                         ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                         ebp_lookahead_ms: 1,
    #                         ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                         ecm_pid: "__string",
    #                         es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                         etv_platform_pid: "__string",
    #                         etv_signal_pid: "__string",
    #                         fragment_time: 1.0,
    #                         klv: "NONE", # accepts NONE, PASSTHROUGH
    #                         klv_data_pids: "__string",
    #                         nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         null_packet_bitrate: 1.0,
    #                         pat_interval: 1,
    #                         pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                         pcr_period: 1,
    #                         pcr_pid: "__string",
    #                         pmt_interval: 1,
    #                         pmt_pid: "__string",
    #                         program_num: 1,
    #                         rate_mode: "CBR", # accepts CBR, VBR
    #                         scte_27_pids: "__string",
    #                         scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                         scte_35_pid: "__string",
    #                         segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                         segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                         segmentation_time: 1.0,
    #                         timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         timed_metadata_pid: "__string",
    #                         transport_stream_id: 1,
    #                         video_pid: "__string",
    #                       },
    #                       raw_settings: {
    #                       },
    #                     },
    #                     extension: "__string",
    #                     name_modifier: "__string",
    #                   },
    #                   frame_capture_output_settings: {
    #                     name_modifier: "__string",
    #                   },
    #                   hls_output_settings: {
    #                     h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                     hls_settings: { # required
    #                       audio_only_hls_settings: {
    #                         audio_group_id: "__string",
    #                         audio_only_image: {
    #                           password_param: "__string",
    #                           uri: "__string", # required
    #                           username: "__string",
    #                         },
    #                         audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                         segment_type: "AAC", # accepts AAC, FMP4
    #                       },
    #                       fmp_4_hls_settings: {
    #                         audio_rendition_sets: "__string",
    #                         nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       },
    #                       standard_hls_settings: {
    #                         audio_rendition_sets: "__string",
    #                         m3u_8_settings: { # required
    #                           audio_frames_per_pes: 1,
    #                           audio_pids: "__string",
    #                           ecm_pid: "__string",
    #                           nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           pat_interval: 1,
    #                           pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                           pcr_period: 1,
    #                           pcr_pid: "__string",
    #                           pmt_interval: 1,
    #                           pmt_pid: "__string",
    #                           program_num: 1,
    #                           scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           scte_35_pid: "__string",
    #                           timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           timed_metadata_pid: "__string",
    #                           transport_stream_id: 1,
    #                           video_pid: "__string",
    #                         },
    #                       },
    #                     },
    #                     name_modifier: "__stringMin1",
    #                     segment_modifier: "__string",
    #                   },
    #                   media_package_output_settings: {
    #                   },
    #                   ms_smooth_output_settings: {
    #                     h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                     name_modifier: "__string",
    #                   },
    #                   multiplex_output_settings: {
    #                     destination: { # required
    #                       destination_ref_id: "__string",
    #                     },
    #                   },
    #                   rtmp_output_settings: {
    #                     certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #                     connection_retry_interval: 1,
    #                     destination: { # required
    #                       destination_ref_id: "__string",
    #                     },
    #                     num_retries: 1,
    #                   },
    #                   udp_output_settings: {
    #                     buffer_msec: 1,
    #                     container_settings: { # required
    #                       m2ts_settings: {
    #                         absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                         arib: "DISABLED", # accepts DISABLED, ENABLED
    #                         arib_captions_pid: "__string",
    #                         arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                         audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                         audio_frames_per_pes: 1,
    #                         audio_pids: "__string",
    #                         audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                         bitrate: 1,
    #                         buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                         cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                         dvb_nit_settings: {
    #                           network_id: 1, # required
    #                           network_name: "__stringMin1Max256", # required
    #                           rep_interval: 1,
    #                         },
    #                         dvb_sdt_settings: {
    #                           output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                           rep_interval: 1,
    #                           service_name: "__stringMin1Max256",
    #                           service_provider_name: "__stringMin1Max256",
    #                         },
    #                         dvb_sub_pids: "__string",
    #                         dvb_tdt_settings: {
    #                           rep_interval: 1,
    #                         },
    #                         dvb_teletext_pid: "__string",
    #                         ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                         ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                         ebp_lookahead_ms: 1,
    #                         ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                         ecm_pid: "__string",
    #                         es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                         etv_platform_pid: "__string",
    #                         etv_signal_pid: "__string",
    #                         fragment_time: 1.0,
    #                         klv: "NONE", # accepts NONE, PASSTHROUGH
    #                         klv_data_pids: "__string",
    #                         nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         null_packet_bitrate: 1.0,
    #                         pat_interval: 1,
    #                         pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                         pcr_period: 1,
    #                         pcr_pid: "__string",
    #                         pmt_interval: 1,
    #                         pmt_pid: "__string",
    #                         program_num: 1,
    #                         rate_mode: "CBR", # accepts CBR, VBR
    #                         scte_27_pids: "__string",
    #                         scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                         scte_35_pid: "__string",
    #                         segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                         segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                         segmentation_time: 1.0,
    #                         timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         timed_metadata_pid: "__string",
    #                         transport_stream_id: 1,
    #                         video_pid: "__string",
    #                       },
    #                     },
    #                     destination: { # required
    #                       destination_ref_id: "__string",
    #                     },
    #                     fec_output_settings: {
    #                       column_depth: 1,
    #                       include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #                       row_length: 1,
    #                     },
    #                   },
    #                 },
    #                 video_description_name: "__string",
    #               },
    #             ],
    #           },
    #         ],
    #         timecode_config: { # required
    #           source: "EMBEDDED", # required, accepts EMBEDDED, SYSTEMCLOCK, ZEROBASED
    #           sync_threshold: 1,
    #         },
    #         video_descriptions: [ # required
    #           {
    #             codec_settings: {
    #               frame_capture_settings: {
    #                 capture_interval: 1, # required
    #                 capture_interval_units: "MILLISECONDS", # accepts MILLISECONDS, SECONDS
    #               },
    #               h264_settings: {
    #                 adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #                 afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #                 bitrate: 1,
    #                 buf_fill_pct: 1,
    #                 buf_size: 1,
    #                 color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                 color_space_settings: {
    #                   color_space_passthrough_settings: {
    #                   },
    #                   rec_601_settings: {
    #                   },
    #                   rec_709_settings: {
    #                   },
    #                 },
    #                 entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                 filter_settings: {
    #                   temporal_filter_settings: {
    #                     post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                     strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                   },
    #                 },
    #                 fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #                 flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                 force_field_pictures: "DISABLED", # accepts DISABLED, ENABLED
    #                 framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 framerate_denominator: 1,
    #                 framerate_numerator: 1,
    #                 gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                 gop_closed_cadence: 1,
    #                 gop_num_b_frames: 1,
    #                 gop_size: 1.0,
    #                 gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                 level: "H264_LEVEL_1", # accepts H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO
    #                 look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #                 max_bitrate: 1,
    #                 min_i_interval: 1,
    #                 num_ref_frames: 1,
    #                 par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 par_denominator: 1,
    #                 par_numerator: 1,
    #                 profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                 quality_level: "ENHANCED_QUALITY", # accepts ENHANCED_QUALITY, STANDARD_QUALITY
    #                 qvbr_quality_level: 1,
    #                 rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR, VBR
    #                 scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #                 scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                 slices: 1,
    #                 softness: 1,
    #                 spatial_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                 subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #                 syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                 temporal_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                 timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #               },
    #               h265_settings: {
    #                 adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #                 afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #                 alternative_transfer_function: "INSERT", # accepts INSERT, OMIT
    #                 bitrate: 1,
    #                 buf_size: 1,
    #                 color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                 color_space_settings: {
    #                   color_space_passthrough_settings: {
    #                   },
    #                   hdr_10_settings: {
    #                     max_cll: 1,
    #                     max_fall: 1,
    #                   },
    #                   rec_601_settings: {
    #                   },
    #                   rec_709_settings: {
    #                   },
    #                 },
    #                 filter_settings: {
    #                   temporal_filter_settings: {
    #                     post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                     strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                   },
    #                 },
    #                 fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #                 flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                 framerate_denominator: 1, # required
    #                 framerate_numerator: 1, # required
    #                 gop_closed_cadence: 1,
    #                 gop_size: 1.0,
    #                 gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                 level: "H265_LEVEL_1", # accepts H265_LEVEL_1, H265_LEVEL_2, H265_LEVEL_2_1, H265_LEVEL_3, H265_LEVEL_3_1, H265_LEVEL_4, H265_LEVEL_4_1, H265_LEVEL_5, H265_LEVEL_5_1, H265_LEVEL_5_2, H265_LEVEL_6, H265_LEVEL_6_1, H265_LEVEL_6_2, H265_LEVEL_AUTO
    #                 look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #                 max_bitrate: 1,
    #                 min_i_interval: 1,
    #                 par_denominator: 1,
    #                 par_numerator: 1,
    #                 profile: "MAIN", # accepts MAIN, MAIN_10BIT
    #                 qvbr_quality_level: 1,
    #                 rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR
    #                 scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #                 scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                 slices: 1,
    #                 tier: "HIGH", # accepts HIGH, MAIN
    #                 timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #               },
    #               mpeg_2_settings: {
    #                 adaptive_quantization: "AUTO", # accepts AUTO, HIGH, LOW, MEDIUM, OFF
    #                 afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #                 color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                 color_space: "AUTO", # accepts AUTO, PASSTHROUGH
    #                 display_aspect_ratio: "DISPLAYRATIO16X9", # accepts DISPLAYRATIO16X9, DISPLAYRATIO4X3
    #                 filter_settings: {
    #                   temporal_filter_settings: {
    #                     post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                     strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                   },
    #                 },
    #                 fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #                 framerate_denominator: 1, # required
    #                 framerate_numerator: 1, # required
    #                 gop_closed_cadence: 1,
    #                 gop_num_b_frames: 1,
    #                 gop_size: 1.0,
    #                 gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                 scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #                 subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #                 timecode_insertion: "DISABLED", # accepts DISABLED, GOP_TIMECODE
    #               },
    #             },
    #             height: 1,
    #             name: "__string", # required
    #             respond_to_afd: "NONE", # accepts NONE, PASSTHROUGH, RESPOND
    #             scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #             sharpness: 1,
    #             width: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] audio_descriptions
    #   @return [Array<Types::AudioDescription>]
    #
    # @!attribute [rw] avail_blanking
    #   Settings for ad avail blanking.
    #   @return [Types::AvailBlanking]
    #
    # @!attribute [rw] avail_configuration
    #   Event-wide configuration settings for ad avail insertion.
    #   @return [Types::AvailConfiguration]
    #
    # @!attribute [rw] blackout_slate
    #   Settings for blackout slate.
    #   @return [Types::BlackoutSlate]
    #
    # @!attribute [rw] caption_descriptions
    #   Settings for caption decriptions
    #   @return [Array<Types::CaptionDescription>]
    #
    # @!attribute [rw] feature_activations
    #   Feature Activations
    #   @return [Types::FeatureActivations]
    #
    # @!attribute [rw] global_configuration
    #   Configuration settings that apply to the event as a whole.
    #   @return [Types::GlobalConfiguration]
    #
    # @!attribute [rw] nielsen_configuration
    #   Nielsen configuration settings.
    #   @return [Types::NielsenConfiguration]
    #
    # @!attribute [rw] output_groups
    #   @return [Array<Types::OutputGroup>]
    #
    # @!attribute [rw] timecode_config
    #   Contains settings used to acquire and adjust timecode information
    #   from inputs.
    #   @return [Types::TimecodeConfig]
    #
    # @!attribute [rw] video_descriptions
    #   @return [Array<Types::VideoDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/EncoderSettings AWS API Documentation
    #
    class EncoderSettings < Struct.new(
      :audio_descriptions,
      :avail_blanking,
      :avail_configuration,
      :blackout_slate,
      :caption_descriptions,
      :feature_activations,
      :global_configuration,
      :nielsen_configuration,
      :output_groups,
      :timecode_config,
      :video_descriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Feature Activations
    #
    # @note When making an API call, you may pass FeatureActivations
    #   data as a hash:
    #
    #       {
    #         input_prepare_schedule_actions: "DISABLED", # accepts DISABLED, ENABLED
    #       }
    #
    # @!attribute [rw] input_prepare_schedule_actions
    #   Enables the Input Prepare feature. You can create Input Prepare
    #   actions in the schedule only if this feature is enabled. If you
    #   disable the feature on an existing schedule, make sure that you
    #   first delete all input prepare actions from the schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/FeatureActivations AWS API Documentation
    #
    class FeatureActivations < Struct.new(
      :input_prepare_schedule_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Fec Output Settings
    #
    # @note When making an API call, you may pass FecOutputSettings
    #   data as a hash:
    #
    #       {
    #         column_depth: 1,
    #         include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #         row_length: 1,
    #       }
    #
    # @!attribute [rw] column_depth
    #   Parameter D from SMPTE 2022-1. The height of the FEC protection
    #   matrix. The number of transport stream packets per column error
    #   correction packet. Must be between 4 and 20, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] include_fec
    #   Enables column only or column and row based FEC
    #   @return [String]
    #
    # @!attribute [rw] row_length
    #   Parameter L from SMPTE 2022-1. The width of the FEC protection
    #   matrix. Must be between 1 and 20, inclusive. If only Column FEC is
    #   used, then larger values increase robustness. If Row FEC is used,
    #   then this is the number of transport stream packets per row error
    #   correction packet, and the value must be between 4 and 20,
    #   inclusive, if includeFec is columnAndRow. If includeFec is column,
    #   this value must be 1 to 20, inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/FecOutputSettings AWS API Documentation
    #
    class FecOutputSettings < Struct.new(
      :column_depth,
      :include_fec,
      :row_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # Start time for the action.
    #
    # @note When making an API call, you may pass FixedModeScheduleActionStartSettings
    #   data as a hash:
    #
    #       {
    #         time: "__string", # required
    #       }
    #
    # @!attribute [rw] time
    #   Start time for the action to start in the channel. (Not the time for
    #   the action to be added to the schedule: actions are always added to
    #   the schedule immediately.) UTC format: yyyy-mm-ddThh:mm:ss.nnnZ. All
    #   the letters are digits (for example, mm might be 01) except for the
    #   two constants "T" for time and "Z" for "UTC format".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/FixedModeScheduleActionStartSettings AWS API Documentation
    #
    class FixedModeScheduleActionStartSettings < Struct.new(
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Fmp4 Hls Settings
    #
    # @note When making an API call, you may pass Fmp4HlsSettings
    #   data as a hash:
    #
    #       {
    #         audio_rendition_sets: "__string",
    #         nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #         timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #       }
    #
    # @!attribute [rw] audio_rendition_sets
    #   List all the audio groups that are used with the video output
    #   stream. Input all the audio GROUP-IDs that are associated to the
    #   video, separate by ','.
    #   @return [String]
    #
    # @!attribute [rw] nielsen_id_3_behavior
    #   If set to passthrough, Nielsen inaudible tones for media tracking
    #   will be detected in the input audio and an equivalent ID3 tag will
    #   be inserted in the output.
    #   @return [String]
    #
    # @!attribute [rw] timed_metadata_behavior
    #   When set to passthrough, timed metadata is passed through from input
    #   to output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Fmp4HlsSettings AWS API Documentation
    #
    class Fmp4HlsSettings < Struct.new(
      :audio_rendition_sets,
      :nielsen_id_3_behavior,
      :timed_metadata_behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings to specify if an action follows another.
    #
    # @note When making an API call, you may pass FollowModeScheduleActionStartSettings
    #   data as a hash:
    #
    #       {
    #         follow_point: "END", # required, accepts END, START
    #         reference_action_name: "__string", # required
    #       }
    #
    # @!attribute [rw] follow_point
    #   Identifies whether this action starts relative to the start or
    #   relative to the end of the reference action.
    #   @return [String]
    #
    # @!attribute [rw] reference_action_name
    #   The action name of another action that this one refers to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/FollowModeScheduleActionStartSettings AWS API Documentation
    #
    class FollowModeScheduleActionStartSettings < Struct.new(
      :follow_point,
      :reference_action_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Frame Capture Group Settings
    #
    # @note When making an API call, you may pass FrameCaptureGroupSettings
    #   data as a hash:
    #
    #       {
    #         destination: { # required
    #           destination_ref_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] destination
    #   The destination for the frame capture files. Either the URI for an
    #   Amazon S3 bucket and object, plus a file name prefix (for example,
    #   s3ssl://sportsDelivery/highlights/20180820/curling-) or the URI for
    #   a MediaStore container, plus a file name prefix (for example,
    #   mediastoressl://sportsDelivery/20180820/curling-). The final file
    #   names consist of the prefix from the destination field (for example,
    #   "curling-") + name modifier + the counter (5 digits, starting from
    #   00001) + extension (which is always .jpg). For example,
    #   curling-low.00001.jpg
    #   @return [Types::OutputLocationRef]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/FrameCaptureGroupSettings AWS API Documentation
    #
    class FrameCaptureGroupSettings < Struct.new(
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Frame Capture Output Settings
    #
    # @note When making an API call, you may pass FrameCaptureOutputSettings
    #   data as a hash:
    #
    #       {
    #         name_modifier: "__string",
    #       }
    #
    # @!attribute [rw] name_modifier
    #   Required if the output group contains more than one output. This
    #   modifier forms part of the output file name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/FrameCaptureOutputSettings AWS API Documentation
    #
    class FrameCaptureOutputSettings < Struct.new(
      :name_modifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Frame Capture Settings
    #
    # @note When making an API call, you may pass FrameCaptureSettings
    #   data as a hash:
    #
    #       {
    #         capture_interval: 1, # required
    #         capture_interval_units: "MILLISECONDS", # accepts MILLISECONDS, SECONDS
    #       }
    #
    # @!attribute [rw] capture_interval
    #   The frequency at which to capture frames for inclusion in the
    #   output. May be specified in either seconds or milliseconds, as
    #   specified by captureIntervalUnits.
    #   @return [Integer]
    #
    # @!attribute [rw] capture_interval_units
    #   Unit for the frame capture interval.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/FrameCaptureSettings AWS API Documentation
    #
    class FrameCaptureSettings < Struct.new(
      :capture_interval,
      :capture_interval_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/GatewayTimeoutException AWS API Documentation
    #
    class GatewayTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Global Configuration
    #
    # @note When making an API call, you may pass GlobalConfiguration
    #   data as a hash:
    #
    #       {
    #         initial_audio_gain: 1,
    #         input_end_action: "NONE", # accepts NONE, SWITCH_AND_LOOP_INPUTS
    #         input_loss_behavior: {
    #           black_frame_msec: 1,
    #           input_loss_image_color: "__stringMin6Max6",
    #           input_loss_image_slate: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           input_loss_image_type: "COLOR", # accepts COLOR, SLATE
    #           repeat_frame_msec: 1,
    #         },
    #         output_locking_mode: "EPOCH_LOCKING", # accepts EPOCH_LOCKING, PIPELINE_LOCKING
    #         output_timing_source: "INPUT_CLOCK", # accepts INPUT_CLOCK, SYSTEM_CLOCK
    #         support_low_framerate_inputs: "DISABLED", # accepts DISABLED, ENABLED
    #       }
    #
    # @!attribute [rw] initial_audio_gain
    #   Value to set the initial audio gain for the Live Event.
    #   @return [Integer]
    #
    # @!attribute [rw] input_end_action
    #   Indicates the action to take when the current input completes (e.g.
    #   end-of-file). When switchAndLoopInputs is configured the encoder
    #   will restart at the beginning of the first input. When "none" is
    #   configured the encoder will transcode either black, a solid color,
    #   or a user specified slate images per the "Input Loss Behavior"
    #   configuration until the next input switch occurs (which is
    #   controlled through the Channel Schedule API).
    #   @return [String]
    #
    # @!attribute [rw] input_loss_behavior
    #   Settings for system actions when input is lost.
    #   @return [Types::InputLossBehavior]
    #
    # @!attribute [rw] output_locking_mode
    #   Indicates how MediaLive pipelines are synchronized.
    #   PIPELINE\_LOCKING - MediaLive will attempt to synchronize the output
    #   of each pipeline to the other. EPOCH\_LOCKING - MediaLive will
    #   attempt to synchronize the output of each pipeline to the Unix
    #   epoch.
    #   @return [String]
    #
    # @!attribute [rw] output_timing_source
    #   Indicates whether the rate of frames emitted by the Live encoder
    #   should be paced by its system clock (which optionally may be locked
    #   to another source via NTP) or should be locked to the clock of the
    #   source that is providing the input stream.
    #   @return [String]
    #
    # @!attribute [rw] support_low_framerate_inputs
    #   Adjusts video input buffer for streams with very low video
    #   framerates. This is commonly set to enabled for music channels with
    #   less than one video frame per second.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/GlobalConfiguration AWS API Documentation
    #
    class GlobalConfiguration < Struct.new(
      :initial_audio_gain,
      :input_end_action,
      :input_loss_behavior,
      :output_locking_mode,
      :output_timing_source,
      :support_low_framerate_inputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # H264 Color Space Settings
    #
    # @note When making an API call, you may pass H264ColorSpaceSettings
    #   data as a hash:
    #
    #       {
    #         color_space_passthrough_settings: {
    #         },
    #         rec_601_settings: {
    #         },
    #         rec_709_settings: {
    #         },
    #       }
    #
    # @!attribute [rw] color_space_passthrough_settings
    #   Passthrough applies no color space conversion to the output
    #   @return [Types::ColorSpacePassthroughSettings]
    #
    # @!attribute [rw] rec_601_settings
    #   Rec601 Settings
    #   @return [Types::Rec601Settings]
    #
    # @!attribute [rw] rec_709_settings
    #   Rec709 Settings
    #   @return [Types::Rec709Settings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/H264ColorSpaceSettings AWS API Documentation
    #
    class H264ColorSpaceSettings < Struct.new(
      :color_space_passthrough_settings,
      :rec_601_settings,
      :rec_709_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # H264 Filter Settings
    #
    # @note When making an API call, you may pass H264FilterSettings
    #   data as a hash:
    #
    #       {
    #         temporal_filter_settings: {
    #           post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #           strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #         },
    #       }
    #
    # @!attribute [rw] temporal_filter_settings
    #   Temporal Filter Settings
    #   @return [Types::TemporalFilterSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/H264FilterSettings AWS API Documentation
    #
    class H264FilterSettings < Struct.new(
      :temporal_filter_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # H264 Settings
    #
    # @note When making an API call, you may pass H264Settings
    #   data as a hash:
    #
    #       {
    #         adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #         afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #         bitrate: 1,
    #         buf_fill_pct: 1,
    #         buf_size: 1,
    #         color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #         color_space_settings: {
    #           color_space_passthrough_settings: {
    #           },
    #           rec_601_settings: {
    #           },
    #           rec_709_settings: {
    #           },
    #         },
    #         entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #         filter_settings: {
    #           temporal_filter_settings: {
    #             post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #             strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #           },
    #         },
    #         fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #         flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #         force_field_pictures: "DISABLED", # accepts DISABLED, ENABLED
    #         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #         framerate_denominator: 1,
    #         framerate_numerator: 1,
    #         gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #         gop_closed_cadence: 1,
    #         gop_num_b_frames: 1,
    #         gop_size: 1.0,
    #         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #         level: "H264_LEVEL_1", # accepts H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO
    #         look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #         max_bitrate: 1,
    #         min_i_interval: 1,
    #         num_ref_frames: 1,
    #         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #         par_denominator: 1,
    #         par_numerator: 1,
    #         profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #         quality_level: "ENHANCED_QUALITY", # accepts ENHANCED_QUALITY, STANDARD_QUALITY
    #         qvbr_quality_level: 1,
    #         rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR, VBR
    #         scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #         slices: 1,
    #         softness: 1,
    #         spatial_aq: "DISABLED", # accepts DISABLED, ENABLED
    #         subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #         syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #         temporal_aq: "DISABLED", # accepts DISABLED, ENABLED
    #         timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #       }
    #
    # @!attribute [rw] adaptive_quantization
    #   Adaptive quantization. Allows intra-frame quantizers to vary to
    #   improve visual quality.
    #   @return [String]
    #
    # @!attribute [rw] afd_signaling
    #   Indicates that AFD values will be written into the output stream. If
    #   afdSignaling is "auto", the system will try to preserve the input
    #   AFD value (in cases where multiple AFD values are valid). If set to
    #   "fixed", the AFD value will be the value configured in the
    #   fixedAfd parameter.
    #   @return [String]
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second. Required when the rate control mode
    #   is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each
    #   output must have a unique value when its bitrate is rounded down to
    #   the nearest multiple of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] buf_fill_pct
    #   Percentage of the buffer that should initially be filled (HRD buffer
    #   model).
    #   @return [Integer]
    #
    # @!attribute [rw] buf_size
    #   Size of buffer (HRD buffer model) in bits.
    #   @return [Integer]
    #
    # @!attribute [rw] color_metadata
    #   Includes colorspace metadata in the output.
    #   @return [String]
    #
    # @!attribute [rw] color_space_settings
    #   Color Space settings
    #   @return [Types::H264ColorSpaceSettings]
    #
    # @!attribute [rw] entropy_encoding
    #   Entropy encoding mode. Use cabac (must be in Main or High profile)
    #   or cavlc.
    #   @return [String]
    #
    # @!attribute [rw] filter_settings
    #   Optional filters that you can apply to an encode.
    #   @return [Types::H264FilterSettings]
    #
    # @!attribute [rw] fixed_afd
    #   Four bit AFD value to write on all frames of video in the output
    #   stream. Only valid when afdSignaling is set to 'Fixed'.
    #   @return [String]
    #
    # @!attribute [rw] flicker_aq
    #   If set to enabled, adjust quantization within each frame to reduce
    #   flicker or 'pop' on I-frames.
    #   @return [String]
    #
    # @!attribute [rw] force_field_pictures
    #   This setting applies only when scan type is "interlaced." It
    #   controls whether coding is performed on a field basis or on a frame
    #   basis. (When the video is progressive, the coding is always
    #   performed on a frame basis.) enabled: Force MediaLive to code on a
    #   field basis, so that odd and even sets of fields are coded
    #   separately. disabled: Code the two sets of fields separately (on a
    #   field basis) or together (on a frame basis using PAFF), depending on
    #   what is most appropriate for the content.
    #   @return [String]
    #
    # @!attribute [rw] framerate_control
    #   This field indicates how the output video frame rate is specified.
    #   If "specified" is selected then the output video frame rate is
    #   determined by framerateNumerator and framerateDenominator, else if
    #   "initializeFromSource" is selected then the output video frame
    #   rate will be set equal to the input video frame rate of the first
    #   input.
    #   @return [String]
    #
    # @!attribute [rw] framerate_denominator
    #   Framerate denominator.
    #   @return [Integer]
    #
    # @!attribute [rw] framerate_numerator
    #   Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 =
    #   23.976 fps.
    #   @return [Integer]
    #
    # @!attribute [rw] gop_b_reference
    #   If enabled, use reference B frames for GOP structures that have B
    #   frames > 1.
    #   @return [String]
    #
    # @!attribute [rw] gop_closed_cadence
    #   Frequency of closed GOPs. In streaming applications, it is
    #   recommended that this be set to 1 so a decoder joining mid-stream
    #   will receive an IDR frame as quickly as possible. Setting this value
    #   to 0 will break output segmenting.
    #   @return [Integer]
    #
    # @!attribute [rw] gop_num_b_frames
    #   Number of B-frames between reference frames.
    #   @return [Integer]
    #
    # @!attribute [rw] gop_size
    #   GOP size (keyframe interval) in units of either frames or seconds
    #   per gopSizeUnits. If gopSizeUnits is frames, gopSize must be an
    #   integer and must be greater than or equal to 1. If gopSizeUnits is
    #   seconds, gopSize must be greater than 0, but need not be an integer.
    #   @return [Float]
    #
    # @!attribute [rw] gop_size_units
    #   Indicates if the gopSize is specified in frames or seconds. If
    #   seconds the system will convert the gopSize into a frame count at
    #   run time.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   H.264 Level.
    #   @return [String]
    #
    # @!attribute [rw] look_ahead_rate_control
    #   Amount of lookahead. A value of low can decrease latency and memory
    #   usage, while high can produce better quality for certain content.
    #   @return [String]
    #
    # @!attribute [rw] max_bitrate
    #   For QVBR: See the tooltip for Quality level For VBR: Set the maximum
    #   bitrate in order to accommodate expected spikes in the complexity of
    #   the video.
    #   @return [Integer]
    #
    # @!attribute [rw] min_i_interval
    #   Only meaningful if sceneChangeDetect is set to enabled. Defaults to
    #   5 if multiplex rate control is used. Enforces separation between
    #   repeated (cadence) I-frames and I-frames inserted by Scene Change
    #   Detection. If a scene change I-frame is within I-interval frames of
    #   a cadence I-frame, the GOP is shrunk and/or stretched to the scene
    #   change I-frame. GOP stretch requires enabling lookahead as well as
    #   setting I-interval. The normal cadence resumes for the next GOP.
    #   Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
    #   @return [Integer]
    #
    # @!attribute [rw] num_ref_frames
    #   Number of reference frames to use. The encoder may use more than
    #   requested if using B-frames and/or interlaced encoding.
    #   @return [Integer]
    #
    # @!attribute [rw] par_control
    #   This field indicates how the output pixel aspect ratio is specified.
    #   If "specified" is selected then the output video pixel aspect
    #   ratio is determined by parNumerator and parDenominator, else if
    #   "initializeFromSource" is selected then the output pixsel aspect
    #   ratio will be set equal to the input video pixel aspect ratio of the
    #   first input.
    #   @return [String]
    #
    # @!attribute [rw] par_denominator
    #   Pixel Aspect Ratio denominator.
    #   @return [Integer]
    #
    # @!attribute [rw] par_numerator
    #   Pixel Aspect Ratio numerator.
    #   @return [Integer]
    #
    # @!attribute [rw] profile
    #   H.264 Profile.
    #   @return [String]
    #
    # @!attribute [rw] quality_level
    #   Leave as STANDARD\_QUALITY or choose a different value (which might
    #   result in additional costs to run the channel). - ENHANCED\_QUALITY:
    #   Produces a slightly better video quality without an increase in the
    #   bitrate. Has an effect only when the Rate control mode is QVBR or
    #   CBR. If this channel is in a MediaLive multiplex, the value must be
    #   ENHANCED\_QUALITY. - STANDARD\_QUALITY: Valid for any Rate control
    #   mode.
    #   @return [String]
    #
    # @!attribute [rw] qvbr_quality_level
    #   Controls the target quality for the video encode. Applies only when
    #   the rate control mode is QVBR. Set values for the QVBR quality level
    #   field and Max bitrate field that suit your most important viewing
    #   devices. Recommended values are: - Primary screen: Quality level: 8
    #   to 10. Max bitrate: 4M - PC or tablet: Quality level: 7. Max
    #   bitrate: 1.5M to 3M - Smartphone: Quality level: 6. Max bitrate: 1M
    #   to 1.5M
    #   @return [Integer]
    #
    # @!attribute [rw] rate_control_mode
    #   Rate control mode. QVBR: Quality will match the specified quality
    #   level except when it is constrained by the maximum bitrate.
    #   Recommended if you or your viewers pay for bandwidth. VBR: Quality
    #   and bitrate vary, depending on the video complexity. Recommended
    #   instead of QVBR if you want to maintain a specific average bitrate
    #   over the duration of the channel. CBR: Quality varies, depending on
    #   the video complexity. Recommended only if you distribute your assets
    #   to devices that cannot handle variable bitrates. Multiplex: This
    #   rate control mode is only supported (and is required) when the video
    #   is being delivered to a MediaLive Multiplex in which case the rate
    #   control configuration is controlled by the properties within the
    #   Multiplex Program.
    #   @return [String]
    #
    # @!attribute [rw] scan_type
    #   Sets the scan type of the output to progressive or top-field-first
    #   interlaced.
    #   @return [String]
    #
    # @!attribute [rw] scene_change_detect
    #   Scene change detection. - On: inserts I-frames when scene change is
    #   detected. - Off: does not force an I-frame when scene change is
    #   detected.
    #   @return [String]
    #
    # @!attribute [rw] slices
    #   Number of slices per picture. Must be less than or equal to the
    #   number of macroblock rows for progressive pictures, and less than or
    #   equal to half the number of macroblock rows for interlaced pictures.
    #   This field is optional; when no value is specified the encoder will
    #   choose the number of slices based on encode resolution.
    #   @return [Integer]
    #
    # @!attribute [rw] softness
    #   Softness. Selects quantizer matrix, larger values reduce
    #   high-frequency content in the encoded image.
    #   @return [Integer]
    #
    # @!attribute [rw] spatial_aq
    #   If set to enabled, adjust quantization within each frame based on
    #   spatial variation of content complexity.
    #   @return [String]
    #
    # @!attribute [rw] subgop_length
    #   If set to fixed, use gopNumBFrames B-frames per sub-GOP. If set to
    #   dynamic, optimize the number of B-frames used for each sub-GOP to
    #   improve visual quality.
    #   @return [String]
    #
    # @!attribute [rw] syntax
    #   Produces a bitstream compliant with SMPTE RP-2027.
    #   @return [String]
    #
    # @!attribute [rw] temporal_aq
    #   If set to enabled, adjust quantization within each frame based on
    #   temporal variation of content complexity.
    #   @return [String]
    #
    # @!attribute [rw] timecode_insertion
    #   Determines how timecodes should be inserted into the video
    #   elementary stream. - 'disabled': Do not include timecodes -
    #   'picTimingSei': Pass through picture timing SEI messages from the
    #   source specified in Timecode Config
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/H264Settings AWS API Documentation
    #
    class H264Settings < Struct.new(
      :adaptive_quantization,
      :afd_signaling,
      :bitrate,
      :buf_fill_pct,
      :buf_size,
      :color_metadata,
      :color_space_settings,
      :entropy_encoding,
      :filter_settings,
      :fixed_afd,
      :flicker_aq,
      :force_field_pictures,
      :framerate_control,
      :framerate_denominator,
      :framerate_numerator,
      :gop_b_reference,
      :gop_closed_cadence,
      :gop_num_b_frames,
      :gop_size,
      :gop_size_units,
      :level,
      :look_ahead_rate_control,
      :max_bitrate,
      :min_i_interval,
      :num_ref_frames,
      :par_control,
      :par_denominator,
      :par_numerator,
      :profile,
      :quality_level,
      :qvbr_quality_level,
      :rate_control_mode,
      :scan_type,
      :scene_change_detect,
      :slices,
      :softness,
      :spatial_aq,
      :subgop_length,
      :syntax,
      :temporal_aq,
      :timecode_insertion)
      SENSITIVE = []
      include Aws::Structure
    end

    # H265 Color Space Settings
    #
    # @note When making an API call, you may pass H265ColorSpaceSettings
    #   data as a hash:
    #
    #       {
    #         color_space_passthrough_settings: {
    #         },
    #         hdr_10_settings: {
    #           max_cll: 1,
    #           max_fall: 1,
    #         },
    #         rec_601_settings: {
    #         },
    #         rec_709_settings: {
    #         },
    #       }
    #
    # @!attribute [rw] color_space_passthrough_settings
    #   Passthrough applies no color space conversion to the output
    #   @return [Types::ColorSpacePassthroughSettings]
    #
    # @!attribute [rw] hdr_10_settings
    #   Hdr10 Settings
    #   @return [Types::Hdr10Settings]
    #
    # @!attribute [rw] rec_601_settings
    #   Rec601 Settings
    #   @return [Types::Rec601Settings]
    #
    # @!attribute [rw] rec_709_settings
    #   Rec709 Settings
    #   @return [Types::Rec709Settings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/H265ColorSpaceSettings AWS API Documentation
    #
    class H265ColorSpaceSettings < Struct.new(
      :color_space_passthrough_settings,
      :hdr_10_settings,
      :rec_601_settings,
      :rec_709_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # H265 Filter Settings
    #
    # @note When making an API call, you may pass H265FilterSettings
    #   data as a hash:
    #
    #       {
    #         temporal_filter_settings: {
    #           post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #           strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #         },
    #       }
    #
    # @!attribute [rw] temporal_filter_settings
    #   Temporal Filter Settings
    #   @return [Types::TemporalFilterSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/H265FilterSettings AWS API Documentation
    #
    class H265FilterSettings < Struct.new(
      :temporal_filter_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # H265 Settings
    #
    # @note When making an API call, you may pass H265Settings
    #   data as a hash:
    #
    #       {
    #         adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #         afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #         alternative_transfer_function: "INSERT", # accepts INSERT, OMIT
    #         bitrate: 1,
    #         buf_size: 1,
    #         color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #         color_space_settings: {
    #           color_space_passthrough_settings: {
    #           },
    #           hdr_10_settings: {
    #             max_cll: 1,
    #             max_fall: 1,
    #           },
    #           rec_601_settings: {
    #           },
    #           rec_709_settings: {
    #           },
    #         },
    #         filter_settings: {
    #           temporal_filter_settings: {
    #             post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #             strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #           },
    #         },
    #         fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #         flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #         framerate_denominator: 1, # required
    #         framerate_numerator: 1, # required
    #         gop_closed_cadence: 1,
    #         gop_size: 1.0,
    #         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #         level: "H265_LEVEL_1", # accepts H265_LEVEL_1, H265_LEVEL_2, H265_LEVEL_2_1, H265_LEVEL_3, H265_LEVEL_3_1, H265_LEVEL_4, H265_LEVEL_4_1, H265_LEVEL_5, H265_LEVEL_5_1, H265_LEVEL_5_2, H265_LEVEL_6, H265_LEVEL_6_1, H265_LEVEL_6_2, H265_LEVEL_AUTO
    #         look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #         max_bitrate: 1,
    #         min_i_interval: 1,
    #         par_denominator: 1,
    #         par_numerator: 1,
    #         profile: "MAIN", # accepts MAIN, MAIN_10BIT
    #         qvbr_quality_level: 1,
    #         rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR
    #         scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #         slices: 1,
    #         tier: "HIGH", # accepts HIGH, MAIN
    #         timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #       }
    #
    # @!attribute [rw] adaptive_quantization
    #   Adaptive quantization. Allows intra-frame quantizers to vary to
    #   improve visual quality.
    #   @return [String]
    #
    # @!attribute [rw] afd_signaling
    #   Indicates that AFD values will be written into the output stream. If
    #   afdSignaling is "auto", the system will try to preserve the input
    #   AFD value (in cases where multiple AFD values are valid). If set to
    #   "fixed", the AFD value will be the value configured in the
    #   fixedAfd parameter.
    #   @return [String]
    #
    # @!attribute [rw] alternative_transfer_function
    #   Whether or not EML should insert an Alternative Transfer Function
    #   SEI message to support backwards compatibility with non-HDR decoders
    #   and displays.
    #   @return [String]
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second. Required when the rate control mode
    #   is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each
    #   output must have a unique value when its bitrate is rounded down to
    #   the nearest multiple of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] buf_size
    #   Size of buffer (HRD buffer model) in bits.
    #   @return [Integer]
    #
    # @!attribute [rw] color_metadata
    #   Includes colorspace metadata in the output.
    #   @return [String]
    #
    # @!attribute [rw] color_space_settings
    #   Color Space settings
    #   @return [Types::H265ColorSpaceSettings]
    #
    # @!attribute [rw] filter_settings
    #   Optional filters that you can apply to an encode.
    #   @return [Types::H265FilterSettings]
    #
    # @!attribute [rw] fixed_afd
    #   Four bit AFD value to write on all frames of video in the output
    #   stream. Only valid when afdSignaling is set to 'Fixed'.
    #   @return [String]
    #
    # @!attribute [rw] flicker_aq
    #   If set to enabled, adjust quantization within each frame to reduce
    #   flicker or 'pop' on I-frames.
    #   @return [String]
    #
    # @!attribute [rw] framerate_denominator
    #   Framerate denominator.
    #   @return [Integer]
    #
    # @!attribute [rw] framerate_numerator
    #   Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 =
    #   23.976 fps.
    #   @return [Integer]
    #
    # @!attribute [rw] gop_closed_cadence
    #   Frequency of closed GOPs. In streaming applications, it is
    #   recommended that this be set to 1 so a decoder joining mid-stream
    #   will receive an IDR frame as quickly as possible. Setting this value
    #   to 0 will break output segmenting.
    #   @return [Integer]
    #
    # @!attribute [rw] gop_size
    #   GOP size (keyframe interval) in units of either frames or seconds
    #   per gopSizeUnits. If gopSizeUnits is frames, gopSize must be an
    #   integer and must be greater than or equal to 1. If gopSizeUnits is
    #   seconds, gopSize must be greater than 0, but need not be an integer.
    #   @return [Float]
    #
    # @!attribute [rw] gop_size_units
    #   Indicates if the gopSize is specified in frames or seconds. If
    #   seconds the system will convert the gopSize into a frame count at
    #   run time.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   H.265 Level.
    #   @return [String]
    #
    # @!attribute [rw] look_ahead_rate_control
    #   Amount of lookahead. A value of low can decrease latency and memory
    #   usage, while high can produce better quality for certain content.
    #   @return [String]
    #
    # @!attribute [rw] max_bitrate
    #   For QVBR: See the tooltip for Quality level
    #   @return [Integer]
    #
    # @!attribute [rw] min_i_interval
    #   Only meaningful if sceneChangeDetect is set to enabled. Defaults to
    #   5 if multiplex rate control is used. Enforces separation between
    #   repeated (cadence) I-frames and I-frames inserted by Scene Change
    #   Detection. If a scene change I-frame is within I-interval frames of
    #   a cadence I-frame, the GOP is shrunk and/or stretched to the scene
    #   change I-frame. GOP stretch requires enabling lookahead as well as
    #   setting I-interval. The normal cadence resumes for the next GOP.
    #   Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
    #   @return [Integer]
    #
    # @!attribute [rw] par_denominator
    #   Pixel Aspect Ratio denominator.
    #   @return [Integer]
    #
    # @!attribute [rw] par_numerator
    #   Pixel Aspect Ratio numerator.
    #   @return [Integer]
    #
    # @!attribute [rw] profile
    #   H.265 Profile.
    #   @return [String]
    #
    # @!attribute [rw] qvbr_quality_level
    #   Controls the target quality for the video encode. Applies only when
    #   the rate control mode is QVBR. Set values for the QVBR quality level
    #   field and Max bitrate field that suit your most important viewing
    #   devices. Recommended values are: - Primary screen: Quality level: 8
    #   to 10. Max bitrate: 4M - PC or tablet: Quality level: 7. Max
    #   bitrate: 1.5M to 3M - Smartphone: Quality level: 6. Max bitrate: 1M
    #   to 1.5M
    #   @return [Integer]
    #
    # @!attribute [rw] rate_control_mode
    #   Rate control mode. QVBR: Quality will match the specified quality
    #   level except when it is constrained by the maximum bitrate.
    #   Recommended if you or your viewers pay for bandwidth. CBR: Quality
    #   varies, depending on the video complexity. Recommended only if you
    #   distribute your assets to devices that cannot handle variable
    #   bitrates. Multiplex: This rate control mode is only supported (and
    #   is required) when the video is being delivered to a MediaLive
    #   Multiplex in which case the rate control configuration is controlled
    #   by the properties within the Multiplex Program.
    #   @return [String]
    #
    # @!attribute [rw] scan_type
    #   Sets the scan type of the output to progressive or top-field-first
    #   interlaced.
    #   @return [String]
    #
    # @!attribute [rw] scene_change_detect
    #   Scene change detection.
    #   @return [String]
    #
    # @!attribute [rw] slices
    #   Number of slices per picture. Must be less than or equal to the
    #   number of macroblock rows for progressive pictures, and less than or
    #   equal to half the number of macroblock rows for interlaced pictures.
    #   This field is optional; when no value is specified the encoder will
    #   choose the number of slices based on encode resolution.
    #   @return [Integer]
    #
    # @!attribute [rw] tier
    #   H.265 Tier.
    #   @return [String]
    #
    # @!attribute [rw] timecode_insertion
    #   Determines how timecodes should be inserted into the video
    #   elementary stream. - 'disabled': Do not include timecodes -
    #   'picTimingSei': Pass through picture timing SEI messages from the
    #   source specified in Timecode Config
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/H265Settings AWS API Documentation
    #
    class H265Settings < Struct.new(
      :adaptive_quantization,
      :afd_signaling,
      :alternative_transfer_function,
      :bitrate,
      :buf_size,
      :color_metadata,
      :color_space_settings,
      :filter_settings,
      :fixed_afd,
      :flicker_aq,
      :framerate_denominator,
      :framerate_numerator,
      :gop_closed_cadence,
      :gop_size,
      :gop_size_units,
      :level,
      :look_ahead_rate_control,
      :max_bitrate,
      :min_i_interval,
      :par_denominator,
      :par_numerator,
      :profile,
      :qvbr_quality_level,
      :rate_control_mode,
      :scan_type,
      :scene_change_detect,
      :slices,
      :tier,
      :timecode_insertion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hdr10 Settings
    #
    # @note When making an API call, you may pass Hdr10Settings
    #   data as a hash:
    #
    #       {
    #         max_cll: 1,
    #         max_fall: 1,
    #       }
    #
    # @!attribute [rw] max_cll
    #   Maximum Content Light Level An integer metadata value defining the
    #   maximum light level, in nits, of any single pixel within an encoded
    #   HDR video stream or file.
    #   @return [Integer]
    #
    # @!attribute [rw] max_fall
    #   Maximum Frame Average Light Level An integer metadata value defining
    #   the maximum average light level, in nits, for any single frame
    #   within an encoded HDR video stream or file.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Hdr10Settings AWS API Documentation
    #
    class Hdr10Settings < Struct.new(
      :max_cll,
      :max_fall)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hls Akamai Settings
    #
    # @note When making an API call, you may pass HlsAkamaiSettings
    #   data as a hash:
    #
    #       {
    #         connection_retry_interval: 1,
    #         filecache_duration: 1,
    #         http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #         num_retries: 1,
    #         restart_delay: 1,
    #         salt: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if
    #   the connection is lost.
    #   @return [Integer]
    #
    # @!attribute [rw] filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #   @return [Integer]
    #
    # @!attribute [rw] http_transfer_mode
    #   Specify whether or not to use chunked transfer encoding to Akamai.
    #   User should contact Akamai to enable this feature.
    #   @return [String]
    #
    # @!attribute [rw] num_retries
    #   Number of retry attempts that will be made before the Live Event is
    #   put into an error state.
    #   @return [Integer]
    #
    # @!attribute [rw] restart_delay
    #   If a streaming output fails, number of seconds to wait until a
    #   restart is initiated. A value of 0 means never restart.
    #   @return [Integer]
    #
    # @!attribute [rw] salt
    #   Salt for authenticated Akamai.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   Token parameter for authenticated akamai. If not specified, \_gda\_
    #   is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/HlsAkamaiSettings AWS API Documentation
    #
    class HlsAkamaiSettings < Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :http_transfer_mode,
      :num_retries,
      :restart_delay,
      :salt,
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hls Basic Put Settings
    #
    # @note When making an API call, you may pass HlsBasicPutSettings
    #   data as a hash:
    #
    #       {
    #         connection_retry_interval: 1,
    #         filecache_duration: 1,
    #         num_retries: 1,
    #         restart_delay: 1,
    #       }
    #
    # @!attribute [rw] connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if
    #   the connection is lost.
    #   @return [Integer]
    #
    # @!attribute [rw] filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #   @return [Integer]
    #
    # @!attribute [rw] num_retries
    #   Number of retry attempts that will be made before the Live Event is
    #   put into an error state.
    #   @return [Integer]
    #
    # @!attribute [rw] restart_delay
    #   If a streaming output fails, number of seconds to wait until a
    #   restart is initiated. A value of 0 means never restart.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/HlsBasicPutSettings AWS API Documentation
    #
    class HlsBasicPutSettings < Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :num_retries,
      :restart_delay)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hls Cdn Settings
    #
    # @note When making an API call, you may pass HlsCdnSettings
    #   data as a hash:
    #
    #       {
    #         hls_akamai_settings: {
    #           connection_retry_interval: 1,
    #           filecache_duration: 1,
    #           http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #           num_retries: 1,
    #           restart_delay: 1,
    #           salt: "__string",
    #           token: "__string",
    #         },
    #         hls_basic_put_settings: {
    #           connection_retry_interval: 1,
    #           filecache_duration: 1,
    #           num_retries: 1,
    #           restart_delay: 1,
    #         },
    #         hls_media_store_settings: {
    #           connection_retry_interval: 1,
    #           filecache_duration: 1,
    #           media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #           num_retries: 1,
    #           restart_delay: 1,
    #         },
    #         hls_webdav_settings: {
    #           connection_retry_interval: 1,
    #           filecache_duration: 1,
    #           http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #           num_retries: 1,
    #           restart_delay: 1,
    #         },
    #       }
    #
    # @!attribute [rw] hls_akamai_settings
    #   Hls Akamai Settings
    #   @return [Types::HlsAkamaiSettings]
    #
    # @!attribute [rw] hls_basic_put_settings
    #   Hls Basic Put Settings
    #   @return [Types::HlsBasicPutSettings]
    #
    # @!attribute [rw] hls_media_store_settings
    #   Hls Media Store Settings
    #   @return [Types::HlsMediaStoreSettings]
    #
    # @!attribute [rw] hls_webdav_settings
    #   Hls Webdav Settings
    #   @return [Types::HlsWebdavSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/HlsCdnSettings AWS API Documentation
    #
    class HlsCdnSettings < Struct.new(
      :hls_akamai_settings,
      :hls_basic_put_settings,
      :hls_media_store_settings,
      :hls_webdav_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hls Group Settings
    #
    # @note When making an API call, you may pass HlsGroupSettings
    #   data as a hash:
    #
    #       {
    #         ad_markers: ["ADOBE"], # accepts ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
    #         base_url_content: "__string",
    #         base_url_content_1: "__string",
    #         base_url_manifest: "__string",
    #         base_url_manifest_1: "__string",
    #         caption_language_mappings: [
    #           {
    #             caption_channel: 1, # required
    #             language_code: "__stringMin3Max3", # required
    #             language_description: "__stringMin1", # required
    #           },
    #         ],
    #         caption_language_setting: "INSERT", # accepts INSERT, NONE, OMIT
    #         client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #         codec_specification: "RFC_4281", # accepts RFC_4281, RFC_6381
    #         constant_iv: "__stringMin32Max32",
    #         destination: { # required
    #           destination_ref_id: "__string",
    #         },
    #         directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #         encryption_type: "AES128", # accepts AES128, SAMPLE_AES
    #         hls_cdn_settings: {
    #           hls_akamai_settings: {
    #             connection_retry_interval: 1,
    #             filecache_duration: 1,
    #             http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #             num_retries: 1,
    #             restart_delay: 1,
    #             salt: "__string",
    #             token: "__string",
    #           },
    #           hls_basic_put_settings: {
    #             connection_retry_interval: 1,
    #             filecache_duration: 1,
    #             num_retries: 1,
    #             restart_delay: 1,
    #           },
    #           hls_media_store_settings: {
    #             connection_retry_interval: 1,
    #             filecache_duration: 1,
    #             media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #             num_retries: 1,
    #             restart_delay: 1,
    #           },
    #           hls_webdav_settings: {
    #             connection_retry_interval: 1,
    #             filecache_duration: 1,
    #             http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #             num_retries: 1,
    #             restart_delay: 1,
    #           },
    #         },
    #         hls_id_3_segment_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #         i_frame_only_playlists: "DISABLED", # accepts DISABLED, STANDARD
    #         index_n_segments: 1,
    #         input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #         iv_in_manifest: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #         iv_source: "EXPLICIT", # accepts EXPLICIT, FOLLOWS_SEGMENT_NUMBER
    #         keep_segments: 1,
    #         key_format: "__string",
    #         key_format_versions: "__string",
    #         key_provider_settings: {
    #           static_key_settings: {
    #             key_provider_server: {
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             static_key_value: "__stringMin32Max32", # required
    #           },
    #         },
    #         manifest_compression: "GZIP", # accepts GZIP, NONE
    #         manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #         min_segment_length: 1,
    #         mode: "LIVE", # accepts LIVE, VOD
    #         output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY, VARIANT_MANIFESTS_AND_SEGMENTS
    #         program_date_time: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #         program_date_time_period: 1,
    #         redundant_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #         segment_length: 1,
    #         segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #         segments_per_subdirectory: 1,
    #         stream_inf_resolution: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #         timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #         timed_metadata_id_3_period: 1,
    #         timestamp_delta_milliseconds: 1,
    #         ts_file_mode: "SEGMENTED_FILES", # accepts SEGMENTED_FILES, SINGLE_FILE
    #       }
    #
    # @!attribute [rw] ad_markers
    #   Choose one or more ad marker types to pass SCTE35 signals through to
    #   this group of Apple HLS outputs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] base_url_content
    #   A partial URI prefix that will be prepended to each output in the
    #   media .m3u8 file. Can be used if base manifest is delivered from a
    #   different URL than the main .m3u8 file.
    #   @return [String]
    #
    # @!attribute [rw] base_url_content_1
    #   Optional. One value per output group. This field is required only if
    #   you are completing Base URL content A, and the downstream system has
    #   notified you that the media files for pipeline 1 of all outputs are
    #   in a location different from the media files for pipeline 0.
    #   @return [String]
    #
    # @!attribute [rw] base_url_manifest
    #   A partial URI prefix that will be prepended to each output in the
    #   media .m3u8 file. Can be used if base manifest is delivered from a
    #   different URL than the main .m3u8 file.
    #   @return [String]
    #
    # @!attribute [rw] base_url_manifest_1
    #   Optional. One value per output group. Complete this field only if
    #   you are completing Base URL manifest A, and the downstream system
    #   has notified you that the child manifest files for pipeline 1 of all
    #   outputs are in a location different from the child manifest files
    #   for pipeline 0.
    #   @return [String]
    #
    # @!attribute [rw] caption_language_mappings
    #   Mapping of up to 4 caption channels to caption languages. Is only
    #   meaningful if captionLanguageSetting is set to "insert".
    #   @return [Array<Types::CaptionLanguageMapping>]
    #
    # @!attribute [rw] caption_language_setting
    #   Applies only to 608 Embedded output captions. insert: Include
    #   CLOSED-CAPTIONS lines in the manifest. Specify at least one language
    #   in the CC1 Language Code field. One CLOSED-CAPTION line is added for
    #   each Language Code you specify. Make sure to specify the languages
    #   in the order in which they appear in the original source (if the
    #   source is embedded format) or the order of the caption selectors (if
    #   the source is other than embedded). Otherwise, languages in the
    #   manifest will not match up properly with the output captions. none:
    #   Include CLOSED-CAPTIONS=NONE line in the manifest. omit: Omit any
    #   CLOSED-CAPTIONS line from the manifest.
    #   @return [String]
    #
    # @!attribute [rw] client_cache
    #   When set to "disabled", sets the #EXT-X-ALLOW-CACHE:no tag in the
    #   manifest, which prevents clients from saving media segments for
    #   later replay.
    #   @return [String]
    #
    # @!attribute [rw] codec_specification
    #   Specification to use (RFC-6381 or the default RFC-4281) during m3u8
    #   playlist generation.
    #   @return [String]
    #
    # @!attribute [rw] constant_iv
    #   For use with encryptionType. This is a 128-bit, 16-byte hex value
    #   represented by a 32-character text string. If ivSource is set to
    #   "explicit" then this parameter is required and is used as the IV
    #   for encryption.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   A directory or HTTP destination for the HLS segments, manifest
    #   files, and encryption keys (if enabled).
    #   @return [Types::OutputLocationRef]
    #
    # @!attribute [rw] directory_structure
    #   Place segments in subdirectories.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   Encrypts the segments with the given encryption scheme. Exclude this
    #   parameter if no encryption is desired.
    #   @return [String]
    #
    # @!attribute [rw] hls_cdn_settings
    #   Parameters that control interactions with the CDN.
    #   @return [Types::HlsCdnSettings]
    #
    # @!attribute [rw] hls_id_3_segment_tagging
    #   State of HLS ID3 Segment Tagging
    #   @return [String]
    #
    # @!attribute [rw] i_frame_only_playlists
    #   DISABLED: Do not create an I-frame-only manifest, but do create the
    #   master and media manifests (according to the Output Selection
    #   field). STANDARD: Create an I-frame-only manifest for each output
    #   that contains video, as well as the other manifests (according to
    #   the Output Selection field). The I-frame manifest contains a
    #   #EXT-X-I-FRAMES-ONLY tag to indicate it is I-frame only, and one or
    #   more #EXT-X-BYTERANGE entries identifying the I-frame position. For
    #   example, #EXT-X-BYTERANGE:160364@1461888"
    #   @return [String]
    #
    # @!attribute [rw] index_n_segments
    #   Applies only if Mode field is LIVE. Specifies the maximum number of
    #   segments in the media manifest file. After this maximum, older
    #   segments are removed from the media manifest. This number must be
    #   smaller than the number in the Keep Segments field.
    #   @return [Integer]
    #
    # @!attribute [rw] input_loss_action
    #   Parameter that control output group behavior on input loss.
    #   @return [String]
    #
    # @!attribute [rw] iv_in_manifest
    #   For use with encryptionType. The IV (Initialization Vector) is a
    #   128-bit number used in conjunction with the key for encrypting
    #   blocks. If set to "include", IV is listed in the manifest,
    #   otherwise the IV is not in the manifest.
    #   @return [String]
    #
    # @!attribute [rw] iv_source
    #   For use with encryptionType. The IV (Initialization Vector) is a
    #   128-bit number used in conjunction with the key for encrypting
    #   blocks. If this setting is "followsSegmentNumber", it will cause
    #   the IV to change every segment (to match the segment number). If
    #   this is set to "explicit", you must enter a constantIv value.
    #   @return [String]
    #
    # @!attribute [rw] keep_segments
    #   Applies only if Mode field is LIVE. Specifies the number of media
    #   segments to retain in the destination directory. This number should
    #   be bigger than indexNSegments (Num segments). We recommend (value =
    #   (2 x indexNsegments) + 1). If this "keep segments" number is too
    #   low, the following might happen: the player is still reading a media
    #   manifest file that lists this segment, but that segment has been
    #   removed from the destination directory (as directed by
    #   indexNSegments). This situation would result in a 404 HTTP error on
    #   the player.
    #   @return [Integer]
    #
    # @!attribute [rw] key_format
    #   The value specifies how the key is represented in the resource
    #   identified by the URI. If parameter is absent, an implicit value of
    #   "identity" is used. A reverse DNS string can also be given.
    #   @return [String]
    #
    # @!attribute [rw] key_format_versions
    #   Either a single positive integer version value or a slash delimited
    #   list of version values (1/2/3).
    #   @return [String]
    #
    # @!attribute [rw] key_provider_settings
    #   The key provider settings.
    #   @return [Types::KeyProviderSettings]
    #
    # @!attribute [rw] manifest_compression
    #   When set to gzip, compresses HLS playlist.
    #   @return [String]
    #
    # @!attribute [rw] manifest_duration_format
    #   Indicates whether the output manifest should use floating point or
    #   integer values for segment duration.
    #   @return [String]
    #
    # @!attribute [rw] min_segment_length
    #   When set, minimumSegmentLength is enforced by looking ahead and back
    #   within the specified range for a nearby avail and extending the
    #   segment size if needed.
    #   @return [Integer]
    #
    # @!attribute [rw] mode
    #   If "vod", all segments are indexed and kept permanently in the
    #   destination and manifest. If "live", only the number segments
    #   specified in keepSegments and indexNSegments are kept; newer
    #   segments replace older segments, which may prevent players from
    #   rewinding all the way to the beginning of the event. VOD mode uses
    #   HLS EXT-X-PLAYLIST-TYPE of EVENT while the channel is running,
    #   converting it to a "VOD" type manifest on completion of the
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] output_selection
    #   MANIFESTS\_AND\_SEGMENTS: Generates manifests (master manifest, if
    #   applicable, and media manifests) for this output group.
    #   VARIANT\_MANIFESTS\_AND\_SEGMENTS: Generates media manifests for
    #   this output group, but not a master manifest. SEGMENTS\_ONLY: Does
    #   not generate any manifests for this output group.
    #   @return [String]
    #
    # @!attribute [rw] program_date_time
    #   Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest
    #   files. The value is calculated as follows: either the program date
    #   and time are initialized using the input timecode source, or the
    #   time is initialized using the input timecode source and the date is
    #   initialized using the timestampOffset.
    #   @return [String]
    #
    # @!attribute [rw] program_date_time_period
    #   Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] redundant_manifest
    #   ENABLED: The master manifest (.m3u8 file) for each pipeline includes
    #   information about both pipelines: first its own media files, then
    #   the media files of the other pipeline. This feature allows playout
    #   device that support stale manifest detection to switch from one
    #   manifest to the other, when the current manifest seems to be stale.
    #   There are still two destinations and two master manifests, but both
    #   master manifests reference the media files from both pipelines.
    #   DISABLED: The master manifest (.m3u8 file) for each pipeline
    #   includes information about its own pipeline only. For an HLS output
    #   group with MediaPackage as the destination, the DISABLED behavior is
    #   always followed. MediaPackage regenerates the manifests it serves to
    #   players so a redundant manifest from MediaLive is irrelevant.
    #   @return [String]
    #
    # @!attribute [rw] segment_length
    #   Length of MPEG-2 Transport Stream segments to create (in seconds).
    #   Note that segments will end on the next keyframe after this number
    #   of seconds, so actual segment length may be longer.
    #   @return [Integer]
    #
    # @!attribute [rw] segmentation_mode
    #   useInputSegmentation has been deprecated. The configured segment
    #   size is always used.
    #   @return [String]
    #
    # @!attribute [rw] segments_per_subdirectory
    #   Number of segments to write to a subdirectory before starting a new
    #   one. directoryStructure must be subdirectoryPerStream for this
    #   setting to have an effect.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_inf_resolution
    #   Include or exclude RESOLUTION attribute for video in
    #   EXT-X-STREAM-INF tag of variant manifest.
    #   @return [String]
    #
    # @!attribute [rw] timed_metadata_id_3_frame
    #   Indicates ID3 frame that has the timecode.
    #   @return [String]
    #
    # @!attribute [rw] timed_metadata_id_3_period
    #   Timed Metadata interval in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] timestamp_delta_milliseconds
    #   Provides an extra millisecond delta offset to fine tune the
    #   timestamps.
    #   @return [Integer]
    #
    # @!attribute [rw] ts_file_mode
    #   SEGMENTED\_FILES: Emit the program as segments - multiple .ts media
    #   files. SINGLE\_FILE: Applies only if Mode field is VOD. Emit the
    #   program as a single .ts media file. The media manifest includes
    #   #EXT-X-BYTERANGE tags to index segments for playback. A typical use
    #   for this value is when sending the output to AWS Elemental
    #   MediaConvert, which can accept only a single media file. Playback
    #   while the channel is running is not guaranteed due to HTTP server
    #   caching.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/HlsGroupSettings AWS API Documentation
    #
    class HlsGroupSettings < Struct.new(
      :ad_markers,
      :base_url_content,
      :base_url_content_1,
      :base_url_manifest,
      :base_url_manifest_1,
      :caption_language_mappings,
      :caption_language_setting,
      :client_cache,
      :codec_specification,
      :constant_iv,
      :destination,
      :directory_structure,
      :encryption_type,
      :hls_cdn_settings,
      :hls_id_3_segment_tagging,
      :i_frame_only_playlists,
      :index_n_segments,
      :input_loss_action,
      :iv_in_manifest,
      :iv_source,
      :keep_segments,
      :key_format,
      :key_format_versions,
      :key_provider_settings,
      :manifest_compression,
      :manifest_duration_format,
      :min_segment_length,
      :mode,
      :output_selection,
      :program_date_time,
      :program_date_time_period,
      :redundant_manifest,
      :segment_length,
      :segmentation_mode,
      :segments_per_subdirectory,
      :stream_inf_resolution,
      :timed_metadata_id_3_frame,
      :timed_metadata_id_3_period,
      :timestamp_delta_milliseconds,
      :ts_file_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for the action to insert a user-defined ID3 tag in each HLS
    # segment
    #
    # @note When making an API call, you may pass HlsId3SegmentTaggingScheduleActionSettings
    #   data as a hash:
    #
    #       {
    #         tag: "__string", # required
    #       }
    #
    # @!attribute [rw] tag
    #   ID3 tag to insert into each segment. Supports special keyword
    #   identifiers to substitute in segment-related values.\\nSupported
    #   keyword identifiers:
    #   https://docs.aws.amazon.com/medialive/latest/ug/variable-data-identifiers.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/HlsId3SegmentTaggingScheduleActionSettings AWS API Documentation
    #
    class HlsId3SegmentTaggingScheduleActionSettings < Struct.new(
      :tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hls Input Settings
    #
    # @note When making an API call, you may pass HlsInputSettings
    #   data as a hash:
    #
    #       {
    #         bandwidth: 1,
    #         buffer_segments: 1,
    #         retries: 1,
    #         retry_interval: 1,
    #       }
    #
    # @!attribute [rw] bandwidth
    #   When specified the HLS stream with the m3u8 BANDWIDTH that most
    #   closely matches this value will be chosen, otherwise the highest
    #   bandwidth stream in the m3u8 will be chosen. The bitrate is
    #   specified in bits per second, as in an HLS manifest.
    #   @return [Integer]
    #
    # @!attribute [rw] buffer_segments
    #   When specified, reading of the HLS input will begin this many buffer
    #   segments from the end (most recently written segment). When not
    #   specified, the HLS input will begin with the first segment specified
    #   in the m3u8.
    #   @return [Integer]
    #
    # @!attribute [rw] retries
    #   The number of consecutive times that attempts to read a manifest or
    #   segment must fail before the input is considered unavailable.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_interval
    #   The number of seconds between retries when an attempt to read a
    #   manifest or segment fails.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/HlsInputSettings AWS API Documentation
    #
    class HlsInputSettings < Struct.new(
      :bandwidth,
      :buffer_segments,
      :retries,
      :retry_interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hls Media Store Settings
    #
    # @note When making an API call, you may pass HlsMediaStoreSettings
    #   data as a hash:
    #
    #       {
    #         connection_retry_interval: 1,
    #         filecache_duration: 1,
    #         media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #         num_retries: 1,
    #         restart_delay: 1,
    #       }
    #
    # @!attribute [rw] connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if
    #   the connection is lost.
    #   @return [Integer]
    #
    # @!attribute [rw] filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #   @return [Integer]
    #
    # @!attribute [rw] media_store_storage_class
    #   When set to temporal, output files are stored in non-persistent
    #   memory for faster reading and writing.
    #   @return [String]
    #
    # @!attribute [rw] num_retries
    #   Number of retry attempts that will be made before the Live Event is
    #   put into an error state.
    #   @return [Integer]
    #
    # @!attribute [rw] restart_delay
    #   If a streaming output fails, number of seconds to wait until a
    #   restart is initiated. A value of 0 means never restart.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/HlsMediaStoreSettings AWS API Documentation
    #
    class HlsMediaStoreSettings < Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :media_store_storage_class,
      :num_retries,
      :restart_delay)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hls Output Settings
    #
    # @note When making an API call, you may pass HlsOutputSettings
    #   data as a hash:
    #
    #       {
    #         h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #         hls_settings: { # required
    #           audio_only_hls_settings: {
    #             audio_group_id: "__string",
    #             audio_only_image: {
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #             segment_type: "AAC", # accepts AAC, FMP4
    #           },
    #           fmp_4_hls_settings: {
    #             audio_rendition_sets: "__string",
    #             nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #             timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #           },
    #           standard_hls_settings: {
    #             audio_rendition_sets: "__string",
    #             m3u_8_settings: { # required
    #               audio_frames_per_pes: 1,
    #               audio_pids: "__string",
    #               ecm_pid: "__string",
    #               nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #               pat_interval: 1,
    #               pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #               pcr_period: 1,
    #               pcr_pid: "__string",
    #               pmt_interval: 1,
    #               pmt_pid: "__string",
    #               program_num: 1,
    #               scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #               scte_35_pid: "__string",
    #               timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #               timed_metadata_pid: "__string",
    #               transport_stream_id: 1,
    #               video_pid: "__string",
    #             },
    #           },
    #         },
    #         name_modifier: "__stringMin1",
    #         segment_modifier: "__string",
    #       }
    #
    # @!attribute [rw] h265_packaging_type
    #   Only applicable when this output is referencing an H.265 video
    #   description. Specifies whether MP4 segments should be packaged as
    #   HEV1 or HVC1.
    #   @return [String]
    #
    # @!attribute [rw] hls_settings
    #   Settings regarding the underlying stream. These settings are
    #   different for audio-only outputs.
    #   @return [Types::HlsSettings]
    #
    # @!attribute [rw] name_modifier
    #   String concatenated to the end of the destination filename. Accepts
    #   \\"Format Identifiers\\":#formatIdentifierParameters.
    #   @return [String]
    #
    # @!attribute [rw] segment_modifier
    #   String concatenated to end of segment filenames.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/HlsOutputSettings AWS API Documentation
    #
    class HlsOutputSettings < Struct.new(
      :h265_packaging_type,
      :hls_settings,
      :name_modifier,
      :segment_modifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hls Settings
    #
    # @note When making an API call, you may pass HlsSettings
    #   data as a hash:
    #
    #       {
    #         audio_only_hls_settings: {
    #           audio_group_id: "__string",
    #           audio_only_image: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #           segment_type: "AAC", # accepts AAC, FMP4
    #         },
    #         fmp_4_hls_settings: {
    #           audio_rendition_sets: "__string",
    #           nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #           timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #         },
    #         standard_hls_settings: {
    #           audio_rendition_sets: "__string",
    #           m3u_8_settings: { # required
    #             audio_frames_per_pes: 1,
    #             audio_pids: "__string",
    #             ecm_pid: "__string",
    #             nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #             pat_interval: 1,
    #             pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #             pcr_period: 1,
    #             pcr_pid: "__string",
    #             pmt_interval: 1,
    #             pmt_pid: "__string",
    #             program_num: 1,
    #             scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #             scte_35_pid: "__string",
    #             timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #             timed_metadata_pid: "__string",
    #             transport_stream_id: 1,
    #             video_pid: "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] audio_only_hls_settings
    #   Audio Only Hls Settings
    #   @return [Types::AudioOnlyHlsSettings]
    #
    # @!attribute [rw] fmp_4_hls_settings
    #   Fmp4 Hls Settings
    #   @return [Types::Fmp4HlsSettings]
    #
    # @!attribute [rw] standard_hls_settings
    #   Standard Hls Settings
    #   @return [Types::StandardHlsSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/HlsSettings AWS API Documentation
    #
    class HlsSettings < Struct.new(
      :audio_only_hls_settings,
      :fmp_4_hls_settings,
      :standard_hls_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for the action to emit HLS metadata
    #
    # @note When making an API call, you may pass HlsTimedMetadataScheduleActionSettings
    #   data as a hash:
    #
    #       {
    #         id_3: "__string", # required
    #       }
    #
    # @!attribute [rw] id_3
    #   Base64 string formatted according to the ID3 specification:
    #   http://id3.org/id3v2.4.0-structure
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/HlsTimedMetadataScheduleActionSettings AWS API Documentation
    #
    class HlsTimedMetadataScheduleActionSettings < Struct.new(
      :id_3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hls Webdav Settings
    #
    # @note When making an API call, you may pass HlsWebdavSettings
    #   data as a hash:
    #
    #       {
    #         connection_retry_interval: 1,
    #         filecache_duration: 1,
    #         http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #         num_retries: 1,
    #         restart_delay: 1,
    #       }
    #
    # @!attribute [rw] connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if
    #   the connection is lost.
    #   @return [Integer]
    #
    # @!attribute [rw] filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #   @return [Integer]
    #
    # @!attribute [rw] http_transfer_mode
    #   Specify whether or not to use chunked transfer encoding to WebDAV.
    #   @return [String]
    #
    # @!attribute [rw] num_retries
    #   Number of retry attempts that will be made before the Live Event is
    #   put into an error state.
    #   @return [Integer]
    #
    # @!attribute [rw] restart_delay
    #   If a streaming output fails, number of seconds to wait until a
    #   restart is initiated. A value of 0 means never restart.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/HlsWebdavSettings AWS API Documentation
    #
    class HlsWebdavSettings < Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :http_transfer_mode,
      :num_retries,
      :restart_delay)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings to configure an action so that it occurs as soon as possible.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ImmediateModeScheduleActionStartSettings AWS API Documentation
    #
    class ImmediateModeScheduleActionStartSettings < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The Unique ARN of the input (generated, immutable).
    #   @return [String]
    #
    # @!attribute [rw] attached_channels
    #   A list of channel IDs that that input is attached to (currently an
    #   input can only be attached to one channel).
    #   @return [Array<String>]
    #
    # @!attribute [rw] destinations
    #   A list of the destinations of the input (PUSH-type).
    #   @return [Array<Types::InputDestination>]
    #
    # @!attribute [rw] id
    #   The generated ID of the input (unique for user account, immutable).
    #   @return [String]
    #
    # @!attribute [rw] input_class
    #   STANDARD - MediaLive expects two sources to be connected to this
    #   input. If the channel is also STANDARD, both sources will be
    #   ingested. If the channel is SINGLE\_PIPELINE, only the first source
    #   will be ingested; the second source will always be ignored, even if
    #   the first source fails. SINGLE\_PIPELINE - You can connect only one
    #   source to this input. If the ChannelClass is also SINGLE\_PIPELINE,
    #   this value is valid. If the ChannelClass is STANDARD, this value is
    #   not valid because the channel requires two sources in the input.
    #   @return [String]
    #
    # @!attribute [rw] input_devices
    #   Settings for the input devices.
    #   @return [Array<Types::InputDeviceSettings>]
    #
    # @!attribute [rw] input_source_type
    #   Certain pull input sources can be dynamic, meaning that they can
    #   have their URL's dynamically changes during input switch actions.
    #   Presently, this functionality only works with MP4\_FILE inputs.
    #   @return [String]
    #
    # @!attribute [rw] media_connect_flows
    #   A list of MediaConnect Flows for this input.
    #   @return [Array<Types::MediaConnectFlow>]
    #
    # @!attribute [rw] name
    #   The user-assigned name (This is a mutable value).
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role this input assumes during
    #   and after creation.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   A list of IDs for all the Input Security Groups attached to the
    #   input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sources
    #   A list of the sources of the input (PULL-type).
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Input AWS API Documentation
    #
    class Input < Struct.new(
      :arn,
      :attached_channels,
      :destinations,
      :id,
      :input_class,
      :input_devices,
      :input_source_type,
      :media_connect_flows,
      :name,
      :role_arn,
      :security_groups,
      :sources,
      :state,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass InputAttachment
    #   data as a hash:
    #
    #       {
    #         automatic_input_failover_settings: {
    #           input_preference: "EQUAL_INPUT_PREFERENCE", # accepts EQUAL_INPUT_PREFERENCE, PRIMARY_INPUT_PREFERRED
    #           secondary_input_id: "__string", # required
    #         },
    #         input_attachment_name: "__string",
    #         input_id: "__string",
    #         input_settings: {
    #           audio_selectors: [
    #             {
    #               name: "__stringMin1", # required
    #               selector_settings: {
    #                 audio_language_selection: {
    #                   language_code: "__string", # required
    #                   language_selection_policy: "LOOSE", # accepts LOOSE, STRICT
    #                 },
    #                 audio_pid_selection: {
    #                   pid: 1, # required
    #                 },
    #                 audio_track_selection: {
    #                   tracks: [ # required
    #                     {
    #                       track: 1, # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #           ],
    #           caption_selectors: [
    #             {
    #               language_code: "__string",
    #               name: "__stringMin1", # required
    #               selector_settings: {
    #                 ancillary_source_settings: {
    #                   source_ancillary_channel_number: 1,
    #                 },
    #                 arib_source_settings: {
    #                 },
    #                 dvb_sub_source_settings: {
    #                   pid: 1,
    #                 },
    #                 embedded_source_settings: {
    #                   convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                   scte_20_detection: "AUTO", # accepts AUTO, OFF
    #                   source_608_channel_number: 1,
    #                   source_608_track_number: 1,
    #                 },
    #                 scte_20_source_settings: {
    #                   convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                   source_608_channel_number: 1,
    #                 },
    #                 scte_27_source_settings: {
    #                   pid: 1,
    #                 },
    #                 teletext_source_settings: {
    #                   page_number: "__string",
    #                 },
    #               },
    #             },
    #           ],
    #           deblock_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           denoise_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           filter_strength: 1,
    #           input_filter: "AUTO", # accepts AUTO, DISABLED, FORCED
    #           network_input_settings: {
    #             hls_input_settings: {
    #               bandwidth: 1,
    #               buffer_segments: 1,
    #               retries: 1,
    #               retry_interval: 1,
    #             },
    #             server_validation: "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", # accepts CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY
    #           },
    #           smpte_2038_data_preference: "IGNORE", # accepts IGNORE, PREFER
    #           source_end_behavior: "CONTINUE", # accepts CONTINUE, LOOP
    #           video_selector: {
    #             color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709
    #             color_space_usage: "FALLBACK", # accepts FALLBACK, FORCE
    #             selector_settings: {
    #               video_selector_pid: {
    #                 pid: 1,
    #               },
    #               video_selector_program_id: {
    #                 program_id: 1,
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] automatic_input_failover_settings
    #   User-specified settings for defining what the conditions are for
    #   declaring the input unhealthy and failing over to a different input.
    #   @return [Types::AutomaticInputFailoverSettings]
    #
    # @!attribute [rw] input_attachment_name
    #   User-specified name for the attachment. This is required if the user
    #   wants to use this input in an input switch action.
    #   @return [String]
    #
    # @!attribute [rw] input_id
    #   The ID of the input
    #   @return [String]
    #
    # @!attribute [rw] input_settings
    #   Settings of an input (caption selector, etc.)
    #   @return [Types::InputSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputAttachment AWS API Documentation
    #
    class InputAttachment < Struct.new(
      :automatic_input_failover_settings,
      :input_attachment_name,
      :input_id,
      :input_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input Channel Level
    #
    # @note When making an API call, you may pass InputChannelLevel
    #   data as a hash:
    #
    #       {
    #         gain: 1, # required
    #         input_channel: 1, # required
    #       }
    #
    # @!attribute [rw] gain
    #   Remixing value. Units are in dB and acceptable values are within the
    #   range from -60 (mute) and 6 dB.
    #   @return [Integer]
    #
    # @!attribute [rw] input_channel
    #   The index of the input channel used as a source.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputChannelLevel AWS API Documentation
    #
    class InputChannelLevel < Struct.new(
      :gain,
      :input_channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings to let you create a clip of the file input, in order to set
    # up the input to ingest only a portion of the file.
    #
    # @note When making an API call, you may pass InputClippingSettings
    #   data as a hash:
    #
    #       {
    #         input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #         start_timecode: {
    #           timecode: "__string",
    #         },
    #         stop_timecode: {
    #           last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #           timecode: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] input_timecode_source
    #   The source of the timecodes in the source being clipped.
    #   @return [String]
    #
    # @!attribute [rw] start_timecode
    #   Settings to identify the start of the clip.
    #   @return [Types::StartTimecode]
    #
    # @!attribute [rw] stop_timecode
    #   Settings to identify the end of the clip.
    #   @return [Types::StopTimecode]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputClippingSettings AWS API Documentation
    #
    class InputClippingSettings < Struct.new(
      :input_timecode_source,
      :start_timecode,
      :stop_timecode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a PUSH type input.
    #
    # @!attribute [rw] ip
    #   The system-generated static IP address of endpoint. It remains fixed
    #   for the lifetime of the input.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number for the input.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   This represents the endpoint that the customer stream will be pushed
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   The properties for a VPC type input destination.
    #   @return [Types::InputDestinationVpc]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputDestination AWS API Documentation
    #
    class InputDestination < Struct.new(
      :ip,
      :port,
      :url,
      :vpc)
      SENSITIVE = []
      include Aws::Structure
    end

    # Endpoint settings for a PUSH type input.
    #
    # @note When making an API call, you may pass InputDestinationRequest
    #   data as a hash:
    #
    #       {
    #         stream_name: "__string",
    #       }
    #
    # @!attribute [rw] stream_name
    #   A unique name for the location the RTMP stream is being pushed to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputDestinationRequest AWS API Documentation
    #
    class InputDestinationRequest < Struct.new(
      :stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties for a VPC type input destination.
    #
    # @!attribute [rw] availability_zone
    #   The availability zone of the Input destination.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface ID of the Input destination in the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputDestinationVpc AWS API Documentation
    #
    class InputDestinationVpc < Struct.new(
      :availability_zone,
      :network_interface_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An input device.
    #
    # @!attribute [rw] arn
    #   The unique ARN of the input device.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection between the input device and AWS.
    #   @return [String]
    #
    # @!attribute [rw] device_settings_sync_state
    #   The status of the action to synchronize the device configuration. If
    #   you change the configuration of the input device (for example, the
    #   maximum bitrate), MediaLive sends the new data to the device. The
    #   device might not update itself immediately. SYNCED means the device
    #   has updated its configuration. SYNCING means that it has not updated
    #   its configuration.
    #   @return [String]
    #
    # @!attribute [rw] hd_device_settings
    #   Settings that describe an input device that is type HD.
    #   @return [Types::InputDeviceHdSettings]
    #
    # @!attribute [rw] id
    #   The unique ID of the input device.
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   The network MAC address of the input device.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that you specify for the input device.
    #   @return [String]
    #
    # @!attribute [rw] network_settings
    #   The network settings for the input device.
    #   @return [Types::InputDeviceNetworkSettings]
    #
    # @!attribute [rw] serial_number
    #   The unique serial number of the input device.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the input device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputDevice AWS API Documentation
    #
    class InputDevice < Struct.new(
      :arn,
      :connection_state,
      :device_settings_sync_state,
      :hd_device_settings,
      :id,
      :mac_address,
      :name,
      :network_settings,
      :serial_number,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configurable settings for the input device.
    #
    # @note When making an API call, you may pass InputDeviceConfigurableSettings
    #   data as a hash:
    #
    #       {
    #         configured_input: "AUTO", # accepts AUTO, HDMI, SDI
    #         max_bitrate: 1,
    #       }
    #
    # @!attribute [rw] configured_input
    #   The input source that you want to use. If the device has a source
    #   connected to only one of its input ports, or if you don't care
    #   which source the device sends, specify Auto. If the device has
    #   sources connected to both its input ports, and you want to use a
    #   specific source, specify the source.
    #   @return [String]
    #
    # @!attribute [rw] max_bitrate
    #   The maximum bitrate in bits per second. Set a value here to throttle
    #   the bitrate of the source video.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputDeviceConfigurableSettings AWS API Documentation
    #
    class InputDeviceConfigurableSettings < Struct.new(
      :configured_input,
      :max_bitrate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] validation_errors
    #   A collection of validation error responses.
    #   @return [Array<Types::ValidationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputDeviceConfigurationValidationError AWS API Documentation
    #
    class InputDeviceConfigurationValidationError < Struct.new(
      :message,
      :validation_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings that describe the active source from the input device, and
    # the video characteristics of that source.
    #
    # @!attribute [rw] active_input
    #   If you specified Auto as the configured input, specifies which of
    #   the sources is currently active (SDI or HDMI).
    #   @return [String]
    #
    # @!attribute [rw] configured_input
    #   The source at the input device that is currently active. You can
    #   specify this source.
    #   @return [String]
    #
    # @!attribute [rw] device_state
    #   The state of the input device.
    #   @return [String]
    #
    # @!attribute [rw] framerate
    #   The frame rate of the video source.
    #   @return [Float]
    #
    # @!attribute [rw] height
    #   The height of the video source, in pixels.
    #   @return [Integer]
    #
    # @!attribute [rw] max_bitrate
    #   The current maximum bitrate for ingesting this source, in bits per
    #   second. You can specify this maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] scan_type
    #   The scan type of the video source.
    #   @return [String]
    #
    # @!attribute [rw] width
    #   The width of the video source, in pixels.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputDeviceHdSettings AWS API Documentation
    #
    class InputDeviceHdSettings < Struct.new(
      :active_input,
      :configured_input,
      :device_state,
      :framerate,
      :height,
      :max_bitrate,
      :scan_type,
      :width)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network settings for the input device.
    #
    # @!attribute [rw] dns_addresses
    #   The DNS addresses of the input device.
    #   @return [Array<String>]
    #
    # @!attribute [rw] gateway
    #   The network gateway IP address.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the input device.
    #   @return [String]
    #
    # @!attribute [rw] ip_scheme
    #   Specifies whether the input device has been configured (outside of
    #   MediaLive) to use a dynamic IP address assignment (DHCP) or a static
    #   IP address.
    #   @return [String]
    #
    # @!attribute [rw] subnet_mask
    #   The subnet mask of the input device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputDeviceNetworkSettings AWS API Documentation
    #
    class InputDeviceNetworkSettings < Struct.new(
      :dns_addresses,
      :gateway,
      :ip_address,
      :ip_scheme,
      :subnet_mask)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for an input device.
    #
    # @note When making an API call, you may pass InputDeviceRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string",
    #       }
    #
    # @!attribute [rw] id
    #   The unique ID for the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputDeviceRequest AWS API Documentation
    #
    class InputDeviceRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for an input device.
    #
    # @note When making an API call, you may pass InputDeviceSettings
    #   data as a hash:
    #
    #       {
    #         id: "__string",
    #       }
    #
    # @!attribute [rw] id
    #   The unique ID for the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputDeviceSettings AWS API Documentation
    #
    class InputDeviceSettings < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the input device.
    #
    # @!attribute [rw] arn
    #   The unique ARN of the input device.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection between the input device and AWS.
    #   @return [String]
    #
    # @!attribute [rw] device_settings_sync_state
    #   The status of the action to synchronize the device configuration. If
    #   you change the configuration of the input device (for example, the
    #   maximum bitrate), MediaLive sends the new data to the device. The
    #   device might not update itself immediately. SYNCED means the device
    #   has updated its configuration. SYNCING means that it has not updated
    #   its configuration.
    #   @return [String]
    #
    # @!attribute [rw] hd_device_settings
    #   Settings that describe an input device that is type HD.
    #   @return [Types::InputDeviceHdSettings]
    #
    # @!attribute [rw] id
    #   The unique ID of the input device.
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   The network MAC address of the input device.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that you specify for the input device.
    #   @return [String]
    #
    # @!attribute [rw] network_settings
    #   Network settings for the input device.
    #   @return [Types::InputDeviceNetworkSettings]
    #
    # @!attribute [rw] serial_number
    #   The unique serial number of the input device.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the input device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputDeviceSummary AWS API Documentation
    #
    class InputDeviceSummary < Struct.new(
      :arn,
      :connection_state,
      :device_settings_sync_state,
      :hd_device_settings,
      :id,
      :mac_address,
      :name,
      :network_settings,
      :serial_number,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input Location
    #
    # @note When making an API call, you may pass InputLocation
    #   data as a hash:
    #
    #       {
    #         password_param: "__string",
    #         uri: "__string", # required
    #         username: "__string",
    #       }
    #
    # @!attribute [rw] password_param
    #   key used to extract the password from EC2 Parameter store
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   Uniform Resource Identifier - This should be a path to a file
    #   accessible to the Live system (eg. a http:// URI) depending on the
    #   output type. For example, a RTMP destination should have a uri
    #   simliar to: "rtmp://fmsserver/live".
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Username if credentials are required to access a file or publishing
    #   point. This can be either a plaintext username, or a reference to an
    #   AWS parameter store name from which the username can be retrieved.
    #   AWS Parameter store format: "ssm://<parameter name="">"</p>
    #   </parameter>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputLocation AWS API Documentation
    #
    class InputLocation < Struct.new(
      :password_param,
      :uri,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input Loss Behavior
    #
    # @note When making an API call, you may pass InputLossBehavior
    #   data as a hash:
    #
    #       {
    #         black_frame_msec: 1,
    #         input_loss_image_color: "__stringMin6Max6",
    #         input_loss_image_slate: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         input_loss_image_type: "COLOR", # accepts COLOR, SLATE
    #         repeat_frame_msec: 1,
    #       }
    #
    # @!attribute [rw] black_frame_msec
    #   On input loss, the number of milliseconds to substitute black into
    #   the output before switching to the frame specified by
    #   inputLossImageType. A value x, where 0 <= x <= 1,000,000 and a value
    #   of 1,000,000 will be interpreted as infinite.
    #   @return [Integer]
    #
    # @!attribute [rw] input_loss_image_color
    #   When input loss image type is "color" this field specifies the
    #   color to use. Value: 6 hex characters representing the values of
    #   RGB.
    #   @return [String]
    #
    # @!attribute [rw] input_loss_image_slate
    #   When input loss image type is "slate" these fields specify the
    #   parameters for accessing the slate.
    #   @return [Types::InputLocation]
    #
    # @!attribute [rw] input_loss_image_type
    #   Indicates whether to substitute a solid color or a slate into the
    #   output after input loss exceeds blackFrameMsec.
    #   @return [String]
    #
    # @!attribute [rw] repeat_frame_msec
    #   On input loss, the number of milliseconds to repeat the previous
    #   picture before substituting black into the output. A value x, where
    #   0 <= x <= 1,000,000 and a value of 1,000,000 will be interpreted as
    #   infinite.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputLossBehavior AWS API Documentation
    #
    class InputLossBehavior < Struct.new(
      :black_frame_msec,
      :input_loss_image_color,
      :input_loss_image_slate,
      :input_loss_image_type,
      :repeat_frame_msec)
      SENSITIVE = []
      include Aws::Structure
    end

    # Action to prepare an input for a future immediate input switch.
    #
    # @note When making an API call, you may pass InputPrepareScheduleActionSettings
    #   data as a hash:
    #
    #       {
    #         input_attachment_name_reference: "__string",
    #         input_clipping_settings: {
    #           input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #           start_timecode: {
    #             timecode: "__string",
    #           },
    #           stop_timecode: {
    #             last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #             timecode: "__string",
    #           },
    #         },
    #         url_path: ["__string"],
    #       }
    #
    # @!attribute [rw] input_attachment_name_reference
    #   The name of the input attachment that should be prepared by this
    #   action. If no name is provided, the action will stop the most recent
    #   prepare (if any) when activated.
    #   @return [String]
    #
    # @!attribute [rw] input_clipping_settings
    #   Settings to let you create a clip of the file input, in order to set
    #   up the input to ingest only a portion of the file.
    #   @return [Types::InputClippingSettings]
    #
    # @!attribute [rw] url_path
    #   The value for the variable portion of the URL for the dynamic input,
    #   for this instance of the input. Each time you use the same dynamic
    #   input in an input switch action, you can provide a different value,
    #   in order to connect the input to a different content source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputPrepareScheduleActionSettings AWS API Documentation
    #
    class InputPrepareScheduleActionSettings < Struct.new(
      :input_attachment_name_reference,
      :input_clipping_settings,
      :url_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Input Security Group
    #
    # @!attribute [rw] arn
    #   Unique ARN of Input Security Group
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The Id of the Input Security Group
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   The list of inputs currently using this Input Security Group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   The current state of the Input Security Group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] whitelist_rules
    #   Whitelist rules and their sync status
    #   @return [Array<Types::InputWhitelistRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputSecurityGroup AWS API Documentation
    #
    class InputSecurityGroup < Struct.new(
      :arn,
      :id,
      :inputs,
      :state,
      :tags,
      :whitelist_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request of IPv4 CIDR addresses to whitelist in a security group.
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] whitelist_rules
    #   List of IPv4 CIDR addresses to whitelist
    #   @return [Array<Types::InputWhitelistRuleCidr>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputSecurityGroupWhitelistRequest AWS API Documentation
    #
    class InputSecurityGroupWhitelistRequest < Struct.new(
      :tags,
      :whitelist_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Live Event input parameters. There can be multiple inputs in a single
    # Live Event.
    #
    # @note When making an API call, you may pass InputSettings
    #   data as a hash:
    #
    #       {
    #         audio_selectors: [
    #           {
    #             name: "__stringMin1", # required
    #             selector_settings: {
    #               audio_language_selection: {
    #                 language_code: "__string", # required
    #                 language_selection_policy: "LOOSE", # accepts LOOSE, STRICT
    #               },
    #               audio_pid_selection: {
    #                 pid: 1, # required
    #               },
    #               audio_track_selection: {
    #                 tracks: [ # required
    #                   {
    #                     track: 1, # required
    #                   },
    #                 ],
    #               },
    #             },
    #           },
    #         ],
    #         caption_selectors: [
    #           {
    #             language_code: "__string",
    #             name: "__stringMin1", # required
    #             selector_settings: {
    #               ancillary_source_settings: {
    #                 source_ancillary_channel_number: 1,
    #               },
    #               arib_source_settings: {
    #               },
    #               dvb_sub_source_settings: {
    #                 pid: 1,
    #               },
    #               embedded_source_settings: {
    #                 convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                 scte_20_detection: "AUTO", # accepts AUTO, OFF
    #                 source_608_channel_number: 1,
    #                 source_608_track_number: 1,
    #               },
    #               scte_20_source_settings: {
    #                 convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                 source_608_channel_number: 1,
    #               },
    #               scte_27_source_settings: {
    #                 pid: 1,
    #               },
    #               teletext_source_settings: {
    #                 page_number: "__string",
    #               },
    #             },
    #           },
    #         ],
    #         deblock_filter: "DISABLED", # accepts DISABLED, ENABLED
    #         denoise_filter: "DISABLED", # accepts DISABLED, ENABLED
    #         filter_strength: 1,
    #         input_filter: "AUTO", # accepts AUTO, DISABLED, FORCED
    #         network_input_settings: {
    #           hls_input_settings: {
    #             bandwidth: 1,
    #             buffer_segments: 1,
    #             retries: 1,
    #             retry_interval: 1,
    #           },
    #           server_validation: "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", # accepts CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY
    #         },
    #         smpte_2038_data_preference: "IGNORE", # accepts IGNORE, PREFER
    #         source_end_behavior: "CONTINUE", # accepts CONTINUE, LOOP
    #         video_selector: {
    #           color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709
    #           color_space_usage: "FALLBACK", # accepts FALLBACK, FORCE
    #           selector_settings: {
    #             video_selector_pid: {
    #               pid: 1,
    #             },
    #             video_selector_program_id: {
    #               program_id: 1,
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] audio_selectors
    #   Used to select the audio stream to decode for inputs that have
    #   multiple available.
    #   @return [Array<Types::AudioSelector>]
    #
    # @!attribute [rw] caption_selectors
    #   Used to select the caption input to use for inputs that have
    #   multiple available.
    #   @return [Array<Types::CaptionSelector>]
    #
    # @!attribute [rw] deblock_filter
    #   Enable or disable the deblock filter when filtering.
    #   @return [String]
    #
    # @!attribute [rw] denoise_filter
    #   Enable or disable the denoise filter when filtering.
    #   @return [String]
    #
    # @!attribute [rw] filter_strength
    #   Adjusts the magnitude of filtering from 1 (minimal) to 5
    #   (strongest).
    #   @return [Integer]
    #
    # @!attribute [rw] input_filter
    #   Turns on the filter for this input. MPEG-2 inputs have the
    #   deblocking filter enabled by default. 1) auto - filtering will be
    #   applied depending on input type/quality 2) disabled - no filtering
    #   will be applied to the input 3) forced - filtering will be applied
    #   regardless of input type
    #   @return [String]
    #
    # @!attribute [rw] network_input_settings
    #   Input settings.
    #   @return [Types::NetworkInputSettings]
    #
    # @!attribute [rw] smpte_2038_data_preference
    #   Specifies whether to extract applicable ancillary data from a
    #   SMPTE-2038 source in this input. Applicable data types are captions,
    #   timecode, AFD, and SCTE-104 messages. - PREFER: Extract from
    #   SMPTE-2038 if present in this input, otherwise extract from another
    #   source (if any). - IGNORE: Never extract any ancillary data from
    #   SMPTE-2038.
    #   @return [String]
    #
    # @!attribute [rw] source_end_behavior
    #   Loop input if it is a file. This allows a file input to be streamed
    #   indefinitely.
    #   @return [String]
    #
    # @!attribute [rw] video_selector
    #   Informs which video elementary stream to decode for input types that
    #   have multiple available.
    #   @return [Types::VideoSelector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputSettings AWS API Documentation
    #
    class InputSettings < Struct.new(
      :audio_selectors,
      :caption_selectors,
      :deblock_filter,
      :denoise_filter,
      :filter_strength,
      :input_filter,
      :network_input_settings,
      :smpte_2038_data_preference,
      :source_end_behavior,
      :video_selector)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a PULL type input.
    #
    # @!attribute [rw] password_param
    #   The key used to extract the password from EC2 Parameter store.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   This represents the customer's source URL where stream is pulled
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username for the input source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputSource AWS API Documentation
    #
    class InputSource < Struct.new(
      :password_param,
      :url,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for for a PULL type input.
    #
    # @note When making an API call, you may pass InputSourceRequest
    #   data as a hash:
    #
    #       {
    #         password_param: "__string",
    #         url: "__string",
    #         username: "__string",
    #       }
    #
    # @!attribute [rw] password_param
    #   The key used to extract the password from EC2 Parameter store.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   This represents the customer's source URL where stream is pulled
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username for the input source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputSourceRequest AWS API Documentation
    #
    class InputSourceRequest < Struct.new(
      :password_param,
      :url,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass InputSpecification
    #   data as a hash:
    #
    #       {
    #         codec: "MPEG2", # accepts MPEG2, AVC, HEVC
    #         maximum_bitrate: "MAX_10_MBPS", # accepts MAX_10_MBPS, MAX_20_MBPS, MAX_50_MBPS
    #         resolution: "SD", # accepts SD, HD, UHD
    #       }
    #
    # @!attribute [rw] codec
    #   Input codec
    #   @return [String]
    #
    # @!attribute [rw] maximum_bitrate
    #   Maximum input bitrate, categorized coarsely
    #   @return [String]
    #
    # @!attribute [rw] resolution
    #   Input resolution, categorized coarsely
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputSpecification AWS API Documentation
    #
    class InputSpecification < Struct.new(
      :codec,
      :maximum_bitrate,
      :resolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for the "switch input" action: to switch from ingesting one
    # input to ingesting another input.
    #
    # @note When making an API call, you may pass InputSwitchScheduleActionSettings
    #   data as a hash:
    #
    #       {
    #         input_attachment_name_reference: "__string", # required
    #         input_clipping_settings: {
    #           input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #           start_timecode: {
    #             timecode: "__string",
    #           },
    #           stop_timecode: {
    #             last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #             timecode: "__string",
    #           },
    #         },
    #         url_path: ["__string"],
    #       }
    #
    # @!attribute [rw] input_attachment_name_reference
    #   The name of the input attachment (not the name of the input!) to
    #   switch to. The name is specified in the channel configuration.
    #   @return [String]
    #
    # @!attribute [rw] input_clipping_settings
    #   Settings to let you create a clip of the file input, in order to set
    #   up the input to ingest only a portion of the file.
    #   @return [Types::InputClippingSettings]
    #
    # @!attribute [rw] url_path
    #   The value for the variable portion of the URL for the dynamic input,
    #   for this instance of the input. Each time you use the same dynamic
    #   input in an input switch action, you can provide a different value,
    #   in order to connect the input to a different content source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputSwitchScheduleActionSettings AWS API Documentation
    #
    class InputSwitchScheduleActionSettings < Struct.new(
      :input_attachment_name_reference,
      :input_clipping_settings,
      :url_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for a private VPC Input. When this property is specified, the
    # input destination addresses will be created in a VPC rather than with
    # public Internet addresses. This property requires setting the roleArn
    # property on Input creation. Not compatible with the
    # inputSecurityGroups property.
    #
    # @note When making an API call, you may pass InputVpcRequest
    #   data as a hash:
    #
    #       {
    #         security_group_ids: ["__string"],
    #         subnet_ids: ["__string"], # required
    #       }
    #
    # @!attribute [rw] security_group_ids
    #   A list of up to 5 EC2 VPC security group IDs to attach to the Input
    #   VPC network interfaces. Requires subnetIds. If none are specified
    #   then the VPC default security group will be used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of 2 VPC subnet IDs from the same VPC. Subnet IDs must be
    #   mapped to two unique availability zones (AZ).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputVpcRequest AWS API Documentation
    #
    class InputVpcRequest < Struct.new(
      :security_group_ids,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Whitelist rule
    #
    # @!attribute [rw] cidr
    #   The IPv4 CIDR that's whitelisted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputWhitelistRule AWS API Documentation
    #
    class InputWhitelistRule < Struct.new(
      :cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IPv4 CIDR to whitelist.
    #
    # @note When making an API call, you may pass InputWhitelistRuleCidr
    #   data as a hash:
    #
    #       {
    #         cidr: "__string",
    #       }
    #
    # @!attribute [rw] cidr
    #   The IPv4 CIDR to whitelist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InputWhitelistRuleCidr AWS API Documentation
    #
    class InputWhitelistRuleCidr < Struct.new(
      :cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InternalServiceError AWS API Documentation
    #
    class InternalServiceError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/InvalidRequest AWS API Documentation
    #
    class InvalidRequest < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Key Provider Settings
    #
    # @note When making an API call, you may pass KeyProviderSettings
    #   data as a hash:
    #
    #       {
    #         static_key_settings: {
    #           key_provider_server: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           static_key_value: "__stringMin32Max32", # required
    #         },
    #       }
    #
    # @!attribute [rw] static_key_settings
    #   Static Key Settings
    #   @return [Types::StaticKeySettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/KeyProviderSettings AWS API Documentation
    #
    class KeyProviderSettings < Struct.new(
      :static_key_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/LimitExceeded AWS API Documentation
    #
    class LimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListChannelsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListChannelsRequest AWS API Documentation
    #
    class ListChannelsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   @return [Array<Types::ChannelSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListChannelsResponse AWS API Documentation
    #
    class ListChannelsResponse < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   @return [Array<Types::ChannelSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListChannelsResultModel AWS API Documentation
    #
    class ListChannelsResultModel < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInputDeviceTransfersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         transfer_type: "__string", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] transfer_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputDeviceTransfersRequest AWS API Documentation
    #
    class ListInputDeviceTransfersRequest < Struct.new(
      :max_results,
      :next_token,
      :transfer_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_device_transfers
    #   @return [Array<Types::TransferringInputDeviceSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputDeviceTransfersResponse AWS API Documentation
    #
    class ListInputDeviceTransfersResponse < Struct.new(
      :input_device_transfers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of input devices in the transferred state. The recipient
    # hasn't yet accepted or rejected the transfer.
    #
    # @!attribute [rw] input_device_transfers
    #   The list of devices that you are transferring or are being
    #   transferred to you.
    #   @return [Array<Types::TransferringInputDeviceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to get additional list results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputDeviceTransfersResultModel AWS API Documentation
    #
    class ListInputDeviceTransfersResultModel < Struct.new(
      :input_device_transfers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInputDevicesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputDevicesRequest AWS API Documentation
    #
    class ListInputDevicesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_devices
    #   @return [Array<Types::InputDeviceSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputDevicesResponse AWS API Documentation
    #
    class ListInputDevicesResponse < Struct.new(
      :input_devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of input devices owned by the AWS account.
    #
    # @!attribute [rw] input_devices
    #   The list of input devices.
    #   @return [Array<Types::InputDeviceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to get additional list results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputDevicesResultModel AWS API Documentation
    #
    class ListInputDevicesResultModel < Struct.new(
      :input_devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInputSecurityGroupsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputSecurityGroupsRequest AWS API Documentation
    #
    class ListInputSecurityGroupsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_security_groups
    #   @return [Array<Types::InputSecurityGroup>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputSecurityGroupsResponse AWS API Documentation
    #
    class ListInputSecurityGroupsResponse < Struct.new(
      :input_security_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Result of input security group list request
    #
    # @!attribute [rw] input_security_groups
    #   List of input security groups
    #   @return [Array<Types::InputSecurityGroup>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputSecurityGroupsResultModel AWS API Documentation
    #
    class ListInputSecurityGroupsResultModel < Struct.new(
      :input_security_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInputsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputsRequest AWS API Documentation
    #
    class ListInputsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inputs
    #   @return [Array<Types::Input>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputsResponse AWS API Documentation
    #
    class ListInputsResponse < Struct.new(
      :inputs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inputs
    #   @return [Array<Types::Input>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputsResultModel AWS API Documentation
    #
    class ListInputsResultModel < Struct.new(
      :inputs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMultiplexProgramsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         multiplex_id: "__string", # required
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] multiplex_id
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListMultiplexProgramsRequest AWS API Documentation
    #
    class ListMultiplexProgramsRequest < Struct.new(
      :max_results,
      :multiplex_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex_programs
    #   @return [Array<Types::MultiplexProgramSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListMultiplexProgramsResponse AWS API Documentation
    #
    class ListMultiplexProgramsResponse < Struct.new(
      :multiplex_programs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex_programs
    #   List of multiplex programs.
    #   @return [Array<Types::MultiplexProgramSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for the next ListMultiplexProgram request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListMultiplexProgramsResultModel AWS API Documentation
    #
    class ListMultiplexProgramsResultModel < Struct.new(
      :multiplex_programs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMultiplexesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListMultiplexesRequest AWS API Documentation
    #
    class ListMultiplexesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplexes
    #   @return [Array<Types::MultiplexSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListMultiplexesResponse AWS API Documentation
    #
    class ListMultiplexesResponse < Struct.new(
      :multiplexes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplexes
    #   List of multiplexes.
    #   @return [Array<Types::MultiplexSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for the next ListMultiplexes request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListMultiplexesResultModel AWS API Documentation
    #
    class ListMultiplexesResultModel < Struct.new(
      :multiplexes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOfferingsRequest
    #   data as a hash:
    #
    #       {
    #         channel_class: "__string",
    #         channel_configuration: "__string",
    #         codec: "__string",
    #         duration: "__string",
    #         max_results: 1,
    #         maximum_bitrate: "__string",
    #         maximum_framerate: "__string",
    #         next_token: "__string",
    #         resolution: "__string",
    #         resource_type: "__string",
    #         special_feature: "__string",
    #         video_quality: "__string",
    #       }
    #
    # @!attribute [rw] channel_class
    #   @return [String]
    #
    # @!attribute [rw] channel_configuration
    #   @return [String]
    #
    # @!attribute [rw] codec
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_bitrate
    #   @return [String]
    #
    # @!attribute [rw] maximum_framerate
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] resolution
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @!attribute [rw] special_feature
    #   @return [String]
    #
    # @!attribute [rw] video_quality
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListOfferingsRequest AWS API Documentation
    #
    class ListOfferingsRequest < Struct.new(
      :channel_class,
      :channel_configuration,
      :codec,
      :duration,
      :max_results,
      :maximum_bitrate,
      :maximum_framerate,
      :next_token,
      :resolution,
      :resource_type,
      :special_feature,
      :video_quality)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] offerings
    #   @return [Array<Types::Offering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListOfferingsResponse AWS API Documentation
    #
    class ListOfferingsResponse < Struct.new(
      :next_token,
      :offerings)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListOfferings response
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next page of results
    #   @return [String]
    #
    # @!attribute [rw] offerings
    #   List of offerings
    #   @return [Array<Types::Offering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListOfferingsResultModel AWS API Documentation
    #
    class ListOfferingsResultModel < Struct.new(
      :next_token,
      :offerings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListReservationsRequest
    #   data as a hash:
    #
    #       {
    #         channel_class: "__string",
    #         codec: "__string",
    #         max_results: 1,
    #         maximum_bitrate: "__string",
    #         maximum_framerate: "__string",
    #         next_token: "__string",
    #         resolution: "__string",
    #         resource_type: "__string",
    #         special_feature: "__string",
    #         video_quality: "__string",
    #       }
    #
    # @!attribute [rw] channel_class
    #   @return [String]
    #
    # @!attribute [rw] codec
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_bitrate
    #   @return [String]
    #
    # @!attribute [rw] maximum_framerate
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] resolution
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @!attribute [rw] special_feature
    #   @return [String]
    #
    # @!attribute [rw] video_quality
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListReservationsRequest AWS API Documentation
    #
    class ListReservationsRequest < Struct.new(
      :channel_class,
      :codec,
      :max_results,
      :maximum_bitrate,
      :maximum_framerate,
      :next_token,
      :resolution,
      :resource_type,
      :special_feature,
      :video_quality)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] reservations
    #   @return [Array<Types::Reservation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListReservationsResponse AWS API Documentation
    #
    class ListReservationsResponse < Struct.new(
      :next_token,
      :reservations)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListReservations response
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next page of results
    #   @return [String]
    #
    # @!attribute [rw] reservations
    #   List of reservations
    #   @return [Array<Types::Reservation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListReservationsResultModel AWS API Documentation
    #
    class ListReservationsResultModel < Struct.new(
      :next_token,
      :reservations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # M2ts Settings
    #
    # @note When making an API call, you may pass M2tsSettings
    #   data as a hash:
    #
    #       {
    #         absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #         arib: "DISABLED", # accepts DISABLED, ENABLED
    #         arib_captions_pid: "__string",
    #         arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #         audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #         audio_frames_per_pes: 1,
    #         audio_pids: "__string",
    #         audio_stream_type: "ATSC", # accepts ATSC, DVB
    #         bitrate: 1,
    #         buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #         cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #         dvb_nit_settings: {
    #           network_id: 1, # required
    #           network_name: "__stringMin1Max256", # required
    #           rep_interval: 1,
    #         },
    #         dvb_sdt_settings: {
    #           output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #           rep_interval: 1,
    #           service_name: "__stringMin1Max256",
    #           service_provider_name: "__stringMin1Max256",
    #         },
    #         dvb_sub_pids: "__string",
    #         dvb_tdt_settings: {
    #           rep_interval: 1,
    #         },
    #         dvb_teletext_pid: "__string",
    #         ebif: "NONE", # accepts NONE, PASSTHROUGH
    #         ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #         ebp_lookahead_ms: 1,
    #         ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #         ecm_pid: "__string",
    #         es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #         etv_platform_pid: "__string",
    #         etv_signal_pid: "__string",
    #         fragment_time: 1.0,
    #         klv: "NONE", # accepts NONE, PASSTHROUGH
    #         klv_data_pids: "__string",
    #         nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #         null_packet_bitrate: 1.0,
    #         pat_interval: 1,
    #         pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #         pcr_period: 1,
    #         pcr_pid: "__string",
    #         pmt_interval: 1,
    #         pmt_pid: "__string",
    #         program_num: 1,
    #         rate_mode: "CBR", # accepts CBR, VBR
    #         scte_27_pids: "__string",
    #         scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #         scte_35_pid: "__string",
    #         segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #         segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #         segmentation_time: 1.0,
    #         timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #         timed_metadata_pid: "__string",
    #         transport_stream_id: 1,
    #         video_pid: "__string",
    #       }
    #
    # @!attribute [rw] absent_input_audio_behavior
    #   When set to drop, output audio streams will be removed from the
    #   program if the selected input audio stream is removed from the
    #   input. This allows the output audio configuration to dynamically
    #   change based on input configuration. If this is set to
    #   encodeSilence, all output audio streams will output encoded silence
    #   when not connected to an active input stream.
    #   @return [String]
    #
    # @!attribute [rw] arib
    #   When set to enabled, uses ARIB-compliant field muxing and removes
    #   video descriptor.
    #   @return [String]
    #
    # @!attribute [rw] arib_captions_pid
    #   Packet Identifier (PID) for ARIB Captions in the transport stream.
    #   Can be entered as a decimal or hexadecimal value. Valid values are
    #   32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] arib_captions_pid_control
    #   If set to auto, pid number used for ARIB Captions will be
    #   auto-selected from unused pids. If set to useConfigured, ARIB
    #   Captions will be on the configured pid number.
    #   @return [String]
    #
    # @!attribute [rw] audio_buffer_model
    #   When set to dvb, uses DVB buffer model for Dolby Digital audio. When
    #   set to atsc, the ATSC model is used.
    #   @return [String]
    #
    # @!attribute [rw] audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #   @return [Integer]
    #
    # @!attribute [rw] audio_pids
    #   Packet Identifier (PID) of the elementary audio stream(s) in the
    #   transport stream. Multiple values are accepted, and can be entered
    #   in ranges and/or by comma separation. Can be entered as decimal or
    #   hexadecimal values. Each PID specified must be in the range of 32
    #   (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] audio_stream_type
    #   When set to atsc, uses stream type = 0x81 for AC3 and stream type =
    #   0x87 for EAC3. When set to dvb, uses stream type = 0x06.
    #   @return [String]
    #
    # @!attribute [rw] bitrate
    #   The output bitrate of the transport stream in bits per second.
    #   Setting to 0 lets the muxer automatically determine the appropriate
    #   bitrate.
    #   @return [Integer]
    #
    # @!attribute [rw] buffer_model
    #   Controls the timing accuracy for output network traffic. Leave as
    #   MULTIPLEX to ensure accurate network packet timing. Or set to NONE,
    #   which might result in lower latency but will result in more
    #   variability in output network packet timing. This variability might
    #   cause interruptions, jitter, or bursty behavior in your playback or
    #   receiving devices.
    #   @return [String]
    #
    # @!attribute [rw] cc_descriptor
    #   When set to enabled, generates captionServiceDescriptor in PMT.
    #   @return [String]
    #
    # @!attribute [rw] dvb_nit_settings
    #   Inserts DVB Network Information Table (NIT) at the specified table
    #   repetition interval.
    #   @return [Types::DvbNitSettings]
    #
    # @!attribute [rw] dvb_sdt_settings
    #   Inserts DVB Service Description Table (SDT) at the specified table
    #   repetition interval.
    #   @return [Types::DvbSdtSettings]
    #
    # @!attribute [rw] dvb_sub_pids
    #   Packet Identifier (PID) for input source DVB Subtitle data to this
    #   output. Multiple values are accepted, and can be entered in ranges
    #   and/or by comma separation. Can be entered as decimal or hexadecimal
    #   values. Each PID specified must be in the range of 32 (or
    #   0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] dvb_tdt_settings
    #   Inserts DVB Time and Date Table (TDT) at the specified table
    #   repetition interval.
    #   @return [Types::DvbTdtSettings]
    #
    # @!attribute [rw] dvb_teletext_pid
    #   Packet Identifier (PID) for input source DVB Teletext data to this
    #   output. Can be entered as a decimal or hexadecimal value. Valid
    #   values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] ebif
    #   If set to passthrough, passes any EBIF data from the input source to
    #   this output.
    #   @return [String]
    #
    # @!attribute [rw] ebp_audio_interval
    #   When videoAndFixedIntervals is selected, audio EBP markers will be
    #   added to partitions 3 and 4. The interval between these additional
    #   markers will be fixed, and will be slightly shorter than the video
    #   EBP marker interval. Only available when EBP Cablelabs segmentation
    #   markers are selected. Partitions 1 and 2 will always follow the
    #   video interval.
    #   @return [String]
    #
    # @!attribute [rw] ebp_lookahead_ms
    #   When set, enforces that Encoder Boundary Points do not come within
    #   the specified time interval of each other by looking ahead at input
    #   video. If another EBP is going to come in within the specified time
    #   interval, the current EBP is not emitted, and the segment is
    #   "stretched" to the next marker. The lookahead value does not add
    #   latency to the system. The Live Event must be configured elsewhere
    #   to create sufficient latency to make the lookahead accurate.
    #   @return [Integer]
    #
    # @!attribute [rw] ebp_placement
    #   Controls placement of EBP on Audio PIDs. If set to
    #   videoAndAudioPids, EBP markers will be placed on the video PID and
    #   all audio PIDs. If set to videoPid, EBP markers will be placed on
    #   only the video PID.
    #   @return [String]
    #
    # @!attribute [rw] ecm_pid
    #   This field is unused and deprecated.
    #   @return [String]
    #
    # @!attribute [rw] es_rate_in_pes
    #   Include or exclude the ES Rate field in the PES header.
    #   @return [String]
    #
    # @!attribute [rw] etv_platform_pid
    #   Packet Identifier (PID) for input source ETV Platform data to this
    #   output. Can be entered as a decimal or hexadecimal value. Valid
    #   values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] etv_signal_pid
    #   Packet Identifier (PID) for input source ETV Signal data to this
    #   output. Can be entered as a decimal or hexadecimal value. Valid
    #   values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] fragment_time
    #   The length in seconds of each fragment. Only used with EBP markers.
    #   @return [Float]
    #
    # @!attribute [rw] klv
    #   If set to passthrough, passes any KLV data from the input source to
    #   this output.
    #   @return [String]
    #
    # @!attribute [rw] klv_data_pids
    #   Packet Identifier (PID) for input source KLV data to this output.
    #   Multiple values are accepted, and can be entered in ranges and/or by
    #   comma separation. Can be entered as decimal or hexadecimal values.
    #   Each PID specified must be in the range of 32 (or 0x20)..8182 (or
    #   0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] nielsen_id_3_behavior
    #   If set to passthrough, Nielsen inaudible tones for media tracking
    #   will be detected in the input audio and an equivalent ID3 tag will
    #   be inserted in the output.
    #   @return [String]
    #
    # @!attribute [rw] null_packet_bitrate
    #   Value in bits per second of extra null packets to insert into the
    #   transport stream. This can be used if a downstream encryption system
    #   requires periodic null packets.
    #   @return [Float]
    #
    # @!attribute [rw] pat_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream. Valid values are 0, 10..1000.
    #   @return [Integer]
    #
    # @!attribute [rw] pcr_control
    #   When set to pcrEveryPesPacket, a Program Clock Reference value is
    #   inserted for every Packetized Elementary Stream (PES) header. This
    #   parameter is effective only when the PCR PID is the same as the
    #   video or audio elementary stream.
    #   @return [String]
    #
    # @!attribute [rw] pcr_period
    #   Maximum time in milliseconds between Program Clock Reference (PCRs)
    #   inserted into the transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] pcr_pid
    #   Packet Identifier (PID) of the Program Clock Reference (PCR) in the
    #   transport stream. When no value is given, the encoder will assign
    #   the same value as the Video PID. Can be entered as a decimal or
    #   hexadecimal value. Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] pmt_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream. Valid values are 0, 10..1000.
    #   @return [Integer]
    #
    # @!attribute [rw] pmt_pid
    #   Packet Identifier (PID) for the Program Map Table (PMT) in the
    #   transport stream. Can be entered as a decimal or hexadecimal value.
    #   Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] program_num
    #   The value of the program number field in the Program Map Table.
    #   @return [Integer]
    #
    # @!attribute [rw] rate_mode
    #   When vbr, does not insert null packets into transport stream to fill
    #   specified bitrate. The bitrate setting acts as the maximum bitrate
    #   when vbr is set.
    #   @return [String]
    #
    # @!attribute [rw] scte_27_pids
    #   Packet Identifier (PID) for input source SCTE-27 data to this
    #   output. Multiple values are accepted, and can be entered in ranges
    #   and/or by comma separation. Can be entered as decimal or hexadecimal
    #   values. Each PID specified must be in the range of 32 (or
    #   0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] scte_35_control
    #   Optionally pass SCTE-35 signals from the input source to this
    #   output.
    #   @return [String]
    #
    # @!attribute [rw] scte_35_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport
    #   stream. Can be entered as a decimal or hexadecimal value. Valid
    #   values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] segmentation_markers
    #   Inserts segmentation markers at each segmentationTime period.
    #   raiSegstart sets the Random Access Indicator bit in the adaptation
    #   field. raiAdapt sets the RAI bit and adds the current timecode in
    #   the private data bytes. psiSegstart inserts PAT and PMT tables at
    #   the start of segments. ebp adds Encoder Boundary Point information
    #   to the adaptation field as per OpenCable specification
    #   OC-SP-EBP-I01-130118. ebpLegacy adds Encoder Boundary Point
    #   information to the adaptation field using a legacy proprietary
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] segmentation_style
    #   The segmentation style parameter controls how segmentation markers
    #   are inserted into the transport stream. With avails, it is possible
    #   that segments may be truncated, which can influence where future
    #   segmentation markers are inserted. When a segmentation style of
    #   "resetCadence" is selected and a segment is truncated due to an
    #   avail, we will reset the segmentation cadence. This means the
    #   subsequent segment will have a duration of $segmentationTime
    #   seconds. When a segmentation style of "maintainCadence" is
    #   selected and a segment is truncated due to an avail, we will not
    #   reset the segmentation cadence. This means the subsequent segment
    #   will likely be truncated as well. However, all segments after that
    #   will have a duration of $segmentationTime seconds. Note that EBP
    #   lookahead is a slight exception to this rule.
    #   @return [String]
    #
    # @!attribute [rw] segmentation_time
    #   The length in seconds of each segment. Required unless markers is
    #   set to \_none\_.
    #   @return [Float]
    #
    # @!attribute [rw] timed_metadata_behavior
    #   When set to passthrough, timed metadata will be passed through from
    #   input to output.
    #   @return [String]
    #
    # @!attribute [rw] timed_metadata_pid
    #   Packet Identifier (PID) of the timed metadata stream in the
    #   transport stream. Can be entered as a decimal or hexadecimal value.
    #   Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] transport_stream_id
    #   The value of the transport stream ID field in the Program Map Table.
    #   @return [Integer]
    #
    # @!attribute [rw] video_pid
    #   Packet Identifier (PID) of the elementary video stream in the
    #   transport stream. Can be entered as a decimal or hexadecimal value.
    #   Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/M2tsSettings AWS API Documentation
    #
    class M2tsSettings < Struct.new(
      :absent_input_audio_behavior,
      :arib,
      :arib_captions_pid,
      :arib_captions_pid_control,
      :audio_buffer_model,
      :audio_frames_per_pes,
      :audio_pids,
      :audio_stream_type,
      :bitrate,
      :buffer_model,
      :cc_descriptor,
      :dvb_nit_settings,
      :dvb_sdt_settings,
      :dvb_sub_pids,
      :dvb_tdt_settings,
      :dvb_teletext_pid,
      :ebif,
      :ebp_audio_interval,
      :ebp_lookahead_ms,
      :ebp_placement,
      :ecm_pid,
      :es_rate_in_pes,
      :etv_platform_pid,
      :etv_signal_pid,
      :fragment_time,
      :klv,
      :klv_data_pids,
      :nielsen_id_3_behavior,
      :null_packet_bitrate,
      :pat_interval,
      :pcr_control,
      :pcr_period,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :program_num,
      :rate_mode,
      :scte_27_pids,
      :scte_35_control,
      :scte_35_pid,
      :segmentation_markers,
      :segmentation_style,
      :segmentation_time,
      :timed_metadata_behavior,
      :timed_metadata_pid,
      :transport_stream_id,
      :video_pid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings information for the .m3u8 container
    #
    # @note When making an API call, you may pass M3u8Settings
    #   data as a hash:
    #
    #       {
    #         audio_frames_per_pes: 1,
    #         audio_pids: "__string",
    #         ecm_pid: "__string",
    #         nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #         pat_interval: 1,
    #         pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #         pcr_period: 1,
    #         pcr_pid: "__string",
    #         pmt_interval: 1,
    #         pmt_pid: "__string",
    #         program_num: 1,
    #         scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #         scte_35_pid: "__string",
    #         timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #         timed_metadata_pid: "__string",
    #         transport_stream_id: 1,
    #         video_pid: "__string",
    #       }
    #
    # @!attribute [rw] audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #   @return [Integer]
    #
    # @!attribute [rw] audio_pids
    #   Packet Identifier (PID) of the elementary audio stream(s) in the
    #   transport stream. Multiple values are accepted, and can be entered
    #   in ranges and/or by comma separation. Can be entered as decimal or
    #   hexadecimal values.
    #   @return [String]
    #
    # @!attribute [rw] ecm_pid
    #   This parameter is unused and deprecated.
    #   @return [String]
    #
    # @!attribute [rw] nielsen_id_3_behavior
    #   If set to passthrough, Nielsen inaudible tones for media tracking
    #   will be detected in the input audio and an equivalent ID3 tag will
    #   be inserted in the output.
    #   @return [String]
    #
    # @!attribute [rw] pat_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream. A value of \\"0\\" writes out the PMT
    #   once per segment file.
    #   @return [Integer]
    #
    # @!attribute [rw] pcr_control
    #   When set to pcrEveryPesPacket, a Program Clock Reference value is
    #   inserted for every Packetized Elementary Stream (PES) header. This
    #   parameter is effective only when the PCR PID is the same as the
    #   video or audio elementary stream.
    #   @return [String]
    #
    # @!attribute [rw] pcr_period
    #   Maximum time in milliseconds between Program Clock References (PCRs)
    #   inserted into the transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] pcr_pid
    #   Packet Identifier (PID) of the Program Clock Reference (PCR) in the
    #   transport stream. When no value is given, the encoder will assign
    #   the same value as the Video PID. Can be entered as a decimal or
    #   hexadecimal value.
    #   @return [String]
    #
    # @!attribute [rw] pmt_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream. A value of \\"0\\" writes out the PMT
    #   once per segment file.
    #   @return [Integer]
    #
    # @!attribute [rw] pmt_pid
    #   Packet Identifier (PID) for the Program Map Table (PMT) in the
    #   transport stream. Can be entered as a decimal or hexadecimal value.
    #   @return [String]
    #
    # @!attribute [rw] program_num
    #   The value of the program number field in the Program Map Table.
    #   @return [Integer]
    #
    # @!attribute [rw] scte_35_behavior
    #   If set to passthrough, passes any SCTE-35 signals from the input
    #   source to this output.
    #   @return [String]
    #
    # @!attribute [rw] scte_35_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport
    #   stream. Can be entered as a decimal or hexadecimal value.
    #   @return [String]
    #
    # @!attribute [rw] timed_metadata_behavior
    #   When set to passthrough, timed metadata is passed through from input
    #   to output.
    #   @return [String]
    #
    # @!attribute [rw] timed_metadata_pid
    #   Packet Identifier (PID) of the timed metadata stream in the
    #   transport stream. Can be entered as a decimal or hexadecimal value.
    #   Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    #
    # @!attribute [rw] transport_stream_id
    #   The value of the transport stream ID field in the Program Map Table.
    #   @return [Integer]
    #
    # @!attribute [rw] video_pid
    #   Packet Identifier (PID) of the elementary video stream in the
    #   transport stream. Can be entered as a decimal or hexadecimal value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/M3u8Settings AWS API Documentation
    #
    class M3u8Settings < Struct.new(
      :audio_frames_per_pes,
      :audio_pids,
      :ecm_pid,
      :nielsen_id_3_behavior,
      :pat_interval,
      :pcr_control,
      :pcr_period,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :program_num,
      :scte_35_behavior,
      :scte_35_pid,
      :timed_metadata_behavior,
      :timed_metadata_pid,
      :transport_stream_id,
      :video_pid)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a MediaConnect Flow.
    #
    # @!attribute [rw] flow_arn
    #   The unique ARN of the MediaConnect Flow being used as a source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MediaConnectFlow AWS API Documentation
    #
    class MediaConnectFlow < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a MediaConnect Flow.
    #
    # @note When making an API call, you may pass MediaConnectFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string",
    #       }
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the MediaConnect Flow that you want to use as a source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MediaConnectFlowRequest AWS API Documentation
    #
    class MediaConnectFlowRequest < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Media Package Group Settings
    #
    # @note When making an API call, you may pass MediaPackageGroupSettings
    #   data as a hash:
    #
    #       {
    #         destination: { # required
    #           destination_ref_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] destination
    #   MediaPackage channel destination.
    #   @return [Types::OutputLocationRef]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MediaPackageGroupSettings AWS API Documentation
    #
    class MediaPackageGroupSettings < Struct.new(
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # MediaPackage Output Destination Settings
    #
    # @note When making an API call, you may pass MediaPackageOutputDestinationSettings
    #   data as a hash:
    #
    #       {
    #         channel_id: "__stringMin1",
    #       }
    #
    # @!attribute [rw] channel_id
    #   ID of the channel in MediaPackage that is the destination for this
    #   output group. You do not need to specify the individual inputs in
    #   MediaPackage; MediaLive will handle the connection of the two
    #   MediaLive pipelines to the two MediaPackage inputs. The MediaPackage
    #   channel and MediaLive channel must be in the same region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MediaPackageOutputDestinationSettings AWS API Documentation
    #
    class MediaPackageOutputDestinationSettings < Struct.new(
      :channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Media Package Output Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MediaPackageOutputSettings AWS API Documentation
    #
    class MediaPackageOutputSettings < Aws::EmptyStructure; end

    # Mp2 Settings
    #
    # @note When making an API call, you may pass Mp2Settings
    #   data as a hash:
    #
    #       {
    #         bitrate: 1.0,
    #         coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0
    #         sample_rate: 1.0,
    #       }
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second.
    #   @return [Float]
    #
    # @!attribute [rw] coding_mode
    #   The MPEG2 Audio coding mode. Valid values are codingMode10 (for
    #   mono) or codingMode20 (for stereo).
    #   @return [String]
    #
    # @!attribute [rw] sample_rate
    #   Sample rate in Hz.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Mp2Settings AWS API Documentation
    #
    class Mp2Settings < Struct.new(
      :bitrate,
      :coding_mode,
      :sample_rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Mpeg2 Filter Settings
    #
    # @note When making an API call, you may pass Mpeg2FilterSettings
    #   data as a hash:
    #
    #       {
    #         temporal_filter_settings: {
    #           post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #           strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #         },
    #       }
    #
    # @!attribute [rw] temporal_filter_settings
    #   Temporal Filter Settings
    #   @return [Types::TemporalFilterSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Mpeg2FilterSettings AWS API Documentation
    #
    class Mpeg2FilterSettings < Struct.new(
      :temporal_filter_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Mpeg2 Settings
    #
    # @note When making an API call, you may pass Mpeg2Settings
    #   data as a hash:
    #
    #       {
    #         adaptive_quantization: "AUTO", # accepts AUTO, HIGH, LOW, MEDIUM, OFF
    #         afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #         color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #         color_space: "AUTO", # accepts AUTO, PASSTHROUGH
    #         display_aspect_ratio: "DISPLAYRATIO16X9", # accepts DISPLAYRATIO16X9, DISPLAYRATIO4X3
    #         filter_settings: {
    #           temporal_filter_settings: {
    #             post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #             strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #           },
    #         },
    #         fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #         framerate_denominator: 1, # required
    #         framerate_numerator: 1, # required
    #         gop_closed_cadence: 1,
    #         gop_num_b_frames: 1,
    #         gop_size: 1.0,
    #         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #         scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #         subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #         timecode_insertion: "DISABLED", # accepts DISABLED, GOP_TIMECODE
    #       }
    #
    # @!attribute [rw] adaptive_quantization
    #   Choose Off to disable adaptive quantization. Or choose another value
    #   to enable the quantizer and set its strength. The strengths are:
    #   Auto, Off, Low, Medium, High. When you enable this field, MediaLive
    #   allows intra-frame quantizers to vary, which might improve visual
    #   quality.
    #   @return [String]
    #
    # @!attribute [rw] afd_signaling
    #   Indicates the AFD values that MediaLive will write into the video
    #   encode. If you do not know what AFD signaling is, or if your
    #   downstream system has not given you guidance, choose AUTO. AUTO:
    #   MediaLive will try to preserve the input AFD value (in cases where
    #   multiple AFD values are valid). FIXED: MediaLive will use the value
    #   you specify in fixedAFD.
    #   @return [String]
    #
    # @!attribute [rw] color_metadata
    #   Specifies whether to include the color space metadata. The metadata
    #   describes the color space that applies to the video (the colorSpace
    #   field). We recommend that you insert the metadata.
    #   @return [String]
    #
    # @!attribute [rw] color_space
    #   Choose the type of color space conversion to apply to the output.
    #   For detailed information on setting up both the input and the output
    #   to obtain the desired color space in the output, see the section on
    #   \\"MediaLive Features - Video - color space\\" in the MediaLive
    #   User Guide. PASSTHROUGH: Keep the color space of the input content -
    #   do not convert it. AUTO:Convert all content that is SD to rec 601,
    #   and convert all content that is HD to rec 709.
    #   @return [String]
    #
    # @!attribute [rw] display_aspect_ratio
    #   Sets the pixel aspect ratio for the encode.
    #   @return [String]
    #
    # @!attribute [rw] filter_settings
    #   Optionally specify a noise reduction filter, which can improve
    #   quality of compressed content. If you do not choose a filter, no
    #   filter will be applied. TEMPORAL: This filter is useful for both
    #   source content that is noisy (when it has excessive digital
    #   artifacts) and source content that is clean. When the content is
    #   noisy, the filter cleans up the source content before the encoding
    #   phase, with these two effects: First, it improves the output video
    #   quality because the content has been cleaned up. Secondly, it
    #   decreases the bandwidth because MediaLive does not waste bits on
    #   encoding noise. When the content is reasonably clean, the filter
    #   tends to decrease the bitrate.
    #   @return [Types::Mpeg2FilterSettings]
    #
    # @!attribute [rw] fixed_afd
    #   Complete this field only when afdSignaling is set to FIXED. Enter
    #   the AFD value (4 bits) to write on all frames of the video encode.
    #   @return [String]
    #
    # @!attribute [rw] framerate_denominator
    #   description": "The framerate denominator. For example, 1001. The
    #   framerate is the numerator divided by the denominator. For example,
    #   24000 / 1001 = 23.976 FPS.
    #   @return [Integer]
    #
    # @!attribute [rw] framerate_numerator
    #   The framerate numerator. For example, 24000. The framerate is the
    #   numerator divided by the denominator. For example, 24000 / 1001 =
    #   23.976 FPS.
    #   @return [Integer]
    #
    # @!attribute [rw] gop_closed_cadence
    #   MPEG2: default is open GOP.
    #   @return [Integer]
    #
    # @!attribute [rw] gop_num_b_frames
    #   Relates to the GOP structure. The number of B-frames between
    #   reference frames. If you do not know what a B-frame is, use the
    #   default.
    #   @return [Integer]
    #
    # @!attribute [rw] gop_size
    #   Relates to the GOP structure. The GOP size (keyframe interval) in
    #   the units specified in gopSizeUnits. If you do not know what GOP is,
    #   use the default. If gopSizeUnits is frames, then the gopSize must be
    #   an integer and must be greater than or equal to 1. If gopSizeUnits
    #   is seconds, the gopSize must be greater than 0, but does not need to
    #   be an integer.
    #   @return [Float]
    #
    # @!attribute [rw] gop_size_units
    #   Relates to the GOP structure. Specifies whether the gopSize is
    #   specified in frames or seconds. If you do not plan to change the
    #   default gopSize, leave the default. If you specify SECONDS,
    #   MediaLive will internally convert the gop size to a frame count.
    #   @return [String]
    #
    # @!attribute [rw] scan_type
    #   Set the scan type of the output to PROGRESSIVE or INTERLACED (top
    #   field first).
    #   @return [String]
    #
    # @!attribute [rw] subgop_length
    #   Relates to the GOP structure. If you do not know what GOP is, use
    #   the default. FIXED: Set the number of B-frames in each sub-GOP to
    #   the value in gopNumBFrames. DYNAMIC: Let MediaLive optimize the
    #   number of B-frames in each sub-GOP, to improve visual quality.
    #   @return [String]
    #
    # @!attribute [rw] timecode_insertion
    #   Determines how MediaLive inserts timecodes in the output video. For
    #   detailed information about setting up the input and the output for a
    #   timecode, see the section on \\"MediaLive Features - Timecode
    #   configuration\\" in the MediaLive User Guide. DISABLED: do not
    #   include timecodes. GOP\_TIMECODE: Include timecode metadata in the
    #   GOP header.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Mpeg2Settings AWS API Documentation
    #
    class Mpeg2Settings < Struct.new(
      :adaptive_quantization,
      :afd_signaling,
      :color_metadata,
      :color_space,
      :display_aspect_ratio,
      :filter_settings,
      :fixed_afd,
      :framerate_denominator,
      :framerate_numerator,
      :gop_closed_cadence,
      :gop_num_b_frames,
      :gop_size,
      :gop_size_units,
      :scan_type,
      :subgop_length,
      :timecode_insertion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ms Smooth Group Settings
    #
    # @note When making an API call, you may pass MsSmoothGroupSettings
    #   data as a hash:
    #
    #       {
    #         acquisition_point_id: "__string",
    #         audio_only_timecode_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED_CLOCK
    #         certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #         connection_retry_interval: 1,
    #         destination: { # required
    #           destination_ref_id: "__string",
    #         },
    #         event_id: "__string",
    #         event_id_mode: "NO_EVENT_ID", # accepts NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP
    #         event_stop_behavior: "NONE", # accepts NONE, SEND_EOS
    #         filecache_duration: 1,
    #         fragment_length: 1,
    #         input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #         num_retries: 1,
    #         restart_delay: 1,
    #         segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #         send_delay_ms: 1,
    #         sparse_track_type: "NONE", # accepts NONE, SCTE_35, SCTE_35_WITHOUT_SEGMENTATION
    #         stream_manifest_behavior: "DO_NOT_SEND", # accepts DO_NOT_SEND, SEND
    #         timestamp_offset: "__string",
    #         timestamp_offset_mode: "USE_CONFIGURED_OFFSET", # accepts USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE
    #       }
    #
    # @!attribute [rw] acquisition_point_id
    #   The ID to include in each message in the sparse track. Ignored if
    #   sparseTrackType is NONE.
    #   @return [String]
    #
    # @!attribute [rw] audio_only_timecode_control
    #   If set to passthrough for an audio-only MS Smooth output, the
    #   fragment absolute time will be set to the current timecode. This
    #   option does not write timecodes to the audio elementary stream.
    #   @return [String]
    #
    # @!attribute [rw] certificate_mode
    #   If set to verifyAuthenticity, verify the https certificate chain to
    #   a trusted Certificate Authority (CA). This will cause https outputs
    #   to self-signed certificates to fail.
    #   @return [String]
    #
    # @!attribute [rw] connection_retry_interval
    #   Number of seconds to wait before retrying connection to the IIS
    #   server if the connection is lost. Content will be cached during this
    #   time and the cache will be be delivered to the IIS server once the
    #   connection is re-established.
    #   @return [Integer]
    #
    # @!attribute [rw] destination
    #   Smooth Streaming publish point on an IIS server. Elemental Live acts
    #   as a "Push" encoder to IIS.
    #   @return [Types::OutputLocationRef]
    #
    # @!attribute [rw] event_id
    #   MS Smooth event ID to be sent to the IIS server. Should only be
    #   specified if eventIdMode is set to useConfigured.
    #   @return [String]
    #
    # @!attribute [rw] event_id_mode
    #   Specifies whether or not to send an event ID to the IIS server. If
    #   no event ID is sent and the same Live Event is used without changing
    #   the publishing point, clients might see cached video from the
    #   previous run. Options: - "useConfigured" - use the value provided
    #   in eventId - "useTimestamp" - generate and send an event ID based
    #   on the current timestamp - "noEventId" - do not send an event ID
    #   to the IIS server.
    #   @return [String]
    #
    # @!attribute [rw] event_stop_behavior
    #   When set to sendEos, send EOS signal to IIS server when stopping the
    #   event
    #   @return [String]
    #
    # @!attribute [rw] filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #   @return [Integer]
    #
    # @!attribute [rw] fragment_length
    #   Length of mp4 fragments to generate (in seconds). Fragment length
    #   must be compatible with GOP size and framerate.
    #   @return [Integer]
    #
    # @!attribute [rw] input_loss_action
    #   Parameter that control output group behavior on input loss.
    #   @return [String]
    #
    # @!attribute [rw] num_retries
    #   Number of retry attempts.
    #   @return [Integer]
    #
    # @!attribute [rw] restart_delay
    #   Number of seconds before initiating a restart due to output failure,
    #   due to exhausting the numRetries on one segment, or exceeding
    #   filecacheDuration.
    #   @return [Integer]
    #
    # @!attribute [rw] segmentation_mode
    #   useInputSegmentation has been deprecated. The configured segment
    #   size is always used.
    #   @return [String]
    #
    # @!attribute [rw] send_delay_ms
    #   Number of milliseconds to delay the output from the second pipeline.
    #   @return [Integer]
    #
    # @!attribute [rw] sparse_track_type
    #   Identifies the type of data to place in the sparse track: - SCTE35:
    #   Insert SCTE-35 messages from the source content. With each message,
    #   insert an IDR frame to start a new segment. -
    #   SCTE35\_WITHOUT\_SEGMENTATION: Insert SCTE-35 messages from the
    #   source content. With each message, insert an IDR frame but don't
    #   start a new segment. - NONE: Don't generate a sparse track for any
    #   outputs in this output group.
    #   @return [String]
    #
    # @!attribute [rw] stream_manifest_behavior
    #   When set to send, send stream manifest so publishing point doesn't
    #   start until all streams start.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_offset
    #   Timestamp offset for the event. Only used if timestampOffsetMode is
    #   set to useConfiguredOffset.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_offset_mode
    #   Type of timestamp date offset to use. - useEventStartDate: Use the
    #   date the event was started as the offset - useConfiguredOffset: Use
    #   an explicitly configured date as the offset
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MsSmoothGroupSettings AWS API Documentation
    #
    class MsSmoothGroupSettings < Struct.new(
      :acquisition_point_id,
      :audio_only_timecode_control,
      :certificate_mode,
      :connection_retry_interval,
      :destination,
      :event_id,
      :event_id_mode,
      :event_stop_behavior,
      :filecache_duration,
      :fragment_length,
      :input_loss_action,
      :num_retries,
      :restart_delay,
      :segmentation_mode,
      :send_delay_ms,
      :sparse_track_type,
      :stream_manifest_behavior,
      :timestamp_offset,
      :timestamp_offset_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ms Smooth Output Settings
    #
    # @note When making an API call, you may pass MsSmoothOutputSettings
    #   data as a hash:
    #
    #       {
    #         h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #         name_modifier: "__string",
    #       }
    #
    # @!attribute [rw] h265_packaging_type
    #   Only applicable when this output is referencing an H.265 video
    #   description. Specifies whether MP4 segments should be packaged as
    #   HEV1 or HVC1.
    #   @return [String]
    #
    # @!attribute [rw] name_modifier
    #   String concatenated to the end of the destination filename. Required
    #   for multiple outputs of the same type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MsSmoothOutputSettings AWS API Documentation
    #
    class MsSmoothOutputSettings < Struct.new(
      :h265_packaging_type,
      :name_modifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The multiplex object.
    #
    # @!attribute [rw] arn
    #   The unique arn of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   A list of availability zones for the multiplex.
    #   @return [Array<String>]
    #
    # @!attribute [rw] destinations
    #   A list of the multiplex output destinations.
    #   @return [Array<Types::MultiplexOutputDestination>]
    #
    # @!attribute [rw] id
    #   The unique id of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] multiplex_settings
    #   Configuration for a multiplex event.
    #   @return [Types::MultiplexSettings]
    #
    # @!attribute [rw] name
    #   The name of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    #
    # @!attribute [rw] program_count
    #   The number of programs in the multiplex.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The current state of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Multiplex AWS API Documentation
    #
    class Multiplex < Struct.new(
      :arn,
      :availability_zones,
      :destinations,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] validation_errors
    #   A collection of validation error responses.
    #   @return [Array<Types::ValidationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexConfigurationValidationError AWS API Documentation
    #
    class MultiplexConfigurationValidationError < Struct.new(
      :message,
      :validation_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Multiplex Group Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexGroupSettings AWS API Documentation
    #
    class MultiplexGroupSettings < Aws::EmptyStructure; end

    # Multiplex MediaConnect output destination settings.
    #
    # @!attribute [rw] entitlement_arn
    #   The MediaConnect entitlement ARN available as a Flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexMediaConnectOutputDestinationSettings AWS API Documentation
    #
    class MultiplexMediaConnectOutputDestinationSettings < Struct.new(
      :entitlement_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Multiplex output destination settings
    #
    # @!attribute [rw] media_connect_settings
    #   Multiplex MediaConnect output destination settings.
    #   @return [Types::MultiplexMediaConnectOutputDestinationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexOutputDestination AWS API Documentation
    #
    class MultiplexOutputDestination < Struct.new(
      :media_connect_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Multiplex Output Settings
    #
    # @note When making an API call, you may pass MultiplexOutputSettings
    #   data as a hash:
    #
    #       {
    #         destination: { # required
    #           destination_ref_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] destination
    #   Destination is a Multiplex.
    #   @return [Types::OutputLocationRef]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexOutputSettings AWS API Documentation
    #
    class MultiplexOutputSettings < Struct.new(
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The multiplex program object.
    #
    # @!attribute [rw] channel_id
    #   The MediaLive channel associated with the program.
    #   @return [String]
    #
    # @!attribute [rw] multiplex_program_settings
    #   The settings for this multiplex program.
    #   @return [Types::MultiplexProgramSettings]
    #
    # @!attribute [rw] packet_identifiers_map
    #   The packet identifier map for this multiplex program.
    #   @return [Types::MultiplexProgramPacketIdentifiersMap]
    #
    # @!attribute [rw] pipeline_details
    #   Contains information about the current sources for the specified
    #   program in the specified multiplex. Keep in mind that each multiplex
    #   pipeline connects to both pipelines in a given source channel (the
    #   channel identified by the program). But only one of those channel
    #   pipelines is ever active at one time.
    #   @return [Array<Types::MultiplexProgramPipelineDetail>]
    #
    # @!attribute [rw] program_name
    #   The name of the multiplex program.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexProgram AWS API Documentation
    #
    class MultiplexProgram < Struct.new(
      :channel_id,
      :multiplex_program_settings,
      :packet_identifiers_map,
      :pipeline_details,
      :program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Multiplex Program Input Destination Settings for outputting a Channel
    # to a Multiplex
    #
    # @note When making an API call, you may pass MultiplexProgramChannelDestinationSettings
    #   data as a hash:
    #
    #       {
    #         multiplex_id: "__stringMin1",
    #         program_name: "__stringMin1",
    #       }
    #
    # @!attribute [rw] multiplex_id
    #   The ID of the Multiplex that the encoder is providing output to. You
    #   do not need to specify the individual inputs to the Multiplex;
    #   MediaLive will handle the connection of the two MediaLive pipelines
    #   to the two Multiplex instances. The Multiplex must be in the same
    #   region as the Channel.
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   The program name of the Multiplex program that the encoder is
    #   providing output to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexProgramChannelDestinationSettings AWS API Documentation
    #
    class MultiplexProgramChannelDestinationSettings < Struct.new(
      :multiplex_id,
      :program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Packet identifiers map for a given Multiplex program.
    #
    # @!attribute [rw] audio_pids
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] dvb_sub_pids
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] dvb_teletext_pid
    #   @return [Integer]
    #
    # @!attribute [rw] etv_platform_pid
    #   @return [Integer]
    #
    # @!attribute [rw] etv_signal_pid
    #   @return [Integer]
    #
    # @!attribute [rw] klv_data_pids
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] pcr_pid
    #   @return [Integer]
    #
    # @!attribute [rw] pmt_pid
    #   @return [Integer]
    #
    # @!attribute [rw] private_metadata_pid
    #   @return [Integer]
    #
    # @!attribute [rw] scte_27_pids
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] scte_35_pid
    #   @return [Integer]
    #
    # @!attribute [rw] timed_metadata_pid
    #   @return [Integer]
    #
    # @!attribute [rw] video_pid
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexProgramPacketIdentifiersMap AWS API Documentation
    #
    class MultiplexProgramPacketIdentifiersMap < Struct.new(
      :audio_pids,
      :dvb_sub_pids,
      :dvb_teletext_pid,
      :etv_platform_pid,
      :etv_signal_pid,
      :klv_data_pids,
      :pcr_pid,
      :pmt_pid,
      :private_metadata_pid,
      :scte_27_pids,
      :scte_35_pid,
      :timed_metadata_pid,
      :video_pid)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current source for one of the pipelines in the multiplex.
    #
    # @!attribute [rw] active_channel_pipeline
    #   Identifies the channel pipeline that is currently active for the
    #   pipeline (identified by PipelineId) in the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_id
    #   Identifies a specific pipeline in the multiplex.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexProgramPipelineDetail AWS API Documentation
    #
    class MultiplexProgramPipelineDetail < Struct.new(
      :active_channel_pipeline,
      :pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Transport stream service descriptor configuration for the Multiplex
    # program.
    #
    # @note When making an API call, you may pass MultiplexProgramServiceDescriptor
    #   data as a hash:
    #
    #       {
    #         provider_name: "__stringMax256", # required
    #         service_name: "__stringMax256", # required
    #       }
    #
    # @!attribute [rw] provider_name
    #   Name of the provider.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   Name of the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexProgramServiceDescriptor AWS API Documentation
    #
    class MultiplexProgramServiceDescriptor < Struct.new(
      :provider_name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Multiplex Program settings configuration.
    #
    # @note When making an API call, you may pass MultiplexProgramSettings
    #   data as a hash:
    #
    #       {
    #         preferred_channel_pipeline: "CURRENTLY_ACTIVE", # accepts CURRENTLY_ACTIVE, PIPELINE_0, PIPELINE_1
    #         program_number: 1, # required
    #         service_descriptor: {
    #           provider_name: "__stringMax256", # required
    #           service_name: "__stringMax256", # required
    #         },
    #         video_settings: {
    #           constant_bitrate: 1,
    #           statmux_settings: {
    #             maximum_bitrate: 1,
    #             minimum_bitrate: 1,
    #             priority: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] preferred_channel_pipeline
    #   Indicates which pipeline is preferred by the multiplex for program
    #   ingest.
    #   @return [String]
    #
    # @!attribute [rw] program_number
    #   Unique program number.
    #   @return [Integer]
    #
    # @!attribute [rw] service_descriptor
    #   Transport stream service descriptor configuration for the Multiplex
    #   program.
    #   @return [Types::MultiplexProgramServiceDescriptor]
    #
    # @!attribute [rw] video_settings
    #   Program video settings configuration.
    #   @return [Types::MultiplexVideoSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexProgramSettings AWS API Documentation
    #
    class MultiplexProgramSettings < Struct.new(
      :preferred_channel_pipeline,
      :program_number,
      :service_descriptor,
      :video_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_id
    #   The MediaLive Channel associated with the program.
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   The name of the multiplex program.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexProgramSummary AWS API Documentation
    #
    class MultiplexProgramSummary < Struct.new(
      :channel_id,
      :program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration for a Multiplex event
    #
    # @note When making an API call, you may pass MultiplexSettings
    #   data as a hash:
    #
    #       {
    #         maximum_video_buffer_delay_milliseconds: 1,
    #         transport_stream_bitrate: 1, # required
    #         transport_stream_id: 1, # required
    #         transport_stream_reserved_bitrate: 1,
    #       }
    #
    # @!attribute [rw] maximum_video_buffer_delay_milliseconds
    #   Maximum video buffer delay in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] transport_stream_bitrate
    #   Transport stream bit rate.
    #   @return [Integer]
    #
    # @!attribute [rw] transport_stream_id
    #   Transport stream ID.
    #   @return [Integer]
    #
    # @!attribute [rw] transport_stream_reserved_bitrate
    #   Transport stream reserved bit rate.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexSettings AWS API Documentation
    #
    class MultiplexSettings < Struct.new(
      :maximum_video_buffer_delay_milliseconds,
      :transport_stream_bitrate,
      :transport_stream_id,
      :transport_stream_reserved_bitrate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary configuration for a Multiplex event.
    #
    # @!attribute [rw] transport_stream_bitrate
    #   Transport stream bit rate.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexSettingsSummary AWS API Documentation
    #
    class MultiplexSettingsSummary < Struct.new(
      :transport_stream_bitrate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statmux rate control settings
    #
    # @note When making an API call, you may pass MultiplexStatmuxVideoSettings
    #   data as a hash:
    #
    #       {
    #         maximum_bitrate: 1,
    #         minimum_bitrate: 1,
    #         priority: 1,
    #       }
    #
    # @!attribute [rw] maximum_bitrate
    #   Maximum statmux bitrate.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_bitrate
    #   Minimum statmux bitrate.
    #   @return [Integer]
    #
    # @!attribute [rw] priority
    #   The purpose of the priority is to use a combination of
    #   the\\nmultiplex rate control algorithm and the QVBR capability of
    #   the\\nencoder to prioritize the video quality of some channels in
    #   a\\nmultiplex over others. Channels that have a higher priority
    #   will\\nget higher video quality at the expense of the video quality
    #   of\\nother channels in the multiplex with lower priority.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexStatmuxVideoSettings AWS API Documentation
    #
    class MultiplexStatmuxVideoSettings < Struct.new(
      :maximum_bitrate,
      :minimum_bitrate,
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The unique arn of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   A list of availability zones for the multiplex.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The unique id of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] multiplex_settings
    #   Configuration for a multiplex event.
    #   @return [Types::MultiplexSettingsSummary]
    #
    # @!attribute [rw] name
    #   The name of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    #
    # @!attribute [rw] program_count
    #   The number of programs in the multiplex.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The current state of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexSummary AWS API Documentation
    #
    class MultiplexSummary < Struct.new(
      :arn,
      :availability_zones,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The video configuration for each program in a multiplex.
    #
    # @note When making an API call, you may pass MultiplexVideoSettings
    #   data as a hash:
    #
    #       {
    #         constant_bitrate: 1,
    #         statmux_settings: {
    #           maximum_bitrate: 1,
    #           minimum_bitrate: 1,
    #           priority: 1,
    #         },
    #       }
    #
    # @!attribute [rw] constant_bitrate
    #   The constant bitrate configuration for the video encode. When this
    #   field is defined, StatmuxSettings must be undefined.
    #   @return [Integer]
    #
    # @!attribute [rw] statmux_settings
    #   Statmux rate control settings. When this field is defined,
    #   ConstantBitrate must be undefined.
    #   @return [Types::MultiplexStatmuxVideoSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/MultiplexVideoSettings AWS API Documentation
    #
    class MultiplexVideoSettings < Struct.new(
      :constant_bitrate,
      :statmux_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network source to transcode. Must be accessible to the Elemental Live
    # node that is running the live event through a network connection.
    #
    # @note When making an API call, you may pass NetworkInputSettings
    #   data as a hash:
    #
    #       {
    #         hls_input_settings: {
    #           bandwidth: 1,
    #           buffer_segments: 1,
    #           retries: 1,
    #           retry_interval: 1,
    #         },
    #         server_validation: "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", # accepts CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY
    #       }
    #
    # @!attribute [rw] hls_input_settings
    #   Specifies HLS input settings when the uri is for a HLS manifest.
    #   @return [Types::HlsInputSettings]
    #
    # @!attribute [rw] server_validation
    #   Check HTTPS server certificates. When set to checkCryptographyOnly,
    #   cryptography in the certificate will be checked, but not the
    #   server's name. Certain subdomains (notably S3 buckets that use dots
    #   in the bucket name) do not strictly match the corresponding
    #   certificate's wildcard pattern and would otherwise cause the event
    #   to error. This setting is ignored for protocols that do not use
    #   https.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/NetworkInputSettings AWS API Documentation
    #
    class NetworkInputSettings < Struct.new(
      :hls_input_settings,
      :server_validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Nielsen Configuration
    #
    # @note When making an API call, you may pass NielsenConfiguration
    #   data as a hash:
    #
    #       {
    #         distributor_id: "__string",
    #         nielsen_pcm_to_id_3_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #       }
    #
    # @!attribute [rw] distributor_id
    #   Enter the Distributor ID assigned to your organization by Nielsen.
    #   @return [String]
    #
    # @!attribute [rw] nielsen_pcm_to_id_3_tagging
    #   Enables Nielsen PCM to ID3 tagging
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/NielsenConfiguration AWS API Documentation
    #
    class NielsenConfiguration < Struct.new(
      :distributor_id,
      :nielsen_pcm_to_id_3_tagging)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reserved resources available for purchase
    #
    # @!attribute [rw] arn
    #   Unique offering ARN, e.g.
    #   'arn:aws:medialive:us-west-2:123456789012:offering:87654321'
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g.
    #   'USD'
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   Lease duration, e.g. '12'
    #   @return [Integer]
    #
    # @!attribute [rw] duration_units
    #   Units for duration, e.g. 'MONTHS'
    #   @return [String]
    #
    # @!attribute [rw] fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a
    #   NO\_UPFRONT offering
    #   @return [Float]
    #
    # @!attribute [rw] offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps,
    #   and standard VQ in US West (Oregon)'
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   Unique offering ID, e.g. '87654321'
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   Offering type, e.g. 'NO\_UPFRONT'
    #   @return [String]
    #
    # @!attribute [rw] region
    #   AWS region, e.g. 'us-west-2'
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   Resource configuration details
    #   @return [Types::ReservationResourceSpecification]
    #
    # @!attribute [rw] usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Offering AWS API Documentation
    #
    class Offering < Struct.new(
      :arn,
      :currency_code,
      :duration,
      :duration_units,
      :fixed_price,
      :offering_description,
      :offering_id,
      :offering_type,
      :region,
      :resource_specification,
      :usage_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output settings. There can be multiple outputs within a group.
    #
    # @note When making an API call, you may pass Output
    #   data as a hash:
    #
    #       {
    #         audio_description_names: ["__string"],
    #         caption_description_names: ["__string"],
    #         output_name: "__stringMin1Max255",
    #         output_settings: { # required
    #           archive_output_settings: {
    #             container_settings: { # required
    #               m2ts_settings: {
    #                 absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                 arib: "DISABLED", # accepts DISABLED, ENABLED
    #                 arib_captions_pid: "__string",
    #                 arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                 audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                 audio_frames_per_pes: 1,
    #                 audio_pids: "__string",
    #                 audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                 bitrate: 1,
    #                 buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                 cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                 dvb_nit_settings: {
    #                   network_id: 1, # required
    #                   network_name: "__stringMin1Max256", # required
    #                   rep_interval: 1,
    #                 },
    #                 dvb_sdt_settings: {
    #                   output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                   rep_interval: 1,
    #                   service_name: "__stringMin1Max256",
    #                   service_provider_name: "__stringMin1Max256",
    #                 },
    #                 dvb_sub_pids: "__string",
    #                 dvb_tdt_settings: {
    #                   rep_interval: 1,
    #                 },
    #                 dvb_teletext_pid: "__string",
    #                 ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                 ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                 ebp_lookahead_ms: 1,
    #                 ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                 ecm_pid: "__string",
    #                 es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                 etv_platform_pid: "__string",
    #                 etv_signal_pid: "__string",
    #                 fragment_time: 1.0,
    #                 klv: "NONE", # accepts NONE, PASSTHROUGH
    #                 klv_data_pids: "__string",
    #                 nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                 null_packet_bitrate: 1.0,
    #                 pat_interval: 1,
    #                 pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                 pcr_period: 1,
    #                 pcr_pid: "__string",
    #                 pmt_interval: 1,
    #                 pmt_pid: "__string",
    #                 program_num: 1,
    #                 rate_mode: "CBR", # accepts CBR, VBR
    #                 scte_27_pids: "__string",
    #                 scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                 scte_35_pid: "__string",
    #                 segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                 segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                 segmentation_time: 1.0,
    #                 timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                 timed_metadata_pid: "__string",
    #                 transport_stream_id: 1,
    #                 video_pid: "__string",
    #               },
    #               raw_settings: {
    #               },
    #             },
    #             extension: "__string",
    #             name_modifier: "__string",
    #           },
    #           frame_capture_output_settings: {
    #             name_modifier: "__string",
    #           },
    #           hls_output_settings: {
    #             h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #             hls_settings: { # required
    #               audio_only_hls_settings: {
    #                 audio_group_id: "__string",
    #                 audio_only_image: {
    #                   password_param: "__string",
    #                   uri: "__string", # required
    #                   username: "__string",
    #                 },
    #                 audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                 segment_type: "AAC", # accepts AAC, FMP4
    #               },
    #               fmp_4_hls_settings: {
    #                 audio_rendition_sets: "__string",
    #                 nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                 timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #               },
    #               standard_hls_settings: {
    #                 audio_rendition_sets: "__string",
    #                 m3u_8_settings: { # required
    #                   audio_frames_per_pes: 1,
    #                   audio_pids: "__string",
    #                   ecm_pid: "__string",
    #                   nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                   pat_interval: 1,
    #                   pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                   pcr_period: 1,
    #                   pcr_pid: "__string",
    #                   pmt_interval: 1,
    #                   pmt_pid: "__string",
    #                   program_num: 1,
    #                   scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                   scte_35_pid: "__string",
    #                   timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                   timed_metadata_pid: "__string",
    #                   transport_stream_id: 1,
    #                   video_pid: "__string",
    #                 },
    #               },
    #             },
    #             name_modifier: "__stringMin1",
    #             segment_modifier: "__string",
    #           },
    #           media_package_output_settings: {
    #           },
    #           ms_smooth_output_settings: {
    #             h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #             name_modifier: "__string",
    #           },
    #           multiplex_output_settings: {
    #             destination: { # required
    #               destination_ref_id: "__string",
    #             },
    #           },
    #           rtmp_output_settings: {
    #             certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #             connection_retry_interval: 1,
    #             destination: { # required
    #               destination_ref_id: "__string",
    #             },
    #             num_retries: 1,
    #           },
    #           udp_output_settings: {
    #             buffer_msec: 1,
    #             container_settings: { # required
    #               m2ts_settings: {
    #                 absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                 arib: "DISABLED", # accepts DISABLED, ENABLED
    #                 arib_captions_pid: "__string",
    #                 arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                 audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                 audio_frames_per_pes: 1,
    #                 audio_pids: "__string",
    #                 audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                 bitrate: 1,
    #                 buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                 cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                 dvb_nit_settings: {
    #                   network_id: 1, # required
    #                   network_name: "__stringMin1Max256", # required
    #                   rep_interval: 1,
    #                 },
    #                 dvb_sdt_settings: {
    #                   output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                   rep_interval: 1,
    #                   service_name: "__stringMin1Max256",
    #                   service_provider_name: "__stringMin1Max256",
    #                 },
    #                 dvb_sub_pids: "__string",
    #                 dvb_tdt_settings: {
    #                   rep_interval: 1,
    #                 },
    #                 dvb_teletext_pid: "__string",
    #                 ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                 ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                 ebp_lookahead_ms: 1,
    #                 ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                 ecm_pid: "__string",
    #                 es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                 etv_platform_pid: "__string",
    #                 etv_signal_pid: "__string",
    #                 fragment_time: 1.0,
    #                 klv: "NONE", # accepts NONE, PASSTHROUGH
    #                 klv_data_pids: "__string",
    #                 nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                 null_packet_bitrate: 1.0,
    #                 pat_interval: 1,
    #                 pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                 pcr_period: 1,
    #                 pcr_pid: "__string",
    #                 pmt_interval: 1,
    #                 pmt_pid: "__string",
    #                 program_num: 1,
    #                 rate_mode: "CBR", # accepts CBR, VBR
    #                 scte_27_pids: "__string",
    #                 scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                 scte_35_pid: "__string",
    #                 segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                 segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                 segmentation_time: 1.0,
    #                 timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                 timed_metadata_pid: "__string",
    #                 transport_stream_id: 1,
    #                 video_pid: "__string",
    #               },
    #             },
    #             destination: { # required
    #               destination_ref_id: "__string",
    #             },
    #             fec_output_settings: {
    #               column_depth: 1,
    #               include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #               row_length: 1,
    #             },
    #           },
    #         },
    #         video_description_name: "__string",
    #       }
    #
    # @!attribute [rw] audio_description_names
    #   The names of the AudioDescriptions used as audio sources for this
    #   output.
    #   @return [Array<String>]
    #
    # @!attribute [rw] caption_description_names
    #   The names of the CaptionDescriptions used as caption sources for
    #   this output.
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_name
    #   The name used to identify an output.
    #   @return [String]
    #
    # @!attribute [rw] output_settings
    #   Output type-specific settings.
    #   @return [Types::OutputSettings]
    #
    # @!attribute [rw] video_description_name
    #   The name of the VideoDescription used as the source for this output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Output AWS API Documentation
    #
    class Output < Struct.new(
      :audio_description_names,
      :caption_description_names,
      :output_name,
      :output_settings,
      :video_description_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass OutputDestination
    #   data as a hash:
    #
    #       {
    #         id: "__string",
    #         media_package_settings: [
    #           {
    #             channel_id: "__stringMin1",
    #           },
    #         ],
    #         multiplex_settings: {
    #           multiplex_id: "__stringMin1",
    #           program_name: "__stringMin1",
    #         },
    #         settings: [
    #           {
    #             password_param: "__string",
    #             stream_name: "__string",
    #             url: "__string",
    #             username: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] id
    #   User-specified id. This is used in an output group or an output.
    #   @return [String]
    #
    # @!attribute [rw] media_package_settings
    #   Destination settings for a MediaPackage output; one destination for
    #   both encoders.
    #   @return [Array<Types::MediaPackageOutputDestinationSettings>]
    #
    # @!attribute [rw] multiplex_settings
    #   Destination settings for a Multiplex output; one destination for
    #   both encoders.
    #   @return [Types::MultiplexProgramChannelDestinationSettings]
    #
    # @!attribute [rw] settings
    #   Destination settings for a standard output; one destination for each
    #   redundant encoder.
    #   @return [Array<Types::OutputDestinationSettings>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/OutputDestination AWS API Documentation
    #
    class OutputDestination < Struct.new(
      :id,
      :media_package_settings,
      :multiplex_settings,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass OutputDestinationSettings
    #   data as a hash:
    #
    #       {
    #         password_param: "__string",
    #         stream_name: "__string",
    #         url: "__string",
    #         username: "__string",
    #       }
    #
    # @!attribute [rw] password_param
    #   key used to extract the password from EC2 Parameter store
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   Stream name for RTMP destinations (URLs of type rtmp://)
    #   @return [String]
    #
    # @!attribute [rw] url
    #   A URL specifying a destination
    #   @return [String]
    #
    # @!attribute [rw] username
    #   username for destination
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/OutputDestinationSettings AWS API Documentation
    #
    class OutputDestinationSettings < Struct.new(
      :password_param,
      :stream_name,
      :url,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output groups for this Live Event. Output groups contain information
    # about where streams should be distributed.
    #
    # @note When making an API call, you may pass OutputGroup
    #   data as a hash:
    #
    #       {
    #         name: "__stringMax32",
    #         output_group_settings: { # required
    #           archive_group_settings: {
    #             destination: { # required
    #               destination_ref_id: "__string",
    #             },
    #             rollover_interval: 1,
    #           },
    #           frame_capture_group_settings: {
    #             destination: { # required
    #               destination_ref_id: "__string",
    #             },
    #           },
    #           hls_group_settings: {
    #             ad_markers: ["ADOBE"], # accepts ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
    #             base_url_content: "__string",
    #             base_url_content_1: "__string",
    #             base_url_manifest: "__string",
    #             base_url_manifest_1: "__string",
    #             caption_language_mappings: [
    #               {
    #                 caption_channel: 1, # required
    #                 language_code: "__stringMin3Max3", # required
    #                 language_description: "__stringMin1", # required
    #               },
    #             ],
    #             caption_language_setting: "INSERT", # accepts INSERT, NONE, OMIT
    #             client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #             codec_specification: "RFC_4281", # accepts RFC_4281, RFC_6381
    #             constant_iv: "__stringMin32Max32",
    #             destination: { # required
    #               destination_ref_id: "__string",
    #             },
    #             directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #             encryption_type: "AES128", # accepts AES128, SAMPLE_AES
    #             hls_cdn_settings: {
    #               hls_akamai_settings: {
    #                 connection_retry_interval: 1,
    #                 filecache_duration: 1,
    #                 http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                 num_retries: 1,
    #                 restart_delay: 1,
    #                 salt: "__string",
    #                 token: "__string",
    #               },
    #               hls_basic_put_settings: {
    #                 connection_retry_interval: 1,
    #                 filecache_duration: 1,
    #                 num_retries: 1,
    #                 restart_delay: 1,
    #               },
    #               hls_media_store_settings: {
    #                 connection_retry_interval: 1,
    #                 filecache_duration: 1,
    #                 media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #                 num_retries: 1,
    #                 restart_delay: 1,
    #               },
    #               hls_webdav_settings: {
    #                 connection_retry_interval: 1,
    #                 filecache_duration: 1,
    #                 http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                 num_retries: 1,
    #                 restart_delay: 1,
    #               },
    #             },
    #             hls_id_3_segment_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #             i_frame_only_playlists: "DISABLED", # accepts DISABLED, STANDARD
    #             index_n_segments: 1,
    #             input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #             iv_in_manifest: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #             iv_source: "EXPLICIT", # accepts EXPLICIT, FOLLOWS_SEGMENT_NUMBER
    #             keep_segments: 1,
    #             key_format: "__string",
    #             key_format_versions: "__string",
    #             key_provider_settings: {
    #               static_key_settings: {
    #                 key_provider_server: {
    #                   password_param: "__string",
    #                   uri: "__string", # required
    #                   username: "__string",
    #                 },
    #                 static_key_value: "__stringMin32Max32", # required
    #               },
    #             },
    #             manifest_compression: "GZIP", # accepts GZIP, NONE
    #             manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #             min_segment_length: 1,
    #             mode: "LIVE", # accepts LIVE, VOD
    #             output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY, VARIANT_MANIFESTS_AND_SEGMENTS
    #             program_date_time: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #             program_date_time_period: 1,
    #             redundant_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #             segment_length: 1,
    #             segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #             segments_per_subdirectory: 1,
    #             stream_inf_resolution: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #             timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #             timed_metadata_id_3_period: 1,
    #             timestamp_delta_milliseconds: 1,
    #             ts_file_mode: "SEGMENTED_FILES", # accepts SEGMENTED_FILES, SINGLE_FILE
    #           },
    #           media_package_group_settings: {
    #             destination: { # required
    #               destination_ref_id: "__string",
    #             },
    #           },
    #           ms_smooth_group_settings: {
    #             acquisition_point_id: "__string",
    #             audio_only_timecode_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED_CLOCK
    #             certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #             connection_retry_interval: 1,
    #             destination: { # required
    #               destination_ref_id: "__string",
    #             },
    #             event_id: "__string",
    #             event_id_mode: "NO_EVENT_ID", # accepts NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP
    #             event_stop_behavior: "NONE", # accepts NONE, SEND_EOS
    #             filecache_duration: 1,
    #             fragment_length: 1,
    #             input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #             num_retries: 1,
    #             restart_delay: 1,
    #             segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #             send_delay_ms: 1,
    #             sparse_track_type: "NONE", # accepts NONE, SCTE_35, SCTE_35_WITHOUT_SEGMENTATION
    #             stream_manifest_behavior: "DO_NOT_SEND", # accepts DO_NOT_SEND, SEND
    #             timestamp_offset: "__string",
    #             timestamp_offset_mode: "USE_CONFIGURED_OFFSET", # accepts USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE
    #           },
    #           multiplex_group_settings: {
    #           },
    #           rtmp_group_settings: {
    #             authentication_scheme: "AKAMAI", # accepts AKAMAI, COMMON
    #             cache_full_behavior: "DISCONNECT_IMMEDIATELY", # accepts DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER
    #             cache_length: 1,
    #             caption_data: "ALL", # accepts ALL, FIELD1_608, FIELD1_AND_FIELD2_608
    #             input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #             restart_delay: 1,
    #           },
    #           udp_group_settings: {
    #             input_loss_action: "DROP_PROGRAM", # accepts DROP_PROGRAM, DROP_TS, EMIT_PROGRAM
    #             timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #             timed_metadata_id_3_period: 1,
    #           },
    #         },
    #         outputs: [ # required
    #           {
    #             audio_description_names: ["__string"],
    #             caption_description_names: ["__string"],
    #             output_name: "__stringMin1Max255",
    #             output_settings: { # required
    #               archive_output_settings: {
    #                 container_settings: { # required
    #                   m2ts_settings: {
    #                     absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                     arib: "DISABLED", # accepts DISABLED, ENABLED
    #                     arib_captions_pid: "__string",
    #                     arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                     audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                     audio_frames_per_pes: 1,
    #                     audio_pids: "__string",
    #                     audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                     bitrate: 1,
    #                     buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                     cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                     dvb_nit_settings: {
    #                       network_id: 1, # required
    #                       network_name: "__stringMin1Max256", # required
    #                       rep_interval: 1,
    #                     },
    #                     dvb_sdt_settings: {
    #                       output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                       rep_interval: 1,
    #                       service_name: "__stringMin1Max256",
    #                       service_provider_name: "__stringMin1Max256",
    #                     },
    #                     dvb_sub_pids: "__string",
    #                     dvb_tdt_settings: {
    #                       rep_interval: 1,
    #                     },
    #                     dvb_teletext_pid: "__string",
    #                     ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                     ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                     ebp_lookahead_ms: 1,
    #                     ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                     ecm_pid: "__string",
    #                     es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                     etv_platform_pid: "__string",
    #                     etv_signal_pid: "__string",
    #                     fragment_time: 1.0,
    #                     klv: "NONE", # accepts NONE, PASSTHROUGH
    #                     klv_data_pids: "__string",
    #                     nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                     null_packet_bitrate: 1.0,
    #                     pat_interval: 1,
    #                     pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                     pcr_period: 1,
    #                     pcr_pid: "__string",
    #                     pmt_interval: 1,
    #                     pmt_pid: "__string",
    #                     program_num: 1,
    #                     rate_mode: "CBR", # accepts CBR, VBR
    #                     scte_27_pids: "__string",
    #                     scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                     scte_35_pid: "__string",
    #                     segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                     segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                     segmentation_time: 1.0,
    #                     timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                     timed_metadata_pid: "__string",
    #                     transport_stream_id: 1,
    #                     video_pid: "__string",
    #                   },
    #                   raw_settings: {
    #                   },
    #                 },
    #                 extension: "__string",
    #                 name_modifier: "__string",
    #               },
    #               frame_capture_output_settings: {
    #                 name_modifier: "__string",
    #               },
    #               hls_output_settings: {
    #                 h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                 hls_settings: { # required
    #                   audio_only_hls_settings: {
    #                     audio_group_id: "__string",
    #                     audio_only_image: {
    #                       password_param: "__string",
    #                       uri: "__string", # required
    #                       username: "__string",
    #                     },
    #                     audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                     segment_type: "AAC", # accepts AAC, FMP4
    #                   },
    #                   fmp_4_hls_settings: {
    #                     audio_rendition_sets: "__string",
    #                     nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                     timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                   },
    #                   standard_hls_settings: {
    #                     audio_rendition_sets: "__string",
    #                     m3u_8_settings: { # required
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: "__string",
    #                       ecm_pid: "__string",
    #                       nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       pat_interval: 1,
    #                       pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                       pcr_period: 1,
    #                       pcr_pid: "__string",
    #                       pmt_interval: 1,
    #                       pmt_pid: "__string",
    #                       program_num: 1,
    #                       scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       scte_35_pid: "__string",
    #                       timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       timed_metadata_pid: "__string",
    #                       transport_stream_id: 1,
    #                       video_pid: "__string",
    #                     },
    #                   },
    #                 },
    #                 name_modifier: "__stringMin1",
    #                 segment_modifier: "__string",
    #               },
    #               media_package_output_settings: {
    #               },
    #               ms_smooth_output_settings: {
    #                 h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                 name_modifier: "__string",
    #               },
    #               multiplex_output_settings: {
    #                 destination: { # required
    #                   destination_ref_id: "__string",
    #                 },
    #               },
    #               rtmp_output_settings: {
    #                 certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #                 connection_retry_interval: 1,
    #                 destination: { # required
    #                   destination_ref_id: "__string",
    #                 },
    #                 num_retries: 1,
    #               },
    #               udp_output_settings: {
    #                 buffer_msec: 1,
    #                 container_settings: { # required
    #                   m2ts_settings: {
    #                     absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                     arib: "DISABLED", # accepts DISABLED, ENABLED
    #                     arib_captions_pid: "__string",
    #                     arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                     audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                     audio_frames_per_pes: 1,
    #                     audio_pids: "__string",
    #                     audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                     bitrate: 1,
    #                     buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                     cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                     dvb_nit_settings: {
    #                       network_id: 1, # required
    #                       network_name: "__stringMin1Max256", # required
    #                       rep_interval: 1,
    #                     },
    #                     dvb_sdt_settings: {
    #                       output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                       rep_interval: 1,
    #                       service_name: "__stringMin1Max256",
    #                       service_provider_name: "__stringMin1Max256",
    #                     },
    #                     dvb_sub_pids: "__string",
    #                     dvb_tdt_settings: {
    #                       rep_interval: 1,
    #                     },
    #                     dvb_teletext_pid: "__string",
    #                     ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                     ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                     ebp_lookahead_ms: 1,
    #                     ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                     ecm_pid: "__string",
    #                     es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                     etv_platform_pid: "__string",
    #                     etv_signal_pid: "__string",
    #                     fragment_time: 1.0,
    #                     klv: "NONE", # accepts NONE, PASSTHROUGH
    #                     klv_data_pids: "__string",
    #                     nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                     null_packet_bitrate: 1.0,
    #                     pat_interval: 1,
    #                     pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                     pcr_period: 1,
    #                     pcr_pid: "__string",
    #                     pmt_interval: 1,
    #                     pmt_pid: "__string",
    #                     program_num: 1,
    #                     rate_mode: "CBR", # accepts CBR, VBR
    #                     scte_27_pids: "__string",
    #                     scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                     scte_35_pid: "__string",
    #                     segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                     segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                     segmentation_time: 1.0,
    #                     timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                     timed_metadata_pid: "__string",
    #                     transport_stream_id: 1,
    #                     video_pid: "__string",
    #                   },
    #                 },
    #                 destination: { # required
    #                   destination_ref_id: "__string",
    #                 },
    #                 fec_output_settings: {
    #                   column_depth: 1,
    #                   include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #                   row_length: 1,
    #                 },
    #               },
    #             },
    #             video_description_name: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   Custom output group name optionally defined by the user. Only
    #   letters, numbers, and the underscore character allowed; only 32
    #   characters allowed.
    #   @return [String]
    #
    # @!attribute [rw] output_group_settings
    #   Settings associated with the output group.
    #   @return [Types::OutputGroupSettings]
    #
    # @!attribute [rw] outputs
    #   @return [Array<Types::Output>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/OutputGroup AWS API Documentation
    #
    class OutputGroup < Struct.new(
      :name,
      :output_group_settings,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output Group Settings
    #
    # @note When making an API call, you may pass OutputGroupSettings
    #   data as a hash:
    #
    #       {
    #         archive_group_settings: {
    #           destination: { # required
    #             destination_ref_id: "__string",
    #           },
    #           rollover_interval: 1,
    #         },
    #         frame_capture_group_settings: {
    #           destination: { # required
    #             destination_ref_id: "__string",
    #           },
    #         },
    #         hls_group_settings: {
    #           ad_markers: ["ADOBE"], # accepts ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
    #           base_url_content: "__string",
    #           base_url_content_1: "__string",
    #           base_url_manifest: "__string",
    #           base_url_manifest_1: "__string",
    #           caption_language_mappings: [
    #             {
    #               caption_channel: 1, # required
    #               language_code: "__stringMin3Max3", # required
    #               language_description: "__stringMin1", # required
    #             },
    #           ],
    #           caption_language_setting: "INSERT", # accepts INSERT, NONE, OMIT
    #           client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #           codec_specification: "RFC_4281", # accepts RFC_4281, RFC_6381
    #           constant_iv: "__stringMin32Max32",
    #           destination: { # required
    #             destination_ref_id: "__string",
    #           },
    #           directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #           encryption_type: "AES128", # accepts AES128, SAMPLE_AES
    #           hls_cdn_settings: {
    #             hls_akamai_settings: {
    #               connection_retry_interval: 1,
    #               filecache_duration: 1,
    #               http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #               num_retries: 1,
    #               restart_delay: 1,
    #               salt: "__string",
    #               token: "__string",
    #             },
    #             hls_basic_put_settings: {
    #               connection_retry_interval: 1,
    #               filecache_duration: 1,
    #               num_retries: 1,
    #               restart_delay: 1,
    #             },
    #             hls_media_store_settings: {
    #               connection_retry_interval: 1,
    #               filecache_duration: 1,
    #               media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #               num_retries: 1,
    #               restart_delay: 1,
    #             },
    #             hls_webdav_settings: {
    #               connection_retry_interval: 1,
    #               filecache_duration: 1,
    #               http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #               num_retries: 1,
    #               restart_delay: 1,
    #             },
    #           },
    #           hls_id_3_segment_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #           i_frame_only_playlists: "DISABLED", # accepts DISABLED, STANDARD
    #           index_n_segments: 1,
    #           input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #           iv_in_manifest: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #           iv_source: "EXPLICIT", # accepts EXPLICIT, FOLLOWS_SEGMENT_NUMBER
    #           keep_segments: 1,
    #           key_format: "__string",
    #           key_format_versions: "__string",
    #           key_provider_settings: {
    #             static_key_settings: {
    #               key_provider_server: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               static_key_value: "__stringMin32Max32", # required
    #             },
    #           },
    #           manifest_compression: "GZIP", # accepts GZIP, NONE
    #           manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #           min_segment_length: 1,
    #           mode: "LIVE", # accepts LIVE, VOD
    #           output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY, VARIANT_MANIFESTS_AND_SEGMENTS
    #           program_date_time: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #           program_date_time_period: 1,
    #           redundant_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #           segment_length: 1,
    #           segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #           segments_per_subdirectory: 1,
    #           stream_inf_resolution: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #           timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #           timed_metadata_id_3_period: 1,
    #           timestamp_delta_milliseconds: 1,
    #           ts_file_mode: "SEGMENTED_FILES", # accepts SEGMENTED_FILES, SINGLE_FILE
    #         },
    #         media_package_group_settings: {
    #           destination: { # required
    #             destination_ref_id: "__string",
    #           },
    #         },
    #         ms_smooth_group_settings: {
    #           acquisition_point_id: "__string",
    #           audio_only_timecode_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED_CLOCK
    #           certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #           connection_retry_interval: 1,
    #           destination: { # required
    #             destination_ref_id: "__string",
    #           },
    #           event_id: "__string",
    #           event_id_mode: "NO_EVENT_ID", # accepts NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP
    #           event_stop_behavior: "NONE", # accepts NONE, SEND_EOS
    #           filecache_duration: 1,
    #           fragment_length: 1,
    #           input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #           num_retries: 1,
    #           restart_delay: 1,
    #           segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #           send_delay_ms: 1,
    #           sparse_track_type: "NONE", # accepts NONE, SCTE_35, SCTE_35_WITHOUT_SEGMENTATION
    #           stream_manifest_behavior: "DO_NOT_SEND", # accepts DO_NOT_SEND, SEND
    #           timestamp_offset: "__string",
    #           timestamp_offset_mode: "USE_CONFIGURED_OFFSET", # accepts USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE
    #         },
    #         multiplex_group_settings: {
    #         },
    #         rtmp_group_settings: {
    #           authentication_scheme: "AKAMAI", # accepts AKAMAI, COMMON
    #           cache_full_behavior: "DISCONNECT_IMMEDIATELY", # accepts DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER
    #           cache_length: 1,
    #           caption_data: "ALL", # accepts ALL, FIELD1_608, FIELD1_AND_FIELD2_608
    #           input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #           restart_delay: 1,
    #         },
    #         udp_group_settings: {
    #           input_loss_action: "DROP_PROGRAM", # accepts DROP_PROGRAM, DROP_TS, EMIT_PROGRAM
    #           timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #           timed_metadata_id_3_period: 1,
    #         },
    #       }
    #
    # @!attribute [rw] archive_group_settings
    #   Archive Group Settings
    #   @return [Types::ArchiveGroupSettings]
    #
    # @!attribute [rw] frame_capture_group_settings
    #   Frame Capture Group Settings
    #   @return [Types::FrameCaptureGroupSettings]
    #
    # @!attribute [rw] hls_group_settings
    #   Hls Group Settings
    #   @return [Types::HlsGroupSettings]
    #
    # @!attribute [rw] media_package_group_settings
    #   Media Package Group Settings
    #   @return [Types::MediaPackageGroupSettings]
    #
    # @!attribute [rw] ms_smooth_group_settings
    #   Ms Smooth Group Settings
    #   @return [Types::MsSmoothGroupSettings]
    #
    # @!attribute [rw] multiplex_group_settings
    #   Multiplex Group Settings
    #   @return [Types::MultiplexGroupSettings]
    #
    # @!attribute [rw] rtmp_group_settings
    #   Rtmp Group Settings
    #   @return [Types::RtmpGroupSettings]
    #
    # @!attribute [rw] udp_group_settings
    #   Udp Group Settings
    #   @return [Types::UdpGroupSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/OutputGroupSettings AWS API Documentation
    #
    class OutputGroupSettings < Struct.new(
      :archive_group_settings,
      :frame_capture_group_settings,
      :hls_group_settings,
      :media_package_group_settings,
      :ms_smooth_group_settings,
      :multiplex_group_settings,
      :rtmp_group_settings,
      :udp_group_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reference to an OutputDestination ID defined in the channel
    #
    # @note When making an API call, you may pass OutputLocationRef
    #   data as a hash:
    #
    #       {
    #         destination_ref_id: "__string",
    #       }
    #
    # @!attribute [rw] destination_ref_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/OutputLocationRef AWS API Documentation
    #
    class OutputLocationRef < Struct.new(
      :destination_ref_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output Settings
    #
    # @note When making an API call, you may pass OutputSettings
    #   data as a hash:
    #
    #       {
    #         archive_output_settings: {
    #           container_settings: { # required
    #             m2ts_settings: {
    #               absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #               arib: "DISABLED", # accepts DISABLED, ENABLED
    #               arib_captions_pid: "__string",
    #               arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #               audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #               audio_frames_per_pes: 1,
    #               audio_pids: "__string",
    #               audio_stream_type: "ATSC", # accepts ATSC, DVB
    #               bitrate: 1,
    #               buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #               cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #               dvb_nit_settings: {
    #                 network_id: 1, # required
    #                 network_name: "__stringMin1Max256", # required
    #                 rep_interval: 1,
    #               },
    #               dvb_sdt_settings: {
    #                 output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                 rep_interval: 1,
    #                 service_name: "__stringMin1Max256",
    #                 service_provider_name: "__stringMin1Max256",
    #               },
    #               dvb_sub_pids: "__string",
    #               dvb_tdt_settings: {
    #                 rep_interval: 1,
    #               },
    #               dvb_teletext_pid: "__string",
    #               ebif: "NONE", # accepts NONE, PASSTHROUGH
    #               ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #               ebp_lookahead_ms: 1,
    #               ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #               ecm_pid: "__string",
    #               es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               etv_platform_pid: "__string",
    #               etv_signal_pid: "__string",
    #               fragment_time: 1.0,
    #               klv: "NONE", # accepts NONE, PASSTHROUGH
    #               klv_data_pids: "__string",
    #               nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #               null_packet_bitrate: 1.0,
    #               pat_interval: 1,
    #               pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #               pcr_period: 1,
    #               pcr_pid: "__string",
    #               pmt_interval: 1,
    #               pmt_pid: "__string",
    #               program_num: 1,
    #               rate_mode: "CBR", # accepts CBR, VBR
    #               scte_27_pids: "__string",
    #               scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #               scte_35_pid: "__string",
    #               segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #               segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #               segmentation_time: 1.0,
    #               timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #               timed_metadata_pid: "__string",
    #               transport_stream_id: 1,
    #               video_pid: "__string",
    #             },
    #             raw_settings: {
    #             },
    #           },
    #           extension: "__string",
    #           name_modifier: "__string",
    #         },
    #         frame_capture_output_settings: {
    #           name_modifier: "__string",
    #         },
    #         hls_output_settings: {
    #           h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #           hls_settings: { # required
    #             audio_only_hls_settings: {
    #               audio_group_id: "__string",
    #               audio_only_image: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #               segment_type: "AAC", # accepts AAC, FMP4
    #             },
    #             fmp_4_hls_settings: {
    #               audio_rendition_sets: "__string",
    #               nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #               timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #             },
    #             standard_hls_settings: {
    #               audio_rendition_sets: "__string",
    #               m3u_8_settings: { # required
    #                 audio_frames_per_pes: 1,
    #                 audio_pids: "__string",
    #                 ecm_pid: "__string",
    #                 nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                 pat_interval: 1,
    #                 pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                 pcr_period: 1,
    #                 pcr_pid: "__string",
    #                 pmt_interval: 1,
    #                 pmt_pid: "__string",
    #                 program_num: 1,
    #                 scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                 scte_35_pid: "__string",
    #                 timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                 timed_metadata_pid: "__string",
    #                 transport_stream_id: 1,
    #                 video_pid: "__string",
    #               },
    #             },
    #           },
    #           name_modifier: "__stringMin1",
    #           segment_modifier: "__string",
    #         },
    #         media_package_output_settings: {
    #         },
    #         ms_smooth_output_settings: {
    #           h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #           name_modifier: "__string",
    #         },
    #         multiplex_output_settings: {
    #           destination: { # required
    #             destination_ref_id: "__string",
    #           },
    #         },
    #         rtmp_output_settings: {
    #           certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #           connection_retry_interval: 1,
    #           destination: { # required
    #             destination_ref_id: "__string",
    #           },
    #           num_retries: 1,
    #         },
    #         udp_output_settings: {
    #           buffer_msec: 1,
    #           container_settings: { # required
    #             m2ts_settings: {
    #               absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #               arib: "DISABLED", # accepts DISABLED, ENABLED
    #               arib_captions_pid: "__string",
    #               arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #               audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #               audio_frames_per_pes: 1,
    #               audio_pids: "__string",
    #               audio_stream_type: "ATSC", # accepts ATSC, DVB
    #               bitrate: 1,
    #               buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #               cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #               dvb_nit_settings: {
    #                 network_id: 1, # required
    #                 network_name: "__stringMin1Max256", # required
    #                 rep_interval: 1,
    #               },
    #               dvb_sdt_settings: {
    #                 output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                 rep_interval: 1,
    #                 service_name: "__stringMin1Max256",
    #                 service_provider_name: "__stringMin1Max256",
    #               },
    #               dvb_sub_pids: "__string",
    #               dvb_tdt_settings: {
    #                 rep_interval: 1,
    #               },
    #               dvb_teletext_pid: "__string",
    #               ebif: "NONE", # accepts NONE, PASSTHROUGH
    #               ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #               ebp_lookahead_ms: 1,
    #               ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #               ecm_pid: "__string",
    #               es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               etv_platform_pid: "__string",
    #               etv_signal_pid: "__string",
    #               fragment_time: 1.0,
    #               klv: "NONE", # accepts NONE, PASSTHROUGH
    #               klv_data_pids: "__string",
    #               nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #               null_packet_bitrate: 1.0,
    #               pat_interval: 1,
    #               pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #               pcr_period: 1,
    #               pcr_pid: "__string",
    #               pmt_interval: 1,
    #               pmt_pid: "__string",
    #               program_num: 1,
    #               rate_mode: "CBR", # accepts CBR, VBR
    #               scte_27_pids: "__string",
    #               scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #               scte_35_pid: "__string",
    #               segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #               segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #               segmentation_time: 1.0,
    #               timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #               timed_metadata_pid: "__string",
    #               transport_stream_id: 1,
    #               video_pid: "__string",
    #             },
    #           },
    #           destination: { # required
    #             destination_ref_id: "__string",
    #           },
    #           fec_output_settings: {
    #             column_depth: 1,
    #             include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #             row_length: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] archive_output_settings
    #   Archive Output Settings
    #   @return [Types::ArchiveOutputSettings]
    #
    # @!attribute [rw] frame_capture_output_settings
    #   Frame Capture Output Settings
    #   @return [Types::FrameCaptureOutputSettings]
    #
    # @!attribute [rw] hls_output_settings
    #   Hls Output Settings
    #   @return [Types::HlsOutputSettings]
    #
    # @!attribute [rw] media_package_output_settings
    #   Media Package Output Settings
    #   @return [Types::MediaPackageOutputSettings]
    #
    # @!attribute [rw] ms_smooth_output_settings
    #   Ms Smooth Output Settings
    #   @return [Types::MsSmoothOutputSettings]
    #
    # @!attribute [rw] multiplex_output_settings
    #   Multiplex Output Settings
    #   @return [Types::MultiplexOutputSettings]
    #
    # @!attribute [rw] rtmp_output_settings
    #   Rtmp Output Settings
    #   @return [Types::RtmpOutputSettings]
    #
    # @!attribute [rw] udp_output_settings
    #   Udp Output Settings
    #   @return [Types::UdpOutputSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/OutputSettings AWS API Documentation
    #
    class OutputSettings < Struct.new(
      :archive_output_settings,
      :frame_capture_output_settings,
      :hls_output_settings,
      :media_package_output_settings,
      :ms_smooth_output_settings,
      :multiplex_output_settings,
      :rtmp_output_settings,
      :udp_output_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Pass Through Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/PassThroughSettings AWS API Documentation
    #
    class PassThroughSettings < Aws::EmptyStructure; end

    # Settings for the action to set pause state of a channel.
    #
    # @note When making an API call, you may pass PauseStateScheduleActionSettings
    #   data as a hash:
    #
    #       {
    #         pipelines: [
    #           {
    #             pipeline_id: "PIPELINE_0", # required, accepts PIPELINE_0, PIPELINE_1
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] pipelines
    #   @return [Array<Types::PipelinePauseStateSettings>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/PauseStateScheduleActionSettings AWS API Documentation
    #
    class PauseStateScheduleActionSettings < Struct.new(
      :pipelines)
      SENSITIVE = []
      include Aws::Structure
    end

    # Runtime details of a pipeline when a channel is running.
    #
    # @!attribute [rw] active_input_attachment_name
    #   The name of the active input attachment currently being ingested by
    #   this pipeline.
    #   @return [String]
    #
    # @!attribute [rw] active_input_switch_action_name
    #   The name of the input switch schedule action that occurred most
    #   recently and that resulted in the switch to the current input
    #   attachment for this pipeline.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_id
    #   Pipeline ID
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/PipelineDetail AWS API Documentation
    #
    class PipelineDetail < Struct.new(
      :active_input_attachment_name,
      :active_input_switch_action_name,
      :pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for pausing a pipeline.
    #
    # @note When making an API call, you may pass PipelinePauseStateSettings
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "PIPELINE_0", # required, accepts PIPELINE_0, PIPELINE_1
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   Pipeline ID to pause ("PIPELINE\_0" or "PIPELINE\_1").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/PipelinePauseStateSettings AWS API Documentation
    #
    class PipelinePauseStateSettings < Struct.new(
      :pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # PurchaseOffering request
    #
    # @!attribute [rw] count
    #   Number of resources
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   Name for the new reservation
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   Unique request ID to be specified. This is needed to prevent retries from creating multiple resources.**A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   Requested reservation start time (UTC) in ISO-8601 format. The
    #   specified time must be between the first day of the current month
    #   and one year from now. If no value is given, the default is now.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/PurchaseOffering AWS API Documentation
    #
    class PurchaseOffering < Struct.new(
      :count,
      :name,
      :request_id,
      :start,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PurchaseOfferingRequest
    #   data as a hash:
    #
    #       {
    #         count: 1, # required
    #         name: "__string",
    #         offering_id: "__string", # required
    #         request_id: "__string",
    #         start: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] count
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/PurchaseOfferingRequest AWS API Documentation
    #
    class PurchaseOfferingRequest < Struct.new(
      :count,
      :name,
      :offering_id,
      :request_id,
      :start,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reservation
    #   Reserved resources available to use
    #   @return [Types::Reservation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/PurchaseOfferingResponse AWS API Documentation
    #
    class PurchaseOfferingResponse < Struct.new(
      :reservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # PurchaseOffering response
    #
    # @!attribute [rw] reservation
    #   Reserved resources available to use
    #   @return [Types::Reservation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/PurchaseOfferingResultModel AWS API Documentation
    #
    class PurchaseOfferingResultModel < Struct.new(
      :reservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raw Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/RawSettings AWS API Documentation
    #
    class RawSettings < Aws::EmptyStructure; end

    # Rec601 Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Rec601Settings AWS API Documentation
    #
    class Rec601Settings < Aws::EmptyStructure; end

    # Rec709 Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Rec709Settings AWS API Documentation
    #
    class Rec709Settings < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RejectInputDeviceTransferRequest
    #   data as a hash:
    #
    #       {
    #         input_device_id: "__string", # required
    #       }
    #
    # @!attribute [rw] input_device_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/RejectInputDeviceTransferRequest AWS API Documentation
    #
    class RejectInputDeviceTransferRequest < Struct.new(
      :input_device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/RejectInputDeviceTransferResponse AWS API Documentation
    #
    class RejectInputDeviceTransferResponse < Aws::EmptyStructure; end

    # Remix Settings
    #
    # @note When making an API call, you may pass RemixSettings
    #   data as a hash:
    #
    #       {
    #         channel_mappings: [ # required
    #           {
    #             input_channel_levels: [ # required
    #               {
    #                 gain: 1, # required
    #                 input_channel: 1, # required
    #               },
    #             ],
    #             output_channel: 1, # required
    #           },
    #         ],
    #         channels_in: 1,
    #         channels_out: 1,
    #       }
    #
    # @!attribute [rw] channel_mappings
    #   Mapping of input channels to output channels, with appropriate gain
    #   adjustments.
    #   @return [Array<Types::AudioChannelMapping>]
    #
    # @!attribute [rw] channels_in
    #   Number of input channels to be used.
    #   @return [Integer]
    #
    # @!attribute [rw] channels_out
    #   Number of output channels to be produced. Valid values: 1, 2, 4, 6,
    #   8
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/RemixSettings AWS API Documentation
    #
    class RemixSettings < Struct.new(
      :channel_mappings,
      :channels_in,
      :channels_out)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reserved resources available to use
    #
    # @!attribute [rw] arn
    #   Unique reservation ARN, e.g.
    #   'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
    #   @return [String]
    #
    # @!attribute [rw] count
    #   Number of reserved resources
    #   @return [Integer]
    #
    # @!attribute [rw] currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g.
    #   'USD'
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   Lease duration, e.g. '12'
    #   @return [Integer]
    #
    # @!attribute [rw] duration_units
    #   Units for duration, e.g. 'MONTHS'
    #   @return [String]
    #
    # @!attribute [rw] end
    #   Reservation UTC end date and time in ISO-8601 format, e.g.
    #   '2019-03-01T00:00:00'
    #   @return [String]
    #
    # @!attribute [rw] fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a
    #   NO\_UPFRONT offering
    #   @return [Float]
    #
    # @!attribute [rw] name
    #   User specified reservation name
    #   @return [String]
    #
    # @!attribute [rw] offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps,
    #   and standard VQ in US West (Oregon)'
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   Unique offering ID, e.g. '87654321'
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   Offering type, e.g. 'NO\_UPFRONT'
    #   @return [String]
    #
    # @!attribute [rw] region
    #   AWS region, e.g. 'us-west-2'
    #   @return [String]
    #
    # @!attribute [rw] reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   Resource configuration details
    #   @return [Types::ReservationResourceSpecification]
    #
    # @!attribute [rw] start
    #   Reservation UTC start date and time in ISO-8601 format, e.g.
    #   '2018-03-01T00:00:00'
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Current state of reservation, e.g. 'ACTIVE'
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Reservation AWS API Documentation
    #
    class Reservation < Struct.new(
      :arn,
      :count,
      :currency_code,
      :duration,
      :duration_units,
      :end,
      :fixed_price,
      :name,
      :offering_description,
      :offering_id,
      :offering_type,
      :region,
      :reservation_id,
      :resource_specification,
      :start,
      :state,
      :tags,
      :usage_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource configuration (codec, resolution, bitrate, ...)
    #
    # @!attribute [rw] channel_class
    #   Channel class, e.g. 'STANDARD'
    #   @return [String]
    #
    # @!attribute [rw] codec
    #   Codec, e.g. 'AVC'
    #   @return [String]
    #
    # @!attribute [rw] maximum_bitrate
    #   Maximum bitrate, e.g. 'MAX\_20\_MBPS'
    #   @return [String]
    #
    # @!attribute [rw] maximum_framerate
    #   Maximum framerate, e.g. 'MAX\_30\_FPS' (Outputs only)
    #   @return [String]
    #
    # @!attribute [rw] resolution
    #   Resolution, e.g. 'HD'
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
    #   @return [String]
    #
    # @!attribute [rw] special_feature
    #   Special feature, e.g. 'AUDIO\_NORMALIZATION' (Channels only)
    #   @return [String]
    #
    # @!attribute [rw] video_quality
    #   Video quality, e.g. 'STANDARD' (Outputs only)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ReservationResourceSpecification AWS API Documentation
    #
    class ReservationResourceSpecification < Struct.new(
      :channel_class,
      :codec,
      :maximum_bitrate,
      :maximum_framerate,
      :resolution,
      :resource_type,
      :special_feature,
      :video_quality)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ResourceConflict AWS API Documentation
    #
    class ResourceConflict < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ResourceNotFound AWS API Documentation
    #
    class ResourceNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Rtmp Caption Info Destination Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/RtmpCaptionInfoDestinationSettings AWS API Documentation
    #
    class RtmpCaptionInfoDestinationSettings < Aws::EmptyStructure; end

    # Rtmp Group Settings
    #
    # @note When making an API call, you may pass RtmpGroupSettings
    #   data as a hash:
    #
    #       {
    #         authentication_scheme: "AKAMAI", # accepts AKAMAI, COMMON
    #         cache_full_behavior: "DISCONNECT_IMMEDIATELY", # accepts DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER
    #         cache_length: 1,
    #         caption_data: "ALL", # accepts ALL, FIELD1_608, FIELD1_AND_FIELD2_608
    #         input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #         restart_delay: 1,
    #       }
    #
    # @!attribute [rw] authentication_scheme
    #   Authentication scheme to use when connecting with CDN
    #   @return [String]
    #
    # @!attribute [rw] cache_full_behavior
    #   Controls behavior when content cache fills up. If remote origin
    #   server stalls the RTMP connection and does not accept content fast
    #   enough the 'Media Cache' will fill up. When the cache reaches the
    #   duration specified by cacheLength the cache will stop accepting new
    #   content. If set to disconnectImmediately, the RTMP output will force
    #   a disconnect. Clear the media cache, and reconnect after
    #   restartDelay seconds. If set to waitForServer, the RTMP output will
    #   wait up to 5 minutes to allow the origin server to begin accepting
    #   data again.
    #   @return [String]
    #
    # @!attribute [rw] cache_length
    #   Cache length, in seconds, is used to calculate buffer size.
    #   @return [Integer]
    #
    # @!attribute [rw] caption_data
    #   Controls the types of data that passes to onCaptionInfo outputs. If
    #   set to 'all' then 608 and 708 carried DTVCC data will be passed.
    #   If set to 'field1AndField2608' then DTVCC data will be stripped
    #   out, but 608 data from both fields will be passed. If set to
    #   'field1608' then only the data carried in 608 from field 1 video
    #   will be passed.
    #   @return [String]
    #
    # @!attribute [rw] input_loss_action
    #   Controls the behavior of this RTMP group if input becomes
    #   unavailable. - emitOutput: Emit a slate until input returns. -
    #   pauseOutput: Stop transmitting data until input returns. This does
    #   not close the underlying RTMP connection.
    #   @return [String]
    #
    # @!attribute [rw] restart_delay
    #   If a streaming output fails, number of seconds to wait until a
    #   restart is initiated. A value of 0 means never restart.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/RtmpGroupSettings AWS API Documentation
    #
    class RtmpGroupSettings < Struct.new(
      :authentication_scheme,
      :cache_full_behavior,
      :cache_length,
      :caption_data,
      :input_loss_action,
      :restart_delay)
      SENSITIVE = []
      include Aws::Structure
    end

    # Rtmp Output Settings
    #
    # @note When making an API call, you may pass RtmpOutputSettings
    #   data as a hash:
    #
    #       {
    #         certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #         connection_retry_interval: 1,
    #         destination: { # required
    #           destination_ref_id: "__string",
    #         },
    #         num_retries: 1,
    #       }
    #
    # @!attribute [rw] certificate_mode
    #   If set to verifyAuthenticity, verify the tls certificate chain to a
    #   trusted Certificate Authority (CA). This will cause rtmps outputs
    #   with self-signed certificates to fail.
    #   @return [String]
    #
    # @!attribute [rw] connection_retry_interval
    #   Number of seconds to wait before retrying a connection to the Flash
    #   Media server if the connection is lost.
    #   @return [Integer]
    #
    # @!attribute [rw] destination
    #   The RTMP endpoint excluding the stream name (eg.
    #   rtmp://host/appname). For connection to Akamai, a username and
    #   password must be supplied. URI fields accept format identifiers.
    #   @return [Types::OutputLocationRef]
    #
    # @!attribute [rw] num_retries
    #   Number of retry attempts.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/RtmpOutputSettings AWS API Documentation
    #
    class RtmpOutputSettings < Struct.new(
      :certificate_mode,
      :connection_retry_interval,
      :destination,
      :num_retries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on a single schedule action.
    #
    # @note When making an API call, you may pass ScheduleAction
    #   data as a hash:
    #
    #       {
    #         action_name: "__string", # required
    #         schedule_action_settings: { # required
    #           hls_id_3_segment_tagging_settings: {
    #             tag: "__string", # required
    #           },
    #           hls_timed_metadata_settings: {
    #             id_3: "__string", # required
    #           },
    #           input_prepare_settings: {
    #             input_attachment_name_reference: "__string",
    #             input_clipping_settings: {
    #               input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #               start_timecode: {
    #                 timecode: "__string",
    #               },
    #               stop_timecode: {
    #                 last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #                 timecode: "__string",
    #               },
    #             },
    #             url_path: ["__string"],
    #           },
    #           input_switch_settings: {
    #             input_attachment_name_reference: "__string", # required
    #             input_clipping_settings: {
    #               input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #               start_timecode: {
    #                 timecode: "__string",
    #               },
    #               stop_timecode: {
    #                 last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #                 timecode: "__string",
    #               },
    #             },
    #             url_path: ["__string"],
    #           },
    #           pause_state_settings: {
    #             pipelines: [
    #               {
    #                 pipeline_id: "PIPELINE_0", # required, accepts PIPELINE_0, PIPELINE_1
    #               },
    #             ],
    #           },
    #           scte_35_return_to_network_settings: {
    #             splice_event_id: 1, # required
    #           },
    #           scte_35_splice_insert_settings: {
    #             duration: 1,
    #             splice_event_id: 1, # required
    #           },
    #           scte_35_time_signal_settings: {
    #             scte_35_descriptors: [ # required
    #               {
    #                 scte_35_descriptor_settings: { # required
    #                   segmentation_descriptor_scte_35_descriptor_settings: { # required
    #                     delivery_restrictions: {
    #                       archive_allowed_flag: "ARCHIVE_NOT_ALLOWED", # required, accepts ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
    #                       device_restrictions: "NONE", # required, accepts NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
    #                       no_regional_blackout_flag: "REGIONAL_BLACKOUT", # required, accepts REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
    #                       web_delivery_allowed_flag: "WEB_DELIVERY_NOT_ALLOWED", # required, accepts WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED
    #                     },
    #                     segment_num: 1,
    #                     segmentation_cancel_indicator: "SEGMENTATION_EVENT_NOT_CANCELED", # required, accepts SEGMENTATION_EVENT_NOT_CANCELED, SEGMENTATION_EVENT_CANCELED
    #                     segmentation_duration: 1,
    #                     segmentation_event_id: 1, # required
    #                     segmentation_type_id: 1,
    #                     segmentation_upid: "__string",
    #                     segmentation_upid_type: 1,
    #                     segments_expected: 1,
    #                     sub_segment_num: 1,
    #                     sub_segments_expected: 1,
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           static_image_activate_settings: {
    #             duration: 1,
    #             fade_in: 1,
    #             fade_out: 1,
    #             height: 1,
    #             image: { # required
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             image_x: 1,
    #             image_y: 1,
    #             layer: 1,
    #             opacity: 1,
    #             width: 1,
    #           },
    #           static_image_deactivate_settings: {
    #             fade_out: 1,
    #             layer: 1,
    #           },
    #         },
    #         schedule_action_start_settings: { # required
    #           fixed_mode_schedule_action_start_settings: {
    #             time: "__string", # required
    #           },
    #           follow_mode_schedule_action_start_settings: {
    #             follow_point: "END", # required, accepts END, START
    #             reference_action_name: "__string", # required
    #           },
    #           immediate_mode_schedule_action_start_settings: {
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] action_name
    #   The name of the action, must be unique within the schedule. This
    #   name provides the main reference to an action once it is added to
    #   the schedule. A name is unique if it is no longer in the schedule.
    #   The schedule is automatically cleaned up to remove actions with a
    #   start time of more than 1 hour ago (approximately) so at that point
    #   a name can be reused.
    #   @return [String]
    #
    # @!attribute [rw] schedule_action_settings
    #   Settings for this schedule action.
    #   @return [Types::ScheduleActionSettings]
    #
    # @!attribute [rw] schedule_action_start_settings
    #   The time for the action to start in the channel.
    #   @return [Types::ScheduleActionStartSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ScheduleAction AWS API Documentation
    #
    class ScheduleAction < Struct.new(
      :action_name,
      :schedule_action_settings,
      :schedule_action_start_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Holds the settings for a single schedule action.
    #
    # @note When making an API call, you may pass ScheduleActionSettings
    #   data as a hash:
    #
    #       {
    #         hls_id_3_segment_tagging_settings: {
    #           tag: "__string", # required
    #         },
    #         hls_timed_metadata_settings: {
    #           id_3: "__string", # required
    #         },
    #         input_prepare_settings: {
    #           input_attachment_name_reference: "__string",
    #           input_clipping_settings: {
    #             input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #             start_timecode: {
    #               timecode: "__string",
    #             },
    #             stop_timecode: {
    #               last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #               timecode: "__string",
    #             },
    #           },
    #           url_path: ["__string"],
    #         },
    #         input_switch_settings: {
    #           input_attachment_name_reference: "__string", # required
    #           input_clipping_settings: {
    #             input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #             start_timecode: {
    #               timecode: "__string",
    #             },
    #             stop_timecode: {
    #               last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #               timecode: "__string",
    #             },
    #           },
    #           url_path: ["__string"],
    #         },
    #         pause_state_settings: {
    #           pipelines: [
    #             {
    #               pipeline_id: "PIPELINE_0", # required, accepts PIPELINE_0, PIPELINE_1
    #             },
    #           ],
    #         },
    #         scte_35_return_to_network_settings: {
    #           splice_event_id: 1, # required
    #         },
    #         scte_35_splice_insert_settings: {
    #           duration: 1,
    #           splice_event_id: 1, # required
    #         },
    #         scte_35_time_signal_settings: {
    #           scte_35_descriptors: [ # required
    #             {
    #               scte_35_descriptor_settings: { # required
    #                 segmentation_descriptor_scte_35_descriptor_settings: { # required
    #                   delivery_restrictions: {
    #                     archive_allowed_flag: "ARCHIVE_NOT_ALLOWED", # required, accepts ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
    #                     device_restrictions: "NONE", # required, accepts NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
    #                     no_regional_blackout_flag: "REGIONAL_BLACKOUT", # required, accepts REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
    #                     web_delivery_allowed_flag: "WEB_DELIVERY_NOT_ALLOWED", # required, accepts WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED
    #                   },
    #                   segment_num: 1,
    #                   segmentation_cancel_indicator: "SEGMENTATION_EVENT_NOT_CANCELED", # required, accepts SEGMENTATION_EVENT_NOT_CANCELED, SEGMENTATION_EVENT_CANCELED
    #                   segmentation_duration: 1,
    #                   segmentation_event_id: 1, # required
    #                   segmentation_type_id: 1,
    #                   segmentation_upid: "__string",
    #                   segmentation_upid_type: 1,
    #                   segments_expected: 1,
    #                   sub_segment_num: 1,
    #                   sub_segments_expected: 1,
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         static_image_activate_settings: {
    #           duration: 1,
    #           fade_in: 1,
    #           fade_out: 1,
    #           height: 1,
    #           image: { # required
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           image_x: 1,
    #           image_y: 1,
    #           layer: 1,
    #           opacity: 1,
    #           width: 1,
    #         },
    #         static_image_deactivate_settings: {
    #           fade_out: 1,
    #           layer: 1,
    #         },
    #       }
    #
    # @!attribute [rw] hls_id_3_segment_tagging_settings
    #   Action to insert HLS ID3 segment tagging
    #   @return [Types::HlsId3SegmentTaggingScheduleActionSettings]
    #
    # @!attribute [rw] hls_timed_metadata_settings
    #   Action to insert HLS metadata
    #   @return [Types::HlsTimedMetadataScheduleActionSettings]
    #
    # @!attribute [rw] input_prepare_settings
    #   Action to prepare an input for a future immediate input switch
    #   @return [Types::InputPrepareScheduleActionSettings]
    #
    # @!attribute [rw] input_switch_settings
    #   Action to switch the input
    #   @return [Types::InputSwitchScheduleActionSettings]
    #
    # @!attribute [rw] pause_state_settings
    #   Action to pause or unpause one or both channel pipelines
    #   @return [Types::PauseStateScheduleActionSettings]
    #
    # @!attribute [rw] scte_35_return_to_network_settings
    #   Action to insert SCTE-35 return\_to\_network message
    #   @return [Types::Scte35ReturnToNetworkScheduleActionSettings]
    #
    # @!attribute [rw] scte_35_splice_insert_settings
    #   Action to insert SCTE-35 splice\_insert message
    #   @return [Types::Scte35SpliceInsertScheduleActionSettings]
    #
    # @!attribute [rw] scte_35_time_signal_settings
    #   Action to insert SCTE-35 time\_signal message
    #   @return [Types::Scte35TimeSignalScheduleActionSettings]
    #
    # @!attribute [rw] static_image_activate_settings
    #   Action to activate a static image overlay
    #   @return [Types::StaticImageActivateScheduleActionSettings]
    #
    # @!attribute [rw] static_image_deactivate_settings
    #   Action to deactivate a static image overlay
    #   @return [Types::StaticImageDeactivateScheduleActionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ScheduleActionSettings AWS API Documentation
    #
    class ScheduleActionSettings < Struct.new(
      :hls_id_3_segment_tagging_settings,
      :hls_timed_metadata_settings,
      :input_prepare_settings,
      :input_switch_settings,
      :pause_state_settings,
      :scte_35_return_to_network_settings,
      :scte_35_splice_insert_settings,
      :scte_35_time_signal_settings,
      :static_image_activate_settings,
      :static_image_deactivate_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings to specify when an action should occur. Only one of the
    # options must be selected.
    #
    # @note When making an API call, you may pass ScheduleActionStartSettings
    #   data as a hash:
    #
    #       {
    #         fixed_mode_schedule_action_start_settings: {
    #           time: "__string", # required
    #         },
    #         follow_mode_schedule_action_start_settings: {
    #           follow_point: "END", # required, accepts END, START
    #           reference_action_name: "__string", # required
    #         },
    #         immediate_mode_schedule_action_start_settings: {
    #         },
    #       }
    #
    # @!attribute [rw] fixed_mode_schedule_action_start_settings
    #   Option for specifying the start time for an action.
    #   @return [Types::FixedModeScheduleActionStartSettings]
    #
    # @!attribute [rw] follow_mode_schedule_action_start_settings
    #   Option for specifying an action as relative to another action.
    #   @return [Types::FollowModeScheduleActionStartSettings]
    #
    # @!attribute [rw] immediate_mode_schedule_action_start_settings
    #   Option for specifying an action that should be applied immediately.
    #   @return [Types::ImmediateModeScheduleActionStartSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ScheduleActionStartSettings AWS API Documentation
    #
    class ScheduleActionStartSettings < Struct.new(
      :fixed_mode_schedule_action_start_settings,
      :follow_mode_schedule_action_start_settings,
      :immediate_mode_schedule_action_start_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Result of a schedule deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ScheduleDeleteResultModel AWS API Documentation
    #
    class ScheduleDeleteResultModel < Aws::EmptyStructure; end

    # Results of a schedule describe.
    #
    # @!attribute [rw] next_token
    #   The next token; for use in pagination.
    #   @return [String]
    #
    # @!attribute [rw] schedule_actions
    #   The list of actions in the schedule.
    #   @return [Array<Types::ScheduleAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ScheduleDescribeResultModel AWS API Documentation
    #
    class ScheduleDescribeResultModel < Struct.new(
      :next_token,
      :schedule_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Scte20 Plus Embedded Destination Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte20PlusEmbeddedDestinationSettings AWS API Documentation
    #
    class Scte20PlusEmbeddedDestinationSettings < Aws::EmptyStructure; end

    # Scte20 Source Settings
    #
    # @note When making an API call, you may pass Scte20SourceSettings
    #   data as a hash:
    #
    #       {
    #         convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #         source_608_channel_number: 1,
    #       }
    #
    # @!attribute [rw] convert_608_to_708
    #   If upconvert, 608 data is both passed through via the "608
    #   compatibility bytes" fields of the 708 wrapper as well as
    #   translated into 708. 708 data present in the source content will be
    #   discarded.
    #   @return [String]
    #
    # @!attribute [rw] source_608_channel_number
    #   Specifies the 608/708 channel number within the video track from
    #   which to extract captions. Unused for passthrough.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte20SourceSettings AWS API Documentation
    #
    class Scte20SourceSettings < Struct.new(
      :convert_608_to_708,
      :source_608_channel_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Scte27 Destination Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte27DestinationSettings AWS API Documentation
    #
    class Scte27DestinationSettings < Aws::EmptyStructure; end

    # Scte27 Source Settings
    #
    # @note When making an API call, you may pass Scte27SourceSettings
    #   data as a hash:
    #
    #       {
    #         pid: 1,
    #       }
    #
    # @!attribute [rw] pid
    #   The pid field is used in conjunction with the caption selector
    #   languageCode field as follows: - Specify PID and Language: Extracts
    #   captions from that PID; the language is "informational". - Specify
    #   PID and omit Language: Extracts the specified PID. - Omit PID and
    #   specify Language: Extracts the specified language, whichever PID
    #   that happens to be. - Omit PID and omit Language: Valid only if
    #   source is DVB-Sub that is being passed through; all languages will
    #   be passed through.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte27SourceSettings AWS API Documentation
    #
    class Scte27SourceSettings < Struct.new(
      :pid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Corresponds to SCTE-35 delivery\_not\_restricted\_flag parameter. To
    # declare delivery restrictions, include this element and its four
    # "restriction" flags. To declare that there are no restrictions, omit
    # this element.
    #
    # @note When making an API call, you may pass Scte35DeliveryRestrictions
    #   data as a hash:
    #
    #       {
    #         archive_allowed_flag: "ARCHIVE_NOT_ALLOWED", # required, accepts ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
    #         device_restrictions: "NONE", # required, accepts NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
    #         no_regional_blackout_flag: "REGIONAL_BLACKOUT", # required, accepts REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
    #         web_delivery_allowed_flag: "WEB_DELIVERY_NOT_ALLOWED", # required, accepts WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED
    #       }
    #
    # @!attribute [rw] archive_allowed_flag
    #   Corresponds to SCTE-35 archive\_allowed\_flag.
    #   @return [String]
    #
    # @!attribute [rw] device_restrictions
    #   Corresponds to SCTE-35 device\_restrictions parameter.
    #   @return [String]
    #
    # @!attribute [rw] no_regional_blackout_flag
    #   Corresponds to SCTE-35 no\_regional\_blackout\_flag parameter.
    #   @return [String]
    #
    # @!attribute [rw] web_delivery_allowed_flag
    #   Corresponds to SCTE-35 web\_delivery\_allowed\_flag parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte35DeliveryRestrictions AWS API Documentation
    #
    class Scte35DeliveryRestrictions < Struct.new(
      :archive_allowed_flag,
      :device_restrictions,
      :no_regional_blackout_flag,
      :web_delivery_allowed_flag)
      SENSITIVE = []
      include Aws::Structure
    end

    # Holds one set of SCTE-35 Descriptor Settings.
    #
    # @note When making an API call, you may pass Scte35Descriptor
    #   data as a hash:
    #
    #       {
    #         scte_35_descriptor_settings: { # required
    #           segmentation_descriptor_scte_35_descriptor_settings: { # required
    #             delivery_restrictions: {
    #               archive_allowed_flag: "ARCHIVE_NOT_ALLOWED", # required, accepts ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
    #               device_restrictions: "NONE", # required, accepts NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
    #               no_regional_blackout_flag: "REGIONAL_BLACKOUT", # required, accepts REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
    #               web_delivery_allowed_flag: "WEB_DELIVERY_NOT_ALLOWED", # required, accepts WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED
    #             },
    #             segment_num: 1,
    #             segmentation_cancel_indicator: "SEGMENTATION_EVENT_NOT_CANCELED", # required, accepts SEGMENTATION_EVENT_NOT_CANCELED, SEGMENTATION_EVENT_CANCELED
    #             segmentation_duration: 1,
    #             segmentation_event_id: 1, # required
    #             segmentation_type_id: 1,
    #             segmentation_upid: "__string",
    #             segmentation_upid_type: 1,
    #             segments_expected: 1,
    #             sub_segment_num: 1,
    #             sub_segments_expected: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] scte_35_descriptor_settings
    #   SCTE-35 Descriptor Settings.
    #   @return [Types::Scte35DescriptorSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte35Descriptor AWS API Documentation
    #
    class Scte35Descriptor < Struct.new(
      :scte_35_descriptor_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # SCTE-35 Descriptor settings.
    #
    # @note When making an API call, you may pass Scte35DescriptorSettings
    #   data as a hash:
    #
    #       {
    #         segmentation_descriptor_scte_35_descriptor_settings: { # required
    #           delivery_restrictions: {
    #             archive_allowed_flag: "ARCHIVE_NOT_ALLOWED", # required, accepts ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
    #             device_restrictions: "NONE", # required, accepts NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
    #             no_regional_blackout_flag: "REGIONAL_BLACKOUT", # required, accepts REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
    #             web_delivery_allowed_flag: "WEB_DELIVERY_NOT_ALLOWED", # required, accepts WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED
    #           },
    #           segment_num: 1,
    #           segmentation_cancel_indicator: "SEGMENTATION_EVENT_NOT_CANCELED", # required, accepts SEGMENTATION_EVENT_NOT_CANCELED, SEGMENTATION_EVENT_CANCELED
    #           segmentation_duration: 1,
    #           segmentation_event_id: 1, # required
    #           segmentation_type_id: 1,
    #           segmentation_upid: "__string",
    #           segmentation_upid_type: 1,
    #           segments_expected: 1,
    #           sub_segment_num: 1,
    #           sub_segments_expected: 1,
    #         },
    #       }
    #
    # @!attribute [rw] segmentation_descriptor_scte_35_descriptor_settings
    #   SCTE-35 Segmentation Descriptor.
    #   @return [Types::Scte35SegmentationDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte35DescriptorSettings AWS API Documentation
    #
    class Scte35DescriptorSettings < Struct.new(
      :segmentation_descriptor_scte_35_descriptor_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for a SCTE-35 return\_to\_network message.
    #
    # @note When making an API call, you may pass Scte35ReturnToNetworkScheduleActionSettings
    #   data as a hash:
    #
    #       {
    #         splice_event_id: 1, # required
    #       }
    #
    # @!attribute [rw] splice_event_id
    #   The splice\_event\_id for the SCTE-35 splice\_insert, as defined in
    #   SCTE-35.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte35ReturnToNetworkScheduleActionSettings AWS API Documentation
    #
    class Scte35ReturnToNetworkScheduleActionSettings < Struct.new(
      :splice_event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Corresponds to SCTE-35 segmentation\_descriptor.
    #
    # @note When making an API call, you may pass Scte35SegmentationDescriptor
    #   data as a hash:
    #
    #       {
    #         delivery_restrictions: {
    #           archive_allowed_flag: "ARCHIVE_NOT_ALLOWED", # required, accepts ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
    #           device_restrictions: "NONE", # required, accepts NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
    #           no_regional_blackout_flag: "REGIONAL_BLACKOUT", # required, accepts REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
    #           web_delivery_allowed_flag: "WEB_DELIVERY_NOT_ALLOWED", # required, accepts WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED
    #         },
    #         segment_num: 1,
    #         segmentation_cancel_indicator: "SEGMENTATION_EVENT_NOT_CANCELED", # required, accepts SEGMENTATION_EVENT_NOT_CANCELED, SEGMENTATION_EVENT_CANCELED
    #         segmentation_duration: 1,
    #         segmentation_event_id: 1, # required
    #         segmentation_type_id: 1,
    #         segmentation_upid: "__string",
    #         segmentation_upid_type: 1,
    #         segments_expected: 1,
    #         sub_segment_num: 1,
    #         sub_segments_expected: 1,
    #       }
    #
    # @!attribute [rw] delivery_restrictions
    #   Holds the four SCTE-35 delivery restriction parameters.
    #   @return [Types::Scte35DeliveryRestrictions]
    #
    # @!attribute [rw] segment_num
    #   Corresponds to SCTE-35 segment\_num. A value that is valid for the
    #   specified segmentation\_type\_id.
    #   @return [Integer]
    #
    # @!attribute [rw] segmentation_cancel_indicator
    #   Corresponds to SCTE-35 segmentation\_event\_cancel\_indicator.
    #   @return [String]
    #
    # @!attribute [rw] segmentation_duration
    #   Corresponds to SCTE-35 segmentation\_duration. Optional. The
    #   duration for the time\_signal, in 90 KHz ticks. To convert seconds
    #   to ticks, multiple the seconds by 90,000. Enter time in 90 KHz clock
    #   ticks. If you do not enter a duration, the time\_signal will
    #   continue until you insert a cancellation message.
    #   @return [Integer]
    #
    # @!attribute [rw] segmentation_event_id
    #   Corresponds to SCTE-35 segmentation\_event\_id.
    #   @return [Integer]
    #
    # @!attribute [rw] segmentation_type_id
    #   Corresponds to SCTE-35 segmentation\_type\_id. One of the
    #   segmentation\_type\_id values listed in the SCTE-35 specification.
    #   On the console, enter the ID in decimal (for example, "52"). In
    #   the CLI, API, or an SDK, enter the ID in hex (for example, "0x34")
    #   or decimal (for example, "52").
    #   @return [Integer]
    #
    # @!attribute [rw] segmentation_upid
    #   Corresponds to SCTE-35 segmentation\_upid. Enter a string containing
    #   the hexadecimal representation of the characters that make up the
    #   SCTE-35 segmentation\_upid value. Must contain an even number of hex
    #   characters. Do not include spaces between each hex pair. For
    #   example, the ASCII "ADS Information" becomes hex
    #   "41445320496e666f726d6174696f6e.
    #   @return [String]
    #
    # @!attribute [rw] segmentation_upid_type
    #   Corresponds to SCTE-35 segmentation\_upid\_type. On the console,
    #   enter one of the types listed in the SCTE-35 specification,
    #   converted to a decimal. For example, "0x0C" hex from the
    #   specification is "12" in decimal. In the CLI, API, or an SDK,
    #   enter one of the types listed in the SCTE-35 specification, in
    #   either hex (for example, "0x0C" ) or in decimal (for example,
    #   "12").
    #   @return [Integer]
    #
    # @!attribute [rw] segments_expected
    #   Corresponds to SCTE-35 segments\_expected. A value that is valid for
    #   the specified segmentation\_type\_id.
    #   @return [Integer]
    #
    # @!attribute [rw] sub_segment_num
    #   Corresponds to SCTE-35 sub\_segment\_num. A value that is valid for
    #   the specified segmentation\_type\_id.
    #   @return [Integer]
    #
    # @!attribute [rw] sub_segments_expected
    #   Corresponds to SCTE-35 sub\_segments\_expected. A value that is
    #   valid for the specified segmentation\_type\_id.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte35SegmentationDescriptor AWS API Documentation
    #
    class Scte35SegmentationDescriptor < Struct.new(
      :delivery_restrictions,
      :segment_num,
      :segmentation_cancel_indicator,
      :segmentation_duration,
      :segmentation_event_id,
      :segmentation_type_id,
      :segmentation_upid,
      :segmentation_upid_type,
      :segments_expected,
      :sub_segment_num,
      :sub_segments_expected)
      SENSITIVE = []
      include Aws::Structure
    end

    # Scte35 Splice Insert
    #
    # @note When making an API call, you may pass Scte35SpliceInsert
    #   data as a hash:
    #
    #       {
    #         ad_avail_offset: 1,
    #         no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #         web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #       }
    #
    # @!attribute [rw] ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input
    #   Ad Avail PTS time. This only applies to embedded SCTE 104/35
    #   messages and does not apply to OOB messages.
    #   @return [Integer]
    #
    # @!attribute [rw] no_regional_blackout_flag
    #   When set to ignore, Segment Descriptors with noRegionalBlackoutFlag
    #   set to 0 will no longer trigger blackouts or Ad Avail slates
    #   @return [String]
    #
    # @!attribute [rw] web_delivery_allowed_flag
    #   When set to ignore, Segment Descriptors with webDeliveryAllowedFlag
    #   set to 0 will no longer trigger blackouts or Ad Avail slates
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte35SpliceInsert AWS API Documentation
    #
    class Scte35SpliceInsert < Struct.new(
      :ad_avail_offset,
      :no_regional_blackout_flag,
      :web_delivery_allowed_flag)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for a SCTE-35 splice\_insert message.
    #
    # @note When making an API call, you may pass Scte35SpliceInsertScheduleActionSettings
    #   data as a hash:
    #
    #       {
    #         duration: 1,
    #         splice_event_id: 1, # required
    #       }
    #
    # @!attribute [rw] duration
    #   Optional, the duration for the splice\_insert, in 90 KHz ticks. To
    #   convert seconds to ticks, multiple the seconds by 90,000. If you
    #   enter a duration, there is an expectation that the downstream system
    #   can read the duration and cue in at that time. If you do not enter a
    #   duration, the splice\_insert will continue indefinitely and there is
    #   an expectation that you will enter a return\_to\_network to end the
    #   splice\_insert at the appropriate time.
    #   @return [Integer]
    #
    # @!attribute [rw] splice_event_id
    #   The splice\_event\_id for the SCTE-35 splice\_insert, as defined in
    #   SCTE-35.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte35SpliceInsertScheduleActionSettings AWS API Documentation
    #
    class Scte35SpliceInsertScheduleActionSettings < Struct.new(
      :duration,
      :splice_event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Scte35 Time Signal Apos
    #
    # @note When making an API call, you may pass Scte35TimeSignalApos
    #   data as a hash:
    #
    #       {
    #         ad_avail_offset: 1,
    #         no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #         web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #       }
    #
    # @!attribute [rw] ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input
    #   Ad Avail PTS time. This only applies to embedded SCTE 104/35
    #   messages and does not apply to OOB messages.
    #   @return [Integer]
    #
    # @!attribute [rw] no_regional_blackout_flag
    #   When set to ignore, Segment Descriptors with noRegionalBlackoutFlag
    #   set to 0 will no longer trigger blackouts or Ad Avail slates
    #   @return [String]
    #
    # @!attribute [rw] web_delivery_allowed_flag
    #   When set to ignore, Segment Descriptors with webDeliveryAllowedFlag
    #   set to 0 will no longer trigger blackouts or Ad Avail slates
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte35TimeSignalApos AWS API Documentation
    #
    class Scte35TimeSignalApos < Struct.new(
      :ad_avail_offset,
      :no_regional_blackout_flag,
      :web_delivery_allowed_flag)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for a SCTE-35 time\_signal.
    #
    # @note When making an API call, you may pass Scte35TimeSignalScheduleActionSettings
    #   data as a hash:
    #
    #       {
    #         scte_35_descriptors: [ # required
    #           {
    #             scte_35_descriptor_settings: { # required
    #               segmentation_descriptor_scte_35_descriptor_settings: { # required
    #                 delivery_restrictions: {
    #                   archive_allowed_flag: "ARCHIVE_NOT_ALLOWED", # required, accepts ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
    #                   device_restrictions: "NONE", # required, accepts NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
    #                   no_regional_blackout_flag: "REGIONAL_BLACKOUT", # required, accepts REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
    #                   web_delivery_allowed_flag: "WEB_DELIVERY_NOT_ALLOWED", # required, accepts WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED
    #                 },
    #                 segment_num: 1,
    #                 segmentation_cancel_indicator: "SEGMENTATION_EVENT_NOT_CANCELED", # required, accepts SEGMENTATION_EVENT_NOT_CANCELED, SEGMENTATION_EVENT_CANCELED
    #                 segmentation_duration: 1,
    #                 segmentation_event_id: 1, # required
    #                 segmentation_type_id: 1,
    #                 segmentation_upid: "__string",
    #                 segmentation_upid_type: 1,
    #                 segments_expected: 1,
    #                 sub_segment_num: 1,
    #                 sub_segments_expected: 1,
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] scte_35_descriptors
    #   The list of SCTE-35 descriptors accompanying the SCTE-35
    #   time\_signal.
    #   @return [Array<Types::Scte35Descriptor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/Scte35TimeSignalScheduleActionSettings AWS API Documentation
    #
    class Scte35TimeSignalScheduleActionSettings < Struct.new(
      :scte_35_descriptors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Smpte Tt Destination Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/SmpteTtDestinationSettings AWS API Documentation
    #
    class SmpteTtDestinationSettings < Aws::EmptyStructure; end

    # Standard Hls Settings
    #
    # @note When making an API call, you may pass StandardHlsSettings
    #   data as a hash:
    #
    #       {
    #         audio_rendition_sets: "__string",
    #         m3u_8_settings: { # required
    #           audio_frames_per_pes: 1,
    #           audio_pids: "__string",
    #           ecm_pid: "__string",
    #           nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #           pat_interval: 1,
    #           pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #           pcr_period: 1,
    #           pcr_pid: "__string",
    #           pmt_interval: 1,
    #           pmt_pid: "__string",
    #           program_num: 1,
    #           scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #           scte_35_pid: "__string",
    #           timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #           timed_metadata_pid: "__string",
    #           transport_stream_id: 1,
    #           video_pid: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] audio_rendition_sets
    #   List all the audio groups that are used with the video output
    #   stream. Input all the audio GROUP-IDs that are associated to the
    #   video, separate by ','.
    #   @return [String]
    #
    # @!attribute [rw] m3u_8_settings
    #   Settings information for the .m3u8 container
    #   @return [Types::M3u8Settings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StandardHlsSettings AWS API Documentation
    #
    class StandardHlsSettings < Struct.new(
      :audio_rendition_sets,
      :m3u_8_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "__string", # required
    #       }
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StartChannelRequest AWS API Documentation
    #
    class StartChannelRequest < Struct.new(
      :channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] cdi_input_specification
    #   @return [Types::CdiInputSpecification]
    #
    # @!attribute [rw] channel_class
    #   A standard channel has two encoding pipelines and a single pipeline
    #   channel only has one.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::OutputDestination>]
    #
    # @!attribute [rw] egress_endpoints
    #   @return [Array<Types::ChannelEgressEndpoint>]
    #
    # @!attribute [rw] encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] input_attachments
    #   @return [Array<Types::InputAttachment>]
    #
    # @!attribute [rw] input_specification
    #   @return [Types::InputSpecification]
    #
    # @!attribute [rw] log_level
    #   The log level the user wants for their channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] pipeline_details
    #   @return [Array<Types::PipelineDetail>]
    #
    # @!attribute [rw] pipelines_running_count
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StartChannelResponse AWS API Documentation
    #
    class StartChannelResponse < Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :encoder_settings,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartMultiplexRequest
    #   data as a hash:
    #
    #       {
    #         multiplex_id: "__string", # required
    #       }
    #
    # @!attribute [rw] multiplex_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StartMultiplexRequest AWS API Documentation
    #
    class StartMultiplexRequest < Struct.new(
      :multiplex_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   @return [Array<String>]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::MultiplexOutputDestination>]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] multiplex_settings
    #   Contains configuration for a Multiplex event
    #   @return [Types::MultiplexSettings]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] pipelines_running_count
    #   @return [Integer]
    #
    # @!attribute [rw] program_count
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The current state of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StartMultiplexResponse AWS API Documentation
    #
    class StartMultiplexResponse < Struct.new(
      :arn,
      :availability_zones,
      :destinations,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings to identify the start of the clip.
    #
    # @note When making an API call, you may pass StartTimecode
    #   data as a hash:
    #
    #       {
    #         timecode: "__string",
    #       }
    #
    # @!attribute [rw] timecode
    #   The timecode for the frame where you want to start the clip.
    #   Optional; if not specified, the clip starts at first frame in the
    #   file. Enter the timecode as HH:MM:SS:FF or HH:MM:SS;FF.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StartTimecode AWS API Documentation
    #
    class StartTimecode < Struct.new(
      :timecode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for the action to activate a static image.
    #
    # @note When making an API call, you may pass StaticImageActivateScheduleActionSettings
    #   data as a hash:
    #
    #       {
    #         duration: 1,
    #         fade_in: 1,
    #         fade_out: 1,
    #         height: 1,
    #         image: { # required
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         image_x: 1,
    #         image_y: 1,
    #         layer: 1,
    #         opacity: 1,
    #         width: 1,
    #       }
    #
    # @!attribute [rw] duration
    #   The duration in milliseconds for the image to remain on the video.
    #   If omitted or set to 0 the duration is unlimited and the image will
    #   remain until it is explicitly deactivated.
    #   @return [Integer]
    #
    # @!attribute [rw] fade_in
    #   The time in milliseconds for the image to fade in. The fade-in
    #   starts at the start time of the overlay. Default is 0 (no fade-in).
    #   @return [Integer]
    #
    # @!attribute [rw] fade_out
    #   Applies only if a duration is specified. The time in milliseconds
    #   for the image to fade out. The fade-out starts when the duration
    #   time is hit, so it effectively extends the duration. Default is 0
    #   (no fade-out).
    #   @return [Integer]
    #
    # @!attribute [rw] height
    #   The height of the image when inserted into the video, in pixels. The
    #   overlay will be scaled up or down to the specified height. Leave
    #   blank to use the native height of the overlay.
    #   @return [Integer]
    #
    # @!attribute [rw] image
    #   The location and filename of the image file to overlay on the video.
    #   The file must be a 32-bit BMP, PNG, or TGA file, and must not be
    #   larger (in pixels) than the input video.
    #   @return [Types::InputLocation]
    #
    # @!attribute [rw] image_x
    #   Placement of the left edge of the overlay relative to the left edge
    #   of the video frame, in pixels. 0 (the default) is the left edge of
    #   the frame. If the placement causes the overlay to extend beyond the
    #   right edge of the underlying video, then the overlay is cropped on
    #   the right.
    #   @return [Integer]
    #
    # @!attribute [rw] image_y
    #   Placement of the top edge of the overlay relative to the top edge of
    #   the video frame, in pixels. 0 (the default) is the top edge of the
    #   frame. If the placement causes the overlay to extend beyond the
    #   bottom edge of the underlying video, then the overlay is cropped on
    #   the bottom.
    #   @return [Integer]
    #
    # @!attribute [rw] layer
    #   The number of the layer, 0 to 7. There are 8 layers that can be
    #   overlaid on the video, each layer with a different image. The layers
    #   are in Z order, which means that overlays with higher values of
    #   layer are inserted on top of overlays with lower values of layer.
    #   Default is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] opacity
    #   Opacity of image where 0 is transparent and 100 is fully opaque.
    #   Default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] width
    #   The width of the image when inserted into the video, in pixels. The
    #   overlay will be scaled up or down to the specified width. Leave
    #   blank to use the native width of the overlay.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StaticImageActivateScheduleActionSettings AWS API Documentation
    #
    class StaticImageActivateScheduleActionSettings < Struct.new(
      :duration,
      :fade_in,
      :fade_out,
      :height,
      :image,
      :image_x,
      :image_y,
      :layer,
      :opacity,
      :width)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for the action to deactivate the image in a specific layer.
    #
    # @note When making an API call, you may pass StaticImageDeactivateScheduleActionSettings
    #   data as a hash:
    #
    #       {
    #         fade_out: 1,
    #         layer: 1,
    #       }
    #
    # @!attribute [rw] fade_out
    #   The time in milliseconds for the image to fade out. Default is 0 (no
    #   fade-out).
    #   @return [Integer]
    #
    # @!attribute [rw] layer
    #   The image overlay layer to deactivate, 0 to 7. Default is 0.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StaticImageDeactivateScheduleActionSettings AWS API Documentation
    #
    class StaticImageDeactivateScheduleActionSettings < Struct.new(
      :fade_out,
      :layer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Static Key Settings
    #
    # @note When making an API call, you may pass StaticKeySettings
    #   data as a hash:
    #
    #       {
    #         key_provider_server: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         static_key_value: "__stringMin32Max32", # required
    #       }
    #
    # @!attribute [rw] key_provider_server
    #   The URL of the license server used for protecting content.
    #   @return [Types::InputLocation]
    #
    # @!attribute [rw] static_key_value
    #   Static key value as a 32 character hexadecimal string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StaticKeySettings AWS API Documentation
    #
    class StaticKeySettings < Struct.new(
      :key_provider_server,
      :static_key_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "__string", # required
    #       }
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StopChannelRequest AWS API Documentation
    #
    class StopChannelRequest < Struct.new(
      :channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] cdi_input_specification
    #   @return [Types::CdiInputSpecification]
    #
    # @!attribute [rw] channel_class
    #   A standard channel has two encoding pipelines and a single pipeline
    #   channel only has one.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::OutputDestination>]
    #
    # @!attribute [rw] egress_endpoints
    #   @return [Array<Types::ChannelEgressEndpoint>]
    #
    # @!attribute [rw] encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] input_attachments
    #   @return [Array<Types::InputAttachment>]
    #
    # @!attribute [rw] input_specification
    #   @return [Types::InputSpecification]
    #
    # @!attribute [rw] log_level
    #   The log level the user wants for their channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] pipeline_details
    #   @return [Array<Types::PipelineDetail>]
    #
    # @!attribute [rw] pipelines_running_count
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StopChannelResponse AWS API Documentation
    #
    class StopChannelResponse < Struct.new(
      :arn,
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :egress_endpoints,
      :encoder_settings,
      :id,
      :input_attachments,
      :input_specification,
      :log_level,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopMultiplexRequest
    #   data as a hash:
    #
    #       {
    #         multiplex_id: "__string", # required
    #       }
    #
    # @!attribute [rw] multiplex_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StopMultiplexRequest AWS API Documentation
    #
    class StopMultiplexRequest < Struct.new(
      :multiplex_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   @return [Array<String>]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::MultiplexOutputDestination>]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] multiplex_settings
    #   Contains configuration for a Multiplex event
    #   @return [Types::MultiplexSettings]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] pipelines_running_count
    #   @return [Integer]
    #
    # @!attribute [rw] program_count
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The current state of the multiplex.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StopMultiplexResponse AWS API Documentation
    #
    class StopMultiplexResponse < Struct.new(
      :arn,
      :availability_zones,
      :destinations,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings to identify the end of the clip.
    #
    # @note When making an API call, you may pass StopTimecode
    #   data as a hash:
    #
    #       {
    #         last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #         timecode: "__string",
    #       }
    #
    # @!attribute [rw] last_frame_clipping_behavior
    #   If you specify a StopTimecode in an input (in order to clip the
    #   file), you can specify if you want the clip to exclude (the default)
    #   or include the frame specified by the timecode.
    #   @return [String]
    #
    # @!attribute [rw] timecode
    #   The timecode for the frame where you want to stop the clip.
    #   Optional; if not specified, the clip continues to the end of the
    #   file. Enter the timecode as HH:MM:SS:FF or HH:MM:SS;FF.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StopTimecode AWS API Documentation
    #
    class StopTimecode < Struct.new(
      :last_frame_clipping_behavior,
      :timecode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TagsModel AWS API Documentation
    #
    class TagsModel < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Teletext Destination Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TeletextDestinationSettings AWS API Documentation
    #
    class TeletextDestinationSettings < Aws::EmptyStructure; end

    # Teletext Source Settings
    #
    # @note When making an API call, you may pass TeletextSourceSettings
    #   data as a hash:
    #
    #       {
    #         page_number: "__string",
    #       }
    #
    # @!attribute [rw] page_number
    #   Specifies the teletext page number within the data stream from which
    #   to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused
    #   for passthrough. Should be specified as a hexadecimal string with no
    #   "0x" prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TeletextSourceSettings AWS API Documentation
    #
    class TeletextSourceSettings < Struct.new(
      :page_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Temporal Filter Settings
    #
    # @note When making an API call, you may pass TemporalFilterSettings
    #   data as a hash:
    #
    #       {
    #         post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #         strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #       }
    #
    # @!attribute [rw] post_filter_sharpening
    #   If you enable this filter, the results are the following: - If the
    #   source content is noisy (it contains excessive digital artifacts),
    #   the filter cleans up the source. - If the source content is already
    #   clean, the filter tends to decrease the bitrate, especially when the
    #   rate control mode is QVBR.
    #   @return [String]
    #
    # @!attribute [rw] strength
    #   Choose a filter strength. We recommend a strength of 1 or 2. A
    #   higher strength might take out good information, resulting in an
    #   image that is overly soft.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TemporalFilterSettings AWS API Documentation
    #
    class TemporalFilterSettings < Struct.new(
      :post_filter_sharpening,
      :strength)
      SENSITIVE = []
      include Aws::Structure
    end

    # The binary data for the thumbnail that the Link device has most
    # recently sent to MediaLive.
    #
    # @!attribute [rw] body
    #   The binary data for the thumbnail that the Link device has most
    #   recently sent to MediaLive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ThumbnailData AWS API Documentation
    #
    class ThumbnailData < Struct.new(
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Timecode Config
    #
    # @note When making an API call, you may pass TimecodeConfig
    #   data as a hash:
    #
    #       {
    #         source: "EMBEDDED", # required, accepts EMBEDDED, SYSTEMCLOCK, ZEROBASED
    #         sync_threshold: 1,
    #       }
    #
    # @!attribute [rw] source
    #   Identifies the source for the timecode that will be associated with
    #   the events outputs. -Embedded (embedded): Initialize the output
    #   timecode with timecode from the the source. If no embedded timecode
    #   is detected in the source, the system falls back to using "Start at
    #   0" (zerobased). -System Clock (systemclock): Use the UTC time.
    #   -Start at 0 (zerobased): The time of the first frame of the event
    #   will be 00:00:00:00.
    #   @return [String]
    #
    # @!attribute [rw] sync_threshold
    #   Threshold in frames beyond which output timecode is resynchronized
    #   to the input timecode. Discrepancies below this threshold are
    #   permitted to avoid unnecessary discontinuities in the output
    #   timecode. No timecode sync when this is not specified.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TimecodeConfig AWS API Documentation
    #
    class TimecodeConfig < Struct.new(
      :source,
      :sync_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The transfer details of the input device.
    #
    # @!attribute [rw] target_customer_id
    #   The AWS account ID (12 digits) for the recipient of the device
    #   transfer.
    #   @return [String]
    #
    # @!attribute [rw] transfer_message
    #   An optional message for the recipient. Maximum 280 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TransferInputDevice AWS API Documentation
    #
    class TransferInputDevice < Struct.new(
      :target_customer_id,
      :transfer_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TransferInputDeviceRequest
    #   data as a hash:
    #
    #       {
    #         input_device_id: "__string", # required
    #         target_customer_id: "__string",
    #         transfer_message: "__string",
    #       }
    #
    # @!attribute [rw] input_device_id
    #   @return [String]
    #
    # @!attribute [rw] target_customer_id
    #   @return [String]
    #
    # @!attribute [rw] transfer_message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TransferInputDeviceRequest AWS API Documentation
    #
    class TransferInputDeviceRequest < Struct.new(
      :input_device_id,
      :target_customer_id,
      :transfer_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TransferInputDeviceResponse AWS API Documentation
    #
    class TransferInputDeviceResponse < Aws::EmptyStructure; end

    # Details about the input device that is being transferred.
    #
    # @!attribute [rw] id
    #   The unique ID of the input device.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The optional message that the sender has attached to the transfer.
    #   @return [String]
    #
    # @!attribute [rw] target_customer_id
    #   The AWS account ID for the recipient of the input device transfer.
    #   @return [String]
    #
    # @!attribute [rw] transfer_type
    #   The type (direction) of the input device transfer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TransferringInputDeviceSummary AWS API Documentation
    #
    class TransferringInputDeviceSummary < Struct.new(
      :id,
      :message,
      :target_customer_id,
      :transfer_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ttml Destination Settings
    #
    # @note When making an API call, you may pass TtmlDestinationSettings
    #   data as a hash:
    #
    #       {
    #         style_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED
    #       }
    #
    # @!attribute [rw] style_control
    #   When set to passthrough, passes through style and position
    #   information from a TTML-like input source (TTML, SMPTE-TT, CFF-TT)
    #   to the CFF-TT output or TTML output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TtmlDestinationSettings AWS API Documentation
    #
    class TtmlDestinationSettings < Struct.new(
      :style_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # Udp Container Settings
    #
    # @note When making an API call, you may pass UdpContainerSettings
    #   data as a hash:
    #
    #       {
    #         m2ts_settings: {
    #           absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #           arib: "DISABLED", # accepts DISABLED, ENABLED
    #           arib_captions_pid: "__string",
    #           arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #           audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #           audio_frames_per_pes: 1,
    #           audio_pids: "__string",
    #           audio_stream_type: "ATSC", # accepts ATSC, DVB
    #           bitrate: 1,
    #           buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #           cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #           dvb_nit_settings: {
    #             network_id: 1, # required
    #             network_name: "__stringMin1Max256", # required
    #             rep_interval: 1,
    #           },
    #           dvb_sdt_settings: {
    #             output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #             rep_interval: 1,
    #             service_name: "__stringMin1Max256",
    #             service_provider_name: "__stringMin1Max256",
    #           },
    #           dvb_sub_pids: "__string",
    #           dvb_tdt_settings: {
    #             rep_interval: 1,
    #           },
    #           dvb_teletext_pid: "__string",
    #           ebif: "NONE", # accepts NONE, PASSTHROUGH
    #           ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #           ebp_lookahead_ms: 1,
    #           ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #           ecm_pid: "__string",
    #           es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #           etv_platform_pid: "__string",
    #           etv_signal_pid: "__string",
    #           fragment_time: 1.0,
    #           klv: "NONE", # accepts NONE, PASSTHROUGH
    #           klv_data_pids: "__string",
    #           nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #           null_packet_bitrate: 1.0,
    #           pat_interval: 1,
    #           pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #           pcr_period: 1,
    #           pcr_pid: "__string",
    #           pmt_interval: 1,
    #           pmt_pid: "__string",
    #           program_num: 1,
    #           rate_mode: "CBR", # accepts CBR, VBR
    #           scte_27_pids: "__string",
    #           scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #           scte_35_pid: "__string",
    #           segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #           segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #           segmentation_time: 1.0,
    #           timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #           timed_metadata_pid: "__string",
    #           transport_stream_id: 1,
    #           video_pid: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] m2ts_settings
    #   M2ts Settings
    #   @return [Types::M2tsSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UdpContainerSettings AWS API Documentation
    #
    class UdpContainerSettings < Struct.new(
      :m2ts_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Udp Group Settings
    #
    # @note When making an API call, you may pass UdpGroupSettings
    #   data as a hash:
    #
    #       {
    #         input_loss_action: "DROP_PROGRAM", # accepts DROP_PROGRAM, DROP_TS, EMIT_PROGRAM
    #         timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #         timed_metadata_id_3_period: 1,
    #       }
    #
    # @!attribute [rw] input_loss_action
    #   Specifies behavior of last resort when input video is lost, and no
    #   more backup inputs are available. When dropTs is selected the entire
    #   transport stream will stop being emitted. When dropProgram is
    #   selected the program can be dropped from the transport stream (and
    #   replaced with null packets to meet the TS bitrate requirement). Or,
    #   when emitProgram is chosen the transport stream will continue to be
    #   produced normally with repeat frames, black frames, or slate frames
    #   substituted for the absent input video.
    #   @return [String]
    #
    # @!attribute [rw] timed_metadata_id_3_frame
    #   Indicates ID3 frame that has the timecode.
    #   @return [String]
    #
    # @!attribute [rw] timed_metadata_id_3_period
    #   Timed Metadata interval in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UdpGroupSettings AWS API Documentation
    #
    class UdpGroupSettings < Struct.new(
      :input_loss_action,
      :timed_metadata_id_3_frame,
      :timed_metadata_id_3_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # Udp Output Settings
    #
    # @note When making an API call, you may pass UdpOutputSettings
    #   data as a hash:
    #
    #       {
    #         buffer_msec: 1,
    #         container_settings: { # required
    #           m2ts_settings: {
    #             absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #             arib: "DISABLED", # accepts DISABLED, ENABLED
    #             arib_captions_pid: "__string",
    #             arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #             audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #             audio_frames_per_pes: 1,
    #             audio_pids: "__string",
    #             audio_stream_type: "ATSC", # accepts ATSC, DVB
    #             bitrate: 1,
    #             buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #             cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #             dvb_nit_settings: {
    #               network_id: 1, # required
    #               network_name: "__stringMin1Max256", # required
    #               rep_interval: 1,
    #             },
    #             dvb_sdt_settings: {
    #               output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #               rep_interval: 1,
    #               service_name: "__stringMin1Max256",
    #               service_provider_name: "__stringMin1Max256",
    #             },
    #             dvb_sub_pids: "__string",
    #             dvb_tdt_settings: {
    #               rep_interval: 1,
    #             },
    #             dvb_teletext_pid: "__string",
    #             ebif: "NONE", # accepts NONE, PASSTHROUGH
    #             ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #             ebp_lookahead_ms: 1,
    #             ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #             ecm_pid: "__string",
    #             es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #             etv_platform_pid: "__string",
    #             etv_signal_pid: "__string",
    #             fragment_time: 1.0,
    #             klv: "NONE", # accepts NONE, PASSTHROUGH
    #             klv_data_pids: "__string",
    #             nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #             null_packet_bitrate: 1.0,
    #             pat_interval: 1,
    #             pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #             pcr_period: 1,
    #             pcr_pid: "__string",
    #             pmt_interval: 1,
    #             pmt_pid: "__string",
    #             program_num: 1,
    #             rate_mode: "CBR", # accepts CBR, VBR
    #             scte_27_pids: "__string",
    #             scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #             scte_35_pid: "__string",
    #             segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #             segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #             segmentation_time: 1.0,
    #             timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #             timed_metadata_pid: "__string",
    #             transport_stream_id: 1,
    #             video_pid: "__string",
    #           },
    #         },
    #         destination: { # required
    #           destination_ref_id: "__string",
    #         },
    #         fec_output_settings: {
    #           column_depth: 1,
    #           include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #           row_length: 1,
    #         },
    #       }
    #
    # @!attribute [rw] buffer_msec
    #   UDP output buffering in milliseconds. Larger values increase latency
    #   through the transcoder but simultaneously assist the transcoder in
    #   maintaining a constant, low-jitter UDP/RTP output while
    #   accommodating clock recovery, input switching, input disruptions,
    #   picture reordering, etc.
    #   @return [Integer]
    #
    # @!attribute [rw] container_settings
    #   Udp Container Settings
    #   @return [Types::UdpContainerSettings]
    #
    # @!attribute [rw] destination
    #   Destination address and port number for RTP or UDP packets. Can be
    #   unicast or multicast RTP or UDP (eg. rtp://239.10.10.10:5001 or
    #   udp://10.100.100.100:5002).
    #   @return [Types::OutputLocationRef]
    #
    # @!attribute [rw] fec_output_settings
    #   Settings for enabling and adjusting Forward Error Correction on UDP
    #   outputs.
    #   @return [Types::FecOutputSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UdpOutputSettings AWS API Documentation
    #
    class UdpOutputSettings < Struct.new(
      :buffer_msec,
      :container_settings,
      :destination,
      :fec_output_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] validation_errors
    #   @return [Array<Types::ValidationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UnprocessableEntityException AWS API Documentation
    #
    class UnprocessableEntityException < Struct.new(
      :message,
      :validation_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    #
    # @!attribute [rw] destinations
    #   A list of output destinations for this channel.
    #   @return [Array<Types::OutputDestination>]
    #
    # @!attribute [rw] encoder_settings
    #   The encoder settings for this channel.
    #   @return [Types::EncoderSettings]
    #
    # @!attribute [rw] input_attachments
    #   @return [Array<Types::InputAttachment>]
    #
    # @!attribute [rw] input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    #
    # @!attribute [rw] log_level
    #   The log level to write to CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   An optional Amazon Resource Name (ARN) of the role to assume when
    #   running the Channel. If you do not specify this on an update call
    #   but the role was previously set that role will be removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateChannel AWS API Documentation
    #
    class UpdateChannel < Struct.new(
      :cdi_input_specification,
      :destinations,
      :encoder_settings,
      :input_attachments,
      :input_specification,
      :log_level,
      :name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_class
    #   The channel class that you wish to update this channel to use.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   A list of output destinations for this channel.
    #   @return [Array<Types::OutputDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateChannelClass AWS API Documentation
    #
    class UpdateChannelClass < Struct.new(
      :channel_class,
      :destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateChannelClassRequest
    #   data as a hash:
    #
    #       {
    #         channel_class: "STANDARD", # required, accepts STANDARD, SINGLE_PIPELINE
    #         channel_id: "__string", # required
    #         destinations: [
    #           {
    #             id: "__string",
    #             media_package_settings: [
    #               {
    #                 channel_id: "__stringMin1",
    #               },
    #             ],
    #             multiplex_settings: {
    #               multiplex_id: "__stringMin1",
    #               program_name: "__stringMin1",
    #             },
    #             settings: [
    #               {
    #                 password_param: "__string",
    #                 stream_name: "__string",
    #                 url: "__string",
    #                 username: "__string",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] channel_class
    #   A standard channel has two encoding pipelines and a single pipeline
    #   channel only has one.
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::OutputDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateChannelClassRequest AWS API Documentation
    #
    class UpdateChannelClassRequest < Struct.new(
      :channel_class,
      :channel_id,
      :destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   @return [Types::Channel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateChannelClassResponse AWS API Documentation
    #
    class UpdateChannelClassResponse < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateChannelRequest
    #   data as a hash:
    #
    #       {
    #         cdi_input_specification: {
    #           resolution: "SD", # accepts SD, HD, FHD, UHD
    #         },
    #         channel_id: "__string", # required
    #         destinations: [
    #           {
    #             id: "__string",
    #             media_package_settings: [
    #               {
    #                 channel_id: "__stringMin1",
    #               },
    #             ],
    #             multiplex_settings: {
    #               multiplex_id: "__stringMin1",
    #               program_name: "__stringMin1",
    #             },
    #             settings: [
    #               {
    #                 password_param: "__string",
    #                 stream_name: "__string",
    #                 url: "__string",
    #                 username: "__string",
    #               },
    #             ],
    #           },
    #         ],
    #         encoder_settings: {
    #           audio_descriptions: [ # required
    #             {
    #               audio_normalization_settings: {
    #                 algorithm: "ITU_1770_1", # accepts ITU_1770_1, ITU_1770_2
    #                 algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO
    #                 target_lkfs: 1.0,
    #               },
    #               audio_selector_name: "__string", # required
    #               audio_type: "CLEAN_EFFECTS", # accepts CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY
    #               audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               codec_settings: {
    #                 aac_settings: {
    #                   bitrate: 1.0,
    #                   coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                   input_type: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                   profile: "HEV1", # accepts HEV1, HEV2, LC
    #                   rate_control_mode: "CBR", # accepts CBR, VBR
    #                   raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                   sample_rate: 1.0,
    #                   spec: "MPEG2", # accepts MPEG2, MPEG4
    #                   vbr_quality: "HIGH", # accepts HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW
    #                 },
    #                 ac_3_settings: {
    #                   bitrate: 1.0,
    #                   bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                   dialnorm: 1,
    #                   drc_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                   lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #                   metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                 },
    #                 eac_3_settings: {
    #                   attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                   bitrate: 1.0,
    #                   bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                   dc_filter: "DISABLED", # accepts DISABLED, ENABLED
    #                   dialnorm: 1,
    #                   drc_line: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #                   drc_rf: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #                   lfe_control: "LFE", # accepts LFE, NO_LFE
    #                   lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #                   lo_ro_center_mix_level: 1.0,
    #                   lo_ro_surround_mix_level: 1.0,
    #                   lt_rt_center_mix_level: 1.0,
    #                   lt_rt_surround_mix_level: 1.0,
    #                   metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   passthrough_control: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, WHEN_POSSIBLE
    #                   phase_control: "NO_SHIFT", # accepts NO_SHIFT, SHIFT_90_DEGREES
    #                   stereo_downmix: "DPL2", # accepts DPL2, LO_RO, LT_RT, NOT_INDICATED
    #                   surround_ex_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #                   surround_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #                 },
    #                 mp_2_settings: {
    #                   bitrate: 1.0,
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0
    #                   sample_rate: 1.0,
    #                 },
    #                 pass_through_settings: {
    #                 },
    #                 wav_settings: {
    #                   bit_depth: 1.0,
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_4_0, CODING_MODE_8_0
    #                   sample_rate: 1.0,
    #                 },
    #               },
    #               language_code: "__stringMin1Max35",
    #               language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               name: "__string", # required
    #               remix_settings: {
    #                 channel_mappings: [ # required
    #                   {
    #                     input_channel_levels: [ # required
    #                       {
    #                         gain: 1, # required
    #                         input_channel: 1, # required
    #                       },
    #                     ],
    #                     output_channel: 1, # required
    #                   },
    #                 ],
    #                 channels_in: 1,
    #                 channels_out: 1,
    #               },
    #               stream_name: "__string",
    #             },
    #           ],
    #           avail_blanking: {
    #             avail_blanking_image: {
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             state: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           avail_configuration: {
    #             avail_settings: {
    #               scte_35_splice_insert: {
    #                 ad_avail_offset: 1,
    #                 no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #                 web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #               },
    #               scte_35_time_signal_apos: {
    #                 ad_avail_offset: 1,
    #                 no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #                 web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #               },
    #             },
    #           },
    #           blackout_slate: {
    #             blackout_slate_image: {
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             network_end_blackout: "DISABLED", # accepts DISABLED, ENABLED
    #             network_end_blackout_image: {
    #               password_param: "__string",
    #               uri: "__string", # required
    #               username: "__string",
    #             },
    #             network_id: "__stringMin34Max34",
    #             state: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           caption_descriptions: [
    #             {
    #               caption_selector_name: "__string", # required
    #               destination_settings: {
    #                 arib_destination_settings: {
    #                 },
    #                 burn_in_destination_settings: {
    #                   alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #                   background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                   background_opacity: 1,
    #                   font: {
    #                     password_param: "__string",
    #                     uri: "__string", # required
    #                     username: "__string",
    #                   },
    #                   font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                   font_opacity: 1,
    #                   font_resolution: 1,
    #                   font_size: "__string",
    #                   outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                   outline_size: 1,
    #                   shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                   shadow_opacity: 1,
    #                   shadow_x_offset: 1,
    #                   shadow_y_offset: 1,
    #                   teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #                   x_position: 1,
    #                   y_position: 1,
    #                 },
    #                 dvb_sub_destination_settings: {
    #                   alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #                   background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                   background_opacity: 1,
    #                   font: {
    #                     password_param: "__string",
    #                     uri: "__string", # required
    #                     username: "__string",
    #                   },
    #                   font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                   font_opacity: 1,
    #                   font_resolution: 1,
    #                   font_size: "__string",
    #                   outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #                   outline_size: 1,
    #                   shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #                   shadow_opacity: 1,
    #                   shadow_x_offset: 1,
    #                   shadow_y_offset: 1,
    #                   teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #                   x_position: 1,
    #                   y_position: 1,
    #                 },
    #                 ebu_tt_d_destination_settings: {
    #                   fill_line_gap: "DISABLED", # accepts DISABLED, ENABLED
    #                   font_family: "__string",
    #                   style_control: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                 },
    #                 embedded_destination_settings: {
    #                 },
    #                 embedded_plus_scte_20_destination_settings: {
    #                 },
    #                 rtmp_caption_info_destination_settings: {
    #                 },
    #                 scte_20_plus_embedded_destination_settings: {
    #                 },
    #                 scte_27_destination_settings: {
    #                 },
    #                 smpte_tt_destination_settings: {
    #                 },
    #                 teletext_destination_settings: {
    #                 },
    #                 ttml_destination_settings: {
    #                   style_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED
    #                 },
    #                 webvtt_destination_settings: {
    #                 },
    #               },
    #               language_code: "__string",
    #               language_description: "__string",
    #               name: "__string", # required
    #             },
    #           ],
    #           feature_activations: {
    #             input_prepare_schedule_actions: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           global_configuration: {
    #             initial_audio_gain: 1,
    #             input_end_action: "NONE", # accepts NONE, SWITCH_AND_LOOP_INPUTS
    #             input_loss_behavior: {
    #               black_frame_msec: 1,
    #               input_loss_image_color: "__stringMin6Max6",
    #               input_loss_image_slate: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               input_loss_image_type: "COLOR", # accepts COLOR, SLATE
    #               repeat_frame_msec: 1,
    #             },
    #             output_locking_mode: "EPOCH_LOCKING", # accepts EPOCH_LOCKING, PIPELINE_LOCKING
    #             output_timing_source: "INPUT_CLOCK", # accepts INPUT_CLOCK, SYSTEM_CLOCK
    #             support_low_framerate_inputs: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           nielsen_configuration: {
    #             distributor_id: "__string",
    #             nielsen_pcm_to_id_3_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           output_groups: [ # required
    #             {
    #               name: "__stringMax32",
    #               output_group_settings: { # required
    #                 archive_group_settings: {
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   rollover_interval: 1,
    #                 },
    #                 frame_capture_group_settings: {
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                 },
    #                 hls_group_settings: {
    #                   ad_markers: ["ADOBE"], # accepts ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
    #                   base_url_content: "__string",
    #                   base_url_content_1: "__string",
    #                   base_url_manifest: "__string",
    #                   base_url_manifest_1: "__string",
    #                   caption_language_mappings: [
    #                     {
    #                       caption_channel: 1, # required
    #                       language_code: "__stringMin3Max3", # required
    #                       language_description: "__stringMin1", # required
    #                     },
    #                   ],
    #                   caption_language_setting: "INSERT", # accepts INSERT, NONE, OMIT
    #                   client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                   codec_specification: "RFC_4281", # accepts RFC_4281, RFC_6381
    #                   constant_iv: "__stringMin32Max32",
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #                   encryption_type: "AES128", # accepts AES128, SAMPLE_AES
    #                   hls_cdn_settings: {
    #                     hls_akamai_settings: {
    #                       connection_retry_interval: 1,
    #                       filecache_duration: 1,
    #                       http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                       num_retries: 1,
    #                       restart_delay: 1,
    #                       salt: "__string",
    #                       token: "__string",
    #                     },
    #                     hls_basic_put_settings: {
    #                       connection_retry_interval: 1,
    #                       filecache_duration: 1,
    #                       num_retries: 1,
    #                       restart_delay: 1,
    #                     },
    #                     hls_media_store_settings: {
    #                       connection_retry_interval: 1,
    #                       filecache_duration: 1,
    #                       media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #                       num_retries: 1,
    #                       restart_delay: 1,
    #                     },
    #                     hls_webdav_settings: {
    #                       connection_retry_interval: 1,
    #                       filecache_duration: 1,
    #                       http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                       num_retries: 1,
    #                       restart_delay: 1,
    #                     },
    #                   },
    #                   hls_id_3_segment_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #                   i_frame_only_playlists: "DISABLED", # accepts DISABLED, STANDARD
    #                   index_n_segments: 1,
    #                   input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #                   iv_in_manifest: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                   iv_source: "EXPLICIT", # accepts EXPLICIT, FOLLOWS_SEGMENT_NUMBER
    #                   keep_segments: 1,
    #                   key_format: "__string",
    #                   key_format_versions: "__string",
    #                   key_provider_settings: {
    #                     static_key_settings: {
    #                       key_provider_server: {
    #                         password_param: "__string",
    #                         uri: "__string", # required
    #                         username: "__string",
    #                       },
    #                       static_key_value: "__stringMin32Max32", # required
    #                     },
    #                   },
    #                   manifest_compression: "GZIP", # accepts GZIP, NONE
    #                   manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                   min_segment_length: 1,
    #                   mode: "LIVE", # accepts LIVE, VOD
    #                   output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY, VARIANT_MANIFESTS_AND_SEGMENTS
    #                   program_date_time: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                   program_date_time_period: 1,
    #                   redundant_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #                   segment_length: 1,
    #                   segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #                   segments_per_subdirectory: 1,
    #                   stream_inf_resolution: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                   timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #                   timed_metadata_id_3_period: 1,
    #                   timestamp_delta_milliseconds: 1,
    #                   ts_file_mode: "SEGMENTED_FILES", # accepts SEGMENTED_FILES, SINGLE_FILE
    #                 },
    #                 media_package_group_settings: {
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                 },
    #                 ms_smooth_group_settings: {
    #                   acquisition_point_id: "__string",
    #                   audio_only_timecode_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED_CLOCK
    #                   certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #                   connection_retry_interval: 1,
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   event_id: "__string",
    #                   event_id_mode: "NO_EVENT_ID", # accepts NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP
    #                   event_stop_behavior: "NONE", # accepts NONE, SEND_EOS
    #                   filecache_duration: 1,
    #                   fragment_length: 1,
    #                   input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                   segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #                   send_delay_ms: 1,
    #                   sparse_track_type: "NONE", # accepts NONE, SCTE_35, SCTE_35_WITHOUT_SEGMENTATION
    #                   stream_manifest_behavior: "DO_NOT_SEND", # accepts DO_NOT_SEND, SEND
    #                   timestamp_offset: "__string",
    #                   timestamp_offset_mode: "USE_CONFIGURED_OFFSET", # accepts USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE
    #                 },
    #                 multiplex_group_settings: {
    #                 },
    #                 rtmp_group_settings: {
    #                   authentication_scheme: "AKAMAI", # accepts AKAMAI, COMMON
    #                   cache_full_behavior: "DISCONNECT_IMMEDIATELY", # accepts DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER
    #                   cache_length: 1,
    #                   caption_data: "ALL", # accepts ALL, FIELD1_608, FIELD1_AND_FIELD2_608
    #                   input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #                   restart_delay: 1,
    #                 },
    #                 udp_group_settings: {
    #                   input_loss_action: "DROP_PROGRAM", # accepts DROP_PROGRAM, DROP_TS, EMIT_PROGRAM
    #                   timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #                   timed_metadata_id_3_period: 1,
    #                 },
    #               },
    #               outputs: [ # required
    #                 {
    #                   audio_description_names: ["__string"],
    #                   caption_description_names: ["__string"],
    #                   output_name: "__stringMin1Max255",
    #                   output_settings: { # required
    #                     archive_output_settings: {
    #                       container_settings: { # required
    #                         m2ts_settings: {
    #                           absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                           arib: "DISABLED", # accepts DISABLED, ENABLED
    #                           arib_captions_pid: "__string",
    #                           arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                           audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                           audio_frames_per_pes: 1,
    #                           audio_pids: "__string",
    #                           audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                           bitrate: 1,
    #                           buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                           cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                           dvb_nit_settings: {
    #                             network_id: 1, # required
    #                             network_name: "__stringMin1Max256", # required
    #                             rep_interval: 1,
    #                           },
    #                           dvb_sdt_settings: {
    #                             output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                             rep_interval: 1,
    #                             service_name: "__stringMin1Max256",
    #                             service_provider_name: "__stringMin1Max256",
    #                           },
    #                           dvb_sub_pids: "__string",
    #                           dvb_tdt_settings: {
    #                             rep_interval: 1,
    #                           },
    #                           dvb_teletext_pid: "__string",
    #                           ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                           ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                           ebp_lookahead_ms: 1,
    #                           ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                           ecm_pid: "__string",
    #                           es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                           etv_platform_pid: "__string",
    #                           etv_signal_pid: "__string",
    #                           fragment_time: 1.0,
    #                           klv: "NONE", # accepts NONE, PASSTHROUGH
    #                           klv_data_pids: "__string",
    #                           nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           null_packet_bitrate: 1.0,
    #                           pat_interval: 1,
    #                           pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                           pcr_period: 1,
    #                           pcr_pid: "__string",
    #                           pmt_interval: 1,
    #                           pmt_pid: "__string",
    #                           program_num: 1,
    #                           rate_mode: "CBR", # accepts CBR, VBR
    #                           scte_27_pids: "__string",
    #                           scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                           scte_35_pid: "__string",
    #                           segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                           segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                           segmentation_time: 1.0,
    #                           timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           timed_metadata_pid: "__string",
    #                           transport_stream_id: 1,
    #                           video_pid: "__string",
    #                         },
    #                         raw_settings: {
    #                         },
    #                       },
    #                       extension: "__string",
    #                       name_modifier: "__string",
    #                     },
    #                     frame_capture_output_settings: {
    #                       name_modifier: "__string",
    #                     },
    #                     hls_output_settings: {
    #                       h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                       hls_settings: { # required
    #                         audio_only_hls_settings: {
    #                           audio_group_id: "__string",
    #                           audio_only_image: {
    #                             password_param: "__string",
    #                             uri: "__string", # required
    #                             username: "__string",
    #                           },
    #                           audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                           segment_type: "AAC", # accepts AAC, FMP4
    #                         },
    #                         fmp_4_hls_settings: {
    #                           audio_rendition_sets: "__string",
    #                           nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         },
    #                         standard_hls_settings: {
    #                           audio_rendition_sets: "__string",
    #                           m3u_8_settings: { # required
    #                             audio_frames_per_pes: 1,
    #                             audio_pids: "__string",
    #                             ecm_pid: "__string",
    #                             nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                             pat_interval: 1,
    #                             pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                             pcr_period: 1,
    #                             pcr_pid: "__string",
    #                             pmt_interval: 1,
    #                             pmt_pid: "__string",
    #                             program_num: 1,
    #                             scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                             scte_35_pid: "__string",
    #                             timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                             timed_metadata_pid: "__string",
    #                             transport_stream_id: 1,
    #                             video_pid: "__string",
    #                           },
    #                         },
    #                       },
    #                       name_modifier: "__stringMin1",
    #                       segment_modifier: "__string",
    #                     },
    #                     media_package_output_settings: {
    #                     },
    #                     ms_smooth_output_settings: {
    #                       h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                       name_modifier: "__string",
    #                     },
    #                     multiplex_output_settings: {
    #                       destination: { # required
    #                         destination_ref_id: "__string",
    #                       },
    #                     },
    #                     rtmp_output_settings: {
    #                       certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #                       connection_retry_interval: 1,
    #                       destination: { # required
    #                         destination_ref_id: "__string",
    #                       },
    #                       num_retries: 1,
    #                     },
    #                     udp_output_settings: {
    #                       buffer_msec: 1,
    #                       container_settings: { # required
    #                         m2ts_settings: {
    #                           absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                           arib: "DISABLED", # accepts DISABLED, ENABLED
    #                           arib_captions_pid: "__string",
    #                           arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                           audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                           audio_frames_per_pes: 1,
    #                           audio_pids: "__string",
    #                           audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                           bitrate: 1,
    #                           buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                           cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                           dvb_nit_settings: {
    #                             network_id: 1, # required
    #                             network_name: "__stringMin1Max256", # required
    #                             rep_interval: 1,
    #                           },
    #                           dvb_sdt_settings: {
    #                             output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                             rep_interval: 1,
    #                             service_name: "__stringMin1Max256",
    #                             service_provider_name: "__stringMin1Max256",
    #                           },
    #                           dvb_sub_pids: "__string",
    #                           dvb_tdt_settings: {
    #                             rep_interval: 1,
    #                           },
    #                           dvb_teletext_pid: "__string",
    #                           ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                           ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                           ebp_lookahead_ms: 1,
    #                           ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                           ecm_pid: "__string",
    #                           es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                           etv_platform_pid: "__string",
    #                           etv_signal_pid: "__string",
    #                           fragment_time: 1.0,
    #                           klv: "NONE", # accepts NONE, PASSTHROUGH
    #                           klv_data_pids: "__string",
    #                           nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           null_packet_bitrate: 1.0,
    #                           pat_interval: 1,
    #                           pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                           pcr_period: 1,
    #                           pcr_pid: "__string",
    #                           pmt_interval: 1,
    #                           pmt_pid: "__string",
    #                           program_num: 1,
    #                           rate_mode: "CBR", # accepts CBR, VBR
    #                           scte_27_pids: "__string",
    #                           scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                           scte_35_pid: "__string",
    #                           segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                           segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                           segmentation_time: 1.0,
    #                           timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                           timed_metadata_pid: "__string",
    #                           transport_stream_id: 1,
    #                           video_pid: "__string",
    #                         },
    #                       },
    #                       destination: { # required
    #                         destination_ref_id: "__string",
    #                       },
    #                       fec_output_settings: {
    #                         column_depth: 1,
    #                         include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #                         row_length: 1,
    #                       },
    #                     },
    #                   },
    #                   video_description_name: "__string",
    #                 },
    #               ],
    #             },
    #           ],
    #           timecode_config: { # required
    #             source: "EMBEDDED", # required, accepts EMBEDDED, SYSTEMCLOCK, ZEROBASED
    #             sync_threshold: 1,
    #           },
    #           video_descriptions: [ # required
    #             {
    #               codec_settings: {
    #                 frame_capture_settings: {
    #                   capture_interval: 1, # required
    #                   capture_interval_units: "MILLISECONDS", # accepts MILLISECONDS, SECONDS
    #                 },
    #                 h264_settings: {
    #                   adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #                   afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #                   bitrate: 1,
    #                   buf_fill_pct: 1,
    #                   buf_size: 1,
    #                   color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                   color_space_settings: {
    #                     color_space_passthrough_settings: {
    #                     },
    #                     rec_601_settings: {
    #                     },
    #                     rec_709_settings: {
    #                     },
    #                   },
    #                   entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                   filter_settings: {
    #                     temporal_filter_settings: {
    #                       post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                       strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                     },
    #                   },
    #                   fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #                   flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                   force_field_pictures: "DISABLED", # accepts DISABLED, ENABLED
    #                   framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   framerate_denominator: 1,
    #                   framerate_numerator: 1,
    #                   gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                   gop_closed_cadence: 1,
    #                   gop_num_b_frames: 1,
    #                   gop_size: 1.0,
    #                   gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                   level: "H264_LEVEL_1", # accepts H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO
    #                   look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #                   max_bitrate: 1,
    #                   min_i_interval: 1,
    #                   num_ref_frames: 1,
    #                   par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   par_denominator: 1,
    #                   par_numerator: 1,
    #                   profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                   quality_level: "ENHANCED_QUALITY", # accepts ENHANCED_QUALITY, STANDARD_QUALITY
    #                   qvbr_quality_level: 1,
    #                   rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR, VBR
    #                   scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #                   scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                   slices: 1,
    #                   softness: 1,
    #                   spatial_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                   subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #                   syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                   temporal_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                   timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                 },
    #                 h265_settings: {
    #                   adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #                   afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #                   alternative_transfer_function: "INSERT", # accepts INSERT, OMIT
    #                   bitrate: 1,
    #                   buf_size: 1,
    #                   color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                   color_space_settings: {
    #                     color_space_passthrough_settings: {
    #                     },
    #                     hdr_10_settings: {
    #                       max_cll: 1,
    #                       max_fall: 1,
    #                     },
    #                     rec_601_settings: {
    #                     },
    #                     rec_709_settings: {
    #                     },
    #                   },
    #                   filter_settings: {
    #                     temporal_filter_settings: {
    #                       post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                       strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                     },
    #                   },
    #                   fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #                   flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #                   framerate_denominator: 1, # required
    #                   framerate_numerator: 1, # required
    #                   gop_closed_cadence: 1,
    #                   gop_size: 1.0,
    #                   gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                   level: "H265_LEVEL_1", # accepts H265_LEVEL_1, H265_LEVEL_2, H265_LEVEL_2_1, H265_LEVEL_3, H265_LEVEL_3_1, H265_LEVEL_4, H265_LEVEL_4_1, H265_LEVEL_5, H265_LEVEL_5_1, H265_LEVEL_5_2, H265_LEVEL_6, H265_LEVEL_6_1, H265_LEVEL_6_2, H265_LEVEL_AUTO
    #                   look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #                   max_bitrate: 1,
    #                   min_i_interval: 1,
    #                   par_denominator: 1,
    #                   par_numerator: 1,
    #                   profile: "MAIN", # accepts MAIN, MAIN_10BIT
    #                   qvbr_quality_level: 1,
    #                   rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR
    #                   scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #                   scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                   slices: 1,
    #                   tier: "HIGH", # accepts HIGH, MAIN
    #                   timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                 },
    #                 mpeg_2_settings: {
    #                   adaptive_quantization: "AUTO", # accepts AUTO, HIGH, LOW, MEDIUM, OFF
    #                   afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #                   color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                   color_space: "AUTO", # accepts AUTO, PASSTHROUGH
    #                   display_aspect_ratio: "DISPLAYRATIO16X9", # accepts DISPLAYRATIO16X9, DISPLAYRATIO4X3
    #                   filter_settings: {
    #                     temporal_filter_settings: {
    #                       post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                       strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                     },
    #                   },
    #                   fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #                   framerate_denominator: 1, # required
    #                   framerate_numerator: 1, # required
    #                   gop_closed_cadence: 1,
    #                   gop_num_b_frames: 1,
    #                   gop_size: 1.0,
    #                   gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                   scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #                   subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #                   timecode_insertion: "DISABLED", # accepts DISABLED, GOP_TIMECODE
    #                 },
    #               },
    #               height: 1,
    #               name: "__string", # required
    #               respond_to_afd: "NONE", # accepts NONE, PASSTHROUGH, RESPOND
    #               scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #               sharpness: 1,
    #               width: 1,
    #             },
    #           ],
    #         },
    #         input_attachments: [
    #           {
    #             automatic_input_failover_settings: {
    #               input_preference: "EQUAL_INPUT_PREFERENCE", # accepts EQUAL_INPUT_PREFERENCE, PRIMARY_INPUT_PREFERRED
    #               secondary_input_id: "__string", # required
    #             },
    #             input_attachment_name: "__string",
    #             input_id: "__string",
    #             input_settings: {
    #               audio_selectors: [
    #                 {
    #                   name: "__stringMin1", # required
    #                   selector_settings: {
    #                     audio_language_selection: {
    #                       language_code: "__string", # required
    #                       language_selection_policy: "LOOSE", # accepts LOOSE, STRICT
    #                     },
    #                     audio_pid_selection: {
    #                       pid: 1, # required
    #                     },
    #                     audio_track_selection: {
    #                       tracks: [ # required
    #                         {
    #                           track: 1, # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               ],
    #               caption_selectors: [
    #                 {
    #                   language_code: "__string",
    #                   name: "__stringMin1", # required
    #                   selector_settings: {
    #                     ancillary_source_settings: {
    #                       source_ancillary_channel_number: 1,
    #                     },
    #                     arib_source_settings: {
    #                     },
    #                     dvb_sub_source_settings: {
    #                       pid: 1,
    #                     },
    #                     embedded_source_settings: {
    #                       convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                       scte_20_detection: "AUTO", # accepts AUTO, OFF
    #                       source_608_channel_number: 1,
    #                       source_608_track_number: 1,
    #                     },
    #                     scte_20_source_settings: {
    #                       convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                       source_608_channel_number: 1,
    #                     },
    #                     scte_27_source_settings: {
    #                       pid: 1,
    #                     },
    #                     teletext_source_settings: {
    #                       page_number: "__string",
    #                     },
    #                   },
    #                 },
    #               ],
    #               deblock_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               denoise_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               filter_strength: 1,
    #               input_filter: "AUTO", # accepts AUTO, DISABLED, FORCED
    #               network_input_settings: {
    #                 hls_input_settings: {
    #                   bandwidth: 1,
    #                   buffer_segments: 1,
    #                   retries: 1,
    #                   retry_interval: 1,
    #                 },
    #                 server_validation: "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", # accepts CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY
    #               },
    #               smpte_2038_data_preference: "IGNORE", # accepts IGNORE, PREFER
    #               source_end_behavior: "CONTINUE", # accepts CONTINUE, LOOP
    #               video_selector: {
    #                 color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709
    #                 color_space_usage: "FALLBACK", # accepts FALLBACK, FORCE
    #                 selector_settings: {
    #                   video_selector_pid: {
    #                     pid: 1,
    #                   },
    #                   video_selector_program_id: {
    #                     program_id: 1,
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         input_specification: {
    #           codec: "MPEG2", # accepts MPEG2, AVC, HEVC
    #           maximum_bitrate: "MAX_10_MBPS", # accepts MAX_10_MBPS, MAX_20_MBPS, MAX_50_MBPS
    #           resolution: "SD", # accepts SD, HD, UHD
    #         },
    #         log_level: "ERROR", # accepts ERROR, WARNING, INFO, DEBUG, DISABLED
    #         name: "__string",
    #         role_arn: "__string",
    #       }
    #
    # @!attribute [rw] cdi_input_specification
    #   @return [Types::CdiInputSpecification]
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::OutputDestination>]
    #
    # @!attribute [rw] encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    #
    # @!attribute [rw] input_attachments
    #   @return [Array<Types::InputAttachment>]
    #
    # @!attribute [rw] input_specification
    #   @return [Types::InputSpecification]
    #
    # @!attribute [rw] log_level
    #   The log level the user wants for their channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateChannelRequest AWS API Documentation
    #
    class UpdateChannelRequest < Struct.new(
      :cdi_input_specification,
      :channel_id,
      :destinations,
      :encoder_settings,
      :input_attachments,
      :input_specification,
      :log_level,
      :name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   @return [Types::Channel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateChannelResponse AWS API Documentation
    #
    class UpdateChannelResponse < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updated channel's description.
    #
    # @!attribute [rw] channel
    #   @return [Types::Channel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateChannelResultModel AWS API Documentation
    #
    class UpdateChannelResultModel < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destinations
    #   Destination settings for PUSH type inputs.
    #   @return [Array<Types::InputDestinationRequest>]
    #
    # @!attribute [rw] input_devices
    #   Settings for the devices.
    #   @return [Array<Types::InputDeviceRequest>]
    #
    # @!attribute [rw] input_security_groups
    #   A list of security groups referenced by IDs to attach to the input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] media_connect_flows
    #   A list of the MediaConnect Flow ARNs that you want to use as the
    #   source of the input. You can specify as few as one Flow and
    #   presently, as many as two. The only requirement is when you have
    #   more than one is that each Flow is in a separate Availability Zone
    #   as this ensures your EML input is redundant to AZ issues.
    #   @return [Array<Types::MediaConnectFlowRequest>]
    #
    # @!attribute [rw] name
    #   Name of the input.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role this input assumes during
    #   and after creation.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The source URLs for a PULL-type input. Every PULL type input needs
    #   exactly two source URLs for redundancy. Only specify sources for
    #   PULL type Inputs. Leave Destinations empty.
    #   @return [Array<Types::InputSourceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInput AWS API Documentation
    #
    class UpdateInput < Struct.new(
      :destinations,
      :input_devices,
      :input_security_groups,
      :media_connect_flows,
      :name,
      :role_arn,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates an input device.
    #
    # @!attribute [rw] hd_device_settings
    #   The settings that you want to apply to the input device.
    #   @return [Types::InputDeviceConfigurableSettings]
    #
    # @!attribute [rw] name
    #   The name that you assigned to this input device (not the unique ID).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputDevice AWS API Documentation
    #
    class UpdateInputDevice < Struct.new(
      :hd_device_settings,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateInputDeviceRequest
    #   data as a hash:
    #
    #       {
    #         hd_device_settings: {
    #           configured_input: "AUTO", # accepts AUTO, HDMI, SDI
    #           max_bitrate: 1,
    #         },
    #         input_device_id: "__string", # required
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] hd_device_settings
    #   Configurable settings for the input device.
    #   @return [Types::InputDeviceConfigurableSettings]
    #
    # @!attribute [rw] input_device_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputDeviceRequest AWS API Documentation
    #
    class UpdateInputDeviceRequest < Struct.new(
      :hd_device_settings,
      :input_device_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection between the input device and AWS.
    #   @return [String]
    #
    # @!attribute [rw] device_settings_sync_state
    #   The status of the action to synchronize the device configuration. If
    #   you change the configuration of the input device (for example, the
    #   maximum bitrate), MediaLive sends the new data to the device. The
    #   device might not update itself immediately. SYNCED means the device
    #   has updated its configuration. SYNCING means that it has not updated
    #   its configuration.
    #   @return [String]
    #
    # @!attribute [rw] hd_device_settings
    #   Settings that describe the active source from the input device, and
    #   the video characteristics of that source.
    #   @return [Types::InputDeviceHdSettings]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] network_settings
    #   The network settings for the input device.
    #   @return [Types::InputDeviceNetworkSettings]
    #
    # @!attribute [rw] serial_number
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the input device. For an AWS Elemental Link device that
    #   outputs resolutions up to 1080, choose "HD".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputDeviceResponse AWS API Documentation
    #
    class UpdateInputDeviceResponse < Struct.new(
      :arn,
      :connection_state,
      :device_settings_sync_state,
      :hd_device_settings,
      :id,
      :mac_address,
      :name,
      :network_settings,
      :serial_number,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateInputRequest
    #   data as a hash:
    #
    #       {
    #         destinations: [
    #           {
    #             stream_name: "__string",
    #           },
    #         ],
    #         input_devices: [
    #           {
    #             id: "__string",
    #           },
    #         ],
    #         input_id: "__string", # required
    #         input_security_groups: ["__string"],
    #         media_connect_flows: [
    #           {
    #             flow_arn: "__string",
    #           },
    #         ],
    #         name: "__string",
    #         role_arn: "__string",
    #         sources: [
    #           {
    #             password_param: "__string",
    #             url: "__string",
    #             username: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] destinations
    #   @return [Array<Types::InputDestinationRequest>]
    #
    # @!attribute [rw] input_devices
    #   @return [Array<Types::InputDeviceRequest>]
    #
    # @!attribute [rw] input_id
    #   @return [String]
    #
    # @!attribute [rw] input_security_groups
    #   @return [Array<String>]
    #
    # @!attribute [rw] media_connect_flows
    #   @return [Array<Types::MediaConnectFlowRequest>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   @return [Array<Types::InputSourceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputRequest AWS API Documentation
    #
    class UpdateInputRequest < Struct.new(
      :destinations,
      :input_devices,
      :input_id,
      :input_security_groups,
      :media_connect_flows,
      :name,
      :role_arn,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input
    #   @return [Types::Input]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputResponse AWS API Documentation
    #
    class UpdateInputResponse < Struct.new(
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input
    #   @return [Types::Input]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputResultModel AWS API Documentation
    #
    class UpdateInputResultModel < Struct.new(
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateInputSecurityGroupRequest
    #   data as a hash:
    #
    #       {
    #         input_security_group_id: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         whitelist_rules: [
    #           {
    #             cidr: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] input_security_group_id
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] whitelist_rules
    #   @return [Array<Types::InputWhitelistRuleCidr>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputSecurityGroupRequest AWS API Documentation
    #
    class UpdateInputSecurityGroupRequest < Struct.new(
      :input_security_group_id,
      :tags,
      :whitelist_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_group
    #   An Input Security Group
    #   @return [Types::InputSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputSecurityGroupResponse AWS API Documentation
    #
    class UpdateInputSecurityGroupResponse < Struct.new(
      :security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_group
    #   An Input Security Group
    #   @return [Types::InputSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputSecurityGroupResultModel AWS API Documentation
    #
    class UpdateInputSecurityGroupResultModel < Struct.new(
      :security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex_settings
    #   The new settings for a multiplex.
    #   @return [Types::MultiplexSettings]
    #
    # @!attribute [rw] name
    #   Name of the multiplex.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateMultiplex AWS API Documentation
    #
    class UpdateMultiplex < Struct.new(
      :multiplex_settings,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex_program_settings
    #   The new settings for a multiplex program.
    #   @return [Types::MultiplexProgramSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateMultiplexProgram AWS API Documentation
    #
    class UpdateMultiplexProgram < Struct.new(
      :multiplex_program_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMultiplexProgramRequest
    #   data as a hash:
    #
    #       {
    #         multiplex_id: "__string", # required
    #         multiplex_program_settings: {
    #           preferred_channel_pipeline: "CURRENTLY_ACTIVE", # accepts CURRENTLY_ACTIVE, PIPELINE_0, PIPELINE_1
    #           program_number: 1, # required
    #           service_descriptor: {
    #             provider_name: "__stringMax256", # required
    #             service_name: "__stringMax256", # required
    #           },
    #           video_settings: {
    #             constant_bitrate: 1,
    #             statmux_settings: {
    #               maximum_bitrate: 1,
    #               minimum_bitrate: 1,
    #               priority: 1,
    #             },
    #           },
    #         },
    #         program_name: "__string", # required
    #       }
    #
    # @!attribute [rw] multiplex_id
    #   @return [String]
    #
    # @!attribute [rw] multiplex_program_settings
    #   Multiplex Program settings configuration.
    #   @return [Types::MultiplexProgramSettings]
    #
    # @!attribute [rw] program_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateMultiplexProgramRequest AWS API Documentation
    #
    class UpdateMultiplexProgramRequest < Struct.new(
      :multiplex_id,
      :multiplex_program_settings,
      :program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex_program
    #   The multiplex program object.
    #   @return [Types::MultiplexProgram]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateMultiplexProgramResponse AWS API Documentation
    #
    class UpdateMultiplexProgramResponse < Struct.new(
      :multiplex_program)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex_program
    #   The updated multiplex program.
    #   @return [Types::MultiplexProgram]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateMultiplexProgramResultModel AWS API Documentation
    #
    class UpdateMultiplexProgramResultModel < Struct.new(
      :multiplex_program)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMultiplexRequest
    #   data as a hash:
    #
    #       {
    #         multiplex_id: "__string", # required
    #         multiplex_settings: {
    #           maximum_video_buffer_delay_milliseconds: 1,
    #           transport_stream_bitrate: 1, # required
    #           transport_stream_id: 1, # required
    #           transport_stream_reserved_bitrate: 1,
    #         },
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] multiplex_id
    #   @return [String]
    #
    # @!attribute [rw] multiplex_settings
    #   Contains configuration for a Multiplex event
    #   @return [Types::MultiplexSettings]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateMultiplexRequest AWS API Documentation
    #
    class UpdateMultiplexRequest < Struct.new(
      :multiplex_id,
      :multiplex_settings,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex
    #   The multiplex object.
    #   @return [Types::Multiplex]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateMultiplexResponse AWS API Documentation
    #
    class UpdateMultiplexResponse < Struct.new(
      :multiplex)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] multiplex
    #   The updated multiplex.
    #   @return [Types::Multiplex]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateMultiplexResultModel AWS API Documentation
    #
    class UpdateMultiplexResultModel < Struct.new(
      :multiplex)
      SENSITIVE = []
      include Aws::Structure
    end

    # UpdateReservation request
    #
    # @!attribute [rw] name
    #   Name of the reservation
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateReservation AWS API Documentation
    #
    class UpdateReservation < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateReservationRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string",
    #         reservation_id: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] reservation_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateReservationRequest AWS API Documentation
    #
    class UpdateReservationRequest < Struct.new(
      :name,
      :reservation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reservation
    #   Reserved resources available to use
    #   @return [Types::Reservation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateReservationResponse AWS API Documentation
    #
    class UpdateReservationResponse < Struct.new(
      :reservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # UpdateReservation response
    #
    # @!attribute [rw] reservation
    #   Reserved resources available to use
    #   @return [Types::Reservation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateReservationResultModel AWS API Documentation
    #
    class UpdateReservationResultModel < Struct.new(
      :reservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] element_path
    #   Path to the source of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ValidationError AWS API Documentation
    #
    class ValidationError < Struct.new(
      :element_path,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Video Codec Settings
    #
    # @note When making an API call, you may pass VideoCodecSettings
    #   data as a hash:
    #
    #       {
    #         frame_capture_settings: {
    #           capture_interval: 1, # required
    #           capture_interval_units: "MILLISECONDS", # accepts MILLISECONDS, SECONDS
    #         },
    #         h264_settings: {
    #           adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #           afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #           bitrate: 1,
    #           buf_fill_pct: 1,
    #           buf_size: 1,
    #           color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #           color_space_settings: {
    #             color_space_passthrough_settings: {
    #             },
    #             rec_601_settings: {
    #             },
    #             rec_709_settings: {
    #             },
    #           },
    #           entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #           filter_settings: {
    #             temporal_filter_settings: {
    #               post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #               strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #             },
    #           },
    #           fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #           flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #           force_field_pictures: "DISABLED", # accepts DISABLED, ENABLED
    #           framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #           framerate_denominator: 1,
    #           framerate_numerator: 1,
    #           gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #           gop_closed_cadence: 1,
    #           gop_num_b_frames: 1,
    #           gop_size: 1.0,
    #           gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #           level: "H264_LEVEL_1", # accepts H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO
    #           look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #           max_bitrate: 1,
    #           min_i_interval: 1,
    #           num_ref_frames: 1,
    #           par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #           par_denominator: 1,
    #           par_numerator: 1,
    #           profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #           quality_level: "ENHANCED_QUALITY", # accepts ENHANCED_QUALITY, STANDARD_QUALITY
    #           qvbr_quality_level: 1,
    #           rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR, VBR
    #           scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #           scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #           slices: 1,
    #           softness: 1,
    #           spatial_aq: "DISABLED", # accepts DISABLED, ENABLED
    #           subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #           syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #           temporal_aq: "DISABLED", # accepts DISABLED, ENABLED
    #           timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #         },
    #         h265_settings: {
    #           adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #           afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #           alternative_transfer_function: "INSERT", # accepts INSERT, OMIT
    #           bitrate: 1,
    #           buf_size: 1,
    #           color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #           color_space_settings: {
    #             color_space_passthrough_settings: {
    #             },
    #             hdr_10_settings: {
    #               max_cll: 1,
    #               max_fall: 1,
    #             },
    #             rec_601_settings: {
    #             },
    #             rec_709_settings: {
    #             },
    #           },
    #           filter_settings: {
    #             temporal_filter_settings: {
    #               post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #               strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #             },
    #           },
    #           fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #           flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #           framerate_denominator: 1, # required
    #           framerate_numerator: 1, # required
    #           gop_closed_cadence: 1,
    #           gop_size: 1.0,
    #           gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #           level: "H265_LEVEL_1", # accepts H265_LEVEL_1, H265_LEVEL_2, H265_LEVEL_2_1, H265_LEVEL_3, H265_LEVEL_3_1, H265_LEVEL_4, H265_LEVEL_4_1, H265_LEVEL_5, H265_LEVEL_5_1, H265_LEVEL_5_2, H265_LEVEL_6, H265_LEVEL_6_1, H265_LEVEL_6_2, H265_LEVEL_AUTO
    #           look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #           max_bitrate: 1,
    #           min_i_interval: 1,
    #           par_denominator: 1,
    #           par_numerator: 1,
    #           profile: "MAIN", # accepts MAIN, MAIN_10BIT
    #           qvbr_quality_level: 1,
    #           rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR
    #           scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #           scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #           slices: 1,
    #           tier: "HIGH", # accepts HIGH, MAIN
    #           timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #         },
    #         mpeg_2_settings: {
    #           adaptive_quantization: "AUTO", # accepts AUTO, HIGH, LOW, MEDIUM, OFF
    #           afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #           color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #           color_space: "AUTO", # accepts AUTO, PASSTHROUGH
    #           display_aspect_ratio: "DISPLAYRATIO16X9", # accepts DISPLAYRATIO16X9, DISPLAYRATIO4X3
    #           filter_settings: {
    #             temporal_filter_settings: {
    #               post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #               strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #             },
    #           },
    #           fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #           framerate_denominator: 1, # required
    #           framerate_numerator: 1, # required
    #           gop_closed_cadence: 1,
    #           gop_num_b_frames: 1,
    #           gop_size: 1.0,
    #           gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #           scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #           subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #           timecode_insertion: "DISABLED", # accepts DISABLED, GOP_TIMECODE
    #         },
    #       }
    #
    # @!attribute [rw] frame_capture_settings
    #   Frame Capture Settings
    #   @return [Types::FrameCaptureSettings]
    #
    # @!attribute [rw] h264_settings
    #   H264 Settings
    #   @return [Types::H264Settings]
    #
    # @!attribute [rw] h265_settings
    #   H265 Settings
    #   @return [Types::H265Settings]
    #
    # @!attribute [rw] mpeg_2_settings
    #   Mpeg2 Settings
    #   @return [Types::Mpeg2Settings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/VideoCodecSettings AWS API Documentation
    #
    class VideoCodecSettings < Struct.new(
      :frame_capture_settings,
      :h264_settings,
      :h265_settings,
      :mpeg_2_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Video settings for this stream.
    #
    # @note When making an API call, you may pass VideoDescription
    #   data as a hash:
    #
    #       {
    #         codec_settings: {
    #           frame_capture_settings: {
    #             capture_interval: 1, # required
    #             capture_interval_units: "MILLISECONDS", # accepts MILLISECONDS, SECONDS
    #           },
    #           h264_settings: {
    #             adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #             afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #             bitrate: 1,
    #             buf_fill_pct: 1,
    #             buf_size: 1,
    #             color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #             color_space_settings: {
    #               color_space_passthrough_settings: {
    #               },
    #               rec_601_settings: {
    #               },
    #               rec_709_settings: {
    #               },
    #             },
    #             entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #             filter_settings: {
    #               temporal_filter_settings: {
    #                 post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                 strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #               },
    #             },
    #             fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #             flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #             force_field_pictures: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #             gop_closed_cadence: 1,
    #             gop_num_b_frames: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             level: "H264_LEVEL_1", # accepts H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO
    #             look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             num_ref_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #             quality_level: "ENHANCED_QUALITY", # accepts ENHANCED_QUALITY, STANDARD_QUALITY
    #             qvbr_quality_level: 1,
    #             rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR, VBR
    #             scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slices: 1,
    #             softness: 1,
    #             spatial_aq: "DISABLED", # accepts DISABLED, ENABLED
    #             subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #             syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #             temporal_aq: "DISABLED", # accepts DISABLED, ENABLED
    #             timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #           },
    #           h265_settings: {
    #             adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #             afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #             alternative_transfer_function: "INSERT", # accepts INSERT, OMIT
    #             bitrate: 1,
    #             buf_size: 1,
    #             color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #             color_space_settings: {
    #               color_space_passthrough_settings: {
    #               },
    #               hdr_10_settings: {
    #                 max_cll: 1,
    #                 max_fall: 1,
    #               },
    #               rec_601_settings: {
    #               },
    #               rec_709_settings: {
    #               },
    #             },
    #             filter_settings: {
    #               temporal_filter_settings: {
    #                 post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                 strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #               },
    #             },
    #             fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #             flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_denominator: 1, # required
    #             framerate_numerator: 1, # required
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             level: "H265_LEVEL_1", # accepts H265_LEVEL_1, H265_LEVEL_2, H265_LEVEL_2_1, H265_LEVEL_3, H265_LEVEL_3_1, H265_LEVEL_4, H265_LEVEL_4_1, H265_LEVEL_5, H265_LEVEL_5_1, H265_LEVEL_5_2, H265_LEVEL_6, H265_LEVEL_6_1, H265_LEVEL_6_2, H265_LEVEL_AUTO
    #             look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             profile: "MAIN", # accepts MAIN, MAIN_10BIT
    #             qvbr_quality_level: 1,
    #             rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR
    #             scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slices: 1,
    #             tier: "HIGH", # accepts HIGH, MAIN
    #             timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #           },
    #           mpeg_2_settings: {
    #             adaptive_quantization: "AUTO", # accepts AUTO, HIGH, LOW, MEDIUM, OFF
    #             afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #             color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #             color_space: "AUTO", # accepts AUTO, PASSTHROUGH
    #             display_aspect_ratio: "DISPLAYRATIO16X9", # accepts DISPLAYRATIO16X9, DISPLAYRATIO4X3
    #             filter_settings: {
    #               temporal_filter_settings: {
    #                 post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                 strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #               },
    #             },
    #             fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #             framerate_denominator: 1, # required
    #             framerate_numerator: 1, # required
    #             gop_closed_cadence: 1,
    #             gop_num_b_frames: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #             subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #             timecode_insertion: "DISABLED", # accepts DISABLED, GOP_TIMECODE
    #           },
    #         },
    #         height: 1,
    #         name: "__string", # required
    #         respond_to_afd: "NONE", # accepts NONE, PASSTHROUGH, RESPOND
    #         scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #         sharpness: 1,
    #         width: 1,
    #       }
    #
    # @!attribute [rw] codec_settings
    #   Video codec settings.
    #   @return [Types::VideoCodecSettings]
    #
    # @!attribute [rw] height
    #   Output video height, in pixels. Must be an even number. For most
    #   codecs, you can leave this field and width blank in order to use the
    #   height and width (resolution) from the source. Note, however, that
    #   leaving blank is not recommended. For the Frame Capture codec,
    #   height and width are required.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of this VideoDescription. Outputs will use this name to
    #   uniquely identify this Description. Description names should be
    #   unique within this Live Event.
    #   @return [String]
    #
    # @!attribute [rw] respond_to_afd
    #   Indicates how MediaLive will respond to the AFD values that might be
    #   in the input video. If you do not know what AFD signaling is, or if
    #   your downstream system has not given you guidance, choose
    #   PASSTHROUGH. RESPOND: MediaLive clips the input video using a
    #   formula that uses the AFD values (configured in afdSignaling ), the
    #   input display aspect ratio, and the output display aspect ratio.
    #   MediaLive also includes the AFD values in the output, unless the
    #   codec for this encode is FRAME\_CAPTURE. PASSTHROUGH: MediaLive
    #   ignores the AFD values and does not clip the video. But MediaLive
    #   does include the values in the output. NONE: MediaLive does not clip
    #   the input video and does not include the AFD values in the output
    #   @return [String]
    #
    # @!attribute [rw] scaling_behavior
    #   STRETCH\_TO\_OUTPUT configures the output position to stretch the
    #   video to the specified output resolution (height and width). This
    #   option will override any position value. DEFAULT may insert black
    #   boxes (pillar boxes or letter boxes) around the video to provide the
    #   specified output resolution.
    #   @return [String]
    #
    # @!attribute [rw] sharpness
    #   Changes the strength of the anti-alias filter used for scaling. 0 is
    #   the softest setting, 100 is the sharpest. A setting of 50 is
    #   recommended for most content.
    #   @return [Integer]
    #
    # @!attribute [rw] width
    #   Output video width, in pixels. Must be an even number. For most
    #   codecs, you can leave this field and height blank in order to use
    #   the height and width (resolution) from the source. Note, however,
    #   that leaving blank is not recommended. For the Frame Capture codec,
    #   height and width are required.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/VideoDescription AWS API Documentation
    #
    class VideoDescription < Struct.new(
      :codec_settings,
      :height,
      :name,
      :respond_to_afd,
      :scaling_behavior,
      :sharpness,
      :width)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a particular video stream within an input source. An input
    # may have only a single video selector.
    #
    # @note When making an API call, you may pass VideoSelector
    #   data as a hash:
    #
    #       {
    #         color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709
    #         color_space_usage: "FALLBACK", # accepts FALLBACK, FORCE
    #         selector_settings: {
    #           video_selector_pid: {
    #             pid: 1,
    #           },
    #           video_selector_program_id: {
    #             program_id: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] color_space
    #   Specifies the color space of an input. This setting works in tandem
    #   with colorSpaceUsage and a video description's
    #   colorSpaceSettingsChoice to determine if any conversion will be
    #   performed.
    #   @return [String]
    #
    # @!attribute [rw] color_space_usage
    #   Applies only if colorSpace is a value other than follow. This field
    #   controls how the value in the colorSpace field will be used.
    #   fallback means that when the input does include color space data,
    #   that data will be used, but when the input has no color space data,
    #   the value in colorSpace will be used. Choose fallback if your input
    #   is sometimes missing color space data, but when it does have color
    #   space data, that data is correct. force means to always use the
    #   value in colorSpace. Choose force if your input usually has no color
    #   space data or might have unreliable color space data.
    #   @return [String]
    #
    # @!attribute [rw] selector_settings
    #   The video selector settings.
    #   @return [Types::VideoSelectorSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/VideoSelector AWS API Documentation
    #
    class VideoSelector < Struct.new(
      :color_space,
      :color_space_usage,
      :selector_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Video Selector Pid
    #
    # @note When making an API call, you may pass VideoSelectorPid
    #   data as a hash:
    #
    #       {
    #         pid: 1,
    #       }
    #
    # @!attribute [rw] pid
    #   Selects a specific PID from within a video source.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/VideoSelectorPid AWS API Documentation
    #
    class VideoSelectorPid < Struct.new(
      :pid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Video Selector Program Id
    #
    # @note When making an API call, you may pass VideoSelectorProgramId
    #   data as a hash:
    #
    #       {
    #         program_id: 1,
    #       }
    #
    # @!attribute [rw] program_id
    #   Selects a specific program from within a multi-program transport
    #   stream. If the program doesn't exist, the first program within the
    #   transport stream will be selected by default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/VideoSelectorProgramId AWS API Documentation
    #
    class VideoSelectorProgramId < Struct.new(
      :program_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Video Selector Settings
    #
    # @note When making an API call, you may pass VideoSelectorSettings
    #   data as a hash:
    #
    #       {
    #         video_selector_pid: {
    #           pid: 1,
    #         },
    #         video_selector_program_id: {
    #           program_id: 1,
    #         },
    #       }
    #
    # @!attribute [rw] video_selector_pid
    #   Video Selector Pid
    #   @return [Types::VideoSelectorPid]
    #
    # @!attribute [rw] video_selector_program_id
    #   Video Selector Program Id
    #   @return [Types::VideoSelectorProgramId]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/VideoSelectorSettings AWS API Documentation
    #
    class VideoSelectorSettings < Struct.new(
      :video_selector_pid,
      :video_selector_program_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wav Settings
    #
    # @note When making an API call, you may pass WavSettings
    #   data as a hash:
    #
    #       {
    #         bit_depth: 1.0,
    #         coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_4_0, CODING_MODE_8_0
    #         sample_rate: 1.0,
    #       }
    #
    # @!attribute [rw] bit_depth
    #   Bits per sample.
    #   @return [Float]
    #
    # @!attribute [rw] coding_mode
    #   The audio coding mode for the WAV audio. The mode determines the
    #   number of channels in the audio.
    #   @return [String]
    #
    # @!attribute [rw] sample_rate
    #   Sample rate in Hz.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/WavSettings AWS API Documentation
    #
    class WavSettings < Struct.new(
      :bit_depth,
      :coding_mode,
      :sample_rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Webvtt Destination Settings
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/WebvttDestinationSettings AWS API Documentation
    #
    class WebvttDestinationSettings < Aws::EmptyStructure; end

  end
end
