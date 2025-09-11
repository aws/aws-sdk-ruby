# frozen_string_literal: true

# This is generated code!

module Aws::MediaLive
  # This module contains the types returned by client operations.
  module Types

    # Aac Settings
    # @!attribute bitrate
    #   Average bitrate in bits/second. Valid values depend on rate control mode and profile.
    #   @return [Float]
    # @!attribute coding_mode
    #   Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. The adReceiverMix setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.
    #   @return [String]
    # @!attribute input_type
    #   Set to "broadcasterMixedAd" when input contains pre-mixed main audio + AD (narration) as a stereo pair.  The Audio Type field (audioType) will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. The values in audioTypeControl and audioType (in AudioDescription) are ignored when set to broadcasterMixedAd.
    #   
    #   Leave set to "normal" when input does not contain pre-mixed audio + AD.
    #   @return [String]
    # @!attribute profile
    #   AAC Profile.
    #   @return [String]
    # @!attribute rate_control_mode
    #   Rate Control Mode.
    #   @return [String]
    # @!attribute raw_format
    #   Sets LATM / LOAS AAC output for raw containers.
    #   @return [String]
    # @!attribute sample_rate
    #   Sample rate in Hz. Valid values depend on rate control mode and profile.
    #   @return [Float]
    # @!attribute spec
    #   Use MPEG-2 AAC audio instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
    #   @return [String]
    # @!attribute vbr_quality
    #   VBR Quality Level - Only used if rateControlMode is VBR.
    #   @return [String]
    class AacSettings < Struct.new(
      :bitrate,
      :coding_mode,
      :input_type,
      :profile,
      :rate_control_mode,
      :raw_format,
      :sample_rate,
      :spec,
      :vbr_quality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Ac3 Settings
    # @!attribute bitrate
    #   Average bitrate in bits/second. Valid bitrates depend on the coding mode.
    #   @return [Float]
    # @!attribute bitstream_mode
    #   Specifies the bitstream mode (bsmod) for the emitted AC-3 stream. See ATSC A/52-2012 for background on these values.
    #   @return [String]
    # @!attribute coding_mode
    #   Dolby Digital coding mode. Determines number of channels.
    #   @return [String]
    # @!attribute dialnorm
    #   Sets the dialnorm for the output. If excluded and input audio is Dolby Digital, dialnorm will be passed through.
    #   @return [Integer]
    # @!attribute drc_profile
    #   If set to filmStandard, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
    #   @return [String]
    # @!attribute lfe_filter
    #   When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid in codingMode32Lfe mode.
    #   @return [String]
    # @!attribute metadata_control
    #   When set to "followInput", encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
    #   @return [String]
    # @!attribute attenuation_control
    #   Applies a 3 dB attenuation to the surround channels. Applies only when the coding mode parameter is CODING_MODE_3_2_LFE.
    #   @return [String]
    class Ac3Settings < Struct.new(
      :bitrate,
      :bitstream_mode,
      :coding_mode,
      :dialnorm,
      :drc_profile,
      :lfe_filter,
      :metadata_control,
      :attenuation_control,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for AcceptInputDeviceTransferRequest
    # @!attribute input_device_id
    #   The unique ID of the input device to accept. For example, hd-123456789abcdef.
    #   @return [String]
    class AcceptInputDeviceTransferRequest < Struct.new(
      :input_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for AcceptInputDeviceTransferResponse
    class AcceptInputDeviceTransferResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for AccountConfiguration
    # @!attribute kms_key_id
    #   Specifies the KMS key to use for all features that use key encryption. Specify the ARN of a KMS key that you have created. Or leave blank to use the key that MediaLive creates and manages for you.
    #   @return [String]
    class AccountConfiguration < Struct.new(
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Additional output destinations for a CMAF Ingest output group
    # @!attribute destination
    #   The destination location
    #   @return [Types::OutputLocationRef]
    class AdditionalDestinations < Struct.new(
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Ancillary Source Settings
    # @!attribute source_ancillary_channel_number
    #   Specifies the number (1 to 4) of the captions channel you want to extract from the ancillary captions. If you plan to convert the ancillary captions to another format, complete this field. If you plan to choose Embedded as the captions destination in the output (to pass through all the channels in the ancillary captions), leave this field blank because MediaLive ignores the field.
    #   @return [Integer]
    class AncillarySourceSettings < Struct.new(
      :source_ancillary_channel_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Elemental anywhere settings
    # @!attribute channel_placement_group_id
    #   The ID of the channel placement group for the channel.
    #   @return [String]
    # @!attribute cluster_id
    #   The ID of the cluster for the channel.
    #   @return [String]
    class AnywhereSettings < Struct.new(
      :channel_placement_group_id,
      :cluster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Archive Cdn Settings
    # @!attribute archive_s3_settings
    #   Archive S3 Settings
    #   @return [Types::ArchiveS3Settings]
    class ArchiveCdnSettings < Struct.new(
      :archive_s3_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Archive Container Settings
    # @!attribute m2ts_settings
    #   M2ts Settings
    #   @return [Types::M2tsSettings]
    # @!attribute raw_settings
    #   Raw Settings
    #   @return [Types::RawSettings]
    class ArchiveContainerSettings < Struct.new(
      :m2ts_settings,
      :raw_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Archive Group Settings
    # @!attribute archive_cdn_settings
    #   Parameters that control interactions with the CDN.
    #   @return [Types::ArchiveCdnSettings]
    # @!attribute destination
    #   A directory and base filename where archive files should be written.
    #   @return [Types::OutputLocationRef]
    # @!attribute rollover_interval
    #   Number of seconds to write to archive file before closing and starting a new one.
    #   @return [Integer]
    class ArchiveGroupSettings < Struct.new(
      :archive_cdn_settings,
      :destination,
      :rollover_interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Archive Output Settings
    # @!attribute container_settings
    #   Settings specific to the container type of the file.
    #   @return [Types::ArchiveContainerSettings]
    # @!attribute extension
    #   Output file extension. If excluded, this will be auto-selected from the container type.
    #   @return [String]
    # @!attribute name_modifier
    #   String concatenated to the end of the destination filename.  Required for multiple outputs of the same type.
    #   @return [String]
    class ArchiveOutputSettings < Struct.new(
      :container_settings,
      :extension,
      :name_modifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Archive S3 Settings
    # @!attribute canned_acl
    #   Specify the canned ACL to apply to each S3 request. Defaults to none.
    #   @return [String]
    class ArchiveS3Settings < Struct.new(
      :canned_acl,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Arib Destination Settings
    class AribDestinationSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Arib Source Settings
    class AribSourceSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Channel Mapping
    # @!attribute input_channel_levels
    #   Indices and gain values for each input channel that should be remixed into this output channel.
    #   @return [Array<Types::InputChannelLevel>]
    # @!attribute output_channel
    #   The index of the output channel being produced.
    #   @return [Integer]
    class AudioChannelMapping < Struct.new(
      :input_channel_levels,
      :output_channel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Codec Settings
    # @!attribute aac_settings
    #   Aac Settings
    #   @return [Types::AacSettings]
    # @!attribute ac3_settings
    #   Ac3 Settings
    #   @return [Types::Ac3Settings]
    # @!attribute eac3_atmos_settings
    #   Eac3 Atmos Settings
    #   @return [Types::Eac3AtmosSettings]
    # @!attribute eac3_settings
    #   Eac3 Settings
    #   @return [Types::Eac3Settings]
    # @!attribute mp2_settings
    #   Mp2 Settings
    #   @return [Types::Mp2Settings]
    # @!attribute pass_through_settings
    #   Pass Through Settings
    #   @return [Types::PassThroughSettings]
    # @!attribute wav_settings
    #   Wav Settings
    #   @return [Types::WavSettings]
    class AudioCodecSettings < Struct.new(
      :aac_settings,
      :ac3_settings,
      :eac3_atmos_settings,
      :eac3_settings,
      :mp2_settings,
      :pass_through_settings,
      :wav_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Description
    # @!attribute audio_normalization_settings
    #   Advanced audio normalization settings.
    #   @return [Types::AudioNormalizationSettings]
    # @!attribute audio_selector_name
    #   The name of the AudioSelector used as the source for this AudioDescription.
    #   @return [String]
    # @!attribute audio_type
    #   Applies only if audioTypeControl is useConfigured. The values for audioType are defined in ISO-IEC 13818-1.
    #   @return [String]
    # @!attribute audio_type_control
    #   Determines how audio type is determined.
    #     followInput: If the input contains an ISO 639 audioType, then that value is passed through to the output. If the input contains no ISO 639 audioType, the value in Audio Type is included in the output.
    #     useConfigured: The value in Audio Type is included in the output.
    #   Note that this field and audioType are both ignored if inputType is broadcasterMixedAd.
    #   @return [String]
    # @!attribute audio_watermarking_settings
    #   Settings to configure one or more solutions that insert audio watermarks in the audio encode
    #   @return [Types::AudioWatermarkSettings]
    # @!attribute codec_settings
    #   Audio codec settings.
    #   @return [Types::AudioCodecSettings]
    # @!attribute language_code
    #   RFC 5646 language code representing the language of the audio output track. Only used if languageControlMode is useConfigured, or there is no ISO 639 language code specified in the input.
    #   @return [String]
    # @!attribute language_code_control
    #   Choosing followInput will cause the ISO 639 language code of the output to follow the ISO 639 language code of the input. The languageCode will be used when useConfigured is set, or when followInput is selected but there is no ISO 639 language code specified by the input.
    #   @return [String]
    # @!attribute name
    #   The name of this AudioDescription. Outputs will use this name to uniquely identify this AudioDescription.  Description names should be unique within this Live Event.
    #   @return [String]
    # @!attribute remix_settings
    #   Settings that control how input audio channels are remixed into the output audio channels.
    #   @return [Types::RemixSettings]
    # @!attribute stream_name
    #   Used for MS Smooth and Apple HLS outputs. Indicates the name displayed by the player (eg. English, or Director Commentary).
    #   @return [String]
    # @!attribute audio_dash_roles
    #   Identifies the DASH roles to assign to this audio output. Applies only when the audio output is configured for DVB DASH accessibility signaling.
    #   @return [Array<String>]
    # @!attribute dvb_dash_accessibility
    #   Identifies DVB DASH accessibility signaling in this audio output. Used in Microsoft Smooth Streaming outputs to signal accessibility information to packagers.
    #   @return [String]
    class AudioDescription < Struct.new(
      :audio_normalization_settings,
      :audio_selector_name,
      :audio_type,
      :audio_type_control,
      :audio_watermarking_settings,
      :codec_settings,
      :language_code,
      :language_code_control,
      :name,
      :remix_settings,
      :stream_name,
      :audio_dash_roles,
      :dvb_dash_accessibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Dolby EDecode
    # @!attribute program_selection
    #   Applies only to Dolby E. Enter the program ID (according to the metadata in the audio) of the Dolby E program to extract from the specified track. One program extracted per audio selector. To select multiple programs, create multiple selectors with the same Track and different Program numbers. “All channels” means to ignore the program IDs and include all the channels in this selector; useful if metadata is known to be incorrect.
    #   @return [String]
    class AudioDolbyEDecode < Struct.new(
      :program_selection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Hls Rendition Selection
    # @!attribute group_id
    #   Specifies the GROUP-ID in the #EXT-X-MEDIA tag of the target HLS audio rendition.
    #   @return [String]
    # @!attribute name
    #   Specifies the NAME in the #EXT-X-MEDIA tag of the target HLS audio rendition.
    #   @return [String]
    class AudioHlsRenditionSelection < Struct.new(
      :group_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Language Selection
    # @!attribute language_code
    #   Selects a specific three-letter language code from within an audio source.
    #   @return [String]
    # @!attribute language_selection_policy
    #   When set to "strict", the transport stream demux strictly identifies audio streams by their language descriptor. If a PMT update occurs such that an audio stream matching the initially selected language is no longer present then mute will be encoded until the language returns. If "loose", then on a PMT update the demux will choose another audio stream in the program with the same stream type if it can't find one with the same language.
    #   @return [String]
    class AudioLanguageSelection < Struct.new(
      :language_code,
      :language_selection_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Normalization Settings
    # @!attribute algorithm
    #   Audio normalization algorithm to use. itu17701 conforms to the CALM Act specification, itu17702 conforms to the EBU R-128 specification.
    #   @return [String]
    # @!attribute algorithm_control
    #   When set to correctAudio the output audio is corrected using the chosen algorithm. If set to measureOnly, the audio will be measured but not adjusted.
    #   @return [String]
    # @!attribute target_lkfs
    #   Target LKFS(loudness) to adjust volume to. If no value is entered, a default value will be used according to the chosen algorithm.  The CALM Act (1770-1) recommends a target of -24 LKFS. The EBU R-128 specification (1770-2) recommends a target of -23 LKFS.
    #   @return [Float]
    class AudioNormalizationSettings < Struct.new(
      :algorithm,
      :algorithm_control,
      :target_lkfs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Only Hls Settings
    # @!attribute audio_group_id
    #   Specifies the group to which the audio Rendition belongs.
    #   @return [String]
    # @!attribute audio_only_image
    #   Optional. Specifies the .jpg or .png image to use as the cover art for an audio-only output. We recommend a low bit-size file because the image increases the output audio bandwidth.
    #   
    #   The image is attached to the audio as an ID3 tag, frame type APIC, picture type 0x10, as per the "ID3 tag version 2.4.0 - Native Frames" standard.
    #   @return [Types::InputLocation]
    # @!attribute audio_track_type
    #   Four types of audio-only tracks are supported:
    #   
    #   Audio-Only Variant Stream
    #   The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest.
    #   
    #   Alternate Audio, Auto Select, Default
    #   Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES
    #   
    #   Alternate Audio, Auto Select, Not Default
    #   Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES
    #   
    #   Alternate Audio, not Auto Select
    #   Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
    #   @return [String]
    # @!attribute segment_type
    #   Specifies the segment type.
    #   @return [String]
    class AudioOnlyHlsSettings < Struct.new(
      :audio_group_id,
      :audio_only_image,
      :audio_track_type,
      :segment_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Pid Selection
    # @!attribute pid
    #   Selects a specific PID from within a source.
    #   @return [Integer]
    class AudioPidSelection < Struct.new(
      :pid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Selector
    # @!attribute name
    #   The name of this AudioSelector. AudioDescriptions will use this name to uniquely identify this Selector.  Selector names should be unique per input.
    #   @return [String]
    # @!attribute selector_settings
    #   The audio selector settings.
    #   @return [Types::AudioSelectorSettings]
    class AudioSelector < Struct.new(
      :name,
      :selector_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Selector Settings
    # @!attribute audio_hls_rendition_selection
    #   Audio Hls Rendition Selection
    #   @return [Types::AudioHlsRenditionSelection]
    # @!attribute audio_language_selection
    #   Audio Language Selection
    #   @return [Types::AudioLanguageSelection]
    # @!attribute audio_pid_selection
    #   Audio Pid Selection
    #   @return [Types::AudioPidSelection]
    # @!attribute audio_track_selection
    #   Audio Track Selection
    #   @return [Types::AudioTrackSelection]
    class AudioSelectorSettings < Struct.new(
      :audio_hls_rendition_selection,
      :audio_language_selection,
      :audio_pid_selection,
      :audio_track_selection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for AudioSilenceFailoverSettings
    # @!attribute audio_selector_name
    #   The name of the audio selector in the input that MediaLive should monitor to detect silence. Select your most important rendition. If you didn't create an audio selector in this input, leave blank.
    #   @return [String]
    # @!attribute audio_silence_threshold_msec
    #   The amount of time (in milliseconds) that the active input must be silent before automatic input failover occurs. Silence is defined as audio loss or audio quieter than -50 dBFS.
    #   @return [Integer]
    class AudioSilenceFailoverSettings < Struct.new(
      :audio_selector_name,
      :audio_silence_threshold_msec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Track
    # @!attribute track
    #   1-based integer value that maps to a specific audio track
    #   @return [Integer]
    class AudioTrack < Struct.new(
      :track,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Track Selection
    # @!attribute tracks
    #   Selects one or more unique audio tracks from within a source.
    #   @return [Array<Types::AudioTrack>]
    # @!attribute dolby_e_decode
    #   Configure decoding options for Dolby E streams - these should be Dolby E frames carried in PCM streams tagged with SMPTE-337
    #   @return [Types::AudioDolbyEDecode]
    class AudioTrackSelection < Struct.new(
      :tracks,
      :dolby_e_decode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Audio Watermark Settings
    # @!attribute nielsen_watermarks_settings
    #   Settings to configure Nielsen Watermarks in the audio encode
    #   @return [Types::NielsenWatermarksSettings]
    class AudioWatermarkSettings < Struct.new(
      :nielsen_watermarks_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The settings for Automatic Input Failover.
    # @!attribute error_clear_time_msec
    #   This clear time defines the requirement a recovered input must meet to be considered healthy. The input must have no failover conditions for this length of time. Enter a time in milliseconds. This value is particularly important if the input_preference for the failover pair is set to PRIMARY_INPUT_PREFERRED, because after this time, MediaLive will switch back to the primary input.
    #   @return [Integer]
    # @!attribute failover_conditions
    #   A list of failover conditions. If any of these conditions occur, MediaLive will perform a failover to the other input.
    #   @return [Array<Types::FailoverCondition>]
    # @!attribute input_preference
    #   Input preference when deciding which input to make active when a previously failed input has recovered.
    #   @return [String]
    # @!attribute secondary_input_id
    #   The input ID of the secondary input in the automatic input failover pair.
    #   @return [String]
    class AutomaticInputFailoverSettings < Struct.new(
      :error_clear_time_msec,
      :failover_conditions,
      :input_preference,
      :secondary_input_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Av1 Color Space Settings
    # @!attribute color_space_passthrough_settings
    #   Passthrough applies no color space conversion to the output
    #   @return [Types::ColorSpacePassthroughSettings]
    # @!attribute hdr10_settings
    #   Hdr10 Settings
    #   @return [Types::Hdr10Settings]
    # @!attribute rec601_settings
    #   Rec601 Settings
    #   @return [Types::Rec601Settings]
    # @!attribute rec709_settings
    #   Rec709 Settings
    #   @return [Types::Rec709Settings]
    class Av1ColorSpaceSettings < Struct.new(
      :color_space_passthrough_settings,
      :hdr10_settings,
      :rec601_settings,
      :rec709_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Av1 Settings
    # @!attribute afd_signaling
    #   Configures whether MediaLive will write AFD values into the video.
    #   AUTO: MediaLive will try to preserve the input AFD value (in cases where multiple AFD values are valid).
    #   FIXED: the AFD value will be the value configured in the fixedAfd parameter.
    #   NONE: MediaLive won't write AFD into the video
    #   @return [String]
    # @!attribute buf_size
    #   The size of the buffer (HRD buffer model) in bits.
    #   @return [Integer]
    # @!attribute color_space_settings
    #   Color Space settings
    #   @return [Types::Av1ColorSpaceSettings]
    # @!attribute fixed_afd
    #   Complete this property only if you set the afdSignaling property to FIXED. Choose the AFD value (4 bits) to write on all frames of the video encode.
    #   @return [String]
    # @!attribute framerate_denominator
    #   The denominator for the framerate. Framerate is a fraction, for example, 24000 / 1001.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   The numerator for the framerate. Framerate is a fraction, for example, 24000 / 1001.
    #   @return [Integer]
    # @!attribute gop_size
    #   The GOP size (keyframe interval).
    #   If GopSizeUnits is frames, GopSize must be a whole number and must be greater than or equal to 1.
    #   If GopSizeUnits is seconds, GopSize must be greater than 0, but it can be a decimal.
    #   @return [Float]
    # @!attribute gop_size_units
    #   Choose the units for the GOP size: FRAMES or SECONDS. For SECONDS, MediaLive converts the size into a frame count at run time.
    #   @return [String]
    # @!attribute level
    #   Sets the level. This parameter is one of the properties of the encoding scheme for AV1.
    #   @return [String]
    # @!attribute look_ahead_rate_control
    #   Sets the amount of lookahead. A value of LOW can decrease latency and memory usage. A value of HIGH can produce better quality for certain content.
    #   @return [String]
    # @!attribute max_bitrate
    #   The maximum bitrate to assign.
    #   For recommendations, see the description for qvbrQualityLevel.
    #   @return [Integer]
    # @!attribute min_i_interval
    #   Applies only if you enable SceneChangeDetect. Sets the interval between frames. This property ensures a minimum separation between repeated (cadence) I-frames and any I-frames inserted by scene change detection (SCD frames).
    #   Enter a number for the interval, measured in number of frames.
    #   If an SCD frame and a cadence frame are closer than the specified number of frames, MediaLive shrinks or stretches the GOP to include the SCD frame. Then normal cadence resumes in the next GOP. For GOP stretch to succeed, you must enable LookAheadRateControl.
    #   Note that the maximum GOP stretch = (GOP size) + (Minimum I-interval) - 1
    #   @return [Integer]
    # @!attribute par_denominator
    #   The denominator for the output pixel aspect ratio (PAR).
    #   @return [Integer]
    # @!attribute par_numerator
    #   The numerator for the output pixel aspect ratio (PAR).
    #   @return [Integer]
    # @!attribute qvbr_quality_level
    #   Controls the target quality for the video encode. With QVBR rate control mode, the final quality is the target quality, constrained by the maxBitrate.
    #   Set values for the qvbrQualityLevel property and maxBitrate property that suit your most important viewing devices.
    #   To let MediaLive set the quality level (AUTO mode), leave the qvbrQualityLevel field empty. In this case, MediaLive uses the maximum bitrate, and the quality follows from that: more complex content might have a lower quality.
    #   Or set a target quality level and a maximum bitrate. With more complex content, MediaLive will try to achieve the target quality, but it won't exceed the maximum bitrate. With less complex content, This option will use only the bitrate needed to reach the target quality.
    #   Recommended values are:
    #   Primary screen: qvbrQualityLevel: Leave empty. maxBitrate: 4,000,000
    #   PC or tablet: qvbrQualityLevel: Leave empty. maxBitrate: 1,500,000 to 3,000,000
    #   Smartphone: qvbrQualityLevel: Leave empty. maxBitrate: 1,000,000 to 1,500,000
    #   @return [Integer]
    # @!attribute scene_change_detect
    #   Controls whether MediaLive inserts I-frames when it detects a scene change. ENABLED or DISABLED.
    #   @return [String]
    # @!attribute timecode_burnin_settings
    #   Configures the timecode burn-in feature. If you enable this feature, the timecode will become part of the video.
    #   @return [Types::TimecodeBurninSettings]
    # @!attribute bitrate
    #   Average bitrate in bits/second. Required when the rate control mode is CBR. Not used for QVBR.
    #   @return [Integer]
    # @!attribute rate_control_mode
    #   Rate control mode.
    #   
    #   QVBR: Quality will match the specified quality level except when it is constrained by the
    #   maximum bitrate.  Recommended if you or your viewers pay for bandwidth.
    #   
    #   CBR: Quality varies, depending on the video complexity. Recommended only if you distribute
    #   your assets to devices that cannot handle variable bitrates.
    #   @return [String]
    class Av1Settings < Struct.new(
      :afd_signaling,
      :buf_size,
      :color_space_settings,
      :fixed_afd,
      :framerate_denominator,
      :framerate_numerator,
      :gop_size,
      :gop_size_units,
      :level,
      :look_ahead_rate_control,
      :max_bitrate,
      :min_i_interval,
      :par_denominator,
      :par_numerator,
      :qvbr_quality_level,
      :scene_change_detect,
      :timecode_burnin_settings,
      :bitrate,
      :rate_control_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Avail Blanking
    # @!attribute avail_blanking_image
    #   Blanking image to be used. Leave empty for solid black. Only bmp and png images are supported.
    #   @return [Types::InputLocation]
    # @!attribute state
    #   When set to enabled, causes video, audio and captions to be blanked when insertion metadata is added.
    #   @return [String]
    class AvailBlanking < Struct.new(
      :avail_blanking_image,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Avail Configuration
    # @!attribute avail_settings
    #   Controls how SCTE-35 messages create cues. Splice Insert mode treats all segmentation signals traditionally. With Time Signal APOS mode only Time Signal Placement Opportunity and Break messages create segment breaks. With ESAM mode, signals are forwarded to an ESAM server for possible update.
    #   @return [Types::AvailSettings]
    # @!attribute scte35_segmentation_scope
    #   Configures whether SCTE 35 passthrough triggers segment breaks in all output groups that use segmented outputs. Insertion of a SCTE 35 message typically results in a segment break, in addition to the regular cadence of breaks. The segment breaks appear in video outputs, audio outputs, and captions outputs (if any).
    #   
    #   ALL_OUTPUT_GROUPS: Default. Insert the segment break in in all output groups that have segmented outputs. This is the legacy behavior.
    #   SCTE35_ENABLED_OUTPUT_GROUPS: Insert the segment break only in output groups that have SCTE 35 passthrough enabled. This is the recommended value, because it reduces unnecessary segment breaks.
    #   @return [String]
    class AvailConfiguration < Struct.new(
      :avail_settings,
      :scte35_segmentation_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Avail Settings
    # @!attribute esam
    #   Esam
    #   @return [Types::Esam]
    # @!attribute scte35_splice_insert
    #   Typical configuration that applies breaks on splice inserts in addition to time signal placement opportunities, breaks, and advertisements.
    #   @return [Types::Scte35SpliceInsert]
    # @!attribute scte35_time_signal_apos
    #   Atypical configuration that applies segment breaks only on SCTE-35 time signal placement opportunities and breaks.
    #   @return [Types::Scte35TimeSignalApos]
    class AvailSettings < Struct.new(
      :esam,
      :scte35_splice_insert,
      :scte35_time_signal_apos,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for BadGatewayException
    # @!attribute message
    #   Placeholder documentation for __string
    #   @return [String]
    class BadGatewayException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for BadRequestException
    # @!attribute message
    #   Placeholder documentation for __string
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Bandwidth Reduction Filter Settings
    # @!attribute post_filter_sharpening
    #   Configures the sharpening control, which is available when the bandwidth reduction filter is enabled. This
    #   control sharpens edges and contours, which produces a specific artistic effect that you might want.
    #   
    #   We recommend that you test each of the values (including DISABLED) to observe the sharpening effect on the
    #   content.
    #   @return [String]
    # @!attribute strength
    #   Enables the bandwidth reduction filter. The filter strengths range from 1 to 4. We recommend that you always
    #   enable this filter and use AUTO, to let MediaLive apply the optimum filtering for the context.
    #   @return [String]
    class BandwidthReductionFilterSettings < Struct.new(
      :post_filter_sharpening,
      :strength,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to delete resources
    # @!attribute channel_ids
    #   List of channel IDs
    #   @return [Array<String>]
    # @!attribute input_ids
    #   List of input IDs
    #   @return [Array<String>]
    # @!attribute input_security_group_ids
    #   List of input security group IDs
    #   @return [Array<String>]
    # @!attribute multiplex_ids
    #   List of multiplex IDs
    #   @return [Array<String>]
    class BatchDeleteRequest < Struct.new(
      :channel_ids,
      :input_ids,
      :input_security_group_ids,
      :multiplex_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for BatchDeleteResponse
    # @!attribute failed
    #   List of failed operations
    #   @return [Array<Types::BatchFailedResultModel>]
    # @!attribute successful
    #   List of successful operations
    #   @return [Array<Types::BatchSuccessfulResultModel>]
    class BatchDeleteResponse < Struct.new(
      :failed,
      :successful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Details from a failed operation
    # @!attribute arn
    #   ARN of the resource
    #   @return [String]
    # @!attribute code
    #   Error code for the failed operation
    #   @return [String]
    # @!attribute id
    #   ID of the resource
    #   @return [String]
    # @!attribute message
    #   Error message for the failed operation
    #   @return [String]
    class BatchFailedResultModel < Struct.new(
      :arn,
      :code,
      :id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A list of schedule actions to create (in a request) or that have been created (in a response).
    # @!attribute schedule_actions
    #   A list of schedule actions to create.
    #   @return [Array<Types::ScheduleAction>]
    class BatchScheduleActionCreateRequest < Struct.new(
      :schedule_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List of actions that have been created in the schedule.
    # @!attribute schedule_actions
    #   List of actions that have been created in the schedule.
    #   @return [Array<Types::ScheduleAction>]
    class BatchScheduleActionCreateResult < Struct.new(
      :schedule_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A list of schedule actions to delete.
    # @!attribute action_names
    #   A list of schedule actions to delete.
    #   @return [Array<String>]
    class BatchScheduleActionDeleteRequest < Struct.new(
      :action_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List of actions that have been deleted from the schedule.
    # @!attribute schedule_actions
    #   List of actions that have been deleted from the schedule.
    #   @return [Array<Types::ScheduleAction>]
    class BatchScheduleActionDeleteResult < Struct.new(
      :schedule_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to start resources
    # @!attribute channel_ids
    #   List of channel IDs
    #   @return [Array<String>]
    # @!attribute multiplex_ids
    #   List of multiplex IDs
    #   @return [Array<String>]
    class BatchStartRequest < Struct.new(
      :channel_ids,
      :multiplex_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for BatchStartResponse
    # @!attribute failed
    #   List of failed operations
    #   @return [Array<Types::BatchFailedResultModel>]
    # @!attribute successful
    #   List of successful operations
    #   @return [Array<Types::BatchSuccessfulResultModel>]
    class BatchStartResponse < Struct.new(
      :failed,
      :successful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to stop resources
    # @!attribute channel_ids
    #   List of channel IDs
    #   @return [Array<String>]
    # @!attribute multiplex_ids
    #   List of multiplex IDs
    #   @return [Array<String>]
    class BatchStopRequest < Struct.new(
      :channel_ids,
      :multiplex_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for BatchStopResponse
    # @!attribute failed
    #   List of failed operations
    #   @return [Array<Types::BatchFailedResultModel>]
    # @!attribute successful
    #   List of successful operations
    #   @return [Array<Types::BatchSuccessfulResultModel>]
    class BatchStopResponse < Struct.new(
      :failed,
      :successful,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Details from a successful operation
    # @!attribute arn
    #   ARN of the resource
    #   @return [String]
    # @!attribute id
    #   ID of the resource
    #   @return [String]
    # @!attribute state
    #   Current state of the resource
    #   @return [String]
    class BatchSuccessfulResultModel < Struct.new(
      :arn,
      :id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List of actions to create and list of actions to delete.
    # @!attribute channel_id
    #   Id of the channel whose schedule is being updated.
    #   @return [String]
    # @!attribute creates
    #   Schedule actions to create in the schedule.
    #   @return [Types::BatchScheduleActionCreateRequest]
    # @!attribute deletes
    #   Schedule actions to delete from the schedule.
    #   @return [Types::BatchScheduleActionDeleteRequest]
    class BatchUpdateScheduleRequest < Struct.new(
      :channel_id,
      :creates,
      :deletes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for BatchUpdateScheduleResponse
    # @!attribute creates
    #   Schedule actions created in the schedule.
    #   @return [Types::BatchScheduleActionCreateResult]
    # @!attribute deletes
    #   Schedule actions deleted from the schedule.
    #   @return [Types::BatchScheduleActionDeleteResult]
    class BatchUpdateScheduleResponse < Struct.new(
      :creates,
      :deletes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Blackout Slate
    # @!attribute blackout_slate_image
    #   Blackout slate image to be used. Leave empty for solid black. Only bmp and png images are supported.
    #   @return [Types::InputLocation]
    # @!attribute network_end_blackout
    #   Setting to enabled causes the encoder to blackout the video, audio, and captions, and raise the "Network Blackout Image" slate when an SCTE104/35 Network End Segmentation Descriptor is encountered. The blackout will be lifted when the Network Start Segmentation Descriptor is encountered. The Network End and Network Start descriptors must contain a network ID that matches the value entered in "Network ID".
    #   @return [String]
    # @!attribute network_end_blackout_image
    #   Path to local file to use as Network End Blackout image. Image will be scaled to fill the entire output raster.
    #   @return [Types::InputLocation]
    # @!attribute network_id
    #   Provides Network ID that matches EIDR ID format (e.g., "10.XXXX/XXXX-XXXX-XXXX-XXXX-XXXX-C").
    #   @return [String]
    # @!attribute state
    #   When set to enabled, causes video, audio and captions to be blanked when indicated by program metadata.
    #   @return [String]
    class BlackoutSlate < Struct.new(
      :blackout_slate_image,
      :network_end_blackout,
      :network_end_blackout_image,
      :network_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Burn In Destination Settings
    # @!attribute alignment
    #   If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute background_color
    #   Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute background_opacity
    #   Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute font
    #   External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions,  embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
    #   @return [Types::InputLocation]
    # @!attribute font_color
    #   Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute font_opacity
    #   Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute font_resolution
    #   Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute font_size
    #   When set to 'auto' fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute outline_color
    #   Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute outline_size
    #   Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute shadow_color
    #   Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute shadow_opacity
    #   Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute shadow_x_offset
    #   Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute shadow_y_offset
    #   Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute teletext_grid_control
    #   Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
    #   @return [String]
    # @!attribute x_position
    #   Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute y_position
    #   Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute subtitle_rows
    #   Applies only when the input captions are Teletext and the output captions are DVB-Sub or Burn-In. Choose the number of lines for the captions bitmap. The captions bitmap is 700 wide × 576 high and will be laid over the video. For example, a value of 16 divides the bitmap into 16 lines, with each line 36 pixels high (16 × 36 = 576). The default is 24 (24 pixels high). Enter the same number in every encode in every output that converts the same Teletext source to DVB-Sub or Burn-in.
    #   @return [String]
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
      :y_position,
      :subtitle_rows,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CancelInputDeviceTransferRequest
    # @!attribute input_device_id
    #   The unique ID of the input device to cancel. For example, hd-123456789abcdef.
    #   @return [String]
    class CancelInputDeviceTransferRequest < Struct.new(
      :input_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CancelInputDeviceTransferResponse
    class CancelInputDeviceTransferResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Caption Description
    # @!attribute accessibility
    #   Indicates whether the caption track implements accessibility features such as written descriptions of spoken dialog, music, and sounds. This signaling is added to HLS output group and MediaPackage output group.
    #   @return [String]
    # @!attribute caption_selector_name
    #   Specifies which input caption selector to use as a caption source when generating output captions. This field should match a captionSelector name.
    #   @return [String]
    # @!attribute destination_settings
    #   Additional settings for captions destination that depend on the destination type.
    #   @return [Types::CaptionDestinationSettings]
    # @!attribute language_code
    #   ISO 639-2 three-digit code: http://www.loc.gov/standards/iso639-2/
    #   @return [String]
    # @!attribute language_description
    #   Human readable information to indicate captions available for players (eg. English, or Spanish).
    #   @return [String]
    # @!attribute name
    #   Name of the caption description.  Used to associate a caption description with an output.  Names must be unique within an event.
    #   @return [String]
    # @!attribute caption_dash_roles
    #   Identifies the DASH roles to assign to this captions output. Applies only when the captions output is configured for DVB DASH accessibility signaling.
    #   @return [Array<String>]
    # @!attribute dvb_dash_accessibility
    #   Identifies DVB DASH accessibility signaling in this captions output. Used in Microsoft Smooth Streaming outputs to signal accessibility information to packagers.
    #   @return [String]
    class CaptionDescription < Struct.new(
      :accessibility,
      :caption_selector_name,
      :destination_settings,
      :language_code,
      :language_description,
      :name,
      :caption_dash_roles,
      :dvb_dash_accessibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Caption Destination Settings
    # @!attribute arib_destination_settings
    #   Arib Destination Settings
    #   @return [Types::AribDestinationSettings]
    # @!attribute burn_in_destination_settings
    #   Burn In Destination Settings
    #   @return [Types::BurnInDestinationSettings]
    # @!attribute dvb_sub_destination_settings
    #   Dvb Sub Destination Settings
    #   @return [Types::DvbSubDestinationSettings]
    # @!attribute ebu_tt_d_destination_settings
    #   Ebu Tt DDestination Settings
    #   @return [Types::EbuTtDDestinationSettings]
    # @!attribute embedded_destination_settings
    #   Embedded Destination Settings
    #   @return [Types::EmbeddedDestinationSettings]
    # @!attribute embedded_plus_scte20_destination_settings
    #   Embedded Plus Scte20 Destination Settings
    #   @return [Types::EmbeddedPlusScte20DestinationSettings]
    # @!attribute rtmp_caption_info_destination_settings
    #   Rtmp Caption Info Destination Settings
    #   @return [Types::RtmpCaptionInfoDestinationSettings]
    # @!attribute scte20_plus_embedded_destination_settings
    #   Scte20 Plus Embedded Destination Settings
    #   @return [Types::Scte20PlusEmbeddedDestinationSettings]
    # @!attribute scte27_destination_settings
    #   Scte27 Destination Settings
    #   @return [Types::Scte27DestinationSettings]
    # @!attribute smpte_tt_destination_settings
    #   Smpte Tt Destination Settings
    #   @return [Types::SmpteTtDestinationSettings]
    # @!attribute teletext_destination_settings
    #   Teletext Destination Settings
    #   @return [Types::TeletextDestinationSettings]
    # @!attribute ttml_destination_settings
    #   Ttml Destination Settings
    #   @return [Types::TtmlDestinationSettings]
    # @!attribute webvtt_destination_settings
    #   Webvtt Destination Settings
    #   @return [Types::WebvttDestinationSettings]
    class CaptionDestinationSettings < Struct.new(
      :arib_destination_settings,
      :burn_in_destination_settings,
      :dvb_sub_destination_settings,
      :ebu_tt_d_destination_settings,
      :embedded_destination_settings,
      :embedded_plus_scte20_destination_settings,
      :rtmp_caption_info_destination_settings,
      :scte20_plus_embedded_destination_settings,
      :scte27_destination_settings,
      :smpte_tt_destination_settings,
      :teletext_destination_settings,
      :ttml_destination_settings,
      :webvtt_destination_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Maps a caption channel to an ISO 693-2 language code (http://www.loc.gov/standards/iso639-2), with an optional description.
    # @!attribute caption_channel
    #   The closed caption channel being described by this CaptionLanguageMapping.  Each channel mapping must have a unique channel number (maximum of 4)
    #   @return [Integer]
    # @!attribute language_code
    #   Three character ISO 639-2 language code (see http://www.loc.gov/standards/iso639-2)
    #   @return [String]
    # @!attribute language_description
    #   Textual description of language
    #   @return [String]
    class CaptionLanguageMapping < Struct.new(
      :caption_channel,
      :language_code,
      :language_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Caption Rectangle
    # @!attribute height
    #   See the description in leftOffset.
    #   For height, specify the entire height of the rectangle as a percentage of the underlying frame height. For example, \"80\" means the rectangle height is 80% of the underlying frame height. The topOffset and rectangleHeight must add up to 100% or less.
    #   This field corresponds to tts:extent - Y in the TTML standard.
    #   @return [Float]
    # @!attribute left_offset
    #   Applies only if you plan to convert these source captions to EBU-TT-D or TTML in an output. (Make sure to leave the default if you don't have either of these formats in the output.) You can define a display rectangle for the captions that is smaller than the underlying video frame. You define the rectangle by specifying the position of the left edge, top edge, bottom edge, and right edge of the rectangle, all within the underlying video frame. The units for the measurements are percentages.
    #   If you specify a value for one of these fields, you must specify a value for all of them.
    #   For leftOffset, specify the position of the left edge of the rectangle, as a percentage of the underlying frame width, and relative to the left edge of the frame. For example, \"10\" means the measurement is 10% of the underlying frame width. The rectangle left edge starts at that position from the left edge of the frame.
    #   This field corresponds to tts:origin - X in the TTML standard.
    #   @return [Float]
    # @!attribute top_offset
    #   See the description in leftOffset.
    #   For topOffset, specify the position of the top edge of the rectangle, as a percentage of the underlying frame height, and relative to the top edge of the frame. For example, \"10\" means the measurement is 10% of the underlying frame height. The rectangle top edge starts at that position from the top edge of the frame.
    #   This field corresponds to tts:origin - Y in the TTML standard.
    #   @return [Float]
    # @!attribute width
    #   See the description in leftOffset.
    #   For width, specify the entire width of the rectangle as a percentage of the underlying frame width. For example, \"80\" means the rectangle width is 80% of the underlying frame width. The leftOffset and rectangleWidth must add up to 100% or less.
    #   This field corresponds to tts:extent - X in the TTML standard.
    #   @return [Float]
    class CaptionRectangle < Struct.new(
      :height,
      :left_offset,
      :top_offset,
      :width,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Caption Selector
    # @!attribute language_code
    #   When specified this field indicates the three letter language code of the caption track to extract from the source.
    #   @return [String]
    # @!attribute name
    #   Name identifier for a caption selector.  This name is used to associate this caption selector with one or more caption descriptions.  Names must be unique within an event.
    #   @return [String]
    # @!attribute selector_settings
    #   Caption selector settings.
    #   @return [Types::CaptionSelectorSettings]
    class CaptionSelector < Struct.new(
      :language_code,
      :name,
      :selector_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Caption Selector Settings
    # @!attribute ancillary_source_settings
    #   Ancillary Source Settings
    #   @return [Types::AncillarySourceSettings]
    # @!attribute arib_source_settings
    #   Arib Source Settings
    #   @return [Types::AribSourceSettings]
    # @!attribute dvb_sub_source_settings
    #   Dvb Sub Source Settings
    #   @return [Types::DvbSubSourceSettings]
    # @!attribute embedded_source_settings
    #   Embedded Source Settings
    #   @return [Types::EmbeddedSourceSettings]
    # @!attribute scte20_source_settings
    #   Scte20 Source Settings
    #   @return [Types::Scte20SourceSettings]
    # @!attribute scte27_source_settings
    #   Scte27 Source Settings
    #   @return [Types::Scte27SourceSettings]
    # @!attribute teletext_source_settings
    #   Teletext Source Settings
    #   @return [Types::TeletextSourceSettings]
    class CaptionSelectorSettings < Struct.new(
      :ancillary_source_settings,
      :arib_source_settings,
      :dvb_sub_source_settings,
      :embedded_source_settings,
      :scte20_source_settings,
      :scte27_source_settings,
      :teletext_source_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CdiInputSpecification
    # @!attribute resolution
    #   Maximum CDI input resolution
    #   @return [String]
    class CdiInputSpecification < Struct.new(
      :resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for Channel
    # @!attribute arn
    #   The unique arn of the channel.
    #   @return [String]
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #   @return [String]
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #   @return [Array<Types::OutputDestination>]
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #   @return [Array<Types::ChannelEgressEndpoint>]
    # @!attribute encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    # @!attribute id
    #   The unique id of the channel.
    #   @return [String]
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #   @return [Array<Types::InputAttachment>]
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #   @return [String]
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #   @return [Types::MaintenanceStatus]
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #   @return [String]
    # @!attribute pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #   @return [Array<Types::PipelineDetail>]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #   @return [String]
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute vpc
    #   Settings for VPC output
    #   @return [Types::VpcOutputSettingsDescription]
    # @!attribute anywhere_settings
    #   Anywhere settings for this channel.
    #   @return [Types::DescribeAnywhereSettings]
    # @!attribute channel_engine_version
    #   Requested engine version for this channel.
    #   @return [Types::ChannelEngineVersionResponse]
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
      :maintenance,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      :anywhere_settings,
      :channel_engine_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ChannelEgressEndpoint
    # @!attribute source_ip
    #   Public IP of where a channel's output comes from
    #   @return [String]
    class ChannelEgressEndpoint < Struct.new(
      :source_ip,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ChannelEngineVersionRequest
    # @!attribute version
    #   The build identifier of the engine version to use for this channel. Specify 'DEFAULT' to reset to the default version.
    #   @return [String]
    class ChannelEngineVersionRequest < Struct.new(
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ChannelEngineVersionResponse
    # @!attribute expiration_date
    #   The UTC time when the version expires.
    #   @return [Time]
    # @!attribute version
    #   The build identifier for this version of the channel version.
    #   @return [String]
    class ChannelEngineVersionResponse < Struct.new(
      :expiration_date,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ChannelSummary
    # @!attribute arn
    #   The unique arn of the channel.
    #   @return [String]
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #   @return [String]
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #   @return [Array<Types::OutputDestination>]
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #   @return [Array<Types::ChannelEgressEndpoint>]
    # @!attribute id
    #   The unique id of the channel.
    #   @return [String]
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #   @return [Array<Types::InputAttachment>]
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #   @return [String]
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #   @return [Types::MaintenanceStatus]
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #   @return [String]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #   @return [String]
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute vpc
    #   Settings for any VPC outputs.
    #   @return [Types::VpcOutputSettingsDescription]
    # @!attribute anywhere_settings
    #   AnywhereSettings settings for this channel.
    #   @return [Types::DescribeAnywhereSettings]
    # @!attribute channel_engine_version
    #   The engine version that you requested for this channel.
    #   @return [Types::ChannelEngineVersionResponse]
    # @!attribute used_channel_engine_versions
    #   The engine version that the running pipelines are using.
    #   @return [Array<Types::ChannelEngineVersionResponse>]
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
      :maintenance,
      :name,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      :anywhere_settings,
      :channel_engine_version,
      :used_channel_engine_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to claim an AWS Elemental device that you have purchased from a third-party vendor.
    # @!attribute id
    #   The id of the device you want to claim.
    #   @return [String]
    class ClaimDeviceRequest < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ClaimDeviceResponse
    class ClaimDeviceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CloudWatchAlarmTemplateGroupSummary
    # @!attribute arn
    #   A cloudwatch alarm template group's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute id
    #   A cloudwatch alarm template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    # @!attribute template_count
    #   The number of templates in a group.
    #   @return [Integer]
    class CloudWatchAlarmTemplateGroupSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :modified_at,
      :name,
      :tags,
      :template_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CloudWatchAlarmTemplateSummary
    # @!attribute arn
    #   A cloudwatch alarm template's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute comparison_operator
    #   The comparison operator used to compare the specified statistic and the threshold.
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute datapoints_to_alarm
    #   The number of datapoints within the evaluation period that must be breaching to trigger the alarm.
    #   @return [Integer]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute evaluation_periods
    #   The number of periods over which data is compared to the specified threshold.
    #   @return [Integer]
    # @!attribute group_id
    #   A cloudwatch alarm template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute id
    #   A cloudwatch alarm template's id. AWS provided templates have ids that start with `aws-`
    #   @return [String]
    # @!attribute metric_name
    #   The name of the metric associated with the alarm. Must be compatible with targetResourceType.
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute period
    #   The period, in seconds, over which the specified statistic is applied.
    #   @return [Integer]
    # @!attribute statistic
    #   The statistic to apply to the alarm's metric data.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    # @!attribute target_resource_type
    #   The resource type this template should dynamically generate cloudwatch metric alarms for.
    #   @return [String]
    # @!attribute threshold
    #   The threshold value to compare with the specified statistic.
    #   @return [Float]
    # @!attribute treat_missing_data
    #   Specifies how missing data points are treated when evaluating the alarm's condition.
    #   @return [String]
    class CloudWatchAlarmTemplateSummary < Struct.new(
      :arn,
      :comparison_operator,
      :created_at,
      :datapoints_to_alarm,
      :description,
      :evaluation_periods,
      :group_id,
      :id,
      :metric_name,
      :modified_at,
      :name,
      :period,
      :statistic,
      :tags,
      :target_resource_type,
      :threshold,
      :treat_missing_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in DescribeClusterResult, DescribeClusterSummary, UpdateClusterResult.
    # @!attribute default_route
    #   The network interface that is the default route for traffic to and from the node. MediaLive Anywhere uses this default when the destination for the traffic isn't covered by the route table for any of the networks. Specify the value of the appropriate logicalInterfaceName parameter that you create in the interfaceMappings.
    #   @return [String]
    # @!attribute interface_mappings
    #   An array of interfaceMapping objects for this Cluster. Each mapping logically connects one interface on the nodes with one Network. You need only one mapping for each interface because all the Nodes share the mapping.
    #   @return [Array<Types::InterfaceMapping>]
    class ClusterNetworkSettings < Struct.new(
      :default_route,
      :interface_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in a CreateClusterRequest.
    # @!attribute default_route
    #   Specify one network interface as the default route for traffic to and from the Node. MediaLive Anywhere uses this default when the destination for the traffic isn't covered by the route table for any of the networks. Specify the value of the appropriate logicalInterfaceName parameter that you create in the interfaceMappings.
    #   @return [String]
    # @!attribute interface_mappings
    #   An array of interfaceMapping objects for this Cluster. You must create a mapping for node interfaces that you plan to use for encoding traffic. You typically don't create a mapping for the management interface. You define this mapping in the Cluster so that the mapping can be used by all the Nodes. Each mapping logically connects one interface on the nodes with one Network. Each mapping consists of a pair of parameters. The logicalInterfaceName parameter creates a logical name for the Node interface that handles a specific type of traffic. For example, my-Inputs-Interface. The networkID parameter refers to the ID of the network. When you create the Nodes in this Cluster, you will associate the logicalInterfaceName with the appropriate physical interface.
    #   @return [Array<Types::InterfaceMappingCreateRequest>]
    class ClusterNetworkSettingsCreateRequest < Struct.new(
      :default_route,
      :interface_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ClusterNetworkSettingsUpdateRequest
    # @!attribute default_route
    #   Include this parameter only if you want to change the default route for the Cluster. Specify one network interface as the default route for traffic to and from the node. MediaLive Anywhere uses this default when the destination for the traffic isn't covered by the route table for any of the networks. Specify the value of the appropriate logicalInterfaceName parameter that you create in the interfaceMappings.
    #   @return [String]
    # @!attribute interface_mappings
    #   An array of interfaceMapping objects for this Cluster. Include this parameter only if you want to change the interface mappings for the Cluster. Typically, you change the interface mappings only to fix an error you made when creating the mapping. In an update request, make sure that you enter the entire set of mappings again, not just the mappings that you want to add or change. You define this mapping so that the mapping can be used by all the Nodes. Each mapping logically connects one interface on the nodes with one Network. Each mapping consists of a pair of parameters. The logicalInterfaceName parameter creates a logical name for the Node interface that handles a specific type of traffic. For example, my-Inputs-Interface. The networkID parameter refers to the ID of the network. When you create the Nodes in this Cluster, you will associate the logicalInterfaceName with the appropriate physical interface.
    #   @return [Array<Types::InterfaceMappingUpdateRequest>]
    class ClusterNetworkSettingsUpdateRequest < Struct.new(
      :default_route,
      :interface_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Add an array item for each language. Follow the order of the caption descriptions. For example, if the first caption description is for German, then the first array item must be for German, and its caption channel must be set to 1. The second array item must be 2, and so on.
    # @!attribute caption_channel
    #   A number for the channel for this caption, 1 to 4.
    #   @return [Integer]
    # @!attribute language_code
    #   Language code for the language of the caption in this channel.  For example, ger/deu. See http://www.loc.gov/standards/iso639-2
    #   @return [String]
    class CmafIngestCaptionLanguageMapping < Struct.new(
      :caption_channel,
      :language_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Cmaf Ingest Group Settings
    # @!attribute destination
    #   A HTTP destination for the tracks
    #   @return [Types::OutputLocationRef]
    # @!attribute nielsen_id3_behavior
    #   If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #   @return [String]
    # @!attribute scte35_type
    #   Type of scte35 track to add. none or scte35WithoutSegmentation
    #   @return [String]
    # @!attribute segment_length
    #   The nominal duration of segments. The units are specified in SegmentLengthUnits. The segments will end on the next keyframe after the specified duration, so the actual segment length might be longer, and it might be a fraction of the units.
    #   @return [Integer]
    # @!attribute segment_length_units
    #   Time unit for segment length parameter.
    #   @return [String]
    # @!attribute send_delay_ms
    #   Number of milliseconds to delay the output from the second pipeline.
    #   @return [Integer]
    # @!attribute klv_behavior
    #   If set to passthrough, passes any KLV data from the input source to this output.
    #   @return [String]
    # @!attribute klv_name_modifier
    #   Change the modifier that MediaLive automatically adds to the Streams() name that identifies a KLV track. The default is "klv", which means the default name will be Streams(klv.cmfm). Any string you enter here will replace the "klv" string.\nThe modifier can only contain: numbers, letters, plus (+), minus (-), underscore (_) and period (.) and has a maximum length of 100 characters.
    #   @return [String]
    # @!attribute nielsen_id3_name_modifier
    #   Change the modifier that MediaLive automatically adds to the Streams() name that identifies a Nielsen ID3 track. The default is "nid3", which means the default name will be Streams(nid3.cmfm). Any string you enter here will replace the "nid3" string.\nThe modifier can only contain: numbers, letters, plus (+), minus (-), underscore (_) and period (.) and has a maximum length of 100 characters.
    #   @return [String]
    # @!attribute scte35_name_modifier
    #   Change the modifier that MediaLive automatically adds to the Streams() name for a SCTE 35 track. The default is "scte", which means the default name will be Streams(scte.cmfm). Any string you enter here will replace the "scte" string.\nThe modifier can only contain: numbers, letters, plus (+), minus (-), underscore (_) and period (.) and has a maximum length of 100 characters.
    #   @return [String]
    # @!attribute id3_behavior
    #   Set to ENABLED to enable ID3 metadata insertion. To include metadata, you configure other parameters in the output group, or you add an ID3 action to the channel schedule.
    #   @return [String]
    # @!attribute id3_name_modifier
    #   Change the modifier that MediaLive automatically adds to the Streams() name that identifies an ID3 track. The default is "id3", which means the default name will be Streams(id3.cmfm). Any string you enter here will replace the "id3" string.\nThe modifier can only contain: numbers, letters, plus (+), minus (-), underscore (_) and period (.) and has a maximum length of 100 characters.
    #   @return [String]
    # @!attribute caption_language_mappings
    #   An array that identifies the languages in the four caption channels in the embedded captions.
    #   @return [Array<Types::CmafIngestCaptionLanguageMapping>]
    # @!attribute timed_metadata_id3_frame
    #   Set to none if you don't want to insert a timecode in the output. Otherwise choose the frame type for the timecode.
    #   @return [String]
    # @!attribute timed_metadata_id3_period
    #   If you set up to insert a timecode in the output, specify the frequency for the frame, in seconds.
    #   @return [Integer]
    # @!attribute timed_metadata_passthrough
    #   Set to enabled to pass through ID3 metadata from the input sources.
    #   @return [String]
    # @!attribute additional_destinations
    #   Optional an array of additional destinational HTTP destinations for the OutputGroup outputs
    #   @return [Array<Types::AdditionalDestinations>]
    class CmafIngestGroupSettings < Struct.new(
      :destination,
      :nielsen_id3_behavior,
      :scte35_type,
      :segment_length,
      :segment_length_units,
      :send_delay_ms,
      :klv_behavior,
      :klv_name_modifier,
      :nielsen_id3_name_modifier,
      :scte35_name_modifier,
      :id3_behavior,
      :id3_name_modifier,
      :caption_language_mappings,
      :timed_metadata_id3_frame,
      :timed_metadata_id3_period,
      :timed_metadata_passthrough,
      :additional_destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Cmaf Ingest Output Settings
    # @!attribute name_modifier
    #   String concatenated to the end of the destination filename.  Required for multiple outputs of the same type.
    #   @return [String]
    class CmafIngestOutputSettings < Struct.new(
      :name_modifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Property of ColorCorrectionSettings. Used for custom color space conversion. The object identifies one 3D LUT file and specifies the input/output color space combination that the file will be used for.
    # @!attribute input_color_space
    #   The color space of the input.
    #   @return [String]
    # @!attribute output_color_space
    #   The color space of the output.
    #   @return [String]
    # @!attribute uri
    #   The URI of the 3D LUT file. The protocol must be 's3:' or 's3ssl:':.
    #   @return [String]
    class ColorCorrection < Struct.new(
      :input_color_space,
      :output_color_space,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Property of encoderSettings. Controls color conversion when you are using 3D LUT files to perform color conversion on video.
    # @!attribute global_color_corrections
    #   An array of colorCorrections that applies when you are using 3D LUT files to perform color conversion on video. Each colorCorrection contains one 3D LUT file (that defines the color mapping for converting an input color space to an output color space), and the input/output combination that this 3D LUT file applies to. MediaLive reads the color space in the input metadata, determines the color space that you have specified for the output, and finds and uses the LUT file that applies to this combination.
    #   @return [Array<Types::ColorCorrection>]
    class ColorCorrectionSettings < Struct.new(
      :global_color_corrections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Passthrough applies no color space conversion to the output
    class ColorSpacePassthroughSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ConflictException
    # @!attribute message
    #   Placeholder documentation for __string
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to create a channel placement group.
    # @!attribute cluster_id
    #   The ID of the cluster.
    #   @return [String]
    # @!attribute name
    #   Specify a name that is unique in the Cluster. You can't change the name. Names are case-sensitive.
    #   @return [String]
    # @!attribute nodes
    #   An array of one ID for the Node that you want to associate with the ChannelPlacementGroup. (You can't associate more than one Node with the ChannelPlacementGroup.) The Node and the ChannelPlacementGroup must be in the same Cluster.
    #   @return [Array<String>]
    # @!attribute request_id
    #   An ID that you assign to a create request. This ID ensures idempotency when creating resources. the request.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    class CreateChannelPlacementGroupRequest < Struct.new(
      :cluster_id,
      :name,
      :nodes,
      :request_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateChannelPlacementGroupResponse
    # @!attribute arn
    #   The ARN of this ChannelPlacementGroup. It is automatically assigned when the ChannelPlacementGroup is created.
    #   @return [String]
    # @!attribute channels
    #   Used in ListChannelPlacementGroupsResult
    #   @return [Array<String>]
    # @!attribute cluster_id
    #   The ID of the Cluster that the Node belongs to.
    #   @return [String]
    # @!attribute id
    #   The ID of the ChannelPlacementGroup. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the ChannelPlacementGroup.
    #   @return [String]
    # @!attribute nodes
    #   An array with one item, which is the single Node that is associated with the ChannelPlacementGroup.
    #   @return [Array<String>]
    # @!attribute state
    #   The current state of the ChannelPlacementGroup.
    #   @return [String]
    class CreateChannelPlacementGroupResponse < Struct.new(
      :arn,
      :channels,
      :cluster_id,
      :id,
      :name,
      :nodes,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to create a channel
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #   @return [String]
    # @!attribute destinations
    #   Placeholder documentation for __listOfOutputDestination
    #   @return [Array<Types::OutputDestination>]
    # @!attribute encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #   @return [Array<Types::InputAttachment>]
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    # @!attribute log_level
    #   The log level to write to CloudWatch Logs.
    #   @return [String]
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #   @return [Types::MaintenanceCreateSettings]
    # @!attribute name
    #   Name of channel.
    #   @return [String]
    # @!attribute request_id
    #   Unique request ID to be specified. This is needed to prevent retries from
    #   creating multiple resources.
    #   @return [String]
    # @!attribute reserved
    #   Deprecated field that's only usable by whitelisted customers.
    #   @deprecated
    #   @return [String]
    # @!attribute role_arn
    #   An optional Amazon Resource Name (ARN) of the role to assume when running the Channel.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute vpc
    #   Settings for the VPC outputs
    #   @return [Types::VpcOutputSettings]
    # @!attribute anywhere_settings
    #   The Elemental Anywhere settings for this channel.
    #   @return [Types::AnywhereSettings]
    # @!attribute channel_engine_version
    #   The desired engine version for this channel.
    #   @return [Types::ChannelEngineVersionRequest]
    # @!attribute dry_run
    #   Placeholder documentation for __boolean
    #   @return [Boolean]
    class CreateChannelRequest < Struct.new(
      :cdi_input_specification,
      :channel_class,
      :destinations,
      :encoder_settings,
      :input_attachments,
      :input_specification,
      :log_level,
      :maintenance,
      :name,
      :request_id,
      :reserved,
      :role_arn,
      :tags,
      :vpc,
      :anywhere_settings,
      :channel_engine_version,
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateChannelResponse
    # @!attribute channel
    #   Placeholder documentation for Channel
    #   @return [Types::Channel]
    class CreateChannelResponse < Struct.new(
      :channel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateCloudWatchAlarmTemplateGroupRequest
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    # @!attribute request_id
    #   An ID that you assign to a create request. This ID ensures idempotency when creating resources.
    #   @return [String]
    class CreateCloudWatchAlarmTemplateGroupRequest < Struct.new(
      :description,
      :name,
      :tags,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateCloudWatchAlarmTemplateGroupResponse
    # @!attribute arn
    #   A cloudwatch alarm template group's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute id
    #   A cloudwatch alarm template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class CreateCloudWatchAlarmTemplateGroupResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :modified_at,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateCloudWatchAlarmTemplateRequest
    # @!attribute comparison_operator
    #   The comparison operator used to compare the specified statistic and the threshold.
    #   @return [String]
    # @!attribute datapoints_to_alarm
    #   The number of datapoints within the evaluation period that must be breaching to trigger the alarm.
    #   @return [Integer]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute evaluation_periods
    #   The number of periods over which data is compared to the specified threshold.
    #   @return [Integer]
    # @!attribute group_identifier
    #   A cloudwatch alarm template group's identifier. Can be either be its id or current name.
    #   @return [String]
    # @!attribute metric_name
    #   The name of the metric associated with the alarm. Must be compatible with targetResourceType.
    #   @return [String]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute period
    #   The period, in seconds, over which the specified statistic is applied.
    #   @return [Integer]
    # @!attribute statistic
    #   The statistic to apply to the alarm's metric data.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    # @!attribute target_resource_type
    #   The resource type this template should dynamically generate cloudwatch metric alarms for.
    #   @return [String]
    # @!attribute threshold
    #   The threshold value to compare with the specified statistic.
    #   @return [Float]
    # @!attribute treat_missing_data
    #   Specifies how missing data points are treated when evaluating the alarm's condition.
    #   @return [String]
    # @!attribute request_id
    #   An ID that you assign to a create request. This ID ensures idempotency when creating resources.
    #   @return [String]
    class CreateCloudWatchAlarmTemplateRequest < Struct.new(
      :comparison_operator,
      :datapoints_to_alarm,
      :description,
      :evaluation_periods,
      :group_identifier,
      :metric_name,
      :name,
      :period,
      :statistic,
      :tags,
      :target_resource_type,
      :threshold,
      :treat_missing_data,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateCloudWatchAlarmTemplateResponse
    # @!attribute arn
    #   A cloudwatch alarm template's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute comparison_operator
    #   The comparison operator used to compare the specified statistic and the threshold.
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute datapoints_to_alarm
    #   The number of datapoints within the evaluation period that must be breaching to trigger the alarm.
    #   @return [Integer]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute evaluation_periods
    #   The number of periods over which data is compared to the specified threshold.
    #   @return [Integer]
    # @!attribute group_id
    #   A cloudwatch alarm template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute id
    #   A cloudwatch alarm template's id. AWS provided templates have ids that start with `aws-`
    #   @return [String]
    # @!attribute metric_name
    #   The name of the metric associated with the alarm. Must be compatible with targetResourceType.
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute period
    #   The period, in seconds, over which the specified statistic is applied.
    #   @return [Integer]
    # @!attribute statistic
    #   The statistic to apply to the alarm's metric data.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    # @!attribute target_resource_type
    #   The resource type this template should dynamically generate cloudwatch metric alarms for.
    #   @return [String]
    # @!attribute threshold
    #   The threshold value to compare with the specified statistic.
    #   @return [Float]
    # @!attribute treat_missing_data
    #   Specifies how missing data points are treated when evaluating the alarm's condition.
    #   @return [String]
    class CreateCloudWatchAlarmTemplateResponse < Struct.new(
      :arn,
      :comparison_operator,
      :created_at,
      :datapoints_to_alarm,
      :description,
      :evaluation_periods,
      :group_id,
      :id,
      :metric_name,
      :modified_at,
      :name,
      :period,
      :statistic,
      :tags,
      :target_resource_type,
      :threshold,
      :treat_missing_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create as many Clusters as you want, but create at least one. Each Cluster groups together Nodes that you want to treat as a collection. Within the Cluster, you will set up some Nodes as active Nodes, and some as backup Nodes, for Node failover purposes. Each Node can belong to only one Cluster.
    # @!attribute cluster_type
    #   Specify a type. All the Nodes that you later add to this Cluster must be this type of hardware. One Cluster instance can't contain different hardware types. You won't be able to change this parameter after you create the Cluster.
    #   @return [String]
    # @!attribute instance_role_arn
    #   The ARN of the IAM role for the Node in this Cluster. The role must include all the operations that you expect these Node to perform. If necessary, create a role in IAM, then attach it here.
    #   @return [String]
    # @!attribute name
    #   Specify a name that is unique in the AWS account. We recommend that you assign a name that hints at the types of Nodes in the Cluster. Names are case-sensitive.
    #   @return [String]
    # @!attribute network_settings
    #   Network settings that connect the Nodes in the Cluster to one or more of the Networks that the Cluster is associated with.
    #   @return [Types::ClusterNetworkSettingsCreateRequest]
    # @!attribute request_id
    #   The unique ID of the request.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    class CreateClusterRequest < Struct.new(
      :cluster_type,
      :instance_role_arn,
      :name,
      :network_settings,
      :request_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateClusterResponse
    # @!attribute arn
    #   The ARN of this Cluster. It is automatically assigned when the Cluster is created.
    #   @return [String]
    # @!attribute channel_ids
    #   Placeholder documentation for __listOf__string
    #   @return [Array<String>]
    # @!attribute cluster_type
    #   The hardware type for the Cluster
    #   @return [String]
    # @!attribute id
    #   The ID of the  Cluster. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute instance_role_arn
    #   The ARN of the IAM role for the Node in this Cluster. Any Nodes that are associated with this Cluster assume this role. The role gives permissions to the operations that you expect these Node to perform.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the Cluster.
    #   @return [String]
    # @!attribute network_settings
    #   Network settings that connect the Nodes in the Cluster to one or more of the Networks that the Cluster is associated with.
    #   @return [Types::ClusterNetworkSettings]
    # @!attribute state
    #   The current state of the Cluster.
    #   @return [String]
    class CreateClusterResponse < Struct.new(
      :arn,
      :channel_ids,
      :cluster_type,
      :id,
      :instance_role_arn,
      :name,
      :network_settings,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateEventBridgeRuleTemplateGroupRequest
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    # @!attribute request_id
    #   An ID that you assign to a create request. This ID ensures idempotency when creating resources.
    #   @return [String]
    class CreateEventBridgeRuleTemplateGroupRequest < Struct.new(
      :description,
      :name,
      :tags,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateEventBridgeRuleTemplateGroupResponse
    # @!attribute arn
    #   An eventbridge rule template group's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute id
    #   An eventbridge rule template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class CreateEventBridgeRuleTemplateGroupResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :modified_at,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateEventBridgeRuleTemplateRequest
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute event_targets
    #   Placeholder documentation for __listOfEventBridgeRuleTemplateTarget
    #   @return [Array<Types::EventBridgeRuleTemplateTarget>]
    # @!attribute event_type
    #   The type of event to match with the rule.
    #   @return [String]
    # @!attribute group_identifier
    #   An eventbridge rule template group's identifier. Can be either be its id or current name.
    #   @return [String]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    # @!attribute request_id
    #   An ID that you assign to a create request. This ID ensures idempotency when creating resources.
    #   @return [String]
    class CreateEventBridgeRuleTemplateRequest < Struct.new(
      :description,
      :event_targets,
      :event_type,
      :group_identifier,
      :name,
      :tags,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateEventBridgeRuleTemplateResponse
    # @!attribute arn
    #   An eventbridge rule template's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute event_targets
    #   Placeholder documentation for __listOfEventBridgeRuleTemplateTarget
    #   @return [Array<Types::EventBridgeRuleTemplateTarget>]
    # @!attribute event_type
    #   The type of event to match with the rule.
    #   @return [String]
    # @!attribute group_id
    #   An eventbridge rule template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute id
    #   An eventbridge rule template's id. AWS provided templates have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class CreateEventBridgeRuleTemplateResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :event_targets,
      :event_type,
      :group_id,
      :id,
      :modified_at,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The name of the input
    # @!attribute destinations
    #   Destination settings for PUSH type inputs.
    #   @return [Array<Types::InputDestinationRequest>]
    # @!attribute input_devices
    #   Settings for the devices.
    #   @return [Array<Types::InputDeviceSettings>]
    # @!attribute input_security_groups
    #   A list of security groups referenced by IDs to attach to the input.
    #   @return [Array<String>]
    # @!attribute media_connect_flows
    #   A list of the MediaConnect Flows that you want to use in this input. You can specify as few as one
    #   Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a
    #   separate Availability Zone as this ensures your EML input is redundant to AZ issues.
    #   @return [Array<Types::MediaConnectFlowRequest>]
    # @!attribute name
    #   Name of the input.
    #   @return [String]
    # @!attribute request_id
    #   Unique identifier of the request to ensure the request is handled
    #   exactly once in case of retries.
    #   @return [String]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
    #   @return [String]
    # @!attribute sources
    #   The source URLs for a PULL-type input. Every PULL type input needs
    #   exactly two source URLs for redundancy.
    #   Only specify sources for PULL type Inputs. Leave Destinations empty.
    #   @return [Array<Types::InputSourceRequest>]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute type
    #   The different types of inputs that AWS Elemental MediaLive supports.
    #   @return [String]
    # @!attribute vpc
    #   Settings for a private VPC Input.
    #   When this property is specified, the input destination addresses will be created in a VPC rather than with public Internet addresses.
    #   This property requires setting the roleArn property on Input creation.
    #   Not compatible with the inputSecurityGroups property.
    #   @return [Types::InputVpcRequest]
    # @!attribute srt_settings
    #   The settings associated with an SRT input.
    #   @return [Types::SrtSettingsRequest]
    # @!attribute input_network_location
    #   The location of this input. AWS, for an input existing in the AWS Cloud, On-Prem for
    #   an input in a customer network.
    #   @return [String]
    # @!attribute multicast_settings
    #   Multicast Input settings.
    #   @return [Types::MulticastSettingsCreateRequest]
    # @!attribute smpte2110_receiver_group_settings
    #   Include this parameter if the input is a SMPTE 2110 input, to identify the stream sources for this input.
    #   @return [Types::Smpte2110ReceiverGroupSettings]
    # @!attribute sdi_sources
    #   SDI Sources for this Input.
    #   @return [Array<String>]
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
      :vpc,
      :srt_settings,
      :input_network_location,
      :multicast_settings,
      :smpte2110_receiver_group_settings,
      :sdi_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateInputResponse
    # @!attribute input
    #   Placeholder documentation for Input
    #   @return [Types::Input]
    class CreateInputResponse < Struct.new(
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The IPv4 CIDRs to whitelist for this Input Security Group
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute whitelist_rules
    #   List of IPv4 CIDR addresses to whitelist
    #   @return [Array<Types::InputWhitelistRuleCidr>]
    class CreateInputSecurityGroupRequest < Struct.new(
      :tags,
      :whitelist_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateInputSecurityGroupResponse
    # @!attribute security_group
    #   An Input Security Group
    #   @return [Types::InputSecurityGroup]
    class CreateInputSecurityGroupResponse < Struct.new(
      :security_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to create a program in a multiplex.
    # @!attribute multiplex_id
    #   ID of the multiplex where the program is to be created.
    #   @return [String]
    # @!attribute multiplex_program_settings
    #   The settings for this multiplex program.
    #   @return [Types::MultiplexProgramSettings]
    # @!attribute program_name
    #   Name of multiplex program.
    #   @return [String]
    # @!attribute request_id
    #   Unique request ID. This prevents retries from creating multiple
    #   resources.
    #   @return [String]
    class CreateMultiplexProgramRequest < Struct.new(
      :multiplex_id,
      :multiplex_program_settings,
      :program_name,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateMultiplexProgramResponse
    # @!attribute multiplex_program
    #   The newly created multiplex program.
    #   @return [Types::MultiplexProgram]
    class CreateMultiplexProgramResponse < Struct.new(
      :multiplex_program,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to create a multiplex.
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex. You must specify exactly two.
    #   @return [Array<String>]
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #   @return [Types::MultiplexSettings]
    # @!attribute name
    #   Name of multiplex.
    #   @return [String]
    # @!attribute request_id
    #   Unique request ID. This prevents retries from creating multiple
    #   resources.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    class CreateMultiplexRequest < Struct.new(
      :availability_zones,
      :multiplex_settings,
      :name,
      :request_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateMultiplexResponse
    # @!attribute multiplex
    #   The newly created multiplex.
    #   @return [Types::Multiplex]
    class CreateMultiplexResponse < Struct.new(
      :multiplex,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to create a Network.
    # @!attribute ip_pools
    #   An array of IpPoolCreateRequests that identify a collection of IP addresses in your network that you want to reserve for use in MediaLive Anywhere. MediaLiveAnywhere uses these IP addresses for Push inputs (in both Bridge and NATnetworks) and for output destinations (only in Bridge networks). EachIpPoolUpdateRequest specifies one CIDR block.
    #   @return [Array<Types::IpPoolCreateRequest>]
    # @!attribute name
    #   Specify a name that is unique in the AWS account. We recommend that you assign a name that hints at the type of traffic on the network. Names are case-sensitive.
    #   @return [String]
    # @!attribute request_id
    #   An ID that you assign to a create request. This ID ensures idempotency when creating resources.
    #   @return [String]
    # @!attribute routes
    #   An array of routes that MediaLive Anywhere needs to know about in order to route encoding traffic.
    #   @return [Array<Types::RouteCreateRequest>]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    class CreateNetworkRequest < Struct.new(
      :ip_pools,
      :name,
      :request_id,
      :routes,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateNetworkResponse
    # @!attribute arn
    #   The ARN of this Network. It is automatically assigned when the Network is created.
    #   @return [String]
    # @!attribute associated_cluster_ids
    #   Placeholder documentation for __listOf__string
    #   @return [Array<String>]
    # @!attribute id
    #   The ID of the Network. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute ip_pools
    #   An array of IpPools in your organization's network that identify a collection of IP addresses in this network that are reserved for use in MediaLive Anywhere. MediaLive Anywhere uses these IP addresses for Push inputs (in both Bridge and NAT networks) and for output destinations (only in Bridge networks). Each IpPool specifies one CIDR block.
    #   @return [Array<Types::IpPool>]
    # @!attribute name
    #   The name that you specified for the Network.
    #   @return [String]
    # @!attribute routes
    #   An array of routes that MediaLive Anywhere needs to know about in order to route encoding traffic.
    #   @return [Array<Types::Route>]
    # @!attribute state
    #   The current state of the Network. Only MediaLive Anywhere can change the state.
    #   @return [String]
    class CreateNetworkResponse < Struct.new(
      :arn,
      :associated_cluster_ids,
      :id,
      :ip_pools,
      :name,
      :routes,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to create a new node registration script.
    # @!attribute cluster_id
    #   The ID of the cluster
    #   @return [String]
    # @!attribute id
    #   If you're generating a re-registration script for an already existing node, this is where you provide the id.
    #   @return [String]
    # @!attribute name
    #   Specify a pattern for MediaLive Anywhere to use to assign a name to each Node in the Cluster. The pattern can include the variables $hn (hostname of the node hardware) and $ts for the date and time that the Node is created, in UTC (for example, 2024-08-20T23:35:12Z).
    #   @return [String]
    # @!attribute node_interface_mappings
    #   Documentation update needed
    #   @return [Array<Types::NodeInterfaceMapping>]
    # @!attribute request_id
    #   An ID that you assign to a create request. This ID ensures idempotency when creating resources.
    #   @return [String]
    # @!attribute role
    #   The initial role of the Node in the Cluster. ACTIVE means the Node is available for encoding. BACKUP means the Node is a redundant Node and might get used if an ACTIVE Node fails.
    #   @return [String]
    class CreateNodeRegistrationScriptRequest < Struct.new(
      :cluster_id,
      :id,
      :name,
      :node_interface_mappings,
      :request_id,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateNodeRegistrationScriptResponse
    # @!attribute node_registration_script
    #   A script that can be run on a Bring Your Own Device Elemental Anywhere system to create a node in a cluster.
    #   @return [String]
    class CreateNodeRegistrationScriptResponse < Struct.new(
      :node_registration_script,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to create a node
    # @!attribute cluster_id
    #   The ID of the cluster.
    #   @return [String]
    # @!attribute name
    #   The user-specified name of the Node to be created.
    #   @return [String]
    # @!attribute node_interface_mappings
    #   Documentation update needed
    #   @return [Array<Types::NodeInterfaceMappingCreateRequest>]
    # @!attribute request_id
    #   An ID that you assign to a create request. This ID ensures idempotency when creating resources.
    #   @return [String]
    # @!attribute role
    #   The initial role of the Node in the Cluster. ACTIVE means the Node is available for encoding. BACKUP means the Node is a redundant Node and might get used if an ACTIVE Node fails.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    class CreateNodeRequest < Struct.new(
      :cluster_id,
      :name,
      :node_interface_mappings,
      :request_id,
      :role,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateNodeResponse
    # @!attribute arn
    #   The ARN of the Node. It is automatically assigned when the Node is created.
    #   @return [String]
    # @!attribute channel_placement_groups
    #   An array of IDs. Each ID is one ChannelPlacementGroup that is associated with this Node. Empty if the Node is not yet associated with any groups.
    #   @return [Array<String>]
    # @!attribute cluster_id
    #   The ID of the Cluster that the Node belongs to.
    #   @return [String]
    # @!attribute connection_state
    #   The current connection state of the Node.
    #   @return [String]
    # @!attribute id
    #   The unique ID of the Node. Unique in the Cluster. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute instance_arn
    #   The ARN of the EC2 instance hosting the Node.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the Node.
    #   @return [String]
    # @!attribute node_interface_mappings
    #   Documentation update needed
    #   @return [Array<Types::NodeInterfaceMapping>]
    # @!attribute role
    #   The initial role current role of the Node in the Cluster. ACTIVE means the Node is available for encoding. BACKUP means the Node is a redundant Node and might get used if an ACTIVE Node fails.
    #   @return [String]
    # @!attribute state
    #   The current state of the Node.
    #   @return [String]
    # @!attribute sdi_source_mappings
    #   An array of SDI source mappings. Each mapping connects one logical SdiSource to the physical SDI card and port that the physical SDI source uses.
    #   @return [Array<Types::SdiSourceMapping>]
    class CreateNodeResponse < Struct.new(
      :arn,
      :channel_placement_groups,
      :cluster_id,
      :connection_state,
      :id,
      :instance_arn,
      :name,
      :node_interface_mappings,
      :role,
      :state,
      :sdi_source_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to create a partner input
    # @!attribute input_id
    #   Unique ID of the input.
    #   @return [String]
    # @!attribute request_id
    #   Unique identifier of the request to ensure the request is handled
    #   exactly once in case of retries.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    class CreatePartnerInputRequest < Struct.new(
      :input_id,
      :request_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreatePartnerInputResponse
    # @!attribute input
    #   Placeholder documentation for Input
    #   @return [Types::Input]
    class CreatePartnerInputResponse < Struct.new(
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to create a SdiSource.
    # @!attribute mode
    #   Applies only if the type is QUAD. Specify the mode for handling the quad-link signal: QUADRANT or INTERLEAVE.
    #   @return [String]
    # @!attribute name
    #   Specify a name that is unique in the AWS account. We recommend you assign a name that describes the source, for example curling-cameraA. Names are case-sensitive.
    #   @return [String]
    # @!attribute request_id
    #   An ID that you assign to a create request. This ID ensures idempotency when creating resources.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute type
    #   Specify the  type of the SDI source: SINGLE: The source  is a single-link source. QUAD: The source  is one part of a quad-link source.
    #   @return [String]
    class CreateSdiSourceRequest < Struct.new(
      :mode,
      :name,
      :request_id,
      :tags,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateSdiSourceResponse
    # @!attribute sdi_source
    #   Settings for the SDI source.
    #   @return [Types::SdiSource]
    class CreateSdiSourceResponse < Struct.new(
      :sdi_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateSignalMapRequest
    # @!attribute cloud_watch_alarm_template_group_identifiers
    #   Placeholder documentation for __listOf__stringPatternS
    #   @return [Array<String>]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute discovery_entry_point_arn
    #   A top-level supported AWS resource ARN to discovery a signal map from.
    #   @return [String]
    # @!attribute event_bridge_rule_template_group_identifiers
    #   Placeholder documentation for __listOf__stringPatternS
    #   @return [Array<String>]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    # @!attribute request_id
    #   An ID that you assign to a create request. This ID ensures idempotency when creating resources.
    #   @return [String]
    class CreateSignalMapRequest < Struct.new(
      :cloud_watch_alarm_template_group_identifiers,
      :description,
      :discovery_entry_point_arn,
      :event_bridge_rule_template_group_identifiers,
      :name,
      :tags,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateSignalMapResponse
    # @!attribute arn
    #   A signal map's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute cloud_watch_alarm_template_group_ids
    #   Placeholder documentation for __listOf__stringMin7Max11PatternAws097
    #   @return [Array<String>]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute discovery_entry_point_arn
    #   A top-level supported AWS resource ARN to discovery a signal map from.
    #   @return [String]
    # @!attribute error_message
    #   Error message associated with a failed creation or failed update attempt of a signal map.
    #   @return [String]
    # @!attribute event_bridge_rule_template_group_ids
    #   Placeholder documentation for __listOf__stringMin7Max11PatternAws097
    #   @return [Array<String>]
    # @!attribute failed_media_resource_map
    #   A map representing an incomplete AWS media workflow as a graph.
    #   @return [Hash<String, Types::MediaResource>]
    # @!attribute id
    #   A signal map's id.
    #   @return [String]
    # @!attribute last_discovered_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute last_successful_monitor_deployment
    #   Represents the latest successful monitor deployment of a signal map.
    #   @return [Types::SuccessfulMonitorDeployment]
    # @!attribute media_resource_map
    #   A map representing an AWS media workflow as a graph.
    #   @return [Hash<String, Types::MediaResource>]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute monitor_changes_pending_deployment
    #   If true, there are pending monitor changes for this signal map that can be deployed.
    #   @return [Boolean]
    # @!attribute monitor_deployment
    #   Represents the latest monitor deployment of a signal map.
    #   @return [Types::MonitorDeployment]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute status
    #   A signal map's current status which is dependent on its lifecycle actions or associated jobs.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class CreateSignalMapResponse < Struct.new(
      :arn,
      :cloud_watch_alarm_template_group_ids,
      :created_at,
      :description,
      :discovery_entry_point_arn,
      :error_message,
      :event_bridge_rule_template_group_ids,
      :failed_media_resource_map,
      :id,
      :last_discovered_at,
      :last_successful_monitor_deployment,
      :media_resource_map,
      :modified_at,
      :monitor_changes_pending_deployment,
      :monitor_deployment,
      :name,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for CreateTagsRequest
    # @!attribute resource_arn
    #   Placeholder documentation for __string
    #   @return [String]
    # @!attribute tags
    #   Placeholder documentation for Tags
    #   @return [Hash<String, String>]
    class CreateTagsRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteChannelPlacementGroupRequest
    # @!attribute channel_placement_group_id
    #   The ID of the channel placement group.
    #   @return [String]
    # @!attribute cluster_id
    #   The ID of the cluster.
    #   @return [String]
    class DeleteChannelPlacementGroupRequest < Struct.new(
      :channel_placement_group_id,
      :cluster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteChannelPlacementGroupResponse
    # @!attribute arn
    #   The ARN of this ChannelPlacementGroup. It is automatically assigned when the ChannelPlacementGroup is created.
    #   @return [String]
    # @!attribute channels
    #   Used in ListChannelPlacementGroupsResult
    #   @return [Array<String>]
    # @!attribute cluster_id
    #   The ID of the Cluster that the Node belongs to.
    #   @return [String]
    # @!attribute id
    #   The ID of the ChannelPlacementGroup. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the ChannelPlacementGroup.
    #   @return [String]
    # @!attribute nodes
    #   An array with one item, which is the single Node that is associated with the ChannelPlacementGroup.
    #   @return [Array<String>]
    # @!attribute state
    #   The current state of the ChannelPlacementGroup.
    #   @return [String]
    class DeleteChannelPlacementGroupResponse < Struct.new(
      :arn,
      :channels,
      :cluster_id,
      :id,
      :name,
      :nodes,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteChannelRequest
    # @!attribute channel_id
    #   Unique ID of the channel.
    #   @return [String]
    class DeleteChannelRequest < Struct.new(
      :channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteChannelResponse
    # @!attribute arn
    #   The unique arn of the channel.
    #   @return [String]
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #   @return [String]
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #   @return [Array<Types::OutputDestination>]
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #   @return [Array<Types::ChannelEgressEndpoint>]
    # @!attribute encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    # @!attribute id
    #   The unique id of the channel.
    #   @return [String]
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #   @return [Array<Types::InputAttachment>]
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #   @return [String]
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #   @return [Types::MaintenanceStatus]
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #   @return [String]
    # @!attribute pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #   @return [Array<Types::PipelineDetail>]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #   @return [String]
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute vpc
    #   Settings for VPC output
    #   @return [Types::VpcOutputSettingsDescription]
    # @!attribute anywhere_settings
    #   Anywhere settings for this channel.
    #   @return [Types::DescribeAnywhereSettings]
    # @!attribute channel_engine_version
    #   Requested engine version for this channel.
    #   @return [Types::ChannelEngineVersionResponse]
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
      :maintenance,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      :anywhere_settings,
      :channel_engine_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteCloudWatchAlarmTemplateGroupRequest
    # @!attribute identifier
    #   A cloudwatch alarm template group's identifier. Can be either be its id or current name.
    #   @return [String]
    class DeleteCloudWatchAlarmTemplateGroupRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteCloudWatchAlarmTemplateRequest
    # @!attribute identifier
    #   A cloudwatch alarm template's identifier. Can be either be its id or current name.
    #   @return [String]
    class DeleteCloudWatchAlarmTemplateRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteClusterRequest
    # @!attribute cluster_id
    #   The ID of the cluster.
    #   @return [String]
    class DeleteClusterRequest < Struct.new(
      :cluster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteClusterResponse
    # @!attribute arn
    #   The ARN of this Cluster. It is automatically assigned when the Cluster is created.
    #   @return [String]
    # @!attribute channel_ids
    #   Placeholder documentation for __listOf__string
    #   @return [Array<String>]
    # @!attribute cluster_type
    #   The hardware type for the Cluster
    #   @return [String]
    # @!attribute id
    #   The ID of the  Cluster. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute instance_role_arn
    #   The ARN of the IAM role for the Node in this Cluster. Any Nodes that are associated with this Cluster assume this role. The role gives permissions to the operations that you expect these Node to perform.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the Cluster.
    #   @return [String]
    # @!attribute network_settings
    #   Network settings that connect the Nodes in the Cluster to one or more of the Networks that the Cluster is associated with.
    #   @return [Types::ClusterNetworkSettings]
    # @!attribute state
    #   The current state of the Cluster.
    #   @return [String]
    class DeleteClusterResponse < Struct.new(
      :arn,
      :channel_ids,
      :cluster_type,
      :id,
      :instance_role_arn,
      :name,
      :network_settings,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteEventBridgeRuleTemplateGroupRequest
    # @!attribute identifier
    #   An eventbridge rule template group's identifier. Can be either be its id or current name.
    #   @return [String]
    class DeleteEventBridgeRuleTemplateGroupRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteEventBridgeRuleTemplateRequest
    # @!attribute identifier
    #   An eventbridge rule template's identifier. Can be either be its id or current name.
    #   @return [String]
    class DeleteEventBridgeRuleTemplateRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteInputRequest
    # @!attribute input_id
    #   Unique ID of the input
    #   @return [String]
    class DeleteInputRequest < Struct.new(
      :input_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteInputResponse
    class DeleteInputResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteInputSecurityGroupRequest
    # @!attribute input_security_group_id
    #   The Input Security Group to delete
    #   @return [String]
    class DeleteInputSecurityGroupRequest < Struct.new(
      :input_security_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteInputSecurityGroupResponse
    class DeleteInputSecurityGroupResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteMultiplexProgramRequest
    # @!attribute multiplex_id
    #   The ID of the multiplex that the program belongs to.
    #   @return [String]
    # @!attribute program_name
    #   The multiplex program name.
    #   @return [String]
    class DeleteMultiplexProgramRequest < Struct.new(
      :multiplex_id,
      :program_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteMultiplexProgramResponse
    # @!attribute channel_id
    #   The MediaLive channel associated with the program.
    #   @return [String]
    # @!attribute multiplex_program_settings
    #   The settings for this multiplex program.
    #   @return [Types::MultiplexProgramSettings]
    # @!attribute packet_identifiers_map
    #   The packet identifier map for this multiplex program.
    #   @return [Types::MultiplexProgramPacketIdentifiersMap]
    # @!attribute pipeline_details
    #   Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time.
    #   @return [Array<Types::MultiplexProgramPipelineDetail>]
    # @!attribute program_name
    #   The name of the multiplex program.
    #   @return [String]
    class DeleteMultiplexProgramResponse < Struct.new(
      :channel_id,
      :multiplex_program_settings,
      :packet_identifiers_map,
      :pipeline_details,
      :program_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteMultiplexRequest
    # @!attribute multiplex_id
    #   The ID of the multiplex.
    #   @return [String]
    class DeleteMultiplexRequest < Struct.new(
      :multiplex_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteMultiplexResponse
    # @!attribute arn
    #   The unique arn of the multiplex.
    #   @return [String]
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #   @return [Array<String>]
    # @!attribute destinations
    #   A list of the multiplex output destinations.
    #   @return [Array<Types::MultiplexOutputDestination>]
    # @!attribute id
    #   The unique id of the multiplex.
    #   @return [String]
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #   @return [Types::MultiplexSettings]
    # @!attribute name
    #   The name of the multiplex.
    #   @return [String]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #   @return [Integer]
    # @!attribute state
    #   The current state of the multiplex.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteNetworkRequest
    # @!attribute network_id
    #   The ID of the network.
    #   @return [String]
    class DeleteNetworkRequest < Struct.new(
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteNetworkResponse
    # @!attribute arn
    #   The ARN of this Network. It is automatically assigned when the Network is created.
    #   @return [String]
    # @!attribute associated_cluster_ids
    #   Placeholder documentation for __listOf__string
    #   @return [Array<String>]
    # @!attribute id
    #   The ID of the Network. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute ip_pools
    #   An array of IpPools in your organization's network that identify a collection of IP addresses in this network that are reserved for use in MediaLive Anywhere. MediaLive Anywhere uses these IP addresses for Push inputs (in both Bridge and NAT networks) and for output destinations (only in Bridge networks). Each IpPool specifies one CIDR block.
    #   @return [Array<Types::IpPool>]
    # @!attribute name
    #   The name that you specified for the Network.
    #   @return [String]
    # @!attribute routes
    #   An array of routes that MediaLive Anywhere needs to know about in order to route encoding traffic.
    #   @return [Array<Types::Route>]
    # @!attribute state
    #   The current state of the Network. Only MediaLive Anywhere can change the state.
    #   @return [String]
    class DeleteNetworkResponse < Struct.new(
      :arn,
      :associated_cluster_ids,
      :id,
      :ip_pools,
      :name,
      :routes,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteNodeRequest
    # @!attribute cluster_id
    #   The ID of the cluster
    #   @return [String]
    # @!attribute node_id
    #   The ID of the node.
    #   @return [String]
    class DeleteNodeRequest < Struct.new(
      :cluster_id,
      :node_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteNodeResponse
    # @!attribute arn
    #   The ARN of the Node. It is automatically assigned when the Node is created.
    #   @return [String]
    # @!attribute channel_placement_groups
    #   An array of IDs. Each ID is one ChannelPlacementGroup that is associated with this Node. Empty if the Node is not yet associated with any groups.
    #   @return [Array<String>]
    # @!attribute cluster_id
    #   The ID of the Cluster that the Node belongs to.
    #   @return [String]
    # @!attribute connection_state
    #   The current connection state of the Node.
    #   @return [String]
    # @!attribute id
    #   The unique ID of the Node. Unique in the Cluster. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute instance_arn
    #   The ARN of the EC2 instance hosting the Node.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the Node.
    #   @return [String]
    # @!attribute node_interface_mappings
    #   Documentation update needed
    #   @return [Array<Types::NodeInterfaceMapping>]
    # @!attribute role
    #   The initial role current role of the Node in the Cluster. ACTIVE means the Node is available for encoding. BACKUP means the Node is a redundant Node and might get used if an ACTIVE Node fails.
    #   @return [String]
    # @!attribute state
    #   The current state of the Node.
    #   @return [String]
    # @!attribute sdi_source_mappings
    #   An array of SDI source mappings. Each mapping connects one logical SdiSource to the physical SDI card and port that the physical SDI source uses.
    #   @return [Array<Types::SdiSourceMapping>]
    class DeleteNodeResponse < Struct.new(
      :arn,
      :channel_placement_groups,
      :cluster_id,
      :connection_state,
      :id,
      :instance_arn,
      :name,
      :node_interface_mappings,
      :role,
      :state,
      :sdi_source_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteReservationRequest
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #   @return [String]
    class DeleteReservationRequest < Struct.new(
      :reservation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteReservationResponse
    # @!attribute arn
    #   Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
    #   @return [String]
    # @!attribute count
    #   Number of reserved resources
    #   @return [Integer]
    # @!attribute currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
    #   @return [String]
    # @!attribute duration
    #   Lease duration, e.g. '12'
    #   @return [Integer]
    # @!attribute duration_units
    #   Units for duration, e.g. 'MONTHS'
    #   @return [String]
    # @!attribute end
    #   Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
    #   @return [String]
    # @!attribute fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
    #   @return [Float]
    # @!attribute name
    #   User specified reservation name
    #   @return [String]
    # @!attribute offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
    #   @return [String]
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #   @return [String]
    # @!attribute offering_type
    #   Offering type, e.g. 'NO_UPFRONT'
    #   @return [String]
    # @!attribute region
    #   AWS region, e.g. 'us-west-2'
    #   @return [String]
    # @!attribute renewal_settings
    #   Renewal settings for the reservation
    #   @return [Types::RenewalSettings]
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #   @return [String]
    # @!attribute resource_specification
    #   Resource configuration details
    #   @return [Types::ReservationResourceSpecification]
    # @!attribute start
    #   Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
    #   @return [String]
    # @!attribute state
    #   Current state of reservation, e.g. 'ACTIVE'
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs
    #   @return [Hash<String, String>]
    # @!attribute usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #   @return [Float]
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
      :renewal_settings,
      :reservation_id,
      :resource_specification,
      :start,
      :state,
      :tags,
      :usage_price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteScheduleRequest
    # @!attribute channel_id
    #   Id of the channel whose schedule is being deleted.
    #   @return [String]
    class DeleteScheduleRequest < Struct.new(
      :channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteScheduleResponse
    class DeleteScheduleResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteSdiSourceRequest
    # @!attribute sdi_source_id
    #   The ID of the SdiSource.
    #   @return [String]
    class DeleteSdiSourceRequest < Struct.new(
      :sdi_source_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteSdiSourceResponse
    # @!attribute sdi_source
    #   Settings for the SDI source.
    #   @return [Types::SdiSource]
    class DeleteSdiSourceResponse < Struct.new(
      :sdi_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteSignalMapRequest
    # @!attribute identifier
    #   A signal map's identifier. Can be either be its id or current name.
    #   @return [String]
    class DeleteSignalMapRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DeleteTagsRequest
    # @!attribute resource_arn
    #   Placeholder documentation for __string
    #   @return [String]
    # @!attribute tag_keys
    #   An array of tag keys to delete
    #   @return [Array<String>]
    class DeleteTagsRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeAccountConfigurationRequest
    class DescribeAccountConfigurationRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeAccountConfigurationResponse
    # @!attribute account_configuration
    #   Placeholder documentation for AccountConfiguration
    #   @return [Types::AccountConfiguration]
    class DescribeAccountConfigurationResponse < Struct.new(
      :account_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Elemental anywhere settings
    # @!attribute channel_placement_group_id
    #   The ID of the channel placement group for the channel.
    #   @return [String]
    # @!attribute cluster_id
    #   The ID of the cluster for the channel.
    #   @return [String]
    class DescribeAnywhereSettings < Struct.new(
      :channel_placement_group_id,
      :cluster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeChannelPlacementGroupRequest
    # @!attribute channel_placement_group_id
    #   The ID of the channel placement group.
    #   @return [String]
    # @!attribute cluster_id
    #   The ID of the cluster.
    #   @return [String]
    class DescribeChannelPlacementGroupRequest < Struct.new(
      :channel_placement_group_id,
      :cluster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeChannelPlacementGroupResponse
    # @!attribute arn
    #   The ARN of this ChannelPlacementGroup. It is automatically assigned when the ChannelPlacementGroup is created.
    #   @return [String]
    # @!attribute channels
    #   Used in ListChannelPlacementGroupsResult
    #   @return [Array<String>]
    # @!attribute cluster_id
    #   The ID of the Cluster that the Node belongs to.
    #   @return [String]
    # @!attribute id
    #   The ID of the ChannelPlacementGroup. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the ChannelPlacementGroup.
    #   @return [String]
    # @!attribute nodes
    #   An array with one item, which is the single Node that is associated with the ChannelPlacementGroup.
    #   @return [Array<String>]
    # @!attribute state
    #   The current state of the ChannelPlacementGroup.
    #   @return [String]
    class DescribeChannelPlacementGroupResponse < Struct.new(
      :arn,
      :channels,
      :cluster_id,
      :id,
      :name,
      :nodes,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Contains the response for ListChannelPlacementGroups
    # @!attribute arn
    #   The ARN of this ChannelPlacementGroup. It is automatically assigned when the ChannelPlacementGroup is created.
    #   @return [String]
    # @!attribute channels
    #   Used in ListChannelPlacementGroupsResult
    #   @return [Array<String>]
    # @!attribute cluster_id
    #   The ID of the Cluster that the Node belongs to.
    #   @return [String]
    # @!attribute id
    #   The ID of the ChannelPlacementGroup. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the ChannelPlacementGroup.
    #   @return [String]
    # @!attribute nodes
    #   An array with one item, which is the single Node that is associated with the ChannelPlacementGroup.
    #   @return [Array<String>]
    # @!attribute state
    #   The current state of the ChannelPlacementGroup.
    #   @return [String]
    class DescribeChannelPlacementGroupSummary < Struct.new(
      :arn,
      :channels,
      :cluster_id,
      :id,
      :name,
      :nodes,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeChannelRequest
    # @!attribute channel_id
    #   channel ID
    #   @return [String]
    class DescribeChannelRequest < Struct.new(
      :channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeChannelResponse
    # @!attribute arn
    #   The unique arn of the channel.
    #   @return [String]
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #   @return [String]
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #   @return [Array<Types::OutputDestination>]
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #   @return [Array<Types::ChannelEgressEndpoint>]
    # @!attribute encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    # @!attribute id
    #   The unique id of the channel.
    #   @return [String]
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #   @return [Array<Types::InputAttachment>]
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #   @return [String]
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #   @return [Types::MaintenanceStatus]
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #   @return [String]
    # @!attribute pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #   @return [Array<Types::PipelineDetail>]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #   @return [String]
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute vpc
    #   Settings for VPC output
    #   @return [Types::VpcOutputSettingsDescription]
    # @!attribute anywhere_settings
    #   Anywhere settings for this channel.
    #   @return [Types::DescribeAnywhereSettings]
    # @!attribute channel_engine_version
    #   Requested engine version for this channel.
    #   @return [Types::ChannelEngineVersionResponse]
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
      :maintenance,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      :anywhere_settings,
      :channel_engine_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeClusterRequest
    # @!attribute cluster_id
    #   The ID of the cluster.
    #   @return [String]
    class DescribeClusterRequest < Struct.new(
      :cluster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeClusterResponse
    # @!attribute arn
    #   The ARN of this Cluster. It is automatically assigned when the Cluster is created.
    #   @return [String]
    # @!attribute channel_ids
    #   Placeholder documentation for __listOf__string
    #   @return [Array<String>]
    # @!attribute cluster_type
    #   The hardware type for the Cluster
    #   @return [String]
    # @!attribute id
    #   The ID of the  Cluster. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute instance_role_arn
    #   The ARN of the IAM role for the Node in this Cluster. Any Nodes that are associated with this Cluster assume this role. The role gives permissions to the operations that you expect these Node to perform.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the Cluster.
    #   @return [String]
    # @!attribute network_settings
    #   Network settings that connect the Nodes in the Cluster to one or more of the Networks that the Cluster is associated with.
    #   @return [Types::ClusterNetworkSettings]
    # @!attribute state
    #   The current state of the Cluster.
    #   @return [String]
    class DescribeClusterResponse < Struct.new(
      :arn,
      :channel_ids,
      :cluster_type,
      :id,
      :instance_role_arn,
      :name,
      :network_settings,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in ListClustersResult.
    # @!attribute arn
    #   The ARN of this Cluster. It is automatically assigned when the Cluster is created.
    #   @return [String]
    # @!attribute channel_ids
    #   An array of the IDs of the Channels that are associated with this Cluster. One Channel is associated with the Cluster as follows: A Channel belongs to a ChannelPlacementGroup. A ChannelPlacementGroup is attached to a Node. A Node belongs to a Cluster.
    #   @return [Array<String>]
    # @!attribute cluster_type
    #   The hardware type for the Cluster.
    #   @return [String]
    # @!attribute id
    #   The ID of the Cluster. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute instance_role_arn
    #   The ARN of the IAM role for the Node in this Cluster. Any Nodes that are associated with this Cluster assume this role. The role gives permissions to the operations that you expect these Node to perform.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the Cluster.
    #   @return [String]
    # @!attribute network_settings
    #   Network settings that connect the Nodes in the Cluster to one or more of the Networks that the Cluster is associated with.
    #   @return [Types::ClusterNetworkSettings]
    # @!attribute state
    #   The current state of the Cluster.
    #   @return [String]
    class DescribeClusterSummary < Struct.new(
      :arn,
      :channel_ids,
      :cluster_type,
      :id,
      :instance_role_arn,
      :name,
      :network_settings,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeInputDeviceRequest
    # @!attribute input_device_id
    #   The unique ID of this input device. For example, hd-123456789abcdef.
    #   @return [String]
    class DescribeInputDeviceRequest < Struct.new(
      :input_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeInputDeviceResponse
    # @!attribute arn
    #   The unique ARN of the input device.
    #   @return [String]
    # @!attribute connection_state
    #   The state of the connection between the input device and AWS.
    #   @return [String]
    # @!attribute device_settings_sync_state
    #   The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
    #   @return [String]
    # @!attribute device_update_status
    #   The status of software on the input device.
    #   @return [String]
    # @!attribute hd_device_settings
    #   Settings that describe an input device that is type HD.
    #   @return [Types::InputDeviceHdSettings]
    # @!attribute id
    #   The unique ID of the input device.
    #   @return [String]
    # @!attribute mac_address
    #   The network MAC address of the input device.
    #   @return [String]
    # @!attribute name
    #   A name that you specify for the input device.
    #   @return [String]
    # @!attribute network_settings
    #   The network settings for the input device.
    #   @return [Types::InputDeviceNetworkSettings]
    # @!attribute serial_number
    #   The unique serial number of the input device.
    #   @return [String]
    # @!attribute type
    #   The type of the input device.
    #   @return [String]
    # @!attribute uhd_device_settings
    #   Settings that describe an input device that is type UHD.
    #   @return [Types::InputDeviceUhdSettings]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute availability_zone
    #   The Availability Zone associated with this input device.
    #   @return [String]
    # @!attribute medialive_input_arns
    #   An array of the ARNs for the MediaLive inputs attached to the device. Returned only if the outputType is MEDIALIVE_INPUT.
    #   @return [Array<String>]
    # @!attribute output_type
    #   The output attachment type of the input device. Specifies MEDIACONNECT_FLOW if this device is the source for a MediaConnect flow. Specifies MEDIALIVE_INPUT if this device is the source for a MediaLive input.
    #   @return [String]
    class DescribeInputDeviceResponse < Struct.new(
      :arn,
      :connection_state,
      :device_settings_sync_state,
      :device_update_status,
      :hd_device_settings,
      :id,
      :mac_address,
      :name,
      :network_settings,
      :serial_number,
      :type,
      :uhd_device_settings,
      :tags,
      :availability_zone,
      :medialive_input_arns,
      :output_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeInputDeviceThumbnailRequest
    # @!attribute input_device_id
    #   The unique ID of this input device. For example, hd-123456789abcdef.
    #   @return [String]
    # @!attribute accept
    #   The HTTP Accept header. Indicates the requested type for the thumbnail.
    #   @return [String]
    class DescribeInputDeviceThumbnailRequest < Struct.new(
      :input_device_id,
      :accept,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeInputDeviceThumbnailResponse
    # @!attribute body
    #   The binary data for the thumbnail that the Link device has most recently sent to MediaLive.
    #   @return [String]
    # @!attribute content_type
    #   Specifies the media type of the thumbnail.
    #   @return [String]
    # @!attribute content_length
    #   The length of the content.
    #   @return [Integer]
    # @!attribute e_tag
    #   The unique, cacheable version of this thumbnail.
    #   @return [String]
    # @!attribute last_modified
    #   The date and time the thumbnail was last updated at the device.
    #   @return [Time]
    class DescribeInputDeviceThumbnailResponse < Struct.new(
      :body,
      :content_type,
      :content_length,
      :e_tag,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:body] = Base64.strict_decode64('') unless options.key?(:body)
        super
      end
    end

    # Placeholder documentation for DescribeInputRequest
    # @!attribute input_id
    #   Unique ID of the input
    #   @return [String]
    class DescribeInputRequest < Struct.new(
      :input_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeInputResponse
    # @!attribute arn
    #   The Unique ARN of the input (generated, immutable).
    #   @return [String]
    # @!attribute attached_channels
    #   A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
    #   @return [Array<String>]
    # @!attribute destinations
    #   A list of the destinations of the input (PUSH-type).
    #   @return [Array<Types::InputDestination>]
    # @!attribute id
    #   The generated ID of the input (unique for user account, immutable).
    #   @return [String]
    # @!attribute input_class
    #   STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails.
    #   SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.
    #   @return [String]
    # @!attribute input_devices
    #   Settings for the input devices.
    #   @return [Array<Types::InputDeviceSettings>]
    # @!attribute input_partner_ids
    #   A list of IDs for all Inputs which are partners of this one.
    #   @return [Array<String>]
    # @!attribute input_source_type
    #   Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes
    #   during input switch actions. Presently, this functionality only works with MP4_FILE and TS_FILE inputs.
    #   @return [String]
    # @!attribute media_connect_flows
    #   A list of MediaConnect Flows for this input.
    #   @return [Array<Types::MediaConnectFlow>]
    # @!attribute name
    #   The user-assigned name (This is a mutable value).
    #   @return [String]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
    #   @return [String]
    # @!attribute security_groups
    #   A list of IDs for all the Input Security Groups attached to the input.
    #   @return [Array<String>]
    # @!attribute sources
    #   A list of the sources of the input (PULL-type).
    #   @return [Array<Types::InputSource>]
    # @!attribute state
    #   Placeholder documentation for InputState
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute type
    #   The different types of inputs that AWS Elemental MediaLive supports.
    #   @return [String]
    # @!attribute srt_settings
    #   The settings associated with an SRT input.
    #   @return [Types::SrtSettings]
    # @!attribute input_network_location
    #   The location of this input. AWS, for an input existing in the AWS Cloud, On-Prem for
    #   an input in a customer network.
    #   @return [String]
    # @!attribute multicast_settings
    #   Multicast Input settings.
    #   @return [Types::MulticastSettings]
    # @!attribute smpte2110_receiver_group_settings
    #   Include this parameter if the input is a SMPTE 2110 input, to identify the stream sources for this input.
    #   @return [Types::Smpte2110ReceiverGroupSettings]
    # @!attribute sdi_sources
    #   SDI Sources for this Input.
    #   @return [Array<String>]
    class DescribeInputResponse < Struct.new(
      :arn,
      :attached_channels,
      :destinations,
      :id,
      :input_class,
      :input_devices,
      :input_partner_ids,
      :input_source_type,
      :media_connect_flows,
      :name,
      :role_arn,
      :security_groups,
      :sources,
      :state,
      :tags,
      :type,
      :srt_settings,
      :input_network_location,
      :multicast_settings,
      :smpte2110_receiver_group_settings,
      :sdi_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeInputSecurityGroupRequest
    # @!attribute input_security_group_id
    #   The id of the Input Security Group to describe
    #   @return [String]
    class DescribeInputSecurityGroupRequest < Struct.new(
      :input_security_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeInputSecurityGroupResponse
    # @!attribute arn
    #   Unique ARN of Input Security Group
    #   @return [String]
    # @!attribute id
    #   The Id of the Input Security Group
    #   @return [String]
    # @!attribute inputs
    #   The list of inputs currently using this Input Security Group.
    #   @return [Array<String>]
    # @!attribute state
    #   The current state of the Input Security Group.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute whitelist_rules
    #   Whitelist rules and their sync status
    #   @return [Array<Types::InputWhitelistRule>]
    class DescribeInputSecurityGroupResponse < Struct.new(
      :arn,
      :id,
      :inputs,
      :state,
      :tags,
      :whitelist_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeMultiplexProgramRequest
    # @!attribute multiplex_id
    #   The ID of the multiplex that the program belongs to.
    #   @return [String]
    # @!attribute program_name
    #   The name of the program.
    #   @return [String]
    class DescribeMultiplexProgramRequest < Struct.new(
      :multiplex_id,
      :program_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeMultiplexProgramResponse
    # @!attribute channel_id
    #   The MediaLive channel associated with the program.
    #   @return [String]
    # @!attribute multiplex_program_settings
    #   The settings for this multiplex program.
    #   @return [Types::MultiplexProgramSettings]
    # @!attribute packet_identifiers_map
    #   The packet identifier map for this multiplex program.
    #   @return [Types::MultiplexProgramPacketIdentifiersMap]
    # @!attribute pipeline_details
    #   Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time.
    #   @return [Array<Types::MultiplexProgramPipelineDetail>]
    # @!attribute program_name
    #   The name of the multiplex program.
    #   @return [String]
    class DescribeMultiplexProgramResponse < Struct.new(
      :channel_id,
      :multiplex_program_settings,
      :packet_identifiers_map,
      :pipeline_details,
      :program_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeMultiplexRequest
    # @!attribute multiplex_id
    #   The ID of the multiplex.
    #   @return [String]
    class DescribeMultiplexRequest < Struct.new(
      :multiplex_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeMultiplexResponse
    # @!attribute arn
    #   The unique arn of the multiplex.
    #   @return [String]
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #   @return [Array<String>]
    # @!attribute destinations
    #   A list of the multiplex output destinations.
    #   @return [Array<Types::MultiplexOutputDestination>]
    # @!attribute id
    #   The unique id of the multiplex.
    #   @return [String]
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #   @return [Types::MultiplexSettings]
    # @!attribute name
    #   The name of the multiplex.
    #   @return [String]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #   @return [Integer]
    # @!attribute state
    #   The current state of the multiplex.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeNetworkRequest
    # @!attribute network_id
    #   The ID of the network.
    #   @return [String]
    class DescribeNetworkRequest < Struct.new(
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeNetworkResponse
    # @!attribute arn
    #   The ARN of this Network. It is automatically assigned when the Network is created.
    #   @return [String]
    # @!attribute associated_cluster_ids
    #   Placeholder documentation for __listOf__string
    #   @return [Array<String>]
    # @!attribute id
    #   The ID of the Network. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute ip_pools
    #   An array of IpPools in your organization's network that identify a collection of IP addresses in this network that are reserved for use in MediaLive Anywhere. MediaLive Anywhere uses these IP addresses for Push inputs (in both Bridge and NAT networks) and for output destinations (only in Bridge networks). Each IpPool specifies one CIDR block.
    #   @return [Array<Types::IpPool>]
    # @!attribute name
    #   The name that you specified for the Network.
    #   @return [String]
    # @!attribute routes
    #   An array of routes that MediaLive Anywhere needs to know about in order to route encoding traffic.
    #   @return [Array<Types::Route>]
    # @!attribute state
    #   The current state of the Network. Only MediaLive Anywhere can change the state.
    #   @return [String]
    class DescribeNetworkResponse < Struct.new(
      :arn,
      :associated_cluster_ids,
      :id,
      :ip_pools,
      :name,
      :routes,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in ListNetworksResult.
    # @!attribute arn
    #   The ARN of this Network. It is automatically assigned when the Network is created.
    #   @return [String]
    # @!attribute associated_cluster_ids
    #   Placeholder documentation for __listOf__string
    #   @return [Array<String>]
    # @!attribute id
    #   The ID of the Network. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute ip_pools
    #   An array of IpPools in your organization's network that identify a collection of IP addresses in your organization's network that are reserved for use in MediaLive Anywhere. MediaLive Anywhere uses these IP addresses for Push inputs (in both Bridge and NAT networks) and for output destinations (only in Bridge networks). Each IpPool specifies one CIDR block.
    #   @return [Array<Types::IpPool>]
    # @!attribute name
    #   The name that you specified for this Network.
    #   @return [String]
    # @!attribute routes
    #   An array of routes that MediaLive Anywhere needs to know about in order to route encoding traffic.
    #   @return [Array<Types::Route>]
    # @!attribute state
    #   The current state of the Network. Only MediaLive Anywhere can change the state.
    #   @return [String]
    class DescribeNetworkSummary < Struct.new(
      :arn,
      :associated_cluster_ids,
      :id,
      :ip_pools,
      :name,
      :routes,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeNodeRequest
    # @!attribute cluster_id
    #   The ID of the cluster
    #   @return [String]
    # @!attribute node_id
    #   The ID of the node.
    #   @return [String]
    class DescribeNodeRequest < Struct.new(
      :cluster_id,
      :node_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeNodeResponse
    # @!attribute arn
    #   The ARN of the Node. It is automatically assigned when the Node is created.
    #   @return [String]
    # @!attribute channel_placement_groups
    #   An array of IDs. Each ID is one ChannelPlacementGroup that is associated with this Node. Empty if the Node is not yet associated with any groups.
    #   @return [Array<String>]
    # @!attribute cluster_id
    #   The ID of the Cluster that the Node belongs to.
    #   @return [String]
    # @!attribute connection_state
    #   The current connection state of the Node.
    #   @return [String]
    # @!attribute id
    #   The unique ID of the Node. Unique in the Cluster. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute instance_arn
    #   The ARN of the EC2 instance hosting the Node.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the Node.
    #   @return [String]
    # @!attribute node_interface_mappings
    #   Documentation update needed
    #   @return [Array<Types::NodeInterfaceMapping>]
    # @!attribute role
    #   The initial role current role of the Node in the Cluster. ACTIVE means the Node is available for encoding. BACKUP means the Node is a redundant Node and might get used if an ACTIVE Node fails.
    #   @return [String]
    # @!attribute state
    #   The current state of the Node.
    #   @return [String]
    # @!attribute sdi_source_mappings
    #   An array of SDI source mappings. Each mapping connects one logical SdiSource to the physical SDI card and port that the physical SDI source uses.
    #   @return [Array<Types::SdiSourceMapping>]
    class DescribeNodeResponse < Struct.new(
      :arn,
      :channel_placement_groups,
      :cluster_id,
      :connection_state,
      :id,
      :instance_arn,
      :name,
      :node_interface_mappings,
      :role,
      :state,
      :sdi_source_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeNodeSummary
    # @!attribute arn
    #   The ARN of the Node. It is automatically assigned when the Node is created.
    #   @return [String]
    # @!attribute channel_placement_groups
    #   An array of IDs. Each ID is one ChannelPlacementGroup that is associated with this Node. Empty if the Node is not yet associated with any groups.
    #   @return [Array<String>]
    # @!attribute cluster_id
    #   The ID of the Cluster that the Node belongs to.
    #   @return [String]
    # @!attribute connection_state
    #   The current connection state of the Node.
    #   @return [String]
    # @!attribute id
    #   The unique ID of the Node. Unique in the Cluster. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute instance_arn
    #   The EC2 ARN of the Instance associated with the Node.
    #   @return [String]
    # @!attribute managed_instance_id
    #   At the routing layer will get it from the callerId/context for use with bring your own device.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the Node.
    #   @return [String]
    # @!attribute node_interface_mappings
    #   Documentation update needed
    #   @return [Array<Types::NodeInterfaceMapping>]
    # @!attribute role
    #   The initial role current role of the Node in the Cluster. ACTIVE means the Node is available for encoding. BACKUP means the Node is a redundant Node and might get used if an ACTIVE Node fails.
    #   @return [String]
    # @!attribute state
    #   The current state of the Node.
    #   @return [String]
    # @!attribute sdi_source_mappings
    #   An array of SDI source mappings. Each mapping connects one logical SdiSource to the physical SDI card and port that the physical SDI source uses.
    #   @return [Array<Types::SdiSourceMapping>]
    class DescribeNodeSummary < Struct.new(
      :arn,
      :channel_placement_groups,
      :cluster_id,
      :connection_state,
      :id,
      :instance_arn,
      :managed_instance_id,
      :name,
      :node_interface_mappings,
      :role,
      :state,
      :sdi_source_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeOfferingRequest
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #   @return [String]
    class DescribeOfferingRequest < Struct.new(
      :offering_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeOfferingResponse
    # @!attribute arn
    #   Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'
    #   @return [String]
    # @!attribute currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
    #   @return [String]
    # @!attribute duration
    #   Lease duration, e.g. '12'
    #   @return [Integer]
    # @!attribute duration_units
    #   Units for duration, e.g. 'MONTHS'
    #   @return [String]
    # @!attribute fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
    #   @return [Float]
    # @!attribute offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
    #   @return [String]
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #   @return [String]
    # @!attribute offering_type
    #   Offering type, e.g. 'NO_UPFRONT'
    #   @return [String]
    # @!attribute region
    #   AWS region, e.g. 'us-west-2'
    #   @return [String]
    # @!attribute resource_specification
    #   Resource configuration details
    #   @return [Types::ReservationResourceSpecification]
    # @!attribute usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #   @return [Float]
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
      :usage_price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeReservationRequest
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #   @return [String]
    class DescribeReservationRequest < Struct.new(
      :reservation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeReservationResponse
    # @!attribute arn
    #   Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
    #   @return [String]
    # @!attribute count
    #   Number of reserved resources
    #   @return [Integer]
    # @!attribute currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
    #   @return [String]
    # @!attribute duration
    #   Lease duration, e.g. '12'
    #   @return [Integer]
    # @!attribute duration_units
    #   Units for duration, e.g. 'MONTHS'
    #   @return [String]
    # @!attribute end
    #   Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
    #   @return [String]
    # @!attribute fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
    #   @return [Float]
    # @!attribute name
    #   User specified reservation name
    #   @return [String]
    # @!attribute offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
    #   @return [String]
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #   @return [String]
    # @!attribute offering_type
    #   Offering type, e.g. 'NO_UPFRONT'
    #   @return [String]
    # @!attribute region
    #   AWS region, e.g. 'us-west-2'
    #   @return [String]
    # @!attribute renewal_settings
    #   Renewal settings for the reservation
    #   @return [Types::RenewalSettings]
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #   @return [String]
    # @!attribute resource_specification
    #   Resource configuration details
    #   @return [Types::ReservationResourceSpecification]
    # @!attribute start
    #   Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
    #   @return [String]
    # @!attribute state
    #   Current state of reservation, e.g. 'ACTIVE'
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs
    #   @return [Hash<String, String>]
    # @!attribute usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #   @return [Float]
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
      :renewal_settings,
      :reservation_id,
      :resource_specification,
      :start,
      :state,
      :tags,
      :usage_price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeScheduleRequest
    # @!attribute channel_id
    #   Id of the channel whose schedule is being updated.
    #   @return [String]
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    class DescribeScheduleRequest < Struct.new(
      :channel_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeScheduleResponse
    # @!attribute next_token
    #   The next token; for use in pagination.
    #   @return [String]
    # @!attribute schedule_actions
    #   The list of actions in the schedule.
    #   @return [Array<Types::ScheduleAction>]
    class DescribeScheduleResponse < Struct.new(
      :next_token,
      :schedule_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeSdiSourceRequest
    # @!attribute sdi_source_id
    #   Get details about an SdiSource.
    #   @return [String]
    class DescribeSdiSourceRequest < Struct.new(
      :sdi_source_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeSdiSourceResponse
    # @!attribute sdi_source
    #   Settings for the SDI source.
    #   @return [Types::SdiSource]
    class DescribeSdiSourceResponse < Struct.new(
      :sdi_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeThumbnailsRequest
    # @!attribute channel_id
    #   Unique ID of the channel
    #   @return [String]
    # @!attribute pipeline_id
    #   Pipeline ID ("0" or "1")
    #   @return [String]
    # @!attribute thumbnail_type
    #   thumbnail type
    #   @return [String]
    class DescribeThumbnailsRequest < Struct.new(
      :channel_id,
      :pipeline_id,
      :thumbnail_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for DescribeThumbnailsResponse
    # @!attribute thumbnail_details
    #   Placeholder documentation for __listOfThumbnailDetail
    #   @return [Array<Types::ThumbnailDetail>]
    class DescribeThumbnailsResponse < Struct.new(
      :thumbnail_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Dolby Vision81 Settings
    class DolbyVision81Settings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # DVB Network Information Table (NIT)
    # @!attribute network_id
    #   The numeric value placed in the Network Information Table (NIT).
    #   @return [Integer]
    # @!attribute network_name
    #   The network name text placed in the networkNameDescriptor inside the Network Information Table. Maximum length is 256 characters.
    #   @return [String]
    # @!attribute rep_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #   @return [Integer]
    class DvbNitSettings < Struct.new(
      :network_id,
      :network_name,
      :rep_interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # DVB Service Description Table (SDT)
    # @!attribute output_sdt
    #   Selects method of inserting SDT information into output stream. The sdtFollow setting copies SDT information from input stream to output stream. The sdtFollowIfPresent setting copies SDT information from input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. The sdtManual setting means user will enter the SDT information. The sdtNone setting means output stream will not contain SDT information.
    #   @return [String]
    # @!attribute rep_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #   @return [Integer]
    # @!attribute service_name
    #   The service name placed in the serviceDescriptor in the Service Description Table. Maximum length is 256 characters.
    #   @return [String]
    # @!attribute service_provider_name
    #   The service provider name placed in the serviceDescriptor in the Service Description Table. Maximum length is 256 characters.
    #   @return [String]
    class DvbSdtSettings < Struct.new(
      :output_sdt,
      :rep_interval,
      :service_name,
      :service_provider_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Dvb Sub Destination Settings
    # @!attribute alignment
    #   If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  This option is not valid for source captions that are STL or 608/embedded.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute background_color
    #   Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute background_opacity
    #   Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute font
    #   External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
    #   @return [Types::InputLocation]
    # @!attribute font_color
    #   Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute font_opacity
    #   Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute font_resolution
    #   Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute font_size
    #   When set to auto fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute outline_color
    #   Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute outline_size
    #   Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute shadow_color
    #   Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
    #   @return [String]
    # @!attribute shadow_opacity
    #   Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute shadow_x_offset
    #   Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute shadow_y_offset
    #   Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute teletext_grid_control
    #   Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
    #   @return [String]
    # @!attribute x_position
    #   Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute y_position
    #   Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute subtitle_rows
    #   Applies only when the input captions are Teletext and the output captions are DVB-Sub or Burn-In. Choose the number of lines for the captions bitmap. The captions bitmap is 700 wide × 576 high and will be laid over the video. For example, a value of 16 divides the bitmap into 16 lines, with each line 36 pixels high (16 × 36 = 576). The default is 24 (24 pixels high). Enter the same number in every encode in every output that converts the same Teletext source to DVB-Sub or Burn-in.
    #   @return [String]
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
      :y_position,
      :subtitle_rows,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Dvb Sub Source Settings
    # @!attribute ocr_language
    #   If you will configure a WebVTT caption description that references this caption selector, use this field to
    #   provide the language to consider when translating the image-based source to text.
    #   @return [String]
    # @!attribute pid
    #   When using DVB-Sub with Burn-In or SMPTE-TT, use this PID for the source content. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors.
    #   @return [Integer]
    class DvbSubSourceSettings < Struct.new(
      :ocr_language,
      :pid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # DVB Time and Date Table (SDT)
    # @!attribute rep_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #   @return [Integer]
    class DvbTdtSettings < Struct.new(
      :rep_interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Eac3 Atmos Settings
    # @!attribute bitrate
    #   Average bitrate in bits/second. Valid bitrates depend on the coding mode.
    #   @return [Float]
    # @!attribute coding_mode
    #   Dolby Digital Plus with Dolby Atmos coding mode. Determines number of channels.
    #   @return [String]
    # @!attribute dialnorm
    #   Sets the dialnorm for the output. Default 23.
    #   @return [Integer]
    # @!attribute drc_line
    #   Sets the Dolby dynamic range compression profile.
    #   @return [String]
    # @!attribute drc_rf
    #   Sets the profile for heavy Dolby dynamic range compression, ensures that the instantaneous signal peaks do not exceed specified levels.
    #   @return [String]
    # @!attribute height_trim
    #   Height dimensional trim. Sets the maximum amount to attenuate the height channels when the downstream player isn??t configured to handle Dolby Digital Plus with Dolby Atmos and must remix the channels.
    #   @return [Float]
    # @!attribute surround_trim
    #   Surround dimensional trim. Sets the maximum amount to attenuate the surround channels when the downstream player isn't configured to handle Dolby Digital Plus with Dolby Atmos and must remix the channels.
    #   @return [Float]
    class Eac3AtmosSettings < Struct.new(
      :bitrate,
      :coding_mode,
      :dialnorm,
      :drc_line,
      :drc_rf,
      :height_trim,
      :surround_trim,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Eac3 Settings
    # @!attribute attenuation_control
    #   When set to attenuate3Db, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.
    #   @return [String]
    # @!attribute bitrate
    #   Average bitrate in bits/second. Valid bitrates depend on the coding mode.
    #   @return [Float]
    # @!attribute bitstream_mode
    #   Specifies the bitstream mode (bsmod) for the emitted E-AC-3 stream. See ATSC A/52-2012 (Annex E) for background on these values.
    #   @return [String]
    # @!attribute coding_mode
    #   Dolby Digital Plus coding mode. Determines number of channels.
    #   @return [String]
    # @!attribute dc_filter
    #   When set to enabled, activates a DC highpass filter for all input channels.
    #   @return [String]
    # @!attribute dialnorm
    #   Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through.
    #   @return [Integer]
    # @!attribute drc_line
    #   Sets the Dolby dynamic range compression profile.
    #   @return [String]
    # @!attribute drc_rf
    #   Sets the profile for heavy Dolby dynamic range compression, ensures that the instantaneous signal peaks do not exceed specified levels.
    #   @return [String]
    # @!attribute lfe_control
    #   When encoding 3/2 audio, setting to lfe enables the LFE channel
    #   @return [String]
    # @!attribute lfe_filter
    #   When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with codingMode32 coding mode.
    #   @return [String]
    # @!attribute lo_ro_center_mix_level
    #   Left only/Right only center mix level. Only used for 3/2 coding mode.
    #   @return [Float]
    # @!attribute lo_ro_surround_mix_level
    #   Left only/Right only surround mix level. Only used for 3/2 coding mode.
    #   @return [Float]
    # @!attribute lt_rt_center_mix_level
    #   Left total/Right total center mix level. Only used for 3/2 coding mode.
    #   @return [Float]
    # @!attribute lt_rt_surround_mix_level
    #   Left total/Right total surround mix level. Only used for 3/2 coding mode.
    #   @return [Float]
    # @!attribute metadata_control
    #   When set to followInput, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
    #   @return [String]
    # @!attribute passthrough_control
    #   When set to whenPossible, input DD+ audio will be passed through if it is present on the input. This detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.
    #   @return [String]
    # @!attribute phase_control
    #   When set to shift90Degrees, applies a 90-degree phase shift to the surround channels. Only used for 3/2 coding mode.
    #   @return [String]
    # @!attribute stereo_downmix
    #   Stereo downmix preference. Only used for 3/2 coding mode.
    #   @return [String]
    # @!attribute surround_ex_mode
    #   When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels.
    #   @return [String]
    # @!attribute surround_mode
    #   When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.
    #   @return [String]
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
      :surround_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Ebu Tt DDestination Settings
    # @!attribute copyright_holder
    #   Complete this field if you want to include the name of the copyright holder in the copyright tag in the captions metadata.
    #   @return [String]
    # @!attribute fill_line_gap
    #   Specifies how to handle the gap between the lines (in multi-line captions). ENABLED: Fill with the captions background color (as specified in the input captions). DISABLED: Leave the gap unfilled
    #   @return [String]
    # @!attribute font_family
    #   Specifies the font family to include in the font data attached to the EBU-TT captions. Valid only if style_control is set to include. (If style_control is set to exclude, the font family is always set to monospaced.) Enter a list of font families, as a comma-separated list of font names, in order of preference. The name can be a font family (such as Arial), or a generic font family (such as serif), or default (to let the downstream player choose the font). Or leave blank to set the family to monospace. Note that you can specify only the font family. All other style information (color, bold, position and so on) is copied from the input captions. The size is always set to 100% to allow the downstream player to choose the size.
    #   @return [String]
    # @!attribute style_control
    #   Specifies the style information to include in the font data that is attached to the EBU-TT captions. INCLUDE: Take the style information from the source captions and include that information in the font data attached to the EBU-TT captions. This option is valid only if the source captions are Embedded or Teletext. EXCLUDE: Set the font family to monospaced. Do not include any other style information.
    #   @return [String]
    # @!attribute default_font_size
    #   Specifies the default font size as a percentage of the computed cell size. Valid only if the defaultLineHeight is also set. If you leave this field empty, the default font size is 80% of the cell size.
    #   @return [Integer]
    # @!attribute default_line_height
    #   Documentation update needed
    #   @return [Integer]
    class EbuTtDDestinationSettings < Struct.new(
      :copyright_holder,
      :fill_line_gap,
      :font_family,
      :style_control,
      :default_font_size,
      :default_line_height,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Embedded Destination Settings
    class EmbeddedDestinationSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Embedded Plus Scte20 Destination Settings
    class EmbeddedPlusScte20DestinationSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Embedded Source Settings
    # @!attribute convert608_to708
    #   If upconvert, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
    #   @return [String]
    # @!attribute scte20_detection
    #   Set to "auto" to handle streams with intermittent and/or non-aligned SCTE-20 and Embedded captions.
    #   @return [String]
    # @!attribute source608_channel_number
    #   Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
    #   @return [Integer]
    # @!attribute source608_track_number
    #   This field is unused and deprecated.
    #   @return [Integer]
    class EmbeddedSourceSettings < Struct.new(
      :convert608_to708,
      :scte20_detection,
      :source608_channel_number,
      :source608_track_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Encoder Settings
    # @!attribute audio_descriptions
    #   Placeholder documentation for __listOfAudioDescription
    #   @return [Array<Types::AudioDescription>]
    # @!attribute avail_blanking
    #   Settings for ad avail blanking.
    #   @return [Types::AvailBlanking]
    # @!attribute avail_configuration
    #   Event-wide configuration settings for ad avail insertion.
    #   @return [Types::AvailConfiguration]
    # @!attribute blackout_slate
    #   Settings for blackout slate.
    #   @return [Types::BlackoutSlate]
    # @!attribute caption_descriptions
    #   Settings for caption decriptions
    #   @return [Array<Types::CaptionDescription>]
    # @!attribute feature_activations
    #   Feature Activations
    #   @return [Types::FeatureActivations]
    # @!attribute global_configuration
    #   Configuration settings that apply to the event as a whole.
    #   @return [Types::GlobalConfiguration]
    # @!attribute motion_graphics_configuration
    #   Settings for motion graphics.
    #   @return [Types::MotionGraphicsConfiguration]
    # @!attribute nielsen_configuration
    #   Nielsen configuration settings.
    #   @return [Types::NielsenConfiguration]
    # @!attribute output_groups
    #   Placeholder documentation for __listOfOutputGroup
    #   @return [Array<Types::OutputGroup>]
    # @!attribute timecode_config
    #   Contains settings used to acquire and adjust timecode information from inputs.
    #   @return [Types::TimecodeConfig]
    # @!attribute video_descriptions
    #   Placeholder documentation for __listOfVideoDescription
    #   @return [Array<Types::VideoDescription>]
    # @!attribute thumbnail_configuration
    #   Thumbnail configuration settings.
    #   @return [Types::ThumbnailConfiguration]
    # @!attribute color_correction_settings
    #   Color Correction Settings
    #   @return [Types::ColorCorrectionSettings]
    class EncoderSettings < Struct.new(
      :audio_descriptions,
      :avail_blanking,
      :avail_configuration,
      :blackout_slate,
      :caption_descriptions,
      :feature_activations,
      :global_configuration,
      :motion_graphics_configuration,
      :nielsen_configuration,
      :output_groups,
      :timecode_config,
      :video_descriptions,
      :thumbnail_configuration,
      :color_correction_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Epoch Locking Settings
    # @!attribute custom_epoch
    #   Optional. Enter a value here to use a custom epoch, instead of the standard epoch (which started at 1970-01-01T00:00:00 UTC). Specify the start time of the custom epoch, in YYYY-MM-DDTHH:MM:SS in UTC. The time must be 2000-01-01T00:00:00 or later. Always set the MM:SS portion to 00:00.
    #   @return [String]
    # @!attribute jam_sync_time
    #   Optional. Enter a time for the jam sync. The default is midnight UTC. When epoch locking is enabled, MediaLive performs a daily jam sync on every output encode to ensure timecodes don’t diverge from the wall clock. The jam sync applies only to encodes with frame rate of 29.97 or 59.94 FPS. To override, enter a time in HH:MM:SS in UTC. Always set the MM:SS portion to 00:00.
    #   @return [String]
    class EpochLockingSettings < Struct.new(
      :custom_epoch,
      :jam_sync_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Esam
    # @!attribute acquisition_point_id
    #   Sent as acquisitionPointIdentity to identify the MediaLive channel to the POIS.
    #   @return [String]
    # @!attribute ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time. This only applies to embedded SCTE 104/35 messages and does not apply to OOB messages.
    #   @return [Integer]
    # @!attribute password_param
    #   Documentation update needed
    #   @return [String]
    # @!attribute pois_endpoint
    #   The URL of the signal conditioner endpoint on the Placement Opportunity Information System (POIS). MediaLive sends SignalProcessingEvents here when SCTE-35 messages are read.
    #   @return [String]
    # @!attribute username
    #   Documentation update needed
    #   @return [String]
    # @!attribute zone_identity
    #   Optional data sent as zoneIdentity to identify the MediaLive channel to the POIS.
    #   @return [String]
    class Esam < Struct.new(
      :acquisition_point_id,
      :ad_avail_offset,
      :password_param,
      :pois_endpoint,
      :username,
      :zone_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for EventBridgeRuleTemplateGroupSummary
    # @!attribute arn
    #   An eventbridge rule template group's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute id
    #   An eventbridge rule template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    # @!attribute template_count
    #   The number of templates in a group.
    #   @return [Integer]
    class EventBridgeRuleTemplateGroupSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :modified_at,
      :name,
      :tags,
      :template_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for EventBridgeRuleTemplateSummary
    # @!attribute arn
    #   An eventbridge rule template's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute event_target_count
    #   The number of targets configured to send matching events.
    #   @return [Integer]
    # @!attribute event_type
    #   The type of event to match with the rule.
    #   @return [String]
    # @!attribute group_id
    #   An eventbridge rule template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute id
    #   An eventbridge rule template's id. AWS provided templates have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class EventBridgeRuleTemplateSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :event_target_count,
      :event_type,
      :group_id,
      :id,
      :modified_at,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The target to which to send matching events.
    # @!attribute arn
    #   Target ARNs must be either an SNS topic or CloudWatch log group.
    #   @return [String]
    class EventBridgeRuleTemplateTarget < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Failover Condition settings. There can be multiple failover conditions inside AutomaticInputFailoverSettings.
    # @!attribute failover_condition_settings
    #   Failover condition type-specific settings.
    #   @return [Types::FailoverConditionSettings]
    class FailoverCondition < Struct.new(
      :failover_condition_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for one failover condition.
    # @!attribute audio_silence_settings
    #   MediaLive will perform a failover if the specified audio selector is silent for the specified period.
    #   @return [Types::AudioSilenceFailoverSettings]
    # @!attribute input_loss_settings
    #   MediaLive will perform a failover if content is not detected in this input for the specified period.
    #   @return [Types::InputLossFailoverSettings]
    # @!attribute video_black_settings
    #   MediaLive will perform a failover if content is considered black for the specified period.
    #   @return [Types::VideoBlackFailoverSettings]
    class FailoverConditionSettings < Struct.new(
      :audio_silence_settings,
      :input_loss_settings,
      :video_black_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Feature Activations
    # @!attribute input_prepare_schedule_actions
    #   Enables the Input Prepare feature. You can create Input Prepare actions in the schedule only if this feature is enabled.
    #   If you disable the feature on an existing schedule, make sure that you first delete all input prepare actions from the schedule.
    #   @return [String]
    # @!attribute output_static_image_overlay_schedule_actions
    #   Enables the output static image overlay feature. Enabling this feature allows you to send channel schedule updates
    #   to display/clear/modify image overlays on an output-by-output bases.
    #   @return [String]
    class FeatureActivations < Struct.new(
      :input_prepare_schedule_actions,
      :output_static_image_overlay_schedule_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Fec Output Settings
    # @!attribute column_depth
    #   Parameter D from SMPTE 2022-1. The height of the FEC protection matrix.  The number of transport stream packets per column error correction packet. Must be between 4 and 20, inclusive.
    #   @return [Integer]
    # @!attribute include_fec
    #   Enables column only or column and row based FEC
    #   @return [String]
    # @!attribute row_length
    #   Parameter L from SMPTE 2022-1. The width of the FEC protection matrix.  Must be between 1 and 20, inclusive. If only Column FEC is used, then larger values increase robustness.  If Row FEC is used, then this is the number of transport stream packets per row error correction packet, and the value must be between 4 and 20, inclusive, if includeFec is columnAndRow. If includeFec is column, this value must be 1 to 20, inclusive.
    #   @return [Integer]
    class FecOutputSettings < Struct.new(
      :column_depth,
      :include_fec,
      :row_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Start time for the action.
    # @!attribute time
    #   Start time for the action to start in the channel. (Not the time for the action to be added to the schedule: actions are always added to the schedule immediately.) UTC format: yyyy-mm-ddThh:mm:ss.nnnZ. All the letters are digits (for example, mm might be 01) except for the two constants "T" for time and "Z" for "UTC format".
    #   @return [String]
    class FixedModeScheduleActionStartSettings < Struct.new(
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Fmp4 Hls Settings
    # @!attribute audio_rendition_sets
    #   List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','.
    #   @return [String]
    # @!attribute nielsen_id3_behavior
    #   If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #   @return [String]
    # @!attribute timed_metadata_behavior
    #   Set to PASSTHROUGH to enable ID3 metadata insertion. To include metadata, you configure other parameters in the output group or individual outputs, or you add an ID3 action to the channel schedule.
    #   @return [String]
    class Fmp4HlsSettings < Struct.new(
      :audio_rendition_sets,
      :nielsen_id3_behavior,
      :timed_metadata_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings to specify if an action follows another.
    # @!attribute follow_point
    #   Identifies whether this action starts relative to the start or relative to the end of the reference action.
    #   @return [String]
    # @!attribute reference_action_name
    #   The action name of another action that this one refers to.
    #   @return [String]
    class FollowModeScheduleActionStartSettings < Struct.new(
      :follow_point,
      :reference_action_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ForbiddenException
    # @!attribute message
    #   Placeholder documentation for __string
    #   @return [String]
    class ForbiddenException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Frame Capture Cdn Settings
    # @!attribute frame_capture_s3_settings
    #   Frame Capture S3 Settings
    #   @return [Types::FrameCaptureS3Settings]
    class FrameCaptureCdnSettings < Struct.new(
      :frame_capture_s3_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Frame Capture Group Settings
    # @!attribute destination
    #   The destination for the frame capture files. Either the URI for an Amazon S3 bucket and object, plus a file name prefix (for example, s3ssl://sportsDelivery/highlights/20180820/curling-) or the URI for a MediaStore container, plus a file name prefix (for example, mediastoressl://sportsDelivery/20180820/curling-). The final file names consist of the prefix from the destination field (for example, "curling-") + name modifier + the counter (5 digits, starting from 00001) + extension (which is always .jpg).  For example, curling-low.00001.jpg
    #   @return [Types::OutputLocationRef]
    # @!attribute frame_capture_cdn_settings
    #   Parameters that control interactions with the CDN.
    #   @return [Types::FrameCaptureCdnSettings]
    class FrameCaptureGroupSettings < Struct.new(
      :destination,
      :frame_capture_cdn_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Frame Capture Hls Settings
    class FrameCaptureHlsSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Frame Capture Output Settings
    # @!attribute name_modifier
    #   Required if the output group contains more than one output. This modifier forms part of the output file name.
    #   @return [String]
    class FrameCaptureOutputSettings < Struct.new(
      :name_modifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Frame Capture S3 Settings
    # @!attribute canned_acl
    #   Specify the canned ACL to apply to each S3 request. Defaults to none.
    #   @return [String]
    class FrameCaptureS3Settings < Struct.new(
      :canned_acl,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Frame Capture Settings
    # @!attribute capture_interval
    #   The frequency at which to capture frames for inclusion in the output. May be specified in either seconds or milliseconds, as specified by captureIntervalUnits.
    #   @return [Integer]
    # @!attribute capture_interval_units
    #   Unit for the frame capture interval.
    #   @return [String]
    # @!attribute timecode_burnin_settings
    #   Timecode burn-in settings
    #   @return [Types::TimecodeBurninSettings]
    class FrameCaptureSettings < Struct.new(
      :capture_interval,
      :capture_interval_units,
      :timecode_burnin_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for GatewayTimeoutException
    # @!attribute message
    #   Placeholder documentation for __string
    #   @return [String]
    class GatewayTimeoutException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for GetCloudWatchAlarmTemplateGroupRequest
    # @!attribute identifier
    #   A cloudwatch alarm template group's identifier. Can be either be its id or current name.
    #   @return [String]
    class GetCloudWatchAlarmTemplateGroupRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for GetCloudWatchAlarmTemplateGroupResponse
    # @!attribute arn
    #   A cloudwatch alarm template group's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute id
    #   A cloudwatch alarm template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class GetCloudWatchAlarmTemplateGroupResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :modified_at,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for GetCloudWatchAlarmTemplateRequest
    # @!attribute identifier
    #   A cloudwatch alarm template's identifier. Can be either be its id or current name.
    #   @return [String]
    class GetCloudWatchAlarmTemplateRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for GetCloudWatchAlarmTemplateResponse
    # @!attribute arn
    #   A cloudwatch alarm template's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute comparison_operator
    #   The comparison operator used to compare the specified statistic and the threshold.
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute datapoints_to_alarm
    #   The number of datapoints within the evaluation period that must be breaching to trigger the alarm.
    #   @return [Integer]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute evaluation_periods
    #   The number of periods over which data is compared to the specified threshold.
    #   @return [Integer]
    # @!attribute group_id
    #   A cloudwatch alarm template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute id
    #   A cloudwatch alarm template's id. AWS provided templates have ids that start with `aws-`
    #   @return [String]
    # @!attribute metric_name
    #   The name of the metric associated with the alarm. Must be compatible with targetResourceType.
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute period
    #   The period, in seconds, over which the specified statistic is applied.
    #   @return [Integer]
    # @!attribute statistic
    #   The statistic to apply to the alarm's metric data.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    # @!attribute target_resource_type
    #   The resource type this template should dynamically generate cloudwatch metric alarms for.
    #   @return [String]
    # @!attribute threshold
    #   The threshold value to compare with the specified statistic.
    #   @return [Float]
    # @!attribute treat_missing_data
    #   Specifies how missing data points are treated when evaluating the alarm's condition.
    #   @return [String]
    class GetCloudWatchAlarmTemplateResponse < Struct.new(
      :arn,
      :comparison_operator,
      :created_at,
      :datapoints_to_alarm,
      :description,
      :evaluation_periods,
      :group_id,
      :id,
      :metric_name,
      :modified_at,
      :name,
      :period,
      :statistic,
      :tags,
      :target_resource_type,
      :threshold,
      :treat_missing_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for GetEventBridgeRuleTemplateGroupRequest
    # @!attribute identifier
    #   An eventbridge rule template group's identifier. Can be either be its id or current name.
    #   @return [String]
    class GetEventBridgeRuleTemplateGroupRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for GetEventBridgeRuleTemplateGroupResponse
    # @!attribute arn
    #   An eventbridge rule template group's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute id
    #   An eventbridge rule template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class GetEventBridgeRuleTemplateGroupResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :modified_at,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for GetEventBridgeRuleTemplateRequest
    # @!attribute identifier
    #   An eventbridge rule template's identifier. Can be either be its id or current name.
    #   @return [String]
    class GetEventBridgeRuleTemplateRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for GetEventBridgeRuleTemplateResponse
    # @!attribute arn
    #   An eventbridge rule template's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute event_targets
    #   Placeholder documentation for __listOfEventBridgeRuleTemplateTarget
    #   @return [Array<Types::EventBridgeRuleTemplateTarget>]
    # @!attribute event_type
    #   The type of event to match with the rule.
    #   @return [String]
    # @!attribute group_id
    #   An eventbridge rule template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute id
    #   An eventbridge rule template's id. AWS provided templates have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class GetEventBridgeRuleTemplateResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :event_targets,
      :event_type,
      :group_id,
      :id,
      :modified_at,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for GetSignalMapRequest
    # @!attribute identifier
    #   A signal map's identifier. Can be either be its id or current name.
    #   @return [String]
    class GetSignalMapRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for GetSignalMapResponse
    # @!attribute arn
    #   A signal map's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute cloud_watch_alarm_template_group_ids
    #   Placeholder documentation for __listOf__stringMin7Max11PatternAws097
    #   @return [Array<String>]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute discovery_entry_point_arn
    #   A top-level supported AWS resource ARN to discovery a signal map from.
    #   @return [String]
    # @!attribute error_message
    #   Error message associated with a failed creation or failed update attempt of a signal map.
    #   @return [String]
    # @!attribute event_bridge_rule_template_group_ids
    #   Placeholder documentation for __listOf__stringMin7Max11PatternAws097
    #   @return [Array<String>]
    # @!attribute failed_media_resource_map
    #   A map representing an incomplete AWS media workflow as a graph.
    #   @return [Hash<String, Types::MediaResource>]
    # @!attribute id
    #   A signal map's id.
    #   @return [String]
    # @!attribute last_discovered_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute last_successful_monitor_deployment
    #   Represents the latest successful monitor deployment of a signal map.
    #   @return [Types::SuccessfulMonitorDeployment]
    # @!attribute media_resource_map
    #   A map representing an AWS media workflow as a graph.
    #   @return [Hash<String, Types::MediaResource>]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute monitor_changes_pending_deployment
    #   If true, there are pending monitor changes for this signal map that can be deployed.
    #   @return [Boolean]
    # @!attribute monitor_deployment
    #   Represents the latest monitor deployment of a signal map.
    #   @return [Types::MonitorDeployment]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute status
    #   A signal map's current status which is dependent on its lifecycle actions or associated jobs.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class GetSignalMapResponse < Struct.new(
      :arn,
      :cloud_watch_alarm_template_group_ids,
      :created_at,
      :description,
      :discovery_entry_point_arn,
      :error_message,
      :event_bridge_rule_template_group_ids,
      :failed_media_resource_map,
      :id,
      :last_discovered_at,
      :last_successful_monitor_deployment,
      :media_resource_map,
      :modified_at,
      :monitor_changes_pending_deployment,
      :monitor_deployment,
      :name,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Global Configuration
    # @!attribute initial_audio_gain
    #   Value to set the initial audio gain for the Live Event.
    #   @return [Integer]
    # @!attribute input_end_action
    #   Indicates the action to take when the current input completes (e.g. end-of-file). When switchAndLoopInputs is configured the encoder will restart at the beginning of the first input.  When "none" is configured the encoder will transcode either black, a solid color, or a user specified slate images per the "Input Loss Behavior" configuration until the next input switch occurs (which is controlled through the Channel Schedule API).
    #   @return [String]
    # @!attribute input_loss_behavior
    #   Settings for system actions when input is lost.
    #   @return [Types::InputLossBehavior]
    # @!attribute output_locking_mode
    #   Indicates how MediaLive pipelines are synchronized.
    #   
    #   PIPELINE_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the other.
    #   EPOCH_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the Unix epoch.
    #   DISABLED - MediaLive will not attempt to synchronize the output of pipelines. We advise against disabling output locking because it has negative side effects in most workflows. For more information, see the section about output locking (pipeline locking) in the Medialive user guide.
    #   @return [String]
    # @!attribute output_timing_source
    #   Indicates whether the rate of frames emitted by the Live encoder should be paced by its system clock (which optionally may be locked to another source via NTP) or should be locked to the clock of the source that is providing the input stream.
    #   @return [String]
    # @!attribute support_low_framerate_inputs
    #   Adjusts video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second.
    #   @return [String]
    # @!attribute output_locking_settings
    #   Advanced output locking settings
    #   @return [Types::OutputLockingSettings]
    class GlobalConfiguration < Struct.new(
      :initial_audio_gain,
      :input_end_action,
      :input_loss_behavior,
      :output_locking_mode,
      :output_timing_source,
      :support_low_framerate_inputs,
      :output_locking_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # H264 Color Space Settings
    # @!attribute color_space_passthrough_settings
    #   Passthrough applies no color space conversion to the output
    #   @return [Types::ColorSpacePassthroughSettings]
    # @!attribute rec601_settings
    #   Rec601 Settings
    #   @return [Types::Rec601Settings]
    # @!attribute rec709_settings
    #   Rec709 Settings
    #   @return [Types::Rec709Settings]
    class H264ColorSpaceSettings < Struct.new(
      :color_space_passthrough_settings,
      :rec601_settings,
      :rec709_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # H264 Filter Settings
    # @!attribute temporal_filter_settings
    #   Temporal Filter Settings
    #   @return [Types::TemporalFilterSettings]
    # @!attribute bandwidth_reduction_filter_settings
    #   Bandwidth Reduction Filter Settings
    #   @return [Types::BandwidthReductionFilterSettings]
    class H264FilterSettings < Struct.new(
      :temporal_filter_settings,
      :bandwidth_reduction_filter_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # H264 Settings
    # @!attribute adaptive_quantization
    #   Enables or disables adaptive quantization, which is a technique MediaLive can apply to video on a frame-by-frame basis to produce more compression without losing quality. There are three types of adaptive quantization: flicker, spatial, and temporal. Set the field in one of these ways: Set to Auto. Recommended. For each type of AQ, MediaLive will determine if AQ is needed, and if so, the appropriate strength. Set a strength (a value other than Auto or Disable). This strength will apply to any of the AQ fields that you choose to enable. Set to Disabled to disable all types of adaptive quantization.
    #   @return [String]
    # @!attribute afd_signaling
    #   Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
    #   @return [String]
    # @!attribute bitrate
    #   Average bitrate in bits/second. Required when the rate control mode is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output must have a unique value when its bitrate is rounded down to the nearest multiple of 1000.
    #   @return [Integer]
    # @!attribute buf_fill_pct
    #   Percentage of the buffer that should initially be filled (HRD buffer model).
    #   @return [Integer]
    # @!attribute buf_size
    #   Size of buffer (HRD buffer model) in bits.
    #   @return [Integer]
    # @!attribute color_metadata
    #   Includes colorspace metadata in the output.
    #   @return [String]
    # @!attribute color_space_settings
    #   Color Space settings
    #   @return [Types::H264ColorSpaceSettings]
    # @!attribute entropy_encoding
    #   Entropy encoding mode.  Use cabac (must be in Main or High profile) or cavlc.
    #   @return [String]
    # @!attribute filter_settings
    #   Optional. Both filters reduce bandwidth by removing imperceptible details. You can enable one of the filters. We
    #   recommend that you try both filters and observe the results to decide which one to use.
    #   
    #   The Temporal Filter reduces bandwidth by removing imperceptible details in the content. It combines perceptual
    #   filtering and motion compensated temporal filtering (MCTF). It operates independently of the compression level.
    #   
    #   The Bandwidth Reduction filter is a perceptual filter located within the encoding loop. It adapts to the current
    #   compression level to filter imperceptible signals. This filter works only when the resolution is 1080p or lower.
    #   @return [Types::H264FilterSettings]
    # @!attribute fixed_afd
    #   Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
    #   @return [String]
    # @!attribute flicker_aq
    #   Flicker AQ makes adjustments within each frame to reduce flicker or 'pop' on I-frames. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if flicker AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply flicker AQ using the specified strength. Disabled: MediaLive won't apply flicker AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply flicker AQ.
    #   @return [String]
    # @!attribute force_field_pictures
    #   This setting applies only when scan type is "interlaced." It controls whether coding is performed on a field basis or on a frame basis. (When the video is progressive, the coding is always performed on a frame basis.)
    #   enabled: Force MediaLive to code on a field basis, so that odd and even sets of fields are coded separately.
    #   disabled: Code the two sets of fields separately (on a field basis) or together (on a frame basis using PAFF), depending on what is most appropriate for the content.
    #   @return [String]
    # @!attribute framerate_control
    #   This field indicates how the output video frame rate is specified.  If "specified" is selected then the output video frame rate is determined by framerateNumerator and framerateDenominator, else if "initializeFromSource" is selected then the output video frame rate will be set equal to the input video frame rate of the first input.
    #   @return [String]
    # @!attribute framerate_denominator
    #   Framerate denominator.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
    #   @return [Integer]
    # @!attribute gop_b_reference
    #   Documentation update needed
    #   @return [String]
    # @!attribute gop_closed_cadence
    #   Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
    #   @return [Integer]
    # @!attribute gop_num_b_frames
    #   Number of B-frames between reference frames.
    #   @return [Integer]
    # @!attribute gop_size
    #   GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits.
    #   If gopSizeUnits is frames, gopSize must be an integer and must be greater than or equal to 1.
    #   If gopSizeUnits is seconds, gopSize must be greater than 0, but need not be an integer.
    #   @return [Float]
    # @!attribute gop_size_units
    #   Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
    #   @return [String]
    # @!attribute level
    #   H.264 Level.
    #   @return [String]
    # @!attribute look_ahead_rate_control
    #   Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
    #   @return [String]
    # @!attribute max_bitrate
    #   For QVBR: See the tooltip for Quality level
    #   
    #   For VBR: Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.
    #   @return [Integer]
    # @!attribute min_i_interval
    #   Only meaningful if sceneChangeDetect is set to enabled.  Defaults to 5 if multiplex rate control is used.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
    #   @return [Integer]
    # @!attribute num_ref_frames
    #   Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
    #   @return [Integer]
    # @!attribute par_control
    #   This field indicates how the output pixel aspect ratio is specified.  If "specified" is selected then the output video pixel aspect ratio is determined by parNumerator and parDenominator, else if "initializeFromSource" is selected then the output pixsel aspect ratio will be set equal to the input video pixel aspect ratio of the first input.
    #   @return [String]
    # @!attribute par_denominator
    #   Pixel Aspect Ratio denominator.
    #   @return [Integer]
    # @!attribute par_numerator
    #   Pixel Aspect Ratio numerator.
    #   @return [Integer]
    # @!attribute profile
    #   H.264 Profile.
    #   @return [String]
    # @!attribute quality_level
    #   Leave as STANDARD_QUALITY or choose a different value (which might result in additional costs to run the channel).
    #   - ENHANCED_QUALITY: Produces a slightly better video quality without an increase in the bitrate. Has an effect only when the Rate control mode is QVBR or CBR. If this channel is in a MediaLive multiplex, the value must be ENHANCED_QUALITY.
    #   - STANDARD_QUALITY: Valid for any Rate control mode.
    #   @return [String]
    # @!attribute qvbr_quality_level
    #   Controls the target quality for the video encode. Applies only when the rate control mode is QVBR. You can set a target quality or you can let MediaLive determine the best quality. To set a target quality, enter values in the QVBR quality level field and the Max bitrate field. Enter values that suit your most important viewing devices. Recommended values are:
    #   - Primary screen: Quality level: 8 to 10. Max bitrate: 4M
    #   - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M
    #   - Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
    #   To let MediaLive decide, leave the QVBR quality level field empty, and in Max bitrate enter the maximum rate you want in the video. For more information, see the section called "Video - rate control mode" in the MediaLive user guide
    #   @return [Integer]
    # @!attribute rate_control_mode
    #   Rate control mode.
    #   
    #   QVBR: Quality will match the specified quality level except when it is constrained by the
    #   maximum bitrate.  Recommended if you or your viewers pay for bandwidth.
    #   
    #   VBR: Quality and bitrate vary, depending on the video complexity. Recommended instead of QVBR
    #   if you want to maintain a specific average bitrate over the duration of the channel.
    #   
    #   CBR: Quality varies, depending on the video complexity. Recommended only if you distribute
    #   your assets to devices that cannot handle variable bitrates.
    #   
    #   Multiplex: This rate control mode is only supported (and is required) when the video is being
    #   delivered to a MediaLive Multiplex in which case the rate control configuration is controlled
    #   by the properties within the Multiplex Program.
    #   @return [String]
    # @!attribute scan_type
    #   Sets the scan type of the output to progressive or top-field-first interlaced.
    #   @return [String]
    # @!attribute scene_change_detect
    #   Scene change detection.
    #   
    #   - On: inserts I-frames when scene change is detected.
    #   - Off: does not force an I-frame when scene change is detected.
    #   @return [String]
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #   This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
    #   @return [Integer]
    # @!attribute softness
    #   Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.  If not set to zero, must be greater than 15.
    #   @return [Integer]
    # @!attribute spatial_aq
    #   Spatial AQ makes adjustments within each frame based on spatial variation of content complexity. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if spatial AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply spatial AQ using the specified strength. Disabled: MediaLive won't apply spatial AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply spatial AQ.
    #   @return [String]
    # @!attribute subgop_length
    #   If set to fixed, use gopNumBFrames B-frames per sub-GOP. If set to dynamic, optimize the number of B-frames used for each sub-GOP to improve visual quality.
    #   @return [String]
    # @!attribute syntax
    #   Produces a bitstream compliant with SMPTE RP-2027.
    #   @return [String]
    # @!attribute temporal_aq
    #   Temporal makes adjustments within each frame based on temporal variation of content complexity. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if temporal AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply temporal AQ using the specified strength. Disabled: MediaLive won't apply temporal AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply temporal AQ.
    #   @return [String]
    # @!attribute timecode_insertion
    #   Determines how timecodes should be inserted into the video elementary stream.
    #   - 'disabled': Do not include timecodes
    #   - 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
    #   @return [String]
    # @!attribute timecode_burnin_settings
    #   Timecode burn-in settings
    #   @return [Types::TimecodeBurninSettings]
    # @!attribute min_qp
    #   Sets the minimum QP. If you aren't familiar with quantization adjustment, leave the field empty. MediaLive will
    #   apply an appropriate value.
    #   @return [Integer]
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
      :timecode_insertion,
      :timecode_burnin_settings,
      :min_qp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # H265 Color Space Settings
    # @!attribute color_space_passthrough_settings
    #   Passthrough applies no color space conversion to the output
    #   @return [Types::ColorSpacePassthroughSettings]
    # @!attribute dolby_vision81_settings
    #   Dolby Vision81 Settings
    #   @return [Types::DolbyVision81Settings]
    # @!attribute hdr10_settings
    #   Hdr10 Settings
    #   @return [Types::Hdr10Settings]
    # @!attribute rec601_settings
    #   Rec601 Settings
    #   @return [Types::Rec601Settings]
    # @!attribute rec709_settings
    #   Rec709 Settings
    #   @return [Types::Rec709Settings]
    class H265ColorSpaceSettings < Struct.new(
      :color_space_passthrough_settings,
      :dolby_vision81_settings,
      :hdr10_settings,
      :rec601_settings,
      :rec709_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # H265 Filter Settings
    # @!attribute temporal_filter_settings
    #   Temporal Filter Settings
    #   @return [Types::TemporalFilterSettings]
    # @!attribute bandwidth_reduction_filter_settings
    #   Bandwidth Reduction Filter Settings
    #   @return [Types::BandwidthReductionFilterSettings]
    class H265FilterSettings < Struct.new(
      :temporal_filter_settings,
      :bandwidth_reduction_filter_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # H265 Settings
    # @!attribute adaptive_quantization
    #   Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
    #   @return [String]
    # @!attribute afd_signaling
    #   Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
    #   @return [String]
    # @!attribute alternative_transfer_function
    #   Whether or not EML should insert an Alternative Transfer Function SEI message to support backwards compatibility with non-HDR decoders and displays.
    #   @return [String]
    # @!attribute bitrate
    #   Average bitrate in bits/second. Required when the rate control mode is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output must have a unique value when its bitrate is rounded down to the nearest multiple of 1000.
    #   @return [Integer]
    # @!attribute buf_size
    #   Size of buffer (HRD buffer model) in bits.
    #   @return [Integer]
    # @!attribute color_metadata
    #   Includes colorspace metadata in the output.
    #   @return [String]
    # @!attribute color_space_settings
    #   Color Space settings
    #   @return [Types::H265ColorSpaceSettings]
    # @!attribute filter_settings
    #   Optional. Both filters reduce bandwidth by removing imperceptible details. You can enable one of the filters. We
    #   recommend that you try both filters and observe the results to decide which one to use.
    #   
    #   The Temporal Filter reduces bandwidth by removing imperceptible details in the content. It combines perceptual
    #   filtering and motion compensated temporal filtering (MCTF). It operates independently of the compression level.
    #   
    #   The Bandwidth Reduction filter is a perceptual filter located within the encoding loop. It adapts to the current
    #   compression level to filter imperceptible signals. This filter works only when the resolution is 1080p or lower.
    #   @return [Types::H265FilterSettings]
    # @!attribute fixed_afd
    #   Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
    #   @return [String]
    # @!attribute flicker_aq
    #   If set to enabled, adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
    #   @return [String]
    # @!attribute framerate_denominator
    #   Framerate denominator.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
    #   @return [Integer]
    # @!attribute gop_closed_cadence
    #   Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
    #   @return [Integer]
    # @!attribute gop_size
    #   GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits.
    #   If gopSizeUnits is frames, gopSize must be an integer and must be greater than or equal to 1.
    #   If gopSizeUnits is seconds, gopSize must be greater than 0, but need not be an integer.
    #   @return [Float]
    # @!attribute gop_size_units
    #   Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
    #   @return [String]
    # @!attribute level
    #   H.265 Level.
    #   @return [String]
    # @!attribute look_ahead_rate_control
    #   Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
    #   @return [String]
    # @!attribute max_bitrate
    #   For QVBR: See the tooltip for Quality level
    #   @return [Integer]
    # @!attribute min_i_interval
    #   Only meaningful if sceneChangeDetect is set to enabled.  Defaults to 5 if multiplex rate control is used.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
    #   @return [Integer]
    # @!attribute par_denominator
    #   Pixel Aspect Ratio denominator.
    #   @return [Integer]
    # @!attribute par_numerator
    #   Pixel Aspect Ratio numerator.
    #   @return [Integer]
    # @!attribute profile
    #   H.265 Profile.
    #   @return [String]
    # @!attribute qvbr_quality_level
    #   Controls the target quality for the video encode. Applies only when the rate control mode is QVBR. Set values for the QVBR quality level field and Max bitrate field that suit your most important viewing devices. Recommended values are:
    #   - Primary screen: Quality level: 8 to 10. Max bitrate: 4M
    #   - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M
    #   - Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
    #   @return [Integer]
    # @!attribute rate_control_mode
    #   Rate control mode.
    #   
    #   QVBR: Quality will match the specified quality level except when it is constrained by the
    #   maximum bitrate.  Recommended if you or your viewers pay for bandwidth.
    #   
    #   CBR: Quality varies, depending on the video complexity. Recommended only if you distribute
    #   your assets to devices that cannot handle variable bitrates.
    #   
    #   Multiplex: This rate control mode is only supported (and is required) when the video is being
    #   delivered to a MediaLive Multiplex in which case the rate control configuration is controlled
    #   by the properties within the Multiplex Program.
    #   @return [String]
    # @!attribute scan_type
    #   Sets the scan type of the output to progressive or top-field-first interlaced.
    #   @return [String]
    # @!attribute scene_change_detect
    #   Scene change detection.
    #   @return [String]
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #   This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
    #   @return [Integer]
    # @!attribute tier
    #   H.265 Tier.
    #   @return [String]
    # @!attribute timecode_insertion
    #   Determines how timecodes should be inserted into the video elementary stream.
    #   - 'disabled': Do not include timecodes
    #   - 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
    #   @return [String]
    # @!attribute timecode_burnin_settings
    #   Timecode burn-in settings
    #   @return [Types::TimecodeBurninSettings]
    # @!attribute mv_over_picture_boundaries
    #   If you are setting up the picture as a tile, you must set this to "disabled". In all other configurations, you typically enter "enabled".
    #   @return [String]
    # @!attribute mv_temporal_predictor
    #   If you are setting up the picture as a tile, you must set this to "disabled". In other configurations, you typically enter "enabled".
    #   @return [String]
    # @!attribute tile_height
    #   Set this field to set up the picture as a tile. You must also set tileWidth.
    #   The tile height must result in 22 or fewer rows in the frame. The tile width
    #   must result in 20 or fewer columns in the frame. And finally, the product of the
    #   column count and row count must be 64 of less.
    #   If the tile width and height are specified, MediaLive will override the video
    #   codec slices field with a value that MediaLive calculates
    #   @return [Integer]
    # @!attribute tile_padding
    #   Set to "padded" to force MediaLive to add padding to the frame, to obtain a frame that is a whole multiple of the tile size.
    #   If you are setting up the picture as a tile, you must enter "padded".
    #   In all other configurations, you typically enter "none".
    #   @return [String]
    # @!attribute tile_width
    #   Set this field to set up the picture as a tile. See tileHeight for more information.
    #   @return [Integer]
    # @!attribute treeblock_size
    #   Select the tree block size used for encoding. If you enter "auto", the encoder will pick the best size. If you are setting up the picture as a tile, you must set this to 32x32. In all other configurations, you typically enter "auto".
    #   @return [String]
    # @!attribute min_qp
    #   Sets the minimum QP. If you aren't familiar with quantization adjustment, leave the field empty. MediaLive will
    #   apply an appropriate value.
    #   @return [Integer]
    # @!attribute deblocking
    #   Enable or disable the deblocking filter for this codec. The filter reduces blocking artifacts at block boundaries,
    #   which improves overall video quality. If the filter is disabled, visible block edges might appear in the output,
    #   especially at lower bitrates.
    #   @return [String]
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
      :timecode_insertion,
      :timecode_burnin_settings,
      :mv_over_picture_boundaries,
      :mv_temporal_predictor,
      :tile_height,
      :tile_padding,
      :tile_width,
      :treeblock_size,
      :min_qp,
      :deblocking,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Hdr10 Settings
    # @!attribute max_cll
    #   Maximum Content Light Level
    #   An integer metadata value defining the maximum light level, in nits,
    #   of any single pixel within an encoded HDR video stream or file.
    #   @return [Integer]
    # @!attribute max_fall
    #   Maximum Frame Average Light Level
    #   An integer metadata value defining the maximum average light level, in nits,
    #   for any single frame within an encoded HDR video stream or file.
    #   @return [Integer]
    class Hdr10Settings < Struct.new(
      :max_cll,
      :max_fall,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Hls Akamai Settings
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if the connection is lost.
    #   @return [Integer]
    # @!attribute filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #   @return [Integer]
    # @!attribute http_transfer_mode
    #   Specify whether or not to use chunked transfer encoding to Akamai. User should contact Akamai to enable this feature.
    #   @return [String]
    # @!attribute num_retries
    #   Number of retry attempts that will be made before the Live Event is put into an error state. Applies only if the CDN destination URI begins with "s3" or "mediastore". For other URIs, the value is always 3.
    #   @return [Integer]
    # @!attribute restart_delay
    #   If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
    #   @return [Integer]
    # @!attribute salt
    #   Salt for authenticated Akamai.
    #   @return [String]
    # @!attribute token
    #   Token parameter for authenticated akamai. If not specified, _gda_ is used.
    #   @return [String]
    class HlsAkamaiSettings < Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :http_transfer_mode,
      :num_retries,
      :restart_delay,
      :salt,
      :token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Hls Basic Put Settings
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if the connection is lost.
    #   @return [Integer]
    # @!attribute filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #   @return [Integer]
    # @!attribute num_retries
    #   Number of retry attempts that will be made before the Live Event is put into an error state. Applies only if the CDN destination URI begins with "s3" or "mediastore". For other URIs, the value is always 3.
    #   @return [Integer]
    # @!attribute restart_delay
    #   If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
    #   @return [Integer]
    class HlsBasicPutSettings < Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :num_retries,
      :restart_delay,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Hls Cdn Settings
    # @!attribute hls_akamai_settings
    #   Hls Akamai Settings
    #   @return [Types::HlsAkamaiSettings]
    # @!attribute hls_basic_put_settings
    #   Hls Basic Put Settings
    #   @return [Types::HlsBasicPutSettings]
    # @!attribute hls_media_store_settings
    #   Hls Media Store Settings
    #   @return [Types::HlsMediaStoreSettings]
    # @!attribute hls_s3_settings
    #   Hls S3 Settings
    #   @return [Types::HlsS3Settings]
    # @!attribute hls_webdav_settings
    #   Hls Webdav Settings
    #   @return [Types::HlsWebdavSettings]
    class HlsCdnSettings < Struct.new(
      :hls_akamai_settings,
      :hls_basic_put_settings,
      :hls_media_store_settings,
      :hls_s3_settings,
      :hls_webdav_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Hls Group Settings
    # @!attribute ad_markers
    #   Choose one or more ad marker types to pass SCTE35 signals through to this group of Apple HLS outputs.
    #   @return [Array<String>]
    # @!attribute base_url_content
    #   A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
    #   @return [String]
    # @!attribute base_url_content1
    #   Optional. One value per output group.
    #   
    #   This field is required only if you are completing Base URL content A, and the downstream system has notified you that the media files for pipeline 1 of all outputs are in a location different from the media files for pipeline 0.
    #   @return [String]
    # @!attribute base_url_manifest
    #   A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
    #   @return [String]
    # @!attribute base_url_manifest1
    #   Optional. One value per output group.
    #   
    #   Complete this field only if you are completing Base URL manifest A, and the downstream system has notified you that the child manifest files for pipeline 1 of all outputs are in a location different from the child manifest files for pipeline 0.
    #   @return [String]
    # @!attribute caption_language_mappings
    #   Mapping of up to 4 caption channels to caption languages.  Is only meaningful if captionLanguageSetting is set to "insert".
    #   @return [Array<Types::CaptionLanguageMapping>]
    # @!attribute caption_language_setting
    #   Applies only to 608 Embedded output captions.
    #   insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions.
    #   none: Include CLOSED-CAPTIONS=NONE line in the manifest.
    #   omit: Omit any CLOSED-CAPTIONS line from the manifest.
    #   @return [String]
    # @!attribute client_cache
    #   When set to "disabled", sets the #EXT-X-ALLOW-CACHE:no tag in the manifest, which prevents clients from saving media segments for later replay.
    #   @return [String]
    # @!attribute codec_specification
    #   Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
    #   @return [String]
    # @!attribute constant_iv
    #   For use with encryptionType. This is a 128-bit, 16-byte hex value represented by a 32-character text string. If ivSource is set to "explicit" then this parameter is required and is used as the IV for encryption.
    #   @return [String]
    # @!attribute destination
    #   A directory or HTTP destination for the HLS segments, manifest files, and encryption keys (if enabled).
    #   @return [Types::OutputLocationRef]
    # @!attribute directory_structure
    #   Place segments in subdirectories.
    #   @return [String]
    # @!attribute discontinuity_tags
    #   Specifies whether to insert EXT-X-DISCONTINUITY tags in the HLS child manifests for this output group.
    #   Typically, choose Insert because these tags are required in the manifest (according to the HLS specification) and serve an important purpose.
    #   Choose Never Insert only if the downstream system is doing real-time failover (without using the MediaLive automatic failover feature) and only if that downstream system has advised you to exclude the tags.
    #   @return [String]
    # @!attribute encryption_type
    #   Encrypts the segments with the given encryption scheme.  Exclude this parameter if no encryption is desired.
    #   @return [String]
    # @!attribute hls_cdn_settings
    #   Parameters that control interactions with the CDN.
    #   @return [Types::HlsCdnSettings]
    # @!attribute hls_id3_segment_tagging
    #   State of HLS ID3 Segment Tagging
    #   @return [String]
    # @!attribute i_frame_only_playlists
    #   DISABLED: Do not create an I-frame-only manifest, but do create the master and media manifests (according to the Output Selection field).
    #   
    #   STANDARD: Create an I-frame-only manifest for each output that contains video, as well as the other manifests (according to the Output Selection field). The I-frame manifest contains a #EXT-X-I-FRAMES-ONLY tag to indicate it is I-frame only, and one or more #EXT-X-BYTERANGE entries identifying the I-frame position. For example, #EXT-X-BYTERANGE:160364@1461888"
    #   @return [String]
    # @!attribute incomplete_segment_behavior
    #   Specifies whether to include the final (incomplete) segment in the media output when the pipeline stops producing output because of a channel stop, a channel pause or a loss of input to the pipeline.
    #   Auto means that MediaLive decides whether to include the final segment, depending on the channel class and the types of output groups.
    #   Suppress means to never include the incomplete segment. We recommend you choose Auto and let MediaLive control the behavior.
    #   @return [String]
    # @!attribute index_n_segments
    #   Applies only if Mode field is LIVE.
    #   
    #   Specifies the maximum number of segments in the media manifest file. After this maximum, older segments are removed from the media manifest. This number must be smaller than the number in the Keep Segments field.
    #   @return [Integer]
    # @!attribute input_loss_action
    #   Parameter that control output group behavior on input loss.
    #   @return [String]
    # @!attribute iv_in_manifest
    #   For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If set to "include", IV is listed in the manifest, otherwise the IV is not in the manifest.
    #   @return [String]
    # @!attribute iv_source
    #   For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If this setting is "followsSegmentNumber", it will cause the IV to change every segment (to match the segment number). If this is set to "explicit", you must enter a constantIv value.
    #   @return [String]
    # @!attribute keep_segments
    #   Applies only if Mode field is LIVE.
    #   
    #   Specifies the number of media segments to retain in the destination directory. This number should be bigger than indexNSegments (Num segments). We recommend (value = (2 x indexNsegments) + 1).
    #   
    #   If this "keep segments" number is too low, the following might happen: the player is still reading a media manifest file that lists this segment, but that segment has been removed from the destination directory (as directed by indexNSegments). This situation would result in a 404 HTTP error on the player.
    #   @return [Integer]
    # @!attribute key_format
    #   The value specifies how the key is represented in the resource identified by the URI.  If parameter is absent, an implicit value of "identity" is used.  A reverse DNS string can also be given.
    #   @return [String]
    # @!attribute key_format_versions
    #   Either a single positive integer version value or a slash delimited list of version values (1/2/3).
    #   @return [String]
    # @!attribute key_provider_settings
    #   The key provider settings.
    #   @return [Types::KeyProviderSettings]
    # @!attribute manifest_compression
    #   When set to gzip, compresses HLS playlist.
    #   @return [String]
    # @!attribute manifest_duration_format
    #   Indicates whether the output manifest should use floating point or integer values for segment duration.
    #   @return [String]
    # @!attribute min_segment_length
    #   Minimum length of MPEG-2 Transport Stream segments in seconds. When set, minimum segment length is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed.
    #   @return [Integer]
    # @!attribute mode
    #   If "vod", all segments are indexed and kept permanently in the destination and manifest. If "live", only the number segments specified in keepSegments and indexNSegments are kept; newer segments replace older segments, which may prevent players from rewinding all the way to the beginning of the event.
    #   
    #   VOD mode uses HLS EXT-X-PLAYLIST-TYPE of EVENT while the channel is running, converting it to a "VOD" type manifest on completion of the stream.
    #   @return [String]
    # @!attribute output_selection
    #   MANIFESTS_AND_SEGMENTS: Generates manifests (master manifest, if applicable, and media manifests) for this output group.
    #   
    #   VARIANT_MANIFESTS_AND_SEGMENTS: Generates media manifests for this output group, but not a master manifest.
    #   
    #   SEGMENTS_ONLY: Does not generate any manifests for this output group.
    #   @return [String]
    # @!attribute program_date_time
    #   Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated using the program date time clock.
    #   @return [String]
    # @!attribute program_date_time_clock
    #   Specifies the algorithm used to drive the HLS EXT-X-PROGRAM-DATE-TIME clock. Options include:
    #   
    #   INITIALIZE_FROM_OUTPUT_TIMECODE: The PDT clock is initialized as a function of the first output timecode, then incremented by the EXTINF duration of each encoded segment.
    #   
    #   SYSTEM_CLOCK: The PDT clock is initialized as a function of the UTC wall clock, then incremented by the EXTINF duration of each encoded segment. If the PDT clock diverges from the wall clock by more than 500ms, it is resynchronized to the wall clock.
    #   @return [String]
    # @!attribute program_date_time_period
    #   Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
    #   @return [Integer]
    # @!attribute redundant_manifest
    #   ENABLED: The master manifest (.m3u8 file) for each pipeline includes information about both pipelines: first its own media files, then the media files of the other pipeline. This feature allows playout device that support stale manifest detection to switch from one manifest to the other, when the current manifest seems to be stale. There are still two destinations and two master manifests, but both master manifests reference the media files from both pipelines.
    #   
    #   DISABLED: The master manifest (.m3u8 file) for each pipeline includes information about its own pipeline only.
    #   
    #   For an HLS output group with MediaPackage as the destination, the DISABLED behavior is always followed. MediaPackage regenerates the manifests it serves to players so a redundant manifest from MediaLive is irrelevant.
    #   @return [String]
    # @!attribute segment_length
    #   Length of MPEG-2 Transport Stream segments to create in seconds. Note that segments will end on the next keyframe after this duration, so actual segment length may be longer.
    #   @return [Integer]
    # @!attribute segmentation_mode
    #   useInputSegmentation has been deprecated. The configured segment size is always used.
    #   @return [String]
    # @!attribute segments_per_subdirectory
    #   Number of segments to write to a subdirectory before starting a new one. directoryStructure must be subdirectoryPerStream for this setting to have an effect.
    #   @return [Integer]
    # @!attribute stream_inf_resolution
    #   Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
    #   @return [String]
    # @!attribute timed_metadata_id3_frame
    #   Indicates ID3 frame that has the timecode.
    #   @return [String]
    # @!attribute timed_metadata_id3_period
    #   Timed Metadata interval in seconds.
    #   @return [Integer]
    # @!attribute timestamp_delta_milliseconds
    #   Provides an extra millisecond delta offset to fine tune the timestamps.
    #   @return [Integer]
    # @!attribute ts_file_mode
    #   SEGMENTED_FILES: Emit the program as segments - multiple .ts media files.
    #   
    #   SINGLE_FILE: Applies only if Mode field is VOD. Emit the program as a single .ts media file. The media manifest includes #EXT-X-BYTERANGE tags to index segments for playback. A typical use for this value is when sending the output to AWS Elemental MediaConvert, which can accept only a single media file. Playback while the channel is running is not guaranteed due to HTTP server caching.
    #   @return [String]
    class HlsGroupSettings < Struct.new(
      :ad_markers,
      :base_url_content,
      :base_url_content1,
      :base_url_manifest,
      :base_url_manifest1,
      :caption_language_mappings,
      :caption_language_setting,
      :client_cache,
      :codec_specification,
      :constant_iv,
      :destination,
      :directory_structure,
      :discontinuity_tags,
      :encryption_type,
      :hls_cdn_settings,
      :hls_id3_segment_tagging,
      :i_frame_only_playlists,
      :incomplete_segment_behavior,
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
      :program_date_time_clock,
      :program_date_time_period,
      :redundant_manifest,
      :segment_length,
      :segmentation_mode,
      :segments_per_subdirectory,
      :stream_inf_resolution,
      :timed_metadata_id3_frame,
      :timed_metadata_id3_period,
      :timestamp_delta_milliseconds,
      :ts_file_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for the action to insert ID3 metadata in every segment, in HLS output groups.
    # @!attribute tag
    #   Complete this parameter if you want to specify only the metadata, not the entire frame. MediaLive will insert the metadata in a TXXX frame. Enter the value as plain text. You can include standard MediaLive variable data such as the current segment number.
    #   @return [String]
    # @!attribute id3
    #   Complete this parameter if you want to specify the entire ID3 metadata. Enter a base64 string that contains one or more fully formed ID3 tags, according to the ID3 specification: http://id3.org/id3v2.4.0-structure
    #   @return [String]
    class HlsId3SegmentTaggingScheduleActionSettings < Struct.new(
      :tag,
      :id3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Hls Input Settings
    # @!attribute bandwidth
    #   When specified the HLS stream with the m3u8 BANDWIDTH that most closely matches this value will be chosen, otherwise the highest bandwidth stream in the m3u8 will be chosen.  The bitrate is specified in bits per second, as in an HLS manifest.
    #   @return [Integer]
    # @!attribute buffer_segments
    #   When specified, reading of the HLS input will begin this many buffer segments from the end (most recently written segment).  When not specified, the HLS input will begin with the first segment specified in the m3u8.
    #   @return [Integer]
    # @!attribute retries
    #   The number of consecutive times that attempts to read a manifest or segment must fail before the input is considered unavailable.
    #   @return [Integer]
    # @!attribute retry_interval
    #   The number of seconds between retries when an attempt to read a manifest or segment fails.
    #   @return [Integer]
    # @!attribute scte35_source
    #   Identifies the source for the SCTE-35 messages that MediaLive will ingest. Messages can be ingested from the content segments (in the stream) or from tags in the playlist (the HLS manifest). MediaLive ignores SCTE-35 information in the source that is not selected.
    #   @return [String]
    class HlsInputSettings < Struct.new(
      :bandwidth,
      :buffer_segments,
      :retries,
      :retry_interval,
      :scte35_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Hls Media Store Settings
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if the connection is lost.
    #   @return [Integer]
    # @!attribute filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #   @return [Integer]
    # @!attribute media_store_storage_class
    #   When set to temporal, output files are stored in non-persistent memory for faster reading and writing.
    #   @return [String]
    # @!attribute num_retries
    #   Number of retry attempts that will be made before the Live Event is put into an error state. Applies only if the CDN destination URI begins with "s3" or "mediastore". For other URIs, the value is always 3.
    #   @return [Integer]
    # @!attribute restart_delay
    #   If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
    #   @return [Integer]
    class HlsMediaStoreSettings < Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :media_store_storage_class,
      :num_retries,
      :restart_delay,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Hls Output Settings
    # @!attribute h265_packaging_type
    #   Only applicable when this output is referencing an H.265 video description.
    #   Specifies whether MP4 segments should be packaged as HEV1 or HVC1.
    #   @return [String]
    # @!attribute hls_settings
    #   Settings regarding the underlying stream. These settings are different for audio-only outputs.
    #   @return [Types::HlsSettings]
    # @!attribute name_modifier
    #   String concatenated to the end of the destination filename. Accepts \"Format Identifiers\":#formatIdentifierParameters.
    #   @return [String]
    # @!attribute segment_modifier
    #   String concatenated to end of segment filenames.
    #   @return [String]
    class HlsOutputSettings < Struct.new(
      :h265_packaging_type,
      :hls_settings,
      :name_modifier,
      :segment_modifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Hls S3 Settings
    # @!attribute canned_acl
    #   Specify the canned ACL to apply to each S3 request. Defaults to none.
    #   @return [String]
    class HlsS3Settings < Struct.new(
      :canned_acl,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Hls Settings
    # @!attribute audio_only_hls_settings
    #   Audio Only Hls Settings
    #   @return [Types::AudioOnlyHlsSettings]
    # @!attribute fmp4_hls_settings
    #   Fmp4 Hls Settings
    #   @return [Types::Fmp4HlsSettings]
    # @!attribute frame_capture_hls_settings
    #   Frame Capture Hls Settings
    #   @return [Types::FrameCaptureHlsSettings]
    # @!attribute standard_hls_settings
    #   Standard Hls Settings
    #   @return [Types::StandardHlsSettings]
    class HlsSettings < Struct.new(
      :audio_only_hls_settings,
      :fmp4_hls_settings,
      :frame_capture_hls_settings,
      :standard_hls_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for the action to insert ID3 metadata (as a one-time action) in HLS output groups.
    # @!attribute id3
    #   Enter a base64 string that contains one or more fully formed ID3 tags.See the ID3 specification: http://id3.org/id3v2.4.0-structure
    #   @return [String]
    class HlsTimedMetadataScheduleActionSettings < Struct.new(
      :id3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Hls Webdav Settings
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying connection to the CDN if the connection is lost.
    #   @return [Integer]
    # @!attribute filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #   @return [Integer]
    # @!attribute http_transfer_mode
    #   Specify whether or not to use chunked transfer encoding to WebDAV.
    #   @return [String]
    # @!attribute num_retries
    #   Number of retry attempts that will be made before the Live Event is put into an error state. Applies only if the CDN destination URI begins with "s3" or "mediastore". For other URIs, the value is always 3.
    #   @return [Integer]
    # @!attribute restart_delay
    #   If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
    #   @return [Integer]
    class HlsWebdavSettings < Struct.new(
      :connection_retry_interval,
      :filecache_duration,
      :http_transfer_mode,
      :num_retries,
      :restart_delay,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Html Motion Graphics Settings
    class HtmlMotionGraphicsSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for the action to insert ID3 metadata in every segment, in applicable output groups.
    # @!attribute id3
    #   Complete this parameter if you want to specify the entire ID3 metadata. Enter a base64 string that contains one or more fully formed ID3 tags, according to the ID3 specification: http://id3.org/id3v2.4.0-structure
    #   @return [String]
    # @!attribute tag
    #   Complete this parameter if you want to specify only the metadata, not the entire frame. MediaLive will insert the metadata in a TXXX frame. Enter the value as plain text. You can include standard MediaLive variable data such as the current segment number.
    #   @return [String]
    class Id3SegmentTaggingScheduleActionSettings < Struct.new(
      :id3,
      :tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings to configure an action so that it occurs as soon as possible.
    class ImmediateModeScheduleActionStartSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for Input
    # @!attribute arn
    #   The Unique ARN of the input (generated, immutable).
    #   @return [String]
    # @!attribute attached_channels
    #   A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
    #   @return [Array<String>]
    # @!attribute destinations
    #   A list of the destinations of the input (PUSH-type).
    #   @return [Array<Types::InputDestination>]
    # @!attribute id
    #   The generated ID of the input (unique for user account, immutable).
    #   @return [String]
    # @!attribute input_class
    #   STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails.
    #   SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.
    #   @return [String]
    # @!attribute input_devices
    #   Settings for the input devices.
    #   @return [Array<Types::InputDeviceSettings>]
    # @!attribute input_partner_ids
    #   A list of IDs for all Inputs which are partners of this one.
    #   @return [Array<String>]
    # @!attribute input_source_type
    #   Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes
    #   during input switch actions. Presently, this functionality only works with MP4_FILE and TS_FILE inputs.
    #   @return [String]
    # @!attribute media_connect_flows
    #   A list of MediaConnect Flows for this input.
    #   @return [Array<Types::MediaConnectFlow>]
    # @!attribute name
    #   The user-assigned name (This is a mutable value).
    #   @return [String]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
    #   @return [String]
    # @!attribute security_groups
    #   A list of IDs for all the Input Security Groups attached to the input.
    #   @return [Array<String>]
    # @!attribute sources
    #   A list of the sources of the input (PULL-type).
    #   @return [Array<Types::InputSource>]
    # @!attribute state
    #   Placeholder documentation for InputState
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute type
    #   The different types of inputs that AWS Elemental MediaLive supports.
    #   @return [String]
    # @!attribute srt_settings
    #   The settings associated with an SRT input.
    #   @return [Types::SrtSettings]
    # @!attribute input_network_location
    #   The location of this input. AWS, for an input existing in the AWS Cloud, On-Prem for
    #   an input in a customer network.
    #   @return [String]
    # @!attribute multicast_settings
    #   Multicast Input settings.
    #   @return [Types::MulticastSettings]
    # @!attribute smpte2110_receiver_group_settings
    #   Include this parameter if the input is a SMPTE 2110 input, to identify the stream sources for this input.
    #   @return [Types::Smpte2110ReceiverGroupSettings]
    # @!attribute sdi_sources
    #   SDI Sources for this Input.
    #   @return [Array<String>]
    class Input < Struct.new(
      :arn,
      :attached_channels,
      :destinations,
      :id,
      :input_class,
      :input_devices,
      :input_partner_ids,
      :input_source_type,
      :media_connect_flows,
      :name,
      :role_arn,
      :security_groups,
      :sources,
      :state,
      :tags,
      :type,
      :srt_settings,
      :input_network_location,
      :multicast_settings,
      :smpte2110_receiver_group_settings,
      :sdi_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for InputAttachment
    # @!attribute automatic_input_failover_settings
    #   User-specified settings for defining what the conditions are for declaring the input unhealthy and failing over to a different input.
    #   @return [Types::AutomaticInputFailoverSettings]
    # @!attribute input_attachment_name
    #   User-specified name for the attachment. This is required if the user wants to use this input in an input switch action.
    #   @return [String]
    # @!attribute input_id
    #   The ID of the input
    #   @return [String]
    # @!attribute input_settings
    #   Settings of an input (caption selector, etc.)
    #   @return [Types::InputSettings]
    # @!attribute logical_interface_names
    #   Optional assignment of an input to a logical interface on the Node. Only applies to on premises channels.
    #   @return [Array<String>]
    class InputAttachment < Struct.new(
      :automatic_input_failover_settings,
      :input_attachment_name,
      :input_id,
      :input_settings,
      :logical_interface_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input Channel Level
    # @!attribute gain
    #   Remixing value. Units are in dB and acceptable values are within the range from -60 (mute) and 6 dB.
    #   @return [Integer]
    # @!attribute input_channel
    #   The index of the input channel used as a source.
    #   @return [Integer]
    class InputChannelLevel < Struct.new(
      :gain,
      :input_channel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings to let you create a clip of the file input, in order to set up the input to ingest only a portion of the file.
    # @!attribute input_timecode_source
    #   The source of the timecodes in the source being clipped.
    #   @return [String]
    # @!attribute start_timecode
    #   Settings to identify the start of the clip.
    #   @return [Types::StartTimecode]
    # @!attribute stop_timecode
    #   Settings to identify the end of the clip.
    #   @return [Types::StopTimecode]
    class InputClippingSettings < Struct.new(
      :input_timecode_source,
      :start_timecode,
      :stop_timecode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The settings for a PUSH type input.
    # @!attribute ip
    #   The system-generated static IP address of endpoint.
    #   It remains fixed for the lifetime of the input.
    #   @return [String]
    # @!attribute port
    #   The port number for the input.
    #   @return [String]
    # @!attribute url
    #   This represents the endpoint that the customer stream will be
    #   pushed to.
    #   @return [String]
    # @!attribute vpc
    #   The properties for a VPC type input destination.
    #   @return [Types::InputDestinationVpc]
    # @!attribute network
    #   The ID of the attached network.
    #   @return [String]
    # @!attribute network_routes
    #   If the push input has an input location of ON-PREM it's a requirement to specify what the route of the input
    #   is going to be on the customer local network.
    #   @return [Array<Types::InputDestinationRoute>]
    class InputDestination < Struct.new(
      :ip,
      :port,
      :url,
      :vpc,
      :network,
      :network_routes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Endpoint settings for a PUSH type input.
    # @!attribute stream_name
    #   A unique name for the location the RTMP stream is being pushed
    #   to.
    #   @return [String]
    # @!attribute network
    #   If the push input has an input location of ON-PREM, ID the ID of the attached network.
    #   @return [String]
    # @!attribute network_routes
    #   If the push input has an input location of ON-PREM it's a requirement to specify what the route of the input
    #   is going to be on the customer local network.
    #   @return [Array<Types::InputRequestDestinationRoute>]
    # @!attribute static_ip_address
    #   If the push input has an input location of ON-PREM it's optional to specify what the ip address
    #   of the input is going to be on the customer local network.
    #   @return [String]
    class InputDestinationRequest < Struct.new(
      :stream_name,
      :network,
      :network_routes,
      :static_ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A network route configuration.
    # @!attribute cidr
    #   The CIDR of the route.
    #   @return [String]
    # @!attribute gateway
    #   An optional gateway for the route.
    #   @return [String]
    class InputDestinationRoute < Struct.new(
      :cidr,
      :gateway,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The properties for a VPC type input destination.
    # @!attribute availability_zone
    #   The availability zone of the Input destination.
    #   @return [String]
    # @!attribute network_interface_id
    #   The network interface ID of the Input destination in the VPC.
    #   @return [String]
    class InputDestinationVpc < Struct.new(
      :availability_zone,
      :network_interface_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # One audio configuration that specifies the format for one audio pair that the device produces as output.
    # @!attribute id
    #   The ID for one audio pair configuration, a value from 1 to 8.
    #   @return [Integer]
    # @!attribute profile
    #   The profile to set for one audio pair configuration. Choose an enumeration value. Each value describes one audio configuration using the format (rate control algorithm)-(codec)_(quality)-(bitrate in bytes). For example, CBR-AAC_HQ-192000. Or choose DISABLED, in which case the device won't produce audio for this pair.
    #   @return [String]
    class InputDeviceConfigurableAudioChannelPairConfig < Struct.new(
      :id,
      :profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configurable settings for the input device.
    # @!attribute configured_input
    #   The input source that you want to use. If the device has a source connected to only one of its input ports, or if you don't care which source the device sends, specify Auto. If the device has sources connected to both its input ports, and you want to use a specific source, specify the source.
    #   @return [String]
    # @!attribute max_bitrate
    #   The maximum bitrate in bits per second. Set a value here to throttle the bitrate of the source video.
    #   @return [Integer]
    # @!attribute latency_ms
    #   The Link device's buffer size (latency) in milliseconds (ms).
    #   @return [Integer]
    # @!attribute codec
    #   Choose the codec for the video that the device produces. Only UHD devices can specify this parameter.
    #   @return [String]
    # @!attribute mediaconnect_settings
    #   To attach this device to a MediaConnect flow, specify these parameters. To detach an existing flow, enter {} for the value of mediaconnectSettings. Only UHD devices can specify this parameter.
    #   @return [Types::InputDeviceMediaConnectConfigurableSettings]
    # @!attribute audio_channel_pairs
    #   An array of eight audio configurations, one for each audio pair in the source. Set up each audio configuration either to exclude the pair, or to format it and include it in the output from the device. This parameter applies only to UHD devices, and only when the device is configured as the source for a MediaConnect flow. For an HD device, you configure the audio by setting up audio selectors in the channel configuration.
    #   @return [Array<Types::InputDeviceConfigurableAudioChannelPairConfig>]
    # @!attribute input_resolution
    #   Choose the resolution of the Link device's source (HD or UHD). Make sure the resolution matches the current source from the device. This value determines MediaLive resource allocation and billing for this input. Only UHD devices can specify this parameter.
    #   @return [String]
    class InputDeviceConfigurableSettings < Struct.new(
      :configured_input,
      :max_bitrate,
      :latency_ms,
      :codec,
      :mediaconnect_settings,
      :audio_channel_pairs,
      :input_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings that describe the active source from the input device, and the video characteristics of that source.
    # @!attribute active_input
    #   If you specified Auto as the configured input, specifies which of the sources is currently active (SDI or HDMI).
    #   @return [String]
    # @!attribute configured_input
    #   The source at the input device that is currently active. You can specify this source.
    #   @return [String]
    # @!attribute device_state
    #   The state of the input device.
    #   @return [String]
    # @!attribute framerate
    #   The frame rate of the video source.
    #   @return [Float]
    # @!attribute height
    #   The height of the video source, in pixels.
    #   @return [Integer]
    # @!attribute max_bitrate
    #   The current maximum bitrate for ingesting this source, in bits per second. You can specify this maximum.
    #   @return [Integer]
    # @!attribute scan_type
    #   The scan type of the video source.
    #   @return [String]
    # @!attribute width
    #   The width of the video source, in pixels.
    #   @return [Integer]
    # @!attribute latency_ms
    #   The Link device's buffer size (latency) in milliseconds (ms). You can specify this value.
    #   @return [Integer]
    class InputDeviceHdSettings < Struct.new(
      :active_input,
      :configured_input,
      :device_state,
      :framerate,
      :height,
      :max_bitrate,
      :scan_type,
      :width,
      :latency_ms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Parameters required to attach a MediaConnect flow to the device.
    # @!attribute flow_arn
    #   The ARN of the MediaConnect flow to attach this device to.
    #   @return [String]
    # @!attribute role_arn
    #   The ARN for the role that MediaLive assumes to access the attached flow and secret. For more information about how to create this role, see the MediaLive user guide.
    #   @return [String]
    # @!attribute secret_arn
    #   The ARN for the secret that holds the encryption key to encrypt the content output by the device.
    #   @return [String]
    # @!attribute source_name
    #   The name of the MediaConnect Flow source to stream to.
    #   @return [String]
    class InputDeviceMediaConnectConfigurableSettings < Struct.new(
      :flow_arn,
      :role_arn,
      :secret_arn,
      :source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about the MediaConnect flow attached to the device.
    # @!attribute flow_arn
    #   The ARN of the MediaConnect flow.
    #   @return [String]
    # @!attribute role_arn
    #   The ARN for the role that MediaLive assumes to access the attached flow and secret.
    #   @return [String]
    # @!attribute secret_arn
    #   The ARN of the secret used to encrypt the stream.
    #   @return [String]
    # @!attribute source_name
    #   The name of the MediaConnect flow source.
    #   @return [String]
    class InputDeviceMediaConnectSettings < Struct.new(
      :flow_arn,
      :role_arn,
      :secret_arn,
      :source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The network settings for the input device.
    # @!attribute dns_addresses
    #   The DNS addresses of the input device.
    #   @return [Array<String>]
    # @!attribute gateway
    #   The network gateway IP address.
    #   @return [String]
    # @!attribute ip_address
    #   The IP address of the input device.
    #   @return [String]
    # @!attribute ip_scheme
    #   Specifies whether the input device has been configured (outside of MediaLive) to use a dynamic IP address assignment (DHCP) or a static IP address.
    #   @return [String]
    # @!attribute subnet_mask
    #   The subnet mask of the input device.
    #   @return [String]
    class InputDeviceNetworkSettings < Struct.new(
      :dns_addresses,
      :gateway,
      :ip_address,
      :ip_scheme,
      :subnet_mask,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for an input device.
    # @!attribute id
    #   The unique ID for the device.
    #   @return [String]
    class InputDeviceRequest < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for an input device.
    # @!attribute id
    #   The unique ID for the device.
    #   @return [String]
    class InputDeviceSettings < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Details of the input device.
    # @!attribute arn
    #   The unique ARN of the input device.
    #   @return [String]
    # @!attribute connection_state
    #   The state of the connection between the input device and AWS.
    #   @return [String]
    # @!attribute device_settings_sync_state
    #   The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
    #   @return [String]
    # @!attribute device_update_status
    #   The status of software on the input device.
    #   @return [String]
    # @!attribute hd_device_settings
    #   Settings that describe an input device that is type HD.
    #   @return [Types::InputDeviceHdSettings]
    # @!attribute id
    #   The unique ID of the input device.
    #   @return [String]
    # @!attribute mac_address
    #   The network MAC address of the input device.
    #   @return [String]
    # @!attribute name
    #   A name that you specify for the input device.
    #   @return [String]
    # @!attribute network_settings
    #   Network settings for the input device.
    #   @return [Types::InputDeviceNetworkSettings]
    # @!attribute serial_number
    #   The unique serial number of the input device.
    #   @return [String]
    # @!attribute type
    #   The type of the input device.
    #   @return [String]
    # @!attribute uhd_device_settings
    #   Settings that describe an input device that is type UHD.
    #   @return [Types::InputDeviceUhdSettings]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute availability_zone
    #   The Availability Zone associated with this input device.
    #   @return [String]
    # @!attribute medialive_input_arns
    #   An array of the ARNs for the MediaLive inputs attached to the device. Returned only if the outputType is MEDIALIVE_INPUT.
    #   @return [Array<String>]
    # @!attribute output_type
    #   The output attachment type of the input device. Specifies MEDIACONNECT_FLOW if this device is the source for a MediaConnect flow. Specifies MEDIALIVE_INPUT if this device is the source for a MediaLive input.
    #   @return [String]
    class InputDeviceSummary < Struct.new(
      :arn,
      :connection_state,
      :device_settings_sync_state,
      :device_update_status,
      :hd_device_settings,
      :id,
      :mac_address,
      :name,
      :network_settings,
      :serial_number,
      :type,
      :uhd_device_settings,
      :tags,
      :availability_zone,
      :medialive_input_arns,
      :output_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # One audio configuration that specifies the format for one audio pair that the device produces as output.
    # @!attribute id
    #   The ID for one audio pair configuration, a value from 1 to 8.
    #   @return [Integer]
    # @!attribute profile
    #   The profile for one audio pair configuration. This property describes one audio configuration in the format (rate control algorithm)-(codec)_(quality)-(bitrate in bytes). For example, CBR-AAC_HQ-192000. Or DISABLED, in which case the device won't produce audio for this pair.
    #   @return [String]
    class InputDeviceUhdAudioChannelPairConfig < Struct.new(
      :id,
      :profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings that describe the active source from the input device, and the video characteristics of that source.
    # @!attribute active_input
    #   If you specified Auto as the configured input, specifies which of the sources is currently active (SDI or HDMI).
    #   @return [String]
    # @!attribute configured_input
    #   The source at the input device that is currently active. You can specify this source.
    #   @return [String]
    # @!attribute device_state
    #   The state of the input device.
    #   @return [String]
    # @!attribute framerate
    #   The frame rate of the video source.
    #   @return [Float]
    # @!attribute height
    #   The height of the video source, in pixels.
    #   @return [Integer]
    # @!attribute max_bitrate
    #   The current maximum bitrate for ingesting this source, in bits per second. You can specify this maximum.
    #   @return [Integer]
    # @!attribute scan_type
    #   The scan type of the video source.
    #   @return [String]
    # @!attribute width
    #   The width of the video source, in pixels.
    #   @return [Integer]
    # @!attribute latency_ms
    #   The Link device's buffer size (latency) in milliseconds (ms). You can specify this value.
    #   @return [Integer]
    # @!attribute codec
    #   The codec for the video that the device produces.
    #   @return [String]
    # @!attribute mediaconnect_settings
    #   Information about the MediaConnect flow attached to the device. Returned only if the outputType is MEDIACONNECT_FLOW.
    #   @return [Types::InputDeviceMediaConnectSettings]
    # @!attribute audio_channel_pairs
    #   An array of eight audio configurations, one for each audio pair in the source. Each audio configuration specifies either to exclude the pair, or to format it and include it in the output from the UHD device. Applies only when the device is configured as the source for a MediaConnect flow.
    #   @return [Array<Types::InputDeviceUhdAudioChannelPairConfig>]
    # @!attribute input_resolution
    #   The resolution of the Link device's source (HD or UHD). This value determines MediaLive resource allocation and billing for this input.
    #   @return [String]
    class InputDeviceUhdSettings < Struct.new(
      :active_input,
      :configured_input,
      :device_state,
      :framerate,
      :height,
      :max_bitrate,
      :scan_type,
      :width,
      :latency_ms,
      :codec,
      :mediaconnect_settings,
      :audio_channel_pairs,
      :input_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input Location
    # @!attribute password_param
    #   key used to extract the password from EC2 Parameter store
    #   @return [String]
    # @!attribute uri
    #   Uniform Resource Identifier - This should be a path to a file accessible to the Live system (eg. a http:// URI) depending on the output type. For example, a RTMP destination should have a uri simliar to: "rtmp://fmsserver/live".
    #   @return [String]
    # @!attribute username
    #   Documentation update needed
    #   @return [String]
    class InputLocation < Struct.new(
      :password_param,
      :uri,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input Loss Behavior
    # @!attribute black_frame_msec
    #   Documentation update needed
    #   @return [Integer]
    # @!attribute input_loss_image_color
    #   When input loss image type is "color" this field specifies the color to use. Value: 6 hex characters representing the values of RGB.
    #   @return [String]
    # @!attribute input_loss_image_slate
    #   When input loss image type is "slate" these fields specify the parameters for accessing the slate.
    #   @return [Types::InputLocation]
    # @!attribute input_loss_image_type
    #   Indicates whether to substitute a solid color or a slate into the output after input loss exceeds blackFrameMsec.
    #   @return [String]
    # @!attribute repeat_frame_msec
    #   Documentation update needed
    #   @return [Integer]
    class InputLossBehavior < Struct.new(
      :black_frame_msec,
      :input_loss_image_color,
      :input_loss_image_slate,
      :input_loss_image_type,
      :repeat_frame_msec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # MediaLive will perform a failover if content is not detected in this input for the specified period.
    # @!attribute input_loss_threshold_msec
    #   The amount of time (in milliseconds) that no input is detected. After that time, an input failover will occur.
    #   @return [Integer]
    class InputLossFailoverSettings < Struct.new(
      :input_loss_threshold_msec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Action to prepare an input for a future immediate input switch.
    # @!attribute input_attachment_name_reference
    #   The name of the input attachment that should be prepared by this action. If no name is provided, the action will stop the most recent prepare (if any) when activated.
    #   @return [String]
    # @!attribute input_clipping_settings
    #   Settings to let you create a clip of the file input, in order to set up the input to ingest only a portion of the file.
    #   @return [Types::InputClippingSettings]
    # @!attribute url_path
    #   The value for the variable portion of the URL for the dynamic input, for this instance of the input. Each time you use the same dynamic input in an input switch action, you can provide a different value, in order to connect the input to a different content source.
    #   @return [Array<String>]
    class InputPrepareScheduleActionSettings < Struct.new(
      :input_attachment_name_reference,
      :input_clipping_settings,
      :url_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A network route configuration.
    # @!attribute cidr
    #   The CIDR of the route.
    #   @return [String]
    # @!attribute gateway
    #   An optional gateway for the route.
    #   @return [String]
    class InputRequestDestinationRoute < Struct.new(
      :cidr,
      :gateway,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The location of the SDP file for one of the SMPTE 2110 streams in a receiver group.
    # @!attribute media_index
    #   The index of the media stream in the SDP file for one SMPTE 2110 stream.
    #   @return [Integer]
    # @!attribute sdp_url
    #   The URL of the SDP file for one SMPTE 2110 stream.
    #   @return [String]
    class InputSdpLocation < Struct.new(
      :media_index,
      :sdp_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An Input Security Group
    # @!attribute arn
    #   Unique ARN of Input Security Group
    #   @return [String]
    # @!attribute id
    #   The Id of the Input Security Group
    #   @return [String]
    # @!attribute inputs
    #   The list of inputs currently using this Input Security Group.
    #   @return [Array<String>]
    # @!attribute state
    #   The current state of the Input Security Group.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute whitelist_rules
    #   Whitelist rules and their sync status
    #   @return [Array<Types::InputWhitelistRule>]
    class InputSecurityGroup < Struct.new(
      :arn,
      :id,
      :inputs,
      :state,
      :tags,
      :whitelist_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Live Event input parameters. There can be multiple inputs in a single Live Event.
    # @!attribute audio_selectors
    #   Used to select the audio stream to decode for inputs that have multiple available.
    #   @return [Array<Types::AudioSelector>]
    # @!attribute caption_selectors
    #   Used to select the caption input to use for inputs that have multiple available.
    #   @return [Array<Types::CaptionSelector>]
    # @!attribute deblock_filter
    #   Enable or disable the deblock filter when filtering.
    #   @return [String]
    # @!attribute denoise_filter
    #   Enable or disable the denoise filter when filtering.
    #   @return [String]
    # @!attribute filter_strength
    #   Adjusts the magnitude of filtering from 1 (minimal) to 5 (strongest).
    #   @return [Integer]
    # @!attribute input_filter
    #   Turns on the filter for this input. MPEG-2 inputs have the deblocking filter enabled by default.
    #   1) auto - filtering will be applied depending on input type/quality
    #   2) disabled - no filtering will be applied to the input
    #   3) forced - filtering will be applied regardless of input type
    #   @return [String]
    # @!attribute network_input_settings
    #   Input settings.
    #   @return [Types::NetworkInputSettings]
    # @!attribute scte35_pid
    #   PID from which to read SCTE-35 messages. If left undefined, EML will select the first SCTE-35 PID found in the input.
    #   @return [Integer]
    # @!attribute smpte2038_data_preference
    #   Specifies whether to extract applicable ancillary data from a SMPTE-2038 source in this input. Applicable data types are captions, timecode, AFD, and SCTE-104 messages.
    #   - PREFER: Extract from SMPTE-2038 if present in this input, otherwise extract from another source (if any).
    #   - IGNORE: Never extract any ancillary data from SMPTE-2038.
    #   @return [String]
    # @!attribute source_end_behavior
    #   Loop input if it is a file. This allows a file input to be streamed indefinitely.
    #   @return [String]
    # @!attribute video_selector
    #   Informs which video elementary stream to decode for input types that have multiple available.
    #   @return [Types::VideoSelector]
    class InputSettings < Struct.new(
      :audio_selectors,
      :caption_selectors,
      :deblock_filter,
      :denoise_filter,
      :filter_strength,
      :input_filter,
      :network_input_settings,
      :scte35_pid,
      :smpte2038_data_preference,
      :source_end_behavior,
      :video_selector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The settings for a PULL type input.
    # @!attribute password_param
    #   The key used to extract the password from EC2 Parameter store.
    #   @return [String]
    # @!attribute url
    #   This represents the customer's source URL where stream is
    #   pulled from.
    #   @return [String]
    # @!attribute username
    #   The username for the input source.
    #   @return [String]
    class InputSource < Struct.new(
      :password_param,
      :url,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for for a PULL type input.
    # @!attribute password_param
    #   The key used to extract the password from EC2 Parameter store.
    #   @return [String]
    # @!attribute url
    #   This represents the customer's source URL where stream is
    #   pulled from.
    #   @return [String]
    # @!attribute username
    #   The username for the input source.
    #   @return [String]
    class InputSourceRequest < Struct.new(
      :password_param,
      :url,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for InputSpecification
    # @!attribute codec
    #   Input codec
    #   @return [String]
    # @!attribute maximum_bitrate
    #   Maximum input bitrate, categorized coarsely
    #   @return [String]
    # @!attribute resolution
    #   Input resolution, categorized coarsely
    #   @return [String]
    class InputSpecification < Struct.new(
      :codec,
      :maximum_bitrate,
      :resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for the "switch input" action: to switch from ingesting one input to ingesting another input.
    # @!attribute input_attachment_name_reference
    #   The name of the input attachment (not the name of the input!) to switch to. The name is specified in the channel configuration.
    #   @return [String]
    # @!attribute input_clipping_settings
    #   Settings to let you create a clip of the file input, in order to set up the input to ingest only a portion of the file.
    #   @return [Types::InputClippingSettings]
    # @!attribute url_path
    #   The value for the variable portion of the URL for the dynamic input, for this instance of the input. Each time you use the same dynamic input in an input switch action, you can provide a different value, in order to connect the input to a different content source.
    #   @return [Array<String>]
    class InputSwitchScheduleActionSettings < Struct.new(
      :input_attachment_name_reference,
      :input_clipping_settings,
      :url_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for a private VPC Input.
    # When this property is specified, the input destination addresses will be created in a VPC rather than with public Internet addresses.
    # This property requires setting the roleArn property on Input creation.
    # Not compatible with the inputSecurityGroups property.
    # @!attribute security_group_ids
    #   A list of up to 5 EC2 VPC security group IDs to attach to the Input VPC network interfaces.
    #   Requires subnetIds. If none are specified then the VPC default security group will be used.
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   A list of 2 VPC subnet IDs from the same VPC.
    #   Subnet IDs must be mapped to two unique availability zones (AZ).
    #   @return [Array<String>]
    class InputVpcRequest < Struct.new(
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Whitelist rule
    # @!attribute cidr
    #   The IPv4 CIDR that's whitelisted.
    #   @return [String]
    class InputWhitelistRule < Struct.new(
      :cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An IPv4 CIDR to whitelist.
    # @!attribute cidr
    #   The IPv4 CIDR to whitelist.
    #   @return [String]
    class InputWhitelistRuleCidr < Struct.new(
      :cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in ClusterNetworkSettings
    # @!attribute logical_interface_name
    #   The logical name for one interface (on every Node) that handles a specific type of traffic. We recommend that the name hints at the physical interface it applies to. For example, it could refer to the traffic that the physical interface handles. For example, my-Inputs-Interface.
    #   @return [String]
    # @!attribute network_id
    #   The ID of the network that you want to connect to the specified logicalInterfaceName.
    #   @return [String]
    class InterfaceMapping < Struct.new(
      :logical_interface_name,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in ClusterNetworkSettingsCreateRequest.
    # @!attribute logical_interface_name
    #   The logical name for one interface (on every Node) that handles a specific type of traffic. We recommend that the name hints at the physical interface it applies to. For example, it could refer to the traffic that the physical interface handles. For example, my-Inputs-Interface.
    #   @return [String]
    # @!attribute network_id
    #   The ID of the network that you want to connect to the specified logicalInterfaceName.
    #   @return [String]
    class InterfaceMappingCreateRequest < Struct.new(
      :logical_interface_name,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for InterfaceMappingUpdateRequest
    # @!attribute logical_interface_name
    #   The logical name for one interface (on every Node) that handles a specific type of traffic. We recommend that the name hints at the physical interface it applies to. For example, it could refer to the traffic that the physical interface handles. For example, my-Inputs-Interface.
    #   @return [String]
    # @!attribute network_id
    #   The ID of the network that you want to connect to the specified logicalInterfaceName. You can use the ListNetworks operation to discover all the IDs.
    #   @return [String]
    class InterfaceMappingUpdateRequest < Struct.new(
      :logical_interface_name,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for InternalServerErrorException
    # @!attribute message
    #   Placeholder documentation for __string
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in DescribeNetworkResult, DescribeNetworkSummary, UpdateNetworkResult.
    # @!attribute cidr
    #   A CIDR block of IP addresses that are reserved for MediaLive Anywhere.
    #   @return [String]
    class IpPool < Struct.new(
      :cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in CreateNetworkRequest.
    # @!attribute cidr
    #   A CIDR block of IP addresses to reserve for MediaLive Anywhere.
    #   @return [String]
    class IpPoolCreateRequest < Struct.new(
      :cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in UpdateNetworkRequest.
    # @!attribute cidr
    #   A CIDR block of IP addresses to reserve for MediaLive Anywhere.
    #   @return [String]
    class IpPoolUpdateRequest < Struct.new(
      :cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Key Provider Settings
    # @!attribute static_key_settings
    #   Static Key Settings
    #   @return [Types::StaticKeySettings]
    class KeyProviderSettings < Struct.new(
      :static_key_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListChannelPlacementGroupsRequest
    # @!attribute cluster_id
    #   The ID of the cluster
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    # @!attribute next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    class ListChannelPlacementGroupsRequest < Struct.new(
      :cluster_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListChannelPlacementGroupsResponse
    # @!attribute channel_placement_groups
    #   An array of ChannelPlacementGroups that exist in the Cluster.
    #   @return [Array<Types::DescribeChannelPlacementGroupSummary>]
    # @!attribute next_token
    #   Token for the next result.
    #   @return [String]
    class ListChannelPlacementGroupsResponse < Struct.new(
      :channel_placement_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListChannelsRequest
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    class ListChannelsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListChannelsResponse
    # @!attribute channels
    #   Placeholder documentation for __listOfChannelSummary
    #   @return [Array<Types::ChannelSummary>]
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    class ListChannelsResponse < Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListCloudWatchAlarmTemplateGroupsRequest
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute next_token
    #   A token used to retrieve the next set of results in paginated list responses.
    #   @return [String]
    # @!attribute scope
    #   Represents the scope of a resource, with options for all scopes, AWS provided resources, or local resources.
    #   @return [String]
    # @!attribute signal_map_identifier
    #   A signal map's identifier. Can be either be its id or current name.
    #   @return [String]
    class ListCloudWatchAlarmTemplateGroupsRequest < Struct.new(
      :max_results,
      :next_token,
      :scope,
      :signal_map_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListCloudWatchAlarmTemplateGroupsResponse
    # @!attribute cloud_watch_alarm_template_groups
    #   Placeholder documentation for __listOfCloudWatchAlarmTemplateGroupSummary
    #   @return [Array<Types::CloudWatchAlarmTemplateGroupSummary>]
    # @!attribute next_token
    #   A token used to retrieve the next set of results in paginated list responses.
    #   @return [String]
    class ListCloudWatchAlarmTemplateGroupsResponse < Struct.new(
      :cloud_watch_alarm_template_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListCloudWatchAlarmTemplatesRequest
    # @!attribute group_identifier
    #   A cloudwatch alarm template group's identifier. Can be either be its id or current name.
    #   @return [String]
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute next_token
    #   A token used to retrieve the next set of results in paginated list responses.
    #   @return [String]
    # @!attribute scope
    #   Represents the scope of a resource, with options for all scopes, AWS provided resources, or local resources.
    #   @return [String]
    # @!attribute signal_map_identifier
    #   A signal map's identifier. Can be either be its id or current name.
    #   @return [String]
    class ListCloudWatchAlarmTemplatesRequest < Struct.new(
      :group_identifier,
      :max_results,
      :next_token,
      :scope,
      :signal_map_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListCloudWatchAlarmTemplatesResponse
    # @!attribute cloud_watch_alarm_templates
    #   Placeholder documentation for __listOfCloudWatchAlarmTemplateSummary
    #   @return [Array<Types::CloudWatchAlarmTemplateSummary>]
    # @!attribute next_token
    #   A token used to retrieve the next set of results in paginated list responses.
    #   @return [String]
    class ListCloudWatchAlarmTemplatesResponse < Struct.new(
      :cloud_watch_alarm_templates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListClustersRequest
    # @!attribute max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    # @!attribute next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    class ListClustersRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListClustersResponse
    # @!attribute clusters
    #   A list of the Clusters that exist in your AWS account.
    #   @return [Array<Types::DescribeClusterSummary>]
    # @!attribute next_token
    #   Token for the next result.
    #   @return [String]
    class ListClustersResponse < Struct.new(
      :clusters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListEventBridgeRuleTemplateGroupsRequest
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute next_token
    #   A token used to retrieve the next set of results in paginated list responses.
    #   @return [String]
    # @!attribute signal_map_identifier
    #   A signal map's identifier. Can be either be its id or current name.
    #   @return [String]
    class ListEventBridgeRuleTemplateGroupsRequest < Struct.new(
      :max_results,
      :next_token,
      :signal_map_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListEventBridgeRuleTemplateGroupsResponse
    # @!attribute event_bridge_rule_template_groups
    #   Placeholder documentation for __listOfEventBridgeRuleTemplateGroupSummary
    #   @return [Array<Types::EventBridgeRuleTemplateGroupSummary>]
    # @!attribute next_token
    #   A token used to retrieve the next set of results in paginated list responses.
    #   @return [String]
    class ListEventBridgeRuleTemplateGroupsResponse < Struct.new(
      :event_bridge_rule_template_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListEventBridgeRuleTemplatesRequest
    # @!attribute group_identifier
    #   An eventbridge rule template group's identifier. Can be either be its id or current name.
    #   @return [String]
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute next_token
    #   A token used to retrieve the next set of results in paginated list responses.
    #   @return [String]
    # @!attribute signal_map_identifier
    #   A signal map's identifier. Can be either be its id or current name.
    #   @return [String]
    class ListEventBridgeRuleTemplatesRequest < Struct.new(
      :group_identifier,
      :max_results,
      :next_token,
      :signal_map_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListEventBridgeRuleTemplatesResponse
    # @!attribute event_bridge_rule_templates
    #   Placeholder documentation for __listOfEventBridgeRuleTemplateSummary
    #   @return [Array<Types::EventBridgeRuleTemplateSummary>]
    # @!attribute next_token
    #   A token used to retrieve the next set of results in paginated list responses.
    #   @return [String]
    class ListEventBridgeRuleTemplatesResponse < Struct.new(
      :event_bridge_rule_templates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListInputDeviceTransfersRequest
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    # @!attribute transfer_type
    #   Placeholder documentation for __string
    #   @return [String]
    class ListInputDeviceTransfersRequest < Struct.new(
      :max_results,
      :next_token,
      :transfer_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListInputDeviceTransfersResponse
    # @!attribute input_device_transfers
    #   The list of devices that you are transferring or are being transferred to you.
    #   @return [Array<Types::TransferringInputDeviceSummary>]
    # @!attribute next_token
    #   A token to get additional list results.
    #   @return [String]
    class ListInputDeviceTransfersResponse < Struct.new(
      :input_device_transfers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListInputDevicesRequest
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    class ListInputDevicesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListInputDevicesResponse
    # @!attribute input_devices
    #   The list of input devices.
    #   @return [Array<Types::InputDeviceSummary>]
    # @!attribute next_token
    #   A token to get additional list results.
    #   @return [String]
    class ListInputDevicesResponse < Struct.new(
      :input_devices,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListInputSecurityGroupsRequest
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    class ListInputSecurityGroupsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListInputSecurityGroupsResponse
    # @!attribute input_security_groups
    #   List of input security groups
    #   @return [Array<Types::InputSecurityGroup>]
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    class ListInputSecurityGroupsResponse < Struct.new(
      :input_security_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListInputsRequest
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    class ListInputsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListInputsResponse
    # @!attribute inputs
    #   Placeholder documentation for __listOfInput
    #   @return [Array<Types::Input>]
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    class ListInputsResponse < Struct.new(
      :inputs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListMultiplexProgramsRequest
    # @!attribute max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    # @!attribute multiplex_id
    #   The ID of the multiplex that the programs belong to.
    #   @return [String]
    # @!attribute next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    class ListMultiplexProgramsRequest < Struct.new(
      :max_results,
      :multiplex_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListMultiplexProgramsResponse
    # @!attribute multiplex_programs
    #   List of multiplex programs.
    #   @return [Array<Types::MultiplexProgramSummary>]
    # @!attribute next_token
    #   Token for the next ListMultiplexProgram request.
    #   @return [String]
    class ListMultiplexProgramsResponse < Struct.new(
      :multiplex_programs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListMultiplexesRequest
    # @!attribute max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    # @!attribute next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    class ListMultiplexesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListMultiplexesResponse
    # @!attribute multiplexes
    #   List of multiplexes.
    #   @return [Array<Types::MultiplexSummary>]
    # @!attribute next_token
    #   Token for the next ListMultiplexes request.
    #   @return [String]
    class ListMultiplexesResponse < Struct.new(
      :multiplexes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListNetworksRequest
    # @!attribute max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    # @!attribute next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    class ListNetworksRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListNetworksResponse
    # @!attribute networks
    #   An array of networks that you have created.
    #   @return [Array<Types::DescribeNetworkSummary>]
    # @!attribute next_token
    #   Token for the next ListNetworks request.
    #   @return [String]
    class ListNetworksResponse < Struct.new(
      :networks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListNodesRequest
    # @!attribute cluster_id
    #   The ID of the cluster
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    # @!attribute next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    class ListNodesRequest < Struct.new(
      :cluster_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListNodesResponse
    # @!attribute next_token
    #   Token for the next result.
    #   @return [String]
    # @!attribute nodes
    #   An array of Nodes that exist in the Cluster.
    #   @return [Array<Types::DescribeNodeSummary>]
    class ListNodesResponse < Struct.new(
      :next_token,
      :nodes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListOfferingsRequest
    # @!attribute channel_class
    #   Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'
    #   @return [String]
    # @!attribute channel_configuration
    #   Filter to offerings that match the configuration of an existing channel, e.g. '2345678' (a channel ID)
    #   @return [String]
    # @!attribute codec
    #   Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', 'LINK', or 'AV1'
    #   @return [String]
    # @!attribute duration
    #   Filter by offering duration, e.g. '12'
    #   @return [String]
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute maximum_bitrate
    #   Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
    #   @return [String]
    # @!attribute maximum_framerate
    #   Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
    #   @return [String]
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    # @!attribute resolution
    #   Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'
    #   @return [String]
    # @!attribute resource_type
    #   Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
    #   @return [String]
    # @!attribute special_feature
    #   Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
    #   @return [String]
    # @!attribute video_quality
    #   Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
    #   @return [String]
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
      :video_quality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListOfferingsResponse
    # @!attribute next_token
    #   Token to retrieve the next page of results
    #   @return [String]
    # @!attribute offerings
    #   List of offerings
    #   @return [Array<Types::Offering>]
    class ListOfferingsResponse < Struct.new(
      :next_token,
      :offerings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListReservationsRequest
    # @!attribute channel_class
    #   Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'
    #   @return [String]
    # @!attribute codec
    #   Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', 'LINK', or 'AV1'
    #   @return [String]
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute maximum_bitrate
    #   Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
    #   @return [String]
    # @!attribute maximum_framerate
    #   Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
    #   @return [String]
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    # @!attribute resolution
    #   Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'
    #   @return [String]
    # @!attribute resource_type
    #   Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
    #   @return [String]
    # @!attribute special_feature
    #   Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
    #   @return [String]
    # @!attribute video_quality
    #   Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
    #   @return [String]
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
      :video_quality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListReservationsResponse
    # @!attribute next_token
    #   Token to retrieve the next page of results
    #   @return [String]
    # @!attribute reservations
    #   List of reservations
    #   @return [Array<Types::Reservation>]
    class ListReservationsResponse < Struct.new(
      :next_token,
      :reservations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListSdiSourcesRequest
    # @!attribute max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    # @!attribute next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    class ListSdiSourcesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListSdiSourcesResponse
    # @!attribute next_token
    #   Placeholder documentation for __string
    #   @return [String]
    # @!attribute sdi_sources
    #   Placeholder documentation for __listOfSdiSourceSummary
    #   @return [Array<Types::SdiSourceSummary>]
    class ListSdiSourcesResponse < Struct.new(
      :next_token,
      :sdi_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListSignalMapsRequest
    # @!attribute cloud_watch_alarm_template_group_identifier
    #   A cloudwatch alarm template group's identifier. Can be either be its id or current name.
    #   @return [String]
    # @!attribute event_bridge_rule_template_group_identifier
    #   An eventbridge rule template group's identifier. Can be either be its id or current name.
    #   @return [String]
    # @!attribute max_results
    #   Placeholder documentation for MaxResults
    #   @return [Integer]
    # @!attribute next_token
    #   A token used to retrieve the next set of results in paginated list responses.
    #   @return [String]
    class ListSignalMapsRequest < Struct.new(
      :cloud_watch_alarm_template_group_identifier,
      :event_bridge_rule_template_group_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListSignalMapsResponse
    # @!attribute next_token
    #   A token used to retrieve the next set of results in paginated list responses.
    #   @return [String]
    # @!attribute signal_maps
    #   Placeholder documentation for __listOfSignalMapSummary
    #   @return [Array<Types::SignalMapSummary>]
    class ListSignalMapsResponse < Struct.new(
      :next_token,
      :signal_maps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListTagsForResourceRequest
    # @!attribute resource_arn
    #   Placeholder documentation for __string
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListTagsForResourceResponse
    # @!attribute tags
    #   Placeholder documentation for Tags
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListVersionsRequest
    class ListVersionsRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ListVersionsResponse
    # @!attribute versions
    #   List of engine versions that are available for this AWS account.
    #   @return [Array<Types::ChannelEngineVersionResponse>]
    class ListVersionsResponse < Struct.new(
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # M2ts Settings
    # @!attribute absent_input_audio_behavior
    #   When set to drop, output audio streams will be removed from the program if the selected input audio stream is removed from the input. This allows the output audio configuration to dynamically change based on input configuration. If this is set to encodeSilence, all output audio streams will output encoded silence when not connected to an active input stream.
    #   @return [String]
    # @!attribute arib
    #   When set to enabled, uses ARIB-compliant field muxing and removes video descriptor.
    #   @return [String]
    # @!attribute arib_captions_pid
    #   Packet Identifier (PID) for ARIB Captions in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute arib_captions_pid_control
    #   If set to auto, pid number used for ARIB Captions will be auto-selected from unused pids.  If set to useConfigured, ARIB Captions will be on the configured pid number.
    #   @return [String]
    # @!attribute audio_buffer_model
    #   When set to dvb, uses DVB buffer model for Dolby Digital audio.  When set to atsc, the ATSC model is used.
    #   @return [String]
    # @!attribute audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #   @return [Integer]
    # @!attribute audio_pids
    #   Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values. Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute audio_stream_type
    #   When set to atsc, uses stream type = 0x81 for AC3 and stream type = 0x87 for EAC3. When set to dvb, uses stream type = 0x06.
    #   @return [String]
    # @!attribute bitrate
    #   The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate.
    #   @return [Integer]
    # @!attribute buffer_model
    #   Controls the timing accuracy for output network traffic. Leave as MULTIPLEX to ensure accurate network packet timing. Or set to NONE, which might result in lower latency but will result in more variability in output network packet timing. This variability might cause interruptions, jitter, or bursty behavior in your playback or receiving devices.
    #   @return [String]
    # @!attribute cc_descriptor
    #   When set to enabled, generates captionServiceDescriptor in PMT.
    #   @return [String]
    # @!attribute dvb_nit_settings
    #   Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
    #   @return [Types::DvbNitSettings]
    # @!attribute dvb_sdt_settings
    #   Inserts DVB Service Description Table (SDT) at the specified table repetition interval.
    #   @return [Types::DvbSdtSettings]
    # @!attribute dvb_sub_pids
    #   Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute dvb_tdt_settings
    #   Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
    #   @return [Types::DvbTdtSettings]
    # @!attribute dvb_teletext_pid
    #   Packet Identifier (PID) for input source DVB Teletext data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute ebif
    #   If set to passthrough, passes any EBIF data from the input source to this output.
    #   @return [String]
    # @!attribute ebp_audio_interval
    #   When videoAndFixedIntervals is selected, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. Only available when EBP Cablelabs segmentation markers are selected.  Partitions 1 and 2 will always follow the video interval.
    #   @return [String]
    # @!attribute ebp_lookahead_ms
    #   When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker.  The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
    #   @return [Integer]
    # @!attribute ebp_placement
    #   Controls placement of EBP on Audio PIDs. If set to videoAndAudioPids, EBP markers will be placed on the video PID and all audio PIDs.  If set to videoPid, EBP markers will be placed on only the video PID.
    #   @return [String]
    # @!attribute ecm_pid
    #   This field is unused and deprecated.
    #   @return [String]
    # @!attribute es_rate_in_pes
    #   Include or exclude the ES Rate field in the PES header.
    #   @return [String]
    # @!attribute etv_platform_pid
    #   Packet Identifier (PID) for input source ETV Platform data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute etv_signal_pid
    #   Packet Identifier (PID) for input source ETV Signal data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute fragment_time
    #   The length in seconds of each fragment. Only used with EBP markers.
    #   @return [Float]
    # @!attribute klv
    #   If set to passthrough, passes any KLV data from the input source to this output.
    #   @return [String]
    # @!attribute klv_data_pids
    #   Packet Identifier (PID) for input source KLV data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute nielsen_id3_behavior
    #   If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #   @return [String]
    # @!attribute null_packet_bitrate
    #   Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
    #   @return [Float]
    # @!attribute pat_interval
    #   The number of milliseconds between instances of this table in the output transport stream.  Valid values are 0, 10..1000.
    #   @return [Integer]
    # @!attribute pcr_control
    #   When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
    #   @return [String]
    # @!attribute pcr_period
    #   Maximum time in milliseconds between Program Clock Reference (PCRs) inserted into the transport stream.
    #   @return [Integer]
    # @!attribute pcr_pid
    #   Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute pmt_interval
    #   The number of milliseconds between instances of this table in the output transport stream. Valid values are 0, 10..1000.
    #   @return [Integer]
    # @!attribute pmt_pid
    #   Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value. Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute program_num
    #   The value of the program number field in the Program Map Table.
    #   @return [Integer]
    # @!attribute rate_mode
    #   When vbr, does not insert null packets into transport stream to fill specified bitrate. The bitrate setting acts as the maximum bitrate when vbr is set.
    #   @return [String]
    # @!attribute scte27_pids
    #   Packet Identifier (PID) for input source SCTE-27 data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute scte35_control
    #   Optionally pass SCTE-35 signals from the input source to this output.
    #   @return [String]
    # @!attribute scte35_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute segmentation_markers
    #   Inserts segmentation markers at each segmentationTime period. raiSegstart sets the Random Access Indicator bit in the adaptation field. raiAdapt sets the RAI bit and adds the current timecode in the private data bytes. psiSegstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebpLegacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
    #   @return [String]
    # @!attribute segmentation_style
    #   The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted.
    #   
    #   When a segmentation style of "resetCadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of $segmentationTime seconds.
    #   
    #   When a segmentation style of "maintainCadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentationTime seconds. Note that EBP lookahead is a slight exception to this rule.
    #   @return [String]
    # @!attribute segmentation_time
    #   The length in seconds of each segment. Required unless markers is set to _none_.
    #   @return [Float]
    # @!attribute timed_metadata_behavior
    #   When set to passthrough, timed metadata will be passed through from input to output.
    #   @return [String]
    # @!attribute timed_metadata_pid
    #   Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute transport_stream_id
    #   The value of the transport stream ID field in the Program Map Table.
    #   @return [Integer]
    # @!attribute video_pid
    #   Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute scte35_preroll_pullup_milliseconds
    #   Defines the amount SCTE-35 preroll will be increased (in milliseconds) on the output. Preroll is the amount of time between the presence of a SCTE-35 indication in a transport stream and the PTS of the video frame it references. Zero means don't add pullup (it doesn't mean set the preroll to zero). Negative pullup is not supported, which means that you can't make the preroll shorter. Be aware that latency in the output will increase by the pullup amount.
    #   @return [Float]
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
      :nielsen_id3_behavior,
      :null_packet_bitrate,
      :pat_interval,
      :pcr_control,
      :pcr_period,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :program_num,
      :rate_mode,
      :scte27_pids,
      :scte35_control,
      :scte35_pid,
      :segmentation_markers,
      :segmentation_style,
      :segmentation_time,
      :timed_metadata_behavior,
      :timed_metadata_pid,
      :transport_stream_id,
      :video_pid,
      :scte35_preroll_pullup_milliseconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings information for the .m3u8 container
    # @!attribute audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #   @return [Integer]
    # @!attribute audio_pids
    #   Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.
    #   @return [String]
    # @!attribute ecm_pid
    #   This parameter is unused and deprecated.
    #   @return [String]
    # @!attribute nielsen_id3_behavior
    #   If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #   @return [String]
    # @!attribute pat_interval
    #   The number of milliseconds between instances of this table in the output transport stream. A value of \"0\" writes out the PMT once per segment file.
    #   @return [Integer]
    # @!attribute pcr_control
    #   When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
    #   @return [String]
    # @!attribute pcr_period
    #   Maximum time in milliseconds between Program Clock References (PCRs) inserted into the transport stream.
    #   @return [Integer]
    # @!attribute pcr_pid
    #   Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.
    #   @return [String]
    # @!attribute pmt_interval
    #   The number of milliseconds between instances of this table in the output transport stream. A value of \"0\" writes out the PMT once per segment file.
    #   @return [Integer]
    # @!attribute pmt_pid
    #   Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value.
    #   @return [String]
    # @!attribute program_num
    #   The value of the program number field in the Program Map Table.
    #   @return [Integer]
    # @!attribute scte35_behavior
    #   If set to passthrough, passes any SCTE-35 signals from the input source to this output.
    #   @return [String]
    # @!attribute scte35_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.
    #   @return [String]
    # @!attribute timed_metadata_behavior
    #   Set to PASSTHROUGH to enable ID3 metadata insertion. To include metadata, you configure other parameters in the output group or individual outputs, or you add an ID3 action to the channel schedule.
    #   @return [String]
    # @!attribute timed_metadata_pid
    #   Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    # @!attribute transport_stream_id
    #   The value of the transport stream ID field in the Program Map Table.
    #   @return [Integer]
    # @!attribute video_pid
    #   Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.
    #   @return [String]
    # @!attribute klv_behavior
    #   If set to passthrough, passes any KLV data from the input source to this output.
    #   @return [String]
    # @!attribute klv_data_pids
    #   Packet Identifier (PID) for input source KLV data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    #   @return [String]
    class M3u8Settings < Struct.new(
      :audio_frames_per_pes,
      :audio_pids,
      :ecm_pid,
      :nielsen_id3_behavior,
      :pat_interval,
      :pcr_control,
      :pcr_period,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :program_num,
      :scte35_behavior,
      :scte35_pid,
      :timed_metadata_behavior,
      :timed_metadata_pid,
      :transport_stream_id,
      :video_pid,
      :klv_behavior,
      :klv_data_pids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for MaintenanceCreateSettings
    # @!attribute maintenance_day
    #   Choose one day of the week for maintenance. The chosen day is used for all future maintenance windows.
    #   @return [String]
    # @!attribute maintenance_start_time
    #   Choose the hour that maintenance will start. The chosen time is used for all future maintenance windows.
    #   @return [String]
    class MaintenanceCreateSettings < Struct.new(
      :maintenance_day,
      :maintenance_start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for MaintenanceStatus
    # @!attribute maintenance_day
    #   The currently selected maintenance day.
    #   @return [String]
    # @!attribute maintenance_deadline
    #   Maintenance is required by the displayed date and time. Date and time is in ISO.
    #   @return [String]
    # @!attribute maintenance_scheduled_date
    #   The currently scheduled maintenance date and time. Date and time is in ISO.
    #   @return [String]
    # @!attribute maintenance_start_time
    #   The currently selected maintenance start time. Time is in UTC.
    #   @return [String]
    class MaintenanceStatus < Struct.new(
      :maintenance_day,
      :maintenance_deadline,
      :maintenance_scheduled_date,
      :maintenance_start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for MaintenanceUpdateSettings
    # @!attribute maintenance_day
    #   Choose one day of the week for maintenance. The chosen day is used for all future maintenance windows.
    #   @return [String]
    # @!attribute maintenance_scheduled_date
    #   Choose a specific date for maintenance to occur. The chosen date is used for the next maintenance window only.
    #   @return [String]
    # @!attribute maintenance_start_time
    #   Choose the hour that maintenance will start. The chosen time is used for all future maintenance windows.
    #   @return [String]
    class MaintenanceUpdateSettings < Struct.new(
      :maintenance_day,
      :maintenance_scheduled_date,
      :maintenance_start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The settings for a MediaConnect Flow.
    # @!attribute flow_arn
    #   The unique ARN of the MediaConnect Flow being used as a source.
    #   @return [String]
    class MediaConnectFlow < Struct.new(
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The settings for a MediaConnect Flow.
    # @!attribute flow_arn
    #   The ARN of the MediaConnect Flow that you want to use as a source.
    #   @return [String]
    class MediaConnectFlowRequest < Struct.new(
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Media Package Group Settings
    # @!attribute destination
    #   MediaPackage channel destination.
    #   @return [Types::OutputLocationRef]
    class MediaPackageGroupSettings < Struct.new(
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # MediaPackage Output Destination Settings
    # @!attribute channel_id
    #   ID of the channel in MediaPackage that is the destination for this output group. You do not need to specify the individual inputs in MediaPackage; MediaLive will handle the connection of the two MediaLive pipelines to the two MediaPackage inputs. The MediaPackage channel and MediaLive channel must be in the same region.
    #   @return [String]
    # @!attribute channel_group
    #   Name of the channel group in MediaPackageV2. Only use if you are sending CMAF Ingest output to a CMAF ingest endpoint on a MediaPackage channel that uses MediaPackage v2.
    #   @return [String]
    # @!attribute channel_name
    #   Name of the channel in MediaPackageV2. Only use if you are sending CMAF Ingest output to a CMAF ingest endpoint on a MediaPackage channel that uses MediaPackage v2.
    #   @return [String]
    class MediaPackageOutputDestinationSettings < Struct.new(
      :channel_id,
      :channel_group,
      :channel_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Media Package Output Settings
    class MediaPackageOutputSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An AWS resource used in media workflows.
    # @!attribute destinations
    #   Placeholder documentation for __listOfMediaResourceNeighbor
    #   @return [Array<Types::MediaResourceNeighbor>]
    # @!attribute name
    #   The logical name of an AWS media resource.
    #   @return [String]
    # @!attribute sources
    #   Placeholder documentation for __listOfMediaResourceNeighbor
    #   @return [Array<Types::MediaResourceNeighbor>]
    class MediaResource < Struct.new(
      :destinations,
      :name,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A direct source or destination neighbor to an AWS media resource.
    # @!attribute arn
    #   The ARN of a resource used in AWS media workflows.
    #   @return [String]
    # @!attribute name
    #   The logical name of an AWS media resource.
    #   @return [String]
    class MediaResourceNeighbor < Struct.new(
      :arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Represents the latest monitor deployment of a signal map.
    # @!attribute details_uri
    #   URI associated with a signal map's monitor deployment.
    #   @return [String]
    # @!attribute error_message
    #   Error message associated with a failed monitor deployment of a signal map.
    #   @return [String]
    # @!attribute status
    #   A signal map's monitor deployment status.
    #   @return [String]
    class MonitorDeployment < Struct.new(
      :details_uri,
      :error_message,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings to specify the rendering of motion graphics into the video stream.
    # @!attribute duration
    #   Duration (in milliseconds) that motion graphics should render on to the video stream. Leaving out this property or setting to 0 will result in rendering continuing until a deactivate action is processed.
    #   @return [Integer]
    # @!attribute password_param
    #   Key used to extract the password from EC2 Parameter store
    #   @return [String]
    # @!attribute url
    #   URI of the HTML5 content to be rendered into the live stream.
    #   @return [String]
    # @!attribute username
    #   Documentation update needed
    #   @return [String]
    class MotionGraphicsActivateScheduleActionSettings < Struct.new(
      :duration,
      :password_param,
      :url,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Motion Graphics Configuration
    # @!attribute motion_graphics_insertion
    #   Motion Graphics Insertion
    #   @return [String]
    # @!attribute motion_graphics_settings
    #   Motion Graphics Settings
    #   @return [Types::MotionGraphicsSettings]
    class MotionGraphicsConfiguration < Struct.new(
      :motion_graphics_insertion,
      :motion_graphics_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings to specify the ending of rendering motion graphics into the video stream.
    class MotionGraphicsDeactivateScheduleActionSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Motion Graphics Settings
    # @!attribute html_motion_graphics_settings
    #   Html Motion Graphics Settings
    #   @return [Types::HtmlMotionGraphicsSettings]
    class MotionGraphicsSettings < Struct.new(
      :html_motion_graphics_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mp2 Settings
    # @!attribute bitrate
    #   Average bitrate in bits/second.
    #   @return [Float]
    # @!attribute coding_mode
    #   The MPEG2 Audio coding mode.  Valid values are codingMode10 (for mono) or codingMode20 (for stereo).
    #   @return [String]
    # @!attribute sample_rate
    #   Sample rate in Hz.
    #   @return [Float]
    class Mp2Settings < Struct.new(
      :bitrate,
      :coding_mode,
      :sample_rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mpeg2 Filter Settings
    # @!attribute temporal_filter_settings
    #   Temporal Filter Settings
    #   @return [Types::TemporalFilterSettings]
    class Mpeg2FilterSettings < Struct.new(
      :temporal_filter_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mpeg2 Settings
    # @!attribute adaptive_quantization
    #   Choose Off to disable adaptive quantization. Or choose another value to enable the quantizer and set its strength. The strengths are: Auto, Off, Low, Medium, High. When you enable this field, MediaLive allows intra-frame quantizers to vary, which might improve visual quality.
    #   @return [String]
    # @!attribute afd_signaling
    #   Indicates the AFD values that MediaLive will write into the video encode. If you do not know what AFD signaling is, or if your downstream system has not given you guidance, choose AUTO.
    #   AUTO: MediaLive will try to preserve the input AFD value (in cases where multiple AFD values are valid).
    #   FIXED: MediaLive will use the value you specify in fixedAFD.
    #   @return [String]
    # @!attribute color_metadata
    #   Specifies whether to include the color space metadata. The metadata describes the color space that applies to the video (the colorSpace field). We recommend that you insert the metadata.
    #   @return [String]
    # @!attribute color_space
    #   Choose the type of color space conversion to apply to the output. For detailed information on setting up both the input and the output to obtain the desired color space in the output, see the section on \"MediaLive Features - Video - color space\" in the MediaLive User Guide.
    #   PASSTHROUGH: Keep the color space of the input content - do not convert it.
    #   AUTO:Convert all content that is SD to rec 601, and convert all content that is HD to rec 709.
    #   @return [String]
    # @!attribute display_aspect_ratio
    #   Sets the pixel aspect ratio for the encode.
    #   @return [String]
    # @!attribute filter_settings
    #   Optionally specify a noise reduction filter, which can improve quality of compressed content. If you do not choose a filter, no filter will be applied.
    #   TEMPORAL: This filter is useful for both source content that is noisy (when it has excessive digital artifacts) and source content that is clean.
    #   When the content is noisy, the filter cleans up the source content before the encoding phase, with these two effects: First, it improves the output video quality because the content has been cleaned up. Secondly, it decreases the bandwidth because MediaLive does not waste bits on encoding noise.
    #   When the content is reasonably clean, the filter tends to decrease the bitrate.
    #   @return [Types::Mpeg2FilterSettings]
    # @!attribute fixed_afd
    #   Complete this field only when afdSignaling is set to FIXED. Enter the AFD value (4 bits) to write on all frames of the video encode.
    #   @return [String]
    # @!attribute framerate_denominator
    #   description": "The framerate denominator. For example, 1001. The framerate is the numerator divided by the denominator. For example, 24000 / 1001 = 23.976 FPS.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   The framerate numerator. For example, 24000. The framerate is the numerator divided by the denominator. For example, 24000 / 1001 = 23.976 FPS.
    #   @return [Integer]
    # @!attribute gop_closed_cadence
    #   MPEG2: default is open GOP.
    #   @return [Integer]
    # @!attribute gop_num_b_frames
    #   Relates to the GOP structure. The number of B-frames between reference frames. If you do not know what a B-frame is, use the default.
    #   @return [Integer]
    # @!attribute gop_size
    #   Relates to the GOP structure. The GOP size (keyframe interval) in the units specified in gopSizeUnits. If you do not know what GOP is, use the default.
    #   If gopSizeUnits is frames, then the gopSize must be an integer and must be greater than or equal to 1.
    #   If gopSizeUnits is seconds, the gopSize must be greater than 0, but does not need to be an integer.
    #   @return [Float]
    # @!attribute gop_size_units
    #   Relates to the GOP structure. Specifies whether the gopSize is specified in frames or seconds. If you do not plan to change the default gopSize, leave the default. If you specify SECONDS, MediaLive will internally convert the gop size to a frame count.
    #   @return [String]
    # @!attribute scan_type
    #   Set the scan type of the output to PROGRESSIVE or INTERLACED (top field first).
    #   @return [String]
    # @!attribute subgop_length
    #   Relates to the GOP structure. If you do not know what GOP is, use the default.
    #   FIXED: Set the number of B-frames in each sub-GOP to the value in gopNumBFrames.
    #   DYNAMIC: Let MediaLive optimize the number of B-frames in each sub-GOP, to improve visual quality.
    #   @return [String]
    # @!attribute timecode_insertion
    #   Determines how MediaLive inserts timecodes in the output video. For detailed information about setting up the input and the output for a timecode, see the section on \"MediaLive Features - Timecode configuration\" in the MediaLive User Guide.
    #   DISABLED: do not include timecodes.
    #   GOP_TIMECODE: Include timecode metadata in the GOP header.
    #   @return [String]
    # @!attribute timecode_burnin_settings
    #   Timecode burn-in settings
    #   @return [Types::TimecodeBurninSettings]
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
      :timecode_insertion,
      :timecode_burnin_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Ms Smooth Group Settings
    # @!attribute acquisition_point_id
    #   The ID to include in each message in the sparse track. Ignored if sparseTrackType is NONE.
    #   @return [String]
    # @!attribute audio_only_timecode_control
    #   If set to passthrough for an audio-only MS Smooth output, the fragment absolute time will be set to the current timecode. This option does not write timecodes to the audio elementary stream.
    #   @return [String]
    # @!attribute certificate_mode
    #   If set to verifyAuthenticity, verify the https certificate chain to a trusted Certificate Authority (CA).  This will cause https outputs to self-signed certificates to fail.
    #   @return [String]
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying connection to the IIS server if the connection is lost. Content will be cached during this time and the cache will be be delivered to the IIS server once the connection is re-established.
    #   @return [Integer]
    # @!attribute destination
    #   Smooth Streaming publish point on an IIS server. Elemental Live acts as a "Push" encoder to IIS.
    #   @return [Types::OutputLocationRef]
    # @!attribute event_id
    #   MS Smooth event ID to be sent to the IIS server.
    #   
    #   Should only be specified if eventIdMode is set to useConfigured.
    #   @return [String]
    # @!attribute event_id_mode
    #   Specifies whether or not to send an event ID to the IIS server. If no event ID is sent and the same Live Event is used without changing the publishing point, clients might see cached video from the previous run.
    #   
    #   Options:
    #   - "useConfigured" - use the value provided in eventId
    #   - "useTimestamp" - generate and send an event ID based on the current timestamp
    #   - "noEventId" - do not send an event ID to the IIS server.
    #   @return [String]
    # @!attribute event_stop_behavior
    #   When set to sendEos, send EOS signal to IIS server when stopping the event
    #   @return [String]
    # @!attribute filecache_duration
    #   Size in seconds of file cache for streaming outputs.
    #   @return [Integer]
    # @!attribute fragment_length
    #   Length of mp4 fragments to generate (in seconds). Fragment length must be compatible with GOP size and framerate.
    #   @return [Integer]
    # @!attribute input_loss_action
    #   Parameter that control output group behavior on input loss.
    #   @return [String]
    # @!attribute num_retries
    #   Number of retry attempts.
    #   @return [Integer]
    # @!attribute restart_delay
    #   Number of seconds before initiating a restart due to output failure, due to exhausting the numRetries on one segment, or exceeding filecacheDuration.
    #   @return [Integer]
    # @!attribute segmentation_mode
    #   useInputSegmentation has been deprecated. The configured segment size is always used.
    #   @return [String]
    # @!attribute send_delay_ms
    #   Number of milliseconds to delay the output from the second pipeline.
    #   @return [Integer]
    # @!attribute sparse_track_type
    #   Identifies the type of data to place in the sparse track:
    #   - SCTE35: Insert SCTE-35 messages from the source content. With each message, insert an IDR frame to start a new segment.
    #   - SCTE35_WITHOUT_SEGMENTATION: Insert SCTE-35 messages from the source content. With each message, insert an IDR frame but don't start a new segment.
    #   - NONE: Don't generate a sparse track for any outputs in this output group.
    #   @return [String]
    # @!attribute stream_manifest_behavior
    #   When set to send, send stream manifest so publishing point doesn't start until all streams start.
    #   @return [String]
    # @!attribute timestamp_offset
    #   Timestamp offset for the event.  Only used if timestampOffsetMode is set to useConfiguredOffset.
    #   @return [String]
    # @!attribute timestamp_offset_mode
    #   Type of timestamp date offset to use.
    #   - useEventStartDate: Use the date the event was started as the offset
    #   - useConfiguredOffset: Use an explicitly configured date as the offset
    #   @return [String]
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
      :timestamp_offset_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Ms Smooth Output Settings
    # @!attribute h265_packaging_type
    #   Only applicable when this output is referencing an H.265 video description.
    #   Specifies whether MP4 segments should be packaged as HEV1 or HVC1.
    #   @return [String]
    # @!attribute name_modifier
    #   String concatenated to the end of the destination filename.  Required for multiple outputs of the same type.
    #   @return [String]
    class MsSmoothOutputSettings < Struct.new(
      :h265_packaging_type,
      :name_modifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Multicast-specific input settings.
    # @!attribute source_ip_address
    #   Optionally, a source ip address to filter by for Source-specific Multicast (SSM)
    #   @return [String]
    class MulticastInputSettings < Struct.new(
      :source_ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for a Multicast input. Contains a list of multicast Urls and optional source ip addresses.
    # @!attribute sources
    #   Placeholder documentation for __listOfMulticastSource
    #   @return [Array<Types::MulticastSource>]
    class MulticastSettings < Struct.new(
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for a Multicast input. Contains a list of multicast Urls and optional source ip addresses.
    # @!attribute sources
    #   Placeholder documentation for __listOfMulticastSourceCreateRequest
    #   @return [Array<Types::MulticastSourceCreateRequest>]
    class MulticastSettingsCreateRequest < Struct.new(
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for a Multicast input. Contains a list of multicast Urls and optional source ip addresses.
    # @!attribute sources
    #   Placeholder documentation for __listOfMulticastSourceUpdateRequest
    #   @return [Array<Types::MulticastSourceUpdateRequest>]
    class MulticastSettingsUpdateRequest < Struct.new(
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Pair of multicast url and source ip address (optional) that make up a multicast source.
    # @!attribute source_ip
    #   This represents the ip address of the device sending the multicast stream.
    #   @return [String]
    # @!attribute url
    #   This represents the customer's source URL where multicast stream is pulled from.
    #   @return [String]
    class MulticastSource < Struct.new(
      :source_ip,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Pair of multicast url and source ip address (optional) that make up a multicast source.
    # @!attribute source_ip
    #   This represents the ip address of the device sending the multicast stream.
    #   @return [String]
    # @!attribute url
    #   This represents the customer's source URL where multicast stream is pulled from.
    #   @return [String]
    class MulticastSourceCreateRequest < Struct.new(
      :source_ip,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Pair of multicast url and source ip address (optional) that make up a multicast source.
    # @!attribute source_ip
    #   This represents the ip address of the device sending the multicast stream.
    #   @return [String]
    # @!attribute url
    #   This represents the customer's source URL where multicast stream is pulled from.
    #   @return [String]
    class MulticastSourceUpdateRequest < Struct.new(
      :source_ip,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The multiplex object.
    # @!attribute arn
    #   The unique arn of the multiplex.
    #   @return [String]
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #   @return [Array<String>]
    # @!attribute destinations
    #   A list of the multiplex output destinations.
    #   @return [Array<Types::MultiplexOutputDestination>]
    # @!attribute id
    #   The unique id of the multiplex.
    #   @return [String]
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #   @return [Types::MultiplexSettings]
    # @!attribute name
    #   The name of the multiplex.
    #   @return [String]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #   @return [Integer]
    # @!attribute state
    #   The current state of the multiplex.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Multiplex Container Settings
    # @!attribute multiplex_m2ts_settings
    #   Multiplex M2ts Settings
    #   @return [Types::MultiplexM2tsSettings]
    class MultiplexContainerSettings < Struct.new(
      :multiplex_m2ts_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Multiplex Group Settings
    class MultiplexGroupSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Multiplex M2ts Settings
    # @!attribute absent_input_audio_behavior
    #   When set to drop, output audio streams will be removed from the program if the selected input audio stream is removed from the input. This allows the output audio configuration to dynamically change based on input configuration. If this is set to encodeSilence, all output audio streams will output encoded silence when not connected to an active input stream.
    #   @return [String]
    # @!attribute arib
    #   When set to enabled, uses ARIB-compliant field muxing and removes video descriptor.
    #   @return [String]
    # @!attribute audio_buffer_model
    #   When set to dvb, uses DVB buffer model for Dolby Digital audio.  When set to atsc, the ATSC model is used.
    #   @return [String]
    # @!attribute audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #   @return [Integer]
    # @!attribute audio_stream_type
    #   When set to atsc, uses stream type = 0x81 for AC3 and stream type = 0x87 for EAC3. When set to dvb, uses stream type = 0x06.
    #   @return [String]
    # @!attribute cc_descriptor
    #   When set to enabled, generates captionServiceDescriptor in PMT.
    #   @return [String]
    # @!attribute ebif
    #   If set to passthrough, passes any EBIF data from the input source to this output.
    #   @return [String]
    # @!attribute es_rate_in_pes
    #   Include or exclude the ES Rate field in the PES header.
    #   @return [String]
    # @!attribute klv
    #   If set to passthrough, passes any KLV data from the input source to this output.
    #   @return [String]
    # @!attribute nielsen_id3_behavior
    #   If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #   @return [String]
    # @!attribute pcr_control
    #   When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
    #   @return [String]
    # @!attribute pcr_period
    #   Maximum time in milliseconds between Program Clock Reference (PCRs) inserted into the transport stream.
    #   @return [Integer]
    # @!attribute scte35_control
    #   Optionally pass SCTE-35 signals from the input source to this output.
    #   @return [String]
    # @!attribute scte35_preroll_pullup_milliseconds
    #   Defines the amount SCTE-35 preroll will be increased (in milliseconds) on the output. Preroll is the amount of time between the presence of a SCTE-35 indication in a transport stream and the PTS of the video frame it references. Zero means don't add pullup (it doesn't mean set the preroll to zero). Negative pullup is not supported, which means that you can't make the preroll shorter. Be aware that latency in the output will increase by the pullup amount.
    #   @return [Float]
    class MultiplexM2tsSettings < Struct.new(
      :absent_input_audio_behavior,
      :arib,
      :audio_buffer_model,
      :audio_frames_per_pes,
      :audio_stream_type,
      :cc_descriptor,
      :ebif,
      :es_rate_in_pes,
      :klv,
      :nielsen_id3_behavior,
      :pcr_control,
      :pcr_period,
      :scte35_control,
      :scte35_preroll_pullup_milliseconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Multiplex MediaConnect output destination settings.
    # @!attribute entitlement_arn
    #   The MediaConnect entitlement ARN available as a Flow source.
    #   @return [String]
    class MultiplexMediaConnectOutputDestinationSettings < Struct.new(
      :entitlement_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Multiplex output destination settings
    # @!attribute media_connect_settings
    #   Multiplex MediaConnect output destination settings.
    #   @return [Types::MultiplexMediaConnectOutputDestinationSettings]
    class MultiplexOutputDestination < Struct.new(
      :media_connect_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Multiplex Output Settings
    # @!attribute destination
    #   Destination is a Multiplex.
    #   @return [Types::OutputLocationRef]
    # @!attribute container_settings
    #   Multiplex Container Settings
    #   @return [Types::MultiplexContainerSettings]
    class MultiplexOutputSettings < Struct.new(
      :destination,
      :container_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The multiplex program object.
    # @!attribute channel_id
    #   The MediaLive channel associated with the program.
    #   @return [String]
    # @!attribute multiplex_program_settings
    #   The settings for this multiplex program.
    #   @return [Types::MultiplexProgramSettings]
    # @!attribute packet_identifiers_map
    #   The packet identifier map for this multiplex program.
    #   @return [Types::MultiplexProgramPacketIdentifiersMap]
    # @!attribute pipeline_details
    #   Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time.
    #   @return [Array<Types::MultiplexProgramPipelineDetail>]
    # @!attribute program_name
    #   The name of the multiplex program.
    #   @return [String]
    class MultiplexProgram < Struct.new(
      :channel_id,
      :multiplex_program_settings,
      :packet_identifiers_map,
      :pipeline_details,
      :program_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Multiplex Program Input Destination Settings for outputting a Channel to a Multiplex
    # @!attribute multiplex_id
    #   The ID of the Multiplex that the encoder is providing output to. You do not need to specify the individual inputs to the Multiplex; MediaLive will handle the connection of the two MediaLive pipelines to the two Multiplex instances.
    #   The Multiplex must be in the same region as the Channel.
    #   @return [String]
    # @!attribute program_name
    #   The program name of the Multiplex program that the encoder is providing output to.
    #   @return [String]
    class MultiplexProgramChannelDestinationSettings < Struct.new(
      :multiplex_id,
      :program_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Packet identifiers map for a given Multiplex program.
    # @!attribute audio_pids
    #   Placeholder documentation for __listOf__integer
    #   @return [Array<Integer>]
    # @!attribute dvb_sub_pids
    #   Placeholder documentation for __listOf__integer
    #   @return [Array<Integer>]
    # @!attribute dvb_teletext_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
    # @!attribute etv_platform_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
    # @!attribute etv_signal_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
    # @!attribute klv_data_pids
    #   Placeholder documentation for __listOf__integer
    #   @return [Array<Integer>]
    # @!attribute pcr_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
    # @!attribute pmt_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
    # @!attribute private_metadata_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
    # @!attribute scte27_pids
    #   Placeholder documentation for __listOf__integer
    #   @return [Array<Integer>]
    # @!attribute scte35_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
    # @!attribute timed_metadata_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
    # @!attribute video_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
    # @!attribute arib_captions_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
    # @!attribute dvb_teletext_pids
    #   Placeholder documentation for __listOf__integer
    #   @return [Array<Integer>]
    # @!attribute ecm_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
    # @!attribute smpte2038_pid
    #   Placeholder documentation for __integer
    #   @return [Integer]
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
      :scte27_pids,
      :scte35_pid,
      :timed_metadata_pid,
      :video_pid,
      :arib_captions_pid,
      :dvb_teletext_pids,
      :ecm_pid,
      :smpte2038_pid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The current source for one of the pipelines in the multiplex.
    # @!attribute active_channel_pipeline
    #   Identifies the channel pipeline that is currently active for the pipeline (identified by PipelineId) in the multiplex.
    #   @return [String]
    # @!attribute pipeline_id
    #   Identifies a specific pipeline in the multiplex.
    #   @return [String]
    class MultiplexProgramPipelineDetail < Struct.new(
      :active_channel_pipeline,
      :pipeline_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Transport stream service descriptor configuration for the Multiplex program.
    # @!attribute provider_name
    #   Name of the provider.
    #   @return [String]
    # @!attribute service_name
    #   Name of the service.
    #   @return [String]
    class MultiplexProgramServiceDescriptor < Struct.new(
      :provider_name,
      :service_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Multiplex Program settings configuration.
    # @!attribute preferred_channel_pipeline
    #   Indicates which pipeline is preferred by the multiplex for program ingest.
    #   @return [String]
    # @!attribute program_number
    #   Unique program number.
    #   @return [Integer]
    # @!attribute service_descriptor
    #   Transport stream service descriptor configuration for the Multiplex program.
    #   @return [Types::MultiplexProgramServiceDescriptor]
    # @!attribute video_settings
    #   Program video settings configuration.
    #   @return [Types::MultiplexVideoSettings]
    class MultiplexProgramSettings < Struct.new(
      :preferred_channel_pipeline,
      :program_number,
      :service_descriptor,
      :video_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for MultiplexProgramSummary
    # @!attribute channel_id
    #   The MediaLive Channel associated with the program.
    #   @return [String]
    # @!attribute program_name
    #   The name of the multiplex program.
    #   @return [String]
    class MultiplexProgramSummary < Struct.new(
      :channel_id,
      :program_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Contains configuration for a Multiplex event
    # @!attribute maximum_video_buffer_delay_milliseconds
    #   Maximum video buffer delay in milliseconds.
    #   @return [Integer]
    # @!attribute transport_stream_bitrate
    #   Transport stream bit rate.
    #   @return [Integer]
    # @!attribute transport_stream_id
    #   Transport stream ID.
    #   @return [Integer]
    # @!attribute transport_stream_reserved_bitrate
    #   Transport stream reserved bit rate.
    #   @return [Integer]
    class MultiplexSettings < Struct.new(
      :maximum_video_buffer_delay_milliseconds,
      :transport_stream_bitrate,
      :transport_stream_id,
      :transport_stream_reserved_bitrate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Contains summary configuration for a Multiplex event.
    # @!attribute transport_stream_bitrate
    #   Transport stream bit rate.
    #   @return [Integer]
    class MultiplexSettingsSummary < Struct.new(
      :transport_stream_bitrate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Statmux rate control settings
    # @!attribute maximum_bitrate
    #   Maximum statmux bitrate.
    #   @return [Integer]
    # @!attribute minimum_bitrate
    #   Minimum statmux bitrate.
    #   @return [Integer]
    # @!attribute priority
    #   The purpose of the priority is to use a combination of the\nmultiplex rate control algorithm and the QVBR capability of the\nencoder to prioritize the video quality of some channels in a\nmultiplex over others. Channels that have a higher priority will\nget higher video quality at the expense of the video quality of\nother channels in the multiplex with lower priority.
    #   @return [Integer]
    class MultiplexStatmuxVideoSettings < Struct.new(
      :maximum_bitrate,
      :minimum_bitrate,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for MultiplexSummary
    # @!attribute arn
    #   The unique arn of the multiplex.
    #   @return [String]
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #   @return [Array<String>]
    # @!attribute id
    #   The unique id of the multiplex.
    #   @return [String]
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #   @return [Types::MultiplexSettingsSummary]
    # @!attribute name
    #   The name of the multiplex.
    #   @return [String]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #   @return [Integer]
    # @!attribute state
    #   The current state of the multiplex.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    class MultiplexSummary < Struct.new(
      :arn,
      :availability_zones,
      :id,
      :multiplex_settings,
      :name,
      :pipelines_running_count,
      :program_count,
      :state,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The video configuration for each program in a multiplex.
    # @!attribute constant_bitrate
    #   The constant bitrate configuration for the video encode.
    #   When this field is defined, StatmuxSettings must be undefined.
    #   @return [Integer]
    # @!attribute statmux_settings
    #   Statmux rate control settings.
    #   When this field is defined, ConstantBitrate must be undefined.
    #   @return [Types::MultiplexStatmuxVideoSettings]
    class MultiplexVideoSettings < Struct.new(
      :constant_bitrate,
      :statmux_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Network source to transcode. Must be accessible to the Elemental Live node that is running the live event through a network connection.
    # @!attribute hls_input_settings
    #   Specifies HLS input settings when the uri is for a HLS manifest.
    #   @return [Types::HlsInputSettings]
    # @!attribute server_validation
    #   Check HTTPS server certificates. When set to checkCryptographyOnly, cryptography in the certificate will be checked, but not the server's name. Certain subdomains (notably S3 buckets that use dots in the bucket name) do not strictly match the corresponding certificate's wildcard pattern and would otherwise cause the event to error. This setting is ignored for protocols that do not use https.
    #   @return [String]
    # @!attribute multicast_input_settings
    #   Specifies multicast input settings when the uri is for a multicast event.
    #   @return [Types::MulticastInputSettings]
    class NetworkInputSettings < Struct.new(
      :hls_input_settings,
      :server_validation,
      :multicast_input_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Nielsen CBET
    # @!attribute cbet_check_digit_string
    #   Enter the CBET check digits to use in the watermark.
    #   @return [String]
    # @!attribute cbet_stepaside
    #   Determines the method of CBET insertion mode when prior encoding is detected on the same layer.
    #   @return [String]
    # @!attribute csid
    #   Enter the CBET Source ID (CSID) to use in the watermark
    #   @return [String]
    class NielsenCBET < Struct.new(
      :cbet_check_digit_string,
      :cbet_stepaside,
      :csid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Nielsen Configuration
    # @!attribute distributor_id
    #   Enter the Distributor ID assigned to your organization by Nielsen.
    #   @return [String]
    # @!attribute nielsen_pcm_to_id3_tagging
    #   Enables Nielsen PCM to ID3 tagging
    #   @return [String]
    class NielsenConfiguration < Struct.new(
      :distributor_id,
      :nielsen_pcm_to_id3_tagging,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Nielsen Naes Ii Nw
    # @!attribute check_digit_string
    #   Enter the check digit string for the watermark
    #   @return [String]
    # @!attribute sid
    #   Enter the Nielsen Source ID (SID) to include in the watermark
    #   @return [Float]
    # @!attribute timezone
    #   Choose the timezone for the time stamps in the watermark. If not provided,
    #   the timestamps will be in Coordinated Universal Time (UTC)
    #   @return [String]
    class NielsenNaesIiNw < Struct.new(
      :check_digit_string,
      :sid,
      :timezone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Nielsen Watermarks Settings
    # @!attribute nielsen_cbet_settings
    #   Complete these fields only if you want to insert watermarks of type Nielsen CBET
    #   @return [Types::NielsenCBET]
    # @!attribute nielsen_distribution_type
    #   Choose the distribution types that you want to assign to the watermarks:
    #   - PROGRAM_CONTENT
    #   - FINAL_DISTRIBUTOR
    #   @return [String]
    # @!attribute nielsen_naes_ii_nw_settings
    #   Complete these fields only if you want to insert watermarks of type Nielsen NAES II (N2) and Nielsen NAES VI (NW).
    #   @return [Types::NielsenNaesIiNw]
    class NielsenWatermarksSettings < Struct.new(
      :nielsen_cbet_settings,
      :nielsen_distribution_type,
      :nielsen_naes_ii_nw_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A mapping that's used to pair a logical network interface name on a Node with the physical interface name exposed in the operating system.
    # @!attribute logical_interface_name
    #   A uniform logical interface name to address in a MediaLive channel configuration.
    #   @return [String]
    # @!attribute network_interface_mode
    #   Used in NodeInterfaceMapping and NodeInterfaceMappingCreateRequest
    #   @return [String]
    # @!attribute physical_interface_name
    #   The name of the physical interface on the hardware that will be running Elemental anywhere.
    #   @return [String]
    class NodeInterfaceMapping < Struct.new(
      :logical_interface_name,
      :network_interface_mode,
      :physical_interface_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in CreateNodeRequest.
    # @!attribute logical_interface_name
    #   Specify one of the logicalInterfaceNames that you created in the Cluster that this node belongs to. For example, my-Inputs-Interface.
    #   @return [String]
    # @!attribute network_interface_mode
    #   The style of the network -- NAT or BRIDGE.
    #   @return [String]
    # @!attribute physical_interface_name
    #   Specify the physical name that corresponds to the logicalInterfaceName that you specified in this interface mapping. For example, Eth1 or ENO1234EXAMPLE.
    #   @return [String]
    class NodeInterfaceMappingCreateRequest < Struct.new(
      :logical_interface_name,
      :network_interface_mode,
      :physical_interface_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for NotFoundException
    # @!attribute message
    #   Placeholder documentation for __string
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Reserved resources available for purchase
    # @!attribute arn
    #   Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'
    #   @return [String]
    # @!attribute currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
    #   @return [String]
    # @!attribute duration
    #   Lease duration, e.g. '12'
    #   @return [Integer]
    # @!attribute duration_units
    #   Units for duration, e.g. 'MONTHS'
    #   @return [String]
    # @!attribute fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
    #   @return [Float]
    # @!attribute offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
    #   @return [String]
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #   @return [String]
    # @!attribute offering_type
    #   Offering type, e.g. 'NO_UPFRONT'
    #   @return [String]
    # @!attribute region
    #   AWS region, e.g. 'us-west-2'
    #   @return [String]
    # @!attribute resource_specification
    #   Resource configuration details
    #   @return [Types::ReservationResourceSpecification]
    # @!attribute usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #   @return [Float]
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
      :usage_price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output settings. There can be multiple outputs within a group.
    # @!attribute audio_description_names
    #   The names of the AudioDescriptions used as audio sources for this output.
    #   @return [Array<String>]
    # @!attribute caption_description_names
    #   The names of the CaptionDescriptions used as caption sources for this output.
    #   @return [Array<String>]
    # @!attribute output_name
    #   The name used to identify an output.
    #   @return [String]
    # @!attribute output_settings
    #   Output type-specific settings.
    #   @return [Types::OutputSettings]
    # @!attribute video_description_name
    #   The name of the VideoDescription used as the source for this output.
    #   @return [String]
    class Output < Struct.new(
      :audio_description_names,
      :caption_description_names,
      :output_name,
      :output_settings,
      :video_description_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for OutputDestination
    # @!attribute id
    #   User-specified id. This is used in an output group or an output.
    #   @return [String]
    # @!attribute media_package_settings
    #   Destination settings for a MediaPackage output; one destination for both encoders.
    #   @return [Array<Types::MediaPackageOutputDestinationSettings>]
    # @!attribute multiplex_settings
    #   Destination settings for a Multiplex output; one destination for both encoders.
    #   @return [Types::MultiplexProgramChannelDestinationSettings]
    # @!attribute settings
    #   Destination settings for a standard output; one destination for each redundant encoder.
    #   @return [Array<Types::OutputDestinationSettings>]
    # @!attribute srt_settings
    #   SRT settings for an SRT output; one destination for each redundant encoder.
    #   @return [Array<Types::SrtOutputDestinationSettings>]
    # @!attribute logical_interface_names
    #   Optional assignment of an output to a logical interface on the Node. Only applies to on premises channels.
    #   @return [Array<String>]
    class OutputDestination < Struct.new(
      :id,
      :media_package_settings,
      :multiplex_settings,
      :settings,
      :srt_settings,
      :logical_interface_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for OutputDestinationSettings
    # @!attribute password_param
    #   key used to extract the password from EC2 Parameter store
    #   @return [String]
    # @!attribute stream_name
    #   Stream name for RTMP destinations (URLs of type rtmp://)
    #   @return [String]
    # @!attribute url
    #   A URL specifying a destination
    #   @return [String]
    # @!attribute username
    #   username for destination
    #   @return [String]
    class OutputDestinationSettings < Struct.new(
      :password_param,
      :stream_name,
      :url,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output groups for this Live Event. Output groups contain information about where streams should be distributed.
    # @!attribute name
    #   Custom output group name optionally defined by the user.
    #   @return [String]
    # @!attribute output_group_settings
    #   Settings associated with the output group.
    #   @return [Types::OutputGroupSettings]
    # @!attribute outputs
    #   Placeholder documentation for __listOfOutput
    #   @return [Array<Types::Output>]
    class OutputGroup < Struct.new(
      :name,
      :output_group_settings,
      :outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output Group Settings
    # @!attribute archive_group_settings
    #   Archive Group Settings
    #   @return [Types::ArchiveGroupSettings]
    # @!attribute frame_capture_group_settings
    #   Frame Capture Group Settings
    #   @return [Types::FrameCaptureGroupSettings]
    # @!attribute hls_group_settings
    #   Hls Group Settings
    #   @return [Types::HlsGroupSettings]
    # @!attribute media_package_group_settings
    #   Media Package Group Settings
    #   @return [Types::MediaPackageGroupSettings]
    # @!attribute ms_smooth_group_settings
    #   Ms Smooth Group Settings
    #   @return [Types::MsSmoothGroupSettings]
    # @!attribute multiplex_group_settings
    #   Multiplex Group Settings
    #   @return [Types::MultiplexGroupSettings]
    # @!attribute rtmp_group_settings
    #   Rtmp Group Settings
    #   @return [Types::RtmpGroupSettings]
    # @!attribute udp_group_settings
    #   Udp Group Settings
    #   @return [Types::UdpGroupSettings]
    # @!attribute cmaf_ingest_group_settings
    #   Cmaf Ingest Group Settings
    #   @return [Types::CmafIngestGroupSettings]
    # @!attribute srt_group_settings
    #   Srt Group Settings
    #   @return [Types::SrtGroupSettings]
    class OutputGroupSettings < Struct.new(
      :archive_group_settings,
      :frame_capture_group_settings,
      :hls_group_settings,
      :media_package_group_settings,
      :ms_smooth_group_settings,
      :multiplex_group_settings,
      :rtmp_group_settings,
      :udp_group_settings,
      :cmaf_ingest_group_settings,
      :srt_group_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Reference to an OutputDestination ID defined in the channel
    # @!attribute destination_ref_id
    #   Placeholder documentation for __string
    #   @return [String]
    class OutputLocationRef < Struct.new(
      :destination_ref_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output Locking Settings
    # @!attribute epoch_locking_settings
    #   Epoch Locking Settings
    #   @return [Types::EpochLockingSettings]
    # @!attribute pipeline_locking_settings
    #   Pipeline Locking Settings
    #   @return [Types::PipelineLockingSettings]
    class OutputLockingSettings < Struct.new(
      :epoch_locking_settings,
      :pipeline_locking_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output Settings
    # @!attribute archive_output_settings
    #   Archive Output Settings
    #   @return [Types::ArchiveOutputSettings]
    # @!attribute frame_capture_output_settings
    #   Frame Capture Output Settings
    #   @return [Types::FrameCaptureOutputSettings]
    # @!attribute hls_output_settings
    #   Hls Output Settings
    #   @return [Types::HlsOutputSettings]
    # @!attribute media_package_output_settings
    #   Media Package Output Settings
    #   @return [Types::MediaPackageOutputSettings]
    # @!attribute ms_smooth_output_settings
    #   Ms Smooth Output Settings
    #   @return [Types::MsSmoothOutputSettings]
    # @!attribute multiplex_output_settings
    #   Multiplex Output Settings
    #   @return [Types::MultiplexOutputSettings]
    # @!attribute rtmp_output_settings
    #   Rtmp Output Settings
    #   @return [Types::RtmpOutputSettings]
    # @!attribute udp_output_settings
    #   Udp Output Settings
    #   @return [Types::UdpOutputSettings]
    # @!attribute cmaf_ingest_output_settings
    #   Cmaf Ingest Output Settings
    #   @return [Types::CmafIngestOutputSettings]
    # @!attribute srt_output_settings
    #   Srt Output Settings
    #   @return [Types::SrtOutputSettings]
    class OutputSettings < Struct.new(
      :archive_output_settings,
      :frame_capture_output_settings,
      :hls_output_settings,
      :media_package_output_settings,
      :ms_smooth_output_settings,
      :multiplex_output_settings,
      :rtmp_output_settings,
      :udp_output_settings,
      :cmaf_ingest_output_settings,
      :srt_output_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Pass Through Settings
    class PassThroughSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for the action to set pause state of a channel.
    # @!attribute pipelines
    #   Placeholder documentation for __listOfPipelinePauseStateSettings
    #   @return [Array<Types::PipelinePauseStateSettings>]
    class PauseStateScheduleActionSettings < Struct.new(
      :pipelines,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Runtime details of a pipeline when a channel is running.
    # @!attribute active_input_attachment_name
    #   The name of the active input attachment currently being ingested by this pipeline.
    #   @return [String]
    # @!attribute active_input_switch_action_name
    #   The name of the input switch schedule action that occurred most recently and that resulted in the switch to the current input attachment for this pipeline.
    #   @return [String]
    # @!attribute active_motion_graphics_action_name
    #   The name of the motion graphics activate action that occurred most recently and that resulted in the current graphics URI for this pipeline.
    #   @return [String]
    # @!attribute active_motion_graphics_uri
    #   The current URI being used for HTML5 motion graphics for this pipeline.
    #   @return [String]
    # @!attribute pipeline_id
    #   Pipeline ID
    #   @return [String]
    # @!attribute channel_engine_version
    #   Current engine version of the encoder for this pipeline.
    #   @return [Types::ChannelEngineVersionResponse]
    class PipelineDetail < Struct.new(
      :active_input_attachment_name,
      :active_input_switch_action_name,
      :active_motion_graphics_action_name,
      :active_motion_graphics_uri,
      :pipeline_id,
      :channel_engine_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Pipeline Locking Settings
    class PipelineLockingSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for pausing a pipeline.
    # @!attribute pipeline_id
    #   Pipeline ID to pause ("PIPELINE_0" or "PIPELINE_1").
    #   @return [String]
    class PipelinePauseStateSettings < Struct.new(
      :pipeline_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for PurchaseOfferingRequest
    # @!attribute count
    #   Number of resources
    #   @return [Integer]
    # @!attribute name
    #   Name for the new reservation
    #   @return [String]
    # @!attribute offering_id
    #   Offering to purchase, e.g. '87654321'
    #   @return [String]
    # @!attribute renewal_settings
    #   Renewal settings for the reservation
    #   @return [Types::RenewalSettings]
    # @!attribute request_id
    #   Unique request ID to be specified. This is needed to prevent retries from creating multiple resources.
    #   @return [String]
    # @!attribute start
    #   Requested reservation start time (UTC) in ISO-8601 format. The specified time must be between the first day of the current month and one year from now. If no value is given, the default is now.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs
    #   @return [Hash<String, String>]
    class PurchaseOfferingRequest < Struct.new(
      :count,
      :name,
      :offering_id,
      :renewal_settings,
      :request_id,
      :start,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for PurchaseOfferingResponse
    # @!attribute reservation
    #   Reserved resources available to use
    #   @return [Types::Reservation]
    class PurchaseOfferingResponse < Struct.new(
      :reservation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Raw Settings
    class RawSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to reboot an AWS Elemental device.
    # @!attribute force
    #   Force a reboot of an input device. If the device is streaming, it will stop streaming and begin rebooting within a few seconds of sending the command. If the device was streaming prior to the reboot, the device will resume streaming when the reboot completes.
    #   @return [String]
    # @!attribute input_device_id
    #   The unique ID of the input device to reboot. For example, hd-123456789abcdef.
    #   @return [String]
    class RebootInputDeviceRequest < Struct.new(
      :force,
      :input_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for RebootInputDeviceResponse
    class RebootInputDeviceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Rec601 Settings
    class Rec601Settings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Rec709 Settings
    class Rec709Settings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for RejectInputDeviceTransferRequest
    # @!attribute input_device_id
    #   The unique ID of the input device to reject. For example, hd-123456789abcdef.
    #   @return [String]
    class RejectInputDeviceTransferRequest < Struct.new(
      :input_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for RejectInputDeviceTransferResponse
    class RejectInputDeviceTransferResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Remix Settings
    # @!attribute channel_mappings
    #   Mapping of input channels to output channels, with appropriate gain adjustments.
    #   @return [Array<Types::AudioChannelMapping>]
    # @!attribute channels_in
    #   Number of input channels to be used.
    #   @return [Integer]
    # @!attribute channels_out
    #   Number of output channels to be produced.
    #   Valid values: 1, 2, 4, 6, 8
    #   @return [Integer]
    class RemixSettings < Struct.new(
      :channel_mappings,
      :channels_in,
      :channels_out,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The Renewal settings for Reservations
    # @!attribute automatic_renewal
    #   Automatic renewal status for the reservation
    #   @return [String]
    # @!attribute renewal_count
    #   Count for the reservation renewal
    #   @return [Integer]
    class RenewalSettings < Struct.new(
      :automatic_renewal,
      :renewal_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Reserved resources available to use
    # @!attribute arn
    #   Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
    #   @return [String]
    # @!attribute count
    #   Number of reserved resources
    #   @return [Integer]
    # @!attribute currency_code
    #   Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
    #   @return [String]
    # @!attribute duration
    #   Lease duration, e.g. '12'
    #   @return [Integer]
    # @!attribute duration_units
    #   Units for duration, e.g. 'MONTHS'
    #   @return [String]
    # @!attribute end
    #   Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
    #   @return [String]
    # @!attribute fixed_price
    #   One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
    #   @return [Float]
    # @!attribute name
    #   User specified reservation name
    #   @return [String]
    # @!attribute offering_description
    #   Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
    #   @return [String]
    # @!attribute offering_id
    #   Unique offering ID, e.g. '87654321'
    #   @return [String]
    # @!attribute offering_type
    #   Offering type, e.g. 'NO_UPFRONT'
    #   @return [String]
    # @!attribute region
    #   AWS region, e.g. 'us-west-2'
    #   @return [String]
    # @!attribute renewal_settings
    #   Renewal settings for the reservation
    #   @return [Types::RenewalSettings]
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #   @return [String]
    # @!attribute resource_specification
    #   Resource configuration details
    #   @return [Types::ReservationResourceSpecification]
    # @!attribute start
    #   Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
    #   @return [String]
    # @!attribute state
    #   Current state of reservation, e.g. 'ACTIVE'
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs
    #   @return [Hash<String, String>]
    # @!attribute usage_price
    #   Recurring usage charge for each reserved resource, e.g. '157.0'
    #   @return [Float]
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
      :renewal_settings,
      :reservation_id,
      :resource_specification,
      :start,
      :state,
      :tags,
      :usage_price,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Resource configuration (codec, resolution, bitrate, ...)
    # @!attribute channel_class
    #   Channel class, e.g. 'STANDARD'
    #   @return [String]
    # @!attribute codec
    #   Codec, e.g. 'AVC'
    #   @return [String]
    # @!attribute maximum_bitrate
    #   Maximum bitrate, e.g. 'MAX_20_MBPS'
    #   @return [String]
    # @!attribute maximum_framerate
    #   Maximum framerate, e.g. 'MAX_30_FPS' (Outputs only)
    #   @return [String]
    # @!attribute resolution
    #   Resolution, e.g. 'HD'
    #   @return [String]
    # @!attribute resource_type
    #   Resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
    #   @return [String]
    # @!attribute special_feature
    #   Special feature, e.g. 'AUDIO_NORMALIZATION' (Channels only)
    #   @return [String]
    # @!attribute video_quality
    #   Video quality, e.g. 'STANDARD' (Outputs only)
    #   @return [String]
    class ReservationResourceSpecification < Struct.new(
      :channel_class,
      :codec,
      :maximum_bitrate,
      :maximum_framerate,
      :resolution,
      :resource_type,
      :special_feature,
      :video_quality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Pipelines to restart.
    # @!attribute channel_id
    #   ID of channel
    #   @return [String]
    # @!attribute pipeline_ids
    #   An array of pipelines to restart in this channel. Format PIPELINE_0 or PIPELINE_1.
    #   @return [Array<String>]
    class RestartChannelPipelinesRequest < Struct.new(
      :channel_id,
      :pipeline_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for RestartChannelPipelinesResponse
    # @!attribute arn
    #   The unique arn of the channel.
    #   @return [String]
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #   @return [String]
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #   @return [Array<Types::OutputDestination>]
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #   @return [Array<Types::ChannelEgressEndpoint>]
    # @!attribute encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    # @!attribute id
    #   The unique id of the channel.
    #   @return [String]
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #   @return [Array<Types::InputAttachment>]
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #   @return [String]
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #   @return [Types::MaintenanceStatus]
    # @!attribute maintenance_status
    #   The time in milliseconds by when the PVRE restart must occur.
    #   @return [String]
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #   @return [String]
    # @!attribute pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #   @return [Array<Types::PipelineDetail>]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #   @return [String]
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute vpc
    #   Settings for VPC output
    #   @return [Types::VpcOutputSettingsDescription]
    # @!attribute anywhere_settings
    #   Anywhere settings for this channel.
    #   @return [Types::DescribeAnywhereSettings]
    # @!attribute channel_engine_version
    #   Requested engine version for this channel.
    #   @return [Types::ChannelEngineVersionResponse]
    class RestartChannelPipelinesResponse < Struct.new(
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
      :maintenance,
      :maintenance_status,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      :anywhere_settings,
      :channel_engine_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in DescribeNetworkResult, DescribeNetworkSummary, UpdateNetworkResult.
    # @!attribute cidr
    #   A CIDR block for one Route.
    #   @return [String]
    # @!attribute gateway
    #   The IP address of the Gateway for this route, if applicable.
    #   @return [String]
    class Route < Struct.new(
      :cidr,
      :gateway,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in CreateNetworkRequest.
    # @!attribute cidr
    #   A CIDR block for one Route.
    #   @return [String]
    # @!attribute gateway
    #   The IP address of the Gateway for this route, if applicable.
    #   @return [String]
    class RouteCreateRequest < Struct.new(
      :cidr,
      :gateway,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in UpdateNetworkRequest.
    # @!attribute cidr
    #   A CIDR block for one Route.
    #   @return [String]
    # @!attribute gateway
    #   The IP address of the Gateway for this route, if applicable.
    #   @return [String]
    class RouteUpdateRequest < Struct.new(
      :cidr,
      :gateway,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Rtmp Caption Info Destination Settings
    class RtmpCaptionInfoDestinationSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Rtmp Group Settings
    # @!attribute ad_markers
    #   Choose the ad marker type for this output group. MediaLive will create a message based on the content of each SCTE-35 message, format it for that marker type, and insert it in the datastream.
    #   @return [Array<String>]
    # @!attribute authentication_scheme
    #   Authentication scheme to use when connecting with CDN
    #   @return [String]
    # @!attribute cache_full_behavior
    #   Controls behavior when content cache fills up. If remote origin server stalls the RTMP connection and does not accept content fast enough the 'Media Cache' will fill up. When the cache reaches the duration specified by cacheLength the cache will stop accepting new content. If set to disconnectImmediately, the RTMP output will force a disconnect. Clear the media cache, and reconnect after restartDelay seconds. If set to waitForServer, the RTMP output will wait up to 5 minutes to allow the origin server to begin accepting data again.
    #   @return [String]
    # @!attribute cache_length
    #   Cache length, in seconds, is used to calculate buffer size.
    #   @return [Integer]
    # @!attribute caption_data
    #   Controls the types of data that passes to onCaptionInfo outputs.  If set to 'all' then 608 and 708 carried DTVCC data will be passed.  If set to 'field1AndField2608' then DTVCC data will be stripped out, but 608 data from both fields will be passed. If set to 'field1608' then only the data carried in 608 from field 1 video will be passed.
    #   @return [String]
    # @!attribute input_loss_action
    #   Controls the behavior of this RTMP group if input becomes unavailable.
    #   
    #   - emitOutput: Emit a slate until input returns.
    #   - pauseOutput: Stop transmitting data until input returns. This does not close the underlying RTMP connection.
    #   @return [String]
    # @!attribute restart_delay
    #   If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
    #   @return [Integer]
    # @!attribute include_filler_nal_units
    #   Applies only when the rate control mode (in the codec settings) is CBR (constant bit rate). Controls whether the RTMP output stream is padded (with FILL NAL units) in order to achieve a constant bit rate that is truly constant. When there is no padding, the bandwidth varies (up to the bitrate value in the codec settings). We recommend that you choose Auto.
    #   @return [String]
    class RtmpGroupSettings < Struct.new(
      :ad_markers,
      :authentication_scheme,
      :cache_full_behavior,
      :cache_length,
      :caption_data,
      :input_loss_action,
      :restart_delay,
      :include_filler_nal_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Rtmp Output Settings
    # @!attribute certificate_mode
    #   If set to verifyAuthenticity, verify the tls certificate chain to a trusted Certificate Authority (CA).  This will cause rtmps outputs with self-signed certificates to fail.
    #   @return [String]
    # @!attribute connection_retry_interval
    #   Number of seconds to wait before retrying a connection to the Flash Media server if the connection is lost.
    #   @return [Integer]
    # @!attribute destination
    #   The RTMP endpoint excluding the stream name (eg. rtmp://host/appname). For connection to Akamai, a username and password must be supplied. URI fields accept format identifiers.
    #   @return [Types::OutputLocationRef]
    # @!attribute num_retries
    #   Number of retry attempts.
    #   @return [Integer]
    class RtmpOutputSettings < Struct.new(
      :certificate_mode,
      :connection_retry_interval,
      :destination,
      :num_retries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Contains information on a single schedule action.
    # @!attribute action_name
    #   The name of the action, must be unique within the schedule. This name provides the main reference to an action once it is added to the schedule. A name is unique if it is no longer in the schedule. The schedule is automatically cleaned up to remove actions with a start time of more than 1 hour ago (approximately) so at that point a name can be reused.
    #   @return [String]
    # @!attribute schedule_action_settings
    #   Settings for this schedule action.
    #   @return [Types::ScheduleActionSettings]
    # @!attribute schedule_action_start_settings
    #   The time for the action to start in the channel.
    #   @return [Types::ScheduleActionStartSettings]
    class ScheduleAction < Struct.new(
      :action_name,
      :schedule_action_settings,
      :schedule_action_start_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Holds the settings for a single schedule action.
    # @!attribute hls_id3_segment_tagging_settings
    #   Action to insert ID3 metadata in every segment, in HLS output groups
    #   @return [Types::HlsId3SegmentTaggingScheduleActionSettings]
    # @!attribute hls_timed_metadata_settings
    #   Action to insert ID3 metadata once, in HLS output groups
    #   @return [Types::HlsTimedMetadataScheduleActionSettings]
    # @!attribute input_prepare_settings
    #   Action to prepare an input for a future immediate input switch
    #   @return [Types::InputPrepareScheduleActionSettings]
    # @!attribute input_switch_settings
    #   Action to switch the input
    #   @return [Types::InputSwitchScheduleActionSettings]
    # @!attribute motion_graphics_image_activate_settings
    #   Action to activate a motion graphics image overlay
    #   @return [Types::MotionGraphicsActivateScheduleActionSettings]
    # @!attribute motion_graphics_image_deactivate_settings
    #   Action to deactivate a motion graphics image overlay
    #   @return [Types::MotionGraphicsDeactivateScheduleActionSettings]
    # @!attribute pause_state_settings
    #   Action to pause or unpause one or both channel pipelines
    #   @return [Types::PauseStateScheduleActionSettings]
    # @!attribute scte35_input_settings
    #   Action to specify scte35 input
    #   @return [Types::Scte35InputScheduleActionSettings]
    # @!attribute scte35_return_to_network_settings
    #   Action to insert SCTE-35 return_to_network message
    #   @return [Types::Scte35ReturnToNetworkScheduleActionSettings]
    # @!attribute scte35_splice_insert_settings
    #   Action to insert SCTE-35 splice_insert message
    #   @return [Types::Scte35SpliceInsertScheduleActionSettings]
    # @!attribute scte35_time_signal_settings
    #   Action to insert SCTE-35 time_signal message
    #   @return [Types::Scte35TimeSignalScheduleActionSettings]
    # @!attribute static_image_activate_settings
    #   Action to activate a static image overlay
    #   @return [Types::StaticImageActivateScheduleActionSettings]
    # @!attribute static_image_deactivate_settings
    #   Action to deactivate a static image overlay
    #   @return [Types::StaticImageDeactivateScheduleActionSettings]
    # @!attribute static_image_output_activate_settings
    #   Action to activate a static image overlay in one or more specified outputs
    #   @return [Types::StaticImageOutputActivateScheduleActionSettings]
    # @!attribute static_image_output_deactivate_settings
    #   Action to deactivate a static image overlay in one or more specified outputs
    #   @return [Types::StaticImageOutputDeactivateScheduleActionSettings]
    # @!attribute id3_segment_tagging_settings
    #   Action to insert ID3 metadata in every segment, in applicable output groups
    #   @return [Types::Id3SegmentTaggingScheduleActionSettings]
    # @!attribute timed_metadata_settings
    #   Action to insert ID3 metadata once, in applicable output groups
    #   @return [Types::TimedMetadataScheduleActionSettings]
    class ScheduleActionSettings < Struct.new(
      :hls_id3_segment_tagging_settings,
      :hls_timed_metadata_settings,
      :input_prepare_settings,
      :input_switch_settings,
      :motion_graphics_image_activate_settings,
      :motion_graphics_image_deactivate_settings,
      :pause_state_settings,
      :scte35_input_settings,
      :scte35_return_to_network_settings,
      :scte35_splice_insert_settings,
      :scte35_time_signal_settings,
      :static_image_activate_settings,
      :static_image_deactivate_settings,
      :static_image_output_activate_settings,
      :static_image_output_deactivate_settings,
      :id3_segment_tagging_settings,
      :timed_metadata_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings to specify when an action should occur. Only one of the options must be selected.
    # @!attribute fixed_mode_schedule_action_start_settings
    #   Option for specifying the start time for an action.
    #   @return [Types::FixedModeScheduleActionStartSettings]
    # @!attribute follow_mode_schedule_action_start_settings
    #   Option for specifying an action as relative to another action.
    #   @return [Types::FollowModeScheduleActionStartSettings]
    # @!attribute immediate_mode_schedule_action_start_settings
    #   Option for specifying an action that should be applied immediately.
    #   @return [Types::ImmediateModeScheduleActionStartSettings]
    class ScheduleActionStartSettings < Struct.new(
      :fixed_mode_schedule_action_start_settings,
      :follow_mode_schedule_action_start_settings,
      :immediate_mode_schedule_action_start_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Scte20 Plus Embedded Destination Settings
    class Scte20PlusEmbeddedDestinationSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Scte20 Source Settings
    # @!attribute convert608_to708
    #   If upconvert, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
    #   @return [String]
    # @!attribute source608_channel_number
    #   Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
    #   @return [Integer]
    class Scte20SourceSettings < Struct.new(
      :convert608_to708,
      :source608_channel_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Scte27 Destination Settings
    class Scte27DestinationSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Scte27 Source Settings
    # @!attribute ocr_language
    #   If you will configure a WebVTT caption description that references this caption selector, use this field to
    #   provide the language to consider when translating the image-based source to text.
    #   @return [String]
    # @!attribute pid
    #   The pid field is used in conjunction with the caption selector languageCode field as follows:
    #     - Specify PID and Language: Extracts captions from that PID; the language is "informational".
    #     - Specify PID and omit Language: Extracts the specified PID.
    #     - Omit PID and specify Language: Extracts the specified language, whichever PID that happens to be.
    #     - Omit PID and omit Language: Valid only if source is DVB-Sub that is being passed through; all languages will be passed through.
    #   @return [Integer]
    class Scte27SourceSettings < Struct.new(
      :ocr_language,
      :pid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Corresponds to SCTE-35 delivery_not_restricted_flag parameter. To declare delivery restrictions, include this element and its four "restriction" flags. To declare that there are no restrictions, omit this element.
    # @!attribute archive_allowed_flag
    #   Corresponds to SCTE-35 archive_allowed_flag.
    #   @return [String]
    # @!attribute device_restrictions
    #   Corresponds to SCTE-35 device_restrictions parameter.
    #   @return [String]
    # @!attribute no_regional_blackout_flag
    #   Corresponds to SCTE-35 no_regional_blackout_flag parameter.
    #   @return [String]
    # @!attribute web_delivery_allowed_flag
    #   Corresponds to SCTE-35 web_delivery_allowed_flag parameter.
    #   @return [String]
    class Scte35DeliveryRestrictions < Struct.new(
      :archive_allowed_flag,
      :device_restrictions,
      :no_regional_blackout_flag,
      :web_delivery_allowed_flag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Holds one set of SCTE-35 Descriptor Settings.
    # @!attribute scte35_descriptor_settings
    #   SCTE-35 Descriptor Settings.
    #   @return [Types::Scte35DescriptorSettings]
    class Scte35Descriptor < Struct.new(
      :scte35_descriptor_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # SCTE-35 Descriptor settings.
    # @!attribute segmentation_descriptor_scte35_descriptor_settings
    #   SCTE-35 Segmentation Descriptor.
    #   @return [Types::Scte35SegmentationDescriptor]
    class Scte35DescriptorSettings < Struct.new(
      :segmentation_descriptor_scte35_descriptor_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Scte35Input Schedule Action Settings
    # @!attribute input_attachment_name_reference
    #   In fixed mode, enter the name of the input attachment that you want to use as a SCTE-35 input. (Don't enter the ID of the input.)"
    #   @return [String]
    # @!attribute mode
    #   Whether the SCTE-35 input should be the active input or a fixed input.
    #   @return [String]
    class Scte35InputScheduleActionSettings < Struct.new(
      :input_attachment_name_reference,
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for a SCTE-35 return_to_network message.
    # @!attribute splice_event_id
    #   The splice_event_id for the SCTE-35 splice_insert, as defined in SCTE-35.
    #   @return [Integer]
    class Scte35ReturnToNetworkScheduleActionSettings < Struct.new(
      :splice_event_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Corresponds to SCTE-35 segmentation_descriptor.
    # @!attribute delivery_restrictions
    #   Holds the four SCTE-35 delivery restriction parameters.
    #   @return [Types::Scte35DeliveryRestrictions]
    # @!attribute segment_num
    #   Corresponds to SCTE-35 segment_num. A value that is valid for the specified segmentation_type_id.
    #   @return [Integer]
    # @!attribute segmentation_cancel_indicator
    #   Corresponds to SCTE-35 segmentation_event_cancel_indicator.
    #   @return [String]
    # @!attribute segmentation_duration
    #   Corresponds to SCTE-35 segmentation_duration. Optional. The duration for the time_signal, in 90 KHz ticks. To convert seconds to ticks, multiple the seconds by 90,000. Enter time in 90 KHz clock ticks. If you do not enter a duration, the time_signal will continue until you insert a cancellation message.
    #   @return [Integer]
    # @!attribute segmentation_event_id
    #   Corresponds to SCTE-35 segmentation_event_id.
    #   @return [Integer]
    # @!attribute segmentation_type_id
    #   Corresponds to SCTE-35 segmentation_type_id. One of the segmentation_type_id values listed in the SCTE-35 specification. On the console, enter the ID in decimal (for example, "52"). In the CLI, API, or an SDK, enter the ID in hex (for example, "0x34") or decimal (for example, "52").
    #   @return [Integer]
    # @!attribute segmentation_upid
    #   Corresponds to SCTE-35 segmentation_upid. Enter a string containing the hexadecimal representation of the characters that make up the SCTE-35 segmentation_upid value. Must contain an even number of hex characters. Do not include spaces between each hex pair. For example, the ASCII "ADS Information" becomes hex "41445320496e666f726d6174696f6e.
    #   @return [String]
    # @!attribute segmentation_upid_type
    #   Corresponds to SCTE-35 segmentation_upid_type. On the console, enter one of the types listed in the SCTE-35 specification, converted to a decimal. For example, "0x0C" hex from the specification is "12" in decimal. In the CLI, API, or an SDK, enter one of the types listed in the SCTE-35 specification, in either hex (for example, "0x0C" ) or in decimal (for example, "12").
    #   @return [Integer]
    # @!attribute segments_expected
    #   Corresponds to SCTE-35 segments_expected. A value that is valid for the specified segmentation_type_id.
    #   @return [Integer]
    # @!attribute sub_segment_num
    #   Corresponds to SCTE-35 sub_segment_num. A value that is valid for the specified segmentation_type_id.
    #   @return [Integer]
    # @!attribute sub_segments_expected
    #   Corresponds to SCTE-35 sub_segments_expected. A value that is valid for the specified segmentation_type_id.
    #   @return [Integer]
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
      :sub_segments_expected,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Typical configuration that applies breaks on splice inserts in addition to time signal placement opportunities, breaks, and advertisements.
    # @!attribute ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time. This only applies to embedded SCTE 104/35 messages and does not apply to OOB messages.
    #   @return [Integer]
    # @!attribute no_regional_blackout_flag
    #   When set to ignore, Segment Descriptors with noRegionalBlackoutFlag set to 0 will no longer trigger blackouts or Ad Avail slates
    #   @return [String]
    # @!attribute web_delivery_allowed_flag
    #   When set to ignore, Segment Descriptors with webDeliveryAllowedFlag set to 0 will no longer trigger blackouts or Ad Avail slates
    #   @return [String]
    class Scte35SpliceInsert < Struct.new(
      :ad_avail_offset,
      :no_regional_blackout_flag,
      :web_delivery_allowed_flag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for a SCTE-35 splice_insert message.
    # @!attribute duration
    #   Optional, the duration for the splice_insert, in 90 KHz ticks. To convert seconds to ticks, multiple the seconds by 90,000. If you enter a duration, there is an expectation that the downstream system can read the duration and cue in at that time. If you do not enter a duration, the splice_insert will continue indefinitely and there is an expectation that you will enter a return_to_network to end the splice_insert at the appropriate time.
    #   @return [Integer]
    # @!attribute splice_event_id
    #   The splice_event_id for the SCTE-35 splice_insert, as defined in SCTE-35.
    #   @return [Integer]
    class Scte35SpliceInsertScheduleActionSettings < Struct.new(
      :duration,
      :splice_event_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Atypical configuration that applies segment breaks only on SCTE-35 time signal placement opportunities and breaks.
    # @!attribute ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time. This only applies to embedded SCTE 104/35 messages and does not apply to OOB messages.
    #   @return [Integer]
    # @!attribute no_regional_blackout_flag
    #   When set to ignore, Segment Descriptors with noRegionalBlackoutFlag set to 0 will no longer trigger blackouts or Ad Avail slates
    #   @return [String]
    # @!attribute web_delivery_allowed_flag
    #   When set to ignore, Segment Descriptors with webDeliveryAllowedFlag set to 0 will no longer trigger blackouts or Ad Avail slates
    #   @return [String]
    class Scte35TimeSignalApos < Struct.new(
      :ad_avail_offset,
      :no_regional_blackout_flag,
      :web_delivery_allowed_flag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for a SCTE-35 time_signal.
    # @!attribute scte35_descriptors
    #   The list of SCTE-35 descriptors accompanying the SCTE-35 time_signal.
    #   @return [Array<Types::Scte35Descriptor>]
    class Scte35TimeSignalScheduleActionSettings < Struct.new(
      :scte35_descriptors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in CreateSdiSourceResponse, DeleteSdiSourceResponse, DescribeSdiSourceResponse, ListSdiSourcesResponse, UpdateSdiSourceResponse
    # @!attribute arn
    #   The ARN of this SdiSource. It is automatically assigned when the SdiSource is created.
    #   @return [String]
    # @!attribute id
    #   The ID of the SdiSource. Unique in the AWS account.The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute inputs
    #   The list of inputs that are currently using this SDI source. This list will be empty if the SdiSource has just been deleted.
    #   @return [Array<String>]
    # @!attribute mode
    #   Applies only if the type is QUAD. The mode for handling the quad-link signal QUADRANT or INTERLEAVE.
    #   @return [String]
    # @!attribute name
    #   The name of the SdiSource.
    #   @return [String]
    # @!attribute state
    #   Specifies whether the SDI source is attached to an SDI input (IN_USE) or not (IDLE).
    #   @return [String]
    # @!attribute type
    #   Used in SdiSource, CreateSdiSourceRequest, UpdateSdiSourceRequest.
    #   @return [String]
    class SdiSource < Struct.new(
      :arn,
      :id,
      :inputs,
      :mode,
      :name,
      :state,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in DescribeNodeSummary, DescribeNodeResult.
    # @!attribute card_number
    #   A number that uniquely identifies the SDI card on the node hardware.
    #   @return [Integer]
    # @!attribute channel_number
    #   A number that uniquely identifies a port on the SDI card.
    #   @return [Integer]
    # @!attribute sdi_source
    #   The ID of the SdiSource to associate with this port on this card. You can use the ListSdiSources operation to discover all the IDs.
    #   @return [String]
    class SdiSourceMapping < Struct.new(
      :card_number,
      :channel_number,
      :sdi_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in SdiSourceMappingsUpdateRequest. One SDI source mapping. It connects one logical SdiSource to the physical SDI card and port that the physical SDI source uses. You must specify all three parameters in this object.
    # @!attribute card_number
    #   A number that uniquely identifies the SDI card on the node hardware. For information about how physical cards are identified on your node hardware, see the documentation for your node hardware. The numbering always starts at 1.
    #   @return [Integer]
    # @!attribute channel_number
    #   A number that uniquely identifies a port on the card. This must be an SDI port (not a timecode port, for example). For information about how ports are identified on physical cards, see the documentation for your node hardware.
    #   @return [Integer]
    # @!attribute sdi_source
    #   The ID of a SDI source streaming on the given SDI capture card port.
    #   @return [String]
    class SdiSourceMappingUpdateRequest < Struct.new(
      :card_number,
      :channel_number,
      :sdi_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Used in CreateSdiSourceResponse, DeleteSdiSourceResponse, DescribeSdiSourceResponse, ListSdiSourcesResponse, UpdateSdiSourceResponse
    # @!attribute arn
    #   The ARN of this SdiSource. It is automatically assigned when the SdiSource is created.
    #   @return [String]
    # @!attribute id
    #   The ID of the SdiSource. Unique in the AWS account.The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute inputs
    #   The list of inputs that are currently using this SDI source. This list will be empty if the SdiSource has just been deleted.
    #   @return [Array<String>]
    # @!attribute mode
    #   Applies only if the type is QUAD. The mode for handling the quad-link signal QUADRANT or INTERLEAVE.
    #   @return [String]
    # @!attribute name
    #   The name of the SdiSource.
    #   @return [String]
    # @!attribute state
    #   Specifies whether the SDI source is attached to an SDI input (IN_USE) or not (IDLE).
    #   @return [String]
    # @!attribute type
    #   Used in SdiSource, CreateSdiSourceRequest, UpdateSdiSourceRequest.
    #   @return [String]
    class SdiSourceSummary < Struct.new(
      :arn,
      :id,
      :inputs,
      :mode,
      :name,
      :state,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for SignalMapSummary
    # @!attribute arn
    #   A signal map's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute id
    #   A signal map's id.
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute monitor_deployment_status
    #   A signal map's monitor deployment status.
    #   @return [String]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute status
    #   A signal map's current status which is dependent on its lifecycle actions or associated jobs.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class SignalMapSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :modified_at,
      :monitor_deployment_status,
      :name,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A receiver group is a collection of video, audio, and ancillary streams that you want to group together and attach to one input.
    # @!attribute sdp_settings
    #   The single Smpte2110ReceiverGroupSdpSettings that identify the video, audio, and ancillary streams for this receiver group.
    #   @return [Types::Smpte2110ReceiverGroupSdpSettings]
    class Smpte2110ReceiverGroup < Struct.new(
      :sdp_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about the SDP files that describe the SMPTE 2110 streams that go into one SMPTE 2110 receiver group.
    # @!attribute ancillary_sdps
    #   A list of InputSdpLocations. Each item in the list specifies the SDP file and index for one ancillary SMPTE 2110 stream.
    #   Each stream encapsulates one captions stream (out of any number you can include) or the single SCTE 35 stream that you can include.
    #   @return [Array<Types::InputSdpLocation>]
    # @!attribute audio_sdps
    #   A list of InputSdpLocations. Each item in the list specifies the SDP file and index for one audio SMPTE 2110 stream.
    #   @return [Array<Types::InputSdpLocation>]
    # @!attribute video_sdp
    #   The InputSdpLocation that specifies the SDP file and index for the single video SMPTE 2110 stream for this 2110 input.
    #   @return [Types::InputSdpLocation]
    class Smpte2110ReceiverGroupSdpSettings < Struct.new(
      :ancillary_sdps,
      :audio_sdps,
      :video_sdp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configures the sources for the SMPTE 2110 Receiver Group input.
    # @!attribute smpte2110_receiver_groups
    #   Placeholder documentation for __listOfSmpte2110ReceiverGroup
    #   @return [Array<Types::Smpte2110ReceiverGroup>]
    class Smpte2110ReceiverGroupSettings < Struct.new(
      :smpte2110_receiver_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Smpte Tt Destination Settings
    class SmpteTtDestinationSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The decryption settings for the SRT caller source. Present only if the source has decryption enabled.
    # @!attribute algorithm
    #   The algorithm used to encrypt content.
    #   @return [String]
    # @!attribute passphrase_secret_arn
    #   The ARN for the secret in Secrets Manager. Someone in your organization must create a secret and provide you with its ARN. The secret holds the passphrase that MediaLive uses to decrypt the source content.
    #   @return [String]
    class SrtCallerDecryption < Struct.new(
      :algorithm,
      :passphrase_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Complete these parameters only if the content is encrypted.
    # @!attribute algorithm
    #   The algorithm used to encrypt content.
    #   @return [String]
    # @!attribute passphrase_secret_arn
    #   The ARN for the secret in Secrets Manager. Someone in your organization must create a secret and provide you with its ARN. This secret holds the passphrase that MediaLive will use to decrypt the source content.
    #   @return [String]
    class SrtCallerDecryptionRequest < Struct.new(
      :algorithm,
      :passphrase_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The configuration for a source that uses SRT as the connection protocol. In terms of establishing the connection, MediaLive is always caller and the upstream system is always the listener. In terms of transmission of the source content, MediaLive is always the receiver and the upstream system is always the sender.
    # @!attribute decryption
    #   The decryption settings for the SRT caller source. Present only if the source has decryption enabled.
    #   @return [Types::SrtCallerDecryption]
    # @!attribute minimum_latency
    #   The preferred latency (in milliseconds) for implementing packet loss and recovery. Packet recovery is a key feature of SRT.
    #   @return [Integer]
    # @!attribute srt_listener_address
    #   The IP address at the upstream system (the listener) that MediaLive (the caller) connects to.
    #   @return [String]
    # @!attribute srt_listener_port
    #   The port at the upstream system (the listener) that MediaLive (the caller) connects to.
    #   @return [String]
    # @!attribute stream_id
    #   The stream ID, if the upstream system uses this identifier.
    #   @return [String]
    class SrtCallerSource < Struct.new(
      :decryption,
      :minimum_latency,
      :srt_listener_address,
      :srt_listener_port,
      :stream_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configures the connection for a source that uses SRT as the connection protocol. In terms of establishing the connection, MediaLive is always the caller and the upstream system is always the listener. In terms of transmission of the source content, MediaLive is always the receiver and the upstream system is always the sender.
    # @!attribute decryption
    #   Complete these parameters only if the content is encrypted.
    #   @return [Types::SrtCallerDecryptionRequest]
    # @!attribute minimum_latency
    #   The preferred latency (in milliseconds) for implementing packet loss and recovery. Packet recovery is a key feature of SRT. Obtain this value from the operator at the upstream system.
    #   @return [Integer]
    # @!attribute srt_listener_address
    #   The IP address at the upstream system (the listener) that MediaLive (the caller) will connect to.
    #   @return [String]
    # @!attribute srt_listener_port
    #   The port at the upstream system (the listener) that MediaLive (the caller) will connect to.
    #   @return [String]
    # @!attribute stream_id
    #   This value is required if the upstream system uses this identifier because without it, the SRT handshake between MediaLive (the caller) and the upstream system (the listener) might fail.
    #   @return [String]
    class SrtCallerSourceRequest < Struct.new(
      :decryption,
      :minimum_latency,
      :srt_listener_address,
      :srt_listener_port,
      :stream_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Srt Group Settings
    # @!attribute input_loss_action
    #   Specifies behavior of last resort when input video is lost, and no more backup inputs are available. When dropTs is selected the entire transport stream will stop being emitted.  When dropProgram is selected the program can be dropped from the transport stream (and replaced with null packets to meet the TS bitrate requirement).  Or, when emitProgram is chosen the transport stream will continue to be produced normally with repeat frames, black frames, or slate frames substituted for the absent input video.
    #   @return [String]
    class SrtGroupSettings < Struct.new(
      :input_loss_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for SrtOutputDestinationSettings
    # @!attribute encryption_passphrase_secret_arn
    #   Arn used to extract the password from Secrets Manager
    #   @return [String]
    # @!attribute stream_id
    #   Stream id for SRT destinations (URLs of type srt://)
    #   @return [String]
    # @!attribute url
    #   A URL specifying a destination
    #   @return [String]
    class SrtOutputDestinationSettings < Struct.new(
      :encryption_passphrase_secret_arn,
      :stream_id,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Srt Output Settings
    # @!attribute buffer_msec
    #   SRT output buffering in milliseconds. A higher value increases latency through the encoder. But the benefits are that it helps to maintain a constant, low-jitter SRT output, and it accommodates clock recovery, input switching, input disruptions, picture reordering, and so on. Range: 0-10000 milliseconds.
    #   @return [Integer]
    # @!attribute container_settings
    #   Udp Container Settings
    #   @return [Types::UdpContainerSettings]
    # @!attribute destination
    #   Reference to an OutputDestination ID defined in the channel
    #   @return [Types::OutputLocationRef]
    # @!attribute encryption_type
    #   The encryption level for the content. Valid values are AES128, AES192, AES256. You and the downstream system should plan how to set this field because the values must not conflict with each other.
    #   @return [String]
    # @!attribute latency
    #   The latency value, in milliseconds, that is proposed during the SRT connection handshake. SRT will choose the maximum of the values proposed by the sender and receiver. On the sender side, latency is the amount of time a packet is held to give it a chance to be delivered successfully. On the receiver side, latency is the amount of time the packet is held before delivering to the application, aiding in packet recovery and matching as closely as possible the packet timing of the sender. Range: 40-16000 milliseconds.
    #   @return [Integer]
    class SrtOutputSettings < Struct.new(
      :buffer_msec,
      :container_settings,
      :destination,
      :encryption_type,
      :latency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The configured sources for this SRT input.
    # @!attribute srt_caller_sources
    #   Placeholder documentation for __listOfSrtCallerSource
    #   @return [Array<Types::SrtCallerSource>]
    class SrtSettings < Struct.new(
      :srt_caller_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configures the sources for this SRT input. For a single-pipeline input, include one srtCallerSource in the array. For a standard-pipeline input, include two srtCallerSource.
    # @!attribute srt_caller_sources
    #   Placeholder documentation for __listOfSrtCallerSourceRequest
    #   @return [Array<Types::SrtCallerSourceRequest>]
    class SrtSettingsRequest < Struct.new(
      :srt_caller_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Hls Settings
    # @!attribute audio_rendition_sets
    #   List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','.
    #   @return [String]
    # @!attribute m3u8_settings
    #   Settings information for the .m3u8 container
    #   @return [Types::M3u8Settings]
    class StandardHlsSettings < Struct.new(
      :audio_rendition_sets,
      :m3u8_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartChannelRequest
    # @!attribute channel_id
    #   A request to start a channel
    #   @return [String]
    class StartChannelRequest < Struct.new(
      :channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartChannelResponse
    # @!attribute arn
    #   The unique arn of the channel.
    #   @return [String]
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #   @return [String]
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #   @return [Array<Types::OutputDestination>]
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #   @return [Array<Types::ChannelEgressEndpoint>]
    # @!attribute encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    # @!attribute id
    #   The unique id of the channel.
    #   @return [String]
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #   @return [Array<Types::InputAttachment>]
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #   @return [String]
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #   @return [Types::MaintenanceStatus]
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #   @return [String]
    # @!attribute pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #   @return [Array<Types::PipelineDetail>]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #   @return [String]
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute vpc
    #   Settings for VPC output
    #   @return [Types::VpcOutputSettingsDescription]
    # @!attribute anywhere_settings
    #   Anywhere settings for this channel.
    #   @return [Types::DescribeAnywhereSettings]
    # @!attribute channel_engine_version
    #   Requested engine version for this channel.
    #   @return [Types::ChannelEngineVersionResponse]
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
      :maintenance,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      :anywhere_settings,
      :channel_engine_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartDeleteMonitorDeploymentRequest
    # @!attribute identifier
    #   A signal map's identifier. Can be either be its id or current name.
    #   @return [String]
    class StartDeleteMonitorDeploymentRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartDeleteMonitorDeploymentResponse
    # @!attribute arn
    #   A signal map's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute cloud_watch_alarm_template_group_ids
    #   Placeholder documentation for __listOf__stringMin7Max11PatternAws097
    #   @return [Array<String>]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute discovery_entry_point_arn
    #   A top-level supported AWS resource ARN to discovery a signal map from.
    #   @return [String]
    # @!attribute error_message
    #   Error message associated with a failed creation or failed update attempt of a signal map.
    #   @return [String]
    # @!attribute event_bridge_rule_template_group_ids
    #   Placeholder documentation for __listOf__stringMin7Max11PatternAws097
    #   @return [Array<String>]
    # @!attribute failed_media_resource_map
    #   A map representing an incomplete AWS media workflow as a graph.
    #   @return [Hash<String, Types::MediaResource>]
    # @!attribute id
    #   A signal map's id.
    #   @return [String]
    # @!attribute last_discovered_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute last_successful_monitor_deployment
    #   Represents the latest successful monitor deployment of a signal map.
    #   @return [Types::SuccessfulMonitorDeployment]
    # @!attribute media_resource_map
    #   A map representing an AWS media workflow as a graph.
    #   @return [Hash<String, Types::MediaResource>]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute monitor_changes_pending_deployment
    #   If true, there are pending monitor changes for this signal map that can be deployed.
    #   @return [Boolean]
    # @!attribute monitor_deployment
    #   Represents the latest monitor deployment of a signal map.
    #   @return [Types::MonitorDeployment]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute status
    #   A signal map's current status which is dependent on its lifecycle actions or associated jobs.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class StartDeleteMonitorDeploymentResponse < Struct.new(
      :arn,
      :cloud_watch_alarm_template_group_ids,
      :created_at,
      :description,
      :discovery_entry_point_arn,
      :error_message,
      :event_bridge_rule_template_group_ids,
      :failed_media_resource_map,
      :id,
      :last_discovered_at,
      :last_successful_monitor_deployment,
      :media_resource_map,
      :modified_at,
      :monitor_changes_pending_deployment,
      :monitor_deployment,
      :name,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartInputDeviceMaintenanceWindowRequest
    # @!attribute input_device_id
    #   The unique ID of the input device to start a maintenance window for. For example, hd-123456789abcdef.
    #   @return [String]
    class StartInputDeviceMaintenanceWindowRequest < Struct.new(
      :input_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartInputDeviceMaintenanceWindowResponse
    class StartInputDeviceMaintenanceWindowResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartInputDeviceRequest
    # @!attribute input_device_id
    #   The unique ID of the input device to start. For example, hd-123456789abcdef.
    #   @return [String]
    class StartInputDeviceRequest < Struct.new(
      :input_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartInputDeviceResponse
    class StartInputDeviceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartMonitorDeploymentRequest
    # @!attribute dry_run
    #   Placeholder documentation for __boolean
    #   @return [Boolean]
    # @!attribute identifier
    #   A signal map's identifier. Can be either be its id or current name.
    #   @return [String]
    class StartMonitorDeploymentRequest < Struct.new(
      :dry_run,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartMonitorDeploymentResponse
    # @!attribute arn
    #   A signal map's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute cloud_watch_alarm_template_group_ids
    #   Placeholder documentation for __listOf__stringMin7Max11PatternAws097
    #   @return [Array<String>]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute discovery_entry_point_arn
    #   A top-level supported AWS resource ARN to discovery a signal map from.
    #   @return [String]
    # @!attribute error_message
    #   Error message associated with a failed creation or failed update attempt of a signal map.
    #   @return [String]
    # @!attribute event_bridge_rule_template_group_ids
    #   Placeholder documentation for __listOf__stringMin7Max11PatternAws097
    #   @return [Array<String>]
    # @!attribute failed_media_resource_map
    #   A map representing an incomplete AWS media workflow as a graph.
    #   @return [Hash<String, Types::MediaResource>]
    # @!attribute id
    #   A signal map's id.
    #   @return [String]
    # @!attribute last_discovered_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute last_successful_monitor_deployment
    #   Represents the latest successful monitor deployment of a signal map.
    #   @return [Types::SuccessfulMonitorDeployment]
    # @!attribute media_resource_map
    #   A map representing an AWS media workflow as a graph.
    #   @return [Hash<String, Types::MediaResource>]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute monitor_changes_pending_deployment
    #   If true, there are pending monitor changes for this signal map that can be deployed.
    #   @return [Boolean]
    # @!attribute monitor_deployment
    #   Represents the latest monitor deployment of a signal map.
    #   @return [Types::MonitorDeployment]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute status
    #   A signal map's current status which is dependent on its lifecycle actions or associated jobs.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class StartMonitorDeploymentResponse < Struct.new(
      :arn,
      :cloud_watch_alarm_template_group_ids,
      :created_at,
      :description,
      :discovery_entry_point_arn,
      :error_message,
      :event_bridge_rule_template_group_ids,
      :failed_media_resource_map,
      :id,
      :last_discovered_at,
      :last_successful_monitor_deployment,
      :media_resource_map,
      :modified_at,
      :monitor_changes_pending_deployment,
      :monitor_deployment,
      :name,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartMultiplexRequest
    # @!attribute multiplex_id
    #   The ID of the multiplex.
    #   @return [String]
    class StartMultiplexRequest < Struct.new(
      :multiplex_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartMultiplexResponse
    # @!attribute arn
    #   The unique arn of the multiplex.
    #   @return [String]
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #   @return [Array<String>]
    # @!attribute destinations
    #   A list of the multiplex output destinations.
    #   @return [Array<Types::MultiplexOutputDestination>]
    # @!attribute id
    #   The unique id of the multiplex.
    #   @return [String]
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #   @return [Types::MultiplexSettings]
    # @!attribute name
    #   The name of the multiplex.
    #   @return [String]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #   @return [Integer]
    # @!attribute state
    #   The current state of the multiplex.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings to identify the start of the clip.
    # @!attribute timecode
    #   The timecode for the frame where you want to start the clip. Optional; if not specified, the clip starts at first frame in the file. Enter the timecode as HH:MM:SS:FF or HH:MM:SS;FF.
    #   @return [String]
    class StartTimecode < Struct.new(
      :timecode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartUpdateSignalMapRequest
    # @!attribute cloud_watch_alarm_template_group_identifiers
    #   Placeholder documentation for __listOf__stringPatternS
    #   @return [Array<String>]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute discovery_entry_point_arn
    #   A top-level supported AWS resource ARN to discovery a signal map from.
    #   @return [String]
    # @!attribute event_bridge_rule_template_group_identifiers
    #   Placeholder documentation for __listOf__stringPatternS
    #   @return [Array<String>]
    # @!attribute force_rediscovery
    #   If true, will force a rediscovery of a signal map if an unchanged discoveryEntryPointArn is provided.
    #   @return [Boolean]
    # @!attribute identifier
    #   A signal map's identifier. Can be either be its id or current name.
    #   @return [String]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    class StartUpdateSignalMapRequest < Struct.new(
      :cloud_watch_alarm_template_group_identifiers,
      :description,
      :discovery_entry_point_arn,
      :event_bridge_rule_template_group_identifiers,
      :force_rediscovery,
      :identifier,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StartUpdateSignalMapResponse
    # @!attribute arn
    #   A signal map's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute cloud_watch_alarm_template_group_ids
    #   Placeholder documentation for __listOf__stringMin7Max11PatternAws097
    #   @return [Array<String>]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute discovery_entry_point_arn
    #   A top-level supported AWS resource ARN to discovery a signal map from.
    #   @return [String]
    # @!attribute error_message
    #   Error message associated with a failed creation or failed update attempt of a signal map.
    #   @return [String]
    # @!attribute event_bridge_rule_template_group_ids
    #   Placeholder documentation for __listOf__stringMin7Max11PatternAws097
    #   @return [Array<String>]
    # @!attribute failed_media_resource_map
    #   A map representing an incomplete AWS media workflow as a graph.
    #   @return [Hash<String, Types::MediaResource>]
    # @!attribute id
    #   A signal map's id.
    #   @return [String]
    # @!attribute last_discovered_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute last_successful_monitor_deployment
    #   Represents the latest successful monitor deployment of a signal map.
    #   @return [Types::SuccessfulMonitorDeployment]
    # @!attribute media_resource_map
    #   A map representing an AWS media workflow as a graph.
    #   @return [Hash<String, Types::MediaResource>]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute monitor_changes_pending_deployment
    #   If true, there are pending monitor changes for this signal map that can be deployed.
    #   @return [Boolean]
    # @!attribute monitor_deployment
    #   Represents the latest monitor deployment of a signal map.
    #   @return [Types::MonitorDeployment]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute status
    #   A signal map's current status which is dependent on its lifecycle actions or associated jobs.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class StartUpdateSignalMapResponse < Struct.new(
      :arn,
      :cloud_watch_alarm_template_group_ids,
      :created_at,
      :description,
      :discovery_entry_point_arn,
      :error_message,
      :event_bridge_rule_template_group_ids,
      :failed_media_resource_map,
      :id,
      :last_discovered_at,
      :last_successful_monitor_deployment,
      :media_resource_map,
      :modified_at,
      :monitor_changes_pending_deployment,
      :monitor_deployment,
      :name,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for the action to activate a static image.
    # @!attribute duration
    #   The duration in milliseconds for the image to remain on the video. If omitted or set to 0 the duration is unlimited and the image will remain until it is explicitly deactivated.
    #   @return [Integer]
    # @!attribute fade_in
    #   The time in milliseconds for the image to fade in. The fade-in starts at the start time of the overlay. Default is 0 (no fade-in).
    #   @return [Integer]
    # @!attribute fade_out
    #   Applies only if a duration is specified. The time in milliseconds for the image to fade out. The fade-out starts when the duration time is hit, so it effectively extends the duration. Default is 0 (no fade-out).
    #   @return [Integer]
    # @!attribute height
    #   The height of the image when inserted into the video, in pixels. The overlay will be scaled up or down to the specified height. Leave blank to use the native height of the overlay.
    #   @return [Integer]
    # @!attribute image
    #   The location and filename of the image file to overlay on the video. The file must be a 32-bit BMP, PNG, or TGA file, and must not be larger (in pixels) than the input video.
    #   @return [Types::InputLocation]
    # @!attribute image_x
    #   Placement of the left edge of the overlay relative to the left edge of the video frame, in pixels. 0 (the default) is the left edge of the frame. If the placement causes the overlay to extend beyond the right edge of the underlying video, then the overlay is cropped on the right.
    #   @return [Integer]
    # @!attribute image_y
    #   Placement of the top edge of the overlay relative to the top edge of the video frame, in pixels. 0 (the default) is the top edge of the frame. If the placement causes the overlay to extend beyond the bottom edge of the underlying video, then the overlay is cropped on the bottom.
    #   @return [Integer]
    # @!attribute layer
    #   The number of the layer, 0 to 7. There are 8 layers that can be overlaid on the video, each layer with a different image. The layers are in Z order, which means that overlays with higher values of layer are inserted on top of overlays with lower values of layer. Default is 0.
    #   @return [Integer]
    # @!attribute opacity
    #   Opacity of image where 0 is transparent and 100 is fully opaque. Default is 100.
    #   @return [Integer]
    # @!attribute width
    #   The width of the image when inserted into the video, in pixels. The overlay will be scaled up or down to the specified width. Leave blank to use the native width of the overlay.
    #   @return [Integer]
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
      :width,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for the action to deactivate the image in a specific layer.
    # @!attribute fade_out
    #   The time in milliseconds for the image to fade out. Default is 0 (no fade-out).
    #   @return [Integer]
    # @!attribute layer
    #   The image overlay layer to deactivate, 0 to 7. Default is 0.
    #   @return [Integer]
    class StaticImageDeactivateScheduleActionSettings < Struct.new(
      :fade_out,
      :layer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for the action to activate a static image.
    # @!attribute duration
    #   The duration in milliseconds for the image to remain on the video. If omitted or set to 0 the duration is unlimited and the image will remain until it is explicitly deactivated.
    #   @return [Integer]
    # @!attribute fade_in
    #   The time in milliseconds for the image to fade in. The fade-in starts at the start time of the overlay. Default is 0 (no fade-in).
    #   @return [Integer]
    # @!attribute fade_out
    #   Applies only if a duration is specified. The time in milliseconds for the image to fade out. The fade-out starts when the duration time is hit, so it effectively extends the duration. Default is 0 (no fade-out).
    #   @return [Integer]
    # @!attribute height
    #   The height of the image when inserted into the video, in pixels. The overlay will be scaled up or down to the specified height. Leave blank to use the native height of the overlay.
    #   @return [Integer]
    # @!attribute image
    #   The location and filename of the image file to overlay on the video. The file must be a 32-bit BMP, PNG, or TGA file, and must not be larger (in pixels) than the input video.
    #   @return [Types::InputLocation]
    # @!attribute image_x
    #   Placement of the left edge of the overlay relative to the left edge of the video frame, in pixels. 0 (the default) is the left edge of the frame. If the placement causes the overlay to extend beyond the right edge of the underlying video, then the overlay is cropped on the right.
    #   @return [Integer]
    # @!attribute image_y
    #   Placement of the top edge of the overlay relative to the top edge of the video frame, in pixels. 0 (the default) is the top edge of the frame. If the placement causes the overlay to extend beyond the bottom edge of the underlying video, then the overlay is cropped on the bottom.
    #   @return [Integer]
    # @!attribute layer
    #   The number of the layer, 0 to 7. There are 8 layers that can be overlaid on the video, each layer with a different image. The layers are in Z order, which means that overlays with higher values of layer are inserted on top of overlays with lower values of layer. Default is 0.
    #   @return [Integer]
    # @!attribute opacity
    #   Opacity of image where 0 is transparent and 100 is fully opaque. Default is 100.
    #   @return [Integer]
    # @!attribute output_names
    #   The name(s) of the output(s) the activation should apply to.
    #   @return [Array<String>]
    # @!attribute width
    #   The width of the image when inserted into the video, in pixels. The overlay will be scaled up or down to the specified width. Leave blank to use the native width of the overlay.
    #   @return [Integer]
    class StaticImageOutputActivateScheduleActionSettings < Struct.new(
      :duration,
      :fade_in,
      :fade_out,
      :height,
      :image,
      :image_x,
      :image_y,
      :layer,
      :opacity,
      :output_names,
      :width,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for the action to deactivate the image in a specific layer.
    # @!attribute fade_out
    #   The time in milliseconds for the image to fade out. Default is 0 (no fade-out).
    #   @return [Integer]
    # @!attribute layer
    #   The image overlay layer to deactivate, 0 to 7. Default is 0.
    #   @return [Integer]
    # @!attribute output_names
    #   The name(s) of the output(s) the deactivation should apply to.
    #   @return [Array<String>]
    class StaticImageOutputDeactivateScheduleActionSettings < Struct.new(
      :fade_out,
      :layer,
      :output_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Static Key Settings
    # @!attribute key_provider_server
    #   The URL of the license server used for protecting content.
    #   @return [Types::InputLocation]
    # @!attribute static_key_value
    #   Static key value as a 32 character hexadecimal string.
    #   @return [String]
    class StaticKeySettings < Struct.new(
      :key_provider_server,
      :static_key_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StopChannelRequest
    # @!attribute channel_id
    #   A request to stop a running channel
    #   @return [String]
    class StopChannelRequest < Struct.new(
      :channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StopChannelResponse
    # @!attribute arn
    #   The unique arn of the channel.
    #   @return [String]
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    # @!attribute channel_class
    #   The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    #   @return [String]
    # @!attribute destinations
    #   A list of destinations of the channel. For UDP outputs, there is one
    #   destination per output. For other types (HLS, for example), there is
    #   one destination per packager.
    #   @return [Array<Types::OutputDestination>]
    # @!attribute egress_endpoints
    #   The endpoints where outgoing connections initiate from
    #   @return [Array<Types::ChannelEgressEndpoint>]
    # @!attribute encoder_settings
    #   Encoder Settings
    #   @return [Types::EncoderSettings]
    # @!attribute id
    #   The unique id of the channel.
    #   @return [String]
    # @!attribute input_attachments
    #   List of input attachments for channel.
    #   @return [Array<Types::InputAttachment>]
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    # @!attribute log_level
    #   The log level being written to CloudWatch Logs.
    #   @return [String]
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #   @return [Types::MaintenanceStatus]
    # @!attribute name
    #   The name of the channel. (user-mutable)
    #   @return [String]
    # @!attribute pipeline_details
    #   Runtime details for the pipelines of a running channel.
    #   @return [Array<Types::PipelineDetail>]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    #   @return [String]
    # @!attribute state
    #   Placeholder documentation for ChannelState
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute vpc
    #   Settings for VPC output
    #   @return [Types::VpcOutputSettingsDescription]
    # @!attribute anywhere_settings
    #   Anywhere settings for this channel.
    #   @return [Types::DescribeAnywhereSettings]
    # @!attribute channel_engine_version
    #   Requested engine version for this channel.
    #   @return [Types::ChannelEngineVersionResponse]
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
      :maintenance,
      :name,
      :pipeline_details,
      :pipelines_running_count,
      :role_arn,
      :state,
      :tags,
      :vpc,
      :anywhere_settings,
      :channel_engine_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StopInputDeviceRequest
    # @!attribute input_device_id
    #   The unique ID of the input device to stop. For example, hd-123456789abcdef.
    #   @return [String]
    class StopInputDeviceRequest < Struct.new(
      :input_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StopInputDeviceResponse
    class StopInputDeviceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StopMultiplexRequest
    # @!attribute multiplex_id
    #   The ID of the multiplex.
    #   @return [String]
    class StopMultiplexRequest < Struct.new(
      :multiplex_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for StopMultiplexResponse
    # @!attribute arn
    #   The unique arn of the multiplex.
    #   @return [String]
    # @!attribute availability_zones
    #   A list of availability zones for the multiplex.
    #   @return [Array<String>]
    # @!attribute destinations
    #   A list of the multiplex output destinations.
    #   @return [Array<Types::MultiplexOutputDestination>]
    # @!attribute id
    #   The unique id of the multiplex.
    #   @return [String]
    # @!attribute multiplex_settings
    #   Configuration for a multiplex event.
    #   @return [Types::MultiplexSettings]
    # @!attribute name
    #   The name of the multiplex.
    #   @return [String]
    # @!attribute pipelines_running_count
    #   The number of currently healthy pipelines.
    #   @return [Integer]
    # @!attribute program_count
    #   The number of programs in the multiplex.
    #   @return [Integer]
    # @!attribute state
    #   The current state of the multiplex.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings to identify the end of the clip.
    # @!attribute last_frame_clipping_behavior
    #   If you specify a StopTimecode in an input (in order to clip the file), you can specify if you want the clip to exclude (the default) or include the frame specified by the timecode.
    #   @return [String]
    # @!attribute timecode
    #   The timecode for the frame where you want to stop the clip. Optional; if not specified, the clip continues to the end of the file. Enter the timecode as HH:MM:SS:FF or HH:MM:SS;FF.
    #   @return [String]
    class StopTimecode < Struct.new(
      :last_frame_clipping_behavior,
      :timecode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Represents the latest successful monitor deployment of a signal map.
    # @!attribute details_uri
    #   URI associated with a signal map's monitor deployment.
    #   @return [String]
    # @!attribute status
    #   A signal map's monitor deployment status.
    #   @return [String]
    class SuccessfulMonitorDeployment < Struct.new(
      :details_uri,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Teletext Destination Settings
    class TeletextDestinationSettings < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Teletext Source Settings
    # @!attribute output_rectangle
    #   Optionally defines a region where TTML style captions will be displayed
    #   @return [Types::CaptionRectangle]
    # @!attribute page_number
    #   Specifies the teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for passthrough. Should be specified as a hexadecimal string with no "0x" prefix.
    #   @return [String]
    class TeletextSourceSettings < Struct.new(
      :output_rectangle,
      :page_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Temporal Filter Settings
    # @!attribute post_filter_sharpening
    #   If you enable this filter, the results are the following:
    #   - If the source content is noisy (it contains excessive digital artifacts), the filter cleans up the source.
    #   - If the source content is already clean, the filter tends to decrease the bitrate, especially when the rate control mode is QVBR.
    #   @return [String]
    # @!attribute strength
    #   Choose a filter strength. We recommend a strength of 1 or 2. A higher strength might take out good information, resulting in an image that is overly soft.
    #   @return [String]
    class TemporalFilterSettings < Struct.new(
      :post_filter_sharpening,
      :strength,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Details of a single thumbnail
    # @!attribute body
    #   The binary data for the latest thumbnail.
    #   @return [String]
    # @!attribute content_type
    #   The content type for the latest thumbnail.
    #   @return [String]
    # @!attribute thumbnail_type
    #   Thumbnail Type
    #   @return [String]
    # @!attribute time_stamp
    #   Time stamp for the latest thumbnail.
    #   @return [Time]
    class Thumbnail < Struct.new(
      :body,
      :content_type,
      :thumbnail_type,
      :time_stamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Thumbnail Configuration
    # @!attribute state
    #   Enables the thumbnail feature. The feature generates thumbnails of the incoming video in each pipeline in the channel. AUTO turns the feature on, DISABLE turns the feature off.
    #   @return [String]
    class ThumbnailConfiguration < Struct.new(
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Thumbnail details for one pipeline of a running channel.
    # @!attribute pipeline_id
    #   Pipeline ID
    #   @return [String]
    # @!attribute thumbnails
    #   thumbnails of a single pipeline
    #   @return [Array<Types::Thumbnail>]
    class ThumbnailDetail < Struct.new(
      :pipeline_id,
      :thumbnails,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Timecode Burnin Settings
    # @!attribute font_size
    #   Choose a timecode burn-in font size
    #   @return [String]
    # @!attribute position
    #   Choose a timecode burn-in output position
    #   @return [String]
    # @!attribute prefix
    #   Create a timecode burn-in prefix (optional)
    #   @return [String]
    class TimecodeBurninSettings < Struct.new(
      :font_size,
      :position,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Timecode Config
    # @!attribute source
    #   Identifies the source for the timecode that will be associated with the events outputs.
    #   -Embedded (embedded): Initialize the output timecode with timecode from the the source.  If no embedded timecode is detected in the source, the system falls back to using "Start at 0" (zerobased).
    #   -System Clock (systemclock): Use the UTC time.
    #   -Start at 0 (zerobased): The time of the first frame of the event will be 00:00:00:00.
    #   @return [String]
    # @!attribute sync_threshold
    #   Threshold in frames beyond which output timecode is resynchronized to the input timecode. Discrepancies below this threshold are permitted to avoid unnecessary discontinuities in the output timecode. No timecode sync when this is not specified.
    #   @return [Integer]
    class TimecodeConfig < Struct.new(
      :source,
      :sync_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Settings for the action to insert ID3 metadata (as a one-time action) in applicable output groups.
    # @!attribute id3
    #   Enter a base64 string that contains one or more fully formed ID3 tags.See the ID3 specification: http://id3.org/id3v2.4.0-structure
    #   @return [String]
    class TimedMetadataScheduleActionSettings < Struct.new(
      :id3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for TooManyRequestsException
    # @!attribute message
    #   Placeholder documentation for __string
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to transfer an input device.
    # @!attribute input_device_id
    #   The unique ID of this input device. For example, hd-123456789abcdef.
    #   @return [String]
    # @!attribute target_customer_id
    #   The AWS account ID (12 digits) for the recipient of the device transfer.
    #   @return [String]
    # @!attribute target_region
    #   The target AWS region to transfer the device.
    #   @return [String]
    # @!attribute transfer_message
    #   An optional message for the recipient. Maximum 280 characters.
    #   @return [String]
    class TransferInputDeviceRequest < Struct.new(
      :input_device_id,
      :target_customer_id,
      :target_region,
      :transfer_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for TransferInputDeviceResponse
    class TransferInputDeviceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Details about the input device that is being transferred.
    # @!attribute id
    #   The unique ID of the input device.
    #   @return [String]
    # @!attribute message
    #   The optional message that the sender has attached to the transfer.
    #   @return [String]
    # @!attribute target_customer_id
    #   The AWS account ID for the recipient of the input device transfer.
    #   @return [String]
    # @!attribute transfer_type
    #   The type (direction) of the input device transfer.
    #   @return [String]
    class TransferringInputDeviceSummary < Struct.new(
      :id,
      :message,
      :target_customer_id,
      :transfer_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Ttml Destination Settings
    # @!attribute style_control
    #   This field is not currently supported and will not affect the output styling. Leave the default value.
    #   @return [String]
    class TtmlDestinationSettings < Struct.new(
      :style_control,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Udp Container Settings
    # @!attribute m2ts_settings
    #   M2ts Settings
    #   @return [Types::M2tsSettings]
    class UdpContainerSettings < Struct.new(
      :m2ts_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Udp Group Settings
    # @!attribute input_loss_action
    #   Specifies behavior of last resort when input video is lost, and no more backup inputs are available. When dropTs is selected the entire transport stream will stop being emitted.  When dropProgram is selected the program can be dropped from the transport stream (and replaced with null packets to meet the TS bitrate requirement).  Or, when emitProgram is chosen the transport stream will continue to be produced normally with repeat frames, black frames, or slate frames substituted for the absent input video.
    #   @return [String]
    # @!attribute timed_metadata_id3_frame
    #   Indicates ID3 frame that has the timecode.
    #   @return [String]
    # @!attribute timed_metadata_id3_period
    #   Timed Metadata interval in seconds.
    #   @return [Integer]
    class UdpGroupSettings < Struct.new(
      :input_loss_action,
      :timed_metadata_id3_frame,
      :timed_metadata_id3_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Udp Output Settings
    # @!attribute buffer_msec
    #   UDP output buffering in milliseconds. Larger values increase latency through the transcoder but simultaneously assist the transcoder in maintaining a constant, low-jitter UDP/RTP output while accommodating clock recovery, input switching, input disruptions, picture reordering, etc.
    #   @return [Integer]
    # @!attribute container_settings
    #   Udp Container Settings
    #   @return [Types::UdpContainerSettings]
    # @!attribute destination
    #   Destination address and port number for RTP or UDP packets. Can be unicast or multicast RTP or UDP (eg. rtp://239.10.10.10:5001 or udp://10.100.100.100:5002).
    #   @return [Types::OutputLocationRef]
    # @!attribute fec_output_settings
    #   Settings for enabling and adjusting Forward Error Correction on UDP outputs.
    #   @return [Types::FecOutputSettings]
    class UdpOutputSettings < Struct.new(
      :buffer_msec,
      :container_settings,
      :destination,
      :fec_output_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UnprocessableEntityException
    # @!attribute message
    #   The error message.
    #   @return [String]
    # @!attribute validation_errors
    #   A collection of validation error responses.
    #   @return [Array<Types::ValidationError>]
    class UnprocessableEntityException < Struct.new(
      :message,
      :validation_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List of account configuration parameters to update.
    # @!attribute account_configuration
    #   Placeholder documentation for AccountConfiguration
    #   @return [Types::AccountConfiguration]
    class UpdateAccountConfigurationRequest < Struct.new(
      :account_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateAccountConfigurationResponse
    # @!attribute account_configuration
    #   Placeholder documentation for AccountConfiguration
    #   @return [Types::AccountConfiguration]
    class UpdateAccountConfigurationResponse < Struct.new(
      :account_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Channel class that the channel should be updated to.
    # @!attribute channel_class
    #   The channel class that you wish to update this channel to use.
    #   @return [String]
    # @!attribute channel_id
    #   Channel Id of the channel whose class should be updated.
    #   @return [String]
    # @!attribute destinations
    #   A list of output destinations for this channel.
    #   @return [Array<Types::OutputDestination>]
    class UpdateChannelClassRequest < Struct.new(
      :channel_class,
      :channel_id,
      :destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateChannelClassResponse
    # @!attribute channel
    #   Placeholder documentation for Channel
    #   @return [Types::Channel]
    class UpdateChannelClassResponse < Struct.new(
      :channel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to update the channel placement group
    # @!attribute channel_placement_group_id
    #   The ID of the channel placement group.
    #   @return [String]
    # @!attribute cluster_id
    #   The ID of the cluster.
    #   @return [String]
    # @!attribute name
    #   Include this parameter only if you want to change the current name of the ChannelPlacementGroup. Specify a name that is unique in the Cluster. You can't change the name. Names are case-sensitive.
    #   @return [String]
    # @!attribute nodes
    #   Include this parameter only if you want to change the list of Nodes that are associated with the ChannelPlacementGroup.
    #   @return [Array<String>]
    class UpdateChannelPlacementGroupRequest < Struct.new(
      :channel_placement_group_id,
      :cluster_id,
      :name,
      :nodes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateChannelPlacementGroupResponse
    # @!attribute arn
    #   The ARN of this ChannelPlacementGroup. It is automatically assigned when the ChannelPlacementGroup is created.
    #   @return [String]
    # @!attribute channels
    #   Used in ListChannelPlacementGroupsResult
    #   @return [Array<String>]
    # @!attribute cluster_id
    #   The ID of the Cluster that the Node belongs to.
    #   @return [String]
    # @!attribute id
    #   The ID of the ChannelPlacementGroup. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the ChannelPlacementGroup.
    #   @return [String]
    # @!attribute nodes
    #   An array with one item, which is the single Node that is associated with the ChannelPlacementGroup.
    #   @return [Array<String>]
    # @!attribute state
    #   The current state of the ChannelPlacementGroup.
    #   @return [String]
    class UpdateChannelPlacementGroupResponse < Struct.new(
      :arn,
      :channels,
      :cluster_id,
      :id,
      :name,
      :nodes,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to update a channel.
    # @!attribute cdi_input_specification
    #   Specification of CDI inputs for this channel
    #   @return [Types::CdiInputSpecification]
    # @!attribute channel_id
    #   channel ID
    #   @return [String]
    # @!attribute destinations
    #   A list of output destinations for this channel.
    #   @return [Array<Types::OutputDestination>]
    # @!attribute encoder_settings
    #   The encoder settings for this channel.
    #   @return [Types::EncoderSettings]
    # @!attribute input_attachments
    #   Placeholder documentation for __listOfInputAttachment
    #   @return [Array<Types::InputAttachment>]
    # @!attribute input_specification
    #   Specification of network and file inputs for this channel
    #   @return [Types::InputSpecification]
    # @!attribute log_level
    #   The log level to write to CloudWatch Logs.
    #   @return [String]
    # @!attribute maintenance
    #   Maintenance settings for this channel.
    #   @return [Types::MaintenanceUpdateSettings]
    # @!attribute name
    #   The name of the channel.
    #   @return [String]
    # @!attribute role_arn
    #   An optional Amazon Resource Name (ARN) of the role to assume when running the Channel. If you do not specify this on an update call but the role was previously set that role will be removed.
    #   @return [String]
    # @!attribute channel_engine_version
    #   Channel engine version for this channel
    #   @return [Types::ChannelEngineVersionRequest]
    # @!attribute dry_run
    #   Placeholder documentation for __boolean
    #   @return [Boolean]
    # @!attribute anywhere_settings
    #   The Elemental Anywhere settings for this channel.
    #   @return [Types::AnywhereSettings]
    class UpdateChannelRequest < Struct.new(
      :cdi_input_specification,
      :channel_id,
      :destinations,
      :encoder_settings,
      :input_attachments,
      :input_specification,
      :log_level,
      :maintenance,
      :name,
      :role_arn,
      :channel_engine_version,
      :dry_run,
      :anywhere_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateChannelResponse
    # @!attribute channel
    #   Placeholder documentation for Channel
    #   @return [Types::Channel]
    class UpdateChannelResponse < Struct.new(
      :channel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateCloudWatchAlarmTemplateGroupRequest
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute identifier
    #   A cloudwatch alarm template group's identifier. Can be either be its id or current name.
    #   @return [String]
    class UpdateCloudWatchAlarmTemplateGroupRequest < Struct.new(
      :description,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateCloudWatchAlarmTemplateGroupResponse
    # @!attribute arn
    #   A cloudwatch alarm template group's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute id
    #   A cloudwatch alarm template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class UpdateCloudWatchAlarmTemplateGroupResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :modified_at,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateCloudWatchAlarmTemplateRequest
    # @!attribute comparison_operator
    #   The comparison operator used to compare the specified statistic and the threshold.
    #   @return [String]
    # @!attribute datapoints_to_alarm
    #   The number of datapoints within the evaluation period that must be breaching to trigger the alarm.
    #   @return [Integer]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute evaluation_periods
    #   The number of periods over which data is compared to the specified threshold.
    #   @return [Integer]
    # @!attribute group_identifier
    #   A cloudwatch alarm template group's identifier. Can be either be its id or current name.
    #   @return [String]
    # @!attribute identifier
    #   A cloudwatch alarm template's identifier. Can be either be its id or current name.
    #   @return [String]
    # @!attribute metric_name
    #   The name of the metric associated with the alarm. Must be compatible with targetResourceType.
    #   @return [String]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute period
    #   The period, in seconds, over which the specified statistic is applied.
    #   @return [Integer]
    # @!attribute statistic
    #   The statistic to apply to the alarm's metric data.
    #   @return [String]
    # @!attribute target_resource_type
    #   The resource type this template should dynamically generate cloudwatch metric alarms for.
    #   @return [String]
    # @!attribute threshold
    #   The threshold value to compare with the specified statistic.
    #   @return [Float]
    # @!attribute treat_missing_data
    #   Specifies how missing data points are treated when evaluating the alarm's condition.
    #   @return [String]
    class UpdateCloudWatchAlarmTemplateRequest < Struct.new(
      :comparison_operator,
      :datapoints_to_alarm,
      :description,
      :evaluation_periods,
      :group_identifier,
      :identifier,
      :metric_name,
      :name,
      :period,
      :statistic,
      :target_resource_type,
      :threshold,
      :treat_missing_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateCloudWatchAlarmTemplateResponse
    # @!attribute arn
    #   A cloudwatch alarm template's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute comparison_operator
    #   The comparison operator used to compare the specified statistic and the threshold.
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute datapoints_to_alarm
    #   The number of datapoints within the evaluation period that must be breaching to trigger the alarm.
    #   @return [Integer]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute evaluation_periods
    #   The number of periods over which data is compared to the specified threshold.
    #   @return [Integer]
    # @!attribute group_id
    #   A cloudwatch alarm template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute id
    #   A cloudwatch alarm template's id. AWS provided templates have ids that start with `aws-`
    #   @return [String]
    # @!attribute metric_name
    #   The name of the metric associated with the alarm. Must be compatible with targetResourceType.
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute period
    #   The period, in seconds, over which the specified statistic is applied.
    #   @return [Integer]
    # @!attribute statistic
    #   The statistic to apply to the alarm's metric data.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    # @!attribute target_resource_type
    #   The resource type this template should dynamically generate cloudwatch metric alarms for.
    #   @return [String]
    # @!attribute threshold
    #   The threshold value to compare with the specified statistic.
    #   @return [Float]
    # @!attribute treat_missing_data
    #   Specifies how missing data points are treated when evaluating the alarm's condition.
    #   @return [String]
    class UpdateCloudWatchAlarmTemplateResponse < Struct.new(
      :arn,
      :comparison_operator,
      :created_at,
      :datapoints_to_alarm,
      :description,
      :evaluation_periods,
      :group_id,
      :id,
      :metric_name,
      :modified_at,
      :name,
      :period,
      :statistic,
      :tags,
      :target_resource_type,
      :threshold,
      :treat_missing_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to update the cluster.
    # @!attribute cluster_id
    #   The ID of the cluster
    #   @return [String]
    # @!attribute name
    #   Include this parameter only if you want to change the current name of the Cluster. Specify a name that is unique in the AWS account. You can't change the name. Names are case-sensitive.
    #   @return [String]
    # @!attribute network_settings
    #   Include this property only if you want to change the current connections between the Nodes in the Cluster and the Networks the Cluster is associated with.
    #   @return [Types::ClusterNetworkSettingsUpdateRequest]
    class UpdateClusterRequest < Struct.new(
      :cluster_id,
      :name,
      :network_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateClusterResponse
    # @!attribute arn
    #   The ARN of the Cluster.
    #   @return [String]
    # @!attribute channel_ids
    #   An array of the IDs of the Channels that are associated with this Cluster. One Channel is associated with the Cluster as follows: A Channel belongs to a ChannelPlacementGroup. A ChannelPlacementGroup is attached to a Node. A Node belongs to a Cluster.
    #   @return [Array<String>]
    # @!attribute cluster_type
    #   The hardware type for the Cluster
    #   @return [String]
    # @!attribute id
    #   The unique ID of the Cluster.
    #   @return [String]
    # @!attribute name
    #   The user-specified name of the Cluster.
    #   @return [String]
    # @!attribute network_settings
    #   Network settings that connect the Nodes in the Cluster to one or more of the Networks that the Cluster is associated with.
    #   @return [Types::ClusterNetworkSettings]
    # @!attribute state
    #   The current state of the Cluster.
    #   @return [String]
    class UpdateClusterResponse < Struct.new(
      :arn,
      :channel_ids,
      :cluster_type,
      :id,
      :name,
      :network_settings,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateEventBridgeRuleTemplateGroupRequest
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute identifier
    #   An eventbridge rule template group's identifier. Can be either be its id or current name.
    #   @return [String]
    class UpdateEventBridgeRuleTemplateGroupRequest < Struct.new(
      :description,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateEventBridgeRuleTemplateGroupResponse
    # @!attribute arn
    #   An eventbridge rule template group's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute id
    #   An eventbridge rule template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class UpdateEventBridgeRuleTemplateGroupResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :modified_at,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateEventBridgeRuleTemplateRequest
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute event_targets
    #   Placeholder documentation for __listOfEventBridgeRuleTemplateTarget
    #   @return [Array<Types::EventBridgeRuleTemplateTarget>]
    # @!attribute event_type
    #   The type of event to match with the rule.
    #   @return [String]
    # @!attribute group_identifier
    #   An eventbridge rule template group's identifier. Can be either be its id or current name.
    #   @return [String]
    # @!attribute identifier
    #   An eventbridge rule template's identifier. Can be either be its id or current name.
    #   @return [String]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    class UpdateEventBridgeRuleTemplateRequest < Struct.new(
      :description,
      :event_targets,
      :event_type,
      :group_identifier,
      :identifier,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateEventBridgeRuleTemplateResponse
    # @!attribute arn
    #   An eventbridge rule template's ARN (Amazon Resource Name)
    #   @return [String]
    # @!attribute created_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute description
    #   A resource's optional description.
    #   @return [String]
    # @!attribute event_targets
    #   Placeholder documentation for __listOfEventBridgeRuleTemplateTarget
    #   @return [Array<Types::EventBridgeRuleTemplateTarget>]
    # @!attribute event_type
    #   The type of event to match with the rule.
    #   @return [String]
    # @!attribute group_id
    #   An eventbridge rule template group's id. AWS provided template groups have ids that start with `aws-`
    #   @return [String]
    # @!attribute id
    #   An eventbridge rule template's id. AWS provided templates have ids that start with `aws-`
    #   @return [String]
    # @!attribute modified_at
    #   Placeholder documentation for __timestampIso8601
    #   @return [Time]
    # @!attribute name
    #   A resource's name. Names must be unique within the scope of a resource type in a specific region.
    #   @return [String]
    # @!attribute tags
    #   Represents the tags associated with a resource.
    #   @return [Hash<String, String>]
    class UpdateEventBridgeRuleTemplateResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :event_targets,
      :event_type,
      :group_id,
      :id,
      :modified_at,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to update an input device.
    # @!attribute hd_device_settings
    #   The settings that you want to apply to the HD input device.
    #   @return [Types::InputDeviceConfigurableSettings]
    # @!attribute input_device_id
    #   The unique ID of the input device. For example, hd-123456789abcdef.
    #   @return [String]
    # @!attribute name
    #   The name that you assigned to this input device (not the unique ID).
    #   @return [String]
    # @!attribute uhd_device_settings
    #   The settings that you want to apply to the UHD input device.
    #   @return [Types::InputDeviceConfigurableSettings]
    # @!attribute availability_zone
    #   The Availability Zone you want associated with this input device.
    #   @return [String]
    class UpdateInputDeviceRequest < Struct.new(
      :hd_device_settings,
      :input_device_id,
      :name,
      :uhd_device_settings,
      :availability_zone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateInputDeviceResponse
    # @!attribute arn
    #   The unique ARN of the input device.
    #   @return [String]
    # @!attribute connection_state
    #   The state of the connection between the input device and AWS.
    #   @return [String]
    # @!attribute device_settings_sync_state
    #   The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
    #   @return [String]
    # @!attribute device_update_status
    #   The status of software on the input device.
    #   @return [String]
    # @!attribute hd_device_settings
    #   Settings that describe an input device that is type HD.
    #   @return [Types::InputDeviceHdSettings]
    # @!attribute id
    #   The unique ID of the input device.
    #   @return [String]
    # @!attribute mac_address
    #   The network MAC address of the input device.
    #   @return [String]
    # @!attribute name
    #   A name that you specify for the input device.
    #   @return [String]
    # @!attribute network_settings
    #   The network settings for the input device.
    #   @return [Types::InputDeviceNetworkSettings]
    # @!attribute serial_number
    #   The unique serial number of the input device.
    #   @return [String]
    # @!attribute type
    #   The type of the input device.
    #   @return [String]
    # @!attribute uhd_device_settings
    #   Settings that describe an input device that is type UHD.
    #   @return [Types::InputDeviceUhdSettings]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute availability_zone
    #   The Availability Zone associated with this input device.
    #   @return [String]
    # @!attribute medialive_input_arns
    #   An array of the ARNs for the MediaLive inputs attached to the device. Returned only if the outputType is MEDIALIVE_INPUT.
    #   @return [Array<String>]
    # @!attribute output_type
    #   The output attachment type of the input device. Specifies MEDIACONNECT_FLOW if this device is the source for a MediaConnect flow. Specifies MEDIALIVE_INPUT if this device is the source for a MediaLive input.
    #   @return [String]
    class UpdateInputDeviceResponse < Struct.new(
      :arn,
      :connection_state,
      :device_settings_sync_state,
      :device_update_status,
      :hd_device_settings,
      :id,
      :mac_address,
      :name,
      :network_settings,
      :serial_number,
      :type,
      :uhd_device_settings,
      :tags,
      :availability_zone,
      :medialive_input_arns,
      :output_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to update an input.
    # @!attribute destinations
    #   Destination settings for PUSH type inputs.
    #   @return [Array<Types::InputDestinationRequest>]
    # @!attribute input_devices
    #   Settings for the devices.
    #   @return [Array<Types::InputDeviceRequest>]
    # @!attribute input_id
    #   Unique ID of the input.
    #   @return [String]
    # @!attribute input_security_groups
    #   A list of security groups referenced by IDs to attach to the input.
    #   @return [Array<String>]
    # @!attribute media_connect_flows
    #   A list of the MediaConnect Flow ARNs that you want to use as the source of the input. You can specify as few as one
    #   Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a
    #   separate Availability Zone as this ensures your EML input is redundant to AZ issues.
    #   @return [Array<Types::MediaConnectFlowRequest>]
    # @!attribute name
    #   Name of the input.
    #   @return [String]
    # @!attribute role_arn
    #   The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
    #   @return [String]
    # @!attribute sources
    #   The source URLs for a PULL-type input. Every PULL type input needs
    #   exactly two source URLs for redundancy.
    #   Only specify sources for PULL type Inputs. Leave Destinations empty.
    #   @return [Array<Types::InputSourceRequest>]
    # @!attribute srt_settings
    #   The settings associated with an SRT input.
    #   @return [Types::SrtSettingsRequest]
    # @!attribute multicast_settings
    #   Multicast Input settings.
    #   @return [Types::MulticastSettingsUpdateRequest]
    # @!attribute smpte2110_receiver_group_settings
    #   Include this parameter if the input is a SMPTE 2110 input, to identify the stream sources for this input.
    #   @return [Types::Smpte2110ReceiverGroupSettings]
    # @!attribute sdi_sources
    #   SDI Sources for this Input.
    #   @return [Array<String>]
    class UpdateInputRequest < Struct.new(
      :destinations,
      :input_devices,
      :input_id,
      :input_security_groups,
      :media_connect_flows,
      :name,
      :role_arn,
      :sources,
      :srt_settings,
      :multicast_settings,
      :smpte2110_receiver_group_settings,
      :sdi_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateInputResponse
    # @!attribute input
    #   Placeholder documentation for Input
    #   @return [Types::Input]
    class UpdateInputResponse < Struct.new(
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request to update some combination of the Input Security Group name and the IPv4 CIDRs the Input Security Group should allow.
    # @!attribute input_security_group_id
    #   The id of the Input Security Group to update.
    #   @return [String]
    # @!attribute tags
    #   A collection of key-value pairs.
    #   @deprecated
    #     This API is deprecated. You must use UpdateTagsForResource instead.
    #     Since: 2024-11-20
    #   @return [Hash<String, String>]
    # @!attribute whitelist_rules
    #   List of IPv4 CIDR addresses to whitelist
    #   @return [Array<Types::InputWhitelistRuleCidr>]
    class UpdateInputSecurityGroupRequest < Struct.new(
      :input_security_group_id,
      :tags,
      :whitelist_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateInputSecurityGroupResponse
    # @!attribute security_group
    #   An Input Security Group
    #   @return [Types::InputSecurityGroup]
    class UpdateInputSecurityGroupResponse < Struct.new(
      :security_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to update a program in a multiplex.
    # @!attribute multiplex_id
    #   The ID of the multiplex of the program to update.
    #   @return [String]
    # @!attribute multiplex_program_settings
    #   The new settings for a multiplex program.
    #   @return [Types::MultiplexProgramSettings]
    # @!attribute program_name
    #   The name of the program to update.
    #   @return [String]
    class UpdateMultiplexProgramRequest < Struct.new(
      :multiplex_id,
      :multiplex_program_settings,
      :program_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateMultiplexProgramResponse
    # @!attribute multiplex_program
    #   The updated multiplex program.
    #   @return [Types::MultiplexProgram]
    class UpdateMultiplexProgramResponse < Struct.new(
      :multiplex_program,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to update a multiplex.
    # @!attribute multiplex_id
    #   ID of the multiplex to update.
    #   @return [String]
    # @!attribute multiplex_settings
    #   The new settings for a multiplex.
    #   @return [Types::MultiplexSettings]
    # @!attribute name
    #   Name of the multiplex.
    #   @return [String]
    # @!attribute packet_identifiers_mapping
    #   Placeholder documentation for MultiplexPacketIdentifiersMapping
    #   @return [Hash<String, Types::MultiplexProgramPacketIdentifiersMap>]
    class UpdateMultiplexRequest < Struct.new(
      :multiplex_id,
      :multiplex_settings,
      :name,
      :packet_identifiers_mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateMultiplexResponse
    # @!attribute multiplex
    #   The updated multiplex.
    #   @return [Types::Multiplex]
    class UpdateMultiplexResponse < Struct.new(
      :multiplex,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to update the network.
    # @!attribute ip_pools
    #   Include this parameter only if you want to change the pool of IP addresses in the network. An array of IpPoolCreateRequests that identify a collection of IP addresses in this network that you want to reserve for use in MediaLive Anywhere. MediaLive Anywhere uses these IP addresses for Push inputs (in both Bridge and NAT networks) and for output destinations (only in Bridge networks). Each IpPoolUpdateRequest specifies one CIDR block.
    #   @return [Array<Types::IpPoolUpdateRequest>]
    # @!attribute name
    #   Include this parameter only if you want to change the name of the Network. Specify a name that is unique in the AWS account. Names are case-sensitive.
    #   @return [String]
    # @!attribute network_id
    #   The ID of the network
    #   @return [String]
    # @!attribute routes
    #   Include this parameter only if you want to change or add routes in the Network. An array of Routes that MediaLive Anywhere needs to know about in order to route encoding traffic.
    #   @return [Array<Types::RouteUpdateRequest>]
    class UpdateNetworkRequest < Struct.new(
      :ip_pools,
      :name,
      :network_id,
      :routes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateNetworkResponse
    # @!attribute arn
    #   The ARN of this Network. It is automatically assigned when the Network is created.
    #   @return [String]
    # @!attribute associated_cluster_ids
    #   Placeholder documentation for __listOf__string
    #   @return [Array<String>]
    # @!attribute id
    #   The ID of the Network. Unique in the AWS account. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute ip_pools
    #   An array of IpPools in your organization's network that identify a collection of IP addresses in this network that are reserved for use in MediaLive Anywhere. MediaLive Anywhere uses these IP addresses for Push inputs (in both Bridge and NAT networks) and for output destinations (only in Bridge networks). Each IpPool specifies one CIDR block.
    #   @return [Array<Types::IpPool>]
    # @!attribute name
    #   The name that you specified for the Network.
    #   @return [String]
    # @!attribute routes
    #   An array of Routes that MediaLive Anywhere needs to know about in order to route encoding traffic.
    #   @return [Array<Types::Route>]
    # @!attribute state
    #   The current state of the Network. Only MediaLive Anywhere can change the state.
    #   @return [String]
    class UpdateNetworkResponse < Struct.new(
      :arn,
      :associated_cluster_ids,
      :id,
      :ip_pools,
      :name,
      :routes,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to update the node.
    # @!attribute cluster_id
    #   The ID of the cluster
    #   @return [String]
    # @!attribute name
    #   Include this parameter only if you want to change the current name of the Node. Specify a name that is unique in the Cluster. You can't change the name. Names are case-sensitive.
    #   @return [String]
    # @!attribute node_id
    #   The ID of the node.
    #   @return [String]
    # @!attribute role
    #   The initial role of the Node in the Cluster. ACTIVE means the Node is available for encoding. BACKUP means the Node is a redundant Node and might get used if an ACTIVE Node fails.
    #   @return [String]
    # @!attribute sdi_source_mappings
    #   The mappings of a SDI capture card port to a logical SDI data stream
    #   @return [Array<Types::SdiSourceMappingUpdateRequest>]
    class UpdateNodeRequest < Struct.new(
      :cluster_id,
      :name,
      :node_id,
      :role,
      :sdi_source_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateNodeResponse
    # @!attribute arn
    #   The ARN of the Node. It is automatically assigned when the Node is created.
    #   @return [String]
    # @!attribute channel_placement_groups
    #   An array of IDs. Each ID is one ChannelPlacementGroup that is associated with this Node. Empty if the Node is not yet associated with any groups.
    #   @return [Array<String>]
    # @!attribute cluster_id
    #   The ID of the Cluster that the Node belongs to.
    #   @return [String]
    # @!attribute connection_state
    #   The current connection state of the Node.
    #   @return [String]
    # @!attribute id
    #   The unique ID of the Node. Unique in the Cluster. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute instance_arn
    #   The ARN of the EC2 instance hosting the Node.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the Node.
    #   @return [String]
    # @!attribute node_interface_mappings
    #   Documentation update needed
    #   @return [Array<Types::NodeInterfaceMapping>]
    # @!attribute role
    #   The initial role current role of the Node in the Cluster. ACTIVE means the Node is available for encoding. BACKUP means the Node is a redundant Node and might get used if an ACTIVE Node fails.
    #   @return [String]
    # @!attribute state
    #   The current state of the Node.
    #   @return [String]
    # @!attribute sdi_source_mappings
    #   An array of SDI source mappings. Each mapping connects one logical SdiSource to the physical SDI card and port that the physical SDI source uses.
    #   @return [Array<Types::SdiSourceMapping>]
    class UpdateNodeResponse < Struct.new(
      :arn,
      :channel_placement_groups,
      :cluster_id,
      :connection_state,
      :id,
      :instance_arn,
      :name,
      :node_interface_mappings,
      :role,
      :state,
      :sdi_source_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to update the state of a node.
    # @!attribute cluster_id
    #   The ID of the cluster
    #   @return [String]
    # @!attribute node_id
    #   The ID of the node.
    #   @return [String]
    # @!attribute state
    #   The state to apply to the Node. Set to ACTIVE (COMMISSIONED) to indicate that the Node is deployable. MediaLive Anywhere will consider this node it needs a Node to run a Channel on, or when it needs a Node to promote from a backup node to an active node. Set to DRAINING to isolate the Node so that MediaLive Anywhere won't use it.
    #   @return [String]
    class UpdateNodeStateRequest < Struct.new(
      :cluster_id,
      :node_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateNodeStateResponse
    # @!attribute arn
    #   The ARN of the Node. It is automatically assigned when the Node is created.
    #   @return [String]
    # @!attribute channel_placement_groups
    #   An array of IDs. Each ID is one ChannelPlacementGroup that is associated with this Node. Empty if the Node is not yet associated with any groups.
    #   @return [Array<String>]
    # @!attribute cluster_id
    #   The ID of the Cluster that the Node belongs to.
    #   @return [String]
    # @!attribute connection_state
    #   The current connection state of the Node.
    #   @return [String]
    # @!attribute id
    #   The unique ID of the Node. Unique in the Cluster. The ID is the resource-id portion of the ARN.
    #   @return [String]
    # @!attribute instance_arn
    #   The ARN of the EC2 instance hosting the Node.
    #   @return [String]
    # @!attribute name
    #   The name that you specified for the Node.
    #   @return [String]
    # @!attribute node_interface_mappings
    #   Documentation update needed
    #   @return [Array<Types::NodeInterfaceMapping>]
    # @!attribute role
    #   The initial role current role of the Node in the Cluster. ACTIVE means the Node is available for encoding. BACKUP means the Node is a redundant Node and might get used if an ACTIVE Node fails.
    #   @return [String]
    # @!attribute state
    #   The current state of the Node.
    #   @return [String]
    # @!attribute sdi_source_mappings
    #   An array of SDI source mappings. Each mapping connects one logical SdiSource to the physical SDI card and port that the physical SDI source uses.
    #   @return [Array<Types::SdiSourceMapping>]
    class UpdateNodeStateResponse < Struct.new(
      :arn,
      :channel_placement_groups,
      :cluster_id,
      :connection_state,
      :id,
      :instance_arn,
      :name,
      :node_interface_mappings,
      :role,
      :state,
      :sdi_source_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Request to update a reservation
    # @!attribute name
    #   Name of the reservation
    #   @return [String]
    # @!attribute renewal_settings
    #   Renewal settings for the reservation
    #   @return [Types::RenewalSettings]
    # @!attribute reservation_id
    #   Unique reservation ID, e.g. '1234567'
    #   @return [String]
    class UpdateReservationRequest < Struct.new(
      :name,
      :renewal_settings,
      :reservation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateReservationResponse
    # @!attribute reservation
    #   Reserved resources available to use
    #   @return [Types::Reservation]
    class UpdateReservationResponse < Struct.new(
      :reservation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to update the SdiSource.
    # @!attribute mode
    #   Include this parameter only if you want to change the name of the SdiSource. Specify a name that is unique in the AWS account. We recommend you assign a name that describes the source, for example curling-cameraA. Names are case-sensitive.
    #   @return [String]
    # @!attribute name
    #   Include this parameter only if you want to change the name of the SdiSource. Specify a name that is unique in the AWS account. We recommend you assign a name that describes the source, for example curling-cameraA. Names are case-sensitive.
    #   @return [String]
    # @!attribute sdi_source_id
    #   The ID of the SdiSource
    #   @return [String]
    # @!attribute type
    #   Include this parameter only if you want to change the mode. Specify the type of the SDI source: SINGLE: The source is a single-link source. QUAD: The source is one part of a quad-link source.
    #   @return [String]
    class UpdateSdiSourceRequest < Struct.new(
      :mode,
      :name,
      :sdi_source_id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for UpdateSdiSourceResponse
    # @!attribute sdi_source
    #   Settings for the SDI source.
    #   @return [Types::SdiSource]
    class UpdateSdiSourceResponse < Struct.new(
      :sdi_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for ValidationError
    # @!attribute element_path
    #   Path to the source of the error.
    #   @return [String]
    # @!attribute error_message
    #   The error message.
    #   @return [String]
    class ValidationError < Struct.new(
      :element_path,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Placeholder documentation for VideoBlackFailoverSettings
    # @!attribute black_detect_threshold
    #   A value used in calculating the threshold below which MediaLive considers a pixel to be 'black'. For the input to be considered black, every pixel in a frame must be below this threshold. The threshold is calculated as a percentage (expressed as a decimal) of white. Therefore .1 means 10% white (or 90% black). Note how the formula works for any color depth. For example, if you set this field to 0.1 in 10-bit color depth: (1023*0.1=102.3), which means a pixel value of 102 or less is 'black'. If you set this field to .1 in an 8-bit color depth: (255*0.1=25.5), which means a pixel value of 25 or less is 'black'. The range is 0.0 to 1.0, with any number of decimal places.
    #   @return [Float]
    # @!attribute video_black_threshold_msec
    #   The amount of time (in milliseconds) that the active input must be black before automatic input failover occurs.
    #   @return [Integer]
    class VideoBlackFailoverSettings < Struct.new(
      :black_detect_threshold,
      :video_black_threshold_msec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Video Codec Settings
    # @!attribute frame_capture_settings
    #   Frame Capture Settings
    #   @return [Types::FrameCaptureSettings]
    # @!attribute h264_settings
    #   H264 Settings
    #   @return [Types::H264Settings]
    # @!attribute h265_settings
    #   H265 Settings
    #   @return [Types::H265Settings]
    # @!attribute mpeg2_settings
    #   Mpeg2 Settings
    #   @return [Types::Mpeg2Settings]
    # @!attribute av1_settings
    #   Av1 Settings
    #   @return [Types::Av1Settings]
    class VideoCodecSettings < Struct.new(
      :frame_capture_settings,
      :h264_settings,
      :h265_settings,
      :mpeg2_settings,
      :av1_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Video settings for this stream.
    # @!attribute codec_settings
    #   Video codec settings.
    #   @return [Types::VideoCodecSettings]
    # @!attribute height
    #   Output video height, in pixels. Must be an even number. For most codecs, you can leave this field and width blank in order to use the height and width (resolution) from the source. Note, however, that leaving blank is not recommended. For the Frame Capture codec, height and width are required.
    #   @return [Integer]
    # @!attribute name
    #   The name of this VideoDescription. Outputs will use this name to uniquely identify this Description.  Description names should be unique within this Live Event.
    #   @return [String]
    # @!attribute respond_to_afd
    #   Indicates how MediaLive will respond to the AFD values that might be in the input video. If you do not know what AFD signaling is, or if your downstream system has not given you guidance, choose PASSTHROUGH.
    #   RESPOND: MediaLive clips the input video using a formula that uses the AFD values (configured in afdSignaling ), the input display aspect ratio, and the output display aspect ratio. MediaLive also includes the AFD values in the output, unless the codec for this encode is FRAME_CAPTURE.
    #   PASSTHROUGH: MediaLive ignores the AFD values and does not clip the video. But MediaLive does include the values in the output.
    #   NONE: MediaLive does not clip the input video and does not include the AFD values in the output
    #   @return [String]
    # @!attribute scaling_behavior
    #   STRETCH_TO_OUTPUT configures the output position to stretch the video to the specified output resolution (height and width). This option will override any position value. DEFAULT may insert black boxes (pillar boxes or letter boxes) around the video to provide the specified output resolution.
    #   @return [String]
    # @!attribute sharpness
    #   Changes the strength of the anti-alias filter used for scaling. 0 is the softest setting, 100 is the sharpest. A setting of 50 is recommended for most content.
    #   @return [Integer]
    # @!attribute width
    #   Output video width, in pixels. Must be an even number. For most codecs, you can leave this field and height blank in order to use the height and width (resolution) from the source. Note, however, that leaving blank is not recommended. For the Frame Capture codec, height and width are required.
    #   @return [Integer]
    class VideoDescription < Struct.new(
      :codec_settings,
      :height,
      :name,
      :respond_to_afd,
      :scaling_behavior,
      :sharpness,
      :width,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Specifies a particular video stream within an input source. An input may have only a single video selector.
    # @!attribute color_space
    #   Specifies the color space of an input. This setting works in tandem with colorSpaceUsage and a video description's colorSpaceSettingsChoice to determine if any conversion will be performed.
    #   @return [String]
    # @!attribute color_space_settings
    #   Color space settings
    #   @return [Types::VideoSelectorColorSpaceSettings]
    # @!attribute color_space_usage
    #   Applies only if colorSpace is a value other than follow. This field controls how the value in the colorSpace field will be used. fallback means that when the input does include color space data, that data will be used, but when the input has no color space data, the value in colorSpace will be used. Choose fallback if your input is sometimes missing color space data, but when it does have color space data, that data is correct. force means to always use the value in colorSpace. Choose force if your input usually has no color space data or might have unreliable color space data.
    #   @return [String]
    # @!attribute selector_settings
    #   The video selector settings.
    #   @return [Types::VideoSelectorSettings]
    class VideoSelector < Struct.new(
      :color_space,
      :color_space_settings,
      :color_space_usage,
      :selector_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Video Selector Color Space Settings
    # @!attribute hdr10_settings
    #   Hdr10 Settings
    #   @return [Types::Hdr10Settings]
    class VideoSelectorColorSpaceSettings < Struct.new(
      :hdr10_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Video Selector Pid
    # @!attribute pid
    #   Selects a specific PID from within a video source.
    #   @return [Integer]
    class VideoSelectorPid < Struct.new(
      :pid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Video Selector Program Id
    # @!attribute program_id
    #   Selects a specific program from within a multi-program transport stream. If the program doesn't exist, the first program within the transport stream will be selected by default.
    #   @return [Integer]
    class VideoSelectorProgramId < Struct.new(
      :program_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Video Selector Settings
    # @!attribute video_selector_pid
    #   Video Selector Pid
    #   @return [Types::VideoSelectorPid]
    # @!attribute video_selector_program_id
    #   Video Selector Program Id
    #   @return [Types::VideoSelectorProgramId]
    class VideoSelectorSettings < Struct.new(
      :video_selector_pid,
      :video_selector_program_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The properties for a private VPC Output
    # When this property is specified, the output egress addresses will be created in a user specified VPC
    # @!attribute public_address_allocation_ids
    #   List of public address allocation ids to associate with ENIs that will be created in Output VPC.
    #   Must specify one for SINGLE_PIPELINE, two for STANDARD channels
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   A list of up to 5 EC2 VPC security group IDs to attach to the Output VPC network interfaces.
    #   If none are specified then the VPC default security group will be used
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   A list of VPC subnet IDs from the same VPC.
    #   If STANDARD channel, subnet IDs must be mapped to two unique availability zones (AZ).
    #   @return [Array<String>]
    class VpcOutputSettings < Struct.new(
      :public_address_allocation_ids,
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The properties for a private VPC Output
    # @!attribute availability_zones
    #   The Availability Zones where the vpc subnets are located.
    #   The first Availability Zone applies to the first subnet in the list of subnets.
    #   The second Availability Zone applies to the second subnet.
    #   @return [Array<String>]
    # @!attribute network_interface_ids
    #   A list of Elastic Network Interfaces created by MediaLive in the customer's VPC
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   A list of up EC2 VPC security group IDs attached to the Output VPC network interfaces.
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   A list of VPC subnet IDs from the same VPC.
    #   If STANDARD channel, subnet IDs must be mapped to two unique availability zones (AZ).
    #   @return [Array<String>]
    class VpcOutputSettingsDescription < Struct.new(
      :availability_zones,
      :network_interface_ids,
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Wav Settings
    # @!attribute bit_depth
    #   Bits per sample.
    #   @return [Float]
    # @!attribute coding_mode
    #   The audio coding mode for the WAV audio. The mode determines the number of channels in the audio.
    #   @return [String]
    # @!attribute sample_rate
    #   Sample rate in Hz.
    #   @return [Float]
    class WavSettings < Struct.new(
      :bit_depth,
      :coding_mode,
      :sample_rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Webvtt Destination Settings
    # @!attribute style_control
    #   Controls whether the color and position of the source captions is passed through to the WebVTT output captions.  PASSTHROUGH - Valid only if the source captions are EMBEDDED or TELETEXT.  NO_STYLE_DATA - Don't pass through the style. The output captions will not contain any font styling information.
    #   @return [String]
    class WebvttDestinationSettings < Struct.new(
      :style_control,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
