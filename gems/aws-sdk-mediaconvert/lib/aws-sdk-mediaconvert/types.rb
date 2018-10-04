# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaConvert
  module Types

    # Required when you set (Codec) under
    # (AudioDescriptions)>(CodecSettings) to the value AAC. The service
    # accepts one of two mutually exclusive groups of AAC settings--VBR and
    # CBR. To select one of these modes, set the value of Bitrate control
    # mode (rateControlMode) to "VBR" or "CBR". In VBR mode, you control
    # the audio quality with the setting VBR quality (vbrQuality). In CBR
    # mode, you use the setting Bitrate (bitrate). Defaults and valid values
    # depend on the rate control mode.
    #
    # @note When making an API call, you may pass AacSettings
    #   data as a hash:
    #
    #       {
    #         audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #         bitrate: 1,
    #         codec_profile: "LC", # accepts LC, HEV1, HEV2
    #         coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #         rate_control_mode: "CBR", # accepts CBR, VBR
    #         raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #         sample_rate: 1,
    #         specification: "MPEG2", # accepts MPEG2, MPEG4
    #         vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #       }
    #
    # @!attribute [rw] audio_description_broadcaster_mix
    #   Choose BROADCASTER\_MIXED\_AD when the input contains pre-mixed main
    #   audio + audio description (AD) as a stereo pair. The value for
    #   AudioType will be set to 3, which signals to downstream systems that
    #   this stream contains "broadcaster mixed AD". Note that the input
    #   received by the encoder must contain pre-mixed audio; the encoder
    #   does not perform the mixing. When you choose BROADCASTER\_MIXED\_AD,
    #   the encoder ignores any values you provide in AudioType and
    #   FollowInputAudioType. Choose NORMAL when the input does not contain
    #   pre-mixed audio + audio description (AD). In this case, the encoder
    #   will use any values you provide for AudioType and
    #   FollowInputAudioType.
    #   @return [String]
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second. Defaults and valid values depend on
    #   rate control mode and profile.
    #   @return [Integer]
    #
    # @!attribute [rw] codec_profile
    #   AAC Profile.
    #   @return [String]
    #
    # @!attribute [rw] coding_mode
    #   Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid
    #   values depend on rate control mode and profile. "1.0 - Audio
    #   Description (Receiver Mix)" setting receives a stereo description
    #   plus control track and emits a mono AAC encode of the description
    #   track, with control data emitted in the PES header as per ETSI TS
    #   101 154 Annex E.
    #   @return [String]
    #
    # @!attribute [rw] rate_control_mode
    #   Rate Control Mode.
    #   @return [String]
    #
    # @!attribute [rw] raw_format
    #   Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in
    #   an output, you must choose "No container" for the output
    #   container.
    #   @return [String]
    #
    # @!attribute [rw] sample_rate
    #   Sample rate in Hz. Valid values depend on rate control mode and
    #   profile.
    #   @return [Integer]
    #
    # @!attribute [rw] specification
    #   Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2
    #   Transport Stream containers.
    #   @return [String]
    #
    # @!attribute [rw] vbr_quality
    #   VBR Quality Level - Only used if rate\_control\_mode is VBR.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/AacSettings AWS API Documentation
    #
    class AacSettings < Struct.new(
      :audio_description_broadcaster_mix,
      :bitrate,
      :codec_profile,
      :coding_mode,
      :rate_control_mode,
      :raw_format,
      :sample_rate,
      :specification,
      :vbr_quality)
      include Aws::Structure
    end

    # Required when you set (Codec) under
    # (AudioDescriptions)>(CodecSettings) to the value AC3.
    #
    # @note When making an API call, you may pass Ac3Settings
    #   data as a hash:
    #
    #       {
    #         bitrate: 1,
    #         bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #         coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #         dialnorm: 1,
    #         dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #         lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #         metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #         sample_rate: 1,
    #       }
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second. Valid bitrates depend on the coding
    #   mode.
    #   @return [Integer]
    #
    # @!attribute [rw] bitstream_mode
    #   Specifies the "Bitstream Mode" (bsmod) for the emitted AC-3
    #   stream. See ATSC A/52-2012 for background on these values.
    #   @return [String]
    #
    # @!attribute [rw] coding_mode
    #   Dolby Digital coding mode. Determines number of channels.
    #   @return [String]
    #
    # @!attribute [rw] dialnorm
    #   Sets the dialnorm for the output. If blank and input audio is Dolby
    #   Digital, dialnorm will be passed through.
    #   @return [Integer]
    #
    # @!attribute [rw] dynamic_range_compression_profile
    #   If set to FILM\_STANDARD, adds dynamic range compression signaling
    #   to the output bitstream as defined in the Dolby Digital
    #   specification.
    #   @return [String]
    #
    # @!attribute [rw] lfe_filter
    #   Applies a 120Hz lowpass filter to the LFE channel prior to encoding.
    #   Only valid with 3\_2\_LFE coding mode.
    #   @return [String]
    #
    # @!attribute [rw] metadata_control
    #   When set to FOLLOW\_INPUT, encoder metadata will be sourced from the
    #   DD, DD+, or DolbyE decoder that supplied this audio data. If audio
    #   was not supplied from one of these streams, then the static metadata
    #   settings will be used.
    #   @return [String]
    #
    # @!attribute [rw] sample_rate
    #   Sample rate in hz. Sample rate is always 48000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Ac3Settings AWS API Documentation
    #
    class Ac3Settings < Struct.new(
      :bitrate,
      :bitstream_mode,
      :coding_mode,
      :dialnorm,
      :dynamic_range_compression_profile,
      :lfe_filter,
      :metadata_control,
      :sample_rate)
      include Aws::Structure
    end

    # Required when you set (Codec) under
    # (AudioDescriptions)>(CodecSettings) to the value AIFF.
    #
    # @note When making an API call, you may pass AiffSettings
    #   data as a hash:
    #
    #       {
    #         bit_depth: 1,
    #         channels: 1,
    #         sample_rate: 1,
    #       }
    #
    # @!attribute [rw] bit_depth
    #   Specify Bit depth (BitDepth), in bits per sample, to choose the
    #   encoding quality for this audio track.
    #   @return [Integer]
    #
    # @!attribute [rw] channels
    #   Set Channels to specify the number of channels in this output audio
    #   track. Choosing Mono in the console will give you 1 output channel;
    #   choosing Stereo will give you 2. In the API, valid values are 1 and
    #   2.
    #   @return [Integer]
    #
    # @!attribute [rw] sample_rate
    #   Sample rate in hz.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/AiffSettings AWS API Documentation
    #
    class AiffSettings < Struct.new(
      :bit_depth,
      :channels,
      :sample_rate)
      include Aws::Structure
    end

    # Settings for ancillary captions source.
    #
    # @note When making an API call, you may pass AncillarySourceSettings
    #   data as a hash:
    #
    #       {
    #         source_ancillary_channel_number: 1,
    #       }
    #
    # @!attribute [rw] source_ancillary_channel_number
    #   Specifies the 608 channel number in the ancillary data track from
    #   which to extract captions. Unused for passthrough.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/AncillarySourceSettings AWS API Documentation
    #
    class AncillarySourceSettings < Struct.new(
      :source_ancillary_channel_number)
      include Aws::Structure
    end

    # Audio codec settings (CodecSettings) under (AudioDescriptions)
    # contains the group of settings related to audio encoding. The settings
    # in this group vary depending on the value you choose for Audio codec
    # (Codec). For each codec enum you choose, define the corresponding
    # settings object. The following lists the codec enum, settings object
    # pairs. * AAC, AacSettings * MP2, Mp2Settings * WAV, WavSettings *
    # AIFF, AiffSettings * AC3, Ac3Settings * EAC3, Eac3Settings
    #
    # @note When making an API call, you may pass AudioCodecSettings
    #   data as a hash:
    #
    #       {
    #         aac_settings: {
    #           audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #           bitrate: 1,
    #           codec_profile: "LC", # accepts LC, HEV1, HEV2
    #           coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #           rate_control_mode: "CBR", # accepts CBR, VBR
    #           raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #           sample_rate: 1,
    #           specification: "MPEG2", # accepts MPEG2, MPEG4
    #           vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #         },
    #         ac_3_settings: {
    #           bitrate: 1,
    #           bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #           dialnorm: 1,
    #           dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #           lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #           metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           sample_rate: 1,
    #         },
    #         aiff_settings: {
    #           bit_depth: 1,
    #           channels: 1,
    #           sample_rate: 1,
    #         },
    #         codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #         eac_3_settings: {
    #           attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #           bitrate: 1,
    #           bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #           dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #           dialnorm: 1,
    #           dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #           dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #           lfe_control: "LFE", # accepts LFE, NO_LFE
    #           lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #           lo_ro_center_mix_level: 1.0,
    #           lo_ro_surround_mix_level: 1.0,
    #           lt_rt_center_mix_level: 1.0,
    #           lt_rt_surround_mix_level: 1.0,
    #           metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #           phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #           sample_rate: 1,
    #           stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #           surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #           surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #         },
    #         mp_2_settings: {
    #           bitrate: 1,
    #           channels: 1,
    #           sample_rate: 1,
    #         },
    #         wav_settings: {
    #           bit_depth: 1,
    #           channels: 1,
    #           format: "RIFF", # accepts RIFF, RF64
    #           sample_rate: 1,
    #         },
    #       }
    #
    # @!attribute [rw] aac_settings
    #   Required when you set (Codec) under
    #   (AudioDescriptions)>(CodecSettings) to the value AAC. The service
    #   accepts one of two mutually exclusive groups of AAC settings--VBR
    #   and CBR. To select one of these modes, set the value of Bitrate
    #   control mode (rateControlMode) to "VBR" or "CBR". In VBR mode,
    #   you control the audio quality with the setting VBR quality
    #   (vbrQuality). In CBR mode, you use the setting Bitrate (bitrate).
    #   Defaults and valid values depend on the rate control mode.
    #   @return [Types::AacSettings]
    #
    # @!attribute [rw] ac_3_settings
    #   Required when you set (Codec) under
    #   (AudioDescriptions)>(CodecSettings) to the value AC3.
    #   @return [Types::Ac3Settings]
    #
    # @!attribute [rw] aiff_settings
    #   Required when you set (Codec) under
    #   (AudioDescriptions)>(CodecSettings) to the value AIFF.
    #   @return [Types::AiffSettings]
    #
    # @!attribute [rw] codec
    #   Type of Audio codec.
    #   @return [String]
    #
    # @!attribute [rw] eac_3_settings
    #   Required when you set (Codec) under
    #   (AudioDescriptions)>(CodecSettings) to the value EAC3.
    #   @return [Types::Eac3Settings]
    #
    # @!attribute [rw] mp_2_settings
    #   Required when you set (Codec) under
    #   (AudioDescriptions)>(CodecSettings) to the value MP2.
    #   @return [Types::Mp2Settings]
    #
    # @!attribute [rw] wav_settings
    #   Required when you set (Codec) under
    #   (AudioDescriptions)>(CodecSettings) to the value WAV.
    #   @return [Types::WavSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/AudioCodecSettings AWS API Documentation
    #
    class AudioCodecSettings < Struct.new(
      :aac_settings,
      :ac_3_settings,
      :aiff_settings,
      :codec,
      :eac_3_settings,
      :mp_2_settings,
      :wav_settings)
      include Aws::Structure
    end

    # Description of audio output
    #
    # @note When making an API call, you may pass AudioDescription
    #   data as a hash:
    #
    #       {
    #         audio_normalization_settings: {
    #           algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #           algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #           correction_gate_level: 1,
    #           loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #           peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #           target_lkfs: 1.0,
    #         },
    #         audio_source_name: "__string",
    #         audio_type: 1,
    #         audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #         codec_settings: {
    #           aac_settings: {
    #             audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #             bitrate: 1,
    #             codec_profile: "LC", # accepts LC, HEV1, HEV2
    #             coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #             rate_control_mode: "CBR", # accepts CBR, VBR
    #             raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #             sample_rate: 1,
    #             specification: "MPEG2", # accepts MPEG2, MPEG4
    #             vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #           },
    #           ac_3_settings: {
    #             bitrate: 1,
    #             bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #             coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #             dialnorm: 1,
    #             dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #             lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #             metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             sample_rate: 1,
    #           },
    #           aiff_settings: {
    #             bit_depth: 1,
    #             channels: 1,
    #             sample_rate: 1,
    #           },
    #           codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #           eac_3_settings: {
    #             attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #             bitrate: 1,
    #             bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #             coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #             dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #             dialnorm: 1,
    #             dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #             dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #             lfe_control: "LFE", # accepts LFE, NO_LFE
    #             lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #             lo_ro_center_mix_level: 1.0,
    #             lo_ro_surround_mix_level: 1.0,
    #             lt_rt_center_mix_level: 1.0,
    #             lt_rt_surround_mix_level: 1.0,
    #             metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #             phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #             sample_rate: 1,
    #             stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #             surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #             surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #           },
    #           mp_2_settings: {
    #             bitrate: 1,
    #             channels: 1,
    #             sample_rate: 1,
    #           },
    #           wav_settings: {
    #             bit_depth: 1,
    #             channels: 1,
    #             format: "RIFF", # accepts RIFF, RF64
    #             sample_rate: 1,
    #           },
    #         },
    #         custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #         language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #         language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #         remix_settings: {
    #           channel_mapping: {
    #             output_channels: [
    #               {
    #                 input_channels: [1],
    #               },
    #             ],
    #           },
    #           channels_in: 1,
    #           channels_out: 1,
    #         },
    #         stream_name: "__stringPatternWS",
    #       }
    #
    # @!attribute [rw] audio_normalization_settings
    #   Advanced audio normalization settings.
    #   @return [Types::AudioNormalizationSettings]
    #
    # @!attribute [rw] audio_source_name
    #   Specifies which audio data to use from each input. In the simplest
    #   case, specify an "Audio Selector":#inputs-audio\_selector by name
    #   based on its order within each input. For example if you specify
    #   "Audio Selector 3", then the third audio selector will be used
    #   from each input. If an input does not have an "Audio Selector 3",
    #   then the audio selector marked as "default" in that input will be
    #   used. If there is no audio selector marked as "default", silence
    #   will be inserted for the duration of that input. Alternatively, an
    #   "Audio Selector Group":#inputs-audio\_selector\_group name may be
    #   specified, with similar default/silence behavior. If no
    #   audio\_source\_name is specified, then "Audio Selector 1" will be
    #   chosen automatically.
    #   @return [String]
    #
    # @!attribute [rw] audio_type
    #   Applies only if Follow Input Audio Type is unchecked (false). A
    #   number between 0 and 255. The following are defined in ISO-IEC
    #   13818-1: 0 = Undefined, 1 = Clean Effects, 2 = Hearing Impaired, 3 =
    #   Visually Impaired Commentary, 4-255 = Reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] audio_type_control
    #   When set to FOLLOW\_INPUT, if the input contains an ISO 639
    #   audio\_type, then that value is passed through to the output. If the
    #   input contains no ISO 639 audio\_type, the value in Audio Type is
    #   included in the output. Otherwise the value in Audio Type is
    #   included in the output. Note that this field and audioType are both
    #   ignored if audioDescriptionBroadcasterMix is set to
    #   BROADCASTER\_MIXED\_AD.
    #   @return [String]
    #
    # @!attribute [rw] codec_settings
    #   Audio codec settings (CodecSettings) under (AudioDescriptions)
    #   contains the group of settings related to audio encoding. The
    #   settings in this group vary depending on the value you choose for
    #   Audio codec (Codec). For each codec enum you choose, define the
    #   corresponding settings object. The following lists the codec enum,
    #   settings object pairs. * AAC, AacSettings * MP2, Mp2Settings *
    #   WAV, WavSettings * AIFF, AiffSettings * AC3, Ac3Settings * EAC3,
    #   Eac3Settings
    #   @return [Types::AudioCodecSettings]
    #
    # @!attribute [rw] custom_language_code
    #   Specify the language for this audio output track, using the ISO
    #   639-2 or ISO 639-3 three-letter language code. The language
    #   specified will be used when 'Follow Input Language Code' is not
    #   selected or when 'Follow Input Language Code' is selected but
    #   there is no ISO 639 language code specified by the input.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Indicates the language of the audio output track. The ISO 639
    #   language specified in the 'Language Code' drop down will be used
    #   when 'Follow Input Language Code' is not selected or when 'Follow
    #   Input Language Code' is selected but there is no ISO 639 language
    #   code specified by the input.
    #   @return [String]
    #
    # @!attribute [rw] language_code_control
    #   Choosing FOLLOW\_INPUT will cause the ISO 639 language code of the
    #   output to follow the ISO 639 language code of the input. The
    #   language specified for languageCode' will be used when
    #   USE\_CONFIGURED is selected or when FOLLOW\_INPUT is selected but
    #   there is no ISO 639 language code specified by the input.
    #   @return [String]
    #
    # @!attribute [rw] remix_settings
    #   Advanced audio remixing settings.
    #   @return [Types::RemixSettings]
    #
    # @!attribute [rw] stream_name
    #   Used for MS Smooth and Apple HLS outputs. Indicates the name
    #   displayed by the player (eg. English, or Director Commentary).
    #   Alphanumeric characters, spaces, and underscore are legal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/AudioDescription AWS API Documentation
    #
    class AudioDescription < Struct.new(
      :audio_normalization_settings,
      :audio_source_name,
      :audio_type,
      :audio_type_control,
      :codec_settings,
      :custom_language_code,
      :language_code,
      :language_code_control,
      :remix_settings,
      :stream_name)
      include Aws::Structure
    end

    # Advanced audio normalization settings.
    #
    # @note When making an API call, you may pass AudioNormalizationSettings
    #   data as a hash:
    #
    #       {
    #         algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #         algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #         correction_gate_level: 1,
    #         loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #         peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #         target_lkfs: 1.0,
    #       }
    #
    # @!attribute [rw] algorithm
    #   Audio normalization algorithm to use. 1770-1 conforms to the CALM
    #   Act specification, 1770-2 conforms to the EBU R-128 specification.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_control
    #   When enabled the output audio is corrected using the chosen
    #   algorithm. If disabled, the audio will be measured but not adjusted.
    #   @return [String]
    #
    # @!attribute [rw] correction_gate_level
    #   Content measuring above this level will be corrected to the target
    #   level. Content measuring below this level will not be corrected.
    #   Gating only applies when not using real\_time\_correction.
    #   @return [Integer]
    #
    # @!attribute [rw] loudness_logging
    #   If set to LOG, log each output's audio track loudness to a CSV
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] peak_calculation
    #   If set to TRUE\_PEAK, calculate and log the TruePeak for each
    #   output's audio track loudness.
    #   @return [String]
    #
    # @!attribute [rw] target_lkfs
    #   Target LKFS(loudness) to adjust volume to. If no value is entered, a
    #   default value will be used according to the chosen algorithm. The
    #   CALM Act (1770-1) recommends a target of -24 LKFS. The EBU R-128
    #   specification (1770-2) recommends a target of -23 LKFS.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/AudioNormalizationSettings AWS API Documentation
    #
    class AudioNormalizationSettings < Struct.new(
      :algorithm,
      :algorithm_control,
      :correction_gate_level,
      :loudness_logging,
      :peak_calculation,
      :target_lkfs)
      include Aws::Structure
    end

    # Selector for Audio
    #
    # @note When making an API call, you may pass AudioSelector
    #   data as a hash:
    #
    #       {
    #         custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #         default_selection: "DEFAULT", # accepts DEFAULT, NOT_DEFAULT
    #         external_audio_file_input: "__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE",
    #         language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #         offset: 1,
    #         pids: [1],
    #         program_selection: 1,
    #         remix_settings: {
    #           channel_mapping: {
    #             output_channels: [
    #               {
    #                 input_channels: [1],
    #               },
    #             ],
    #           },
    #           channels_in: 1,
    #           channels_out: 1,
    #         },
    #         selector_type: "PID", # accepts PID, TRACK, LANGUAGE_CODE
    #         tracks: [1],
    #       }
    #
    # @!attribute [rw] custom_language_code
    #   Selects a specific language code from within an audio source, using
    #   the ISO 639-2 or ISO 639-3 three-letter language code
    #   @return [String]
    #
    # @!attribute [rw] default_selection
    #   Enable this setting on one audio selector to set it as the default
    #   for the job. The service uses this default for outputs where it
    #   can't find the specified input audio. If you don't set a default,
    #   those outputs have no audio.
    #   @return [String]
    #
    # @!attribute [rw] external_audio_file_input
    #   Specifies audio data from an external file source.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Selects a specific language code from within an audio source.
    #   @return [String]
    #
    # @!attribute [rw] offset
    #   Specifies a time delta in milliseconds to offset the audio from the
    #   input video.
    #   @return [Integer]
    #
    # @!attribute [rw] pids
    #   Selects a specific PID from within an audio source (e.g. 257 selects
    #   PID 0x101).
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] program_selection
    #   Use this setting for input streams that contain Dolby E, to have the
    #   service extract specific program data from the track. To select
    #   multiple programs, create multiple selectors with the same Track and
    #   different Program numbers. In the console, this setting is visible
    #   when you set Selector type to Track. Choose the program number from
    #   the dropdown list. If you are sending a JSON file, provide the
    #   program ID, which is part of the audio metadata. If your input file
    #   has incorrect metadata, you can choose All channels instead of a
    #   program number to have the service ignore the program IDs and
    #   include all the programs in the track.
    #   @return [Integer]
    #
    # @!attribute [rw] remix_settings
    #   Use these settings to reorder the audio channels of one input to
    #   match those of another input. This allows you to combine the two
    #   files into a single output, one after the other.
    #   @return [Types::RemixSettings]
    #
    # @!attribute [rw] selector_type
    #   Specifies the type of the audio selector.
    #   @return [String]
    #
    # @!attribute [rw] tracks
    #   Identify a track from the input audio to include in this selector by
    #   entering the track index number. To include several tracks in a
    #   single audio selector, specify multiple tracks as follows. Using the
    #   console, enter a comma-separated list. For examle, type "1,2,3" to
    #   include tracks 1 through 3. Specifying directly in your JSON job
    #   file, provide the track numbers in an array. For example,
    #   "tracks": \[1,2,3\].
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/AudioSelector AWS API Documentation
    #
    class AudioSelector < Struct.new(
      :custom_language_code,
      :default_selection,
      :external_audio_file_input,
      :language_code,
      :offset,
      :pids,
      :program_selection,
      :remix_settings,
      :selector_type,
      :tracks)
      include Aws::Structure
    end

    # Group of Audio Selectors
    #
    # @note When making an API call, you may pass AudioSelectorGroup
    #   data as a hash:
    #
    #       {
    #         audio_selector_names: ["__stringMin1"],
    #       }
    #
    # @!attribute [rw] audio_selector_names
    #   Name of an Audio Selector within the same input to include in the
    #   group. Audio selector names are standardized, based on their order
    #   within the input (e.g., "Audio Selector 1"). The audio selector
    #   name parameter can be repeated to add any number of audio selectors
    #   to the group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/AudioSelectorGroup AWS API Documentation
    #
    class AudioSelectorGroup < Struct.new(
      :audio_selector_names)
      include Aws::Structure
    end

    # Settings for Avail Blanking
    #
    # @note When making an API call, you may pass AvailBlanking
    #   data as a hash:
    #
    #       {
    #         avail_blanking_image: "__stringMin14PatternS3BmpBMPPngPNG",
    #       }
    #
    # @!attribute [rw] avail_blanking_image
    #   Blanking image to be used. Leave empty for solid black. Only bmp and
    #   png images are supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/AvailBlanking AWS API Documentation
    #
    class AvailBlanking < Struct.new(
      :avail_blanking_image)
      include Aws::Structure
    end

    # Burn-In Destination Settings.
    #
    # @note When making an API call, you may pass BurninDestinationSettings
    #   data as a hash:
    #
    #       {
    #         alignment: "CENTERED", # accepts CENTERED, LEFT
    #         background_color: "NONE", # accepts NONE, BLACK, WHITE
    #         background_opacity: 1,
    #         font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #         font_opacity: 1,
    #         font_resolution: 1,
    #         font_size: 1,
    #         outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #         outline_size: 1,
    #         shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #         shadow_opacity: 1,
    #         shadow_x_offset: 1,
    #         shadow_y_offset: 1,
    #         teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #         x_position: 1,
    #         y_position: 1,
    #       }
    #
    # @!attribute [rw] alignment
    #   If no explicit x\_position or y\_position is provided, setting
    #   alignment to centered will place the captions at the bottom center
    #   of the output. Similarly, setting a left alignment will align
    #   captions to the bottom left of the output. If x and y positions are
    #   given in conjunction with the alignment parameter, the font will be
    #   justified (either left or centered) relative to those coordinates.
    #   This option is not valid for source captions that are STL,
    #   608/embedded or teletext. These source settings are already
    #   pre-defined by the caption stream. All burn-in and DVB-Sub font
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
    #   is transparent. Leaving this parameter blank is equivalent to
    #   setting it to 0 (transparent). All burn-in and DVB-Sub font settings
    #   must match.
    #   @return [Integer]
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
    #   A positive integer indicates the exact font size in points. Set to 0
    #   for automatic font size selection. All burn-in and DVB-Sub font
    #   settings must match.
    #   @return [Integer]
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
    # @!attribute [rw] teletext_spacing
    #   Only applies to jobs with input captions in Teletext or STL formats.
    #   Specify whether the spacing between letters in your captions is set
    #   by the captions grid or varies depending on letter width. Choose
    #   fixed grid to conform to the spacing specified in the captions file
    #   more accurately. Choose proportional to make the text easier to read
    #   if the captions are closed caption.
    #   @return [String]
    #
    # @!attribute [rw] x_position
    #   Specifies the horizontal position of the caption relative to the
    #   left side of the output in pixels. A value of 10 would result in the
    #   captions starting 10 pixels from the left of the output. If no
    #   explicit x\_position is provided, the horizontal caption position
    #   will be determined by the alignment parameter. This option is not
    #   valid for source captions that are STL, 608/embedded or teletext.
    #   These source settings are already pre-defined by the caption stream.
    #   All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] y_position
    #   Specifies the vertical position of the caption relative to the top
    #   of the output in pixels. A value of 10 would result in the captions
    #   starting 10 pixels from the top of the output. If no explicit
    #   y\_position is provided, the caption will be positioned towards the
    #   bottom of the output. This option is not valid for source captions
    #   that are STL, 608/embedded or teletext. These source settings are
    #   already pre-defined by the caption stream. All burn-in and DVB-Sub
    #   font settings must match.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/BurninDestinationSettings AWS API Documentation
    #
    class BurninDestinationSettings < Struct.new(
      :alignment,
      :background_color,
      :background_opacity,
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
      :teletext_spacing,
      :x_position,
      :y_position)
      include Aws::Structure
    end

    # Cancel a job by sending a request with the job ID
    #
    # @note When making an API call, you may pass CancelJobRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   The Job ID of the job to be cancelled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CancelJobRequest AWS API Documentation
    #
    class CancelJobRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # A cancel job request will receive a response with an empty body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CancelJobResponse AWS API Documentation
    #
    class CancelJobResponse < Aws::EmptyStructure; end

    # Description of Caption output
    #
    # @note When making an API call, you may pass CaptionDescription
    #   data as a hash:
    #
    #       {
    #         caption_selector_name: "__stringMin1",
    #         custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #         destination_settings: {
    #           burnin_destination_settings: {
    #             alignment: "CENTERED", # accepts CENTERED, LEFT
    #             background_color: "NONE", # accepts NONE, BLACK, WHITE
    #             background_opacity: 1,
    #             font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #             font_opacity: 1,
    #             font_resolution: 1,
    #             font_size: 1,
    #             outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #             outline_size: 1,
    #             shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #             shadow_opacity: 1,
    #             shadow_x_offset: 1,
    #             shadow_y_offset: 1,
    #             teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #             x_position: 1,
    #             y_position: 1,
    #           },
    #           destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #           dvb_sub_destination_settings: {
    #             alignment: "CENTERED", # accepts CENTERED, LEFT
    #             background_color: "NONE", # accepts NONE, BLACK, WHITE
    #             background_opacity: 1,
    #             font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #             font_opacity: 1,
    #             font_resolution: 1,
    #             font_size: 1,
    #             outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #             outline_size: 1,
    #             shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #             shadow_opacity: 1,
    #             shadow_x_offset: 1,
    #             shadow_y_offset: 1,
    #             teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #             x_position: 1,
    #             y_position: 1,
    #           },
    #           scc_destination_settings: {
    #             framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #           },
    #           teletext_destination_settings: {
    #             page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #           },
    #           ttml_destination_settings: {
    #             style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #         language_description: "__string",
    #       }
    #
    # @!attribute [rw] caption_selector_name
    #   Specifies which "Caption Selector":#inputs-caption\_selector to use from each input when generating captions. The name should be of the format "Caption Selector <N>", which denotes that the Nth Caption Selector will be used from each input. </N>
    #   @return [String]
    #
    # @!attribute [rw] custom_language_code
    #   Indicates the language of the caption output track, using the ISO
    #   639-2 or ISO 639-3 three-letter language code
    #   @return [String]
    #
    # @!attribute [rw] destination_settings
    #   Specific settings required by destination type. Note that
    #   burnin\_destination\_settings are not available if the source of the
    #   caption data is Embedded or Teletext.
    #   @return [Types::CaptionDestinationSettings]
    #
    # @!attribute [rw] language_code
    #   Indicates the language of the caption output track.
    #   @return [String]
    #
    # @!attribute [rw] language_description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CaptionDescription AWS API Documentation
    #
    class CaptionDescription < Struct.new(
      :caption_selector_name,
      :custom_language_code,
      :destination_settings,
      :language_code,
      :language_description)
      include Aws::Structure
    end

    # Caption Description for preset
    #
    # @note When making an API call, you may pass CaptionDescriptionPreset
    #   data as a hash:
    #
    #       {
    #         custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #         destination_settings: {
    #           burnin_destination_settings: {
    #             alignment: "CENTERED", # accepts CENTERED, LEFT
    #             background_color: "NONE", # accepts NONE, BLACK, WHITE
    #             background_opacity: 1,
    #             font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #             font_opacity: 1,
    #             font_resolution: 1,
    #             font_size: 1,
    #             outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #             outline_size: 1,
    #             shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #             shadow_opacity: 1,
    #             shadow_x_offset: 1,
    #             shadow_y_offset: 1,
    #             teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #             x_position: 1,
    #             y_position: 1,
    #           },
    #           destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #           dvb_sub_destination_settings: {
    #             alignment: "CENTERED", # accepts CENTERED, LEFT
    #             background_color: "NONE", # accepts NONE, BLACK, WHITE
    #             background_opacity: 1,
    #             font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #             font_opacity: 1,
    #             font_resolution: 1,
    #             font_size: 1,
    #             outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #             outline_size: 1,
    #             shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #             shadow_opacity: 1,
    #             shadow_x_offset: 1,
    #             shadow_y_offset: 1,
    #             teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #             x_position: 1,
    #             y_position: 1,
    #           },
    #           scc_destination_settings: {
    #             framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #           },
    #           teletext_destination_settings: {
    #             page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #           },
    #           ttml_destination_settings: {
    #             style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #         language_description: "__string",
    #       }
    #
    # @!attribute [rw] custom_language_code
    #   Indicates the language of the caption output track, using the ISO
    #   639-2 or ISO 639-3 three-letter language code
    #   @return [String]
    #
    # @!attribute [rw] destination_settings
    #   Specific settings required by destination type. Note that
    #   burnin\_destination\_settings are not available if the source of the
    #   caption data is Embedded or Teletext.
    #   @return [Types::CaptionDestinationSettings]
    #
    # @!attribute [rw] language_code
    #   Indicates the language of the caption output track.
    #   @return [String]
    #
    # @!attribute [rw] language_description
    #   Human readable information to indicate captions available for
    #   players (eg. English, or Spanish). Alphanumeric characters, spaces,
    #   and underscore are legal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CaptionDescriptionPreset AWS API Documentation
    #
    class CaptionDescriptionPreset < Struct.new(
      :custom_language_code,
      :destination_settings,
      :language_code,
      :language_description)
      include Aws::Structure
    end

    # Specific settings required by destination type. Note that
    # burnin\_destination\_settings are not available if the source of the
    # caption data is Embedded or Teletext.
    #
    # @note When making an API call, you may pass CaptionDestinationSettings
    #   data as a hash:
    #
    #       {
    #         burnin_destination_settings: {
    #           alignment: "CENTERED", # accepts CENTERED, LEFT
    #           background_color: "NONE", # accepts NONE, BLACK, WHITE
    #           background_opacity: 1,
    #           font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #           font_opacity: 1,
    #           font_resolution: 1,
    #           font_size: 1,
    #           outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #           outline_size: 1,
    #           shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #           shadow_opacity: 1,
    #           shadow_x_offset: 1,
    #           shadow_y_offset: 1,
    #           teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #           x_position: 1,
    #           y_position: 1,
    #         },
    #         destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #         dvb_sub_destination_settings: {
    #           alignment: "CENTERED", # accepts CENTERED, LEFT
    #           background_color: "NONE", # accepts NONE, BLACK, WHITE
    #           background_opacity: 1,
    #           font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #           font_opacity: 1,
    #           font_resolution: 1,
    #           font_size: 1,
    #           outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #           outline_size: 1,
    #           shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #           shadow_opacity: 1,
    #           shadow_x_offset: 1,
    #           shadow_y_offset: 1,
    #           teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #           x_position: 1,
    #           y_position: 1,
    #         },
    #         scc_destination_settings: {
    #           framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #         },
    #         teletext_destination_settings: {
    #           page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #         },
    #         ttml_destination_settings: {
    #           style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       }
    #
    # @!attribute [rw] burnin_destination_settings
    #   Burn-In Destination Settings.
    #   @return [Types::BurninDestinationSettings]
    #
    # @!attribute [rw] destination_type
    #   Type of Caption output, including Burn-In, Embedded, SCC, SRT, TTML,
    #   WebVTT, DVB-Sub, Teletext.
    #   @return [String]
    #
    # @!attribute [rw] dvb_sub_destination_settings
    #   DVB-Sub Destination Settings
    #   @return [Types::DvbSubDestinationSettings]
    #
    # @!attribute [rw] scc_destination_settings
    #   Settings for SCC caption output.
    #   @return [Types::SccDestinationSettings]
    #
    # @!attribute [rw] teletext_destination_settings
    #   Settings for Teletext caption output
    #   @return [Types::TeletextDestinationSettings]
    #
    # @!attribute [rw] ttml_destination_settings
    #   Settings specific to TTML caption outputs, including Pass style
    #   information (TtmlStylePassthrough).
    #   @return [Types::TtmlDestinationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CaptionDestinationSettings AWS API Documentation
    #
    class CaptionDestinationSettings < Struct.new(
      :burnin_destination_settings,
      :destination_type,
      :dvb_sub_destination_settings,
      :scc_destination_settings,
      :teletext_destination_settings,
      :ttml_destination_settings)
      include Aws::Structure
    end

    # Set up captions in your outputs by first selecting them from your
    # input here.
    #
    # @note When making an API call, you may pass CaptionSelector
    #   data as a hash:
    #
    #       {
    #         custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #         language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #         source_settings: {
    #           ancillary_source_settings: {
    #             source_ancillary_channel_number: 1,
    #           },
    #           dvb_sub_source_settings: {
    #             pid: 1,
    #           },
    #           embedded_source_settings: {
    #             convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #             source_608_channel_number: 1,
    #             source_608_track_number: 1,
    #           },
    #           file_source_settings: {
    #             convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #             source_file: "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI",
    #             time_delta: 1,
    #           },
    #           source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #           teletext_source_settings: {
    #             page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] custom_language_code
    #   The specific language to extract from source, using the ISO 639-2 or
    #   ISO 639-3 three-letter language code. If input is SCTE-27, complete
    #   this field and/or PID to select the caption language to extract. If
    #   input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this
    #   field and/or PID to select the caption language to extract. If input
    #   is DVB-Sub that is being passed through, omit this field (and PID
    #   field); there is no way to extract a specific language with
    #   pass-through captions.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The specific language to extract from source. If input is SCTE-27,
    #   complete this field and/or PID to select the caption language to
    #   extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT,
    #   complete this field and/or PID to select the caption language to
    #   extract. If input is DVB-Sub that is being passed through, omit this
    #   field (and PID field); there is no way to extract a specific
    #   language with pass-through captions.
    #   @return [String]
    #
    # @!attribute [rw] source_settings
    #   Source settings (SourceSettings) contains the group of settings for
    #   captions in the input.
    #   @return [Types::CaptionSourceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CaptionSelector AWS API Documentation
    #
    class CaptionSelector < Struct.new(
      :custom_language_code,
      :language_code,
      :source_settings)
      include Aws::Structure
    end

    # Source settings (SourceSettings) contains the group of settings for
    # captions in the input.
    #
    # @note When making an API call, you may pass CaptionSourceSettings
    #   data as a hash:
    #
    #       {
    #         ancillary_source_settings: {
    #           source_ancillary_channel_number: 1,
    #         },
    #         dvb_sub_source_settings: {
    #           pid: 1,
    #         },
    #         embedded_source_settings: {
    #           convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #           source_608_channel_number: 1,
    #           source_608_track_number: 1,
    #         },
    #         file_source_settings: {
    #           convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #           source_file: "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI",
    #           time_delta: 1,
    #         },
    #         source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #         teletext_source_settings: {
    #           page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #         },
    #       }
    #
    # @!attribute [rw] ancillary_source_settings
    #   Settings for ancillary captions source.
    #   @return [Types::AncillarySourceSettings]
    #
    # @!attribute [rw] dvb_sub_source_settings
    #   DVB Sub Source Settings
    #   @return [Types::DvbSubSourceSettings]
    #
    # @!attribute [rw] embedded_source_settings
    #   Settings for embedded captions Source
    #   @return [Types::EmbeddedSourceSettings]
    #
    # @!attribute [rw] file_source_settings
    #   Settings for File-based Captions in Source
    #   @return [Types::FileSourceSettings]
    #
    # @!attribute [rw] source_type
    #   Use Source (SourceType) to identify the format of your input
    #   captions. The service cannot auto-detect caption format.
    #   @return [String]
    #
    # @!attribute [rw] teletext_source_settings
    #   Settings specific to Teletext caption sources, including Page
    #   number.
    #   @return [Types::TeletextSourceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CaptionSourceSettings AWS API Documentation
    #
    class CaptionSourceSettings < Struct.new(
      :ancillary_source_settings,
      :dvb_sub_source_settings,
      :embedded_source_settings,
      :file_source_settings,
      :source_type,
      :teletext_source_settings)
      include Aws::Structure
    end

    # Channel mapping (ChannelMapping) contains the group of fields that
    # hold the remixing value for each channel. Units are in dB. Acceptable
    # values are within the range from -60 (mute) through 6. A setting of 0
    # passes the input channel unchanged to the output channel (no
    # attenuation or amplification).
    #
    # @note When making an API call, you may pass ChannelMapping
    #   data as a hash:
    #
    #       {
    #         output_channels: [
    #           {
    #             input_channels: [1],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] output_channels
    #   List of output channels
    #   @return [Array<Types::OutputChannelMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ChannelMapping AWS API Documentation
    #
    class ChannelMapping < Struct.new(
      :output_channels)
      include Aws::Structure
    end

    # Settings for CMAF encryption
    #
    # @note When making an API call, you may pass CmafEncryptionSettings
    #   data as a hash:
    #
    #       {
    #         constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #         encryption_method: "SAMPLE_AES", # accepts SAMPLE_AES
    #         initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #         static_key_provider: {
    #           key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #           key_format_versions: "__stringPatternDD",
    #           static_key_value: "__stringPatternAZaZ0932",
    #           url: "__string",
    #         },
    #         type: "STATIC_KEY", # accepts STATIC_KEY
    #       }
    #
    # @!attribute [rw] constant_initialization_vector
    #   This is a 128-bit, 16-byte hex value represented by a 32-character
    #   text string. If this parameter is not set then the Initialization
    #   Vector will follow the segment number by default.
    #   @return [String]
    #
    # @!attribute [rw] encryption_method
    #   Encrypts the segments with the given encryption scheme. Leave blank
    #   to disable. Selecting 'Disabled' in the web interface also
    #   disables encryption.
    #   @return [String]
    #
    # @!attribute [rw] initialization_vector_in_manifest
    #   The Initialization Vector is a 128-bit number used in conjunction
    #   with the key for encrypting blocks. If set to INCLUDE,
    #   Initialization Vector is listed in the manifest. Otherwise
    #   Initialization Vector is not in the manifest.
    #   @return [String]
    #
    # @!attribute [rw] static_key_provider
    #   Settings for use with a SPEKE key provider.
    #   @return [Types::StaticKeyProvider]
    #
    # @!attribute [rw] type
    #   Indicates which type of key provider is used for encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CmafEncryptionSettings AWS API Documentation
    #
    class CmafEncryptionSettings < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :initialization_vector_in_manifest,
      :static_key_provider,
      :type)
      include Aws::Structure
    end

    # Required when you set (Type) under
    # (OutputGroups)>(OutputGroupSettings) to CMAF\_GROUP\_SETTINGS. Each
    # output in a CMAF Output Group may only contain a single video, audio,
    # or caption output.
    #
    # @note When making an API call, you may pass CmafGroupSettings
    #   data as a hash:
    #
    #       {
    #         base_url: "__string",
    #         client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #         codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #         destination: "__stringPatternS3",
    #         encryption: {
    #           constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #           encryption_method: "SAMPLE_AES", # accepts SAMPLE_AES
    #           initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           static_key_provider: {
    #             key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #             key_format_versions: "__stringPatternDD",
    #             static_key_value: "__stringPatternAZaZ0932",
    #             url: "__string",
    #           },
    #           type: "STATIC_KEY", # accepts STATIC_KEY
    #         },
    #         fragment_length: 1,
    #         manifest_compression: "GZIP", # accepts GZIP, NONE
    #         manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #         min_buffer_time: 1,
    #         min_final_segment_length: 1.0,
    #         segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #         segment_length: 1,
    #         stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #         write_dash_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #         write_hls_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #       }
    #
    # @!attribute [rw] base_url
    #   A partial URI prefix that will be put in the manifest file at the
    #   top level BaseURL element. Can be used if streams are delivered from
    #   a different URL than the manifest file.
    #   @return [String]
    #
    # @!attribute [rw] client_cache
    #   When set to ENABLED, sets #EXT-X-ALLOW-CACHE:no tag, which prevents
    #   client from saving media segments for later replay.
    #   @return [String]
    #
    # @!attribute [rw] codec_specification
    #   Specification to use (RFC-6381 or the default RFC-4281) during m3u8
    #   playlist generation.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   Use Destination (Destination) to specify the S3 output location and
    #   the output filename base. Destination accepts format identifiers. If
    #   you do not specify the base filename in the URI, the service will
    #   use the filename of the input file. If your job has multiple inputs,
    #   the service uses the filename of the first input file.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   DRM settings.
    #   @return [Types::CmafEncryptionSettings]
    #
    # @!attribute [rw] fragment_length
    #   Length of fragments to generate (in seconds). Fragment length must
    #   be compatible with GOP size and Framerate. Note that fragments will
    #   end on the next keyframe after this number of seconds, so actual
    #   fragment length may be longer. When Emit Single File is checked, the
    #   fragmentation is internal to a single output file and it does not
    #   cause the creation of many output files as in other output types.
    #   @return [Integer]
    #
    # @!attribute [rw] manifest_compression
    #   When set to GZIP, compresses HLS playlist.
    #   @return [String]
    #
    # @!attribute [rw] manifest_duration_format
    #   Indicates whether the output manifest should use floating point
    #   values for segment duration.
    #   @return [String]
    #
    # @!attribute [rw] min_buffer_time
    #   Minimum time of initially buffered media that is needed to ensure
    #   smooth playout.
    #   @return [Integer]
    #
    # @!attribute [rw] min_final_segment_length
    #   Keep this setting at the default value of 0, unless you are
    #   troubleshooting a problem with how devices play back the end of your
    #   video asset. If you know that player devices are hanging on the
    #   final segment of your video because the length of your final segment
    #   is too short, use this setting to specify a minimum final segment
    #   length, in seconds. Choose a value that is greater than or equal to
    #   1 and less than your segment length. When you specify a value for
    #   this setting, the encoder will combine any final segment that is
    #   shorter than the length that you specify with the previous segment.
    #   For example, your segment length is 3 seconds and your final segment
    #   is .5 seconds without a minimum final segment length; when you set
    #   the minimum final segment length to 1, your final segment is 3.5
    #   seconds.
    #   @return [Float]
    #
    # @!attribute [rw] segment_control
    #   When set to SINGLE\_FILE, a single output file is generated, which
    #   is internally segmented using the Fragment Length and Segment
    #   Length. When set to SEGMENTED\_FILES, separate segment files will be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] segment_length
    #   Use this setting to specify the length, in seconds, of each
    #   individual CMAF segment. This value applies to the whole package;
    #   that is, to every output in the output group. Note that segments end
    #   on the first keyframe after this number of seconds, so the actual
    #   segment length might be slightly longer. If you set Segment control
    #   (CmafSegmentControl) to single file, the service puts the content of
    #   each output in a single file that has metadata that marks these
    #   segments. If you set it to segmented files, the service creates
    #   multiple files for each output, each with the content of one
    #   segment.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_inf_resolution
    #   Include or exclude RESOLUTION attribute for video in
    #   EXT-X-STREAM-INF tag of variant manifest.
    #   @return [String]
    #
    # @!attribute [rw] write_dash_manifest
    #   When set to ENABLED, a DASH MPD manifest will be generated for this
    #   output.
    #   @return [String]
    #
    # @!attribute [rw] write_hls_manifest
    #   When set to ENABLED, an Apple HLS manifest will be generated for
    #   this output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CmafGroupSettings AWS API Documentation
    #
    class CmafGroupSettings < Struct.new(
      :base_url,
      :client_cache,
      :codec_specification,
      :destination,
      :encryption,
      :fragment_length,
      :manifest_compression,
      :manifest_duration_format,
      :min_buffer_time,
      :min_final_segment_length,
      :segment_control,
      :segment_length,
      :stream_inf_resolution,
      :write_dash_manifest,
      :write_hls_manifest)
      include Aws::Structure
    end

    # Settings for color correction.
    #
    # @note When making an API call, you may pass ColorCorrector
    #   data as a hash:
    #
    #       {
    #         brightness: 1,
    #         color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #         contrast: 1,
    #         hdr_10_metadata: {
    #           blue_primary_x: 1,
    #           blue_primary_y: 1,
    #           green_primary_x: 1,
    #           green_primary_y: 1,
    #           max_content_light_level: 1,
    #           max_frame_average_light_level: 1,
    #           max_luminance: 1,
    #           min_luminance: 1,
    #           red_primary_x: 1,
    #           red_primary_y: 1,
    #           white_point_x: 1,
    #           white_point_y: 1,
    #         },
    #         hue: 1,
    #         saturation: 1,
    #       }
    #
    # @!attribute [rw] brightness
    #   Brightness level.
    #   @return [Integer]
    #
    # @!attribute [rw] color_space_conversion
    #   Determines if colorspace conversion will be performed. If set to
    #   \_None\_, no conversion will be performed. If \_Force 601\_ or
    #   \_Force 709\_ are selected, conversion will be performed for inputs
    #   with differing colorspaces. An input's colorspace can be specified
    #   explicitly in the "Video Selector":#inputs-video\_selector if
    #   necessary.
    #   @return [String]
    #
    # @!attribute [rw] contrast
    #   Contrast level.
    #   @return [Integer]
    #
    # @!attribute [rw] hdr_10_metadata
    #   Use the HDR master display (Hdr10Metadata) settings to correct HDR
    #   metadata or to provide missing metadata. These values vary depending
    #   on the input video and must be provided by a color grader. Range is
    #   0 to 50,000, each increment represents 0.00002 in CIE1931 color
    #   coordinate. Note that these settings are not color correction. Note
    #   that if you are creating HDR outputs inside of an HLS CMAF package,
    #   to comply with the Apple specification, you must use the HVC1 for
    #   H.265 setting.
    #   @return [Types::Hdr10Metadata]
    #
    # @!attribute [rw] hue
    #   Hue in degrees.
    #   @return [Integer]
    #
    # @!attribute [rw] saturation
    #   Saturation level.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ColorCorrector AWS API Documentation
    #
    class ColorCorrector < Struct.new(
      :brightness,
      :color_space_conversion,
      :contrast,
      :hdr_10_metadata,
      :hue,
      :saturation)
      include Aws::Structure
    end

    # Container specific settings.
    #
    # @note When making an API call, you may pass ContainerSettings
    #   data as a hash:
    #
    #       {
    #         container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
    #         f4v_settings: {
    #           moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #         },
    #         m2ts_settings: {
    #           audio_buffer_model: "DVB", # accepts DVB, ATSC
    #           audio_frames_per_pes: 1,
    #           audio_pids: [1],
    #           bitrate: 1,
    #           buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #           dvb_nit_settings: {
    #             network_id: 1,
    #             network_name: "__stringMin1Max256",
    #             nit_interval: 1,
    #           },
    #           dvb_sdt_settings: {
    #             output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #             sdt_interval: 1,
    #             service_name: "__stringMin1Max256",
    #             service_provider_name: "__stringMin1Max256",
    #           },
    #           dvb_sub_pids: [1],
    #           dvb_tdt_settings: {
    #             tdt_interval: 1,
    #           },
    #           dvb_teletext_pid: 1,
    #           ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #           ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #           es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           fragment_time: 1.0,
    #           max_pcr_interval: 1,
    #           min_ebp_interval: 1,
    #           nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #           null_packet_bitrate: 1.0,
    #           pat_interval: 1,
    #           pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #           pcr_pid: 1,
    #           pmt_interval: 1,
    #           pmt_pid: 1,
    #           private_metadata_pid: 1,
    #           program_number: 1,
    #           rate_mode: "VBR", # accepts VBR, CBR
    #           scte_35_pid: 1,
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #           segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #           segmentation_time: 1.0,
    #           timed_metadata_pid: 1,
    #           transport_stream_id: 1,
    #           video_pid: 1,
    #         },
    #         m3u_8_settings: {
    #           audio_frames_per_pes: 1,
    #           audio_pids: [1],
    #           nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #           pat_interval: 1,
    #           pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #           pcr_pid: 1,
    #           pmt_interval: 1,
    #           pmt_pid: 1,
    #           private_metadata_pid: 1,
    #           program_number: 1,
    #           scte_35_pid: 1,
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata_pid: 1,
    #           transport_stream_id: 1,
    #           video_pid: 1,
    #         },
    #         mov_settings: {
    #           clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #           padding_control: "OMNEON", # accepts OMNEON, NONE
    #           reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #         },
    #         mp_4_settings: {
    #           cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #           mp_4_major_brand: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] container
    #   Container for this output. Some containers require a container
    #   settings object. If not specified, the default object will be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] f4v_settings
    #   Settings for F4v container
    #   @return [Types::F4vSettings]
    #
    # @!attribute [rw] m2ts_settings
    #   Settings for M2TS Container.
    #   @return [Types::M2tsSettings]
    #
    # @!attribute [rw] m3u_8_settings
    #   Settings for TS segments in HLS
    #   @return [Types::M3u8Settings]
    #
    # @!attribute [rw] mov_settings
    #   Settings for MOV Container.
    #   @return [Types::MovSettings]
    #
    # @!attribute [rw] mp_4_settings
    #   Settings for MP4 Container
    #   @return [Types::Mp4Settings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ContainerSettings AWS API Documentation
    #
    class ContainerSettings < Struct.new(
      :container,
      :f4v_settings,
      :m2ts_settings,
      :m3u_8_settings,
      :mov_settings,
      :mp_4_settings)
      include Aws::Structure
    end

    # Send your create job request with your job settings and IAM role.
    # Optionally, include user metadata and the ARN for the queue.
    #
    # @note When making an API call, you may pass CreateJobRequest
    #   data as a hash:
    #
    #       {
    #         billing_tags_source: "QUEUE", # accepts QUEUE, PRESET, JOB_TEMPLATE
    #         client_request_token: "__string",
    #         job_template: "__string",
    #         queue: "__string",
    #         role: "__string", # required
    #         settings: { # required
    #           ad_avail_offset: 1,
    #           avail_blanking: {
    #             avail_blanking_image: "__stringMin14PatternS3BmpBMPPngPNG",
    #           },
    #           inputs: [
    #             {
    #               audio_selector_groups: {
    #                 "__string" => {
    #                   audio_selector_names: ["__stringMin1"],
    #                 },
    #               },
    #               audio_selectors: {
    #                 "__string" => {
    #                   custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                   default_selection: "DEFAULT", # accepts DEFAULT, NOT_DEFAULT
    #                   external_audio_file_input: "__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE",
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   offset: 1,
    #                   pids: [1],
    #                   program_selection: 1,
    #                   remix_settings: {
    #                     channel_mapping: {
    #                       output_channels: [
    #                         {
    #                           input_channels: [1],
    #                         },
    #                       ],
    #                     },
    #                     channels_in: 1,
    #                     channels_out: 1,
    #                   },
    #                   selector_type: "PID", # accepts PID, TRACK, LANGUAGE_CODE
    #                   tracks: [1],
    #                 },
    #               },
    #               caption_selectors: {
    #                 "__string" => {
    #                   custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   source_settings: {
    #                     ancillary_source_settings: {
    #                       source_ancillary_channel_number: 1,
    #                     },
    #                     dvb_sub_source_settings: {
    #                       pid: 1,
    #                     },
    #                     embedded_source_settings: {
    #                       convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                       source_608_channel_number: 1,
    #                       source_608_track_number: 1,
    #                     },
    #                     file_source_settings: {
    #                       convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                       source_file: "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI",
    #                       time_delta: 1,
    #                     },
    #                     source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #                     teletext_source_settings: {
    #                       page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                     },
    #                   },
    #                 },
    #               },
    #               deblock_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               denoise_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               file_input: "__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MM",
    #               filter_enable: "AUTO", # accepts AUTO, DISABLE, FORCE
    #               filter_strength: 1,
    #               input_clippings: [
    #                 {
    #                   end_timecode: "__stringPattern010920405090509092",
    #                   start_timecode: "__stringPattern010920405090509092",
    #                 },
    #               ],
    #               program_number: 1,
    #               psi_control: "IGNORE_PSI", # accepts IGNORE_PSI, USE_PSI
    #               timecode_source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #               video_selector: {
    #                 color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709, HDR10, HLG_2020
    #                 color_space_usage: "FORCE", # accepts FORCE, FALLBACK
    #                 hdr_10_metadata: {
    #                   blue_primary_x: 1,
    #                   blue_primary_y: 1,
    #                   green_primary_x: 1,
    #                   green_primary_y: 1,
    #                   max_content_light_level: 1,
    #                   max_frame_average_light_level: 1,
    #                   max_luminance: 1,
    #                   min_luminance: 1,
    #                   red_primary_x: 1,
    #                   red_primary_y: 1,
    #                   white_point_x: 1,
    #                   white_point_y: 1,
    #                 },
    #                 pid: 1,
    #                 program_number: 1,
    #               },
    #             },
    #           ],
    #           nielsen_configuration: {
    #             breakout_code: 1,
    #             distributor_id: "__string",
    #           },
    #           output_groups: [
    #             {
    #               custom_name: "__string",
    #               name: "__string",
    #               output_group_settings: {
    #                 cmaf_group_settings: {
    #                   base_url: "__string",
    #                   client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                   codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #                   destination: "__stringPatternS3",
    #                   encryption: {
    #                     constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #                     encryption_method: "SAMPLE_AES", # accepts SAMPLE_AES
    #                     initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     static_key_provider: {
    #                       key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                       key_format_versions: "__stringPatternDD",
    #                       static_key_value: "__stringPatternAZaZ0932",
    #                       url: "__string",
    #                     },
    #                     type: "STATIC_KEY", # accepts STATIC_KEY
    #                   },
    #                   fragment_length: 1,
    #                   manifest_compression: "GZIP", # accepts GZIP, NONE
    #                   manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                   min_buffer_time: 1,
    #                   min_final_segment_length: 1.0,
    #                   segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                   segment_length: 1,
    #                   stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   write_dash_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #                   write_hls_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #                 },
    #                 dash_iso_group_settings: {
    #                   base_url: "__string",
    #                   destination: "__stringPatternS3",
    #                   encryption: {
    #                     speke_key_provider: {
    #                       resource_id: "__string",
    #                       system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                       url: "__stringPatternHttps",
    #                     },
    #                   },
    #                   fragment_length: 1,
    #                   hbbtv_compliance: "HBBTV_1_5", # accepts HBBTV_1_5, NONE
    #                   min_buffer_time: 1,
    #                   segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                   segment_length: 1,
    #                   write_segment_timeline_in_representation: "ENABLED", # accepts ENABLED, DISABLED
    #                 },
    #                 file_group_settings: {
    #                   destination: "__stringPatternS3",
    #                 },
    #                 hls_group_settings: {
    #                   ad_markers: ["ELEMENTAL"], # accepts ELEMENTAL, ELEMENTAL_SCTE35
    #                   base_url: "__string",
    #                   caption_language_mappings: [
    #                     {
    #                       caption_channel: 1,
    #                       custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                       language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                       language_description: "__string",
    #                     },
    #                   ],
    #                   caption_language_setting: "INSERT", # accepts INSERT, OMIT, NONE
    #                   client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                   codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #                   destination: "__stringPatternS3",
    #                   directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #                   encryption: {
    #                     constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #                     encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #                     initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     speke_key_provider: {
    #                       resource_id: "__string",
    #                       system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                       url: "__stringPatternHttps",
    #                     },
    #                     static_key_provider: {
    #                       key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                       key_format_versions: "__stringPatternDD",
    #                       static_key_value: "__stringPatternAZaZ0932",
    #                       url: "__string",
    #                     },
    #                     type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #                   },
    #                   manifest_compression: "GZIP", # accepts GZIP, NONE
    #                   manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                   min_final_segment_length: 1.0,
    #                   min_segment_length: 1,
    #                   output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #                   program_date_time: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   program_date_time_period: 1,
    #                   segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                   segment_length: 1,
    #                   segments_per_subdirectory: 1,
    #                   stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #                   timed_metadata_id_3_period: 1,
    #                   timestamp_delta_milliseconds: 1,
    #                 },
    #                 ms_smooth_group_settings: {
    #                   audio_deduplication: "COMBINE_DUPLICATE_STREAMS", # accepts COMBINE_DUPLICATE_STREAMS, NONE
    #                   destination: "__stringPatternS3",
    #                   encryption: {
    #                     speke_key_provider: {
    #                       resource_id: "__string",
    #                       system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                       url: "__stringPatternHttps",
    #                     },
    #                   },
    #                   fragment_length: 1,
    #                   manifest_encoding: "UTF8", # accepts UTF8, UTF16
    #                 },
    #                 type: "HLS_GROUP_SETTINGS", # accepts HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS, CMAF_GROUP_SETTINGS
    #               },
    #               outputs: [
    #                 {
    #                   audio_descriptions: [
    #                     {
    #                       audio_normalization_settings: {
    #                         algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #                         algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #                         correction_gate_level: 1,
    #                         loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #                         peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #                         target_lkfs: 1.0,
    #                       },
    #                       audio_source_name: "__string",
    #                       audio_type: 1,
    #                       audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       codec_settings: {
    #                         aac_settings: {
    #                           audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                           bitrate: 1,
    #                           codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                           coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                           rate_control_mode: "CBR", # accepts CBR, VBR
    #                           raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                           sample_rate: 1,
    #                           specification: "MPEG2", # accepts MPEG2, MPEG4
    #                           vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #                         },
    #                         ac_3_settings: {
    #                           bitrate: 1,
    #                           bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                           dialnorm: 1,
    #                           dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                           lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                           metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                           sample_rate: 1,
    #                         },
    #                         aiff_settings: {
    #                           bit_depth: 1,
    #                           channels: 1,
    #                           sample_rate: 1,
    #                         },
    #                         codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #                         eac_3_settings: {
    #                           attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                           bitrate: 1,
    #                           bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                           dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                           dialnorm: 1,
    #                           dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                           dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                           lfe_control: "LFE", # accepts LFE, NO_LFE
    #                           lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                           lo_ro_center_mix_level: 1.0,
    #                           lo_ro_surround_mix_level: 1.0,
    #                           lt_rt_center_mix_level: 1.0,
    #                           lt_rt_surround_mix_level: 1.0,
    #                           metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                           passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                           phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                           sample_rate: 1,
    #                           stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                           surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                           surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                         },
    #                         mp_2_settings: {
    #                           bitrate: 1,
    #                           channels: 1,
    #                           sample_rate: 1,
    #                         },
    #                         wav_settings: {
    #                           bit_depth: 1,
    #                           channels: 1,
    #                           format: "RIFF", # accepts RIFF, RF64
    #                           sample_rate: 1,
    #                         },
    #                       },
    #                       custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                       language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                       language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       remix_settings: {
    #                         channel_mapping: {
    #                           output_channels: [
    #                             {
    #                               input_channels: [1],
    #                             },
    #                           ],
    #                         },
    #                         channels_in: 1,
    #                         channels_out: 1,
    #                       },
    #                       stream_name: "__stringPatternWS",
    #                     },
    #                   ],
    #                   caption_descriptions: [
    #                     {
    #                       caption_selector_name: "__stringMin1",
    #                       custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                       destination_settings: {
    #                         burnin_destination_settings: {
    #                           alignment: "CENTERED", # accepts CENTERED, LEFT
    #                           background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           background_opacity: 1,
    #                           font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                           font_opacity: 1,
    #                           font_resolution: 1,
    #                           font_size: 1,
    #                           outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                           outline_size: 1,
    #                           shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           shadow_opacity: 1,
    #                           shadow_x_offset: 1,
    #                           shadow_y_offset: 1,
    #                           teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                           x_position: 1,
    #                           y_position: 1,
    #                         },
    #                         destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #                         dvb_sub_destination_settings: {
    #                           alignment: "CENTERED", # accepts CENTERED, LEFT
    #                           background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           background_opacity: 1,
    #                           font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                           font_opacity: 1,
    #                           font_resolution: 1,
    #                           font_size: 1,
    #                           outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                           outline_size: 1,
    #                           shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           shadow_opacity: 1,
    #                           shadow_x_offset: 1,
    #                           shadow_y_offset: 1,
    #                           teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                           x_position: 1,
    #                           y_position: 1,
    #                         },
    #                         scc_destination_settings: {
    #                           framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #                         },
    #                         teletext_destination_settings: {
    #                           page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                         },
    #                         ttml_destination_settings: {
    #                           style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #                         },
    #                       },
    #                       language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                       language_description: "__string",
    #                     },
    #                   ],
    #                   container_settings: {
    #                     container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
    #                     f4v_settings: {
    #                       moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                     },
    #                     m2ts_settings: {
    #                       audio_buffer_model: "DVB", # accepts DVB, ATSC
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: [1],
    #                       bitrate: 1,
    #                       buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                       dvb_nit_settings: {
    #                         network_id: 1,
    #                         network_name: "__stringMin1Max256",
    #                         nit_interval: 1,
    #                       },
    #                       dvb_sdt_settings: {
    #                         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                         sdt_interval: 1,
    #                         service_name: "__stringMin1Max256",
    #                         service_provider_name: "__stringMin1Max256",
    #                       },
    #                       dvb_sub_pids: [1],
    #                       dvb_tdt_settings: {
    #                         tdt_interval: 1,
    #                       },
    #                       dvb_teletext_pid: 1,
    #                       ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                       ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                       es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       fragment_time: 1.0,
    #                       max_pcr_interval: 1,
    #                       min_ebp_interval: 1,
    #                       nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                       null_packet_bitrate: 1.0,
    #                       pat_interval: 1,
    #                       pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                       pcr_pid: 1,
    #                       pmt_interval: 1,
    #                       pmt_pid: 1,
    #                       private_metadata_pid: 1,
    #                       program_number: 1,
    #                       rate_mode: "VBR", # accepts VBR, CBR
    #                       scte_35_pid: 1,
    #                       scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                       segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #                       segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                       segmentation_time: 1.0,
    #                       timed_metadata_pid: 1,
    #                       transport_stream_id: 1,
    #                       video_pid: 1,
    #                     },
    #                     m3u_8_settings: {
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: [1],
    #                       nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                       pat_interval: 1,
    #                       pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                       pcr_pid: 1,
    #                       pmt_interval: 1,
    #                       pmt_pid: 1,
    #                       private_metadata_pid: 1,
    #                       program_number: 1,
    #                       scte_35_pid: 1,
    #                       scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                       timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                       timed_metadata_pid: 1,
    #                       transport_stream_id: 1,
    #                       video_pid: 1,
    #                     },
    #                     mov_settings: {
    #                       clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #                       padding_control: "OMNEON", # accepts OMNEON, NONE
    #                       reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #                     },
    #                     mp_4_settings: {
    #                       cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                       mp_4_major_brand: "__string",
    #                     },
    #                   },
    #                   extension: "__string",
    #                   name_modifier: "__stringMin1",
    #                   output_settings: {
    #                     hls_settings: {
    #                       audio_group_id: "__string",
    #                       audio_rendition_sets: "__string",
    #                       audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                       i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       segment_modifier: "__string",
    #                     },
    #                   },
    #                   preset: "__stringMin0",
    #                   video_description: {
    #                     afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #                     anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #                     codec_settings: {
    #                       codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #                       frame_capture_settings: {
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         max_captures: 1,
    #                         quality: 1,
    #                       },
    #                       h264_settings: {
    #                         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                         bitrate: 1,
    #                         codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #                         codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                         entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                         field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #                         flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                         gop_closed_cadence: 1,
    #                         gop_size: 1.0,
    #                         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                         hrd_buffer_initial_fill_percentage: 1,
    #                         hrd_buffer_size: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         max_bitrate: 1,
    #                         min_i_interval: 1,
    #                         number_b_frames_between_reference_frames: 1,
    #                         number_reference_frames: 1,
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                         qvbr_settings: {
    #                           max_average_bitrate: 1,
    #                           qvbr_quality_level: 1,
    #                         },
    #                         rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                         repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #                         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                         slices: 1,
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         softness: 1,
    #                         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                         telecine: "NONE", # accepts NONE, SOFT, HARD
    #                         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                       },
    #                       h265_settings: {
    #                         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                         alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #                         bitrate: 1,
    #                         codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #                         codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #                         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                         flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                         gop_closed_cadence: 1,
    #                         gop_size: 1.0,
    #                         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                         hrd_buffer_initial_fill_percentage: 1,
    #                         hrd_buffer_size: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         max_bitrate: 1,
    #                         min_i_interval: 1,
    #                         number_b_frames_between_reference_frames: 1,
    #                         number_reference_frames: 1,
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                         qvbr_settings: {
    #                           max_average_bitrate: 1,
    #                           qvbr_quality_level: 1,
    #                         },
    #                         rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                         sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #                         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                         slices: 1,
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         telecine: "NONE", # accepts NONE, SOFT, HARD
    #                         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #                         tiles: "DISABLED", # accepts DISABLED, ENABLED
    #                         unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                         write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #                       },
    #                       mpeg_2_settings: {
    #                         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #                         bitrate: 1,
    #                         codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #                         codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #                         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         gop_closed_cadence: 1,
    #                         gop_size: 1.0,
    #                         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                         hrd_buffer_initial_fill_percentage: 1,
    #                         hrd_buffer_size: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #                         max_bitrate: 1,
    #                         min_i_interval: 1,
    #                         number_b_frames_between_reference_frames: 1,
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #                         rate_control_mode: "VBR", # accepts VBR, CBR
    #                         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         softness: 1,
    #                         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         syntax: "DEFAULT", # accepts DEFAULT, D_10
    #                         telecine: "NONE", # accepts NONE, SOFT, HARD
    #                         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       },
    #                       prores_settings: {
    #                         codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         telecine: "NONE", # accepts NONE, HARD
    #                       },
    #                     },
    #                     color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                     crop: {
    #                       height: 1,
    #                       width: 1,
    #                       x: 1,
    #                       y: 1,
    #                     },
    #                     drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                     fixed_afd: 1,
    #                     height: 1,
    #                     position: {
    #                       height: 1,
    #                       width: 1,
    #                       x: 1,
    #                       y: 1,
    #                     },
    #                     respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #                     scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #                     sharpness: 1,
    #                     timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                     video_preprocessors: {
    #                       color_corrector: {
    #                         brightness: 1,
    #                         color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #                         contrast: 1,
    #                         hdr_10_metadata: {
    #                           blue_primary_x: 1,
    #                           blue_primary_y: 1,
    #                           green_primary_x: 1,
    #                           green_primary_y: 1,
    #                           max_content_light_level: 1,
    #                           max_frame_average_light_level: 1,
    #                           max_luminance: 1,
    #                           min_luminance: 1,
    #                           red_primary_x: 1,
    #                           red_primary_y: 1,
    #                           white_point_x: 1,
    #                           white_point_y: 1,
    #                         },
    #                         hue: 1,
    #                         saturation: 1,
    #                       },
    #                       deinterlacer: {
    #                         algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #                         control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #                         mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #                       },
    #                       image_inserter: {
    #                         insertable_images: [
    #                           {
    #                             duration: 1,
    #                             fade_in: 1,
    #                             fade_out: 1,
    #                             height: 1,
    #                             image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #                             image_x: 1,
    #                             image_y: 1,
    #                             layer: 1,
    #                             opacity: 1,
    #                             start_time: "__stringPattern01D20305D205D",
    #                             width: 1,
    #                           },
    #                         ],
    #                       },
    #                       noise_reducer: {
    #                         filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #                         filter_settings: {
    #                           strength: 1,
    #                         },
    #                         spatial_filter_settings: {
    #                           post_filter_sharpen_strength: 1,
    #                           speed: 1,
    #                           strength: 1,
    #                         },
    #                       },
    #                       timecode_burnin: {
    #                         font_size: 1,
    #                         position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #                         prefix: "__stringPattern",
    #                       },
    #                     },
    #                     width: 1,
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           timecode_config: {
    #             anchor: "__stringPattern010920405090509092",
    #             source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #             start: "__stringPattern010920405090509092",
    #             timestamp_offset: "__stringPattern0940191020191209301",
    #           },
    #           timed_metadata_insertion: {
    #             id_3_insertions: [
    #               {
    #                 id_3: "__stringPatternAZaZ0902",
    #                 timecode: "__stringPattern010920405090509092",
    #               },
    #             ],
    #           },
    #         },
    #         user_metadata: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] billing_tags_source
    #   Optional. Choose a tag type that AWS Billing and Cost Management
    #   will use to sort your AWS Elemental MediaConvert costs on any
    #   billing report that you set up. Any transcoding outputs that don't
    #   have an associated tag will appear in your billing report unsorted.
    #   If you don't choose a valid value for this field, your job outputs
    #   will appear on the billing report unsorted.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Idempotency token for CreateJob operation.**A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] job_template
    #   When you create a job, you can either specify a job template or
    #   specify the transcoding settings individually
    #   @return [String]
    #
    # @!attribute [rw] queue
    #   Optional. When you create a job, you can specify a queue to send it
    #   to. If you don't specify, the job will go to the default queue. For
    #   more about queues, see the User Guide topic at
    #   http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   Required. The IAM role you use for creating this job. For details
    #   about permissions, see the User Guide topic at the User Guide at
    #   http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   JobSettings contains all the transcode settings for a job.
    #   @return [Types::JobSettings]
    #
    # @!attribute [rw] user_metadata
    #   User-defined metadata that you want to associate with an
    #   MediaConvert job. You specify metadata in key/value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateJobRequest AWS API Documentation
    #
    class CreateJobRequest < Struct.new(
      :billing_tags_source,
      :client_request_token,
      :job_template,
      :queue,
      :role,
      :settings,
      :user_metadata)
      include Aws::Structure
    end

    # Successful create job requests will return the job JSON.
    #
    # @!attribute [rw] job
    #   Each job converts an input file into an output file or files. For
    #   more information, see the User Guide at
    #   http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateJobResponse AWS API Documentation
    #
    class CreateJobResponse < Struct.new(
      :job)
      include Aws::Structure
    end

    # Send your create job template request with the name of the template
    # and the JSON for the template. The template JSON should include
    # everything in a valid job, except for input location and filename, IAM
    # role, and user metadata.
    #
    # @note When making an API call, you may pass CreateJobTemplateRequest
    #   data as a hash:
    #
    #       {
    #         category: "__string",
    #         description: "__string",
    #         name: "__string", # required
    #         queue: "__string",
    #         settings: { # required
    #           ad_avail_offset: 1,
    #           avail_blanking: {
    #             avail_blanking_image: "__stringMin14PatternS3BmpBMPPngPNG",
    #           },
    #           inputs: [
    #             {
    #               audio_selector_groups: {
    #                 "__string" => {
    #                   audio_selector_names: ["__stringMin1"],
    #                 },
    #               },
    #               audio_selectors: {
    #                 "__string" => {
    #                   custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                   default_selection: "DEFAULT", # accepts DEFAULT, NOT_DEFAULT
    #                   external_audio_file_input: "__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE",
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   offset: 1,
    #                   pids: [1],
    #                   program_selection: 1,
    #                   remix_settings: {
    #                     channel_mapping: {
    #                       output_channels: [
    #                         {
    #                           input_channels: [1],
    #                         },
    #                       ],
    #                     },
    #                     channels_in: 1,
    #                     channels_out: 1,
    #                   },
    #                   selector_type: "PID", # accepts PID, TRACK, LANGUAGE_CODE
    #                   tracks: [1],
    #                 },
    #               },
    #               caption_selectors: {
    #                 "__string" => {
    #                   custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   source_settings: {
    #                     ancillary_source_settings: {
    #                       source_ancillary_channel_number: 1,
    #                     },
    #                     dvb_sub_source_settings: {
    #                       pid: 1,
    #                     },
    #                     embedded_source_settings: {
    #                       convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                       source_608_channel_number: 1,
    #                       source_608_track_number: 1,
    #                     },
    #                     file_source_settings: {
    #                       convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                       source_file: "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI",
    #                       time_delta: 1,
    #                     },
    #                     source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #                     teletext_source_settings: {
    #                       page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                     },
    #                   },
    #                 },
    #               },
    #               deblock_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               denoise_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               filter_enable: "AUTO", # accepts AUTO, DISABLE, FORCE
    #               filter_strength: 1,
    #               input_clippings: [
    #                 {
    #                   end_timecode: "__stringPattern010920405090509092",
    #                   start_timecode: "__stringPattern010920405090509092",
    #                 },
    #               ],
    #               program_number: 1,
    #               psi_control: "IGNORE_PSI", # accepts IGNORE_PSI, USE_PSI
    #               timecode_source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #               video_selector: {
    #                 color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709, HDR10, HLG_2020
    #                 color_space_usage: "FORCE", # accepts FORCE, FALLBACK
    #                 hdr_10_metadata: {
    #                   blue_primary_x: 1,
    #                   blue_primary_y: 1,
    #                   green_primary_x: 1,
    #                   green_primary_y: 1,
    #                   max_content_light_level: 1,
    #                   max_frame_average_light_level: 1,
    #                   max_luminance: 1,
    #                   min_luminance: 1,
    #                   red_primary_x: 1,
    #                   red_primary_y: 1,
    #                   white_point_x: 1,
    #                   white_point_y: 1,
    #                 },
    #                 pid: 1,
    #                 program_number: 1,
    #               },
    #             },
    #           ],
    #           nielsen_configuration: {
    #             breakout_code: 1,
    #             distributor_id: "__string",
    #           },
    #           output_groups: [
    #             {
    #               custom_name: "__string",
    #               name: "__string",
    #               output_group_settings: {
    #                 cmaf_group_settings: {
    #                   base_url: "__string",
    #                   client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                   codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #                   destination: "__stringPatternS3",
    #                   encryption: {
    #                     constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #                     encryption_method: "SAMPLE_AES", # accepts SAMPLE_AES
    #                     initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     static_key_provider: {
    #                       key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                       key_format_versions: "__stringPatternDD",
    #                       static_key_value: "__stringPatternAZaZ0932",
    #                       url: "__string",
    #                     },
    #                     type: "STATIC_KEY", # accepts STATIC_KEY
    #                   },
    #                   fragment_length: 1,
    #                   manifest_compression: "GZIP", # accepts GZIP, NONE
    #                   manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                   min_buffer_time: 1,
    #                   min_final_segment_length: 1.0,
    #                   segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                   segment_length: 1,
    #                   stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   write_dash_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #                   write_hls_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #                 },
    #                 dash_iso_group_settings: {
    #                   base_url: "__string",
    #                   destination: "__stringPatternS3",
    #                   encryption: {
    #                     speke_key_provider: {
    #                       resource_id: "__string",
    #                       system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                       url: "__stringPatternHttps",
    #                     },
    #                   },
    #                   fragment_length: 1,
    #                   hbbtv_compliance: "HBBTV_1_5", # accepts HBBTV_1_5, NONE
    #                   min_buffer_time: 1,
    #                   segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                   segment_length: 1,
    #                   write_segment_timeline_in_representation: "ENABLED", # accepts ENABLED, DISABLED
    #                 },
    #                 file_group_settings: {
    #                   destination: "__stringPatternS3",
    #                 },
    #                 hls_group_settings: {
    #                   ad_markers: ["ELEMENTAL"], # accepts ELEMENTAL, ELEMENTAL_SCTE35
    #                   base_url: "__string",
    #                   caption_language_mappings: [
    #                     {
    #                       caption_channel: 1,
    #                       custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                       language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                       language_description: "__string",
    #                     },
    #                   ],
    #                   caption_language_setting: "INSERT", # accepts INSERT, OMIT, NONE
    #                   client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                   codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #                   destination: "__stringPatternS3",
    #                   directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #                   encryption: {
    #                     constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #                     encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #                     initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     speke_key_provider: {
    #                       resource_id: "__string",
    #                       system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                       url: "__stringPatternHttps",
    #                     },
    #                     static_key_provider: {
    #                       key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                       key_format_versions: "__stringPatternDD",
    #                       static_key_value: "__stringPatternAZaZ0932",
    #                       url: "__string",
    #                     },
    #                     type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #                   },
    #                   manifest_compression: "GZIP", # accepts GZIP, NONE
    #                   manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                   min_final_segment_length: 1.0,
    #                   min_segment_length: 1,
    #                   output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #                   program_date_time: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   program_date_time_period: 1,
    #                   segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                   segment_length: 1,
    #                   segments_per_subdirectory: 1,
    #                   stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #                   timed_metadata_id_3_period: 1,
    #                   timestamp_delta_milliseconds: 1,
    #                 },
    #                 ms_smooth_group_settings: {
    #                   audio_deduplication: "COMBINE_DUPLICATE_STREAMS", # accepts COMBINE_DUPLICATE_STREAMS, NONE
    #                   destination: "__stringPatternS3",
    #                   encryption: {
    #                     speke_key_provider: {
    #                       resource_id: "__string",
    #                       system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                       url: "__stringPatternHttps",
    #                     },
    #                   },
    #                   fragment_length: 1,
    #                   manifest_encoding: "UTF8", # accepts UTF8, UTF16
    #                 },
    #                 type: "HLS_GROUP_SETTINGS", # accepts HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS, CMAF_GROUP_SETTINGS
    #               },
    #               outputs: [
    #                 {
    #                   audio_descriptions: [
    #                     {
    #                       audio_normalization_settings: {
    #                         algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #                         algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #                         correction_gate_level: 1,
    #                         loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #                         peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #                         target_lkfs: 1.0,
    #                       },
    #                       audio_source_name: "__string",
    #                       audio_type: 1,
    #                       audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       codec_settings: {
    #                         aac_settings: {
    #                           audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                           bitrate: 1,
    #                           codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                           coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                           rate_control_mode: "CBR", # accepts CBR, VBR
    #                           raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                           sample_rate: 1,
    #                           specification: "MPEG2", # accepts MPEG2, MPEG4
    #                           vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #                         },
    #                         ac_3_settings: {
    #                           bitrate: 1,
    #                           bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                           dialnorm: 1,
    #                           dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                           lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                           metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                           sample_rate: 1,
    #                         },
    #                         aiff_settings: {
    #                           bit_depth: 1,
    #                           channels: 1,
    #                           sample_rate: 1,
    #                         },
    #                         codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #                         eac_3_settings: {
    #                           attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                           bitrate: 1,
    #                           bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                           dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                           dialnorm: 1,
    #                           dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                           dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                           lfe_control: "LFE", # accepts LFE, NO_LFE
    #                           lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                           lo_ro_center_mix_level: 1.0,
    #                           lo_ro_surround_mix_level: 1.0,
    #                           lt_rt_center_mix_level: 1.0,
    #                           lt_rt_surround_mix_level: 1.0,
    #                           metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                           passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                           phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                           sample_rate: 1,
    #                           stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                           surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                           surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                         },
    #                         mp_2_settings: {
    #                           bitrate: 1,
    #                           channels: 1,
    #                           sample_rate: 1,
    #                         },
    #                         wav_settings: {
    #                           bit_depth: 1,
    #                           channels: 1,
    #                           format: "RIFF", # accepts RIFF, RF64
    #                           sample_rate: 1,
    #                         },
    #                       },
    #                       custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                       language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                       language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       remix_settings: {
    #                         channel_mapping: {
    #                           output_channels: [
    #                             {
    #                               input_channels: [1],
    #                             },
    #                           ],
    #                         },
    #                         channels_in: 1,
    #                         channels_out: 1,
    #                       },
    #                       stream_name: "__stringPatternWS",
    #                     },
    #                   ],
    #                   caption_descriptions: [
    #                     {
    #                       caption_selector_name: "__stringMin1",
    #                       custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                       destination_settings: {
    #                         burnin_destination_settings: {
    #                           alignment: "CENTERED", # accepts CENTERED, LEFT
    #                           background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           background_opacity: 1,
    #                           font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                           font_opacity: 1,
    #                           font_resolution: 1,
    #                           font_size: 1,
    #                           outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                           outline_size: 1,
    #                           shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           shadow_opacity: 1,
    #                           shadow_x_offset: 1,
    #                           shadow_y_offset: 1,
    #                           teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                           x_position: 1,
    #                           y_position: 1,
    #                         },
    #                         destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #                         dvb_sub_destination_settings: {
    #                           alignment: "CENTERED", # accepts CENTERED, LEFT
    #                           background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           background_opacity: 1,
    #                           font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                           font_opacity: 1,
    #                           font_resolution: 1,
    #                           font_size: 1,
    #                           outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                           outline_size: 1,
    #                           shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           shadow_opacity: 1,
    #                           shadow_x_offset: 1,
    #                           shadow_y_offset: 1,
    #                           teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                           x_position: 1,
    #                           y_position: 1,
    #                         },
    #                         scc_destination_settings: {
    #                           framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #                         },
    #                         teletext_destination_settings: {
    #                           page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                         },
    #                         ttml_destination_settings: {
    #                           style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #                         },
    #                       },
    #                       language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                       language_description: "__string",
    #                     },
    #                   ],
    #                   container_settings: {
    #                     container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
    #                     f4v_settings: {
    #                       moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                     },
    #                     m2ts_settings: {
    #                       audio_buffer_model: "DVB", # accepts DVB, ATSC
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: [1],
    #                       bitrate: 1,
    #                       buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                       dvb_nit_settings: {
    #                         network_id: 1,
    #                         network_name: "__stringMin1Max256",
    #                         nit_interval: 1,
    #                       },
    #                       dvb_sdt_settings: {
    #                         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                         sdt_interval: 1,
    #                         service_name: "__stringMin1Max256",
    #                         service_provider_name: "__stringMin1Max256",
    #                       },
    #                       dvb_sub_pids: [1],
    #                       dvb_tdt_settings: {
    #                         tdt_interval: 1,
    #                       },
    #                       dvb_teletext_pid: 1,
    #                       ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                       ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                       es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       fragment_time: 1.0,
    #                       max_pcr_interval: 1,
    #                       min_ebp_interval: 1,
    #                       nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                       null_packet_bitrate: 1.0,
    #                       pat_interval: 1,
    #                       pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                       pcr_pid: 1,
    #                       pmt_interval: 1,
    #                       pmt_pid: 1,
    #                       private_metadata_pid: 1,
    #                       program_number: 1,
    #                       rate_mode: "VBR", # accepts VBR, CBR
    #                       scte_35_pid: 1,
    #                       scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                       segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #                       segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                       segmentation_time: 1.0,
    #                       timed_metadata_pid: 1,
    #                       transport_stream_id: 1,
    #                       video_pid: 1,
    #                     },
    #                     m3u_8_settings: {
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: [1],
    #                       nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                       pat_interval: 1,
    #                       pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                       pcr_pid: 1,
    #                       pmt_interval: 1,
    #                       pmt_pid: 1,
    #                       private_metadata_pid: 1,
    #                       program_number: 1,
    #                       scte_35_pid: 1,
    #                       scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                       timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                       timed_metadata_pid: 1,
    #                       transport_stream_id: 1,
    #                       video_pid: 1,
    #                     },
    #                     mov_settings: {
    #                       clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #                       padding_control: "OMNEON", # accepts OMNEON, NONE
    #                       reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #                     },
    #                     mp_4_settings: {
    #                       cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                       mp_4_major_brand: "__string",
    #                     },
    #                   },
    #                   extension: "__string",
    #                   name_modifier: "__stringMin1",
    #                   output_settings: {
    #                     hls_settings: {
    #                       audio_group_id: "__string",
    #                       audio_rendition_sets: "__string",
    #                       audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                       i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       segment_modifier: "__string",
    #                     },
    #                   },
    #                   preset: "__stringMin0",
    #                   video_description: {
    #                     afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #                     anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #                     codec_settings: {
    #                       codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #                       frame_capture_settings: {
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         max_captures: 1,
    #                         quality: 1,
    #                       },
    #                       h264_settings: {
    #                         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                         bitrate: 1,
    #                         codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #                         codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                         entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                         field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #                         flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                         gop_closed_cadence: 1,
    #                         gop_size: 1.0,
    #                         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                         hrd_buffer_initial_fill_percentage: 1,
    #                         hrd_buffer_size: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         max_bitrate: 1,
    #                         min_i_interval: 1,
    #                         number_b_frames_between_reference_frames: 1,
    #                         number_reference_frames: 1,
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                         qvbr_settings: {
    #                           max_average_bitrate: 1,
    #                           qvbr_quality_level: 1,
    #                         },
    #                         rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                         repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #                         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                         slices: 1,
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         softness: 1,
    #                         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                         telecine: "NONE", # accepts NONE, SOFT, HARD
    #                         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                       },
    #                       h265_settings: {
    #                         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                         alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #                         bitrate: 1,
    #                         codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #                         codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #                         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                         flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                         gop_closed_cadence: 1,
    #                         gop_size: 1.0,
    #                         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                         hrd_buffer_initial_fill_percentage: 1,
    #                         hrd_buffer_size: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         max_bitrate: 1,
    #                         min_i_interval: 1,
    #                         number_b_frames_between_reference_frames: 1,
    #                         number_reference_frames: 1,
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                         qvbr_settings: {
    #                           max_average_bitrate: 1,
    #                           qvbr_quality_level: 1,
    #                         },
    #                         rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                         sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #                         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                         slices: 1,
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         telecine: "NONE", # accepts NONE, SOFT, HARD
    #                         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #                         tiles: "DISABLED", # accepts DISABLED, ENABLED
    #                         unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                         write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #                       },
    #                       mpeg_2_settings: {
    #                         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #                         bitrate: 1,
    #                         codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #                         codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #                         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         gop_closed_cadence: 1,
    #                         gop_size: 1.0,
    #                         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                         hrd_buffer_initial_fill_percentage: 1,
    #                         hrd_buffer_size: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #                         max_bitrate: 1,
    #                         min_i_interval: 1,
    #                         number_b_frames_between_reference_frames: 1,
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #                         rate_control_mode: "VBR", # accepts VBR, CBR
    #                         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         softness: 1,
    #                         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         syntax: "DEFAULT", # accepts DEFAULT, D_10
    #                         telecine: "NONE", # accepts NONE, SOFT, HARD
    #                         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       },
    #                       prores_settings: {
    #                         codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         telecine: "NONE", # accepts NONE, HARD
    #                       },
    #                     },
    #                     color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                     crop: {
    #                       height: 1,
    #                       width: 1,
    #                       x: 1,
    #                       y: 1,
    #                     },
    #                     drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                     fixed_afd: 1,
    #                     height: 1,
    #                     position: {
    #                       height: 1,
    #                       width: 1,
    #                       x: 1,
    #                       y: 1,
    #                     },
    #                     respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #                     scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #                     sharpness: 1,
    #                     timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                     video_preprocessors: {
    #                       color_corrector: {
    #                         brightness: 1,
    #                         color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #                         contrast: 1,
    #                         hdr_10_metadata: {
    #                           blue_primary_x: 1,
    #                           blue_primary_y: 1,
    #                           green_primary_x: 1,
    #                           green_primary_y: 1,
    #                           max_content_light_level: 1,
    #                           max_frame_average_light_level: 1,
    #                           max_luminance: 1,
    #                           min_luminance: 1,
    #                           red_primary_x: 1,
    #                           red_primary_y: 1,
    #                           white_point_x: 1,
    #                           white_point_y: 1,
    #                         },
    #                         hue: 1,
    #                         saturation: 1,
    #                       },
    #                       deinterlacer: {
    #                         algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #                         control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #                         mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #                       },
    #                       image_inserter: {
    #                         insertable_images: [
    #                           {
    #                             duration: 1,
    #                             fade_in: 1,
    #                             fade_out: 1,
    #                             height: 1,
    #                             image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #                             image_x: 1,
    #                             image_y: 1,
    #                             layer: 1,
    #                             opacity: 1,
    #                             start_time: "__stringPattern01D20305D205D",
    #                             width: 1,
    #                           },
    #                         ],
    #                       },
    #                       noise_reducer: {
    #                         filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #                         filter_settings: {
    #                           strength: 1,
    #                         },
    #                         spatial_filter_settings: {
    #                           post_filter_sharpen_strength: 1,
    #                           speed: 1,
    #                           strength: 1,
    #                         },
    #                       },
    #                       timecode_burnin: {
    #                         font_size: 1,
    #                         position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #                         prefix: "__stringPattern",
    #                       },
    #                     },
    #                     width: 1,
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           timecode_config: {
    #             anchor: "__stringPattern010920405090509092",
    #             source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #             start: "__stringPattern010920405090509092",
    #             timestamp_offset: "__stringPattern0940191020191209301",
    #           },
    #           timed_metadata_insertion: {
    #             id_3_insertions: [
    #               {
    #                 id_3: "__stringPatternAZaZ0902",
    #                 timecode: "__stringPattern010920405090509092",
    #               },
    #             ],
    #           },
    #         },
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] category
    #   Optional. A category for the job template you are creating
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional. A description of the job template you are creating.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the job template you are creating.
    #   @return [String]
    #
    # @!attribute [rw] queue
    #   Optional. The queue that jobs created from this template are
    #   assigned to. If you don't specify this, jobs will go to the default
    #   queue.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   JobTemplateSettings contains all the transcode settings saved in the
    #   template that will be applied to jobs created from it.
    #   @return [Types::JobTemplateSettings]
    #
    # @!attribute [rw] tags
    #   The tags that you want to add to the resource. You can tag resources
    #   with a key-value pair or with only a key.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateJobTemplateRequest AWS API Documentation
    #
    class CreateJobTemplateRequest < Struct.new(
      :category,
      :description,
      :name,
      :queue,
      :settings,
      :tags)
      include Aws::Structure
    end

    # Successful create job template requests will return the template JSON.
    #
    # @!attribute [rw] job_template
    #   A job template is a pre-made set of encoding instructions that you
    #   can use to quickly create a job.
    #   @return [Types::JobTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateJobTemplateResponse AWS API Documentation
    #
    class CreateJobTemplateResponse < Struct.new(
      :job_template)
      include Aws::Structure
    end

    # Send your create preset request with the name of the preset and the
    # JSON for the output settings specified by the preset.
    #
    # @note When making an API call, you may pass CreatePresetRequest
    #   data as a hash:
    #
    #       {
    #         category: "__string",
    #         description: "__string",
    #         name: "__string", # required
    #         settings: { # required
    #           audio_descriptions: [
    #             {
    #               audio_normalization_settings: {
    #                 algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #                 algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #                 correction_gate_level: 1,
    #                 loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #                 peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #                 target_lkfs: 1.0,
    #               },
    #               audio_source_name: "__string",
    #               audio_type: 1,
    #               audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               codec_settings: {
    #                 aac_settings: {
    #                   audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                   bitrate: 1,
    #                   codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                   coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                   rate_control_mode: "CBR", # accepts CBR, VBR
    #                   raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                   sample_rate: 1,
    #                   specification: "MPEG2", # accepts MPEG2, MPEG4
    #                   vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #                 },
    #                 ac_3_settings: {
    #                   bitrate: 1,
    #                   bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                   dialnorm: 1,
    #                   dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                   lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                   metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   sample_rate: 1,
    #                 },
    #                 aiff_settings: {
    #                   bit_depth: 1,
    #                   channels: 1,
    #                   sample_rate: 1,
    #                 },
    #                 codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #                 eac_3_settings: {
    #                   attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                   bitrate: 1,
    #                   bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                   dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                   dialnorm: 1,
    #                   dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                   dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                   lfe_control: "LFE", # accepts LFE, NO_LFE
    #                   lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                   lo_ro_center_mix_level: 1.0,
    #                   lo_ro_surround_mix_level: 1.0,
    #                   lt_rt_center_mix_level: 1.0,
    #                   lt_rt_surround_mix_level: 1.0,
    #                   metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                   phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                   sample_rate: 1,
    #                   stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                   surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                   surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                 },
    #                 mp_2_settings: {
    #                   bitrate: 1,
    #                   channels: 1,
    #                   sample_rate: 1,
    #                 },
    #                 wav_settings: {
    #                   bit_depth: 1,
    #                   channels: 1,
    #                   format: "RIFF", # accepts RIFF, RF64
    #                   sample_rate: 1,
    #                 },
    #               },
    #               custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #               language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #               language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               remix_settings: {
    #                 channel_mapping: {
    #                   output_channels: [
    #                     {
    #                       input_channels: [1],
    #                     },
    #                   ],
    #                 },
    #                 channels_in: 1,
    #                 channels_out: 1,
    #               },
    #               stream_name: "__stringPatternWS",
    #             },
    #           ],
    #           caption_descriptions: [
    #             {
    #               custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #               destination_settings: {
    #                 burnin_destination_settings: {
    #                   alignment: "CENTERED", # accepts CENTERED, LEFT
    #                   background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                   background_opacity: 1,
    #                   font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                   font_opacity: 1,
    #                   font_resolution: 1,
    #                   font_size: 1,
    #                   outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                   outline_size: 1,
    #                   shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                   shadow_opacity: 1,
    #                   shadow_x_offset: 1,
    #                   shadow_y_offset: 1,
    #                   teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                   x_position: 1,
    #                   y_position: 1,
    #                 },
    #                 destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #                 dvb_sub_destination_settings: {
    #                   alignment: "CENTERED", # accepts CENTERED, LEFT
    #                   background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                   background_opacity: 1,
    #                   font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                   font_opacity: 1,
    #                   font_resolution: 1,
    #                   font_size: 1,
    #                   outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                   outline_size: 1,
    #                   shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                   shadow_opacity: 1,
    #                   shadow_x_offset: 1,
    #                   shadow_y_offset: 1,
    #                   teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                   x_position: 1,
    #                   y_position: 1,
    #                 },
    #                 scc_destination_settings: {
    #                   framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #                 },
    #                 teletext_destination_settings: {
    #                   page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                 },
    #                 ttml_destination_settings: {
    #                   style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #                 },
    #               },
    #               language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #               language_description: "__string",
    #             },
    #           ],
    #           container_settings: {
    #             container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
    #             f4v_settings: {
    #               moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #             },
    #             m2ts_settings: {
    #               audio_buffer_model: "DVB", # accepts DVB, ATSC
    #               audio_frames_per_pes: 1,
    #               audio_pids: [1],
    #               bitrate: 1,
    #               buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #               dvb_nit_settings: {
    #                 network_id: 1,
    #                 network_name: "__stringMin1Max256",
    #                 nit_interval: 1,
    #               },
    #               dvb_sdt_settings: {
    #                 output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                 sdt_interval: 1,
    #                 service_name: "__stringMin1Max256",
    #                 service_provider_name: "__stringMin1Max256",
    #               },
    #               dvb_sub_pids: [1],
    #               dvb_tdt_settings: {
    #                 tdt_interval: 1,
    #               },
    #               dvb_teletext_pid: 1,
    #               ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #               ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #               es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               fragment_time: 1.0,
    #               max_pcr_interval: 1,
    #               min_ebp_interval: 1,
    #               nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #               null_packet_bitrate: 1.0,
    #               pat_interval: 1,
    #               pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #               pcr_pid: 1,
    #               pmt_interval: 1,
    #               pmt_pid: 1,
    #               private_metadata_pid: 1,
    #               program_number: 1,
    #               rate_mode: "VBR", # accepts VBR, CBR
    #               scte_35_pid: 1,
    #               scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #               segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #               segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #               segmentation_time: 1.0,
    #               timed_metadata_pid: 1,
    #               transport_stream_id: 1,
    #               video_pid: 1,
    #             },
    #             m3u_8_settings: {
    #               audio_frames_per_pes: 1,
    #               audio_pids: [1],
    #               nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #               pat_interval: 1,
    #               pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #               pcr_pid: 1,
    #               pmt_interval: 1,
    #               pmt_pid: 1,
    #               private_metadata_pid: 1,
    #               program_number: 1,
    #               scte_35_pid: 1,
    #               scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #               timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #               timed_metadata_pid: 1,
    #               transport_stream_id: 1,
    #               video_pid: 1,
    #             },
    #             mov_settings: {
    #               clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #               padding_control: "OMNEON", # accepts OMNEON, NONE
    #               reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #             },
    #             mp_4_settings: {
    #               cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #               mp_4_major_brand: "__string",
    #             },
    #           },
    #           video_description: {
    #             afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #             anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #             codec_settings: {
    #               codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #               frame_capture_settings: {
    #                 framerate_denominator: 1,
    #                 framerate_numerator: 1,
    #                 max_captures: 1,
    #                 quality: 1,
    #               },
    #               h264_settings: {
    #                 adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                 bitrate: 1,
    #                 codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #                 codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                 dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                 entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                 field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #                 flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                 framerate_denominator: 1,
    #                 framerate_numerator: 1,
    #                 gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                 gop_closed_cadence: 1,
    #                 gop_size: 1.0,
    #                 gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                 hrd_buffer_initial_fill_percentage: 1,
    #                 hrd_buffer_size: 1,
    #                 interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                 max_bitrate: 1,
    #                 min_i_interval: 1,
    #                 number_b_frames_between_reference_frames: 1,
    #                 number_reference_frames: 1,
    #                 par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 par_denominator: 1,
    #                 par_numerator: 1,
    #                 quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                 qvbr_settings: {
    #                   max_average_bitrate: 1,
    #                   qvbr_quality_level: 1,
    #                 },
    #                 rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                 repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #                 scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                 slices: 1,
    #                 slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                 softness: 1,
    #                 spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                 telecine: "NONE", # accepts NONE, SOFT, HARD
    #                 temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #               },
    #               h265_settings: {
    #                 adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                 alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #                 bitrate: 1,
    #                 codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #                 codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #                 dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                 flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                 framerate_denominator: 1,
    #                 framerate_numerator: 1,
    #                 gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                 gop_closed_cadence: 1,
    #                 gop_size: 1.0,
    #                 gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                 hrd_buffer_initial_fill_percentage: 1,
    #                 hrd_buffer_size: 1,
    #                 interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                 max_bitrate: 1,
    #                 min_i_interval: 1,
    #                 number_b_frames_between_reference_frames: 1,
    #                 number_reference_frames: 1,
    #                 par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 par_denominator: 1,
    #                 par_numerator: 1,
    #                 quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                 qvbr_settings: {
    #                   max_average_bitrate: 1,
    #                   qvbr_quality_level: 1,
    #                 },
    #                 rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                 sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #                 scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                 slices: 1,
    #                 slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                 spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 telecine: "NONE", # accepts NONE, SOFT, HARD
    #                 temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #                 tiles: "DISABLED", # accepts DISABLED, ENABLED
    #                 unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                 write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #               },
    #               mpeg_2_settings: {
    #                 adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #                 bitrate: 1,
    #                 codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #                 codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #                 dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                 framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                 framerate_denominator: 1,
    #                 framerate_numerator: 1,
    #                 gop_closed_cadence: 1,
    #                 gop_size: 1.0,
    #                 gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                 hrd_buffer_initial_fill_percentage: 1,
    #                 hrd_buffer_size: 1,
    #                 interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                 intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #                 max_bitrate: 1,
    #                 min_i_interval: 1,
    #                 number_b_frames_between_reference_frames: 1,
    #                 par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 par_denominator: 1,
    #                 par_numerator: 1,
    #                 quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #                 rate_control_mode: "VBR", # accepts VBR, CBR
    #                 scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                 slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                 softness: 1,
    #                 spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 syntax: "DEFAULT", # accepts DEFAULT, D_10
    #                 telecine: "NONE", # accepts NONE, SOFT, HARD
    #                 temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               },
    #               prores_settings: {
    #                 codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #                 framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                 framerate_denominator: 1,
    #                 framerate_numerator: 1,
    #                 interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                 par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 par_denominator: 1,
    #                 par_numerator: 1,
    #                 slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                 telecine: "NONE", # accepts NONE, HARD
    #               },
    #             },
    #             color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #             crop: {
    #               height: 1,
    #               width: 1,
    #               x: 1,
    #               y: 1,
    #             },
    #             drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #             fixed_afd: 1,
    #             height: 1,
    #             position: {
    #               height: 1,
    #               width: 1,
    #               x: 1,
    #               y: 1,
    #             },
    #             respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #             scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #             sharpness: 1,
    #             timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #             video_preprocessors: {
    #               color_corrector: {
    #                 brightness: 1,
    #                 color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #                 contrast: 1,
    #                 hdr_10_metadata: {
    #                   blue_primary_x: 1,
    #                   blue_primary_y: 1,
    #                   green_primary_x: 1,
    #                   green_primary_y: 1,
    #                   max_content_light_level: 1,
    #                   max_frame_average_light_level: 1,
    #                   max_luminance: 1,
    #                   min_luminance: 1,
    #                   red_primary_x: 1,
    #                   red_primary_y: 1,
    #                   white_point_x: 1,
    #                   white_point_y: 1,
    #                 },
    #                 hue: 1,
    #                 saturation: 1,
    #               },
    #               deinterlacer: {
    #                 algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #                 control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #                 mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #               },
    #               image_inserter: {
    #                 insertable_images: [
    #                   {
    #                     duration: 1,
    #                     fade_in: 1,
    #                     fade_out: 1,
    #                     height: 1,
    #                     image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #                     image_x: 1,
    #                     image_y: 1,
    #                     layer: 1,
    #                     opacity: 1,
    #                     start_time: "__stringPattern01D20305D205D",
    #                     width: 1,
    #                   },
    #                 ],
    #               },
    #               noise_reducer: {
    #                 filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #                 filter_settings: {
    #                   strength: 1,
    #                 },
    #                 spatial_filter_settings: {
    #                   post_filter_sharpen_strength: 1,
    #                   speed: 1,
    #                   strength: 1,
    #                 },
    #               },
    #               timecode_burnin: {
    #                 font_size: 1,
    #                 position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #                 prefix: "__stringPattern",
    #               },
    #             },
    #             width: 1,
    #           },
    #         },
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] category
    #   Optional. A category for the preset you are creating.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional. A description of the preset you are creating.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the preset you are creating.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Settings for preset
    #   @return [Types::PresetSettings]
    #
    # @!attribute [rw] tags
    #   The tags that you want to add to the resource. You can tag resources
    #   with a key-value pair or with only a key.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreatePresetRequest AWS API Documentation
    #
    class CreatePresetRequest < Struct.new(
      :category,
      :description,
      :name,
      :settings,
      :tags)
      include Aws::Structure
    end

    # Successful create preset requests will return the preset JSON.
    #
    # @!attribute [rw] preset
    #   A preset is a collection of preconfigured media conversion settings
    #   that you want MediaConvert to apply to the output during the
    #   conversion process.
    #   @return [Types::Preset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreatePresetResponse AWS API Documentation
    #
    class CreatePresetResponse < Struct.new(
      :preset)
      include Aws::Structure
    end

    # Send your create queue request with the name of the queue.
    #
    # @note When making an API call, you may pass CreateQueueRequest
    #   data as a hash:
    #
    #       {
    #         description: "__string",
    #         name: "__string", # required
    #         pricing_plan: "ON_DEMAND", # accepts ON_DEMAND, RESERVED
    #         reservation_plan_settings: {
    #           commitment: "ONE_YEAR", # required, accepts ONE_YEAR
    #           renewal_type: "AUTO_RENEW", # required, accepts AUTO_RENEW, EXPIRE
    #           reserved_slots: 1, # required
    #         },
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   Optional. A description of the queue that you are creating.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the queue that you are creating.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   Optional; default is on-demand. Specifies whether the pricing plan
    #   for the queue is on-demand or reserved. The pricing plan for the
    #   queue determines whether you pay on-demand or reserved pricing for
    #   the transcoding jobs you run through the queue. For reserved queue
    #   pricing, you must set up a contract. You can create a reserved queue
    #   contract through the AWS Elemental MediaConvert console.
    #   @return [String]
    #
    # @!attribute [rw] reservation_plan_settings
    #   Details about the pricing plan for your reserved queue. Required for
    #   reserved queues and not applicable to on-demand queues.
    #   @return [Types::ReservationPlanSettings]
    #
    # @!attribute [rw] tags
    #   The tags that you want to add to the resource. You can tag resources
    #   with a key-value pair or with only a key.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateQueueRequest AWS API Documentation
    #
    class CreateQueueRequest < Struct.new(
      :description,
      :name,
      :pricing_plan,
      :reservation_plan_settings,
      :tags)
      include Aws::Structure
    end

    # Successful create queue requests return the name of the queue that you
    # just created and information about it.
    #
    # @!attribute [rw] queue
    #   You can use queues to manage the resources that are available to
    #   your AWS account for running multiple transcoding jobs at the same
    #   time. If you don't specify a queue, the service sends all jobs
    #   through the default queue. For more information, see
    #   https://docs.aws.amazon.com/mediaconvert/latest/ug/about-resource-allocation-and-job-prioritization.html.
    #   @return [Types::Queue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateQueueResponse AWS API Documentation
    #
    class CreateQueueResponse < Struct.new(
      :queue)
      include Aws::Structure
    end

    # Specifies DRM settings for DASH outputs.
    #
    # @note When making an API call, you may pass DashIsoEncryptionSettings
    #   data as a hash:
    #
    #       {
    #         speke_key_provider: {
    #           resource_id: "__string",
    #           system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #           url: "__stringPatternHttps",
    #         },
    #       }
    #
    # @!attribute [rw] speke_key_provider
    #   Settings for use with a SPEKE key provider
    #   @return [Types::SpekeKeyProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DashIsoEncryptionSettings AWS API Documentation
    #
    class DashIsoEncryptionSettings < Struct.new(
      :speke_key_provider)
      include Aws::Structure
    end

    # Required when you set (Type) under
    # (OutputGroups)>(OutputGroupSettings) to DASH\_ISO\_GROUP\_SETTINGS.
    #
    # @note When making an API call, you may pass DashIsoGroupSettings
    #   data as a hash:
    #
    #       {
    #         base_url: "__string",
    #         destination: "__stringPatternS3",
    #         encryption: {
    #           speke_key_provider: {
    #             resource_id: "__string",
    #             system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #             url: "__stringPatternHttps",
    #           },
    #         },
    #         fragment_length: 1,
    #         hbbtv_compliance: "HBBTV_1_5", # accepts HBBTV_1_5, NONE
    #         min_buffer_time: 1,
    #         segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #         segment_length: 1,
    #         write_segment_timeline_in_representation: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] base_url
    #   A partial URI prefix that will be put in the manifest (.mpd) file at
    #   the top level BaseURL element. Can be used if streams are delivered
    #   from a different URL than the manifest file.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   Use Destination (Destination) to specify the S3 output location and
    #   the output filename base. Destination accepts format identifiers. If
    #   you do not specify the base filename in the URI, the service will
    #   use the filename of the input file. If your job has multiple inputs,
    #   the service uses the filename of the first input file.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   DRM settings.
    #   @return [Types::DashIsoEncryptionSettings]
    #
    # @!attribute [rw] fragment_length
    #   Length of fragments to generate (in seconds). Fragment length must
    #   be compatible with GOP size and Framerate. Note that fragments will
    #   end on the next keyframe after this number of seconds, so actual
    #   fragment length may be longer. When Emit Single File is checked, the
    #   fragmentation is internal to a single output file and it does not
    #   cause the creation of many output files as in other output types.
    #   @return [Integer]
    #
    # @!attribute [rw] hbbtv_compliance
    #   Supports HbbTV specification as indicated
    #   @return [String]
    #
    # @!attribute [rw] min_buffer_time
    #   Minimum time of initially buffered media that is needed to ensure
    #   smooth playout.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_control
    #   When set to SINGLE\_FILE, a single output file is generated, which
    #   is internally segmented using the Fragment Length and Segment
    #   Length. When set to SEGMENTED\_FILES, separate segment files will be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] segment_length
    #   Length of mpd segments to create (in seconds). Note that segments
    #   will end on the next keyframe after this number of seconds, so
    #   actual segment length may be longer. When Emit Single File is
    #   checked, the segmentation is internal to a single output file and it
    #   does not cause the creation of many output files as in other output
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] write_segment_timeline_in_representation
    #   When ENABLED, segment durations are indicated in the manifest using
    #   SegmentTimeline and SegmentTimeline will be promoted down into
    #   Representation from AdaptationSet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DashIsoGroupSettings AWS API Documentation
    #
    class DashIsoGroupSettings < Struct.new(
      :base_url,
      :destination,
      :encryption,
      :fragment_length,
      :hbbtv_compliance,
      :min_buffer_time,
      :segment_control,
      :segment_length,
      :write_segment_timeline_in_representation)
      include Aws::Structure
    end

    # Settings for deinterlacer
    #
    # @note When making an API call, you may pass Deinterlacer
    #   data as a hash:
    #
    #       {
    #         algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #         control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #         mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #       }
    #
    # @!attribute [rw] algorithm
    #   Only applies when you set Deinterlacer (DeinterlaceMode) to
    #   Deinterlace (DEINTERLACE) or Adaptive (ADAPTIVE). Motion adaptive
    #   interpolate (INTERPOLATE) produces sharper pictures, while blend
    #   (BLEND) produces smoother motion. Use (INTERPOLATE\_TICKER) OR
    #   (BLEND\_TICKER) if your source file includes a ticker, such as a
    #   scrolling headline at the bottom of the frame.
    #   @return [String]
    #
    # @!attribute [rw] control
    #   \- When set to NORMAL (default), the deinterlacer does not convert
    #   frames that are tagged in metadata as progressive. It will only
    #   convert those that are tagged as some other type. - When set to
    #   FORCE\_ALL\_FRAMES, the deinterlacer converts every frame to
    #   progressive - even those that are already tagged as progressive.
    #   Turn Force mode on only if there is a good chance that the metadata
    #   has tagged frames as progressive when they are not progressive. Do
    #   not turn on otherwise; processing frames that are already
    #   progressive into progressive will probably result in lower quality
    #   video.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   Use Deinterlacer (DeinterlaceMode) to choose how the service will do
    #   deinterlacing. Default is Deinterlace. - Deinterlace converts
    #   interlaced to progressive. - Inverse telecine converts Hard Telecine
    #   29.97i to progressive 23.976p. - Adaptive auto-detects and converts
    #   to progressive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Deinterlacer AWS API Documentation
    #
    class Deinterlacer < Struct.new(
      :algorithm,
      :control,
      :mode)
      include Aws::Structure
    end

    # Delete a job template by sending a request with the job template name
    #
    # @note When making an API call, you may pass DeleteJobTemplateRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the job template to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeleteJobTemplateRequest AWS API Documentation
    #
    class DeleteJobTemplateRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # Delete job template requests will return an OK message or error
    # message with an empty body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeleteJobTemplateResponse AWS API Documentation
    #
    class DeleteJobTemplateResponse < Aws::EmptyStructure; end

    # Delete a preset by sending a request with the preset name
    #
    # @note When making an API call, you may pass DeletePresetRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the preset to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeletePresetRequest AWS API Documentation
    #
    class DeletePresetRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # Delete preset requests will return an OK message or error message with
    # an empty body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeletePresetResponse AWS API Documentation
    #
    class DeletePresetResponse < Aws::EmptyStructure; end

    # Delete a queue by sending a request with the queue name.
    #
    # @note When making an API call, you may pass DeleteQueueRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the queue to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeleteQueueRequest AWS API Documentation
    #
    class DeleteQueueRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # Delete queue requests return an OK message or error message with an
    # empty body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeleteQueueResponse AWS API Documentation
    #
    class DeleteQueueResponse < Aws::EmptyStructure; end

    # Send an request with an empty body to the regional API endpoint to get
    # your account API endpoint.
    #
    # @note When making an API call, you may pass DescribeEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         mode: "DEFAULT", # accepts DEFAULT, GET_ONLY
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   Optional. Max number of endpoints, up to twenty, that will be
    #   returned at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] mode
    #   Optional field, defaults to DEFAULT. Specify DEFAULT for this
    #   operation to return your endpoints if any exist, or to create an
    #   endpoint for you and return it if one doesn't already exist.
    #   Specify GET\_ONLY to return your endpoints if any exist, or an empty
    #   list if none exist.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this string, provided with the response to a previous request,
    #   to request the next batch of endpoints.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DescribeEndpointsRequest AWS API Documentation
    #
    class DescribeEndpointsRequest < Struct.new(
      :max_results,
      :mode,
      :next_token)
      include Aws::Structure
    end

    # Successful describe endpoints requests will return your account API
    # endpoint.
    #
    # @!attribute [rw] endpoints
    #   List of endpoints
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] next_token
    #   Use this string to request the next batch of endpoints.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DescribeEndpointsResponse AWS API Documentation
    #
    class DescribeEndpointsResponse < Struct.new(
      :endpoints,
      :next_token)
      include Aws::Structure
    end

    # Inserts DVB Network Information Table (NIT) at the specified table
    # repetition interval.
    #
    # @note When making an API call, you may pass DvbNitSettings
    #   data as a hash:
    #
    #       {
    #         network_id: 1,
    #         network_name: "__stringMin1Max256",
    #         nit_interval: 1,
    #       }
    #
    # @!attribute [rw] network_id
    #   The numeric value placed in the Network Information Table (NIT).
    #   @return [Integer]
    #
    # @!attribute [rw] network_name
    #   The network name text placed in the network\_name\_descriptor inside
    #   the Network Information Table. Maximum length is 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] nit_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DvbNitSettings AWS API Documentation
    #
    class DvbNitSettings < Struct.new(
      :network_id,
      :network_name,
      :nit_interval)
      include Aws::Structure
    end

    # Inserts DVB Service Description Table (NIT) at the specified table
    # repetition interval.
    #
    # @note When making an API call, you may pass DvbSdtSettings
    #   data as a hash:
    #
    #       {
    #         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #         sdt_interval: 1,
    #         service_name: "__stringMin1Max256",
    #         service_provider_name: "__stringMin1Max256",
    #       }
    #
    # @!attribute [rw] output_sdt
    #   Selects method of inserting SDT information into output stream.
    #   "Follow input SDT" copies SDT information from input stream to
    #   output stream. "Follow input SDT if present" copies SDT
    #   information from input stream to output stream if SDT information is
    #   present in the input, otherwise it will fall back on the
    #   user-defined values. Enter "SDT Manually" means user will enter
    #   the SDT information. "No SDT" means output stream will not contain
    #   SDT information.
    #   @return [String]
    #
    # @!attribute [rw] sdt_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] service_name
    #   The service name placed in the service\_descriptor in the Service
    #   Description Table. Maximum length is 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] service_provider_name
    #   The service provider name placed in the service\_descriptor in the
    #   Service Description Table. Maximum length is 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DvbSdtSettings AWS API Documentation
    #
    class DvbSdtSettings < Struct.new(
      :output_sdt,
      :sdt_interval,
      :service_name,
      :service_provider_name)
      include Aws::Structure
    end

    # DVB-Sub Destination Settings
    #
    # @note When making an API call, you may pass DvbSubDestinationSettings
    #   data as a hash:
    #
    #       {
    #         alignment: "CENTERED", # accepts CENTERED, LEFT
    #         background_color: "NONE", # accepts NONE, BLACK, WHITE
    #         background_opacity: 1,
    #         font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #         font_opacity: 1,
    #         font_resolution: 1,
    #         font_size: 1,
    #         outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #         outline_size: 1,
    #         shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #         shadow_opacity: 1,
    #         shadow_x_offset: 1,
    #         shadow_y_offset: 1,
    #         teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #         x_position: 1,
    #         y_position: 1,
    #       }
    #
    # @!attribute [rw] alignment
    #   If no explicit x\_position or y\_position is provided, setting
    #   alignment to centered will place the captions at the bottom center
    #   of the output. Similarly, setting a left alignment will align
    #   captions to the bottom left of the output. If x and y positions are
    #   given in conjunction with the alignment parameter, the font will be
    #   justified (either left or centered) relative to those coordinates.
    #   This option is not valid for source captions that are STL,
    #   608/embedded or teletext. These source settings are already
    #   pre-defined by the caption stream. All burn-in and DVB-Sub font
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
    #   is transparent. Leaving this parameter blank is equivalent to
    #   setting it to 0 (transparent). All burn-in and DVB-Sub font settings
    #   must match.
    #   @return [Integer]
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
    #   A positive integer indicates the exact font size in points. Set to 0
    #   for automatic font size selection. All burn-in and DVB-Sub font
    #   settings must match.
    #   @return [Integer]
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
    # @!attribute [rw] teletext_spacing
    #   Only applies to jobs with input captions in Teletext or STL formats.
    #   Specify whether the spacing between letters in your captions is set
    #   by the captions grid or varies depending on letter width. Choose
    #   fixed grid to conform to the spacing specified in the captions file
    #   more accurately. Choose proportional to make the text easier to read
    #   if the captions are closed caption.
    #   @return [String]
    #
    # @!attribute [rw] x_position
    #   Specifies the horizontal position of the caption relative to the
    #   left side of the output in pixels. A value of 10 would result in the
    #   captions starting 10 pixels from the left of the output. If no
    #   explicit x\_position is provided, the horizontal caption position
    #   will be determined by the alignment parameter. This option is not
    #   valid for source captions that are STL, 608/embedded or teletext.
    #   These source settings are already pre-defined by the caption stream.
    #   All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    #
    # @!attribute [rw] y_position
    #   Specifies the vertical position of the caption relative to the top
    #   of the output in pixels. A value of 10 would result in the captions
    #   starting 10 pixels from the top of the output. If no explicit
    #   y\_position is provided, the caption will be positioned towards the
    #   bottom of the output. This option is not valid for source captions
    #   that are STL, 608/embedded or teletext. These source settings are
    #   already pre-defined by the caption stream. All burn-in and DVB-Sub
    #   font settings must match.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DvbSubDestinationSettings AWS API Documentation
    #
    class DvbSubDestinationSettings < Struct.new(
      :alignment,
      :background_color,
      :background_opacity,
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
      :teletext_spacing,
      :x_position,
      :y_position)
      include Aws::Structure
    end

    # DVB Sub Source Settings
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DvbSubSourceSettings AWS API Documentation
    #
    class DvbSubSourceSettings < Struct.new(
      :pid)
      include Aws::Structure
    end

    # Inserts DVB Time and Date Table (TDT) at the specified table
    # repetition interval.
    #
    # @note When making an API call, you may pass DvbTdtSettings
    #   data as a hash:
    #
    #       {
    #         tdt_interval: 1,
    #       }
    #
    # @!attribute [rw] tdt_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DvbTdtSettings AWS API Documentation
    #
    class DvbTdtSettings < Struct.new(
      :tdt_interval)
      include Aws::Structure
    end

    # Required when you set (Codec) under
    # (AudioDescriptions)>(CodecSettings) to the value EAC3.
    #
    # @note When making an API call, you may pass Eac3Settings
    #   data as a hash:
    #
    #       {
    #         attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #         bitrate: 1,
    #         bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #         coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #         dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #         dialnorm: 1,
    #         dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #         dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #         lfe_control: "LFE", # accepts LFE, NO_LFE
    #         lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #         lo_ro_center_mix_level: 1.0,
    #         lo_ro_surround_mix_level: 1.0,
    #         lt_rt_center_mix_level: 1.0,
    #         lt_rt_surround_mix_level: 1.0,
    #         metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #         passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #         phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #         sample_rate: 1,
    #         stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #         surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #         surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] attenuation_control
    #   If set to ATTENUATE\_3\_DB, applies a 3 dB attenuation to the
    #   surround channels. Only used for 3/2 coding mode.
    #   @return [String]
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second. Valid bitrates depend on the coding
    #   mode.
    #   @return [Integer]
    #
    # @!attribute [rw] bitstream_mode
    #   Specifies the "Bitstream Mode" (bsmod) for the emitted E-AC-3
    #   stream. See ATSC A/52-2012 (Annex E) for background on these values.
    #   @return [String]
    #
    # @!attribute [rw] coding_mode
    #   Dolby Digital Plus coding mode. Determines number of channels.
    #   @return [String]
    #
    # @!attribute [rw] dc_filter
    #   Activates a DC highpass filter for all input channels.
    #   @return [String]
    #
    # @!attribute [rw] dialnorm
    #   Sets the dialnorm for the output. If blank and input audio is Dolby
    #   Digital Plus, dialnorm will be passed through.
    #   @return [Integer]
    #
    # @!attribute [rw] dynamic_range_compression_line
    #   Enables Dynamic Range Compression that restricts the absolute peak
    #   level for a signal.
    #   @return [String]
    #
    # @!attribute [rw] dynamic_range_compression_rf
    #   Enables Heavy Dynamic Range Compression, ensures that the
    #   instantaneous signal peaks do not exceed specified levels.
    #   @return [String]
    #
    # @!attribute [rw] lfe_control
    #   When encoding 3/2 audio, controls whether the LFE channel is enabled
    #   @return [String]
    #
    # @!attribute [rw] lfe_filter
    #   Applies a 120Hz lowpass filter to the LFE channel prior to encoding.
    #   Only valid with 3\_2\_LFE coding mode.
    #   @return [String]
    #
    # @!attribute [rw] lo_ro_center_mix_level
    #   Left only/Right only center mix level. Only used for 3/2 coding
    #   mode. Valid values: 3.0, 1.5, 0.0, -1.5 -3.0 -4.5 -6.0 -60
    #   @return [Float]
    #
    # @!attribute [rw] lo_ro_surround_mix_level
    #   Left only/Right only surround mix level. Only used for 3/2 coding
    #   mode. Valid values: -1.5 -3.0 -4.5 -6.0 -60
    #   @return [Float]
    #
    # @!attribute [rw] lt_rt_center_mix_level
    #   Left total/Right total center mix level. Only used for 3/2 coding
    #   mode. Valid values: 3.0, 1.5, 0.0, -1.5 -3.0 -4.5 -6.0 -60
    #   @return [Float]
    #
    # @!attribute [rw] lt_rt_surround_mix_level
    #   Left total/Right total surround mix level. Only used for 3/2 coding
    #   mode. Valid values: -1.5 -3.0 -4.5 -6.0 -60
    #   @return [Float]
    #
    # @!attribute [rw] metadata_control
    #   When set to FOLLOW\_INPUT, encoder metadata will be sourced from the
    #   DD, DD+, or DolbyE decoder that supplied this audio data. If audio
    #   was not supplied from one of these streams, then the static metadata
    #   settings will be used.
    #   @return [String]
    #
    # @!attribute [rw] passthrough_control
    #   When set to WHEN\_POSSIBLE, input DD+ audio will be passed through
    #   if it is present on the input. this detection is dynamic over the
    #   life of the transcode. Inputs that alternate between DD+ and non-DD+
    #   content will have a consistent DD+ output as the system alternates
    #   between passthrough and encoding.
    #   @return [String]
    #
    # @!attribute [rw] phase_control
    #   Controls the amount of phase-shift applied to the surround channels.
    #   Only used for 3/2 coding mode.
    #   @return [String]
    #
    # @!attribute [rw] sample_rate
    #   Sample rate in hz. Sample rate is always 48000.
    #   @return [Integer]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Eac3Settings AWS API Documentation
    #
    class Eac3Settings < Struct.new(
      :attenuation_control,
      :bitrate,
      :bitstream_mode,
      :coding_mode,
      :dc_filter,
      :dialnorm,
      :dynamic_range_compression_line,
      :dynamic_range_compression_rf,
      :lfe_control,
      :lfe_filter,
      :lo_ro_center_mix_level,
      :lo_ro_surround_mix_level,
      :lt_rt_center_mix_level,
      :lt_rt_surround_mix_level,
      :metadata_control,
      :passthrough_control,
      :phase_control,
      :sample_rate,
      :stereo_downmix,
      :surround_ex_mode,
      :surround_mode)
      include Aws::Structure
    end

    # Settings for embedded captions Source
    #
    # @note When making an API call, you may pass EmbeddedSourceSettings
    #   data as a hash:
    #
    #       {
    #         convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #         source_608_channel_number: 1,
    #         source_608_track_number: 1,
    #       }
    #
    # @!attribute [rw] convert_608_to_708
    #   When set to UPCONVERT, 608 data is both passed through via the "608
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
    # @!attribute [rw] source_608_track_number
    #   Specifies the video track index used for extracting captions. The
    #   system only supports one input video track, so this should always be
    #   set to '1'.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/EmbeddedSourceSettings AWS API Documentation
    #
    class EmbeddedSourceSettings < Struct.new(
      :convert_608_to_708,
      :source_608_channel_number,
      :source_608_track_number)
      include Aws::Structure
    end

    # Describes an account-specific API endpoint.
    #
    # @!attribute [rw] url
    #   URL of endpoint
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :url)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ExceptionBody AWS API Documentation
    #
    class ExceptionBody < Struct.new(
      :message)
      include Aws::Structure
    end

    # Settings for F4v container
    #
    # @note When making an API call, you may pass F4vSettings
    #   data as a hash:
    #
    #       {
    #         moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #       }
    #
    # @!attribute [rw] moov_placement
    #   If set to PROGRESSIVE\_DOWNLOAD, the MOOV atom is relocated to the
    #   beginning of the archive as required for progressive downloading.
    #   Otherwise it is placed normally at the end.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/F4vSettings AWS API Documentation
    #
    class F4vSettings < Struct.new(
      :moov_placement)
      include Aws::Structure
    end

    # Required when you set (Type) under
    # (OutputGroups)>(OutputGroupSettings) to FILE\_GROUP\_SETTINGS.
    #
    # @note When making an API call, you may pass FileGroupSettings
    #   data as a hash:
    #
    #       {
    #         destination: "__stringPatternS3",
    #       }
    #
    # @!attribute [rw] destination
    #   Use Destination (Destination) to specify the S3 output location and
    #   the output filename base. Destination accepts format identifiers. If
    #   you do not specify the base filename in the URI, the service will
    #   use the filename of the input file. If your job has multiple inputs,
    #   the service uses the filename of the first input file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/FileGroupSettings AWS API Documentation
    #
    class FileGroupSettings < Struct.new(
      :destination)
      include Aws::Structure
    end

    # Settings for File-based Captions in Source
    #
    # @note When making an API call, you may pass FileSourceSettings
    #   data as a hash:
    #
    #       {
    #         convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #         source_file: "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI",
    #         time_delta: 1,
    #       }
    #
    # @!attribute [rw] convert_608_to_708
    #   If set to UPCONVERT, 608 caption data is both passed through via the
    #   "608 compatibility bytes" fields of the 708 wrapper as well as
    #   translated into 708. 708 data present in the source content will be
    #   discarded.
    #   @return [String]
    #
    # @!attribute [rw] source_file
    #   External caption file used for loading captions. Accepted file
    #   extensions are 'scc', 'ttml', 'dfxp', 'stl', 'srt', and
    #   'smi'.
    #   @return [String]
    #
    # @!attribute [rw] time_delta
    #   Specifies a time delta in seconds to offset the captions from the
    #   source file.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/FileSourceSettings AWS API Documentation
    #
    class FileSourceSettings < Struct.new(
      :convert_608_to_708,
      :source_file,
      :time_delta)
      include Aws::Structure
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings)
    # to the value FRAME\_CAPTURE.
    #
    # @note When making an API call, you may pass FrameCaptureSettings
    #   data as a hash:
    #
    #       {
    #         framerate_denominator: 1,
    #         framerate_numerator: 1,
    #         max_captures: 1,
    #         quality: 1,
    #       }
    #
    # @!attribute [rw] framerate_denominator
    #   Frame capture will encode the first frame of the output stream, then
    #   one frame every framerateDenominator/framerateNumerator seconds. For
    #   example, settings of framerateNumerator = 1 and framerateDenominator
    #   = 3 (a rate of 1/3 frame per second) will capture the first frame,
    #   then 1 frame every 3s. Files will be named as filename.n.jpg where n
    #   is the 0-based sequence number of each Capture.
    #   @return [Integer]
    #
    # @!attribute [rw] framerate_numerator
    #   Frame capture will encode the first frame of the output stream, then
    #   one frame every framerateDenominator/framerateNumerator seconds. For
    #   example, settings of framerateNumerator = 1 and framerateDenominator
    #   = 3 (a rate of 1/3 frame per second) will capture the first frame,
    #   then 1 frame every 3s. Files will be named as filename.NNNNNNN.jpg
    #   where N is the 0-based frame sequence number zero padded to 7
    #   decimal places.
    #   @return [Integer]
    #
    # @!attribute [rw] max_captures
    #   Maximum number of captures (encoded jpg output files).
    #   @return [Integer]
    #
    # @!attribute [rw] quality
    #   JPEG Quality - a higher value equals higher quality.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/FrameCaptureSettings AWS API Documentation
    #
    class FrameCaptureSettings < Struct.new(
      :framerate_denominator,
      :framerate_numerator,
      :max_captures,
      :quality)
      include Aws::Structure
    end

    # Query a job by sending a request with the job ID.
    #
    # @note When making an API call, you may pass GetJobRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   the job ID of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetJobRequest AWS API Documentation
    #
    class GetJobRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # Successful get job requests will return an OK message and the job
    # JSON.
    #
    # @!attribute [rw] job
    #   Each job converts an input file into an output file or files. For
    #   more information, see the User Guide at
    #   http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetJobResponse AWS API Documentation
    #
    class GetJobResponse < Struct.new(
      :job)
      include Aws::Structure
    end

    # Query a job template by sending a request with the job template name.
    #
    # @note When making an API call, you may pass GetJobTemplateRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the job template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetJobTemplateRequest AWS API Documentation
    #
    class GetJobTemplateRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # Successful get job template requests will return an OK message and the
    # job template JSON.
    #
    # @!attribute [rw] job_template
    #   A job template is a pre-made set of encoding instructions that you
    #   can use to quickly create a job.
    #   @return [Types::JobTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetJobTemplateResponse AWS API Documentation
    #
    class GetJobTemplateResponse < Struct.new(
      :job_template)
      include Aws::Structure
    end

    # Query a preset by sending a request with the preset name.
    #
    # @note When making an API call, you may pass GetPresetRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the preset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetPresetRequest AWS API Documentation
    #
    class GetPresetRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # Successful get preset requests will return an OK message and the
    # preset JSON.
    #
    # @!attribute [rw] preset
    #   A preset is a collection of preconfigured media conversion settings
    #   that you want MediaConvert to apply to the output during the
    #   conversion process.
    #   @return [Types::Preset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetPresetResponse AWS API Documentation
    #
    class GetPresetResponse < Struct.new(
      :preset)
      include Aws::Structure
    end

    # Get information about a queue by sending a request with the queue
    # name.
    #
    # @note When making an API call, you may pass GetQueueRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the queue that you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetQueueRequest AWS API Documentation
    #
    class GetQueueRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # Successful get queue requests return an OK message and information
    # about the queue in JSON.
    #
    # @!attribute [rw] queue
    #   You can use queues to manage the resources that are available to
    #   your AWS account for running multiple transcoding jobs at the same
    #   time. If you don't specify a queue, the service sends all jobs
    #   through the default queue. For more information, see
    #   https://docs.aws.amazon.com/mediaconvert/latest/ug/about-resource-allocation-and-job-prioritization.html.
    #   @return [Types::Queue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetQueueResponse AWS API Documentation
    #
    class GetQueueResponse < Struct.new(
      :queue)
      include Aws::Structure
    end

    # Settings for quality-defined variable bitrate encoding with the H.264
    # codec. Required when you set Rate control mode to QVBR. Not valid when
    # you set Rate control mode to a value other than QVBR, or when you
    # don't define Rate control mode.
    #
    # @note When making an API call, you may pass H264QvbrSettings
    #   data as a hash:
    #
    #       {
    #         max_average_bitrate: 1,
    #         qvbr_quality_level: 1,
    #       }
    #
    # @!attribute [rw] max_average_bitrate
    #   Use this setting only when Rate control mode is QVBR and Quality
    #   tuning level is Multi-pass HQ. For Max average bitrate values suited
    #   to the complexity of your input video, the service limits the
    #   average bitrate of the video part of this output to the value you
    #   choose. That is, the total size of the video element is less than or
    #   equal to the value you set multiplied by the number of seconds of
    #   encoded output.
    #   @return [Integer]
    #
    # @!attribute [rw] qvbr_quality_level
    #   Required when you use QVBR rate control mode. That is, when you
    #   specify qvbrSettings within h264Settings. Specify the target quality
    #   level for this output, from 1 to 10. Use higher numbers for greater
    #   quality. Level 10 results in nearly lossless compression. The
    #   quality level for most broadcast-quality transcodes is between 6 and
    #   9.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/H264QvbrSettings AWS API Documentation
    #
    class H264QvbrSettings < Struct.new(
      :max_average_bitrate,
      :qvbr_quality_level)
      include Aws::Structure
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings)
    # to the value H\_264.
    #
    # @note When making an API call, you may pass H264Settings
    #   data as a hash:
    #
    #       {
    #         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #         bitrate: 1,
    #         codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #         codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #         entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #         field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #         flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #         framerate_denominator: 1,
    #         framerate_numerator: 1,
    #         gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #         gop_closed_cadence: 1,
    #         gop_size: 1.0,
    #         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #         hrd_buffer_initial_fill_percentage: 1,
    #         hrd_buffer_size: 1,
    #         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #         max_bitrate: 1,
    #         min_i_interval: 1,
    #         number_b_frames_between_reference_frames: 1,
    #         number_reference_frames: 1,
    #         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #         par_denominator: 1,
    #         par_numerator: 1,
    #         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #         qvbr_settings: {
    #           max_average_bitrate: 1,
    #           qvbr_quality_level: 1,
    #         },
    #         rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #         repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #         slices: 1,
    #         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #         softness: 1,
    #         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #         syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #         telecine: "NONE", # accepts NONE, SOFT, HARD
    #         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #         unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #       }
    #
    # @!attribute [rw] adaptive_quantization
    #   Adaptive quantization. Allows intra-frame quantizers to vary to
    #   improve visual quality.
    #   @return [String]
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second. Required for VBR and CBR. For MS
    #   Smooth outputs, bitrates must be unique when rounded down to the
    #   nearest multiple of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] codec_level
    #   H.264 Level.
    #   @return [String]
    #
    # @!attribute [rw] codec_profile
    #   H.264 Profile. High 4:2:2 and 10-bit profiles are only available
    #   with the AVC-I License.
    #   @return [String]
    #
    # @!attribute [rw] dynamic_sub_gop
    #   Choose Adaptive to improve subjective video quality for high-motion
    #   content. This will cause the service to use fewer B-frames (which
    #   infer information based on other frames) for high-motion portions of
    #   the video and more B-frames for low-motion portions. The maximum
    #   number of B-frames is limited by the value you provide for the
    #   setting B frames between reference frames
    #   (numberBFramesBetweenReferenceFrames).
    #   @return [String]
    #
    # @!attribute [rw] entropy_encoding
    #   Entropy encoding mode. Use CABAC (must be in Main or High profile)
    #   or CAVLC.
    #   @return [String]
    #
    # @!attribute [rw] field_encoding
    #   Choosing FORCE\_FIELD disables PAFF encoding for interlaced outputs.
    #   @return [String]
    #
    # @!attribute [rw] flicker_adaptive_quantization
    #   Adjust quantization within each frame to reduce flicker or 'pop'
    #   on I-frames.
    #   @return [String]
    #
    # @!attribute [rw] framerate_control
    #   If you are using the console, use the Framerate setting to specify
    #   the framerate for this output. If you want to keep the same
    #   framerate as the input video, choose Follow source. If you want to
    #   do framerate conversion, choose a framerate from the dropdown list
    #   or choose Custom. The framerates shown in the dropdown list are
    #   decimal approximations of fractions. If you choose Custom, specify
    #   your framerate as a fraction. If you are creating your transcoding
    #   job specification as a JSON file without the console, use
    #   FramerateControl to specify which value the service uses for the
    #   framerate for this output. Choose INITIALIZE\_FROM\_SOURCE if you
    #   want the service to use the framerate from the input. Choose
    #   SPECIFIED if you want the service to use the framerate you specify
    #   in the settings FramerateNumerator and FramerateDenominator.
    #   @return [String]
    #
    # @!attribute [rw] framerate_conversion_algorithm
    #   When set to INTERPOLATE, produces smoother motion during framerate
    #   conversion.
    #   @return [String]
    #
    # @!attribute [rw] framerate_denominator
    #   When you use the API for transcode jobs that use framerate
    #   conversion, specify the framerate as a fraction. For example, 24000
    #   / 1001 = 23.976 fps. Use FramerateDenominator to specify the
    #   denominator of this fraction. In this example, use 1001 for the
    #   value of FramerateDenominator. When you use the console for
    #   transcode jobs that use framerate conversion, provide the value as a
    #   decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    #
    # @!attribute [rw] framerate_numerator
    #   Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 =
    #   23.976 fps.
    #   @return [Integer]
    #
    # @!attribute [rw] gop_b_reference
    #   If enable, use reference B frames for GOP structures that have B
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
    # @!attribute [rw] gop_size
    #   GOP Length (keyframe interval) in frames or seconds. Must be greater
    #   than zero.
    #   @return [Float]
    #
    # @!attribute [rw] gop_size_units
    #   Indicates if the GOP Size in H264 is specified in frames or seconds.
    #   If seconds the system will convert the GOP Size into a frame count
    #   at run time.
    #   @return [String]
    #
    # @!attribute [rw] hrd_buffer_initial_fill_percentage
    #   Percentage of the buffer that should initially be filled (HRD buffer
    #   model).
    #   @return [Integer]
    #
    # @!attribute [rw] hrd_buffer_size
    #   Size of buffer (HRD buffer model) in bits. For example, enter five
    #   megabits as 5000000.
    #   @return [Integer]
    #
    # @!attribute [rw] interlace_mode
    #   Use Interlace mode (InterlaceMode) to choose the scan line type for
    #   the output. * Top Field First (TOP\_FIELD) and Bottom Field First
    #   (BOTTOM\_FIELD) produce interlaced output with the entire output
    #   having the same field polarity (top or bottom first). * Follow,
    #   Default Top (FOLLOW\_TOP\_FIELD) and Follow, Default Bottom
    #   (FOLLOW\_BOTTOM\_FIELD) use the same field polarity as the source.
    #   Therefore, behavior depends on the input scan type, as follows. - If
    #   the source is interlaced, the output will be interlaced with the
    #   same polarity as the source (it will follow the source). The output
    #   could therefore be a mix of "top field first" and "bottom field
    #   first". - If the source is progressive, the output will be
    #   interlaced with "top field first" or "bottom field first"
    #   polarity, depending on which of the Follow options you chose.
    #   @return [String]
    #
    # @!attribute [rw] max_bitrate
    #   Maximum bitrate in bits/second. For example, enter five megabits per
    #   second as 5000000. Required when Rate control mode is QVBR.
    #   @return [Integer]
    #
    # @!attribute [rw] min_i_interval
    #   Enforces separation between repeated (cadence) I-frames and I-frames
    #   inserted by Scene Change Detection. If a scene change I-frame is
    #   within I-interval frames of a cadence I-frame, the GOP is shrunk
    #   and/or stretched to the scene change I-frame. GOP stretch requires
    #   enabling lookahead as well as setting I-interval. The normal cadence
    #   resumes for the next GOP. This setting is only used when Scene
    #   Change Detect is enabled. Note: Maximum GOP stretch = GOP size +
    #   Min-I-interval - 1
    #   @return [Integer]
    #
    # @!attribute [rw] number_b_frames_between_reference_frames
    #   Number of B-frames between reference frames.
    #   @return [Integer]
    #
    # @!attribute [rw] number_reference_frames
    #   Number of reference frames to use. The encoder may use more than
    #   requested if using B-frames and/or interlaced encoding.
    #   @return [Integer]
    #
    # @!attribute [rw] par_control
    #   Using the API, enable ParFollowSource if you want the service to use
    #   the pixel aspect ratio from the input. Using the console, do this by
    #   choosing Follow source for Pixel aspect ratio.
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
    # @!attribute [rw] quality_tuning_level
    #   Use Quality tuning level (H264QualityTuningLevel) to specifiy
    #   whether to use fast single-pass, high-quality singlepass, or
    #   high-quality multipass video encoding.
    #   @return [String]
    #
    # @!attribute [rw] qvbr_settings
    #   Settings for quality-defined variable bitrate encoding with the
    #   H.264 codec. Required when you set Rate control mode to QVBR. Not
    #   valid when you set Rate control mode to a value other than QVBR, or
    #   when you don't define Rate control mode.
    #   @return [Types::H264QvbrSettings]
    #
    # @!attribute [rw] rate_control_mode
    #   Use this setting to specify whether this output has a variable
    #   bitrate (VBR), constant bitrate (CBR) or quality-defined variable
    #   bitrate (QVBR).
    #   @return [String]
    #
    # @!attribute [rw] repeat_pps
    #   Places a PPS header on each encoded picture, even if repeated.
    #   @return [String]
    #
    # @!attribute [rw] scene_change_detect
    #   Scene change detection (inserts I-frames on scene changes).
    #   @return [String]
    #
    # @!attribute [rw] slices
    #   Number of slices per picture. Must be less than or equal to the
    #   number of macroblock rows for progressive pictures, and less than or
    #   equal to half the number of macroblock rows for interlaced pictures.
    #   @return [Integer]
    #
    # @!attribute [rw] slow_pal
    #   Enables Slow PAL rate conversion. 23.976fps and 24fps input is
    #   relabeled as 25fps, and audio is sped up correspondingly.
    #   @return [String]
    #
    # @!attribute [rw] softness
    #   Softness. Selects quantizer matrix, larger values reduce
    #   high-frequency content in the encoded image.
    #   @return [Integer]
    #
    # @!attribute [rw] spatial_adaptive_quantization
    #   Adjust quantization within each frame based on spatial variation of
    #   content complexity.
    #   @return [String]
    #
    # @!attribute [rw] syntax
    #   Produces a bitstream compliant with SMPTE RP-2027.
    #   @return [String]
    #
    # @!attribute [rw] telecine
    #   This field applies only if the Streams > Advanced > Framerate
    #   (framerate) field is set to 29.970. This field works with the
    #   Streams > Advanced > Preprocessors > Deinterlacer field
    #   (deinterlace\_mode) and the Streams > Advanced > Interlaced Mode
    #   field (interlace\_mode) to identify the scan type for the output:
    #   Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard:
    #   produces 29.97i output from 23.976 input. - Soft: produces 23.976;
    #   the player converts this output to 29.97i.
    #   @return [String]
    #
    # @!attribute [rw] temporal_adaptive_quantization
    #   Adjust quantization within each frame based on temporal variation of
    #   content complexity.
    #   @return [String]
    #
    # @!attribute [rw] unregistered_sei_timecode
    #   Inserts timecode for each frame as 4 bytes of an unregistered SEI
    #   message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/H264Settings AWS API Documentation
    #
    class H264Settings < Struct.new(
      :adaptive_quantization,
      :bitrate,
      :codec_level,
      :codec_profile,
      :dynamic_sub_gop,
      :entropy_encoding,
      :field_encoding,
      :flicker_adaptive_quantization,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_b_reference,
      :gop_closed_cadence,
      :gop_size,
      :gop_size_units,
      :hrd_buffer_initial_fill_percentage,
      :hrd_buffer_size,
      :interlace_mode,
      :max_bitrate,
      :min_i_interval,
      :number_b_frames_between_reference_frames,
      :number_reference_frames,
      :par_control,
      :par_denominator,
      :par_numerator,
      :quality_tuning_level,
      :qvbr_settings,
      :rate_control_mode,
      :repeat_pps,
      :scene_change_detect,
      :slices,
      :slow_pal,
      :softness,
      :spatial_adaptive_quantization,
      :syntax,
      :telecine,
      :temporal_adaptive_quantization,
      :unregistered_sei_timecode)
      include Aws::Structure
    end

    # Settings for quality-defined variable bitrate encoding with the H.265
    # codec. Required when you set Rate control mode to QVBR. Not valid when
    # you set Rate control mode to a value other than QVBR, or when you
    # don't define Rate control mode.
    #
    # @note When making an API call, you may pass H265QvbrSettings
    #   data as a hash:
    #
    #       {
    #         max_average_bitrate: 1,
    #         qvbr_quality_level: 1,
    #       }
    #
    # @!attribute [rw] max_average_bitrate
    #   Use this setting only when Rate control mode is QVBR and Quality
    #   tuning level is Multi-pass HQ. For Max average bitrate values suited
    #   to the complexity of your input video, the service limits the
    #   average bitrate of the video part of this output to the value you
    #   choose. That is, the total size of the video element is less than or
    #   equal to the value you set multiplied by the number of seconds of
    #   encoded output.
    #   @return [Integer]
    #
    # @!attribute [rw] qvbr_quality_level
    #   Required when you use QVBR rate control mode. That is, when you
    #   specify qvbrSettings within h265Settings. Specify the target quality
    #   level for this output, from 1 to 10. Use higher numbers for greater
    #   quality. Level 10 results in nearly lossless compression. The
    #   quality level for most broadcast-quality transcodes is between 6 and
    #   9.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/H265QvbrSettings AWS API Documentation
    #
    class H265QvbrSettings < Struct.new(
      :max_average_bitrate,
      :qvbr_quality_level)
      include Aws::Structure
    end

    # Settings for H265 codec
    #
    # @note When making an API call, you may pass H265Settings
    #   data as a hash:
    #
    #       {
    #         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #         alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #         bitrate: 1,
    #         codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #         codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #         flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #         framerate_denominator: 1,
    #         framerate_numerator: 1,
    #         gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #         gop_closed_cadence: 1,
    #         gop_size: 1.0,
    #         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #         hrd_buffer_initial_fill_percentage: 1,
    #         hrd_buffer_size: 1,
    #         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #         max_bitrate: 1,
    #         min_i_interval: 1,
    #         number_b_frames_between_reference_frames: 1,
    #         number_reference_frames: 1,
    #         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #         par_denominator: 1,
    #         par_numerator: 1,
    #         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #         qvbr_settings: {
    #           max_average_bitrate: 1,
    #           qvbr_quality_level: 1,
    #         },
    #         rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #         sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #         slices: 1,
    #         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #         telecine: "NONE", # accepts NONE, SOFT, HARD
    #         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #         temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #         tiles: "DISABLED", # accepts DISABLED, ENABLED
    #         unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #         write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #       }
    #
    # @!attribute [rw] adaptive_quantization
    #   Adaptive quantization. Allows intra-frame quantizers to vary to
    #   improve visual quality.
    #   @return [String]
    #
    # @!attribute [rw] alternate_transfer_function_sei
    #   Enables Alternate Transfer Function SEI message for outputs using
    #   Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).
    #   @return [String]
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second. Required for VBR and CBR. For MS
    #   Smooth outputs, bitrates must be unique when rounded down to the
    #   nearest multiple of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] codec_level
    #   H.265 Level.
    #   @return [String]
    #
    # @!attribute [rw] codec_profile
    #   Represents the Profile and Tier, per the HEVC (H.265) specification.
    #   Selections are grouped as \[Profile\] / \[Tier\], so "Main/High"
    #   represents Main Profile with High Tier. 4:2:2 profiles are only
    #   available with the HEVC 4:2:2 License.
    #   @return [String]
    #
    # @!attribute [rw] dynamic_sub_gop
    #   Choose Adaptive to improve subjective video quality for high-motion
    #   content. This will cause the service to use fewer B-frames (which
    #   infer information based on other frames) for high-motion portions of
    #   the video and more B-frames for low-motion portions. The maximum
    #   number of B-frames is limited by the value you provide for the
    #   setting B frames between reference frames
    #   (numberBFramesBetweenReferenceFrames).
    #   @return [String]
    #
    # @!attribute [rw] flicker_adaptive_quantization
    #   Adjust quantization within each frame to reduce flicker or 'pop'
    #   on I-frames.
    #   @return [String]
    #
    # @!attribute [rw] framerate_control
    #   If you are using the console, use the Framerate setting to specify
    #   the framerate for this output. If you want to keep the same
    #   framerate as the input video, choose Follow source. If you want to
    #   do framerate conversion, choose a framerate from the dropdown list
    #   or choose Custom. The framerates shown in the dropdown list are
    #   decimal approximations of fractions. If you choose Custom, specify
    #   your framerate as a fraction. If you are creating your transcoding
    #   job sepecification as a JSON file without the console, use
    #   FramerateControl to specify which value the service uses for the
    #   framerate for this output. Choose INITIALIZE\_FROM\_SOURCE if you
    #   want the service to use the framerate from the input. Choose
    #   SPECIFIED if you want the service to use the framerate you specify
    #   in the settings FramerateNumerator and FramerateDenominator.
    #   @return [String]
    #
    # @!attribute [rw] framerate_conversion_algorithm
    #   When set to INTERPOLATE, produces smoother motion during framerate
    #   conversion.
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
    #   If enable, use reference B frames for GOP structures that have B
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
    # @!attribute [rw] gop_size
    #   GOP Length (keyframe interval) in frames or seconds. Must be greater
    #   than zero.
    #   @return [Float]
    #
    # @!attribute [rw] gop_size_units
    #   Indicates if the GOP Size in H265 is specified in frames or seconds.
    #   If seconds the system will convert the GOP Size into a frame count
    #   at run time.
    #   @return [String]
    #
    # @!attribute [rw] hrd_buffer_initial_fill_percentage
    #   Percentage of the buffer that should initially be filled (HRD buffer
    #   model).
    #   @return [Integer]
    #
    # @!attribute [rw] hrd_buffer_size
    #   Size of buffer (HRD buffer model) in bits. For example, enter five
    #   megabits as 5000000.
    #   @return [Integer]
    #
    # @!attribute [rw] interlace_mode
    #   Use Interlace mode (InterlaceMode) to choose the scan line type for
    #   the output. * Top Field First (TOP\_FIELD) and Bottom Field First
    #   (BOTTOM\_FIELD) produce interlaced output with the entire output
    #   having the same field polarity (top or bottom first). * Follow,
    #   Default Top (FOLLOW\_TOP\_FIELD) and Follow, Default Bottom
    #   (FOLLOW\_BOTTOM\_FIELD) use the same field polarity as the source.
    #   Therefore, behavior depends on the input scan type. - If the source
    #   is interlaced, the output will be interlaced with the same polarity
    #   as the source (it will follow the source). The output could
    #   therefore be a mix of "top field first" and "bottom field
    #   first". - If the source is progressive, the output will be
    #   interlaced with "top field first" or "bottom field first"
    #   polarity, depending on which of the Follow options you chose.
    #   @return [String]
    #
    # @!attribute [rw] max_bitrate
    #   Maximum bitrate in bits/second. For example, enter five megabits per
    #   second as 5000000. Required when Rate control mode is QVBR.
    #   @return [Integer]
    #
    # @!attribute [rw] min_i_interval
    #   Enforces separation between repeated (cadence) I-frames and I-frames
    #   inserted by Scene Change Detection. If a scene change I-frame is
    #   within I-interval frames of a cadence I-frame, the GOP is shrunk
    #   and/or stretched to the scene change I-frame. GOP stretch requires
    #   enabling lookahead as well as setting I-interval. The normal cadence
    #   resumes for the next GOP. This setting is only used when Scene
    #   Change Detect is enabled. Note: Maximum GOP stretch = GOP size +
    #   Min-I-interval - 1
    #   @return [Integer]
    #
    # @!attribute [rw] number_b_frames_between_reference_frames
    #   Number of B-frames between reference frames.
    #   @return [Integer]
    #
    # @!attribute [rw] number_reference_frames
    #   Number of reference frames to use. The encoder may use more than
    #   requested if using B-frames and/or interlaced encoding.
    #   @return [Integer]
    #
    # @!attribute [rw] par_control
    #   Using the API, enable ParFollowSource if you want the service to use
    #   the pixel aspect ratio from the input. Using the console, do this by
    #   choosing Follow source for Pixel aspect ratio.
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
    # @!attribute [rw] quality_tuning_level
    #   Use Quality tuning level (H265QualityTuningLevel) to specifiy
    #   whether to use fast single-pass, high-quality singlepass, or
    #   high-quality multipass video encoding.
    #   @return [String]
    #
    # @!attribute [rw] qvbr_settings
    #   Settings for quality-defined variable bitrate encoding with the
    #   H.265 codec. Required when you set Rate control mode to QVBR. Not
    #   valid when you set Rate control mode to a value other than QVBR, or
    #   when you don't define Rate control mode.
    #   @return [Types::H265QvbrSettings]
    #
    # @!attribute [rw] rate_control_mode
    #   Use this setting to specify whether this output has a variable
    #   bitrate (VBR), constant bitrate (CBR) or quality-defined variable
    #   bitrate (QVBR).
    #   @return [String]
    #
    # @!attribute [rw] sample_adaptive_offset_filter_mode
    #   Specify Sample Adaptive Offset (SAO) filter strength. Adaptive mode
    #   dynamically selects best strength based on content
    #   @return [String]
    #
    # @!attribute [rw] scene_change_detect
    #   Scene change detection (inserts I-frames on scene changes).
    #   @return [String]
    #
    # @!attribute [rw] slices
    #   Number of slices per picture. Must be less than or equal to the
    #   number of macroblock rows for progressive pictures, and less than or
    #   equal to half the number of macroblock rows for interlaced pictures.
    #   @return [Integer]
    #
    # @!attribute [rw] slow_pal
    #   Enables Slow PAL rate conversion. 23.976fps and 24fps input is
    #   relabeled as 25fps, and audio is sped up correspondingly.
    #   @return [String]
    #
    # @!attribute [rw] spatial_adaptive_quantization
    #   Adjust quantization within each frame based on spatial variation of
    #   content complexity.
    #   @return [String]
    #
    # @!attribute [rw] telecine
    #   This field applies only if the Streams > Advanced > Framerate
    #   (framerate) field is set to 29.970. This field works with the
    #   Streams > Advanced > Preprocessors > Deinterlacer field
    #   (deinterlace\_mode) and the Streams > Advanced > Interlaced Mode
    #   field (interlace\_mode) to identify the scan type for the output:
    #   Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard:
    #   produces 29.97i output from 23.976 input. - Soft: produces 23.976;
    #   the player converts this output to 29.97i.
    #   @return [String]
    #
    # @!attribute [rw] temporal_adaptive_quantization
    #   Adjust quantization within each frame based on temporal variation of
    #   content complexity.
    #   @return [String]
    #
    # @!attribute [rw] temporal_ids
    #   Enables temporal layer identifiers in the encoded bitstream. Up to 3
    #   layers are supported depending on GOP structure: I- and P-frames
    #   form one layer, reference B-frames can form a second layer and
    #   non-reference b-frames can form a third layer. Decoders can
    #   optionally decode only the lower temporal layers to generate a lower
    #   frame rate output. For example, given a bitstream with temporal IDs
    #   and with b-frames = 1 (i.e. IbPbPb display order), a decoder could
    #   decode all the frames for full frame rate output or only the I and P
    #   frames (lowest temporal layer) for a half frame rate output.
    #   @return [String]
    #
    # @!attribute [rw] tiles
    #   Enable use of tiles, allowing horizontal as well as vertical
    #   subdivision of the encoded pictures.
    #   @return [String]
    #
    # @!attribute [rw] unregistered_sei_timecode
    #   Inserts timecode for each frame as 4 bytes of an unregistered SEI
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] write_mp_4_packaging_type
    #   If HVC1, output that is H.265 will be marked as HVC1 and adhere to
    #   the ISO-IECJTC1-SC29\_N13798\_Text\_ISOIEC\_FDIS\_14496-15\_3rd\_E
    #   spec which states that parameter set NAL units will be stored in the
    #   sample headers but not in the samples directly. If HEV1, then H.265
    #   will be marked as HEV1 and parameter set NAL units will be written
    #   into the samples.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/H265Settings AWS API Documentation
    #
    class H265Settings < Struct.new(
      :adaptive_quantization,
      :alternate_transfer_function_sei,
      :bitrate,
      :codec_level,
      :codec_profile,
      :dynamic_sub_gop,
      :flicker_adaptive_quantization,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_b_reference,
      :gop_closed_cadence,
      :gop_size,
      :gop_size_units,
      :hrd_buffer_initial_fill_percentage,
      :hrd_buffer_size,
      :interlace_mode,
      :max_bitrate,
      :min_i_interval,
      :number_b_frames_between_reference_frames,
      :number_reference_frames,
      :par_control,
      :par_denominator,
      :par_numerator,
      :quality_tuning_level,
      :qvbr_settings,
      :rate_control_mode,
      :sample_adaptive_offset_filter_mode,
      :scene_change_detect,
      :slices,
      :slow_pal,
      :spatial_adaptive_quantization,
      :telecine,
      :temporal_adaptive_quantization,
      :temporal_ids,
      :tiles,
      :unregistered_sei_timecode,
      :write_mp_4_packaging_type)
      include Aws::Structure
    end

    # Use the HDR master display (Hdr10Metadata) settings to correct HDR
    # metadata or to provide missing metadata. These values vary depending
    # on the input video and must be provided by a color grader. Range is 0
    # to 50,000, each increment represents 0.00002 in CIE1931 color
    # coordinate. Note that these settings are not color correction. Note
    # that if you are creating HDR outputs inside of an HLS CMAF package, to
    # comply with the Apple specification, you must use the HVC1 for H.265
    # setting.
    #
    # @note When making an API call, you may pass Hdr10Metadata
    #   data as a hash:
    #
    #       {
    #         blue_primary_x: 1,
    #         blue_primary_y: 1,
    #         green_primary_x: 1,
    #         green_primary_y: 1,
    #         max_content_light_level: 1,
    #         max_frame_average_light_level: 1,
    #         max_luminance: 1,
    #         min_luminance: 1,
    #         red_primary_x: 1,
    #         red_primary_y: 1,
    #         white_point_x: 1,
    #         white_point_y: 1,
    #       }
    #
    # @!attribute [rw] blue_primary_x
    #   HDR Master Display Information must be provided by a color grader,
    #   using color grading tools. Range is 0 to 50,000, each increment
    #   represents 0.00002 in CIE1931 color coordinate. Note that this
    #   setting is not for color correction.
    #   @return [Integer]
    #
    # @!attribute [rw] blue_primary_y
    #   HDR Master Display Information must be provided by a color grader,
    #   using color grading tools. Range is 0 to 50,000, each increment
    #   represents 0.00002 in CIE1931 color coordinate. Note that this
    #   setting is not for color correction.
    #   @return [Integer]
    #
    # @!attribute [rw] green_primary_x
    #   HDR Master Display Information must be provided by a color grader,
    #   using color grading tools. Range is 0 to 50,000, each increment
    #   represents 0.00002 in CIE1931 color coordinate. Note that this
    #   setting is not for color correction.
    #   @return [Integer]
    #
    # @!attribute [rw] green_primary_y
    #   HDR Master Display Information must be provided by a color grader,
    #   using color grading tools. Range is 0 to 50,000, each increment
    #   represents 0.00002 in CIE1931 color coordinate. Note that this
    #   setting is not for color correction.
    #   @return [Integer]
    #
    # @!attribute [rw] max_content_light_level
    #   Maximum light level among all samples in the coded video sequence,
    #   in units of candelas per square meter.
    #   @return [Integer]
    #
    # @!attribute [rw] max_frame_average_light_level
    #   Maximum average light level of any frame in the coded video
    #   sequence, in units of candelas per square meter.
    #   @return [Integer]
    #
    # @!attribute [rw] max_luminance
    #   Nominal maximum mastering display luminance in units of of 0.0001
    #   candelas per square meter.
    #   @return [Integer]
    #
    # @!attribute [rw] min_luminance
    #   Nominal minimum mastering display luminance in units of of 0.0001
    #   candelas per square meter
    #   @return [Integer]
    #
    # @!attribute [rw] red_primary_x
    #   HDR Master Display Information must be provided by a color grader,
    #   using color grading tools. Range is 0 to 50,000, each increment
    #   represents 0.00002 in CIE1931 color coordinate. Note that this
    #   setting is not for color correction.
    #   @return [Integer]
    #
    # @!attribute [rw] red_primary_y
    #   HDR Master Display Information must be provided by a color grader,
    #   using color grading tools. Range is 0 to 50,000, each increment
    #   represents 0.00002 in CIE1931 color coordinate. Note that this
    #   setting is not for color correction.
    #   @return [Integer]
    #
    # @!attribute [rw] white_point_x
    #   HDR Master Display Information must be provided by a color grader,
    #   using color grading tools. Range is 0 to 50,000, each increment
    #   represents 0.00002 in CIE1931 color coordinate. Note that this
    #   setting is not for color correction.
    #   @return [Integer]
    #
    # @!attribute [rw] white_point_y
    #   HDR Master Display Information must be provided by a color grader,
    #   using color grading tools. Range is 0 to 50,000, each increment
    #   represents 0.00002 in CIE1931 color coordinate. Note that this
    #   setting is not for color correction.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Hdr10Metadata AWS API Documentation
    #
    class Hdr10Metadata < Struct.new(
      :blue_primary_x,
      :blue_primary_y,
      :green_primary_x,
      :green_primary_y,
      :max_content_light_level,
      :max_frame_average_light_level,
      :max_luminance,
      :min_luminance,
      :red_primary_x,
      :red_primary_y,
      :white_point_x,
      :white_point_y)
      include Aws::Structure
    end

    # Caption Language Mapping
    #
    # @note When making an API call, you may pass HlsCaptionLanguageMapping
    #   data as a hash:
    #
    #       {
    #         caption_channel: 1,
    #         custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #         language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #         language_description: "__string",
    #       }
    #
    # @!attribute [rw] caption_channel
    #   Caption channel.
    #   @return [Integer]
    #
    # @!attribute [rw] custom_language_code
    #   Specify the language for this caption channel, using the ISO 639-2
    #   or ISO 639-3 three-letter language code
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Specify the language, using the ISO 639-2 three-letter code listed
    #   at https://www.loc.gov/standards/iso639-2/php/code\_list.php.
    #   @return [String]
    #
    # @!attribute [rw] language_description
    #   Caption language description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/HlsCaptionLanguageMapping AWS API Documentation
    #
    class HlsCaptionLanguageMapping < Struct.new(
      :caption_channel,
      :custom_language_code,
      :language_code,
      :language_description)
      include Aws::Structure
    end

    # Settings for HLS encryption
    #
    # @note When making an API call, you may pass HlsEncryptionSettings
    #   data as a hash:
    #
    #       {
    #         constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #         encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #         initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #         speke_key_provider: {
    #           resource_id: "__string",
    #           system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #           url: "__stringPatternHttps",
    #         },
    #         static_key_provider: {
    #           key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #           key_format_versions: "__stringPatternDD",
    #           static_key_value: "__stringPatternAZaZ0932",
    #           url: "__string",
    #         },
    #         type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #       }
    #
    # @!attribute [rw] constant_initialization_vector
    #   This is a 128-bit, 16-byte hex value represented by a 32-character
    #   text string. If this parameter is not set then the Initialization
    #   Vector will follow the segment number by default.
    #   @return [String]
    #
    # @!attribute [rw] encryption_method
    #   Encrypts the segments with the given encryption scheme. Leave blank
    #   to disable. Selecting 'Disabled' in the web interface also
    #   disables encryption.
    #   @return [String]
    #
    # @!attribute [rw] initialization_vector_in_manifest
    #   The Initialization Vector is a 128-bit number used in conjunction
    #   with the key for encrypting blocks. If set to INCLUDE,
    #   Initialization Vector is listed in the manifest. Otherwise
    #   Initialization Vector is not in the manifest.
    #   @return [String]
    #
    # @!attribute [rw] speke_key_provider
    #   Settings for use with a SPEKE key provider
    #   @return [Types::SpekeKeyProvider]
    #
    # @!attribute [rw] static_key_provider
    #   Settings for use with a SPEKE key provider.
    #   @return [Types::StaticKeyProvider]
    #
    # @!attribute [rw] type
    #   Indicates which type of key provider is used for encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/HlsEncryptionSettings AWS API Documentation
    #
    class HlsEncryptionSettings < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :initialization_vector_in_manifest,
      :speke_key_provider,
      :static_key_provider,
      :type)
      include Aws::Structure
    end

    # Required when you set (Type) under
    # (OutputGroups)>(OutputGroupSettings) to HLS\_GROUP\_SETTINGS.
    #
    # @note When making an API call, you may pass HlsGroupSettings
    #   data as a hash:
    #
    #       {
    #         ad_markers: ["ELEMENTAL"], # accepts ELEMENTAL, ELEMENTAL_SCTE35
    #         base_url: "__string",
    #         caption_language_mappings: [
    #           {
    #             caption_channel: 1,
    #             custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #             language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #             language_description: "__string",
    #           },
    #         ],
    #         caption_language_setting: "INSERT", # accepts INSERT, OMIT, NONE
    #         client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #         codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #         destination: "__stringPatternS3",
    #         directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #         encryption: {
    #           constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #           encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #           initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           speke_key_provider: {
    #             resource_id: "__string",
    #             system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #             url: "__stringPatternHttps",
    #           },
    #           static_key_provider: {
    #             key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #             key_format_versions: "__stringPatternDD",
    #             static_key_value: "__stringPatternAZaZ0932",
    #             url: "__string",
    #           },
    #           type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #         },
    #         manifest_compression: "GZIP", # accepts GZIP, NONE
    #         manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #         min_final_segment_length: 1.0,
    #         min_segment_length: 1,
    #         output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #         program_date_time: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #         program_date_time_period: 1,
    #         segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #         segment_length: 1,
    #         segments_per_subdirectory: 1,
    #         stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #         timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #         timed_metadata_id_3_period: 1,
    #         timestamp_delta_milliseconds: 1,
    #       }
    #
    # @!attribute [rw] ad_markers
    #   Choose one or more ad marker types to pass SCTE35 signals through to
    #   this group of Apple HLS outputs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] base_url
    #   A partial URI prefix that will be prepended to each output in the
    #   media .m3u8 file. Can be used if base manifest is delivered from a
    #   different URL than the main .m3u8 file.
    #   @return [String]
    #
    # @!attribute [rw] caption_language_mappings
    #   Language to be used on Caption outputs
    #   @return [Array<Types::HlsCaptionLanguageMapping>]
    #
    # @!attribute [rw] caption_language_setting
    #   Applies only to 608 Embedded output captions. Insert: Include
    #   CLOSED-CAPTIONS lines in the manifest. Specify at least one language
    #   in the CC1 Language Code field. One CLOSED-CAPTION line is added for
    #   each Language Code you specify. Make sure to specify the languages
    #   in the order in which they appear in the original source (if the
    #   source is embedded format) or the order of the caption selectors (if
    #   the source is other than embedded). Otherwise, languages in the
    #   manifest will not match up properly with the output captions. None:
    #   Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any
    #   CLOSED-CAPTIONS line from the manifest.
    #   @return [String]
    #
    # @!attribute [rw] client_cache
    #   When set to ENABLED, sets #EXT-X-ALLOW-CACHE:no tag, which prevents
    #   client from saving media segments for later replay.
    #   @return [String]
    #
    # @!attribute [rw] codec_specification
    #   Specification to use (RFC-6381 or the default RFC-4281) during m3u8
    #   playlist generation.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   Use Destination (Destination) to specify the S3 output location and
    #   the output filename base. Destination accepts format identifiers. If
    #   you do not specify the base filename in the URI, the service will
    #   use the filename of the input file. If your job has multiple inputs,
    #   the service uses the filename of the first input file.
    #   @return [String]
    #
    # @!attribute [rw] directory_structure
    #   Indicates whether segments should be placed in subdirectories.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   DRM settings.
    #   @return [Types::HlsEncryptionSettings]
    #
    # @!attribute [rw] manifest_compression
    #   When set to GZIP, compresses HLS playlist.
    #   @return [String]
    #
    # @!attribute [rw] manifest_duration_format
    #   Indicates whether the output manifest should use floating point
    #   values for segment duration.
    #   @return [String]
    #
    # @!attribute [rw] min_final_segment_length
    #   Keep this setting at the default value of 0, unless you are
    #   troubleshooting a problem with how devices play back the end of your
    #   video asset. If you know that player devices are hanging on the
    #   final segment of your video because the length of your final segment
    #   is too short, use this setting to specify a minimum final segment
    #   length, in seconds. Choose a value that is greater than or equal to
    #   1 and less than your segment length. When you specify a value for
    #   this setting, the encoder will combine any final segment that is
    #   shorter than the length that you specify with the previous segment.
    #   For example, your segment length is 3 seconds and your final segment
    #   is .5 seconds without a minimum final segment length; when you set
    #   the minimum final segment length to 1, your final segment is 3.5
    #   seconds.
    #   @return [Float]
    #
    # @!attribute [rw] min_segment_length
    #   When set, Minimum Segment Size is enforced by looking ahead and back
    #   within the specified range for a nearby avail and extending the
    #   segment size if needed.
    #   @return [Integer]
    #
    # @!attribute [rw] output_selection
    #   Indicates whether the .m3u8 manifest file should be generated for
    #   this HLS output group.
    #   @return [String]
    #
    # @!attribute [rw] program_date_time
    #   Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest
    #   files. The value is calculated as follows: either the program date
    #   and time are initialized using the input timecode source, or the
    #   time is initialized using the input timecode source and the date is
    #   initialized using the timestamp\_offset.
    #   @return [String]
    #
    # @!attribute [rw] program_date_time_period
    #   Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_control
    #   When set to SINGLE\_FILE, emits program as a single media resource
    #   (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for
    #   playback.
    #   @return [String]
    #
    # @!attribute [rw] segment_length
    #   Length of MPEG-2 Transport Stream segments to create (in seconds).
    #   Note that segments will end on the next keyframe after this number
    #   of seconds, so actual segment length may be longer.
    #   @return [Integer]
    #
    # @!attribute [rw] segments_per_subdirectory
    #   Number of segments to write to a subdirectory before starting a new
    #   one. directoryStructure must be SINGLE\_DIRECTORY for this setting
    #   to have an effect.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/HlsGroupSettings AWS API Documentation
    #
    class HlsGroupSettings < Struct.new(
      :ad_markers,
      :base_url,
      :caption_language_mappings,
      :caption_language_setting,
      :client_cache,
      :codec_specification,
      :destination,
      :directory_structure,
      :encryption,
      :manifest_compression,
      :manifest_duration_format,
      :min_final_segment_length,
      :min_segment_length,
      :output_selection,
      :program_date_time,
      :program_date_time_period,
      :segment_control,
      :segment_length,
      :segments_per_subdirectory,
      :stream_inf_resolution,
      :timed_metadata_id_3_frame,
      :timed_metadata_id_3_period,
      :timestamp_delta_milliseconds)
      include Aws::Structure
    end

    # Settings for HLS output groups
    #
    # @note When making an API call, you may pass HlsSettings
    #   data as a hash:
    #
    #       {
    #         audio_group_id: "__string",
    #         audio_rendition_sets: "__string",
    #         audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #         i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #         segment_modifier: "__string",
    #       }
    #
    # @!attribute [rw] audio_group_id
    #   Specifies the group to which the audio Rendition belongs.
    #   @return [String]
    #
    # @!attribute [rw] audio_rendition_sets
    #   List all the audio groups that are used with the video output
    #   stream. Input all the audio GROUP-IDs that are associated to the
    #   video, separate by ','.
    #   @return [String]
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
    # @!attribute [rw] i_frame_only_manifest
    #   When set to INCLUDE, writes I-Frame Only Manifest in addition to the
    #   HLS manifest
    #   @return [String]
    #
    # @!attribute [rw] segment_modifier
    #   String concatenated to end of segment filenames. Accepts "Format
    #   Identifiers":#format\_identifier\_parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/HlsSettings AWS API Documentation
    #
    class HlsSettings < Struct.new(
      :audio_group_id,
      :audio_rendition_sets,
      :audio_track_type,
      :i_frame_only_manifest,
      :segment_modifier)
      include Aws::Structure
    end

    # To insert ID3 tags in your output, specify two values. Use ID3 tag
    # (Id3) to specify the base 64 encoded string and use Timecode
    # (TimeCode) to specify the time when the tag should be inserted. To
    # insert multiple ID3 tags in your output, create multiple instances of
    # ID3 insertion (Id3Insertion).
    #
    # @note When making an API call, you may pass Id3Insertion
    #   data as a hash:
    #
    #       {
    #         id_3: "__stringPatternAZaZ0902",
    #         timecode: "__stringPattern010920405090509092",
    #       }
    #
    # @!attribute [rw] id_3
    #   Use ID3 tag (Id3) to provide a tag value in base64-encode format.
    #   @return [String]
    #
    # @!attribute [rw] timecode
    #   Provide a Timecode (TimeCode) in HH:MM:SS:FF or HH:MM:SS;FF format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Id3Insertion AWS API Documentation
    #
    class Id3Insertion < Struct.new(
      :id_3,
      :timecode)
      include Aws::Structure
    end

    # Enable the Image inserter (ImageInserter) feature to include a graphic
    # overlay on your video. Enable or disable this feature for each output
    # individually. This setting is disabled by default.
    #
    # @note When making an API call, you may pass ImageInserter
    #   data as a hash:
    #
    #       {
    #         insertable_images: [
    #           {
    #             duration: 1,
    #             fade_in: 1,
    #             fade_out: 1,
    #             height: 1,
    #             image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #             image_x: 1,
    #             image_y: 1,
    #             layer: 1,
    #             opacity: 1,
    #             start_time: "__stringPattern01D20305D205D",
    #             width: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] insertable_images
    #   Image to insert. Must be 32 bit windows BMP, PNG, or TGA file. Must
    #   not be larger than the output frames.
    #   @return [Array<Types::InsertableImage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ImageInserter AWS API Documentation
    #
    class ImageInserter < Struct.new(
      :insertable_images)
      include Aws::Structure
    end

    # Specifies media input
    #
    # @note When making an API call, you may pass Input
    #   data as a hash:
    #
    #       {
    #         audio_selector_groups: {
    #           "__string" => {
    #             audio_selector_names: ["__stringMin1"],
    #           },
    #         },
    #         audio_selectors: {
    #           "__string" => {
    #             custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #             default_selection: "DEFAULT", # accepts DEFAULT, NOT_DEFAULT
    #             external_audio_file_input: "__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE",
    #             language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #             offset: 1,
    #             pids: [1],
    #             program_selection: 1,
    #             remix_settings: {
    #               channel_mapping: {
    #                 output_channels: [
    #                   {
    #                     input_channels: [1],
    #                   },
    #                 ],
    #               },
    #               channels_in: 1,
    #               channels_out: 1,
    #             },
    #             selector_type: "PID", # accepts PID, TRACK, LANGUAGE_CODE
    #             tracks: [1],
    #           },
    #         },
    #         caption_selectors: {
    #           "__string" => {
    #             custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #             language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #             source_settings: {
    #               ancillary_source_settings: {
    #                 source_ancillary_channel_number: 1,
    #               },
    #               dvb_sub_source_settings: {
    #                 pid: 1,
    #               },
    #               embedded_source_settings: {
    #                 convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                 source_608_channel_number: 1,
    #                 source_608_track_number: 1,
    #               },
    #               file_source_settings: {
    #                 convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                 source_file: "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI",
    #                 time_delta: 1,
    #               },
    #               source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #               teletext_source_settings: {
    #                 page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #               },
    #             },
    #           },
    #         },
    #         deblock_filter: "ENABLED", # accepts ENABLED, DISABLED
    #         denoise_filter: "ENABLED", # accepts ENABLED, DISABLED
    #         file_input: "__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MM",
    #         filter_enable: "AUTO", # accepts AUTO, DISABLE, FORCE
    #         filter_strength: 1,
    #         input_clippings: [
    #           {
    #             end_timecode: "__stringPattern010920405090509092",
    #             start_timecode: "__stringPattern010920405090509092",
    #           },
    #         ],
    #         program_number: 1,
    #         psi_control: "IGNORE_PSI", # accepts IGNORE_PSI, USE_PSI
    #         timecode_source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #         video_selector: {
    #           color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709, HDR10, HLG_2020
    #           color_space_usage: "FORCE", # accepts FORCE, FALLBACK
    #           hdr_10_metadata: {
    #             blue_primary_x: 1,
    #             blue_primary_y: 1,
    #             green_primary_x: 1,
    #             green_primary_y: 1,
    #             max_content_light_level: 1,
    #             max_frame_average_light_level: 1,
    #             max_luminance: 1,
    #             min_luminance: 1,
    #             red_primary_x: 1,
    #             red_primary_y: 1,
    #             white_point_x: 1,
    #             white_point_y: 1,
    #           },
    #           pid: 1,
    #           program_number: 1,
    #         },
    #       }
    #
    # @!attribute [rw] audio_selector_groups
    #   Specifies set of audio selectors within an input to combine. An
    #   input may have multiple audio selector groups. See "Audio Selector
    #   Group":#inputs-audio\_selector\_group for more information.
    #   @return [Hash<String,Types::AudioSelectorGroup>]
    #
    # @!attribute [rw] audio_selectors
    #   Use Audio selectors (AudioSelectors) to specify a track or set of
    #   tracks from the input that you will use in your outputs. You can use
    #   mutiple Audio selectors per input.
    #   @return [Hash<String,Types::AudioSelector>]
    #
    # @!attribute [rw] caption_selectors
    #   Use Captions selectors (CaptionSelectors) to specify the captions
    #   data from the input that you will use in your outputs. You can use
    #   mutiple captions selectors per input.
    #   @return [Hash<String,Types::CaptionSelector>]
    #
    # @!attribute [rw] deblock_filter
    #   Enable Deblock (InputDeblockFilter) to produce smoother motion in
    #   the output. Default is disabled. Only manaully controllable for
    #   MPEG2 and uncompressed video inputs.
    #   @return [String]
    #
    # @!attribute [rw] denoise_filter
    #   Enable Denoise (InputDenoiseFilter) to filter noise from the input.
    #   Default is disabled. Only applicable to MPEG2, H.264, H.265, and
    #   uncompressed video inputs.
    #   @return [String]
    #
    # @!attribute [rw] file_input
    #   Use Input (fileInput) to define the source file used in the
    #   transcode job. There can be multiple inputs in a job. These inputs
    #   are concantenated, in the order they are specified in the job, to
    #   create the output.
    #   @return [String]
    #
    # @!attribute [rw] filter_enable
    #   Use Filter enable (InputFilterEnable) to specify how the transcoding
    #   service applies the denoise and deblock filters. You must also
    #   enable the filters separately, with Denoise (InputDenoiseFilter) and
    #   Deblock (InputDeblockFilter). * Auto - The transcoding service
    #   determines whether to apply filtering, depending on input type and
    #   quality. * Disable - The input is not filtered. This is true even
    #   if you use the API to enable them in (InputDeblockFilter) and
    #   (InputDeblockFilter). * Force - The in put is filtered regardless
    #   of input type.
    #   @return [String]
    #
    # @!attribute [rw] filter_strength
    #   Use Filter strength (FilterStrength) to adjust the magnitude the
    #   input filter settings (Deblock and Denoise). The range is -5 to 5.
    #   Default is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] input_clippings
    #   (InputClippings) contains sets of start and end times that together
    #   specify a portion of the input to be used in the outputs. If you
    #   provide only a start time, the clip will be the entire input from
    #   that point to the end. If you provide only an end time, it will be
    #   the entire input up to that point. When you specify more than one
    #   input clip, the transcoding service creates the job outputs by
    #   stringing the clips together in the order you specify them.
    #   @return [Array<Types::InputClipping>]
    #
    # @!attribute [rw] program_number
    #   Use Program (programNumber) to select a specific program from within
    #   a multi-program transport stream. Note that Quad 4K is not currently
    #   supported. Default is the first program within the transport stream.
    #   If the program you specify doesn't exist, the transcoding service
    #   will use this default.
    #   @return [Integer]
    #
    # @!attribute [rw] psi_control
    #   Set PSI control (InputPsiControl) for transport stream inputs to
    #   specify which data the demux process to scans. * Ignore PSI - Scan
    #   all PIDs for audio and video. * Use PSI - Scan only PSI data.
    #   @return [String]
    #
    # @!attribute [rw] timecode_source
    #   Timecode source under input settings (InputTimecodeSource) only
    #   affects the behavior of features that apply to a single input at a
    #   time, such as input clipping and synchronizing some captions
    #   formats. Use this setting to specify whether the service counts
    #   frames by timecodes embedded in the video (EMBEDDED) or by starting
    #   the first frame at zero (ZEROBASED). In both cases, the timecode
    #   format is HH:MM:SS:FF or HH:MM:SS;FF, where FF is the frame number.
    #   Only set this to EMBEDDED if your source video has embedded
    #   timecodes.
    #   @return [String]
    #
    # @!attribute [rw] video_selector
    #   Selector for video.
    #   @return [Types::VideoSelector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Input AWS API Documentation
    #
    class Input < Struct.new(
      :audio_selector_groups,
      :audio_selectors,
      :caption_selectors,
      :deblock_filter,
      :denoise_filter,
      :file_input,
      :filter_enable,
      :filter_strength,
      :input_clippings,
      :program_number,
      :psi_control,
      :timecode_source,
      :video_selector)
      include Aws::Structure
    end

    # To transcode only portions of your input (clips), include one Input
    # clipping (one instance of InputClipping in the JSON job file) for each
    # input clip. All input clips you specify will be included in every
    # output of the job.
    #
    # @note When making an API call, you may pass InputClipping
    #   data as a hash:
    #
    #       {
    #         end_timecode: "__stringPattern010920405090509092",
    #         start_timecode: "__stringPattern010920405090509092",
    #       }
    #
    # @!attribute [rw] end_timecode
    #   Set End timecode (EndTimecode) to the end of the portion of the
    #   input you are clipping. The frame corresponding to the End timecode
    #   value is included in the clip. Start timecode or End timecode may be
    #   left blank, but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF,
    #   where HH is the hour, MM is the minute, SS is the second, and FF is
    #   the frame number. When choosing this value, take into account your
    #   setting for timecode source under input settings
    #   (InputTimecodeSource). For example, if you have embedded timecodes
    #   that start at 01:00:00:00 and you want your clip to end six minutes
    #   into the video, use 01:06:00:00.
    #   @return [String]
    #
    # @!attribute [rw] start_timecode
    #   Set Start timecode (StartTimecode) to the beginning of the portion
    #   of the input you are clipping. The frame corresponding to the Start
    #   timecode value is included in the clip. Start timecode or End
    #   timecode may be left blank, but not both. Use the format HH:MM:SS:FF
    #   or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the
    #   second, and FF is the frame number. When choosing this value, take
    #   into account your setting for Input timecode source. For example, if
    #   you have embedded timecodes that start at 01:00:00:00 and you want
    #   your clip to begin five minutes into the video, use 01:05:00:00.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/InputClipping AWS API Documentation
    #
    class InputClipping < Struct.new(
      :end_timecode,
      :start_timecode)
      include Aws::Structure
    end

    # Specified video input in a template.
    #
    # @note When making an API call, you may pass InputTemplate
    #   data as a hash:
    #
    #       {
    #         audio_selector_groups: {
    #           "__string" => {
    #             audio_selector_names: ["__stringMin1"],
    #           },
    #         },
    #         audio_selectors: {
    #           "__string" => {
    #             custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #             default_selection: "DEFAULT", # accepts DEFAULT, NOT_DEFAULT
    #             external_audio_file_input: "__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE",
    #             language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #             offset: 1,
    #             pids: [1],
    #             program_selection: 1,
    #             remix_settings: {
    #               channel_mapping: {
    #                 output_channels: [
    #                   {
    #                     input_channels: [1],
    #                   },
    #                 ],
    #               },
    #               channels_in: 1,
    #               channels_out: 1,
    #             },
    #             selector_type: "PID", # accepts PID, TRACK, LANGUAGE_CODE
    #             tracks: [1],
    #           },
    #         },
    #         caption_selectors: {
    #           "__string" => {
    #             custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #             language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #             source_settings: {
    #               ancillary_source_settings: {
    #                 source_ancillary_channel_number: 1,
    #               },
    #               dvb_sub_source_settings: {
    #                 pid: 1,
    #               },
    #               embedded_source_settings: {
    #                 convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                 source_608_channel_number: 1,
    #                 source_608_track_number: 1,
    #               },
    #               file_source_settings: {
    #                 convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                 source_file: "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI",
    #                 time_delta: 1,
    #               },
    #               source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #               teletext_source_settings: {
    #                 page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #               },
    #             },
    #           },
    #         },
    #         deblock_filter: "ENABLED", # accepts ENABLED, DISABLED
    #         denoise_filter: "ENABLED", # accepts ENABLED, DISABLED
    #         filter_enable: "AUTO", # accepts AUTO, DISABLE, FORCE
    #         filter_strength: 1,
    #         input_clippings: [
    #           {
    #             end_timecode: "__stringPattern010920405090509092",
    #             start_timecode: "__stringPattern010920405090509092",
    #           },
    #         ],
    #         program_number: 1,
    #         psi_control: "IGNORE_PSI", # accepts IGNORE_PSI, USE_PSI
    #         timecode_source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #         video_selector: {
    #           color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709, HDR10, HLG_2020
    #           color_space_usage: "FORCE", # accepts FORCE, FALLBACK
    #           hdr_10_metadata: {
    #             blue_primary_x: 1,
    #             blue_primary_y: 1,
    #             green_primary_x: 1,
    #             green_primary_y: 1,
    #             max_content_light_level: 1,
    #             max_frame_average_light_level: 1,
    #             max_luminance: 1,
    #             min_luminance: 1,
    #             red_primary_x: 1,
    #             red_primary_y: 1,
    #             white_point_x: 1,
    #             white_point_y: 1,
    #           },
    #           pid: 1,
    #           program_number: 1,
    #         },
    #       }
    #
    # @!attribute [rw] audio_selector_groups
    #   Specifies set of audio selectors within an input to combine. An
    #   input may have multiple audio selector groups. See "Audio Selector
    #   Group":#inputs-audio\_selector\_group for more information.
    #   @return [Hash<String,Types::AudioSelectorGroup>]
    #
    # @!attribute [rw] audio_selectors
    #   Use Audio selectors (AudioSelectors) to specify a track or set of
    #   tracks from the input that you will use in your outputs. You can use
    #   mutiple Audio selectors per input.
    #   @return [Hash<String,Types::AudioSelector>]
    #
    # @!attribute [rw] caption_selectors
    #   Use Captions selectors (CaptionSelectors) to specify the captions
    #   data from the input that you will use in your outputs. You can use
    #   mutiple captions selectors per input.
    #   @return [Hash<String,Types::CaptionSelector>]
    #
    # @!attribute [rw] deblock_filter
    #   Enable Deblock (InputDeblockFilter) to produce smoother motion in
    #   the output. Default is disabled. Only manaully controllable for
    #   MPEG2 and uncompressed video inputs.
    #   @return [String]
    #
    # @!attribute [rw] denoise_filter
    #   Enable Denoise (InputDenoiseFilter) to filter noise from the input.
    #   Default is disabled. Only applicable to MPEG2, H.264, H.265, and
    #   uncompressed video inputs.
    #   @return [String]
    #
    # @!attribute [rw] filter_enable
    #   Use Filter enable (InputFilterEnable) to specify how the transcoding
    #   service applies the denoise and deblock filters. You must also
    #   enable the filters separately, with Denoise (InputDenoiseFilter) and
    #   Deblock (InputDeblockFilter). * Auto - The transcoding service
    #   determines whether to apply filtering, depending on input type and
    #   quality. * Disable - The input is not filtered. This is true even
    #   if you use the API to enable them in (InputDeblockFilter) and
    #   (InputDeblockFilter). * Force - The in put is filtered regardless
    #   of input type.
    #   @return [String]
    #
    # @!attribute [rw] filter_strength
    #   Use Filter strength (FilterStrength) to adjust the magnitude the
    #   input filter settings (Deblock and Denoise). The range is -5 to 5.
    #   Default is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] input_clippings
    #   (InputClippings) contains sets of start and end times that together
    #   specify a portion of the input to be used in the outputs. If you
    #   provide only a start time, the clip will be the entire input from
    #   that point to the end. If you provide only an end time, it will be
    #   the entire input up to that point. When you specify more than one
    #   input clip, the transcoding service creates the job outputs by
    #   stringing the clips together in the order you specify them.
    #   @return [Array<Types::InputClipping>]
    #
    # @!attribute [rw] program_number
    #   Use Program (programNumber) to select a specific program from within
    #   a multi-program transport stream. Note that Quad 4K is not currently
    #   supported. Default is the first program within the transport stream.
    #   If the program you specify doesn't exist, the transcoding service
    #   will use this default.
    #   @return [Integer]
    #
    # @!attribute [rw] psi_control
    #   Set PSI control (InputPsiControl) for transport stream inputs to
    #   specify which data the demux process to scans. * Ignore PSI - Scan
    #   all PIDs for audio and video. * Use PSI - Scan only PSI data.
    #   @return [String]
    #
    # @!attribute [rw] timecode_source
    #   Timecode source under input settings (InputTimecodeSource) only
    #   affects the behavior of features that apply to a single input at a
    #   time, such as input clipping and synchronizing some captions
    #   formats. Use this setting to specify whether the service counts
    #   frames by timecodes embedded in the video (EMBEDDED) or by starting
    #   the first frame at zero (ZEROBASED). In both cases, the timecode
    #   format is HH:MM:SS:FF or HH:MM:SS;FF, where FF is the frame number.
    #   Only set this to EMBEDDED if your source video has embedded
    #   timecodes.
    #   @return [String]
    #
    # @!attribute [rw] video_selector
    #   Selector for video.
    #   @return [Types::VideoSelector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/InputTemplate AWS API Documentation
    #
    class InputTemplate < Struct.new(
      :audio_selector_groups,
      :audio_selectors,
      :caption_selectors,
      :deblock_filter,
      :denoise_filter,
      :filter_enable,
      :filter_strength,
      :input_clippings,
      :program_number,
      :psi_control,
      :timecode_source,
      :video_selector)
      include Aws::Structure
    end

    # Settings for Insertable Image
    #
    # @note When making an API call, you may pass InsertableImage
    #   data as a hash:
    #
    #       {
    #         duration: 1,
    #         fade_in: 1,
    #         fade_out: 1,
    #         height: 1,
    #         image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #         image_x: 1,
    #         image_y: 1,
    #         layer: 1,
    #         opacity: 1,
    #         start_time: "__stringPattern01D20305D205D",
    #         width: 1,
    #       }
    #
    # @!attribute [rw] duration
    #   Use Duration (Duration) to set the time, in milliseconds, for the
    #   image to remain on the output video.
    #   @return [Integer]
    #
    # @!attribute [rw] fade_in
    #   Use Fade in (FadeIut) to set the length, in milliseconds, of the
    #   inserted image fade in. If you don't specify a value for Fade in,
    #   the image will appear abruptly at the Start time.
    #   @return [Integer]
    #
    # @!attribute [rw] fade_out
    #   Use Fade out (FadeOut) to set the length, in milliseconds, of the
    #   inserted image fade out. If you don't specify a value for Fade out,
    #   the image will disappear abruptly at the end of the inserted image
    #   duration.
    #   @return [Integer]
    #
    # @!attribute [rw] height
    #   Specify the Height (Height) of the inserted image. Use a value that
    #   is less than or equal to the video resolution height. Leave this
    #   setting blank to use the native height of the image.
    #   @return [Integer]
    #
    # @!attribute [rw] image_inserter_input
    #   Use Image location (imageInserterInput) to specify the Amazon S3
    #   location of the image to be inserted into the output. Use a 32 bit
    #   BMP, PNG, or TGA file that fits inside the video frame.
    #   @return [String]
    #
    # @!attribute [rw] image_x
    #   Use Left (ImageX) to set the distance, in pixels, between the
    #   inserted image and the left edge of the frame. Required for BMP, PNG
    #   and TGA input.
    #   @return [Integer]
    #
    # @!attribute [rw] image_y
    #   Use Top (ImageY) to set the distance, in pixels, between the
    #   inserted image and the top edge of the video frame. Required for
    #   BMP, PNG and TGA input.
    #   @return [Integer]
    #
    # @!attribute [rw] layer
    #   Use Layer (Layer) to specify how overlapping inserted images appear.
    #   Images with higher values of layer appear on top of images with
    #   lower values of layer.
    #   @return [Integer]
    #
    # @!attribute [rw] opacity
    #   Use Opacity (Opacity) to specify how much of the underlying video
    #   shows through the inserted image. 0 is transparent and 100 is fully
    #   opaque. Default is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   Use Start time (StartTime) to specify the video timecode when the
    #   image is inserted in the output. This must be in timecode
    #   (HH:MM:SS:FF or HH:MM:SS;FF) format.
    #   @return [String]
    #
    # @!attribute [rw] width
    #   Specify the Width (Width) of the inserted image. Use a value that is
    #   less than or equal to the video resolution width. Leave this setting
    #   blank to use the native width of the image.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/InsertableImage AWS API Documentation
    #
    class InsertableImage < Struct.new(
      :duration,
      :fade_in,
      :fade_out,
      :height,
      :image_inserter_input,
      :image_x,
      :image_y,
      :layer,
      :opacity,
      :start_time,
      :width)
      include Aws::Structure
    end

    # Each job converts an input file into an output file or files. For more
    # information, see the User Guide at
    # http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @!attribute [rw] arn
    #   An identifier for this resource that is unique within all of AWS.
    #   @return [String]
    #
    # @!attribute [rw] billing_tags_source
    #   Optional. Choose a tag type that AWS Billing and Cost Management
    #   will use to sort your AWS Elemental MediaConvert costs on any
    #   billing report that you set up. Any transcoding outputs that don't
    #   have an associated tag will appear in your billing report unsorted.
    #   If you don't choose a valid value for this field, your job outputs
    #   will appear on the billing report unsorted.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in Unix epoch format in seconds, when the job got created.
    #   @return [Time]
    #
    # @!attribute [rw] error_code
    #   Error code for the job
    #   @return [Integer]
    #
    # @!attribute [rw] error_message
    #   Error message of Job
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A portion of the job's ARN, unique within your AWS Elemental
    #   MediaConvert resources
    #   @return [String]
    #
    # @!attribute [rw] job_template
    #   The job template that the job is created from, if it is created from
    #   a job template.
    #   @return [String]
    #
    # @!attribute [rw] output_group_details
    #   List of output group details
    #   @return [Array<Types::OutputGroupDetail>]
    #
    # @!attribute [rw] queue
    #   Optional. When you create a job, you can specify a queue to send it
    #   to. If you don't specify, the job will go to the default queue. For
    #   more about queues, see the User Guide topic at
    #   http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role you use for creating this job. For details about
    #   permissions, see the User Guide topic at the User Guide at
    #   http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   JobSettings contains all the transcode settings for a job.
    #   @return [Types::JobSettings]
    #
    # @!attribute [rw] status
    #   A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED,
    #   or ERROR.
    #   @return [String]
    #
    # @!attribute [rw] timing
    #   Information about when jobs are submitted, started, and finished is
    #   specified in Unix epoch format in seconds.
    #   @return [Types::Timing]
    #
    # @!attribute [rw] user_metadata
    #   User-defined metadata that you want to associate with an
    #   MediaConvert job. You specify metadata in key/value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Job AWS API Documentation
    #
    class Job < Struct.new(
      :arn,
      :billing_tags_source,
      :created_at,
      :error_code,
      :error_message,
      :id,
      :job_template,
      :output_group_details,
      :queue,
      :role,
      :settings,
      :status,
      :timing,
      :user_metadata)
      include Aws::Structure
    end

    # JobSettings contains all the transcode settings for a job.
    #
    # @note When making an API call, you may pass JobSettings
    #   data as a hash:
    #
    #       {
    #         ad_avail_offset: 1,
    #         avail_blanking: {
    #           avail_blanking_image: "__stringMin14PatternS3BmpBMPPngPNG",
    #         },
    #         inputs: [
    #           {
    #             audio_selector_groups: {
    #               "__string" => {
    #                 audio_selector_names: ["__stringMin1"],
    #               },
    #             },
    #             audio_selectors: {
    #               "__string" => {
    #                 custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                 default_selection: "DEFAULT", # accepts DEFAULT, NOT_DEFAULT
    #                 external_audio_file_input: "__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE",
    #                 language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                 offset: 1,
    #                 pids: [1],
    #                 program_selection: 1,
    #                 remix_settings: {
    #                   channel_mapping: {
    #                     output_channels: [
    #                       {
    #                         input_channels: [1],
    #                       },
    #                     ],
    #                   },
    #                   channels_in: 1,
    #                   channels_out: 1,
    #                 },
    #                 selector_type: "PID", # accepts PID, TRACK, LANGUAGE_CODE
    #                 tracks: [1],
    #               },
    #             },
    #             caption_selectors: {
    #               "__string" => {
    #                 custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                 language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                 source_settings: {
    #                   ancillary_source_settings: {
    #                     source_ancillary_channel_number: 1,
    #                   },
    #                   dvb_sub_source_settings: {
    #                     pid: 1,
    #                   },
    #                   embedded_source_settings: {
    #                     convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                     source_608_channel_number: 1,
    #                     source_608_track_number: 1,
    #                   },
    #                   file_source_settings: {
    #                     convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                     source_file: "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI",
    #                     time_delta: 1,
    #                   },
    #                   source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #                   teletext_source_settings: {
    #                     page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                   },
    #                 },
    #               },
    #             },
    #             deblock_filter: "ENABLED", # accepts ENABLED, DISABLED
    #             denoise_filter: "ENABLED", # accepts ENABLED, DISABLED
    #             file_input: "__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MM",
    #             filter_enable: "AUTO", # accepts AUTO, DISABLE, FORCE
    #             filter_strength: 1,
    #             input_clippings: [
    #               {
    #                 end_timecode: "__stringPattern010920405090509092",
    #                 start_timecode: "__stringPattern010920405090509092",
    #               },
    #             ],
    #             program_number: 1,
    #             psi_control: "IGNORE_PSI", # accepts IGNORE_PSI, USE_PSI
    #             timecode_source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #             video_selector: {
    #               color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709, HDR10, HLG_2020
    #               color_space_usage: "FORCE", # accepts FORCE, FALLBACK
    #               hdr_10_metadata: {
    #                 blue_primary_x: 1,
    #                 blue_primary_y: 1,
    #                 green_primary_x: 1,
    #                 green_primary_y: 1,
    #                 max_content_light_level: 1,
    #                 max_frame_average_light_level: 1,
    #                 max_luminance: 1,
    #                 min_luminance: 1,
    #                 red_primary_x: 1,
    #                 red_primary_y: 1,
    #                 white_point_x: 1,
    #                 white_point_y: 1,
    #               },
    #               pid: 1,
    #               program_number: 1,
    #             },
    #           },
    #         ],
    #         nielsen_configuration: {
    #           breakout_code: 1,
    #           distributor_id: "__string",
    #         },
    #         output_groups: [
    #           {
    #             custom_name: "__string",
    #             name: "__string",
    #             output_group_settings: {
    #               cmaf_group_settings: {
    #                 base_url: "__string",
    #                 client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                 codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #                 destination: "__stringPatternS3",
    #                 encryption: {
    #                   constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #                   encryption_method: "SAMPLE_AES", # accepts SAMPLE_AES
    #                   initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   static_key_provider: {
    #                     key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                     key_format_versions: "__stringPatternDD",
    #                     static_key_value: "__stringPatternAZaZ0932",
    #                     url: "__string",
    #                   },
    #                   type: "STATIC_KEY", # accepts STATIC_KEY
    #                 },
    #                 fragment_length: 1,
    #                 manifest_compression: "GZIP", # accepts GZIP, NONE
    #                 manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                 min_buffer_time: 1,
    #                 min_final_segment_length: 1.0,
    #                 segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                 segment_length: 1,
    #                 stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 write_dash_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #                 write_hls_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #               },
    #               dash_iso_group_settings: {
    #                 base_url: "__string",
    #                 destination: "__stringPatternS3",
    #                 encryption: {
    #                   speke_key_provider: {
    #                     resource_id: "__string",
    #                     system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                     url: "__stringPatternHttps",
    #                   },
    #                 },
    #                 fragment_length: 1,
    #                 hbbtv_compliance: "HBBTV_1_5", # accepts HBBTV_1_5, NONE
    #                 min_buffer_time: 1,
    #                 segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                 segment_length: 1,
    #                 write_segment_timeline_in_representation: "ENABLED", # accepts ENABLED, DISABLED
    #               },
    #               file_group_settings: {
    #                 destination: "__stringPatternS3",
    #               },
    #               hls_group_settings: {
    #                 ad_markers: ["ELEMENTAL"], # accepts ELEMENTAL, ELEMENTAL_SCTE35
    #                 base_url: "__string",
    #                 caption_language_mappings: [
    #                   {
    #                     caption_channel: 1,
    #                     custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                     language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                     language_description: "__string",
    #                   },
    #                 ],
    #                 caption_language_setting: "INSERT", # accepts INSERT, OMIT, NONE
    #                 client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                 codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #                 destination: "__stringPatternS3",
    #                 directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #                 encryption: {
    #                   constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #                   encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #                   initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   speke_key_provider: {
    #                     resource_id: "__string",
    #                     system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                     url: "__stringPatternHttps",
    #                   },
    #                   static_key_provider: {
    #                     key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                     key_format_versions: "__stringPatternDD",
    #                     static_key_value: "__stringPatternAZaZ0932",
    #                     url: "__string",
    #                   },
    #                   type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #                 },
    #                 manifest_compression: "GZIP", # accepts GZIP, NONE
    #                 manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                 min_final_segment_length: 1.0,
    #                 min_segment_length: 1,
    #                 output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #                 program_date_time: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 program_date_time_period: 1,
    #                 segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                 segment_length: 1,
    #                 segments_per_subdirectory: 1,
    #                 stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #                 timed_metadata_id_3_period: 1,
    #                 timestamp_delta_milliseconds: 1,
    #               },
    #               ms_smooth_group_settings: {
    #                 audio_deduplication: "COMBINE_DUPLICATE_STREAMS", # accepts COMBINE_DUPLICATE_STREAMS, NONE
    #                 destination: "__stringPatternS3",
    #                 encryption: {
    #                   speke_key_provider: {
    #                     resource_id: "__string",
    #                     system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                     url: "__stringPatternHttps",
    #                   },
    #                 },
    #                 fragment_length: 1,
    #                 manifest_encoding: "UTF8", # accepts UTF8, UTF16
    #               },
    #               type: "HLS_GROUP_SETTINGS", # accepts HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS, CMAF_GROUP_SETTINGS
    #             },
    #             outputs: [
    #               {
    #                 audio_descriptions: [
    #                   {
    #                     audio_normalization_settings: {
    #                       algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #                       algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #                       correction_gate_level: 1,
    #                       loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #                       peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #                       target_lkfs: 1.0,
    #                     },
    #                     audio_source_name: "__string",
    #                     audio_type: 1,
    #                     audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                     codec_settings: {
    #                       aac_settings: {
    #                         audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                         bitrate: 1,
    #                         codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                         coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                         rate_control_mode: "CBR", # accepts CBR, VBR
    #                         raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                         sample_rate: 1,
    #                         specification: "MPEG2", # accepts MPEG2, MPEG4
    #                         vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #                       },
    #                       ac_3_settings: {
    #                         bitrate: 1,
    #                         bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                         coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                         dialnorm: 1,
    #                         dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                         lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                         metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                         sample_rate: 1,
    #                       },
    #                       aiff_settings: {
    #                         bit_depth: 1,
    #                         channels: 1,
    #                         sample_rate: 1,
    #                       },
    #                       codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #                       eac_3_settings: {
    #                         attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                         bitrate: 1,
    #                         bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                         coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                         dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                         dialnorm: 1,
    #                         dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                         dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                         lfe_control: "LFE", # accepts LFE, NO_LFE
    #                         lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                         lo_ro_center_mix_level: 1.0,
    #                         lo_ro_surround_mix_level: 1.0,
    #                         lt_rt_center_mix_level: 1.0,
    #                         lt_rt_surround_mix_level: 1.0,
    #                         metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                         passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                         phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                         sample_rate: 1,
    #                         stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                         surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                         surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                       },
    #                       mp_2_settings: {
    #                         bitrate: 1,
    #                         channels: 1,
    #                         sample_rate: 1,
    #                       },
    #                       wav_settings: {
    #                         bit_depth: 1,
    #                         channels: 1,
    #                         format: "RIFF", # accepts RIFF, RF64
    #                         sample_rate: 1,
    #                       },
    #                     },
    #                     custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                     language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                     language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                     remix_settings: {
    #                       channel_mapping: {
    #                         output_channels: [
    #                           {
    #                             input_channels: [1],
    #                           },
    #                         ],
    #                       },
    #                       channels_in: 1,
    #                       channels_out: 1,
    #                     },
    #                     stream_name: "__stringPatternWS",
    #                   },
    #                 ],
    #                 caption_descriptions: [
    #                   {
    #                     caption_selector_name: "__stringMin1",
    #                     custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                     destination_settings: {
    #                       burnin_destination_settings: {
    #                         alignment: "CENTERED", # accepts CENTERED, LEFT
    #                         background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                         background_opacity: 1,
    #                         font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                         font_opacity: 1,
    #                         font_resolution: 1,
    #                         font_size: 1,
    #                         outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                         outline_size: 1,
    #                         shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                         shadow_opacity: 1,
    #                         shadow_x_offset: 1,
    #                         shadow_y_offset: 1,
    #                         teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                         x_position: 1,
    #                         y_position: 1,
    #                       },
    #                       destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #                       dvb_sub_destination_settings: {
    #                         alignment: "CENTERED", # accepts CENTERED, LEFT
    #                         background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                         background_opacity: 1,
    #                         font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                         font_opacity: 1,
    #                         font_resolution: 1,
    #                         font_size: 1,
    #                         outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                         outline_size: 1,
    #                         shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                         shadow_opacity: 1,
    #                         shadow_x_offset: 1,
    #                         shadow_y_offset: 1,
    #                         teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                         x_position: 1,
    #                         y_position: 1,
    #                       },
    #                       scc_destination_settings: {
    #                         framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #                       },
    #                       teletext_destination_settings: {
    #                         page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                       },
    #                       ttml_destination_settings: {
    #                         style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #                       },
    #                     },
    #                     language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                     language_description: "__string",
    #                   },
    #                 ],
    #                 container_settings: {
    #                   container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
    #                   f4v_settings: {
    #                     moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                   },
    #                   m2ts_settings: {
    #                     audio_buffer_model: "DVB", # accepts DVB, ATSC
    #                     audio_frames_per_pes: 1,
    #                     audio_pids: [1],
    #                     bitrate: 1,
    #                     buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                     dvb_nit_settings: {
    #                       network_id: 1,
    #                       network_name: "__stringMin1Max256",
    #                       nit_interval: 1,
    #                     },
    #                     dvb_sdt_settings: {
    #                       output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                       sdt_interval: 1,
    #                       service_name: "__stringMin1Max256",
    #                       service_provider_name: "__stringMin1Max256",
    #                     },
    #                     dvb_sub_pids: [1],
    #                     dvb_tdt_settings: {
    #                       tdt_interval: 1,
    #                     },
    #                     dvb_teletext_pid: 1,
    #                     ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                     ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                     es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     fragment_time: 1.0,
    #                     max_pcr_interval: 1,
    #                     min_ebp_interval: 1,
    #                     nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                     null_packet_bitrate: 1.0,
    #                     pat_interval: 1,
    #                     pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                     pcr_pid: 1,
    #                     pmt_interval: 1,
    #                     pmt_pid: 1,
    #                     private_metadata_pid: 1,
    #                     program_number: 1,
    #                     rate_mode: "VBR", # accepts VBR, CBR
    #                     scte_35_pid: 1,
    #                     scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                     segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #                     segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                     segmentation_time: 1.0,
    #                     timed_metadata_pid: 1,
    #                     transport_stream_id: 1,
    #                     video_pid: 1,
    #                   },
    #                   m3u_8_settings: {
    #                     audio_frames_per_pes: 1,
    #                     audio_pids: [1],
    #                     nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                     pat_interval: 1,
    #                     pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                     pcr_pid: 1,
    #                     pmt_interval: 1,
    #                     pmt_pid: 1,
    #                     private_metadata_pid: 1,
    #                     program_number: 1,
    #                     scte_35_pid: 1,
    #                     scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                     timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                     timed_metadata_pid: 1,
    #                     transport_stream_id: 1,
    #                     video_pid: 1,
    #                   },
    #                   mov_settings: {
    #                     clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #                     padding_control: "OMNEON", # accepts OMNEON, NONE
    #                     reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #                   },
    #                   mp_4_settings: {
    #                     cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                     mp_4_major_brand: "__string",
    #                   },
    #                 },
    #                 extension: "__string",
    #                 name_modifier: "__stringMin1",
    #                 output_settings: {
    #                   hls_settings: {
    #                     audio_group_id: "__string",
    #                     audio_rendition_sets: "__string",
    #                     audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                     i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     segment_modifier: "__string",
    #                   },
    #                 },
    #                 preset: "__stringMin0",
    #                 video_description: {
    #                   afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #                   anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #                   codec_settings: {
    #                     codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #                     frame_capture_settings: {
    #                       framerate_denominator: 1,
    #                       framerate_numerator: 1,
    #                       max_captures: 1,
    #                       quality: 1,
    #                     },
    #                     h264_settings: {
    #                       adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                       bitrate: 1,
    #                       codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #                       codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                       dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                       entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                       field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #                       flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                       framerate_denominator: 1,
    #                       framerate_numerator: 1,
    #                       gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                       gop_closed_cadence: 1,
    #                       gop_size: 1.0,
    #                       gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                       hrd_buffer_initial_fill_percentage: 1,
    #                       hrd_buffer_size: 1,
    #                       interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                       max_bitrate: 1,
    #                       min_i_interval: 1,
    #                       number_b_frames_between_reference_frames: 1,
    #                       number_reference_frames: 1,
    #                       par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       par_denominator: 1,
    #                       par_numerator: 1,
    #                       quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                       qvbr_settings: {
    #                         max_average_bitrate: 1,
    #                         qvbr_quality_level: 1,
    #                       },
    #                       rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                       repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #                       scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                       slices: 1,
    #                       slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                       softness: 1,
    #                       spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                       telecine: "NONE", # accepts NONE, SOFT, HARD
    #                       temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                     },
    #                     h265_settings: {
    #                       adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                       alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #                       bitrate: 1,
    #                       codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #                       codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #                       dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                       flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                       framerate_denominator: 1,
    #                       framerate_numerator: 1,
    #                       gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                       gop_closed_cadence: 1,
    #                       gop_size: 1.0,
    #                       gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                       hrd_buffer_initial_fill_percentage: 1,
    #                       hrd_buffer_size: 1,
    #                       interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                       max_bitrate: 1,
    #                       min_i_interval: 1,
    #                       number_b_frames_between_reference_frames: 1,
    #                       number_reference_frames: 1,
    #                       par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       par_denominator: 1,
    #                       par_numerator: 1,
    #                       quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                       qvbr_settings: {
    #                         max_average_bitrate: 1,
    #                         qvbr_quality_level: 1,
    #                       },
    #                       rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                       sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #                       scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                       slices: 1,
    #                       slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                       spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       telecine: "NONE", # accepts NONE, SOFT, HARD
    #                       temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #                       tiles: "DISABLED", # accepts DISABLED, ENABLED
    #                       unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                       write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #                     },
    #                     mpeg_2_settings: {
    #                       adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #                       bitrate: 1,
    #                       codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #                       codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #                       dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                       framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                       framerate_denominator: 1,
    #                       framerate_numerator: 1,
    #                       gop_closed_cadence: 1,
    #                       gop_size: 1.0,
    #                       gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                       hrd_buffer_initial_fill_percentage: 1,
    #                       hrd_buffer_size: 1,
    #                       interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                       intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #                       max_bitrate: 1,
    #                       min_i_interval: 1,
    #                       number_b_frames_between_reference_frames: 1,
    #                       par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       par_denominator: 1,
    #                       par_numerator: 1,
    #                       quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #                       rate_control_mode: "VBR", # accepts VBR, CBR
    #                       scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                       slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                       softness: 1,
    #                       spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       syntax: "DEFAULT", # accepts DEFAULT, D_10
    #                       telecine: "NONE", # accepts NONE, SOFT, HARD
    #                       temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     },
    #                     prores_settings: {
    #                       codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #                       framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                       framerate_denominator: 1,
    #                       framerate_numerator: 1,
    #                       interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                       par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       par_denominator: 1,
    #                       par_numerator: 1,
    #                       slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                       telecine: "NONE", # accepts NONE, HARD
    #                     },
    #                   },
    #                   color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                   crop: {
    #                     height: 1,
    #                     width: 1,
    #                     x: 1,
    #                     y: 1,
    #                   },
    #                   drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                   fixed_afd: 1,
    #                   height: 1,
    #                   position: {
    #                     height: 1,
    #                     width: 1,
    #                     x: 1,
    #                     y: 1,
    #                   },
    #                   respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #                   scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #                   sharpness: 1,
    #                   timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                   video_preprocessors: {
    #                     color_corrector: {
    #                       brightness: 1,
    #                       color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #                       contrast: 1,
    #                       hdr_10_metadata: {
    #                         blue_primary_x: 1,
    #                         blue_primary_y: 1,
    #                         green_primary_x: 1,
    #                         green_primary_y: 1,
    #                         max_content_light_level: 1,
    #                         max_frame_average_light_level: 1,
    #                         max_luminance: 1,
    #                         min_luminance: 1,
    #                         red_primary_x: 1,
    #                         red_primary_y: 1,
    #                         white_point_x: 1,
    #                         white_point_y: 1,
    #                       },
    #                       hue: 1,
    #                       saturation: 1,
    #                     },
    #                     deinterlacer: {
    #                       algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #                       control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #                       mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #                     },
    #                     image_inserter: {
    #                       insertable_images: [
    #                         {
    #                           duration: 1,
    #                           fade_in: 1,
    #                           fade_out: 1,
    #                           height: 1,
    #                           image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #                           image_x: 1,
    #                           image_y: 1,
    #                           layer: 1,
    #                           opacity: 1,
    #                           start_time: "__stringPattern01D20305D205D",
    #                           width: 1,
    #                         },
    #                       ],
    #                     },
    #                     noise_reducer: {
    #                       filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #                       filter_settings: {
    #                         strength: 1,
    #                       },
    #                       spatial_filter_settings: {
    #                         post_filter_sharpen_strength: 1,
    #                         speed: 1,
    #                         strength: 1,
    #                       },
    #                     },
    #                     timecode_burnin: {
    #                       font_size: 1,
    #                       position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #                       prefix: "__stringPattern",
    #                     },
    #                   },
    #                   width: 1,
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         timecode_config: {
    #           anchor: "__stringPattern010920405090509092",
    #           source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #           start: "__stringPattern010920405090509092",
    #           timestamp_offset: "__stringPattern0940191020191209301",
    #         },
    #         timed_metadata_insertion: {
    #           id_3_insertions: [
    #             {
    #               id_3: "__stringPatternAZaZ0902",
    #               timecode: "__stringPattern010920405090509092",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input
    #   Ad Avail PTS time.
    #   @return [Integer]
    #
    # @!attribute [rw] avail_blanking
    #   Settings for ad avail blanking. Video can be blanked or overlaid
    #   with an image, and audio muted during SCTE-35 triggered ad avails.
    #   @return [Types::AvailBlanking]
    #
    # @!attribute [rw] inputs
    #   Use Inputs (inputs) to define source file used in the transcode job.
    #   There can be multiple inputs add in a job. These inputs will be
    #   concantenated together to create the output.
    #   @return [Array<Types::Input>]
    #
    # @!attribute [rw] nielsen_configuration
    #   Settings for Nielsen Configuration
    #   @return [Types::NielsenConfiguration]
    #
    # @!attribute [rw] output_groups
    #   (OutputGroups) contains one group of settings for each set of
    #   outputs that share a common package type. All unpackaged files
    #   (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in
    #   a single output group as well. Required in (OutputGroups) is a group
    #   of settings that apply to the whole group. This required object
    #   depends on the value you set for (Type) under
    #   (OutputGroups)>(OutputGroupSettings). Type, settings object pairs
    #   are as follows. * FILE\_GROUP\_SETTINGS, FileGroupSettings *
    #   HLS\_GROUP\_SETTINGS, HlsGroupSettings *
    #   DASH\_ISO\_GROUP\_SETTINGS, DashIsoGroupSettings *
    #   MS\_SMOOTH\_GROUP\_SETTINGS, MsSmoothGroupSettings *
    #   CMAF\_GROUP\_SETTINGS, CmafGroupSettings
    #   @return [Array<Types::OutputGroup>]
    #
    # @!attribute [rw] timecode_config
    #   Contains settings used to acquire and adjust timecode information
    #   from inputs.
    #   @return [Types::TimecodeConfig]
    #
    # @!attribute [rw] timed_metadata_insertion
    #   Enable Timed metadata insertion (TimedMetadataInsertion) to include
    #   ID3 tags in your job. To include timed metadata, you must enable it
    #   here, enable it in each output container, and specify tags and
    #   timecodes in ID3 insertion (Id3Insertion) objects.
    #   @return [Types::TimedMetadataInsertion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/JobSettings AWS API Documentation
    #
    class JobSettings < Struct.new(
      :ad_avail_offset,
      :avail_blanking,
      :inputs,
      :nielsen_configuration,
      :output_groups,
      :timecode_config,
      :timed_metadata_insertion)
      include Aws::Structure
    end

    # A job template is a pre-made set of encoding instructions that you can
    # use to quickly create a job.
    #
    # @!attribute [rw] arn
    #   An identifier for this resource that is unique within all of AWS.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   An optional category you create to organize your job templates.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp in epoch seconds for Job template creation.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   An optional description you create for each job template.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The timestamp in epoch seconds when the Job template was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A name you create for each job template. Each name must be unique
    #   within your account.
    #   @return [String]
    #
    # @!attribute [rw] queue
    #   Optional. The queue that jobs created from this template are
    #   assigned to. If you don't specify this, jobs will go to the default
    #   queue.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   JobTemplateSettings contains all the transcode settings saved in the
    #   template that will be applied to jobs created from it.
    #   @return [Types::JobTemplateSettings]
    #
    # @!attribute [rw] type
    #   A job template can be of two types: system or custom. System or
    #   built-in job templates can't be modified or deleted by the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/JobTemplate AWS API Documentation
    #
    class JobTemplate < Struct.new(
      :arn,
      :category,
      :created_at,
      :description,
      :last_updated,
      :name,
      :queue,
      :settings,
      :type)
      include Aws::Structure
    end

    # JobTemplateSettings contains all the transcode settings saved in the
    # template that will be applied to jobs created from it.
    #
    # @note When making an API call, you may pass JobTemplateSettings
    #   data as a hash:
    #
    #       {
    #         ad_avail_offset: 1,
    #         avail_blanking: {
    #           avail_blanking_image: "__stringMin14PatternS3BmpBMPPngPNG",
    #         },
    #         inputs: [
    #           {
    #             audio_selector_groups: {
    #               "__string" => {
    #                 audio_selector_names: ["__stringMin1"],
    #               },
    #             },
    #             audio_selectors: {
    #               "__string" => {
    #                 custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                 default_selection: "DEFAULT", # accepts DEFAULT, NOT_DEFAULT
    #                 external_audio_file_input: "__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE",
    #                 language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                 offset: 1,
    #                 pids: [1],
    #                 program_selection: 1,
    #                 remix_settings: {
    #                   channel_mapping: {
    #                     output_channels: [
    #                       {
    #                         input_channels: [1],
    #                       },
    #                     ],
    #                   },
    #                   channels_in: 1,
    #                   channels_out: 1,
    #                 },
    #                 selector_type: "PID", # accepts PID, TRACK, LANGUAGE_CODE
    #                 tracks: [1],
    #               },
    #             },
    #             caption_selectors: {
    #               "__string" => {
    #                 custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                 language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                 source_settings: {
    #                   ancillary_source_settings: {
    #                     source_ancillary_channel_number: 1,
    #                   },
    #                   dvb_sub_source_settings: {
    #                     pid: 1,
    #                   },
    #                   embedded_source_settings: {
    #                     convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                     source_608_channel_number: 1,
    #                     source_608_track_number: 1,
    #                   },
    #                   file_source_settings: {
    #                     convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                     source_file: "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI",
    #                     time_delta: 1,
    #                   },
    #                   source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #                   teletext_source_settings: {
    #                     page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                   },
    #                 },
    #               },
    #             },
    #             deblock_filter: "ENABLED", # accepts ENABLED, DISABLED
    #             denoise_filter: "ENABLED", # accepts ENABLED, DISABLED
    #             filter_enable: "AUTO", # accepts AUTO, DISABLE, FORCE
    #             filter_strength: 1,
    #             input_clippings: [
    #               {
    #                 end_timecode: "__stringPattern010920405090509092",
    #                 start_timecode: "__stringPattern010920405090509092",
    #               },
    #             ],
    #             program_number: 1,
    #             psi_control: "IGNORE_PSI", # accepts IGNORE_PSI, USE_PSI
    #             timecode_source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #             video_selector: {
    #               color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709, HDR10, HLG_2020
    #               color_space_usage: "FORCE", # accepts FORCE, FALLBACK
    #               hdr_10_metadata: {
    #                 blue_primary_x: 1,
    #                 blue_primary_y: 1,
    #                 green_primary_x: 1,
    #                 green_primary_y: 1,
    #                 max_content_light_level: 1,
    #                 max_frame_average_light_level: 1,
    #                 max_luminance: 1,
    #                 min_luminance: 1,
    #                 red_primary_x: 1,
    #                 red_primary_y: 1,
    #                 white_point_x: 1,
    #                 white_point_y: 1,
    #               },
    #               pid: 1,
    #               program_number: 1,
    #             },
    #           },
    #         ],
    #         nielsen_configuration: {
    #           breakout_code: 1,
    #           distributor_id: "__string",
    #         },
    #         output_groups: [
    #           {
    #             custom_name: "__string",
    #             name: "__string",
    #             output_group_settings: {
    #               cmaf_group_settings: {
    #                 base_url: "__string",
    #                 client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                 codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #                 destination: "__stringPatternS3",
    #                 encryption: {
    #                   constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #                   encryption_method: "SAMPLE_AES", # accepts SAMPLE_AES
    #                   initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   static_key_provider: {
    #                     key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                     key_format_versions: "__stringPatternDD",
    #                     static_key_value: "__stringPatternAZaZ0932",
    #                     url: "__string",
    #                   },
    #                   type: "STATIC_KEY", # accepts STATIC_KEY
    #                 },
    #                 fragment_length: 1,
    #                 manifest_compression: "GZIP", # accepts GZIP, NONE
    #                 manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                 min_buffer_time: 1,
    #                 min_final_segment_length: 1.0,
    #                 segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                 segment_length: 1,
    #                 stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 write_dash_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #                 write_hls_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #               },
    #               dash_iso_group_settings: {
    #                 base_url: "__string",
    #                 destination: "__stringPatternS3",
    #                 encryption: {
    #                   speke_key_provider: {
    #                     resource_id: "__string",
    #                     system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                     url: "__stringPatternHttps",
    #                   },
    #                 },
    #                 fragment_length: 1,
    #                 hbbtv_compliance: "HBBTV_1_5", # accepts HBBTV_1_5, NONE
    #                 min_buffer_time: 1,
    #                 segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                 segment_length: 1,
    #                 write_segment_timeline_in_representation: "ENABLED", # accepts ENABLED, DISABLED
    #               },
    #               file_group_settings: {
    #                 destination: "__stringPatternS3",
    #               },
    #               hls_group_settings: {
    #                 ad_markers: ["ELEMENTAL"], # accepts ELEMENTAL, ELEMENTAL_SCTE35
    #                 base_url: "__string",
    #                 caption_language_mappings: [
    #                   {
    #                     caption_channel: 1,
    #                     custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                     language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                     language_description: "__string",
    #                   },
    #                 ],
    #                 caption_language_setting: "INSERT", # accepts INSERT, OMIT, NONE
    #                 client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                 codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #                 destination: "__stringPatternS3",
    #                 directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #                 encryption: {
    #                   constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #                   encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #                   initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   speke_key_provider: {
    #                     resource_id: "__string",
    #                     system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                     url: "__stringPatternHttps",
    #                   },
    #                   static_key_provider: {
    #                     key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                     key_format_versions: "__stringPatternDD",
    #                     static_key_value: "__stringPatternAZaZ0932",
    #                     url: "__string",
    #                   },
    #                   type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #                 },
    #                 manifest_compression: "GZIP", # accepts GZIP, NONE
    #                 manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                 min_final_segment_length: 1.0,
    #                 min_segment_length: 1,
    #                 output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #                 program_date_time: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 program_date_time_period: 1,
    #                 segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                 segment_length: 1,
    #                 segments_per_subdirectory: 1,
    #                 stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #                 timed_metadata_id_3_period: 1,
    #                 timestamp_delta_milliseconds: 1,
    #               },
    #               ms_smooth_group_settings: {
    #                 audio_deduplication: "COMBINE_DUPLICATE_STREAMS", # accepts COMBINE_DUPLICATE_STREAMS, NONE
    #                 destination: "__stringPatternS3",
    #                 encryption: {
    #                   speke_key_provider: {
    #                     resource_id: "__string",
    #                     system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                     url: "__stringPatternHttps",
    #                   },
    #                 },
    #                 fragment_length: 1,
    #                 manifest_encoding: "UTF8", # accepts UTF8, UTF16
    #               },
    #               type: "HLS_GROUP_SETTINGS", # accepts HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS, CMAF_GROUP_SETTINGS
    #             },
    #             outputs: [
    #               {
    #                 audio_descriptions: [
    #                   {
    #                     audio_normalization_settings: {
    #                       algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #                       algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #                       correction_gate_level: 1,
    #                       loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #                       peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #                       target_lkfs: 1.0,
    #                     },
    #                     audio_source_name: "__string",
    #                     audio_type: 1,
    #                     audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                     codec_settings: {
    #                       aac_settings: {
    #                         audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                         bitrate: 1,
    #                         codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                         coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                         rate_control_mode: "CBR", # accepts CBR, VBR
    #                         raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                         sample_rate: 1,
    #                         specification: "MPEG2", # accepts MPEG2, MPEG4
    #                         vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #                       },
    #                       ac_3_settings: {
    #                         bitrate: 1,
    #                         bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                         coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                         dialnorm: 1,
    #                         dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                         lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                         metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                         sample_rate: 1,
    #                       },
    #                       aiff_settings: {
    #                         bit_depth: 1,
    #                         channels: 1,
    #                         sample_rate: 1,
    #                       },
    #                       codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #                       eac_3_settings: {
    #                         attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                         bitrate: 1,
    #                         bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                         coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                         dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                         dialnorm: 1,
    #                         dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                         dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                         lfe_control: "LFE", # accepts LFE, NO_LFE
    #                         lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                         lo_ro_center_mix_level: 1.0,
    #                         lo_ro_surround_mix_level: 1.0,
    #                         lt_rt_center_mix_level: 1.0,
    #                         lt_rt_surround_mix_level: 1.0,
    #                         metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                         passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                         phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                         sample_rate: 1,
    #                         stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                         surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                         surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                       },
    #                       mp_2_settings: {
    #                         bitrate: 1,
    #                         channels: 1,
    #                         sample_rate: 1,
    #                       },
    #                       wav_settings: {
    #                         bit_depth: 1,
    #                         channels: 1,
    #                         format: "RIFF", # accepts RIFF, RF64
    #                         sample_rate: 1,
    #                       },
    #                     },
    #                     custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                     language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                     language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                     remix_settings: {
    #                       channel_mapping: {
    #                         output_channels: [
    #                           {
    #                             input_channels: [1],
    #                           },
    #                         ],
    #                       },
    #                       channels_in: 1,
    #                       channels_out: 1,
    #                     },
    #                     stream_name: "__stringPatternWS",
    #                   },
    #                 ],
    #                 caption_descriptions: [
    #                   {
    #                     caption_selector_name: "__stringMin1",
    #                     custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                     destination_settings: {
    #                       burnin_destination_settings: {
    #                         alignment: "CENTERED", # accepts CENTERED, LEFT
    #                         background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                         background_opacity: 1,
    #                         font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                         font_opacity: 1,
    #                         font_resolution: 1,
    #                         font_size: 1,
    #                         outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                         outline_size: 1,
    #                         shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                         shadow_opacity: 1,
    #                         shadow_x_offset: 1,
    #                         shadow_y_offset: 1,
    #                         teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                         x_position: 1,
    #                         y_position: 1,
    #                       },
    #                       destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #                       dvb_sub_destination_settings: {
    #                         alignment: "CENTERED", # accepts CENTERED, LEFT
    #                         background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                         background_opacity: 1,
    #                         font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                         font_opacity: 1,
    #                         font_resolution: 1,
    #                         font_size: 1,
    #                         outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                         outline_size: 1,
    #                         shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                         shadow_opacity: 1,
    #                         shadow_x_offset: 1,
    #                         shadow_y_offset: 1,
    #                         teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                         x_position: 1,
    #                         y_position: 1,
    #                       },
    #                       scc_destination_settings: {
    #                         framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #                       },
    #                       teletext_destination_settings: {
    #                         page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                       },
    #                       ttml_destination_settings: {
    #                         style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #                       },
    #                     },
    #                     language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                     language_description: "__string",
    #                   },
    #                 ],
    #                 container_settings: {
    #                   container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
    #                   f4v_settings: {
    #                     moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                   },
    #                   m2ts_settings: {
    #                     audio_buffer_model: "DVB", # accepts DVB, ATSC
    #                     audio_frames_per_pes: 1,
    #                     audio_pids: [1],
    #                     bitrate: 1,
    #                     buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                     dvb_nit_settings: {
    #                       network_id: 1,
    #                       network_name: "__stringMin1Max256",
    #                       nit_interval: 1,
    #                     },
    #                     dvb_sdt_settings: {
    #                       output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                       sdt_interval: 1,
    #                       service_name: "__stringMin1Max256",
    #                       service_provider_name: "__stringMin1Max256",
    #                     },
    #                     dvb_sub_pids: [1],
    #                     dvb_tdt_settings: {
    #                       tdt_interval: 1,
    #                     },
    #                     dvb_teletext_pid: 1,
    #                     ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                     ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                     es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     fragment_time: 1.0,
    #                     max_pcr_interval: 1,
    #                     min_ebp_interval: 1,
    #                     nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                     null_packet_bitrate: 1.0,
    #                     pat_interval: 1,
    #                     pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                     pcr_pid: 1,
    #                     pmt_interval: 1,
    #                     pmt_pid: 1,
    #                     private_metadata_pid: 1,
    #                     program_number: 1,
    #                     rate_mode: "VBR", # accepts VBR, CBR
    #                     scte_35_pid: 1,
    #                     scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                     segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #                     segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                     segmentation_time: 1.0,
    #                     timed_metadata_pid: 1,
    #                     transport_stream_id: 1,
    #                     video_pid: 1,
    #                   },
    #                   m3u_8_settings: {
    #                     audio_frames_per_pes: 1,
    #                     audio_pids: [1],
    #                     nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                     pat_interval: 1,
    #                     pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                     pcr_pid: 1,
    #                     pmt_interval: 1,
    #                     pmt_pid: 1,
    #                     private_metadata_pid: 1,
    #                     program_number: 1,
    #                     scte_35_pid: 1,
    #                     scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                     timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                     timed_metadata_pid: 1,
    #                     transport_stream_id: 1,
    #                     video_pid: 1,
    #                   },
    #                   mov_settings: {
    #                     clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #                     padding_control: "OMNEON", # accepts OMNEON, NONE
    #                     reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #                   },
    #                   mp_4_settings: {
    #                     cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                     mp_4_major_brand: "__string",
    #                   },
    #                 },
    #                 extension: "__string",
    #                 name_modifier: "__stringMin1",
    #                 output_settings: {
    #                   hls_settings: {
    #                     audio_group_id: "__string",
    #                     audio_rendition_sets: "__string",
    #                     audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                     i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     segment_modifier: "__string",
    #                   },
    #                 },
    #                 preset: "__stringMin0",
    #                 video_description: {
    #                   afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #                   anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #                   codec_settings: {
    #                     codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #                     frame_capture_settings: {
    #                       framerate_denominator: 1,
    #                       framerate_numerator: 1,
    #                       max_captures: 1,
    #                       quality: 1,
    #                     },
    #                     h264_settings: {
    #                       adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                       bitrate: 1,
    #                       codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #                       codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                       dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                       entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                       field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #                       flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                       framerate_denominator: 1,
    #                       framerate_numerator: 1,
    #                       gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                       gop_closed_cadence: 1,
    #                       gop_size: 1.0,
    #                       gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                       hrd_buffer_initial_fill_percentage: 1,
    #                       hrd_buffer_size: 1,
    #                       interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                       max_bitrate: 1,
    #                       min_i_interval: 1,
    #                       number_b_frames_between_reference_frames: 1,
    #                       number_reference_frames: 1,
    #                       par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       par_denominator: 1,
    #                       par_numerator: 1,
    #                       quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                       qvbr_settings: {
    #                         max_average_bitrate: 1,
    #                         qvbr_quality_level: 1,
    #                       },
    #                       rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                       repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #                       scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                       slices: 1,
    #                       slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                       softness: 1,
    #                       spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                       telecine: "NONE", # accepts NONE, SOFT, HARD
    #                       temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                     },
    #                     h265_settings: {
    #                       adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                       alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #                       bitrate: 1,
    #                       codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #                       codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #                       dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                       flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                       framerate_denominator: 1,
    #                       framerate_numerator: 1,
    #                       gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                       gop_closed_cadence: 1,
    #                       gop_size: 1.0,
    #                       gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                       hrd_buffer_initial_fill_percentage: 1,
    #                       hrd_buffer_size: 1,
    #                       interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                       max_bitrate: 1,
    #                       min_i_interval: 1,
    #                       number_b_frames_between_reference_frames: 1,
    #                       number_reference_frames: 1,
    #                       par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       par_denominator: 1,
    #                       par_numerator: 1,
    #                       quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                       qvbr_settings: {
    #                         max_average_bitrate: 1,
    #                         qvbr_quality_level: 1,
    #                       },
    #                       rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                       sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #                       scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                       slices: 1,
    #                       slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                       spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       telecine: "NONE", # accepts NONE, SOFT, HARD
    #                       temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #                       tiles: "DISABLED", # accepts DISABLED, ENABLED
    #                       unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                       write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #                     },
    #                     mpeg_2_settings: {
    #                       adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #                       bitrate: 1,
    #                       codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #                       codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #                       dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                       framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                       framerate_denominator: 1,
    #                       framerate_numerator: 1,
    #                       gop_closed_cadence: 1,
    #                       gop_size: 1.0,
    #                       gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                       hrd_buffer_initial_fill_percentage: 1,
    #                       hrd_buffer_size: 1,
    #                       interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                       intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #                       max_bitrate: 1,
    #                       min_i_interval: 1,
    #                       number_b_frames_between_reference_frames: 1,
    #                       par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       par_denominator: 1,
    #                       par_numerator: 1,
    #                       quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #                       rate_control_mode: "VBR", # accepts VBR, CBR
    #                       scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                       slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                       softness: 1,
    #                       spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       syntax: "DEFAULT", # accepts DEFAULT, D_10
    #                       telecine: "NONE", # accepts NONE, SOFT, HARD
    #                       temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     },
    #                     prores_settings: {
    #                       codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #                       framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                       framerate_denominator: 1,
    #                       framerate_numerator: 1,
    #                       interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                       par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                       par_denominator: 1,
    #                       par_numerator: 1,
    #                       slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                       telecine: "NONE", # accepts NONE, HARD
    #                     },
    #                   },
    #                   color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                   crop: {
    #                     height: 1,
    #                     width: 1,
    #                     x: 1,
    #                     y: 1,
    #                   },
    #                   drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                   fixed_afd: 1,
    #                   height: 1,
    #                   position: {
    #                     height: 1,
    #                     width: 1,
    #                     x: 1,
    #                     y: 1,
    #                   },
    #                   respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #                   scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #                   sharpness: 1,
    #                   timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                   video_preprocessors: {
    #                     color_corrector: {
    #                       brightness: 1,
    #                       color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #                       contrast: 1,
    #                       hdr_10_metadata: {
    #                         blue_primary_x: 1,
    #                         blue_primary_y: 1,
    #                         green_primary_x: 1,
    #                         green_primary_y: 1,
    #                         max_content_light_level: 1,
    #                         max_frame_average_light_level: 1,
    #                         max_luminance: 1,
    #                         min_luminance: 1,
    #                         red_primary_x: 1,
    #                         red_primary_y: 1,
    #                         white_point_x: 1,
    #                         white_point_y: 1,
    #                       },
    #                       hue: 1,
    #                       saturation: 1,
    #                     },
    #                     deinterlacer: {
    #                       algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #                       control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #                       mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #                     },
    #                     image_inserter: {
    #                       insertable_images: [
    #                         {
    #                           duration: 1,
    #                           fade_in: 1,
    #                           fade_out: 1,
    #                           height: 1,
    #                           image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #                           image_x: 1,
    #                           image_y: 1,
    #                           layer: 1,
    #                           opacity: 1,
    #                           start_time: "__stringPattern01D20305D205D",
    #                           width: 1,
    #                         },
    #                       ],
    #                     },
    #                     noise_reducer: {
    #                       filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #                       filter_settings: {
    #                         strength: 1,
    #                       },
    #                       spatial_filter_settings: {
    #                         post_filter_sharpen_strength: 1,
    #                         speed: 1,
    #                         strength: 1,
    #                       },
    #                     },
    #                     timecode_burnin: {
    #                       font_size: 1,
    #                       position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #                       prefix: "__stringPattern",
    #                     },
    #                   },
    #                   width: 1,
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         timecode_config: {
    #           anchor: "__stringPattern010920405090509092",
    #           source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #           start: "__stringPattern010920405090509092",
    #           timestamp_offset: "__stringPattern0940191020191209301",
    #         },
    #         timed_metadata_insertion: {
    #           id_3_insertions: [
    #             {
    #               id_3: "__stringPatternAZaZ0902",
    #               timecode: "__stringPattern010920405090509092",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input
    #   Ad Avail PTS time.
    #   @return [Integer]
    #
    # @!attribute [rw] avail_blanking
    #   Settings for ad avail blanking. Video can be blanked or overlaid
    #   with an image, and audio muted during SCTE-35 triggered ad avails.
    #   @return [Types::AvailBlanking]
    #
    # @!attribute [rw] inputs
    #   Use Inputs (inputs) to define the source file used in the transcode
    #   job. There can only be one input in a job template. Using the API,
    #   you can include multiple inputs when referencing a job template.
    #   @return [Array<Types::InputTemplate>]
    #
    # @!attribute [rw] nielsen_configuration
    #   Settings for Nielsen Configuration
    #   @return [Types::NielsenConfiguration]
    #
    # @!attribute [rw] output_groups
    #   (OutputGroups) contains one group of settings for each set of
    #   outputs that share a common package type. All unpackaged files
    #   (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in
    #   a single output group as well. Required in (OutputGroups) is a group
    #   of settings that apply to the whole group. This required object
    #   depends on the value you set for (Type) under
    #   (OutputGroups)>(OutputGroupSettings). Type, settings object pairs
    #   are as follows. * FILE\_GROUP\_SETTINGS, FileGroupSettings *
    #   HLS\_GROUP\_SETTINGS, HlsGroupSettings *
    #   DASH\_ISO\_GROUP\_SETTINGS, DashIsoGroupSettings *
    #   MS\_SMOOTH\_GROUP\_SETTINGS, MsSmoothGroupSettings *
    #   CMAF\_GROUP\_SETTINGS, CmafGroupSettings
    #   @return [Array<Types::OutputGroup>]
    #
    # @!attribute [rw] timecode_config
    #   Contains settings used to acquire and adjust timecode information
    #   from inputs.
    #   @return [Types::TimecodeConfig]
    #
    # @!attribute [rw] timed_metadata_insertion
    #   Enable Timed metadata insertion (TimedMetadataInsertion) to include
    #   ID3 tags in your job. To include timed metadata, you must enable it
    #   here, enable it in each output container, and specify tags and
    #   timecodes in ID3 insertion (Id3Insertion) objects.
    #   @return [Types::TimedMetadataInsertion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/JobTemplateSettings AWS API Documentation
    #
    class JobTemplateSettings < Struct.new(
      :ad_avail_offset,
      :avail_blanking,
      :inputs,
      :nielsen_configuration,
      :output_groups,
      :timecode_config,
      :timed_metadata_insertion)
      include Aws::Structure
    end

    # You can send list job templates requests with an empty body.
    # Optionally, you can filter the response by category by specifying it
    # in your request body. You can also optionally specify the maximum
    # number, up to twenty, of job templates to be returned.
    #
    # @note When making an API call, you may pass ListJobTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         category: "__string",
    #         list_by: "NAME", # accepts NAME, CREATION_DATE, SYSTEM
    #         max_results: 1,
    #         next_token: "__string",
    #         order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       }
    #
    # @!attribute [rw] category
    #   Optionally, specify a job template category to limit responses to
    #   only job templates from that category.
    #   @return [String]
    #
    # @!attribute [rw] list_by
    #   Optional. When you request a list of job templates, you can choose
    #   to list them alphabetically by NAME or chronologically by
    #   CREATION\_DATE. If you don't specify, the service will list them by
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Optional. Number of job templates, up to twenty, that will be
    #   returned at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this string, provided with the response to a previous request,
    #   to request the next batch of job templates.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   When you request lists of resources, you can optionally specify
    #   whether they are sorted in ASCENDING or DESCENDING order. Default
    #   varies by resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListJobTemplatesRequest AWS API Documentation
    #
    class ListJobTemplatesRequest < Struct.new(
      :category,
      :list_by,
      :max_results,
      :next_token,
      :order)
      include Aws::Structure
    end

    # Successful list job templates requests return a JSON array of job
    # templates. If you don't specify how they are ordered, you will
    # receive them in alphabetical order by name.
    #
    # @!attribute [rw] job_templates
    #   List of Job templates.
    #   @return [Array<Types::JobTemplate>]
    #
    # @!attribute [rw] next_token
    #   Use this string to request the next batch of job templates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListJobTemplatesResponse AWS API Documentation
    #
    class ListJobTemplatesResponse < Struct.new(
      :job_templates,
      :next_token)
      include Aws::Structure
    end

    # You can send list jobs requests with an empty body. Optionally, you
    # can filter the response by queue and/or job status by specifying them
    # in your request body. You can also optionally specify the maximum
    # number, up to twenty, of jobs to be returned.
    #
    # @note When making an API call, you may pass ListJobsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         queue: "__string",
    #         status: "SUBMITTED", # accepts SUBMITTED, PROGRESSING, COMPLETE, CANCELED, ERROR
    #       }
    #
    # @!attribute [rw] max_results
    #   Optional. Number of jobs, up to twenty, that will be returned at one
    #   time.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this string, provided with the response to a previous request,
    #   to request the next batch of jobs.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   When you request lists of resources, you can optionally specify
    #   whether they are sorted in ASCENDING or DESCENDING order. Default
    #   varies by resource.
    #   @return [String]
    #
    # @!attribute [rw] queue
    #   Provide a queue name to get back only jobs from that queue.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED,
    #   or ERROR.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :max_results,
      :next_token,
      :order,
      :queue,
      :status)
      include Aws::Structure
    end

    # Successful list jobs requests return a JSON array of jobs. If you
    # don't specify how they are ordered, you will receive the most
    # recently created first.
    #
    # @!attribute [rw] jobs
    #   List of jobs
    #   @return [Array<Types::Job>]
    #
    # @!attribute [rw] next_token
    #   Use this string to request the next batch of jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListJobsResponse AWS API Documentation
    #
    class ListJobsResponse < Struct.new(
      :jobs,
      :next_token)
      include Aws::Structure
    end

    # You can send list presets requests with an empty body. Optionally, you
    # can filter the response by category by specifying it in your request
    # body. You can also optionally specify the maximum number, up to
    # twenty, of queues to be returned.
    #
    # @note When making an API call, you may pass ListPresetsRequest
    #   data as a hash:
    #
    #       {
    #         category: "__string",
    #         list_by: "NAME", # accepts NAME, CREATION_DATE, SYSTEM
    #         max_results: 1,
    #         next_token: "__string",
    #         order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       }
    #
    # @!attribute [rw] category
    #   Optionally, specify a preset category to limit responses to only
    #   presets from that category.
    #   @return [String]
    #
    # @!attribute [rw] list_by
    #   Optional. When you request a list of presets, you can choose to list
    #   them alphabetically by NAME or chronologically by CREATION\_DATE. If
    #   you don't specify, the service will list them by name.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Optional. Number of presets, up to twenty, that will be returned at
    #   one time
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this string, provided with the response to a previous request,
    #   to request the next batch of presets.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   When you request lists of resources, you can optionally specify
    #   whether they are sorted in ASCENDING or DESCENDING order. Default
    #   varies by resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListPresetsRequest AWS API Documentation
    #
    class ListPresetsRequest < Struct.new(
      :category,
      :list_by,
      :max_results,
      :next_token,
      :order)
      include Aws::Structure
    end

    # Successful list presets requests return a JSON array of presets. If
    # you don't specify how they are ordered, you will receive them
    # alphabetically by name.
    #
    # @!attribute [rw] next_token
    #   Use this string to request the next batch of presets.
    #   @return [String]
    #
    # @!attribute [rw] presets
    #   List of presets
    #   @return [Array<Types::Preset>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListPresetsResponse AWS API Documentation
    #
    class ListPresetsResponse < Struct.new(
      :next_token,
      :presets)
      include Aws::Structure
    end

    # You can send list queues requests with an empty body. You can
    # optionally specify the maximum number, up to twenty, of queues to be
    # returned.
    #
    # @note When making an API call, you may pass ListQueuesRequest
    #   data as a hash:
    #
    #       {
    #         list_by: "NAME", # accepts NAME, CREATION_DATE
    #         max_results: 1,
    #         next_token: "__string",
    #         order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       }
    #
    # @!attribute [rw] list_by
    #   Optional. When you request a list of queues, you can choose to list
    #   them alphabetically by NAME or chronologically by CREATION\_DATE. If
    #   you don't specify, the service will list them by creation date.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Optional. Number of queues, up to twenty, that will be returned at
    #   one time.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this string, provided with the response to a previous request,
    #   to request the next batch of queues.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   When you request lists of resources, you can optionally specify
    #   whether they are sorted in ASCENDING or DESCENDING order. Default
    #   varies by resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListQueuesRequest AWS API Documentation
    #
    class ListQueuesRequest < Struct.new(
      :list_by,
      :max_results,
      :next_token,
      :order)
      include Aws::Structure
    end

    # Successful list queues return a JSON array of queues. If you don't
    # specify how they are ordered, you will receive them alphabetically by
    # name.
    #
    # @!attribute [rw] next_token
    #   Use this string to request the next batch of queues.
    #   @return [String]
    #
    # @!attribute [rw] queues
    #   List of queues.
    #   @return [Array<Types::Queue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListQueuesResponse AWS API Documentation
    #
    class ListQueuesResponse < Struct.new(
      :next_token,
      :queues)
      include Aws::Structure
    end

    # List the tags for your AWS Elemental MediaConvert resource by sending
    # a request with the Amazon Resource Name (ARN) of the resource. To get
    # the ARN, send a GET request with the resource name.
    #
    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "__string", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource that you want to list
    #   tags for. To get the ARN, send a GET request with the resource name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn)
      include Aws::Structure
    end

    # A successful request to list the tags for a resource returns a JSON
    # map of tags.
    #
    # @!attribute [rw] resource_tags
    #   The Amazon Resource Name (ARN) and tags for an AWS Elemental
    #   MediaConvert resource.
    #   @return [Types::ResourceTags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_tags)
      include Aws::Structure
    end

    # Settings for M2TS Container.
    #
    # @note When making an API call, you may pass M2tsSettings
    #   data as a hash:
    #
    #       {
    #         audio_buffer_model: "DVB", # accepts DVB, ATSC
    #         audio_frames_per_pes: 1,
    #         audio_pids: [1],
    #         bitrate: 1,
    #         buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #         dvb_nit_settings: {
    #           network_id: 1,
    #           network_name: "__stringMin1Max256",
    #           nit_interval: 1,
    #         },
    #         dvb_sdt_settings: {
    #           output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #           sdt_interval: 1,
    #           service_name: "__stringMin1Max256",
    #           service_provider_name: "__stringMin1Max256",
    #         },
    #         dvb_sub_pids: [1],
    #         dvb_tdt_settings: {
    #           tdt_interval: 1,
    #         },
    #         dvb_teletext_pid: 1,
    #         ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #         ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #         es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #         fragment_time: 1.0,
    #         max_pcr_interval: 1,
    #         min_ebp_interval: 1,
    #         nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #         null_packet_bitrate: 1.0,
    #         pat_interval: 1,
    #         pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #         pcr_pid: 1,
    #         pmt_interval: 1,
    #         pmt_pid: 1,
    #         private_metadata_pid: 1,
    #         program_number: 1,
    #         rate_mode: "VBR", # accepts VBR, CBR
    #         scte_35_pid: 1,
    #         scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #         segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #         segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #         segmentation_time: 1.0,
    #         timed_metadata_pid: 1,
    #         transport_stream_id: 1,
    #         video_pid: 1,
    #       }
    #
    # @!attribute [rw] audio_buffer_model
    #   Selects between the DVB and ATSC buffer models for Dolby Digital
    #   audio.
    #   @return [String]
    #
    # @!attribute [rw] audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #   @return [Integer]
    #
    # @!attribute [rw] audio_pids
    #   Packet Identifier (PID) of the elementary audio stream(s) in the
    #   transport stream. Multiple values are accepted, and can be entered
    #   in ranges and/or by comma separation.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] bitrate
    #   The output bitrate of the transport stream in bits per second.
    #   Setting to 0 lets the muxer automatically determine the appropriate
    #   bitrate. Other common values are 3750000, 7500000, and 15000000.
    #   @return [Integer]
    #
    # @!attribute [rw] buffer_model
    #   Controls what buffer model to use for accurate interleaving. If set
    #   to MULTIPLEX, use multiplex buffer model. If set to NONE, this can
    #   lead to lower latency, but low-memory devices may not be able to
    #   play back the stream without interruptions.
    #   @return [String]
    #
    # @!attribute [rw] dvb_nit_settings
    #   Inserts DVB Network Information Table (NIT) at the specified table
    #   repetition interval.
    #   @return [Types::DvbNitSettings]
    #
    # @!attribute [rw] dvb_sdt_settings
    #   Inserts DVB Service Description Table (NIT) at the specified table
    #   repetition interval.
    #   @return [Types::DvbSdtSettings]
    #
    # @!attribute [rw] dvb_sub_pids
    #   Packet Identifier (PID) for input source DVB Subtitle data to this
    #   output. Multiple values are accepted, and can be entered in ranges
    #   and/or by comma separation.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] dvb_tdt_settings
    #   Inserts DVB Time and Date Table (TDT) at the specified table
    #   repetition interval.
    #   @return [Types::DvbTdtSettings]
    #
    # @!attribute [rw] dvb_teletext_pid
    #   Packet Identifier (PID) for input source DVB Teletext data to this
    #   output.
    #   @return [Integer]
    #
    # @!attribute [rw] ebp_audio_interval
    #   When set to VIDEO\_AND\_FIXED\_INTERVALS, audio EBP markers will be
    #   added to partitions 3 and 4. The interval between these additional
    #   markers will be fixed, and will be slightly shorter than the video
    #   EBP marker interval. When set to VIDEO\_INTERVAL, these additional
    #   markers will not be inserted. Only applicable when EBP segmentation
    #   markers are is selected (segmentationMarkers is EBP or EBP\_LEGACY).
    #   @return [String]
    #
    # @!attribute [rw] ebp_placement
    #   Selects which PIDs to place EBP markers on. They can either be
    #   placed only on the video PID, or on both the video PID and all audio
    #   PIDs. Only applicable when EBP segmentation markers are is selected
    #   (segmentationMarkers is EBP or EBP\_LEGACY).
    #   @return [String]
    #
    # @!attribute [rw] es_rate_in_pes
    #   Controls whether to include the ES Rate field in the PES header.
    #   @return [String]
    #
    # @!attribute [rw] fragment_time
    #   The length in seconds of each fragment. Only used with EBP markers.
    #   @return [Float]
    #
    # @!attribute [rw] max_pcr_interval
    #   Maximum time in milliseconds between Program Clock References (PCRs)
    #   inserted into the transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] min_ebp_interval
    #   When set, enforces that Encoder Boundary Points do not come within
    #   the specified time interval of each other by looking ahead at input
    #   video. If another EBP is going to come in within the specified time
    #   interval, the current EBP is not emitted, and the segment is
    #   "stretched" to the next marker. The lookahead value does not add
    #   latency to the system. The Live Event must be configured elsewhere
    #   to create sufficient latency to make the lookahead accurate.
    #   @return [Integer]
    #
    # @!attribute [rw] nielsen_id_3
    #   If INSERT, Nielsen inaudible tones for media tracking will be
    #   detected in the input audio and an equivalent ID3 tag will be
    #   inserted in the output.
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
    #   output transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] pcr_control
    #   When set to PCR\_EVERY\_PES\_PACKET, a Program Clock Reference value
    #   is inserted for every Packetized Elementary Stream (PES) header.
    #   This is effective only when the PCR PID is the same as the video or
    #   audio elementary stream.
    #   @return [String]
    #
    # @!attribute [rw] pcr_pid
    #   Packet Identifier (PID) of the Program Clock Reference (PCR) in the
    #   transport stream. When no value is given, the encoder will assign
    #   the same value as the Video PID.
    #   @return [Integer]
    #
    # @!attribute [rw] pmt_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] pmt_pid
    #   Packet Identifier (PID) for the Program Map Table (PMT) in the
    #   transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] private_metadata_pid
    #   Packet Identifier (PID) of the private metadata stream in the
    #   transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] program_number
    #   The value of the program number field in the Program Map Table.
    #   @return [Integer]
    #
    # @!attribute [rw] rate_mode
    #   When set to CBR, inserts null packets into transport stream to fill
    #   specified bitrate. When set to VBR, the bitrate setting acts as the
    #   maximum bitrate, but the output will not be padded up to that
    #   bitrate.
    #   @return [String]
    #
    # @!attribute [rw] scte_35_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport
    #   stream.
    #   @return [Integer]
    #
    # @!attribute [rw] scte_35_source
    #   Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35
    #   signals from input to output.
    #   @return [String]
    #
    # @!attribute [rw] segmentation_markers
    #   Inserts segmentation markers at each segmentation\_time period.
    #   rai\_segstart sets the Random Access Indicator bit in the adaptation
    #   field. rai\_adapt sets the RAI bit and adds the current timecode in
    #   the private data bytes. psi\_segstart inserts PAT and PMT tables at
    #   the start of segments. ebp adds Encoder Boundary Point information
    #   to the adaptation field as per OpenCable specification
    #   OC-SP-EBP-I01-130118. ebp\_legacy adds Encoder Boundary Point
    #   information to the adaptation field using a legacy proprietary
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] segmentation_style
    #   The segmentation style parameter controls how segmentation markers
    #   are inserted into the transport stream. With avails, it is possible
    #   that segments may be truncated, which can influence where future
    #   segmentation markers are inserted. When a segmentation style of
    #   "reset\_cadence" is selected and a segment is truncated due to an
    #   avail, we will reset the segmentation cadence. This means the
    #   subsequent segment will have a duration of of $segmentation\_time
    #   seconds. When a segmentation style of "maintain\_cadence" is
    #   selected and a segment is truncated due to an avail, we will not
    #   reset the segmentation cadence. This means the subsequent segment
    #   will likely be truncated as well. However, all segments after that
    #   will have a duration of $segmentation\_time seconds. Note that EBP
    #   lookahead is a slight exception to this rule.
    #   @return [String]
    #
    # @!attribute [rw] segmentation_time
    #   The length in seconds of each segment. Required unless markers is
    #   set to \_none\_.
    #   @return [Float]
    #
    # @!attribute [rw] timed_metadata_pid
    #   Packet Identifier (PID) of the timed metadata stream in the
    #   transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] transport_stream_id
    #   The value of the transport stream ID field in the Program Map Table.
    #   @return [Integer]
    #
    # @!attribute [rw] video_pid
    #   Packet Identifier (PID) of the elementary video stream in the
    #   transport stream.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/M2tsSettings AWS API Documentation
    #
    class M2tsSettings < Struct.new(
      :audio_buffer_model,
      :audio_frames_per_pes,
      :audio_pids,
      :bitrate,
      :buffer_model,
      :dvb_nit_settings,
      :dvb_sdt_settings,
      :dvb_sub_pids,
      :dvb_tdt_settings,
      :dvb_teletext_pid,
      :ebp_audio_interval,
      :ebp_placement,
      :es_rate_in_pes,
      :fragment_time,
      :max_pcr_interval,
      :min_ebp_interval,
      :nielsen_id_3,
      :null_packet_bitrate,
      :pat_interval,
      :pcr_control,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :private_metadata_pid,
      :program_number,
      :rate_mode,
      :scte_35_pid,
      :scte_35_source,
      :segmentation_markers,
      :segmentation_style,
      :segmentation_time,
      :timed_metadata_pid,
      :transport_stream_id,
      :video_pid)
      include Aws::Structure
    end

    # Settings for TS segments in HLS
    #
    # @note When making an API call, you may pass M3u8Settings
    #   data as a hash:
    #
    #       {
    #         audio_frames_per_pes: 1,
    #         audio_pids: [1],
    #         nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #         pat_interval: 1,
    #         pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #         pcr_pid: 1,
    #         pmt_interval: 1,
    #         pmt_pid: 1,
    #         private_metadata_pid: 1,
    #         program_number: 1,
    #         scte_35_pid: 1,
    #         scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #         timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #         timed_metadata_pid: 1,
    #         transport_stream_id: 1,
    #         video_pid: 1,
    #       }
    #
    # @!attribute [rw] audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #   @return [Integer]
    #
    # @!attribute [rw] audio_pids
    #   Packet Identifier (PID) of the elementary audio stream(s) in the
    #   transport stream. Multiple values are accepted, and can be entered
    #   in ranges and/or by comma separation.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] nielsen_id_3
    #   If INSERT, Nielsen inaudible tones for media tracking will be
    #   detected in the input audio and an equivalent ID3 tag will be
    #   inserted in the output.
    #   @return [String]
    #
    # @!attribute [rw] pat_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] pcr_control
    #   When set to PCR\_EVERY\_PES\_PACKET a Program Clock Reference value
    #   is inserted for every Packetized Elementary Stream (PES) header.
    #   This parameter is effective only when the PCR PID is the same as the
    #   video or audio elementary stream.
    #   @return [String]
    #
    # @!attribute [rw] pcr_pid
    #   Packet Identifier (PID) of the Program Clock Reference (PCR) in the
    #   transport stream. When no value is given, the encoder will assign
    #   the same value as the Video PID.
    #   @return [Integer]
    #
    # @!attribute [rw] pmt_interval
    #   The number of milliseconds between instances of this table in the
    #   output transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] pmt_pid
    #   Packet Identifier (PID) for the Program Map Table (PMT) in the
    #   transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] private_metadata_pid
    #   Packet Identifier (PID) of the private metadata stream in the
    #   transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] program_number
    #   The value of the program number field in the Program Map Table.
    #   @return [Integer]
    #
    # @!attribute [rw] scte_35_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport
    #   stream.
    #   @return [Integer]
    #
    # @!attribute [rw] scte_35_source
    #   Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35
    #   signals from input to output.
    #   @return [String]
    #
    # @!attribute [rw] timed_metadata
    #   Applies only to HLS outputs. Use this setting to specify whether the
    #   service inserts the ID3 timed metadata from the input in this
    #   output.
    #   @return [String]
    #
    # @!attribute [rw] timed_metadata_pid
    #   Packet Identifier (PID) of the timed metadata stream in the
    #   transport stream.
    #   @return [Integer]
    #
    # @!attribute [rw] transport_stream_id
    #   The value of the transport stream ID field in the Program Map Table.
    #   @return [Integer]
    #
    # @!attribute [rw] video_pid
    #   Packet Identifier (PID) of the elementary video stream in the
    #   transport stream.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/M3u8Settings AWS API Documentation
    #
    class M3u8Settings < Struct.new(
      :audio_frames_per_pes,
      :audio_pids,
      :nielsen_id_3,
      :pat_interval,
      :pcr_control,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :private_metadata_pid,
      :program_number,
      :scte_35_pid,
      :scte_35_source,
      :timed_metadata,
      :timed_metadata_pid,
      :transport_stream_id,
      :video_pid)
      include Aws::Structure
    end

    # Settings for MOV Container.
    #
    # @note When making an API call, you may pass MovSettings
    #   data as a hash:
    #
    #       {
    #         clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #         cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #         mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #         padding_control: "OMNEON", # accepts OMNEON, NONE
    #         reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #       }
    #
    # @!attribute [rw] clap_atom
    #   When enabled, include 'clap' atom if appropriate for the video
    #   output settings.
    #   @return [String]
    #
    # @!attribute [rw] cslg_atom
    #   When enabled, file composition times will start at zero, composition
    #   times in the 'ctts' (composition time to sample) box for B-frames
    #   will be negative, and a 'cslg' (composition shift least greatest)
    #   box will be included per 14496-1 amendment 1. This improves
    #   compatibility with Apple players and tools.
    #   @return [String]
    #
    # @!attribute [rw] mpeg_2_four_cc_control
    #   When set to XDCAM, writes MPEG2 video streams into the QuickTime
    #   file using XDCAM fourcc codes. This increases compatibility with
    #   Apple editors and players, but may decrease compatibility with other
    #   players. Only applicable when the video codec is MPEG2.
    #   @return [String]
    #
    # @!attribute [rw] padding_control
    #   If set to OMNEON, inserts Omneon-compatible padding
    #   @return [String]
    #
    # @!attribute [rw] reference
    #   A value of 'external' creates separate media files and the wrapper
    #   file (.mov) contains references to these media files. A value of
    #   'self\_contained' creates only a wrapper (.mov) file and this file
    #   contains all of the media.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/MovSettings AWS API Documentation
    #
    class MovSettings < Struct.new(
      :clap_atom,
      :cslg_atom,
      :mpeg_2_four_cc_control,
      :padding_control,
      :reference)
      include Aws::Structure
    end

    # Required when you set (Codec) under
    # (AudioDescriptions)>(CodecSettings) to the value MP2.
    #
    # @note When making an API call, you may pass Mp2Settings
    #   data as a hash:
    #
    #       {
    #         bitrate: 1,
    #         channels: 1,
    #         sample_rate: 1,
    #       }
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second.
    #   @return [Integer]
    #
    # @!attribute [rw] channels
    #   Set Channels to specify the number of channels in this output audio
    #   track. Choosing Mono in the console will give you 1 output channel;
    #   choosing Stereo will give you 2. In the API, valid values are 1 and
    #   2.
    #   @return [Integer]
    #
    # @!attribute [rw] sample_rate
    #   Sample rate in hz.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Mp2Settings AWS API Documentation
    #
    class Mp2Settings < Struct.new(
      :bitrate,
      :channels,
      :sample_rate)
      include Aws::Structure
    end

    # Settings for MP4 Container
    #
    # @note When making an API call, you may pass Mp4Settings
    #   data as a hash:
    #
    #       {
    #         cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #         free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #         moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #         mp_4_major_brand: "__string",
    #       }
    #
    # @!attribute [rw] cslg_atom
    #   When enabled, file composition times will start at zero, composition
    #   times in the 'ctts' (composition time to sample) box for B-frames
    #   will be negative, and a 'cslg' (composition shift least greatest)
    #   box will be included per 14496-1 amendment 1. This improves
    #   compatibility with Apple players and tools.
    #   @return [String]
    #
    # @!attribute [rw] free_space_box
    #   Inserts a free-space box immediately after the moov box.
    #   @return [String]
    #
    # @!attribute [rw] moov_placement
    #   If set to PROGRESSIVE\_DOWNLOAD, the MOOV atom is relocated to the
    #   beginning of the archive as required for progressive downloading.
    #   Otherwise it is placed normally at the end.
    #   @return [String]
    #
    # @!attribute [rw] mp_4_major_brand
    #   Overrides the "Major Brand" field in the output file. Usually not
    #   necessary to specify.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Mp4Settings AWS API Documentation
    #
    class Mp4Settings < Struct.new(
      :cslg_atom,
      :free_space_box,
      :moov_placement,
      :mp_4_major_brand)
      include Aws::Structure
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings)
    # to the value MPEG2.
    #
    # @note When making an API call, you may pass Mpeg2Settings
    #   data as a hash:
    #
    #       {
    #         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #         bitrate: 1,
    #         codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #         codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #         framerate_denominator: 1,
    #         framerate_numerator: 1,
    #         gop_closed_cadence: 1,
    #         gop_size: 1.0,
    #         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #         hrd_buffer_initial_fill_percentage: 1,
    #         hrd_buffer_size: 1,
    #         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #         intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #         max_bitrate: 1,
    #         min_i_interval: 1,
    #         number_b_frames_between_reference_frames: 1,
    #         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #         par_denominator: 1,
    #         par_numerator: 1,
    #         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #         rate_control_mode: "VBR", # accepts VBR, CBR
    #         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #         softness: 1,
    #         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #         syntax: "DEFAULT", # accepts DEFAULT, D_10
    #         telecine: "NONE", # accepts NONE, SOFT, HARD
    #         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #       }
    #
    # @!attribute [rw] adaptive_quantization
    #   Adaptive quantization. Allows intra-frame quantizers to vary to
    #   improve visual quality.
    #   @return [String]
    #
    # @!attribute [rw] bitrate
    #   Average bitrate in bits/second. Required for VBR and CBR. For MS
    #   Smooth outputs, bitrates must be unique when rounded down to the
    #   nearest multiple of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] codec_level
    #   Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video
    #   output.
    #   @return [String]
    #
    # @!attribute [rw] codec_profile
    #   Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the
    #   video output.
    #   @return [String]
    #
    # @!attribute [rw] dynamic_sub_gop
    #   Choose Adaptive to improve subjective video quality for high-motion
    #   content. This will cause the service to use fewer B-frames (which
    #   infer information based on other frames) for high-motion portions of
    #   the video and more B-frames for low-motion portions. The maximum
    #   number of B-frames is limited by the value you provide for the
    #   setting B frames between reference frames
    #   (numberBFramesBetweenReferenceFrames).
    #   @return [String]
    #
    # @!attribute [rw] framerate_control
    #   If you are using the console, use the Framerate setting to specify
    #   the framerate for this output. If you want to keep the same
    #   framerate as the input video, choose Follow source. If you want to
    #   do framerate conversion, choose a framerate from the dropdown list
    #   or choose Custom. The framerates shown in the dropdown list are
    #   decimal approximations of fractions. If you choose Custom, specify
    #   your framerate as a fraction. If you are creating your transcoding
    #   job sepecification as a JSON file without the console, use
    #   FramerateControl to specify which value the service uses for the
    #   framerate for this output. Choose INITIALIZE\_FROM\_SOURCE if you
    #   want the service to use the framerate from the input. Choose
    #   SPECIFIED if you want the service to use the framerate you specify
    #   in the settings FramerateNumerator and FramerateDenominator.
    #   @return [String]
    #
    # @!attribute [rw] framerate_conversion_algorithm
    #   When set to INTERPOLATE, produces smoother motion during framerate
    #   conversion.
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
    #   GOP Length (keyframe interval) in frames or seconds. Must be greater
    #   than zero.
    #   @return [Float]
    #
    # @!attribute [rw] gop_size_units
    #   Indicates if the GOP Size in MPEG2 is specified in frames or
    #   seconds. If seconds the system will convert the GOP Size into a
    #   frame count at run time.
    #   @return [String]
    #
    # @!attribute [rw] hrd_buffer_initial_fill_percentage
    #   Percentage of the buffer that should initially be filled (HRD buffer
    #   model).
    #   @return [Integer]
    #
    # @!attribute [rw] hrd_buffer_size
    #   Size of buffer (HRD buffer model) in bits. For example, enter five
    #   megabits as 5000000.
    #   @return [Integer]
    #
    # @!attribute [rw] interlace_mode
    #   Use Interlace mode (InterlaceMode) to choose the scan line type for
    #   the output. * Top Field First (TOP\_FIELD) and Bottom Field First
    #   (BOTTOM\_FIELD) produce interlaced output with the entire output
    #   having the same field polarity (top or bottom first). * Follow,
    #   Default Top (FOLLOW\_TOP\_FIELD) and Follow, Default Bottom
    #   (FOLLOW\_BOTTOM\_FIELD) use the same field polarity as the source.
    #   Therefore, behavior depends on the input scan type. - If the source
    #   is interlaced, the output will be interlaced with the same polarity
    #   as the source (it will follow the source). The output could
    #   therefore be a mix of "top field first" and "bottom field
    #   first". - If the source is progressive, the output will be
    #   interlaced with "top field first" or "bottom field first"
    #   polarity, depending on which of the Follow options you chose.
    #   @return [String]
    #
    # @!attribute [rw] intra_dc_precision
    #   Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization
    #   precision for intra-block DC coefficients. If you choose the value
    #   auto, the service will automatically select the precision based on
    #   the per-frame compression ratio.
    #   @return [String]
    #
    # @!attribute [rw] max_bitrate
    #   Maximum bitrate in bits/second. For example, enter five megabits per
    #   second as 5000000.
    #   @return [Integer]
    #
    # @!attribute [rw] min_i_interval
    #   Enforces separation between repeated (cadence) I-frames and I-frames
    #   inserted by Scene Change Detection. If a scene change I-frame is
    #   within I-interval frames of a cadence I-frame, the GOP is shrunk
    #   and/or stretched to the scene change I-frame. GOP stretch requires
    #   enabling lookahead as well as setting I-interval. The normal cadence
    #   resumes for the next GOP. This setting is only used when Scene
    #   Change Detect is enabled. Note: Maximum GOP stretch = GOP size +
    #   Min-I-interval - 1
    #   @return [Integer]
    #
    # @!attribute [rw] number_b_frames_between_reference_frames
    #   Number of B-frames between reference frames.
    #   @return [Integer]
    #
    # @!attribute [rw] par_control
    #   Using the API, enable ParFollowSource if you want the service to use
    #   the pixel aspect ratio from the input. Using the console, do this by
    #   choosing Follow source for Pixel aspect ratio.
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
    # @!attribute [rw] quality_tuning_level
    #   Use Quality tuning level (Mpeg2QualityTuningLevel) to specifiy
    #   whether to use single-pass or multipass video encoding.
    #   @return [String]
    #
    # @!attribute [rw] rate_control_mode
    #   Use Rate control mode (Mpeg2RateControlMode) to specifiy whether the
    #   bitrate is variable (vbr) or constant (cbr).
    #   @return [String]
    #
    # @!attribute [rw] scene_change_detect
    #   Scene change detection (inserts I-frames on scene changes).
    #   @return [String]
    #
    # @!attribute [rw] slow_pal
    #   Enables Slow PAL rate conversion. 23.976fps and 24fps input is
    #   relabeled as 25fps, and audio is sped up correspondingly.
    #   @return [String]
    #
    # @!attribute [rw] softness
    #   Softness. Selects quantizer matrix, larger values reduce
    #   high-frequency content in the encoded image.
    #   @return [Integer]
    #
    # @!attribute [rw] spatial_adaptive_quantization
    #   Adjust quantization within each frame based on spatial variation of
    #   content complexity.
    #   @return [String]
    #
    # @!attribute [rw] syntax
    #   Produces a Type D-10 compatible bitstream (SMPTE 356M-2001).
    #   @return [String]
    #
    # @!attribute [rw] telecine
    #   Only use Telecine (Mpeg2Telecine) when you set Framerate (Framerate)
    #   to 29.970. Set Telecine (Mpeg2Telecine) to Hard (hard) to produce a
    #   29.97i output from a 23.976 input. Set it to Soft (soft) to produce
    #   23.976 output and leave converstion to the player.
    #   @return [String]
    #
    # @!attribute [rw] temporal_adaptive_quantization
    #   Adjust quantization within each frame based on temporal variation of
    #   content complexity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Mpeg2Settings AWS API Documentation
    #
    class Mpeg2Settings < Struct.new(
      :adaptive_quantization,
      :bitrate,
      :codec_level,
      :codec_profile,
      :dynamic_sub_gop,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_closed_cadence,
      :gop_size,
      :gop_size_units,
      :hrd_buffer_initial_fill_percentage,
      :hrd_buffer_size,
      :interlace_mode,
      :intra_dc_precision,
      :max_bitrate,
      :min_i_interval,
      :number_b_frames_between_reference_frames,
      :par_control,
      :par_denominator,
      :par_numerator,
      :quality_tuning_level,
      :rate_control_mode,
      :scene_change_detect,
      :slow_pal,
      :softness,
      :spatial_adaptive_quantization,
      :syntax,
      :telecine,
      :temporal_adaptive_quantization)
      include Aws::Structure
    end

    # If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to
    # specify the value SpekeKeyProvider.
    #
    # @note When making an API call, you may pass MsSmoothEncryptionSettings
    #   data as a hash:
    #
    #       {
    #         speke_key_provider: {
    #           resource_id: "__string",
    #           system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #           url: "__stringPatternHttps",
    #         },
    #       }
    #
    # @!attribute [rw] speke_key_provider
    #   Settings for use with a SPEKE key provider
    #   @return [Types::SpekeKeyProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/MsSmoothEncryptionSettings AWS API Documentation
    #
    class MsSmoothEncryptionSettings < Struct.new(
      :speke_key_provider)
      include Aws::Structure
    end

    # Required when you set (Type) under
    # (OutputGroups)>(OutputGroupSettings) to MS\_SMOOTH\_GROUP\_SETTINGS.
    #
    # @note When making an API call, you may pass MsSmoothGroupSettings
    #   data as a hash:
    #
    #       {
    #         audio_deduplication: "COMBINE_DUPLICATE_STREAMS", # accepts COMBINE_DUPLICATE_STREAMS, NONE
    #         destination: "__stringPatternS3",
    #         encryption: {
    #           speke_key_provider: {
    #             resource_id: "__string",
    #             system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #             url: "__stringPatternHttps",
    #           },
    #         },
    #         fragment_length: 1,
    #         manifest_encoding: "UTF8", # accepts UTF8, UTF16
    #       }
    #
    # @!attribute [rw] audio_deduplication
    #   COMBINE\_DUPLICATE\_STREAMS combines identical audio encoding
    #   settings across a Microsoft Smooth output group into a single audio
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   Use Destination (Destination) to specify the S3 output location and
    #   the output filename base. Destination accepts format identifiers. If
    #   you do not specify the base filename in the URI, the service will
    #   use the filename of the input file. If your job has multiple inputs,
    #   the service uses the filename of the first input file.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to
    #   specify the value SpekeKeyProvider.
    #   @return [Types::MsSmoothEncryptionSettings]
    #
    # @!attribute [rw] fragment_length
    #   Use Fragment length (FragmentLength) to specify the mp4 fragment
    #   sizes in seconds. Fragment length must be compatible with GOP size
    #   and framerate.
    #   @return [Integer]
    #
    # @!attribute [rw] manifest_encoding
    #   Use Manifest encoding (MsSmoothManifestEncoding) to specify the
    #   encoding format for the server and client manifest. Valid options
    #   are utf8 and utf16.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/MsSmoothGroupSettings AWS API Documentation
    #
    class MsSmoothGroupSettings < Struct.new(
      :audio_deduplication,
      :destination,
      :encryption,
      :fragment_length,
      :manifest_encoding)
      include Aws::Structure
    end

    # Settings for Nielsen Configuration
    #
    # @note When making an API call, you may pass NielsenConfiguration
    #   data as a hash:
    #
    #       {
    #         breakout_code: 1,
    #         distributor_id: "__string",
    #       }
    #
    # @!attribute [rw] breakout_code
    #   Use Nielsen Configuration (NielsenConfiguration) to set the Nielsen
    #   measurement system breakout code. Supported values are 0, 3, 7, and
    #   9.
    #   @return [Integer]
    #
    # @!attribute [rw] distributor_id
    #   Use Distributor ID (DistributorID) to specify the distributor ID
    #   that is assigned to your organization by Neilsen.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/NielsenConfiguration AWS API Documentation
    #
    class NielsenConfiguration < Struct.new(
      :breakout_code,
      :distributor_id)
      include Aws::Structure
    end

    # Enable the Noise reducer (NoiseReducer) feature to remove noise from
    # your video output if necessary. Enable or disable this feature for
    # each output individually. This setting is disabled by default. When
    # you enable Noise reducer (NoiseReducer), you must also select a value
    # for Noise reducer filter (NoiseReducerFilter).
    #
    # @note When making an API call, you may pass NoiseReducer
    #   data as a hash:
    #
    #       {
    #         filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #         filter_settings: {
    #           strength: 1,
    #         },
    #         spatial_filter_settings: {
    #           post_filter_sharpen_strength: 1,
    #           speed: 1,
    #           strength: 1,
    #         },
    #       }
    #
    # @!attribute [rw] filter
    #   Use Noise reducer filter (NoiseReducerFilter) to select one of the
    #   following spatial image filtering functions. To use this setting,
    #   you must also enable Noise reducer (NoiseReducer). * Bilateral is
    #   an edge preserving noise reduction filter. * Mean (softest),
    #   Gaussian, Lanczos, and Sharpen (sharpest) are convolution filters.
    #   * Conserve is a min/max noise reduction filter. * Spatial is a
    #   frequency-domain filter based on JND principles.
    #   @return [String]
    #
    # @!attribute [rw] filter_settings
    #   Settings for a noise reducer filter
    #   @return [Types::NoiseReducerFilterSettings]
    #
    # @!attribute [rw] spatial_filter_settings
    #   Noise reducer filter settings for spatial filter.
    #   @return [Types::NoiseReducerSpatialFilterSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/NoiseReducer AWS API Documentation
    #
    class NoiseReducer < Struct.new(
      :filter,
      :filter_settings,
      :spatial_filter_settings)
      include Aws::Structure
    end

    # Settings for a noise reducer filter
    #
    # @note When making an API call, you may pass NoiseReducerFilterSettings
    #   data as a hash:
    #
    #       {
    #         strength: 1,
    #       }
    #
    # @!attribute [rw] strength
    #   Relative strength of noise reducing filter. Higher values produce
    #   stronger filtering.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/NoiseReducerFilterSettings AWS API Documentation
    #
    class NoiseReducerFilterSettings < Struct.new(
      :strength)
      include Aws::Structure
    end

    # Noise reducer filter settings for spatial filter.
    #
    # @note When making an API call, you may pass NoiseReducerSpatialFilterSettings
    #   data as a hash:
    #
    #       {
    #         post_filter_sharpen_strength: 1,
    #         speed: 1,
    #         strength: 1,
    #       }
    #
    # @!attribute [rw] post_filter_sharpen_strength
    #   Specify strength of post noise reduction sharpening filter, with 0
    #   disabling the filter and 3 enabling it at maximum strength.
    #   @return [Integer]
    #
    # @!attribute [rw] speed
    #   The speed of the filter, from -2 (lower speed) to 3 (higher speed),
    #   with 0 being the nominal value.
    #   @return [Integer]
    #
    # @!attribute [rw] strength
    #   Relative strength of noise reducing filter. Higher values produce
    #   stronger filtering.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/NoiseReducerSpatialFilterSettings AWS API Documentation
    #
    class NoiseReducerSpatialFilterSettings < Struct.new(
      :post_filter_sharpen_strength,
      :speed,
      :strength)
      include Aws::Structure
    end

    # An output object describes the settings for a single output file or
    # stream in an output group.
    #
    # @note When making an API call, you may pass Output
    #   data as a hash:
    #
    #       {
    #         audio_descriptions: [
    #           {
    #             audio_normalization_settings: {
    #               algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #               algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #               correction_gate_level: 1,
    #               loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #               peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #               target_lkfs: 1.0,
    #             },
    #             audio_source_name: "__string",
    #             audio_type: 1,
    #             audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             codec_settings: {
    #               aac_settings: {
    #                 audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                 bitrate: 1,
    #                 codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                 coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                 rate_control_mode: "CBR", # accepts CBR, VBR
    #                 raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                 sample_rate: 1,
    #                 specification: "MPEG2", # accepts MPEG2, MPEG4
    #                 vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #               },
    #               ac_3_settings: {
    #                 bitrate: 1,
    #                 bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                 coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                 dialnorm: 1,
    #                 dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                 lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                 metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                 sample_rate: 1,
    #               },
    #               aiff_settings: {
    #                 bit_depth: 1,
    #                 channels: 1,
    #                 sample_rate: 1,
    #               },
    #               codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #               eac_3_settings: {
    #                 attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                 bitrate: 1,
    #                 bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                 coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                 dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                 dialnorm: 1,
    #                 dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                 dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                 lfe_control: "LFE", # accepts LFE, NO_LFE
    #                 lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                 lo_ro_center_mix_level: 1.0,
    #                 lo_ro_surround_mix_level: 1.0,
    #                 lt_rt_center_mix_level: 1.0,
    #                 lt_rt_surround_mix_level: 1.0,
    #                 metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                 passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                 phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                 sample_rate: 1,
    #                 stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                 surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                 surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #               },
    #               mp_2_settings: {
    #                 bitrate: 1,
    #                 channels: 1,
    #                 sample_rate: 1,
    #               },
    #               wav_settings: {
    #                 bit_depth: 1,
    #                 channels: 1,
    #                 format: "RIFF", # accepts RIFF, RF64
    #                 sample_rate: 1,
    #               },
    #             },
    #             custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #             language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #             language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             remix_settings: {
    #               channel_mapping: {
    #                 output_channels: [
    #                   {
    #                     input_channels: [1],
    #                   },
    #                 ],
    #               },
    #               channels_in: 1,
    #               channels_out: 1,
    #             },
    #             stream_name: "__stringPatternWS",
    #           },
    #         ],
    #         caption_descriptions: [
    #           {
    #             caption_selector_name: "__stringMin1",
    #             custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #             destination_settings: {
    #               burnin_destination_settings: {
    #                 alignment: "CENTERED", # accepts CENTERED, LEFT
    #                 background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                 background_opacity: 1,
    #                 font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                 font_opacity: 1,
    #                 font_resolution: 1,
    #                 font_size: 1,
    #                 outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                 outline_size: 1,
    #                 shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                 shadow_opacity: 1,
    #                 shadow_x_offset: 1,
    #                 shadow_y_offset: 1,
    #                 teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                 x_position: 1,
    #                 y_position: 1,
    #               },
    #               destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #               dvb_sub_destination_settings: {
    #                 alignment: "CENTERED", # accepts CENTERED, LEFT
    #                 background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                 background_opacity: 1,
    #                 font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                 font_opacity: 1,
    #                 font_resolution: 1,
    #                 font_size: 1,
    #                 outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                 outline_size: 1,
    #                 shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                 shadow_opacity: 1,
    #                 shadow_x_offset: 1,
    #                 shadow_y_offset: 1,
    #                 teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                 x_position: 1,
    #                 y_position: 1,
    #               },
    #               scc_destination_settings: {
    #                 framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #               },
    #               teletext_destination_settings: {
    #                 page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #               },
    #               ttml_destination_settings: {
    #                 style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #               },
    #             },
    #             language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #             language_description: "__string",
    #           },
    #         ],
    #         container_settings: {
    #           container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
    #           f4v_settings: {
    #             moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #           },
    #           m2ts_settings: {
    #             audio_buffer_model: "DVB", # accepts DVB, ATSC
    #             audio_frames_per_pes: 1,
    #             audio_pids: [1],
    #             bitrate: 1,
    #             buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #             dvb_nit_settings: {
    #               network_id: 1,
    #               network_name: "__stringMin1Max256",
    #               nit_interval: 1,
    #             },
    #             dvb_sdt_settings: {
    #               output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #               sdt_interval: 1,
    #               service_name: "__stringMin1Max256",
    #               service_provider_name: "__stringMin1Max256",
    #             },
    #             dvb_sub_pids: [1],
    #             dvb_tdt_settings: {
    #               tdt_interval: 1,
    #             },
    #             dvb_teletext_pid: 1,
    #             ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #             ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #             es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             fragment_time: 1.0,
    #             max_pcr_interval: 1,
    #             min_ebp_interval: 1,
    #             nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #             null_packet_bitrate: 1.0,
    #             pat_interval: 1,
    #             pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #             pcr_pid: 1,
    #             pmt_interval: 1,
    #             pmt_pid: 1,
    #             private_metadata_pid: 1,
    #             program_number: 1,
    #             rate_mode: "VBR", # accepts VBR, CBR
    #             scte_35_pid: 1,
    #             scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #             segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #             segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #             segmentation_time: 1.0,
    #             timed_metadata_pid: 1,
    #             transport_stream_id: 1,
    #             video_pid: 1,
    #           },
    #           m3u_8_settings: {
    #             audio_frames_per_pes: 1,
    #             audio_pids: [1],
    #             nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #             pat_interval: 1,
    #             pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #             pcr_pid: 1,
    #             pmt_interval: 1,
    #             pmt_pid: 1,
    #             private_metadata_pid: 1,
    #             program_number: 1,
    #             scte_35_pid: 1,
    #             scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #             timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #             timed_metadata_pid: 1,
    #             transport_stream_id: 1,
    #             video_pid: 1,
    #           },
    #           mov_settings: {
    #             clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #             padding_control: "OMNEON", # accepts OMNEON, NONE
    #             reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #           },
    #           mp_4_settings: {
    #             cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #             mp_4_major_brand: "__string",
    #           },
    #         },
    #         extension: "__string",
    #         name_modifier: "__stringMin1",
    #         output_settings: {
    #           hls_settings: {
    #             audio_group_id: "__string",
    #             audio_rendition_sets: "__string",
    #             audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #             i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             segment_modifier: "__string",
    #           },
    #         },
    #         preset: "__stringMin0",
    #         video_description: {
    #           afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #           anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #           codec_settings: {
    #             codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #             frame_capture_settings: {
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               max_captures: 1,
    #               quality: 1,
    #             },
    #             h264_settings: {
    #               adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #               bitrate: 1,
    #               codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #               codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #               dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #               entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #               field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #               flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               hrd_buffer_initial_fill_percentage: 1,
    #               hrd_buffer_size: 1,
    #               interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               number_b_frames_between_reference_frames: 1,
    #               number_reference_frames: 1,
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #               qvbr_settings: {
    #                 max_average_bitrate: 1,
    #                 qvbr_quality_level: 1,
    #               },
    #               rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #               repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slices: 1,
    #               slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #               softness: 1,
    #               spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #               telecine: "NONE", # accepts NONE, SOFT, HARD
    #               temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #             },
    #             h265_settings: {
    #               adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #               alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #               bitrate: 1,
    #               codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #               codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #               dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #               flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               hrd_buffer_initial_fill_percentage: 1,
    #               hrd_buffer_size: 1,
    #               interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               number_b_frames_between_reference_frames: 1,
    #               number_reference_frames: 1,
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #               qvbr_settings: {
    #                 max_average_bitrate: 1,
    #                 qvbr_quality_level: 1,
    #               },
    #               rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #               sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slices: 1,
    #               slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #               spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               telecine: "NONE", # accepts NONE, SOFT, HARD
    #               temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #               tiles: "DISABLED", # accepts DISABLED, ENABLED
    #               unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #               write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #             },
    #             mpeg_2_settings: {
    #               adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #               bitrate: 1,
    #               codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #               codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #               dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               gop_closed_cadence: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               hrd_buffer_initial_fill_percentage: 1,
    #               hrd_buffer_size: 1,
    #               interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #               intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               number_b_frames_between_reference_frames: 1,
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #               rate_control_mode: "VBR", # accepts VBR, CBR
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #               softness: 1,
    #               spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               syntax: "DEFAULT", # accepts DEFAULT, D_10
    #               telecine: "NONE", # accepts NONE, SOFT, HARD
    #               temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             },
    #             prores_settings: {
    #               codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #               telecine: "NONE", # accepts NONE, HARD
    #             },
    #           },
    #           color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #           crop: {
    #             height: 1,
    #             width: 1,
    #             x: 1,
    #             y: 1,
    #           },
    #           drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #           fixed_afd: 1,
    #           height: 1,
    #           position: {
    #             height: 1,
    #             width: 1,
    #             x: 1,
    #             y: 1,
    #           },
    #           respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #           scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #           sharpness: 1,
    #           timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #           video_preprocessors: {
    #             color_corrector: {
    #               brightness: 1,
    #               color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #               contrast: 1,
    #               hdr_10_metadata: {
    #                 blue_primary_x: 1,
    #                 blue_primary_y: 1,
    #                 green_primary_x: 1,
    #                 green_primary_y: 1,
    #                 max_content_light_level: 1,
    #                 max_frame_average_light_level: 1,
    #                 max_luminance: 1,
    #                 min_luminance: 1,
    #                 red_primary_x: 1,
    #                 red_primary_y: 1,
    #                 white_point_x: 1,
    #                 white_point_y: 1,
    #               },
    #               hue: 1,
    #               saturation: 1,
    #             },
    #             deinterlacer: {
    #               algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #               control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #               mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #             },
    #             image_inserter: {
    #               insertable_images: [
    #                 {
    #                   duration: 1,
    #                   fade_in: 1,
    #                   fade_out: 1,
    #                   height: 1,
    #                   image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #                   image_x: 1,
    #                   image_y: 1,
    #                   layer: 1,
    #                   opacity: 1,
    #                   start_time: "__stringPattern01D20305D205D",
    #                   width: 1,
    #                 },
    #               ],
    #             },
    #             noise_reducer: {
    #               filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #               filter_settings: {
    #                 strength: 1,
    #               },
    #               spatial_filter_settings: {
    #                 post_filter_sharpen_strength: 1,
    #                 speed: 1,
    #                 strength: 1,
    #               },
    #             },
    #             timecode_burnin: {
    #               font_size: 1,
    #               position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #               prefix: "__stringPattern",
    #             },
    #           },
    #           width: 1,
    #         },
    #       }
    #
    # @!attribute [rw] audio_descriptions
    #   (AudioDescriptions) contains groups of audio encoding settings
    #   organized by audio codec. Include one instance of
    #   (AudioDescriptions) per output. (AudioDescriptions) can contain
    #   multiple groups of encoding settings.
    #   @return [Array<Types::AudioDescription>]
    #
    # @!attribute [rw] caption_descriptions
    #   (CaptionDescriptions) contains groups of captions settings. For each
    #   output that has captions, include one instance of
    #   (CaptionDescriptions). (CaptionDescriptions) can contain multiple
    #   groups of captions settings.
    #   @return [Array<Types::CaptionDescription>]
    #
    # @!attribute [rw] container_settings
    #   Container specific settings.
    #   @return [Types::ContainerSettings]
    #
    # @!attribute [rw] extension
    #   Use Extension (Extension) to specify the file extension for outputs
    #   in File output groups. If you do not specify a value, the service
    #   will use default extensions by container type as follows * MPEG-2
    #   transport stream, m2ts * Quicktime, mov * MXF container, mxf *
    #   MPEG-4 container, mp4 * No Container, the service will use codec
    #   extensions (e.g. AAC, H265, H265, AC3)
    #   @return [String]
    #
    # @!attribute [rw] name_modifier
    #   Use Name modifier (NameModifier) to have the service add a string to
    #   the end of each output filename. You specify the base filename as
    #   part of your destination URI. When you create multiple outputs in
    #   the same output group, Name modifier (NameModifier) is required.
    #   Name modifier also accepts format identifiers. For DASH ISO outputs,
    #   if you use the format identifiers $Number$ or $Time$ in one output,
    #   you must use them in the same way in all outputs of the output
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] output_settings
    #   Specific settings for this type of output.
    #   @return [Types::OutputSettings]
    #
    # @!attribute [rw] preset
    #   Use Preset (Preset) to specifiy a preset for your transcoding
    #   settings. Provide the system or custom preset name. You can specify
    #   either Preset (Preset) or Container settings (ContainerSettings),
    #   but not both.
    #   @return [String]
    #
    # @!attribute [rw] video_description
    #   (VideoDescription) contains a group of video encoding settings. The
    #   specific video settings depend on the video codec you choose when
    #   you specify a value for Video codec (codec). Include one instance of
    #   (VideoDescription) per output.
    #   @return [Types::VideoDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Output AWS API Documentation
    #
    class Output < Struct.new(
      :audio_descriptions,
      :caption_descriptions,
      :container_settings,
      :extension,
      :name_modifier,
      :output_settings,
      :preset,
      :video_description)
      include Aws::Structure
    end

    # OutputChannel mapping settings.
    #
    # @note When making an API call, you may pass OutputChannelMapping
    #   data as a hash:
    #
    #       {
    #         input_channels: [1],
    #       }
    #
    # @!attribute [rw] input_channels
    #   List of input channels
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/OutputChannelMapping AWS API Documentation
    #
    class OutputChannelMapping < Struct.new(
      :input_channels)
      include Aws::Structure
    end

    # Details regarding output
    #
    # @!attribute [rw] duration_in_ms
    #   Duration in milliseconds
    #   @return [Integer]
    #
    # @!attribute [rw] video_details
    #   Contains details about the output's video stream
    #   @return [Types::VideoDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/OutputDetail AWS API Documentation
    #
    class OutputDetail < Struct.new(
      :duration_in_ms,
      :video_details)
      include Aws::Structure
    end

    # Group of outputs
    #
    # @note When making an API call, you may pass OutputGroup
    #   data as a hash:
    #
    #       {
    #         custom_name: "__string",
    #         name: "__string",
    #         output_group_settings: {
    #           cmaf_group_settings: {
    #             base_url: "__string",
    #             client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #             codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #             destination: "__stringPatternS3",
    #             encryption: {
    #               constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #               encryption_method: "SAMPLE_AES", # accepts SAMPLE_AES
    #               initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               static_key_provider: {
    #                 key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                 key_format_versions: "__stringPatternDD",
    #                 static_key_value: "__stringPatternAZaZ0932",
    #                 url: "__string",
    #               },
    #               type: "STATIC_KEY", # accepts STATIC_KEY
    #             },
    #             fragment_length: 1,
    #             manifest_compression: "GZIP", # accepts GZIP, NONE
    #             manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #             min_buffer_time: 1,
    #             min_final_segment_length: 1.0,
    #             segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #             segment_length: 1,
    #             stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             write_dash_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #             write_hls_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           dash_iso_group_settings: {
    #             base_url: "__string",
    #             destination: "__stringPatternS3",
    #             encryption: {
    #               speke_key_provider: {
    #                 resource_id: "__string",
    #                 system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                 url: "__stringPatternHttps",
    #               },
    #             },
    #             fragment_length: 1,
    #             hbbtv_compliance: "HBBTV_1_5", # accepts HBBTV_1_5, NONE
    #             min_buffer_time: 1,
    #             segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #             segment_length: 1,
    #             write_segment_timeline_in_representation: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #           file_group_settings: {
    #             destination: "__stringPatternS3",
    #           },
    #           hls_group_settings: {
    #             ad_markers: ["ELEMENTAL"], # accepts ELEMENTAL, ELEMENTAL_SCTE35
    #             base_url: "__string",
    #             caption_language_mappings: [
    #               {
    #                 caption_channel: 1,
    #                 custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                 language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                 language_description: "__string",
    #               },
    #             ],
    #             caption_language_setting: "INSERT", # accepts INSERT, OMIT, NONE
    #             client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #             codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #             destination: "__stringPatternS3",
    #             directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #             encryption: {
    #               constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #               encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #               initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               speke_key_provider: {
    #                 resource_id: "__string",
    #                 system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                 url: "__stringPatternHttps",
    #               },
    #               static_key_provider: {
    #                 key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                 key_format_versions: "__stringPatternDD",
    #                 static_key_value: "__stringPatternAZaZ0932",
    #                 url: "__string",
    #               },
    #               type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #             },
    #             manifest_compression: "GZIP", # accepts GZIP, NONE
    #             manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #             min_final_segment_length: 1.0,
    #             min_segment_length: 1,
    #             output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #             program_date_time: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             program_date_time_period: 1,
    #             segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #             segment_length: 1,
    #             segments_per_subdirectory: 1,
    #             stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #             timed_metadata_id_3_period: 1,
    #             timestamp_delta_milliseconds: 1,
    #           },
    #           ms_smooth_group_settings: {
    #             audio_deduplication: "COMBINE_DUPLICATE_STREAMS", # accepts COMBINE_DUPLICATE_STREAMS, NONE
    #             destination: "__stringPatternS3",
    #             encryption: {
    #               speke_key_provider: {
    #                 resource_id: "__string",
    #                 system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                 url: "__stringPatternHttps",
    #               },
    #             },
    #             fragment_length: 1,
    #             manifest_encoding: "UTF8", # accepts UTF8, UTF16
    #           },
    #           type: "HLS_GROUP_SETTINGS", # accepts HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS, CMAF_GROUP_SETTINGS
    #         },
    #         outputs: [
    #           {
    #             audio_descriptions: [
    #               {
    #                 audio_normalization_settings: {
    #                   algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #                   algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #                   correction_gate_level: 1,
    #                   loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #                   peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #                   target_lkfs: 1.0,
    #                 },
    #                 audio_source_name: "__string",
    #                 audio_type: 1,
    #                 audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                 codec_settings: {
    #                   aac_settings: {
    #                     audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                     bitrate: 1,
    #                     codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                     coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                     rate_control_mode: "CBR", # accepts CBR, VBR
    #                     raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                     sample_rate: 1,
    #                     specification: "MPEG2", # accepts MPEG2, MPEG4
    #                     vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #                   },
    #                   ac_3_settings: {
    #                     bitrate: 1,
    #                     bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                     coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                     dialnorm: 1,
    #                     dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                     lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                     metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                     sample_rate: 1,
    #                   },
    #                   aiff_settings: {
    #                     bit_depth: 1,
    #                     channels: 1,
    #                     sample_rate: 1,
    #                   },
    #                   codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #                   eac_3_settings: {
    #                     attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                     bitrate: 1,
    #                     bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                     coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                     dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                     dialnorm: 1,
    #                     dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                     dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                     lfe_control: "LFE", # accepts LFE, NO_LFE
    #                     lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                     lo_ro_center_mix_level: 1.0,
    #                     lo_ro_surround_mix_level: 1.0,
    #                     lt_rt_center_mix_level: 1.0,
    #                     lt_rt_surround_mix_level: 1.0,
    #                     metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                     passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                     phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                     sample_rate: 1,
    #                     stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                     surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                     surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                   },
    #                   mp_2_settings: {
    #                     bitrate: 1,
    #                     channels: 1,
    #                     sample_rate: 1,
    #                   },
    #                   wav_settings: {
    #                     bit_depth: 1,
    #                     channels: 1,
    #                     format: "RIFF", # accepts RIFF, RF64
    #                     sample_rate: 1,
    #                   },
    #                 },
    #                 custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                 language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                 language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                 remix_settings: {
    #                   channel_mapping: {
    #                     output_channels: [
    #                       {
    #                         input_channels: [1],
    #                       },
    #                     ],
    #                   },
    #                   channels_in: 1,
    #                   channels_out: 1,
    #                 },
    #                 stream_name: "__stringPatternWS",
    #               },
    #             ],
    #             caption_descriptions: [
    #               {
    #                 caption_selector_name: "__stringMin1",
    #                 custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                 destination_settings: {
    #                   burnin_destination_settings: {
    #                     alignment: "CENTERED", # accepts CENTERED, LEFT
    #                     background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                     background_opacity: 1,
    #                     font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                     font_opacity: 1,
    #                     font_resolution: 1,
    #                     font_size: 1,
    #                     outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                     outline_size: 1,
    #                     shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                     shadow_opacity: 1,
    #                     shadow_x_offset: 1,
    #                     shadow_y_offset: 1,
    #                     teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                     x_position: 1,
    #                     y_position: 1,
    #                   },
    #                   destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #                   dvb_sub_destination_settings: {
    #                     alignment: "CENTERED", # accepts CENTERED, LEFT
    #                     background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                     background_opacity: 1,
    #                     font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                     font_opacity: 1,
    #                     font_resolution: 1,
    #                     font_size: 1,
    #                     outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                     outline_size: 1,
    #                     shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                     shadow_opacity: 1,
    #                     shadow_x_offset: 1,
    #                     shadow_y_offset: 1,
    #                     teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                     x_position: 1,
    #                     y_position: 1,
    #                   },
    #                   scc_destination_settings: {
    #                     framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #                   },
    #                   teletext_destination_settings: {
    #                     page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                   },
    #                   ttml_destination_settings: {
    #                     style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #                   },
    #                 },
    #                 language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                 language_description: "__string",
    #               },
    #             ],
    #             container_settings: {
    #               container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
    #               f4v_settings: {
    #                 moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #               },
    #               m2ts_settings: {
    #                 audio_buffer_model: "DVB", # accepts DVB, ATSC
    #                 audio_frames_per_pes: 1,
    #                 audio_pids: [1],
    #                 bitrate: 1,
    #                 buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                 dvb_nit_settings: {
    #                   network_id: 1,
    #                   network_name: "__stringMin1Max256",
    #                   nit_interval: 1,
    #                 },
    #                 dvb_sdt_settings: {
    #                   output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                   sdt_interval: 1,
    #                   service_name: "__stringMin1Max256",
    #                   service_provider_name: "__stringMin1Max256",
    #                 },
    #                 dvb_sub_pids: [1],
    #                 dvb_tdt_settings: {
    #                   tdt_interval: 1,
    #                 },
    #                 dvb_teletext_pid: 1,
    #                 ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                 ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                 es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 fragment_time: 1.0,
    #                 max_pcr_interval: 1,
    #                 min_ebp_interval: 1,
    #                 nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                 null_packet_bitrate: 1.0,
    #                 pat_interval: 1,
    #                 pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                 pcr_pid: 1,
    #                 pmt_interval: 1,
    #                 pmt_pid: 1,
    #                 private_metadata_pid: 1,
    #                 program_number: 1,
    #                 rate_mode: "VBR", # accepts VBR, CBR
    #                 scte_35_pid: 1,
    #                 scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                 segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #                 segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                 segmentation_time: 1.0,
    #                 timed_metadata_pid: 1,
    #                 transport_stream_id: 1,
    #                 video_pid: 1,
    #               },
    #               m3u_8_settings: {
    #                 audio_frames_per_pes: 1,
    #                 audio_pids: [1],
    #                 nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                 pat_interval: 1,
    #                 pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                 pcr_pid: 1,
    #                 pmt_interval: 1,
    #                 pmt_pid: 1,
    #                 private_metadata_pid: 1,
    #                 program_number: 1,
    #                 scte_35_pid: 1,
    #                 scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                 timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                 timed_metadata_pid: 1,
    #                 transport_stream_id: 1,
    #                 video_pid: 1,
    #               },
    #               mov_settings: {
    #                 clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #                 padding_control: "OMNEON", # accepts OMNEON, NONE
    #                 reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #               },
    #               mp_4_settings: {
    #                 cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                 mp_4_major_brand: "__string",
    #               },
    #             },
    #             extension: "__string",
    #             name_modifier: "__stringMin1",
    #             output_settings: {
    #               hls_settings: {
    #                 audio_group_id: "__string",
    #                 audio_rendition_sets: "__string",
    #                 audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                 i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 segment_modifier: "__string",
    #               },
    #             },
    #             preset: "__stringMin0",
    #             video_description: {
    #               afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #               anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #               codec_settings: {
    #                 codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #                 frame_capture_settings: {
    #                   framerate_denominator: 1,
    #                   framerate_numerator: 1,
    #                   max_captures: 1,
    #                   quality: 1,
    #                 },
    #                 h264_settings: {
    #                   adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                   bitrate: 1,
    #                   codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #                   codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                   dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                   entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                   field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #                   flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                   framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                   framerate_denominator: 1,
    #                   framerate_numerator: 1,
    #                   gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                   gop_closed_cadence: 1,
    #                   gop_size: 1.0,
    #                   gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                   hrd_buffer_initial_fill_percentage: 1,
    #                   hrd_buffer_size: 1,
    #                   interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                   max_bitrate: 1,
    #                   min_i_interval: 1,
    #                   number_b_frames_between_reference_frames: 1,
    #                   number_reference_frames: 1,
    #                   par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   par_denominator: 1,
    #                   par_numerator: 1,
    #                   quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                   qvbr_settings: {
    #                     max_average_bitrate: 1,
    #                     qvbr_quality_level: 1,
    #                   },
    #                   rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                   repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #                   scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                   slices: 1,
    #                   slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                   softness: 1,
    #                   spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                   syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                   telecine: "NONE", # accepts NONE, SOFT, HARD
    #                   temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                   unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                 },
    #                 h265_settings: {
    #                   adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                   alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #                   bitrate: 1,
    #                   codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #                   codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #                   dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                   flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                   framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                   framerate_denominator: 1,
    #                   framerate_numerator: 1,
    #                   gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                   gop_closed_cadence: 1,
    #                   gop_size: 1.0,
    #                   gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                   hrd_buffer_initial_fill_percentage: 1,
    #                   hrd_buffer_size: 1,
    #                   interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                   max_bitrate: 1,
    #                   min_i_interval: 1,
    #                   number_b_frames_between_reference_frames: 1,
    #                   number_reference_frames: 1,
    #                   par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   par_denominator: 1,
    #                   par_numerator: 1,
    #                   quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                   qvbr_settings: {
    #                     max_average_bitrate: 1,
    #                     qvbr_quality_level: 1,
    #                   },
    #                   rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                   sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #                   scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                   slices: 1,
    #                   slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                   spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                   telecine: "NONE", # accepts NONE, SOFT, HARD
    #                   temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                   temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #                   tiles: "DISABLED", # accepts DISABLED, ENABLED
    #                   unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                   write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #                 },
    #                 mpeg_2_settings: {
    #                   adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #                   bitrate: 1,
    #                   codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #                   codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #                   dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                   framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                   framerate_denominator: 1,
    #                   framerate_numerator: 1,
    #                   gop_closed_cadence: 1,
    #                   gop_size: 1.0,
    #                   gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                   hrd_buffer_initial_fill_percentage: 1,
    #                   hrd_buffer_size: 1,
    #                   interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                   intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #                   max_bitrate: 1,
    #                   min_i_interval: 1,
    #                   number_b_frames_between_reference_frames: 1,
    #                   par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   par_denominator: 1,
    #                   par_numerator: 1,
    #                   quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #                   rate_control_mode: "VBR", # accepts VBR, CBR
    #                   scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                   slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                   softness: 1,
    #                   spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                   syntax: "DEFAULT", # accepts DEFAULT, D_10
    #                   telecine: "NONE", # accepts NONE, SOFT, HARD
    #                   temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 },
    #                 prores_settings: {
    #                   codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #                   framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                   framerate_denominator: 1,
    #                   framerate_numerator: 1,
    #                   interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                   par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                   par_denominator: 1,
    #                   par_numerator: 1,
    #                   slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                   telecine: "NONE", # accepts NONE, HARD
    #                 },
    #               },
    #               color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #               crop: {
    #                 height: 1,
    #                 width: 1,
    #                 x: 1,
    #                 y: 1,
    #               },
    #               drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #               fixed_afd: 1,
    #               height: 1,
    #               position: {
    #                 height: 1,
    #                 width: 1,
    #                 x: 1,
    #                 y: 1,
    #               },
    #               respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #               scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #               sharpness: 1,
    #               timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #               video_preprocessors: {
    #                 color_corrector: {
    #                   brightness: 1,
    #                   color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #                   contrast: 1,
    #                   hdr_10_metadata: {
    #                     blue_primary_x: 1,
    #                     blue_primary_y: 1,
    #                     green_primary_x: 1,
    #                     green_primary_y: 1,
    #                     max_content_light_level: 1,
    #                     max_frame_average_light_level: 1,
    #                     max_luminance: 1,
    #                     min_luminance: 1,
    #                     red_primary_x: 1,
    #                     red_primary_y: 1,
    #                     white_point_x: 1,
    #                     white_point_y: 1,
    #                   },
    #                   hue: 1,
    #                   saturation: 1,
    #                 },
    #                 deinterlacer: {
    #                   algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #                   control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #                   mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #                 },
    #                 image_inserter: {
    #                   insertable_images: [
    #                     {
    #                       duration: 1,
    #                       fade_in: 1,
    #                       fade_out: 1,
    #                       height: 1,
    #                       image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #                       image_x: 1,
    #                       image_y: 1,
    #                       layer: 1,
    #                       opacity: 1,
    #                       start_time: "__stringPattern01D20305D205D",
    #                       width: 1,
    #                     },
    #                   ],
    #                 },
    #                 noise_reducer: {
    #                   filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #                   filter_settings: {
    #                     strength: 1,
    #                   },
    #                   spatial_filter_settings: {
    #                     post_filter_sharpen_strength: 1,
    #                     speed: 1,
    #                     strength: 1,
    #                   },
    #                 },
    #                 timecode_burnin: {
    #                   font_size: 1,
    #                   position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #                   prefix: "__stringPattern",
    #                 },
    #               },
    #               width: 1,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] custom_name
    #   Use Custom Group Name (CustomName) to specify a name for the output
    #   group. This value is displayed on the console and can make your job
    #   settings JSON more human-readable. It does not affect your outputs.
    #   Use up to twelve characters that are either letters, numbers,
    #   spaces, or underscores.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the output group
    #   @return [String]
    #
    # @!attribute [rw] output_group_settings
    #   Output Group settings, including type
    #   @return [Types::OutputGroupSettings]
    #
    # @!attribute [rw] outputs
    #   This object holds groups of encoding settings, one group of settings
    #   per output.
    #   @return [Array<Types::Output>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/OutputGroup AWS API Documentation
    #
    class OutputGroup < Struct.new(
      :custom_name,
      :name,
      :output_group_settings,
      :outputs)
      include Aws::Structure
    end

    # Contains details about the output groups specified in the job
    # settings.
    #
    # @!attribute [rw] output_details
    #   Details about the output
    #   @return [Array<Types::OutputDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/OutputGroupDetail AWS API Documentation
    #
    class OutputGroupDetail < Struct.new(
      :output_details)
      include Aws::Structure
    end

    # Output Group settings, including type
    #
    # @note When making an API call, you may pass OutputGroupSettings
    #   data as a hash:
    #
    #       {
    #         cmaf_group_settings: {
    #           base_url: "__string",
    #           client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #           codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #           destination: "__stringPatternS3",
    #           encryption: {
    #             constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #             encryption_method: "SAMPLE_AES", # accepts SAMPLE_AES
    #             initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             static_key_provider: {
    #               key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #               key_format_versions: "__stringPatternDD",
    #               static_key_value: "__stringPatternAZaZ0932",
    #               url: "__string",
    #             },
    #             type: "STATIC_KEY", # accepts STATIC_KEY
    #           },
    #           fragment_length: 1,
    #           manifest_compression: "GZIP", # accepts GZIP, NONE
    #           manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #           min_buffer_time: 1,
    #           min_final_segment_length: 1.0,
    #           segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #           segment_length: 1,
    #           stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           write_dash_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #           write_hls_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #         },
    #         dash_iso_group_settings: {
    #           base_url: "__string",
    #           destination: "__stringPatternS3",
    #           encryption: {
    #             speke_key_provider: {
    #               resource_id: "__string",
    #               system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #               url: "__stringPatternHttps",
    #             },
    #           },
    #           fragment_length: 1,
    #           hbbtv_compliance: "HBBTV_1_5", # accepts HBBTV_1_5, NONE
    #           min_buffer_time: 1,
    #           segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #           segment_length: 1,
    #           write_segment_timeline_in_representation: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #         file_group_settings: {
    #           destination: "__stringPatternS3",
    #         },
    #         hls_group_settings: {
    #           ad_markers: ["ELEMENTAL"], # accepts ELEMENTAL, ELEMENTAL_SCTE35
    #           base_url: "__string",
    #           caption_language_mappings: [
    #             {
    #               caption_channel: 1,
    #               custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #               language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #               language_description: "__string",
    #             },
    #           ],
    #           caption_language_setting: "INSERT", # accepts INSERT, OMIT, NONE
    #           client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #           codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #           destination: "__stringPatternS3",
    #           directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #           encryption: {
    #             constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #             encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #             initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             speke_key_provider: {
    #               resource_id: "__string",
    #               system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #               url: "__stringPatternHttps",
    #             },
    #             static_key_provider: {
    #               key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #               key_format_versions: "__stringPatternDD",
    #               static_key_value: "__stringPatternAZaZ0932",
    #               url: "__string",
    #             },
    #             type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #           },
    #           manifest_compression: "GZIP", # accepts GZIP, NONE
    #           manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #           min_final_segment_length: 1.0,
    #           min_segment_length: 1,
    #           output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #           program_date_time: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           program_date_time_period: 1,
    #           segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #           segment_length: 1,
    #           segments_per_subdirectory: 1,
    #           stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #           timed_metadata_id_3_period: 1,
    #           timestamp_delta_milliseconds: 1,
    #         },
    #         ms_smooth_group_settings: {
    #           audio_deduplication: "COMBINE_DUPLICATE_STREAMS", # accepts COMBINE_DUPLICATE_STREAMS, NONE
    #           destination: "__stringPatternS3",
    #           encryption: {
    #             speke_key_provider: {
    #               resource_id: "__string",
    #               system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #               url: "__stringPatternHttps",
    #             },
    #           },
    #           fragment_length: 1,
    #           manifest_encoding: "UTF8", # accepts UTF8, UTF16
    #         },
    #         type: "HLS_GROUP_SETTINGS", # accepts HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS, CMAF_GROUP_SETTINGS
    #       }
    #
    # @!attribute [rw] cmaf_group_settings
    #   Required when you set (Type) under
    #   (OutputGroups)>(OutputGroupSettings) to CMAF\_GROUP\_SETTINGS. Each
    #   output in a CMAF Output Group may only contain a single video,
    #   audio, or caption output.
    #   @return [Types::CmafGroupSettings]
    #
    # @!attribute [rw] dash_iso_group_settings
    #   Required when you set (Type) under
    #   (OutputGroups)>(OutputGroupSettings) to DASH\_ISO\_GROUP\_SETTINGS.
    #   @return [Types::DashIsoGroupSettings]
    #
    # @!attribute [rw] file_group_settings
    #   Required when you set (Type) under
    #   (OutputGroups)>(OutputGroupSettings) to FILE\_GROUP\_SETTINGS.
    #   @return [Types::FileGroupSettings]
    #
    # @!attribute [rw] hls_group_settings
    #   Required when you set (Type) under
    #   (OutputGroups)>(OutputGroupSettings) to HLS\_GROUP\_SETTINGS.
    #   @return [Types::HlsGroupSettings]
    #
    # @!attribute [rw] ms_smooth_group_settings
    #   Required when you set (Type) under
    #   (OutputGroups)>(OutputGroupSettings) to MS\_SMOOTH\_GROUP\_SETTINGS.
    #   @return [Types::MsSmoothGroupSettings]
    #
    # @!attribute [rw] type
    #   Type of output group (File group, Apple HLS, DASH ISO, Microsoft
    #   Smooth Streaming, CMAF)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/OutputGroupSettings AWS API Documentation
    #
    class OutputGroupSettings < Struct.new(
      :cmaf_group_settings,
      :dash_iso_group_settings,
      :file_group_settings,
      :hls_group_settings,
      :ms_smooth_group_settings,
      :type)
      include Aws::Structure
    end

    # Specific settings for this type of output.
    #
    # @note When making an API call, you may pass OutputSettings
    #   data as a hash:
    #
    #       {
    #         hls_settings: {
    #           audio_group_id: "__string",
    #           audio_rendition_sets: "__string",
    #           audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #           i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           segment_modifier: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] hls_settings
    #   Settings for HLS output groups
    #   @return [Types::HlsSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/OutputSettings AWS API Documentation
    #
    class OutputSettings < Struct.new(
      :hls_settings)
      include Aws::Structure
    end

    # A preset is a collection of preconfigured media conversion settings
    # that you want MediaConvert to apply to the output during the
    # conversion process.
    #
    # @!attribute [rw] arn
    #   An identifier for this resource that is unique within all of AWS.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   An optional category you create to organize your presets.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp in epoch seconds for preset creation.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   An optional description you create for each preset.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The timestamp in epoch seconds when the preset was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A name you create for each preset. Each name must be unique within
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Settings for preset
    #   @return [Types::PresetSettings]
    #
    # @!attribute [rw] type
    #   A preset can be of two types: system or custom. System or built-in
    #   preset can't be modified or deleted by the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Preset AWS API Documentation
    #
    class Preset < Struct.new(
      :arn,
      :category,
      :created_at,
      :description,
      :last_updated,
      :name,
      :settings,
      :type)
      include Aws::Structure
    end

    # Settings for preset
    #
    # @note When making an API call, you may pass PresetSettings
    #   data as a hash:
    #
    #       {
    #         audio_descriptions: [
    #           {
    #             audio_normalization_settings: {
    #               algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #               algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #               correction_gate_level: 1,
    #               loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #               peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #               target_lkfs: 1.0,
    #             },
    #             audio_source_name: "__string",
    #             audio_type: 1,
    #             audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             codec_settings: {
    #               aac_settings: {
    #                 audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                 bitrate: 1,
    #                 codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                 coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                 rate_control_mode: "CBR", # accepts CBR, VBR
    #                 raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                 sample_rate: 1,
    #                 specification: "MPEG2", # accepts MPEG2, MPEG4
    #                 vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #               },
    #               ac_3_settings: {
    #                 bitrate: 1,
    #                 bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                 coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                 dialnorm: 1,
    #                 dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                 lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                 metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                 sample_rate: 1,
    #               },
    #               aiff_settings: {
    #                 bit_depth: 1,
    #                 channels: 1,
    #                 sample_rate: 1,
    #               },
    #               codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #               eac_3_settings: {
    #                 attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                 bitrate: 1,
    #                 bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                 coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                 dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                 dialnorm: 1,
    #                 dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                 dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                 lfe_control: "LFE", # accepts LFE, NO_LFE
    #                 lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                 lo_ro_center_mix_level: 1.0,
    #                 lo_ro_surround_mix_level: 1.0,
    #                 lt_rt_center_mix_level: 1.0,
    #                 lt_rt_surround_mix_level: 1.0,
    #                 metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                 passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                 phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                 sample_rate: 1,
    #                 stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                 surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                 surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #               },
    #               mp_2_settings: {
    #                 bitrate: 1,
    #                 channels: 1,
    #                 sample_rate: 1,
    #               },
    #               wav_settings: {
    #                 bit_depth: 1,
    #                 channels: 1,
    #                 format: "RIFF", # accepts RIFF, RF64
    #                 sample_rate: 1,
    #               },
    #             },
    #             custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #             language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #             language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             remix_settings: {
    #               channel_mapping: {
    #                 output_channels: [
    #                   {
    #                     input_channels: [1],
    #                   },
    #                 ],
    #               },
    #               channels_in: 1,
    #               channels_out: 1,
    #             },
    #             stream_name: "__stringPatternWS",
    #           },
    #         ],
    #         caption_descriptions: [
    #           {
    #             custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #             destination_settings: {
    #               burnin_destination_settings: {
    #                 alignment: "CENTERED", # accepts CENTERED, LEFT
    #                 background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                 background_opacity: 1,
    #                 font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                 font_opacity: 1,
    #                 font_resolution: 1,
    #                 font_size: 1,
    #                 outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                 outline_size: 1,
    #                 shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                 shadow_opacity: 1,
    #                 shadow_x_offset: 1,
    #                 shadow_y_offset: 1,
    #                 teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                 x_position: 1,
    #                 y_position: 1,
    #               },
    #               destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #               dvb_sub_destination_settings: {
    #                 alignment: "CENTERED", # accepts CENTERED, LEFT
    #                 background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                 background_opacity: 1,
    #                 font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                 font_opacity: 1,
    #                 font_resolution: 1,
    #                 font_size: 1,
    #                 outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                 outline_size: 1,
    #                 shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                 shadow_opacity: 1,
    #                 shadow_x_offset: 1,
    #                 shadow_y_offset: 1,
    #                 teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                 x_position: 1,
    #                 y_position: 1,
    #               },
    #               scc_destination_settings: {
    #                 framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #               },
    #               teletext_destination_settings: {
    #                 page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #               },
    #               ttml_destination_settings: {
    #                 style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #               },
    #             },
    #             language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #             language_description: "__string",
    #           },
    #         ],
    #         container_settings: {
    #           container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
    #           f4v_settings: {
    #             moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #           },
    #           m2ts_settings: {
    #             audio_buffer_model: "DVB", # accepts DVB, ATSC
    #             audio_frames_per_pes: 1,
    #             audio_pids: [1],
    #             bitrate: 1,
    #             buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #             dvb_nit_settings: {
    #               network_id: 1,
    #               network_name: "__stringMin1Max256",
    #               nit_interval: 1,
    #             },
    #             dvb_sdt_settings: {
    #               output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #               sdt_interval: 1,
    #               service_name: "__stringMin1Max256",
    #               service_provider_name: "__stringMin1Max256",
    #             },
    #             dvb_sub_pids: [1],
    #             dvb_tdt_settings: {
    #               tdt_interval: 1,
    #             },
    #             dvb_teletext_pid: 1,
    #             ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #             ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #             es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             fragment_time: 1.0,
    #             max_pcr_interval: 1,
    #             min_ebp_interval: 1,
    #             nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #             null_packet_bitrate: 1.0,
    #             pat_interval: 1,
    #             pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #             pcr_pid: 1,
    #             pmt_interval: 1,
    #             pmt_pid: 1,
    #             private_metadata_pid: 1,
    #             program_number: 1,
    #             rate_mode: "VBR", # accepts VBR, CBR
    #             scte_35_pid: 1,
    #             scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #             segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #             segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #             segmentation_time: 1.0,
    #             timed_metadata_pid: 1,
    #             transport_stream_id: 1,
    #             video_pid: 1,
    #           },
    #           m3u_8_settings: {
    #             audio_frames_per_pes: 1,
    #             audio_pids: [1],
    #             nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #             pat_interval: 1,
    #             pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #             pcr_pid: 1,
    #             pmt_interval: 1,
    #             pmt_pid: 1,
    #             private_metadata_pid: 1,
    #             program_number: 1,
    #             scte_35_pid: 1,
    #             scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #             timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #             timed_metadata_pid: 1,
    #             transport_stream_id: 1,
    #             video_pid: 1,
    #           },
    #           mov_settings: {
    #             clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #             padding_control: "OMNEON", # accepts OMNEON, NONE
    #             reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #           },
    #           mp_4_settings: {
    #             cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #             moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #             mp_4_major_brand: "__string",
    #           },
    #         },
    #         video_description: {
    #           afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #           anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #           codec_settings: {
    #             codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #             frame_capture_settings: {
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               max_captures: 1,
    #               quality: 1,
    #             },
    #             h264_settings: {
    #               adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #               bitrate: 1,
    #               codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #               codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #               dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #               entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #               field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #               flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               hrd_buffer_initial_fill_percentage: 1,
    #               hrd_buffer_size: 1,
    #               interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               number_b_frames_between_reference_frames: 1,
    #               number_reference_frames: 1,
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #               qvbr_settings: {
    #                 max_average_bitrate: 1,
    #                 qvbr_quality_level: 1,
    #               },
    #               rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #               repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slices: 1,
    #               slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #               softness: 1,
    #               spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #               telecine: "NONE", # accepts NONE, SOFT, HARD
    #               temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #             },
    #             h265_settings: {
    #               adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #               alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #               bitrate: 1,
    #               codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #               codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #               dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #               flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               hrd_buffer_initial_fill_percentage: 1,
    #               hrd_buffer_size: 1,
    #               interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               number_b_frames_between_reference_frames: 1,
    #               number_reference_frames: 1,
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #               qvbr_settings: {
    #                 max_average_bitrate: 1,
    #                 qvbr_quality_level: 1,
    #               },
    #               rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #               sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slices: 1,
    #               slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #               spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               telecine: "NONE", # accepts NONE, SOFT, HARD
    #               temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #               tiles: "DISABLED", # accepts DISABLED, ENABLED
    #               unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #               write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #             },
    #             mpeg_2_settings: {
    #               adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #               bitrate: 1,
    #               codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #               codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #               dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               gop_closed_cadence: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               hrd_buffer_initial_fill_percentage: 1,
    #               hrd_buffer_size: 1,
    #               interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #               intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               number_b_frames_between_reference_frames: 1,
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #               rate_control_mode: "VBR", # accepts VBR, CBR
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #               softness: 1,
    #               spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               syntax: "DEFAULT", # accepts DEFAULT, D_10
    #               telecine: "NONE", # accepts NONE, SOFT, HARD
    #               temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             },
    #             prores_settings: {
    #               codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #               telecine: "NONE", # accepts NONE, HARD
    #             },
    #           },
    #           color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #           crop: {
    #             height: 1,
    #             width: 1,
    #             x: 1,
    #             y: 1,
    #           },
    #           drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #           fixed_afd: 1,
    #           height: 1,
    #           position: {
    #             height: 1,
    #             width: 1,
    #             x: 1,
    #             y: 1,
    #           },
    #           respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #           scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #           sharpness: 1,
    #           timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #           video_preprocessors: {
    #             color_corrector: {
    #               brightness: 1,
    #               color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #               contrast: 1,
    #               hdr_10_metadata: {
    #                 blue_primary_x: 1,
    #                 blue_primary_y: 1,
    #                 green_primary_x: 1,
    #                 green_primary_y: 1,
    #                 max_content_light_level: 1,
    #                 max_frame_average_light_level: 1,
    #                 max_luminance: 1,
    #                 min_luminance: 1,
    #                 red_primary_x: 1,
    #                 red_primary_y: 1,
    #                 white_point_x: 1,
    #                 white_point_y: 1,
    #               },
    #               hue: 1,
    #               saturation: 1,
    #             },
    #             deinterlacer: {
    #               algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #               control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #               mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #             },
    #             image_inserter: {
    #               insertable_images: [
    #                 {
    #                   duration: 1,
    #                   fade_in: 1,
    #                   fade_out: 1,
    #                   height: 1,
    #                   image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #                   image_x: 1,
    #                   image_y: 1,
    #                   layer: 1,
    #                   opacity: 1,
    #                   start_time: "__stringPattern01D20305D205D",
    #                   width: 1,
    #                 },
    #               ],
    #             },
    #             noise_reducer: {
    #               filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #               filter_settings: {
    #                 strength: 1,
    #               },
    #               spatial_filter_settings: {
    #                 post_filter_sharpen_strength: 1,
    #                 speed: 1,
    #                 strength: 1,
    #               },
    #             },
    #             timecode_burnin: {
    #               font_size: 1,
    #               position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #               prefix: "__stringPattern",
    #             },
    #           },
    #           width: 1,
    #         },
    #       }
    #
    # @!attribute [rw] audio_descriptions
    #   (AudioDescriptions) contains groups of audio encoding settings
    #   organized by audio codec. Include one instance of
    #   (AudioDescriptions) per output. (AudioDescriptions) can contain
    #   multiple groups of encoding settings.
    #   @return [Array<Types::AudioDescription>]
    #
    # @!attribute [rw] caption_descriptions
    #   Caption settings for this preset. There can be multiple caption
    #   settings in a single output.
    #   @return [Array<Types::CaptionDescriptionPreset>]
    #
    # @!attribute [rw] container_settings
    #   Container specific settings.
    #   @return [Types::ContainerSettings]
    #
    # @!attribute [rw] video_description
    #   (VideoDescription) contains a group of video encoding settings. The
    #   specific video settings depend on the video codec you choose when
    #   you specify a value for Video codec (codec). Include one instance of
    #   (VideoDescription) per output.
    #   @return [Types::VideoDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/PresetSettings AWS API Documentation
    #
    class PresetSettings < Struct.new(
      :audio_descriptions,
      :caption_descriptions,
      :container_settings,
      :video_description)
      include Aws::Structure
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings)
    # to the value PRORES.
    #
    # @note When making an API call, you may pass ProresSettings
    #   data as a hash:
    #
    #       {
    #         codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #         framerate_denominator: 1,
    #         framerate_numerator: 1,
    #         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #         par_denominator: 1,
    #         par_numerator: 1,
    #         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #         telecine: "NONE", # accepts NONE, HARD
    #       }
    #
    # @!attribute [rw] codec_profile
    #   Use Profile (ProResCodecProfile) to specifiy the type of Apple
    #   ProRes codec to use for this output.
    #   @return [String]
    #
    # @!attribute [rw] framerate_control
    #   If you are using the console, use the Framerate setting to specify
    #   the framerate for this output. If you want to keep the same
    #   framerate as the input video, choose Follow source. If you want to
    #   do framerate conversion, choose a framerate from the dropdown list
    #   or choose Custom. The framerates shown in the dropdown list are
    #   decimal approximations of fractions. If you choose Custom, specify
    #   your framerate as a fraction. If you are creating your transcoding
    #   job sepecification as a JSON file without the console, use
    #   FramerateControl to specify which value the service uses for the
    #   framerate for this output. Choose INITIALIZE\_FROM\_SOURCE if you
    #   want the service to use the framerate from the input. Choose
    #   SPECIFIED if you want the service to use the framerate you specify
    #   in the settings FramerateNumerator and FramerateDenominator.
    #   @return [String]
    #
    # @!attribute [rw] framerate_conversion_algorithm
    #   When set to INTERPOLATE, produces smoother motion during framerate
    #   conversion.
    #   @return [String]
    #
    # @!attribute [rw] framerate_denominator
    #   Framerate denominator.
    #   @return [Integer]
    #
    # @!attribute [rw] framerate_numerator
    #   When you use the API for transcode jobs that use framerate
    #   conversion, specify the framerate as a fraction. For example, 24000
    #   / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator
    #   of this fraction. In this example, use 24000 for the value of
    #   FramerateNumerator.
    #   @return [Integer]
    #
    # @!attribute [rw] interlace_mode
    #   Use Interlace mode (InterlaceMode) to choose the scan line type for
    #   the output. * Top Field First (TOP\_FIELD) and Bottom Field First
    #   (BOTTOM\_FIELD) produce interlaced output with the entire output
    #   having the same field polarity (top or bottom first). * Follow,
    #   Default Top (FOLLOW\_TOP\_FIELD) and Follow, Default Bottom
    #   (FOLLOW\_BOTTOM\_FIELD) use the same field polarity as the source.
    #   Therefore, behavior depends on the input scan type. - If the source
    #   is interlaced, the output will be interlaced with the same polarity
    #   as the source (it will follow the source). The output could
    #   therefore be a mix of "top field first" and "bottom field
    #   first". - If the source is progressive, the output will be
    #   interlaced with "top field first" or "bottom field first"
    #   polarity, depending on which of the Follow options you chose.
    #   @return [String]
    #
    # @!attribute [rw] par_control
    #   Use (ProresParControl) to specify how the service determines the
    #   pixel aspect ratio. Set to Follow source (INITIALIZE\_FROM\_SOURCE)
    #   to use the pixel aspect ratio from the input. To specify a different
    #   pixel aspect ratio: Using the console, choose it from the dropdown
    #   menu. Using the API, set ProresParControl to (SPECIFIED) and provide
    #   for (ParNumerator) and (ParDenominator).
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
    # @!attribute [rw] slow_pal
    #   Enables Slow PAL rate conversion. 23.976fps and 24fps input is
    #   relabeled as 25fps, and audio is sped up correspondingly.
    #   @return [String]
    #
    # @!attribute [rw] telecine
    #   Only use Telecine (ProresTelecine) when you set Framerate
    #   (Framerate) to 29.970. Set Telecine (ProresTelecine) to Hard (hard)
    #   to produce a 29.97i output from a 23.976 input. Set it to Soft
    #   (soft) to produce 23.976 output and leave converstion to the player.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ProresSettings AWS API Documentation
    #
    class ProresSettings < Struct.new(
      :codec_profile,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :interlace_mode,
      :par_control,
      :par_denominator,
      :par_numerator,
      :slow_pal,
      :telecine)
      include Aws::Structure
    end

    # You can use queues to manage the resources that are available to your
    # AWS account for running multiple transcoding jobs at the same time. If
    # you don't specify a queue, the service sends all jobs through the
    # default queue. For more information, see
    # https://docs.aws.amazon.com/mediaconvert/latest/ug/about-resource-allocation-and-job-prioritization.html.
    #
    # @!attribute [rw] arn
    #   An identifier for this resource that is unique within all of AWS.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time stamp in epoch seconds for queue creation.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   An optional description that you create for each queue.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The time stamp in epoch seconds when the queue was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A name that you create for each queue. Each name must be unique
    #   within your account.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   Specifies whether the pricing plan for the queue is On-demand or
    #   Reserved. The pricing plan for the queue determines whether you pay
    #   On-demand or Reserved pricing for the transcoding jobs that you run
    #   through the queue. For Reserved queue pricing, you must set up a
    #   contract. You can create a Reserved queue contract through the AWS
    #   Elemental MediaConvert console.
    #   @return [String]
    #
    # @!attribute [rw] progressing_jobs_count
    #   The estimated number of jobs with a PROGRESSING status.
    #   @return [Integer]
    #
    # @!attribute [rw] reservation_plan
    #   Details about the pricing plan for your reserved queue. Required for
    #   reserved queues and not applicable to on-demand queues.
    #   @return [Types::ReservationPlan]
    #
    # @!attribute [rw] status
    #   Queues can be ACTIVE or PAUSED. If you pause a queue, the service
    #   won't begin processing jobs in that queue. Jobs that are running
    #   when you pause the queue continue to run until they finish or result
    #   in an error.
    #   @return [String]
    #
    # @!attribute [rw] submitted_jobs_count
    #   The estimated number of jobs with a SUBMITTED status.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   Specifies whether this queue is system or custom. System queues are
    #   built in. You can't modify or delete system queues. You can create
    #   and modify custom queues.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Queue AWS API Documentation
    #
    class Queue < Struct.new(
      :arn,
      :created_at,
      :description,
      :last_updated,
      :name,
      :pricing_plan,
      :progressing_jobs_count,
      :reservation_plan,
      :status,
      :submitted_jobs_count,
      :type)
      include Aws::Structure
    end

    # Use Rectangle to identify a specific area of the video frame.
    #
    # @note When making an API call, you may pass Rectangle
    #   data as a hash:
    #
    #       {
    #         height: 1,
    #         width: 1,
    #         x: 1,
    #         y: 1,
    #       }
    #
    # @!attribute [rw] height
    #   Height of rectangle in pixels. Specify only even numbers.
    #   @return [Integer]
    #
    # @!attribute [rw] width
    #   Width of rectangle in pixels. Specify only even numbers.
    #   @return [Integer]
    #
    # @!attribute [rw] x
    #   The distance, in pixels, between the rectangle and the left edge of
    #   the video frame. Specify only even numbers.
    #   @return [Integer]
    #
    # @!attribute [rw] y
    #   The distance, in pixels, between the rectangle and the top edge of
    #   the video frame. Specify only even numbers.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Rectangle AWS API Documentation
    #
    class Rectangle < Struct.new(
      :height,
      :width,
      :x,
      :y)
      include Aws::Structure
    end

    # Use Manual audio remixing (RemixSettings) to adjust audio levels for
    # each audio channel in each output of your job. With audio remixing,
    # you can output more or fewer audio channels than your input audio
    # source provides.
    #
    # @note When making an API call, you may pass RemixSettings
    #   data as a hash:
    #
    #       {
    #         channel_mapping: {
    #           output_channels: [
    #             {
    #               input_channels: [1],
    #             },
    #           ],
    #         },
    #         channels_in: 1,
    #         channels_out: 1,
    #       }
    #
    # @!attribute [rw] channel_mapping
    #   Channel mapping (ChannelMapping) contains the group of fields that
    #   hold the remixing value for each channel. Units are in dB.
    #   Acceptable values are within the range from -60 (mute) through 6. A
    #   setting of 0 passes the input channel unchanged to the output
    #   channel (no attenuation or amplification).
    #   @return [Types::ChannelMapping]
    #
    # @!attribute [rw] channels_in
    #   Specify the number of audio channels from your input that you want
    #   to use in your output. With remixing, you might combine or split the
    #   data in these channels, so the number of channels in your final
    #   output might be different.
    #   @return [Integer]
    #
    # @!attribute [rw] channels_out
    #   Specify the number of channels in this output after remixing. Valid
    #   values: 1, 2, 4, 6, 8
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/RemixSettings AWS API Documentation
    #
    class RemixSettings < Struct.new(
      :channel_mapping,
      :channels_in,
      :channels_out)
      include Aws::Structure
    end

    # Details about the pricing plan for your reserved queue. Required for
    # reserved queues and not applicable to on-demand queues.
    #
    # @!attribute [rw] commitment
    #   The length of time that you commit to when you set up a pricing plan
    #   contract for a reserved queue.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The time stamp, in epoch seconds, for when the pricing plan for this
    #   reserved queue expires.
    #   @return [Time]
    #
    # @!attribute [rw] purchased_at
    #   The time stamp in epoch seconds when the reserved queue's
    #   reservation plan was created.
    #   @return [Time]
    #
    # @!attribute [rw] renewal_type
    #   Specifies whether the pricing plan contract for your reserved queue
    #   automatically renews (AUTO\_RENEW) or expires (EXPIRE) at the end of
    #   the contract period.
    #   @return [String]
    #
    # @!attribute [rw] reserved_slots
    #   Specifies the number of reserved transcode slots (RTSs) for this
    #   queue. The number of RTS determines how many jobs the queue can
    #   process in parallel; each RTS can process one job at a time. To
    #   increase this number, create a replacement contract through the AWS
    #   Elemental MediaConvert console.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Specifies whether the pricing plan for your reserved queue is ACTIVE
    #   or EXPIRED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ReservationPlan AWS API Documentation
    #
    class ReservationPlan < Struct.new(
      :commitment,
      :expires_at,
      :purchased_at,
      :renewal_type,
      :reserved_slots,
      :status)
      include Aws::Structure
    end

    # Details about the pricing plan for your reserved queue. Required for
    # reserved queues and not applicable to on-demand queues.
    #
    # @note When making an API call, you may pass ReservationPlanSettings
    #   data as a hash:
    #
    #       {
    #         commitment: "ONE_YEAR", # required, accepts ONE_YEAR
    #         renewal_type: "AUTO_RENEW", # required, accepts AUTO_RENEW, EXPIRE
    #         reserved_slots: 1, # required
    #       }
    #
    # @!attribute [rw] commitment
    #   The length of time that you commit to when you set up a pricing plan
    #   contract for a reserved queue.
    #   @return [String]
    #
    # @!attribute [rw] renewal_type
    #   Specifies whether the pricing plan contract for your reserved queue
    #   automatically renews (AUTO\_RENEW) or expires (EXPIRE) at the end of
    #   the contract period.
    #   @return [String]
    #
    # @!attribute [rw] reserved_slots
    #   Specifies the number of reserved transcode slots (RTSs) for this
    #   queue. The number of RTS determines how many jobs the queue can
    #   process in parallel; each RTS can process one job at a time. To
    #   increase this number, create a replacement contract through the AWS
    #   Elemental MediaConvert console.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ReservationPlanSettings AWS API Documentation
    #
    class ReservationPlanSettings < Struct.new(
      :commitment,
      :renewal_type,
      :reserved_slots)
      include Aws::Structure
    end

    # The Amazon Resource Name (ARN) and tags for an AWS Elemental
    # MediaConvert resource.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ResourceTags AWS API Documentation
    #
    class ResourceTags < Struct.new(
      :arn,
      :tags)
      include Aws::Structure
    end

    # Settings for SCC caption output.
    #
    # @note When making an API call, you may pass SccDestinationSettings
    #   data as a hash:
    #
    #       {
    #         framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #       }
    #
    # @!attribute [rw] framerate
    #   Set Framerate (SccDestinationFramerate) to make sure that the
    #   captions and the video are synchronized in the output. Specify a
    #   framerate that matches the framerate of the associated video. If the
    #   video framerate is 29.97, choose 29.97 dropframe
    #   (FRAMERATE\_29\_97\_DROPFRAME) only if the video has
    #   video\_insertion=true and drop\_frame\_timecode=true; otherwise,
    #   choose 29.97 non-dropframe (FRAMERATE\_29\_97\_NON\_DROPFRAME).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/SccDestinationSettings AWS API Documentation
    #
    class SccDestinationSettings < Struct.new(
      :framerate)
      include Aws::Structure
    end

    # Settings for use with a SPEKE key provider
    #
    # @note When making an API call, you may pass SpekeKeyProvider
    #   data as a hash:
    #
    #       {
    #         resource_id: "__string",
    #         system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #         url: "__stringPatternHttps",
    #       }
    #
    # @!attribute [rw] resource_id
    #   The SPEKE-compliant server uses Resource ID (ResourceId) to identify
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] system_ids
    #   Relates to SPEKE implementation. DRM system identifiers. DASH output
    #   groups support a max of two system ids. Other group types support
    #   one system id.
    #   @return [Array<String>]
    #
    # @!attribute [rw] url
    #   Use URL (Url) to specify the SPEKE-compliant server that will
    #   provide keys for content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/SpekeKeyProvider AWS API Documentation
    #
    class SpekeKeyProvider < Struct.new(
      :resource_id,
      :system_ids,
      :url)
      include Aws::Structure
    end

    # Settings for use with a SPEKE key provider.
    #
    # @note When making an API call, you may pass StaticKeyProvider
    #   data as a hash:
    #
    #       {
    #         key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #         key_format_versions: "__stringPatternDD",
    #         static_key_value: "__stringPatternAZaZ0932",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] key_format
    #   Relates to DRM implementation. Sets the value of the KEYFORMAT
    #   attribute. Must be 'identity' or a reverse DNS string. May be
    #   omitted to indicate an implicit value of 'identity'.
    #   @return [String]
    #
    # @!attribute [rw] key_format_versions
    #   Relates to DRM implementation. Either a single positive integer
    #   version value or a slash delimited list of version values (1/2/3).
    #   @return [String]
    #
    # @!attribute [rw] static_key_value
    #   Relates to DRM implementation. Use a 32-character hexidecimal string
    #   to specify Key Value (StaticKeyValue).
    #   @return [String]
    #
    # @!attribute [rw] url
    #   Relates to DRM implementation. The location of the license server
    #   used for protecting content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/StaticKeyProvider AWS API Documentation
    #
    class StaticKeyProvider < Struct.new(
      :key_format,
      :key_format_versions,
      :static_key_value,
      :url)
      include Aws::Structure
    end

    # To add tags to a queue, preset, or job template, send a request with
    # the Amazon Resource Name (ARN) of the resource and the tags that you
    # want to add.
    #
    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "__string", # required
    #         tags: { # required
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   To get the ARN, send a GET request with the resource name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that you want to add to the resource. You can tag resources
    #   with a key-value pair or with only a key.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      include Aws::Structure
    end

    # A successful request to add tags to a resource returns an OK message.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Settings for Teletext caption output
    #
    # @note When making an API call, you may pass TeletextDestinationSettings
    #   data as a hash:
    #
    #       {
    #         page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #       }
    #
    # @!attribute [rw] page_number
    #   Set pageNumber to the Teletext page number for the destination
    #   captions for this output. This value must be a three-digit
    #   hexadecimal string; strings ending in -FF are invalid. If you are
    #   passing through the entire set of Teletext data, do not use this
    #   field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/TeletextDestinationSettings AWS API Documentation
    #
    class TeletextDestinationSettings < Struct.new(
      :page_number)
      include Aws::Structure
    end

    # Settings specific to Teletext caption sources, including Page number.
    #
    # @note When making an API call, you may pass TeletextSourceSettings
    #   data as a hash:
    #
    #       {
    #         page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #       }
    #
    # @!attribute [rw] page_number
    #   Use Page Number (PageNumber) to specify the three-digit hexadecimal
    #   page number that will be used for Teletext captions. Do not use this
    #   setting if you are passing through teletext from the input source to
    #   output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/TeletextSourceSettings AWS API Documentation
    #
    class TeletextSourceSettings < Struct.new(
      :page_number)
      include Aws::Structure
    end

    # Timecode burn-in (TimecodeBurnIn)--Burns the output timecode and
    # specified prefix into the output.
    #
    # @note When making an API call, you may pass TimecodeBurnin
    #   data as a hash:
    #
    #       {
    #         font_size: 1,
    #         position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #         prefix: "__stringPattern",
    #       }
    #
    # @!attribute [rw] font_size
    #   Use Font Size (FontSize) to set the font size of any burned-in
    #   timecode. Valid values are 10, 16, 32, 48.
    #   @return [Integer]
    #
    # @!attribute [rw] position
    #   Use Position (Position) under under Timecode burn-in
    #   (TimecodeBurnIn) to specify the location the burned-in timecode on
    #   output video.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   Use Prefix (Prefix) to place ASCII characters before any burned-in
    #   timecode. For example, a prefix of "EZ-" will result in the
    #   timecode "EZ-00:00:00:00". Provide either the characters
    #   themselves or the ASCII code equivalents. The supported range of
    #   characters is 0x20 through 0x7e. This includes letters, numbers, and
    #   all special characters represented on a standard English keyboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/TimecodeBurnin AWS API Documentation
    #
    class TimecodeBurnin < Struct.new(
      :font_size,
      :position,
      :prefix)
      include Aws::Structure
    end

    # These settings control how the service handles timecodes throughout
    # the job. These settings don't affect input clipping.
    #
    # @note When making an API call, you may pass TimecodeConfig
    #   data as a hash:
    #
    #       {
    #         anchor: "__stringPattern010920405090509092",
    #         source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #         start: "__stringPattern010920405090509092",
    #         timestamp_offset: "__stringPattern0940191020191209301",
    #       }
    #
    # @!attribute [rw] anchor
    #   If you use an editing platform that relies on an anchor timecode,
    #   use Anchor Timecode (Anchor) to specify a timecode that will match
    #   the input video frame to the output video frame. Use 24-hour format
    #   with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF). This setting
    #   ignores framerate conversion. System behavior for Anchor Timecode
    #   varies depending on your setting for Source (TimecodeSource). * If
    #   Source (TimecodeSource) is set to Specified Start (SPECIFIEDSTART),
    #   the first input frame is the specified value in Start Timecode
    #   (Start). Anchor Timecode (Anchor) and Start Timecode (Start) are
    #   used calculate output timecode. * If Source (TimecodeSource) is set
    #   to Start at 0 (ZEROBASED) the first frame is 00:00:00:00. * If
    #   Source (TimecodeSource) is set to Embedded (EMBEDDED), the first
    #   frame is the timecode value on the first input frame of the input.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Use Source (TimecodeSource) to set how timecodes are handled within
    #   this job. To make sure that your video, audio, captions, and markers
    #   are synchronized and that time-based features, such as image
    #   inserter, work correctly, choose the Timecode source option that
    #   matches your assets. All timecodes are in a 24-hour format with
    #   frame number (HH:MM:SS:FF). * Embedded (EMBEDDED) - Use the
    #   timecode that is in the input video. If no embedded timecode is in
    #   the source, the service will use Start at 0 (ZEROBASED) instead. *
    #   Start at 0 (ZEROBASED) - Set the timecode of the initial frame to
    #   00:00:00:00. * Specified Start (SPECIFIEDSTART) - Set the timecode
    #   of the initial frame to a value other than zero. You use Start
    #   timecode (Start) to provide this value.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   Only use when you set Source (TimecodeSource) to Specified start
    #   (SPECIFIEDSTART). Use Start timecode (Start) to specify the timecode
    #   for the initial frame. Use 24-hour format with frame number,
    #   (HH:MM:SS:FF) or (HH:MM:SS;FF).
    #   @return [String]
    #
    # @!attribute [rw] timestamp_offset
    #   Only applies to outputs that support program-date-time stamp. Use
    #   Timestamp offset (TimestampOffset) to overwrite the timecode date
    #   without affecting the time and frame number. Provide the new date as
    #   a string in the format "yyyy-mm-dd". To use Time stamp offset, you
    #   must also enable Insert program-date-time (InsertProgramDateTime) in
    #   the output settings. For example, if the date part of your timecodes
    #   is 2002-1-25 and you want to change it to one year later, set
    #   Timestamp offset (TimestampOffset) to 2003-1-25.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/TimecodeConfig AWS API Documentation
    #
    class TimecodeConfig < Struct.new(
      :anchor,
      :source,
      :start,
      :timestamp_offset)
      include Aws::Structure
    end

    # Enable Timed metadata insertion (TimedMetadataInsertion) to include
    # ID3 tags in your job. To include timed metadata, you must enable it
    # here, enable it in each output container, and specify tags and
    # timecodes in ID3 insertion (Id3Insertion) objects.
    #
    # @note When making an API call, you may pass TimedMetadataInsertion
    #   data as a hash:
    #
    #       {
    #         id_3_insertions: [
    #           {
    #             id_3: "__stringPatternAZaZ0902",
    #             timecode: "__stringPattern010920405090509092",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] id_3_insertions
    #   Id3Insertions contains the array of Id3Insertion instances.
    #   @return [Array<Types::Id3Insertion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/TimedMetadataInsertion AWS API Documentation
    #
    class TimedMetadataInsertion < Struct.new(
      :id_3_insertions)
      include Aws::Structure
    end

    # Information about when jobs are submitted, started, and finished is
    # specified in Unix epoch format in seconds.
    #
    # @!attribute [rw] finish_time
    #   The time, in Unix epoch format, that the transcoding job finished
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The time, in Unix epoch format, that transcoding for the job began.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time
    #   The time, in Unix epoch format, that you submitted the job.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Timing AWS API Documentation
    #
    class Timing < Struct.new(
      :finish_time,
      :start_time,
      :submit_time)
      include Aws::Structure
    end

    # Settings specific to TTML caption outputs, including Pass style
    # information (TtmlStylePassthrough).
    #
    # @note When making an API call, you may pass TtmlDestinationSettings
    #   data as a hash:
    #
    #       {
    #         style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] style_passthrough
    #   Pass through style and position information from a TTML-like input
    #   source (TTML, SMPTE-TT, CFF-TT) to the CFF-TT output or TTML output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/TtmlDestinationSettings AWS API Documentation
    #
    class TtmlDestinationSettings < Struct.new(
      :style_passthrough)
      include Aws::Structure
    end

    # To remove tags from a resource, send a request with the Amazon
    # Resource Name (ARN) of the resource and the keys of the tags that you
    # want to remove.
    #
    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "__string", # required
    #         tag_keys: ["__string"],
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   remove tags from. To get the ARN, send a GET request with the
    #   resource name.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags that you want to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      include Aws::Structure
    end

    # A successful request to remove tags from a resource returns an OK
    # message.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Modify a job template by sending a request with the job template name
    # and any of the following that you wish to change: description,
    # category, and queue.
    #
    # @note When making an API call, you may pass UpdateJobTemplateRequest
    #   data as a hash:
    #
    #       {
    #         category: "__string",
    #         description: "__string",
    #         name: "__string", # required
    #         queue: "__string",
    #         settings: {
    #           ad_avail_offset: 1,
    #           avail_blanking: {
    #             avail_blanking_image: "__stringMin14PatternS3BmpBMPPngPNG",
    #           },
    #           inputs: [
    #             {
    #               audio_selector_groups: {
    #                 "__string" => {
    #                   audio_selector_names: ["__stringMin1"],
    #                 },
    #               },
    #               audio_selectors: {
    #                 "__string" => {
    #                   custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                   default_selection: "DEFAULT", # accepts DEFAULT, NOT_DEFAULT
    #                   external_audio_file_input: "__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE",
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   offset: 1,
    #                   pids: [1],
    #                   program_selection: 1,
    #                   remix_settings: {
    #                     channel_mapping: {
    #                       output_channels: [
    #                         {
    #                           input_channels: [1],
    #                         },
    #                       ],
    #                     },
    #                     channels_in: 1,
    #                     channels_out: 1,
    #                   },
    #                   selector_type: "PID", # accepts PID, TRACK, LANGUAGE_CODE
    #                   tracks: [1],
    #                 },
    #               },
    #               caption_selectors: {
    #                 "__string" => {
    #                   custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   source_settings: {
    #                     ancillary_source_settings: {
    #                       source_ancillary_channel_number: 1,
    #                     },
    #                     dvb_sub_source_settings: {
    #                       pid: 1,
    #                     },
    #                     embedded_source_settings: {
    #                       convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                       source_608_channel_number: 1,
    #                       source_608_track_number: 1,
    #                     },
    #                     file_source_settings: {
    #                       convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                       source_file: "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI",
    #                       time_delta: 1,
    #                     },
    #                     source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #                     teletext_source_settings: {
    #                       page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                     },
    #                   },
    #                 },
    #               },
    #               deblock_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               denoise_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               filter_enable: "AUTO", # accepts AUTO, DISABLE, FORCE
    #               filter_strength: 1,
    #               input_clippings: [
    #                 {
    #                   end_timecode: "__stringPattern010920405090509092",
    #                   start_timecode: "__stringPattern010920405090509092",
    #                 },
    #               ],
    #               program_number: 1,
    #               psi_control: "IGNORE_PSI", # accepts IGNORE_PSI, USE_PSI
    #               timecode_source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #               video_selector: {
    #                 color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709, HDR10, HLG_2020
    #                 color_space_usage: "FORCE", # accepts FORCE, FALLBACK
    #                 hdr_10_metadata: {
    #                   blue_primary_x: 1,
    #                   blue_primary_y: 1,
    #                   green_primary_x: 1,
    #                   green_primary_y: 1,
    #                   max_content_light_level: 1,
    #                   max_frame_average_light_level: 1,
    #                   max_luminance: 1,
    #                   min_luminance: 1,
    #                   red_primary_x: 1,
    #                   red_primary_y: 1,
    #                   white_point_x: 1,
    #                   white_point_y: 1,
    #                 },
    #                 pid: 1,
    #                 program_number: 1,
    #               },
    #             },
    #           ],
    #           nielsen_configuration: {
    #             breakout_code: 1,
    #             distributor_id: "__string",
    #           },
    #           output_groups: [
    #             {
    #               custom_name: "__string",
    #               name: "__string",
    #               output_group_settings: {
    #                 cmaf_group_settings: {
    #                   base_url: "__string",
    #                   client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                   codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #                   destination: "__stringPatternS3",
    #                   encryption: {
    #                     constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #                     encryption_method: "SAMPLE_AES", # accepts SAMPLE_AES
    #                     initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     static_key_provider: {
    #                       key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                       key_format_versions: "__stringPatternDD",
    #                       static_key_value: "__stringPatternAZaZ0932",
    #                       url: "__string",
    #                     },
    #                     type: "STATIC_KEY", # accepts STATIC_KEY
    #                   },
    #                   fragment_length: 1,
    #                   manifest_compression: "GZIP", # accepts GZIP, NONE
    #                   manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                   min_buffer_time: 1,
    #                   min_final_segment_length: 1.0,
    #                   segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                   segment_length: 1,
    #                   stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   write_dash_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #                   write_hls_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #                 },
    #                 dash_iso_group_settings: {
    #                   base_url: "__string",
    #                   destination: "__stringPatternS3",
    #                   encryption: {
    #                     speke_key_provider: {
    #                       resource_id: "__string",
    #                       system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                       url: "__stringPatternHttps",
    #                     },
    #                   },
    #                   fragment_length: 1,
    #                   hbbtv_compliance: "HBBTV_1_5", # accepts HBBTV_1_5, NONE
    #                   min_buffer_time: 1,
    #                   segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                   segment_length: 1,
    #                   write_segment_timeline_in_representation: "ENABLED", # accepts ENABLED, DISABLED
    #                 },
    #                 file_group_settings: {
    #                   destination: "__stringPatternS3",
    #                 },
    #                 hls_group_settings: {
    #                   ad_markers: ["ELEMENTAL"], # accepts ELEMENTAL, ELEMENTAL_SCTE35
    #                   base_url: "__string",
    #                   caption_language_mappings: [
    #                     {
    #                       caption_channel: 1,
    #                       custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                       language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                       language_description: "__string",
    #                     },
    #                   ],
    #                   caption_language_setting: "INSERT", # accepts INSERT, OMIT, NONE
    #                   client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #                   codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #                   destination: "__stringPatternS3",
    #                   directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #                   encryption: {
    #                     constant_initialization_vector: "__stringMin32Max32Pattern09aFAF32",
    #                     encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #                     initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                     speke_key_provider: {
    #                       resource_id: "__string",
    #                       system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                       url: "__stringPatternHttps",
    #                     },
    #                     static_key_provider: {
    #                       key_format: "__stringPatternIdentityAZaZ26AZaZ09163",
    #                       key_format_versions: "__stringPatternDD",
    #                       static_key_value: "__stringPatternAZaZ0932",
    #                       url: "__string",
    #                     },
    #                     type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #                   },
    #                   manifest_compression: "GZIP", # accepts GZIP, NONE
    #                   manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #                   min_final_segment_length: 1.0,
    #                   min_segment_length: 1,
    #                   output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #                   program_date_time: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   program_date_time_period: 1,
    #                   segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #                   segment_length: 1,
    #                   segments_per_subdirectory: 1,
    #                   stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #                   timed_metadata_id_3_period: 1,
    #                   timestamp_delta_milliseconds: 1,
    #                 },
    #                 ms_smooth_group_settings: {
    #                   audio_deduplication: "COMBINE_DUPLICATE_STREAMS", # accepts COMBINE_DUPLICATE_STREAMS, NONE
    #                   destination: "__stringPatternS3",
    #                   encryption: {
    #                     speke_key_provider: {
    #                       resource_id: "__string",
    #                       system_ids: ["__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"],
    #                       url: "__stringPatternHttps",
    #                     },
    #                   },
    #                   fragment_length: 1,
    #                   manifest_encoding: "UTF8", # accepts UTF8, UTF16
    #                 },
    #                 type: "HLS_GROUP_SETTINGS", # accepts HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS, CMAF_GROUP_SETTINGS
    #               },
    #               outputs: [
    #                 {
    #                   audio_descriptions: [
    #                     {
    #                       audio_normalization_settings: {
    #                         algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #                         algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #                         correction_gate_level: 1,
    #                         loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #                         peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #                         target_lkfs: 1.0,
    #                       },
    #                       audio_source_name: "__string",
    #                       audio_type: 1,
    #                       audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       codec_settings: {
    #                         aac_settings: {
    #                           audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                           bitrate: 1,
    #                           codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                           coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                           rate_control_mode: "CBR", # accepts CBR, VBR
    #                           raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                           sample_rate: 1,
    #                           specification: "MPEG2", # accepts MPEG2, MPEG4
    #                           vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #                         },
    #                         ac_3_settings: {
    #                           bitrate: 1,
    #                           bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                           dialnorm: 1,
    #                           dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                           lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                           metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                           sample_rate: 1,
    #                         },
    #                         aiff_settings: {
    #                           bit_depth: 1,
    #                           channels: 1,
    #                           sample_rate: 1,
    #                         },
    #                         codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #                         eac_3_settings: {
    #                           attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                           bitrate: 1,
    #                           bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                           coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                           dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                           dialnorm: 1,
    #                           dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                           dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                           lfe_control: "LFE", # accepts LFE, NO_LFE
    #                           lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                           lo_ro_center_mix_level: 1.0,
    #                           lo_ro_surround_mix_level: 1.0,
    #                           lt_rt_center_mix_level: 1.0,
    #                           lt_rt_surround_mix_level: 1.0,
    #                           metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                           passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                           phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                           sample_rate: 1,
    #                           stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                           surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                           surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                         },
    #                         mp_2_settings: {
    #                           bitrate: 1,
    #                           channels: 1,
    #                           sample_rate: 1,
    #                         },
    #                         wav_settings: {
    #                           bit_depth: 1,
    #                           channels: 1,
    #                           format: "RIFF", # accepts RIFF, RF64
    #                           sample_rate: 1,
    #                         },
    #                       },
    #                       custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                       language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                       language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       remix_settings: {
    #                         channel_mapping: {
    #                           output_channels: [
    #                             {
    #                               input_channels: [1],
    #                             },
    #                           ],
    #                         },
    #                         channels_in: 1,
    #                         channels_out: 1,
    #                       },
    #                       stream_name: "__stringPatternWS",
    #                     },
    #                   ],
    #                   caption_descriptions: [
    #                     {
    #                       caption_selector_name: "__stringMin1",
    #                       custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #                       destination_settings: {
    #                         burnin_destination_settings: {
    #                           alignment: "CENTERED", # accepts CENTERED, LEFT
    #                           background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           background_opacity: 1,
    #                           font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                           font_opacity: 1,
    #                           font_resolution: 1,
    #                           font_size: 1,
    #                           outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                           outline_size: 1,
    #                           shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           shadow_opacity: 1,
    #                           shadow_x_offset: 1,
    #                           shadow_y_offset: 1,
    #                           teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                           x_position: 1,
    #                           y_position: 1,
    #                         },
    #                         destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #                         dvb_sub_destination_settings: {
    #                           alignment: "CENTERED", # accepts CENTERED, LEFT
    #                           background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           background_opacity: 1,
    #                           font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                           font_opacity: 1,
    #                           font_resolution: 1,
    #                           font_size: 1,
    #                           outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                           outline_size: 1,
    #                           shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                           shadow_opacity: 1,
    #                           shadow_x_offset: 1,
    #                           shadow_y_offset: 1,
    #                           teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                           x_position: 1,
    #                           y_position: 1,
    #                         },
    #                         scc_destination_settings: {
    #                           framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #                         },
    #                         teletext_destination_settings: {
    #                           page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                         },
    #                         ttml_destination_settings: {
    #                           style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #                         },
    #                       },
    #                       language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                       language_description: "__string",
    #                     },
    #                   ],
    #                   container_settings: {
    #                     container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
    #                     f4v_settings: {
    #                       moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                     },
    #                     m2ts_settings: {
    #                       audio_buffer_model: "DVB", # accepts DVB, ATSC
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: [1],
    #                       bitrate: 1,
    #                       buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                       dvb_nit_settings: {
    #                         network_id: 1,
    #                         network_name: "__stringMin1Max256",
    #                         nit_interval: 1,
    #                       },
    #                       dvb_sdt_settings: {
    #                         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                         sdt_interval: 1,
    #                         service_name: "__stringMin1Max256",
    #                         service_provider_name: "__stringMin1Max256",
    #                       },
    #                       dvb_sub_pids: [1],
    #                       dvb_tdt_settings: {
    #                         tdt_interval: 1,
    #                       },
    #                       dvb_teletext_pid: 1,
    #                       ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                       ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                       es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       fragment_time: 1.0,
    #                       max_pcr_interval: 1,
    #                       min_ebp_interval: 1,
    #                       nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                       null_packet_bitrate: 1.0,
    #                       pat_interval: 1,
    #                       pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                       pcr_pid: 1,
    #                       pmt_interval: 1,
    #                       pmt_pid: 1,
    #                       private_metadata_pid: 1,
    #                       program_number: 1,
    #                       rate_mode: "VBR", # accepts VBR, CBR
    #                       scte_35_pid: 1,
    #                       scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                       segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #                       segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                       segmentation_time: 1.0,
    #                       timed_metadata_pid: 1,
    #                       transport_stream_id: 1,
    #                       video_pid: 1,
    #                     },
    #                     m3u_8_settings: {
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: [1],
    #                       nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                       pat_interval: 1,
    #                       pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                       pcr_pid: 1,
    #                       pmt_interval: 1,
    #                       pmt_pid: 1,
    #                       private_metadata_pid: 1,
    #                       program_number: 1,
    #                       scte_35_pid: 1,
    #                       scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                       timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                       timed_metadata_pid: 1,
    #                       transport_stream_id: 1,
    #                       video_pid: 1,
    #                     },
    #                     mov_settings: {
    #                       clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #                       padding_control: "OMNEON", # accepts OMNEON, NONE
    #                       reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #                     },
    #                     mp_4_settings: {
    #                       cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                       mp_4_major_brand: "__string",
    #                     },
    #                   },
    #                   extension: "__string",
    #                   name_modifier: "__stringMin1",
    #                   output_settings: {
    #                     hls_settings: {
    #                       audio_group_id: "__string",
    #                       audio_rendition_sets: "__string",
    #                       audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                       i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                       segment_modifier: "__string",
    #                     },
    #                   },
    #                   preset: "__stringMin0",
    #                   video_description: {
    #                     afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #                     anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #                     codec_settings: {
    #                       codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #                       frame_capture_settings: {
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         max_captures: 1,
    #                         quality: 1,
    #                       },
    #                       h264_settings: {
    #                         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                         bitrate: 1,
    #                         codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #                         codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                         entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                         field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #                         flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                         gop_closed_cadence: 1,
    #                         gop_size: 1.0,
    #                         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                         hrd_buffer_initial_fill_percentage: 1,
    #                         hrd_buffer_size: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         max_bitrate: 1,
    #                         min_i_interval: 1,
    #                         number_b_frames_between_reference_frames: 1,
    #                         number_reference_frames: 1,
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                         qvbr_settings: {
    #                           max_average_bitrate: 1,
    #                           qvbr_quality_level: 1,
    #                         },
    #                         rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                         repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #                         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                         slices: 1,
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         softness: 1,
    #                         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                         telecine: "NONE", # accepts NONE, SOFT, HARD
    #                         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                       },
    #                       h265_settings: {
    #                         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                         alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #                         bitrate: 1,
    #                         codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #                         codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #                         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                         flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                         gop_closed_cadence: 1,
    #                         gop_size: 1.0,
    #                         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                         hrd_buffer_initial_fill_percentage: 1,
    #                         hrd_buffer_size: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         max_bitrate: 1,
    #                         min_i_interval: 1,
    #                         number_b_frames_between_reference_frames: 1,
    #                         number_reference_frames: 1,
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                         qvbr_settings: {
    #                           max_average_bitrate: 1,
    #                           qvbr_quality_level: 1,
    #                         },
    #                         rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                         sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #                         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                         slices: 1,
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         telecine: "NONE", # accepts NONE, SOFT, HARD
    #                         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #                         tiles: "DISABLED", # accepts DISABLED, ENABLED
    #                         unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                         write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #                       },
    #                       mpeg_2_settings: {
    #                         adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #                         bitrate: 1,
    #                         codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #                         codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #                         dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         gop_closed_cadence: 1,
    #                         gop_size: 1.0,
    #                         gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                         hrd_buffer_initial_fill_percentage: 1,
    #                         hrd_buffer_size: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #                         max_bitrate: 1,
    #                         min_i_interval: 1,
    #                         number_b_frames_between_reference_frames: 1,
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #                         rate_control_mode: "VBR", # accepts VBR, CBR
    #                         scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         softness: 1,
    #                         spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                         syntax: "DEFAULT", # accepts DEFAULT, D_10
    #                         telecine: "NONE", # accepts NONE, SOFT, HARD
    #                         temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                       },
    #                       prores_settings: {
    #                         codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #                         framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                         framerate_denominator: 1,
    #                         framerate_numerator: 1,
    #                         interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                         par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                         par_denominator: 1,
    #                         par_numerator: 1,
    #                         slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                         telecine: "NONE", # accepts NONE, HARD
    #                       },
    #                     },
    #                     color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                     crop: {
    #                       height: 1,
    #                       width: 1,
    #                       x: 1,
    #                       y: 1,
    #                     },
    #                     drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                     fixed_afd: 1,
    #                     height: 1,
    #                     position: {
    #                       height: 1,
    #                       width: 1,
    #                       x: 1,
    #                       y: 1,
    #                     },
    #                     respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #                     scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #                     sharpness: 1,
    #                     timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                     video_preprocessors: {
    #                       color_corrector: {
    #                         brightness: 1,
    #                         color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #                         contrast: 1,
    #                         hdr_10_metadata: {
    #                           blue_primary_x: 1,
    #                           blue_primary_y: 1,
    #                           green_primary_x: 1,
    #                           green_primary_y: 1,
    #                           max_content_light_level: 1,
    #                           max_frame_average_light_level: 1,
    #                           max_luminance: 1,
    #                           min_luminance: 1,
    #                           red_primary_x: 1,
    #                           red_primary_y: 1,
    #                           white_point_x: 1,
    #                           white_point_y: 1,
    #                         },
    #                         hue: 1,
    #                         saturation: 1,
    #                       },
    #                       deinterlacer: {
    #                         algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #                         control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #                         mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #                       },
    #                       image_inserter: {
    #                         insertable_images: [
    #                           {
    #                             duration: 1,
    #                             fade_in: 1,
    #                             fade_out: 1,
    #                             height: 1,
    #                             image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #                             image_x: 1,
    #                             image_y: 1,
    #                             layer: 1,
    #                             opacity: 1,
    #                             start_time: "__stringPattern01D20305D205D",
    #                             width: 1,
    #                           },
    #                         ],
    #                       },
    #                       noise_reducer: {
    #                         filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #                         filter_settings: {
    #                           strength: 1,
    #                         },
    #                         spatial_filter_settings: {
    #                           post_filter_sharpen_strength: 1,
    #                           speed: 1,
    #                           strength: 1,
    #                         },
    #                       },
    #                       timecode_burnin: {
    #                         font_size: 1,
    #                         position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #                         prefix: "__stringPattern",
    #                       },
    #                     },
    #                     width: 1,
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           timecode_config: {
    #             anchor: "__stringPattern010920405090509092",
    #             source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #             start: "__stringPattern010920405090509092",
    #             timestamp_offset: "__stringPattern0940191020191209301",
    #           },
    #           timed_metadata_insertion: {
    #             id_3_insertions: [
    #               {
    #                 id_3: "__stringPatternAZaZ0902",
    #                 timecode: "__stringPattern010920405090509092",
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] category
    #   The new category for the job template, if you are changing it.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the job template, if you are changing it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the job template you are modifying
    #   @return [String]
    #
    # @!attribute [rw] queue
    #   The new queue for the job template, if you are changing it.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   JobTemplateSettings contains all the transcode settings saved in the
    #   template that will be applied to jobs created from it.
    #   @return [Types::JobTemplateSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdateJobTemplateRequest AWS API Documentation
    #
    class UpdateJobTemplateRequest < Struct.new(
      :category,
      :description,
      :name,
      :queue,
      :settings)
      include Aws::Structure
    end

    # Successful update job template requests will return the new job
    # template JSON.
    #
    # @!attribute [rw] job_template
    #   A job template is a pre-made set of encoding instructions that you
    #   can use to quickly create a job.
    #   @return [Types::JobTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdateJobTemplateResponse AWS API Documentation
    #
    class UpdateJobTemplateResponse < Struct.new(
      :job_template)
      include Aws::Structure
    end

    # Modify a preset by sending a request with the preset name and any of
    # the following that you wish to change: description, category, and
    # transcoding settings.
    #
    # @note When making an API call, you may pass UpdatePresetRequest
    #   data as a hash:
    #
    #       {
    #         category: "__string",
    #         description: "__string",
    #         name: "__string", # required
    #         settings: {
    #           audio_descriptions: [
    #             {
    #               audio_normalization_settings: {
    #                 algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #                 algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #                 correction_gate_level: 1,
    #                 loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #                 peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #                 target_lkfs: 1.0,
    #               },
    #               audio_source_name: "__string",
    #               audio_type: 1,
    #               audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               codec_settings: {
    #                 aac_settings: {
    #                   audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                   bitrate: 1,
    #                   codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                   coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                   rate_control_mode: "CBR", # accepts CBR, VBR
    #                   raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                   sample_rate: 1,
    #                   specification: "MPEG2", # accepts MPEG2, MPEG4
    #                   vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #                 },
    #                 ac_3_settings: {
    #                   bitrate: 1,
    #                   bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                   dialnorm: 1,
    #                   dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                   lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                   metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   sample_rate: 1,
    #                 },
    #                 aiff_settings: {
    #                   bit_depth: 1,
    #                   channels: 1,
    #                   sample_rate: 1,
    #                 },
    #                 codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #                 eac_3_settings: {
    #                   attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                   bitrate: 1,
    #                   bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                   coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                   dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                   dialnorm: 1,
    #                   dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                   dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                   lfe_control: "LFE", # accepts LFE, NO_LFE
    #                   lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                   lo_ro_center_mix_level: 1.0,
    #                   lo_ro_surround_mix_level: 1.0,
    #                   lt_rt_center_mix_level: 1.0,
    #                   lt_rt_surround_mix_level: 1.0,
    #                   metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                   phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                   sample_rate: 1,
    #                   stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                   surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                   surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                 },
    #                 mp_2_settings: {
    #                   bitrate: 1,
    #                   channels: 1,
    #                   sample_rate: 1,
    #                 },
    #                 wav_settings: {
    #                   bit_depth: 1,
    #                   channels: 1,
    #                   format: "RIFF", # accepts RIFF, RF64
    #                   sample_rate: 1,
    #                 },
    #               },
    #               custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #               language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #               language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               remix_settings: {
    #                 channel_mapping: {
    #                   output_channels: [
    #                     {
    #                       input_channels: [1],
    #                     },
    #                   ],
    #                 },
    #                 channels_in: 1,
    #                 channels_out: 1,
    #               },
    #               stream_name: "__stringPatternWS",
    #             },
    #           ],
    #           caption_descriptions: [
    #             {
    #               custom_language_code: "__stringMin3Max3PatternAZaZ3",
    #               destination_settings: {
    #                 burnin_destination_settings: {
    #                   alignment: "CENTERED", # accepts CENTERED, LEFT
    #                   background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                   background_opacity: 1,
    #                   font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                   font_opacity: 1,
    #                   font_resolution: 1,
    #                   font_size: 1,
    #                   outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                   outline_size: 1,
    #                   shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                   shadow_opacity: 1,
    #                   shadow_x_offset: 1,
    #                   shadow_y_offset: 1,
    #                   teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                   x_position: 1,
    #                   y_position: 1,
    #                 },
    #                 destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #                 dvb_sub_destination_settings: {
    #                   alignment: "CENTERED", # accepts CENTERED, LEFT
    #                   background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                   background_opacity: 1,
    #                   font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                   font_opacity: 1,
    #                   font_resolution: 1,
    #                   font_size: 1,
    #                   outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                   outline_size: 1,
    #                   shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                   shadow_opacity: 1,
    #                   shadow_x_offset: 1,
    #                   shadow_y_offset: 1,
    #                   teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                   x_position: 1,
    #                   y_position: 1,
    #                 },
    #                 scc_destination_settings: {
    #                   framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #                 },
    #                 teletext_destination_settings: {
    #                   page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #                 },
    #                 ttml_destination_settings: {
    #                   style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #                 },
    #               },
    #               language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #               language_description: "__string",
    #             },
    #           ],
    #           container_settings: {
    #             container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
    #             f4v_settings: {
    #               moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #             },
    #             m2ts_settings: {
    #               audio_buffer_model: "DVB", # accepts DVB, ATSC
    #               audio_frames_per_pes: 1,
    #               audio_pids: [1],
    #               bitrate: 1,
    #               buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #               dvb_nit_settings: {
    #                 network_id: 1,
    #                 network_name: "__stringMin1Max256",
    #                 nit_interval: 1,
    #               },
    #               dvb_sdt_settings: {
    #                 output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                 sdt_interval: 1,
    #                 service_name: "__stringMin1Max256",
    #                 service_provider_name: "__stringMin1Max256",
    #               },
    #               dvb_sub_pids: [1],
    #               dvb_tdt_settings: {
    #                 tdt_interval: 1,
    #               },
    #               dvb_teletext_pid: 1,
    #               ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #               ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #               es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               fragment_time: 1.0,
    #               max_pcr_interval: 1,
    #               min_ebp_interval: 1,
    #               nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #               null_packet_bitrate: 1.0,
    #               pat_interval: 1,
    #               pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #               pcr_pid: 1,
    #               pmt_interval: 1,
    #               pmt_pid: 1,
    #               private_metadata_pid: 1,
    #               program_number: 1,
    #               rate_mode: "VBR", # accepts VBR, CBR
    #               scte_35_pid: 1,
    #               scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #               segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #               segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #               segmentation_time: 1.0,
    #               timed_metadata_pid: 1,
    #               transport_stream_id: 1,
    #               video_pid: 1,
    #             },
    #             m3u_8_settings: {
    #               audio_frames_per_pes: 1,
    #               audio_pids: [1],
    #               nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #               pat_interval: 1,
    #               pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #               pcr_pid: 1,
    #               pmt_interval: 1,
    #               pmt_pid: 1,
    #               private_metadata_pid: 1,
    #               program_number: 1,
    #               scte_35_pid: 1,
    #               scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #               timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #               timed_metadata_pid: 1,
    #               transport_stream_id: 1,
    #               video_pid: 1,
    #             },
    #             mov_settings: {
    #               clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #               padding_control: "OMNEON", # accepts OMNEON, NONE
    #               reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #             },
    #             mp_4_settings: {
    #               cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #               mp_4_major_brand: "__string",
    #             },
    #           },
    #           video_description: {
    #             afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #             anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #             codec_settings: {
    #               codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #               frame_capture_settings: {
    #                 framerate_denominator: 1,
    #                 framerate_numerator: 1,
    #                 max_captures: 1,
    #                 quality: 1,
    #               },
    #               h264_settings: {
    #                 adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                 bitrate: 1,
    #                 codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #                 codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                 dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                 entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                 field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #                 flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                 framerate_denominator: 1,
    #                 framerate_numerator: 1,
    #                 gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                 gop_closed_cadence: 1,
    #                 gop_size: 1.0,
    #                 gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                 hrd_buffer_initial_fill_percentage: 1,
    #                 hrd_buffer_size: 1,
    #                 interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                 max_bitrate: 1,
    #                 min_i_interval: 1,
    #                 number_b_frames_between_reference_frames: 1,
    #                 number_reference_frames: 1,
    #                 par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 par_denominator: 1,
    #                 par_numerator: 1,
    #                 quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                 qvbr_settings: {
    #                   max_average_bitrate: 1,
    #                   qvbr_quality_level: 1,
    #                 },
    #                 rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                 repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #                 scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                 slices: 1,
    #                 slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                 softness: 1,
    #                 spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                 telecine: "NONE", # accepts NONE, SOFT, HARD
    #                 temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #               },
    #               h265_settings: {
    #                 adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                 alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #                 bitrate: 1,
    #                 codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #                 codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #                 dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                 flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                 framerate_denominator: 1,
    #                 framerate_numerator: 1,
    #                 gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                 gop_closed_cadence: 1,
    #                 gop_size: 1.0,
    #                 gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                 hrd_buffer_initial_fill_percentage: 1,
    #                 hrd_buffer_size: 1,
    #                 interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                 max_bitrate: 1,
    #                 min_i_interval: 1,
    #                 number_b_frames_between_reference_frames: 1,
    #                 number_reference_frames: 1,
    #                 par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 par_denominator: 1,
    #                 par_numerator: 1,
    #                 quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                 qvbr_settings: {
    #                   max_average_bitrate: 1,
    #                   qvbr_quality_level: 1,
    #                 },
    #                 rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #                 sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #                 scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                 slices: 1,
    #                 slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                 spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 telecine: "NONE", # accepts NONE, SOFT, HARD
    #                 temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #                 tiles: "DISABLED", # accepts DISABLED, ENABLED
    #                 unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                 write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #               },
    #               mpeg_2_settings: {
    #                 adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #                 bitrate: 1,
    #                 codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #                 codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #                 dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #                 framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                 framerate_denominator: 1,
    #                 framerate_numerator: 1,
    #                 gop_closed_cadence: 1,
    #                 gop_size: 1.0,
    #                 gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                 hrd_buffer_initial_fill_percentage: 1,
    #                 hrd_buffer_size: 1,
    #                 interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                 intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #                 max_bitrate: 1,
    #                 min_i_interval: 1,
    #                 number_b_frames_between_reference_frames: 1,
    #                 par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 par_denominator: 1,
    #                 par_numerator: 1,
    #                 quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #                 rate_control_mode: "VBR", # accepts VBR, CBR
    #                 scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                 slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                 softness: 1,
    #                 spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                 syntax: "DEFAULT", # accepts DEFAULT, D_10
    #                 telecine: "NONE", # accepts NONE, SOFT, HARD
    #                 temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               },
    #               prores_settings: {
    #                 codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #                 framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                 framerate_denominator: 1,
    #                 framerate_numerator: 1,
    #                 interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                 par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                 par_denominator: 1,
    #                 par_numerator: 1,
    #                 slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                 telecine: "NONE", # accepts NONE, HARD
    #               },
    #             },
    #             color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #             crop: {
    #               height: 1,
    #               width: 1,
    #               x: 1,
    #               y: 1,
    #             },
    #             drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #             fixed_afd: 1,
    #             height: 1,
    #             position: {
    #               height: 1,
    #               width: 1,
    #               x: 1,
    #               y: 1,
    #             },
    #             respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #             scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #             sharpness: 1,
    #             timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #             video_preprocessors: {
    #               color_corrector: {
    #                 brightness: 1,
    #                 color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #                 contrast: 1,
    #                 hdr_10_metadata: {
    #                   blue_primary_x: 1,
    #                   blue_primary_y: 1,
    #                   green_primary_x: 1,
    #                   green_primary_y: 1,
    #                   max_content_light_level: 1,
    #                   max_frame_average_light_level: 1,
    #                   max_luminance: 1,
    #                   min_luminance: 1,
    #                   red_primary_x: 1,
    #                   red_primary_y: 1,
    #                   white_point_x: 1,
    #                   white_point_y: 1,
    #                 },
    #                 hue: 1,
    #                 saturation: 1,
    #               },
    #               deinterlacer: {
    #                 algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #                 control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #                 mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #               },
    #               image_inserter: {
    #                 insertable_images: [
    #                   {
    #                     duration: 1,
    #                     fade_in: 1,
    #                     fade_out: 1,
    #                     height: 1,
    #                     image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #                     image_x: 1,
    #                     image_y: 1,
    #                     layer: 1,
    #                     opacity: 1,
    #                     start_time: "__stringPattern01D20305D205D",
    #                     width: 1,
    #                   },
    #                 ],
    #               },
    #               noise_reducer: {
    #                 filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #                 filter_settings: {
    #                   strength: 1,
    #                 },
    #                 spatial_filter_settings: {
    #                   post_filter_sharpen_strength: 1,
    #                   speed: 1,
    #                   strength: 1,
    #                 },
    #               },
    #               timecode_burnin: {
    #                 font_size: 1,
    #                 position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #                 prefix: "__stringPattern",
    #               },
    #             },
    #             width: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] category
    #   The new category for the preset, if you are changing it.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the preset, if you are changing it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the preset you are modifying.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Settings for preset
    #   @return [Types::PresetSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdatePresetRequest AWS API Documentation
    #
    class UpdatePresetRequest < Struct.new(
      :category,
      :description,
      :name,
      :settings)
      include Aws::Structure
    end

    # Successful update preset requests will return the new preset JSON.
    #
    # @!attribute [rw] preset
    #   A preset is a collection of preconfigured media conversion settings
    #   that you want MediaConvert to apply to the output during the
    #   conversion process.
    #   @return [Types::Preset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdatePresetResponse AWS API Documentation
    #
    class UpdatePresetResponse < Struct.new(
      :preset)
      include Aws::Structure
    end

    # Modify a queue by sending a request with the queue name and any
    # changes to the queue.
    #
    # @note When making an API call, you may pass UpdateQueueRequest
    #   data as a hash:
    #
    #       {
    #         description: "__string",
    #         name: "__string", # required
    #         reservation_plan_settings: {
    #           commitment: "ONE_YEAR", # required, accepts ONE_YEAR
    #           renewal_type: "AUTO_RENEW", # required, accepts AUTO_RENEW, EXPIRE
    #           reserved_slots: 1, # required
    #         },
    #         status: "ACTIVE", # accepts ACTIVE, PAUSED
    #       }
    #
    # @!attribute [rw] description
    #   The new description for the queue, if you are changing it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the queue that you are modifying.
    #   @return [String]
    #
    # @!attribute [rw] reservation_plan_settings
    #   Details about the pricing plan for your reserved queue. Required for
    #   reserved queues and not applicable to on-demand queues.
    #   @return [Types::ReservationPlanSettings]
    #
    # @!attribute [rw] status
    #   Pause or activate a queue by changing its status between ACTIVE and
    #   PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs
    #   that are running when you pause the queue continue to run until they
    #   finish or result in an error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdateQueueRequest AWS API Documentation
    #
    class UpdateQueueRequest < Struct.new(
      :description,
      :name,
      :reservation_plan_settings,
      :status)
      include Aws::Structure
    end

    # Successful update queue requests return the new queue information in
    # JSON.
    #
    # @!attribute [rw] queue
    #   You can use queues to manage the resources that are available to
    #   your AWS account for running multiple transcoding jobs at the same
    #   time. If you don't specify a queue, the service sends all jobs
    #   through the default queue. For more information, see
    #   https://docs.aws.amazon.com/mediaconvert/latest/ug/about-resource-allocation-and-job-prioritization.html.
    #   @return [Types::Queue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdateQueueResponse AWS API Documentation
    #
    class UpdateQueueResponse < Struct.new(
      :queue)
      include Aws::Structure
    end

    # Video codec settings, (CodecSettings) under (VideoDescription),
    # contains the group of settings related to video encoding. The settings
    # in this group vary depending on the value you choose for Video codec
    # (Codec). For each codec enum you choose, define the corresponding
    # settings object. The following lists the codec enum, settings object
    # pairs. * H\_264, H264Settings * H\_265, H265Settings * MPEG2,
    # Mpeg2Settings * PRORES, ProresSettings * FRAME\_CAPTURE,
    # FrameCaptureSettings
    #
    # @note When making an API call, you may pass VideoCodecSettings
    #   data as a hash:
    #
    #       {
    #         codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #         frame_capture_settings: {
    #           framerate_denominator: 1,
    #           framerate_numerator: 1,
    #           max_captures: 1,
    #           quality: 1,
    #         },
    #         h264_settings: {
    #           adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #           bitrate: 1,
    #           codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #           codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #           dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #           entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #           field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #           flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #           framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #           framerate_denominator: 1,
    #           framerate_numerator: 1,
    #           gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #           gop_closed_cadence: 1,
    #           gop_size: 1.0,
    #           gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #           hrd_buffer_initial_fill_percentage: 1,
    #           hrd_buffer_size: 1,
    #           interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #           max_bitrate: 1,
    #           min_i_interval: 1,
    #           number_b_frames_between_reference_frames: 1,
    #           number_reference_frames: 1,
    #           par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #           par_denominator: 1,
    #           par_numerator: 1,
    #           quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #           qvbr_settings: {
    #             max_average_bitrate: 1,
    #             qvbr_quality_level: 1,
    #           },
    #           rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #           repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #           scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #           slices: 1,
    #           slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #           softness: 1,
    #           spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #           telecine: "NONE", # accepts NONE, SOFT, HARD
    #           temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #         },
    #         h265_settings: {
    #           adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #           alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #           bitrate: 1,
    #           codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #           codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #           dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #           flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #           framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #           framerate_denominator: 1,
    #           framerate_numerator: 1,
    #           gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #           gop_closed_cadence: 1,
    #           gop_size: 1.0,
    #           gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #           hrd_buffer_initial_fill_percentage: 1,
    #           hrd_buffer_size: 1,
    #           interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #           max_bitrate: 1,
    #           min_i_interval: 1,
    #           number_b_frames_between_reference_frames: 1,
    #           number_reference_frames: 1,
    #           par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #           par_denominator: 1,
    #           par_numerator: 1,
    #           quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #           qvbr_settings: {
    #             max_average_bitrate: 1,
    #             qvbr_quality_level: 1,
    #           },
    #           rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #           sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #           scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #           slices: 1,
    #           slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #           spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           telecine: "NONE", # accepts NONE, SOFT, HARD
    #           temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #           tiles: "DISABLED", # accepts DISABLED, ENABLED
    #           unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #           write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #         },
    #         mpeg_2_settings: {
    #           adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #           bitrate: 1,
    #           codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #           codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #           dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #           framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #           framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #           framerate_denominator: 1,
    #           framerate_numerator: 1,
    #           gop_closed_cadence: 1,
    #           gop_size: 1.0,
    #           gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #           hrd_buffer_initial_fill_percentage: 1,
    #           hrd_buffer_size: 1,
    #           interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #           intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #           max_bitrate: 1,
    #           min_i_interval: 1,
    #           number_b_frames_between_reference_frames: 1,
    #           par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #           par_denominator: 1,
    #           par_numerator: 1,
    #           quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #           rate_control_mode: "VBR", # accepts VBR, CBR
    #           scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #           slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #           softness: 1,
    #           spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           syntax: "DEFAULT", # accepts DEFAULT, D_10
    #           telecine: "NONE", # accepts NONE, SOFT, HARD
    #           temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #         },
    #         prores_settings: {
    #           codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #           framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #           framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #           framerate_denominator: 1,
    #           framerate_numerator: 1,
    #           interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #           par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #           par_denominator: 1,
    #           par_numerator: 1,
    #           slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #           telecine: "NONE", # accepts NONE, HARD
    #         },
    #       }
    #
    # @!attribute [rw] codec
    #   Type of video codec
    #   @return [String]
    #
    # @!attribute [rw] frame_capture_settings
    #   Required when you set (Codec) under
    #   (VideoDescription)>(CodecSettings) to the value FRAME\_CAPTURE.
    #   @return [Types::FrameCaptureSettings]
    #
    # @!attribute [rw] h264_settings
    #   Required when you set (Codec) under
    #   (VideoDescription)>(CodecSettings) to the value H\_264.
    #   @return [Types::H264Settings]
    #
    # @!attribute [rw] h265_settings
    #   Settings for H265 codec
    #   @return [Types::H265Settings]
    #
    # @!attribute [rw] mpeg_2_settings
    #   Required when you set (Codec) under
    #   (VideoDescription)>(CodecSettings) to the value MPEG2.
    #   @return [Types::Mpeg2Settings]
    #
    # @!attribute [rw] prores_settings
    #   Required when you set (Codec) under
    #   (VideoDescription)>(CodecSettings) to the value PRORES.
    #   @return [Types::ProresSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/VideoCodecSettings AWS API Documentation
    #
    class VideoCodecSettings < Struct.new(
      :codec,
      :frame_capture_settings,
      :h264_settings,
      :h265_settings,
      :mpeg_2_settings,
      :prores_settings)
      include Aws::Structure
    end

    # Settings for video outputs
    #
    # @note When making an API call, you may pass VideoDescription
    #   data as a hash:
    #
    #       {
    #         afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #         anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #         codec_settings: {
    #           codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #           frame_capture_settings: {
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             max_captures: 1,
    #             quality: 1,
    #           },
    #           h264_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #             codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #             dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #             entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #             field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #             flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             number_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #             qvbr_settings: {
    #               max_average_bitrate: 1,
    #               qvbr_quality_level: 1,
    #             },
    #             rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #             repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slices: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           h265_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #             codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #             dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #             flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             number_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #             qvbr_settings: {
    #               max_average_bitrate: 1,
    #               qvbr_quality_level: 1,
    #             },
    #             rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #             sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slices: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #             tiles: "DISABLED", # accepts DISABLED, ENABLED
    #             unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #             write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #           },
    #           mpeg_2_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #             codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #             dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #             rate_control_mode: "VBR", # accepts VBR, CBR
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             syntax: "DEFAULT", # accepts DEFAULT, D_10
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           prores_settings: {
    #             codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, HARD
    #           },
    #         },
    #         color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #         crop: {
    #           height: 1,
    #           width: 1,
    #           x: 1,
    #           y: 1,
    #         },
    #         drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #         fixed_afd: 1,
    #         height: 1,
    #         position: {
    #           height: 1,
    #           width: 1,
    #           x: 1,
    #           y: 1,
    #         },
    #         respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #         scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #         sharpness: 1,
    #         timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #         video_preprocessors: {
    #           color_corrector: {
    #             brightness: 1,
    #             color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #             contrast: 1,
    #             hdr_10_metadata: {
    #               blue_primary_x: 1,
    #               blue_primary_y: 1,
    #               green_primary_x: 1,
    #               green_primary_y: 1,
    #               max_content_light_level: 1,
    #               max_frame_average_light_level: 1,
    #               max_luminance: 1,
    #               min_luminance: 1,
    #               red_primary_x: 1,
    #               red_primary_y: 1,
    #               white_point_x: 1,
    #               white_point_y: 1,
    #             },
    #             hue: 1,
    #             saturation: 1,
    #           },
    #           deinterlacer: {
    #             algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #             control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #             mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #           },
    #           image_inserter: {
    #             insertable_images: [
    #               {
    #                 duration: 1,
    #                 fade_in: 1,
    #                 fade_out: 1,
    #                 height: 1,
    #                 image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #                 image_x: 1,
    #                 image_y: 1,
    #                 layer: 1,
    #                 opacity: 1,
    #                 start_time: "__stringPattern01D20305D205D",
    #                 width: 1,
    #               },
    #             ],
    #           },
    #           noise_reducer: {
    #             filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #             filter_settings: {
    #               strength: 1,
    #             },
    #             spatial_filter_settings: {
    #               post_filter_sharpen_strength: 1,
    #               speed: 1,
    #               strength: 1,
    #             },
    #           },
    #           timecode_burnin: {
    #             font_size: 1,
    #             position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #             prefix: "__stringPattern",
    #           },
    #         },
    #         width: 1,
    #       }
    #
    # @!attribute [rw] afd_signaling
    #   This setting only applies to H.264 and MPEG2 outputs. Use Insert AFD
    #   signaling (AfdSignaling) to specify whether the service includes AFD
    #   values in the output video data and what those values are. * Choose
    #   None to remove all AFD values from this output. * Choose Fixed to
    #   ignore input AFD values and instead encode the value specified in
    #   the job. * Choose Auto to calculate output AFD values based on the
    #   input AFD scaler data.
    #   @return [String]
    #
    # @!attribute [rw] anti_alias
    #   Enable Anti-alias (AntiAlias) to enhance sharp edges in video output
    #   when your input resolution is much larger than your output
    #   resolution. Default is enabled.
    #   @return [String]
    #
    # @!attribute [rw] codec_settings
    #   Video codec settings, (CodecSettings) under (VideoDescription),
    #   contains the group of settings related to video encoding. The
    #   settings in this group vary depending on the value you choose for
    #   Video codec (Codec). For each codec enum you choose, define the
    #   corresponding settings object. The following lists the codec enum,
    #   settings object pairs. * H\_264, H264Settings * H\_265,
    #   H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings *
    #   FRAME\_CAPTURE, FrameCaptureSettings
    #   @return [Types::VideoCodecSettings]
    #
    # @!attribute [rw] color_metadata
    #   Enable Insert color metadata (ColorMetadata) to include color
    #   metadata in this output. This setting is enabled by default.
    #   @return [String]
    #
    # @!attribute [rw] crop
    #   Applies only if your input aspect ratio is different from your
    #   output aspect ratio. Use Input cropping rectangle (Crop) to specify
    #   the video area the service will include in the output. This will
    #   crop the input source, causing video pixels to be removed on encode.
    #   Do not use this setting if you have enabled Stretch to output
    #   (stretchToOutput) in your output settings.
    #   @return [Types::Rectangle]
    #
    # @!attribute [rw] drop_frame_timecode
    #   Applies only to 29.97 fps outputs. When this feature is enabled, the
    #   service will use drop-frame timecode on outputs. If it is not
    #   possible to use drop-frame timecode, the system will fall back to
    #   non-drop-frame. This setting is enabled by default when Timecode
    #   insertion (TimecodeInsertion) is enabled.
    #   @return [String]
    #
    # @!attribute [rw] fixed_afd
    #   Applies only if you set AFD Signaling(AfdSignaling) to Fixed
    #   (FIXED). Use Fixed (FixedAfd) to specify a four-bit AFD value which
    #   the service will write on all frames of this video output.
    #   @return [Integer]
    #
    # @!attribute [rw] height
    #   Use the Height (Height) setting to define the video resolution
    #   height for this output. Specify in pixels. If you don't provide a
    #   value here, the service will use the input height.
    #   @return [Integer]
    #
    # @!attribute [rw] position
    #   Use Position (Position) to point to a rectangle object to define
    #   your position. This setting overrides any other aspect ratio.
    #   @return [Types::Rectangle]
    #
    # @!attribute [rw] respond_to_afd
    #   Use Respond to AFD (RespondToAfd) to specify how the service changes
    #   the video itself in response to AFD values in the input. * Choose
    #   Respond to clip the input video frame according to the AFD value,
    #   input display aspect ratio, and output display aspect ratio. *
    #   Choose Passthrough to include the input AFD values. Do not choose
    #   this when AfdSignaling is set to (NONE). A preferred implementation
    #   of this workflow is to set RespondToAfd to (NONE) and set
    #   AfdSignaling to (AUTO). * Choose None to remove all input AFD
    #   values from this output.
    #   @return [String]
    #
    # @!attribute [rw] scaling_behavior
    #   Applies only if your input aspect ratio is different from your
    #   output aspect ratio. Enable Stretch to output (StretchToOutput) to
    #   have the service stretch your video image to fit. Leave this setting
    #   disabled to allow the service to letterbox your video instead. This
    #   setting overrides any positioning value you specify elsewhere in the
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] sharpness
    #   Use Sharpness (Sharpness)setting to specify the strength of
    #   anti-aliasing. This setting changes the width of the anti-alias
    #   filter kernel used for scaling. Sharpness only applies if your
    #   output resolution is different from your input resolution, and if
    #   you set Anti-alias (AntiAlias) to ENABLED. 0 is the softest setting,
    #   100 the sharpest, and 50 recommended for most content.
    #   @return [Integer]
    #
    # @!attribute [rw] timecode_insertion
    #   Applies only to H.264, H.265, MPEG2, and ProRes outputs. Only enable
    #   Timecode insertion when the input framerate is identical to the
    #   output framerate. To include timecodes in this output, set Timecode
    #   insertion (VideoTimecodeInsertion) to PIC\_TIMING\_SEI. To leave
    #   them out, set it to DISABLED. Default is DISABLED. When the service
    #   inserts timecodes in an output, by default, it uses any embedded
    #   timecodes from the input. If none are present, the service will set
    #   the timecode for the first output frame to zero. To change this
    #   default behavior, adjust the settings under Timecode configuration
    #   (TimecodeConfig). In the console, these settings are located under
    #   Job > Job settings > Timecode configuration. Note - Timecode source
    #   under input settings (InputTimecodeSource) does not affect the
    #   timecodes that are inserted in the output. Source under Job settings
    #   > Timecode configuration (TimecodeSource) does.
    #   @return [String]
    #
    # @!attribute [rw] video_preprocessors
    #   Find additional transcoding features under Preprocessors
    #   (VideoPreprocessors). Enable the features at each output
    #   individually. These features are disabled by default.
    #   @return [Types::VideoPreprocessor]
    #
    # @!attribute [rw] width
    #   Use Width (Width) to define the video resolution width, in pixels,
    #   for this output. If you don't provide a value here, the service
    #   will use the input width.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/VideoDescription AWS API Documentation
    #
    class VideoDescription < Struct.new(
      :afd_signaling,
      :anti_alias,
      :codec_settings,
      :color_metadata,
      :crop,
      :drop_frame_timecode,
      :fixed_afd,
      :height,
      :position,
      :respond_to_afd,
      :scaling_behavior,
      :sharpness,
      :timecode_insertion,
      :video_preprocessors,
      :width)
      include Aws::Structure
    end

    # Contains details about the output's video stream
    #
    # @!attribute [rw] height_in_px
    #   Height in pixels for the output
    #   @return [Integer]
    #
    # @!attribute [rw] width_in_px
    #   Width in pixels for the output
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/VideoDetail AWS API Documentation
    #
    class VideoDetail < Struct.new(
      :height_in_px,
      :width_in_px)
      include Aws::Structure
    end

    # Find additional transcoding features under Preprocessors
    # (VideoPreprocessors). Enable the features at each output individually.
    # These features are disabled by default.
    #
    # @note When making an API call, you may pass VideoPreprocessor
    #   data as a hash:
    #
    #       {
    #         color_corrector: {
    #           brightness: 1,
    #           color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #           contrast: 1,
    #           hdr_10_metadata: {
    #             blue_primary_x: 1,
    #             blue_primary_y: 1,
    #             green_primary_x: 1,
    #             green_primary_y: 1,
    #             max_content_light_level: 1,
    #             max_frame_average_light_level: 1,
    #             max_luminance: 1,
    #             min_luminance: 1,
    #             red_primary_x: 1,
    #             red_primary_y: 1,
    #             white_point_x: 1,
    #             white_point_y: 1,
    #           },
    #           hue: 1,
    #           saturation: 1,
    #         },
    #         deinterlacer: {
    #           algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #           control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #           mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #         },
    #         image_inserter: {
    #           insertable_images: [
    #             {
    #               duration: 1,
    #               fade_in: 1,
    #               fade_out: 1,
    #               height: 1,
    #               image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGA",
    #               image_x: 1,
    #               image_y: 1,
    #               layer: 1,
    #               opacity: 1,
    #               start_time: "__stringPattern01D20305D205D",
    #               width: 1,
    #             },
    #           ],
    #         },
    #         noise_reducer: {
    #           filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #           filter_settings: {
    #             strength: 1,
    #           },
    #           spatial_filter_settings: {
    #             post_filter_sharpen_strength: 1,
    #             speed: 1,
    #             strength: 1,
    #           },
    #         },
    #         timecode_burnin: {
    #           font_size: 1,
    #           position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #           prefix: "__stringPattern",
    #         },
    #       }
    #
    # @!attribute [rw] color_corrector
    #   Enable the Color corrector (ColorCorrector) feature if necessary.
    #   Enable or disable this feature for each output individually. This
    #   setting is disabled by default.
    #   @return [Types::ColorCorrector]
    #
    # @!attribute [rw] deinterlacer
    #   Use Deinterlacer (Deinterlacer) to produce smoother motion and a
    #   clearer picture.
    #   @return [Types::Deinterlacer]
    #
    # @!attribute [rw] image_inserter
    #   Enable the Image inserter (ImageInserter) feature to include a
    #   graphic overlay on your video. Enable or disable this feature for
    #   each output individually. This setting is disabled by default.
    #   @return [Types::ImageInserter]
    #
    # @!attribute [rw] noise_reducer
    #   Enable the Noise reducer (NoiseReducer) feature to remove noise from
    #   your video output if necessary. Enable or disable this feature for
    #   each output individually. This setting is disabled by default.
    #   @return [Types::NoiseReducer]
    #
    # @!attribute [rw] timecode_burnin
    #   Timecode burn-in (TimecodeBurnIn)--Burns the output timecode and
    #   specified prefix into the output.
    #   @return [Types::TimecodeBurnin]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/VideoPreprocessor AWS API Documentation
    #
    class VideoPreprocessor < Struct.new(
      :color_corrector,
      :deinterlacer,
      :image_inserter,
      :noise_reducer,
      :timecode_burnin)
      include Aws::Structure
    end

    # Selector for video.
    #
    # @note When making an API call, you may pass VideoSelector
    #   data as a hash:
    #
    #       {
    #         color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709, HDR10, HLG_2020
    #         color_space_usage: "FORCE", # accepts FORCE, FALLBACK
    #         hdr_10_metadata: {
    #           blue_primary_x: 1,
    #           blue_primary_y: 1,
    #           green_primary_x: 1,
    #           green_primary_y: 1,
    #           max_content_light_level: 1,
    #           max_frame_average_light_level: 1,
    #           max_luminance: 1,
    #           min_luminance: 1,
    #           red_primary_x: 1,
    #           red_primary_y: 1,
    #           white_point_x: 1,
    #           white_point_y: 1,
    #         },
    #         pid: 1,
    #         program_number: 1,
    #       }
    #
    # @!attribute [rw] color_space
    #   If your input video has accurate color space metadata, or if you
    #   don't know about color space, leave this set to the default value
    #   FOLLOW. The service will automatically detect your input color
    #   space. If your input video has metadata indicating the wrong color
    #   space, or if your input video is missing color space metadata that
    #   should be there, specify the accurate color space here. If you
    #   choose HDR10, you can also correct inaccurate color space
    #   coefficients, using the HDR master display information controls. You
    #   must also set Color space usage (ColorSpaceUsage) to FORCE for the
    #   service to use these values.
    #   @return [String]
    #
    # @!attribute [rw] color_space_usage
    #   There are two sources for color metadata, the input file and the job
    #   configuration (in the Color space and HDR master display informaiton
    #   settings). The Color space usage setting controls which takes
    #   precedence. FORCE: The system will use color metadata supplied by
    #   user, if any. If the user does not supply color metadata, the system
    #   will use data from the source. FALLBACK: The system will use color
    #   metadata from the source. If source has no color metadata, the
    #   system will use user-supplied color metadata values if available.
    #   @return [String]
    #
    # @!attribute [rw] hdr_10_metadata
    #   Use the HDR master display (Hdr10Metadata) settings to correct HDR
    #   metadata or to provide missing metadata. These values vary depending
    #   on the input video and must be provided by a color grader. Range is
    #   0 to 50,000, each increment represents 0.00002 in CIE1931 color
    #   coordinate. Note that these settings are not color correction. Note
    #   that if you are creating HDR outputs inside of an HLS CMAF package,
    #   to comply with the Apple specification, you must use the HVC1 for
    #   H.265 setting.
    #   @return [Types::Hdr10Metadata]
    #
    # @!attribute [rw] pid
    #   Use PID (Pid) to select specific video data from an input file.
    #   Specify this value as an integer; the system automatically converts
    #   it to the hexidecimal value. For example, 257 selects PID 0x101. A
    #   PID, or packet identifier, is an identifier for a set of data in an
    #   MPEG-2 transport stream container.
    #   @return [Integer]
    #
    # @!attribute [rw] program_number
    #   Selects a specific program from within a multi-program transport
    #   stream. Note that Quad 4K is not currently supported.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/VideoSelector AWS API Documentation
    #
    class VideoSelector < Struct.new(
      :color_space,
      :color_space_usage,
      :hdr_10_metadata,
      :pid,
      :program_number)
      include Aws::Structure
    end

    # Required when you set (Codec) under
    # (AudioDescriptions)>(CodecSettings) to the value WAV.
    #
    # @note When making an API call, you may pass WavSettings
    #   data as a hash:
    #
    #       {
    #         bit_depth: 1,
    #         channels: 1,
    #         format: "RIFF", # accepts RIFF, RF64
    #         sample_rate: 1,
    #       }
    #
    # @!attribute [rw] bit_depth
    #   Specify Bit depth (BitDepth), in bits per sample, to choose the
    #   encoding quality for this audio track.
    #   @return [Integer]
    #
    # @!attribute [rw] channels
    #   Set Channels to specify the number of channels in this output audio
    #   track. With WAV, valid values 1, 2, 4, and 8. In the console, these
    #   values are Mono, Stereo, 4-Channel, and 8-Channel, respectively.
    #   @return [Integer]
    #
    # @!attribute [rw] format
    #   The service defaults to using RIFF for WAV outputs. If your output
    #   audio is likely to exceed 4 GB in file size, or if you otherwise
    #   need the extended support of the RF64 format, set your output WAV
    #   file format to RF64.
    #   @return [String]
    #
    # @!attribute [rw] sample_rate
    #   Sample rate in Hz.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/WavSettings AWS API Documentation
    #
    class WavSettings < Struct.new(
      :bit_depth,
      :channels,
      :format,
      :sample_rate)
      include Aws::Structure
    end

  end
end
