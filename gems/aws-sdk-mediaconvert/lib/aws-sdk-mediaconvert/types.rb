# frozen_string_literal: true

# This is generated code!

module Aws::MediaConvert
  # This module contains the types returned by client operations.
  module Types

    # Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType.
    module AacAudioDescriptionBroadcasterMix
      BROADCASTER_MIXED_AD = 'BROADCASTER_MIXED_AD'
      NORMAL = 'NORMAL'
    end

    # Specify the AAC profile. For the widest player compatibility and where higher bitrates are acceptable: Keep the default profile, LC (AAC-LC) For improved audio performance at lower bitrates: Choose HEV1 or HEV2. HEV1 (AAC-HE v1) adds spectral band replication to improve speech audio at low bitrates. HEV2 (AAC-HE v2) adds parametric stereo, which optimizes for encoding stereo audio at very low bitrates.
    module AacCodecProfile
      LC = 'LC'
      HEV1 = 'HEV1'
      HEV2 = 'HEV2'
      XHE = 'XHE'
    end

    # The Coding mode that you specify determines the number of audio channels and the audio channel layout metadata in your AAC output. Valid coding modes depend on the Rate control mode and Profile that you select. The following list shows the number of audio channels and channel layout for each coding mode. * 1.0 Audio Description (Receiver Mix): One channel, C. Includes audio description data from your stereo input. For more information see ETSI TS 101 154 Annex E. * 1.0 Mono: One channel, C. * 2.0 Stereo: Two channels, L, R. * 5.1 Surround: Six channels, C, L, R, Ls, Rs, LFE.
    module AacCodingMode
      AD_RECEIVER_MIX = 'AD_RECEIVER_MIX'
      CODING_MODE_1_0 = 'CODING_MODE_1_0'
      CODING_MODE_1_1 = 'CODING_MODE_1_1'
      CODING_MODE_2_0 = 'CODING_MODE_2_0'
      CODING_MODE_5_1 = 'CODING_MODE_5_1'
    end

    # Choose the loudness measurement mode for your audio content. For music or advertisements: We recommend that you keep the default value, Program. For speech or other content: We recommend that you choose Anchor. When you do, MediaConvert optimizes the loudness of your output for clarify by applying speech gates.
    module AacLoudnessMeasurementMode
      PROGRAM = 'PROGRAM'
      ANCHOR = 'ANCHOR'
    end

    # Specify the AAC rate control mode. For a constant bitrate: Choose CBR. Your AAC output bitrate will be equal to the value that you choose for Bitrate. For a variable bitrate: Choose VBR. Your AAC output bitrate will vary according to your audio content and the value that you choose for Bitrate quality.
    module AacRateControlMode
      CBR = 'CBR'
      VBR = 'VBR'
    end

    # Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose "No container" for the output container.
    module AacRawFormat
      LATM_LOAS = 'LATM_LOAS'
      NONE = 'NONE'
    end

    # Required when you set Codec to the value AAC. The service accepts one of two mutually exclusive groups of AAC settings--VBR and CBR. To select one of these modes, set the value of Bitrate control mode to "VBR" or "CBR". In VBR mode, you control the audio quality with the setting VBR quality. In CBR mode, you use the setting Bitrate. Defaults and valid values depend on the rate control mode.
    # @!attribute audio_description_broadcaster_mix
    #   Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType.
    #   @return [String]
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. The set of valid values for this setting is: 6000, 8000, 10000, 12000, 14000, 16000, 20000, 24000, 28000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 384000, 448000, 512000, 576000, 640000, 768000, 896000, 1024000. The value you set is also constrained by the values that you choose for Profile, Bitrate control mode, and Sample rate. Default values depend on Bitrate control mode and Profile.
    #   @return [Integer]
    # @!attribute codec_profile
    #   Specify the AAC profile. For the widest player compatibility and where higher bitrates are acceptable: Keep the default profile, LC (AAC-LC) For improved audio performance at lower bitrates: Choose HEV1 or HEV2. HEV1 (AAC-HE v1) adds spectral band replication to improve speech audio at low bitrates. HEV2 (AAC-HE v2) adds parametric stereo, which optimizes for encoding stereo audio at very low bitrates.
    #   @return [String]
    # @!attribute coding_mode
    #   The Coding mode that you specify determines the number of audio channels and the audio channel layout metadata in your AAC output. Valid coding modes depend on the Rate control mode and Profile that you select. The following list shows the number of audio channels and channel layout for each coding mode. * 1.0 Audio Description (Receiver Mix): One channel, C. Includes audio description data from your stereo input. For more information see ETSI TS 101 154 Annex E. * 1.0 Mono: One channel, C. * 2.0 Stereo: Two channels, L, R. * 5.1 Surround: Six channels, C, L, R, Ls, Rs, LFE.
    #   @return [String]
    # @!attribute loudness_measurement_mode
    #   Choose the loudness measurement mode for your audio content. For music or advertisements: We recommend that you keep the default value, Program. For speech or other content: We recommend that you choose Anchor. When you do, MediaConvert optimizes the loudness of your output for clarify by applying speech gates.
    #   @return [String]
    # @!attribute rap_interval
    #   Specify the RAP (Random Access Point) interval for your xHE-AAC audio output. A RAP allows a decoder to decode audio data mid-stream, without the need to reference previous audio frames, and perform adaptive audio bitrate switching. To specify the RAP interval: Enter an integer from 2000 to 30000, in milliseconds. Smaller values allow for better seeking and more frequent stream switching, while large values improve compression efficiency. To have MediaConvert automatically determine the RAP interval: Leave blank.
    #   @return [Integer]
    # @!attribute rate_control_mode
    #   Specify the AAC rate control mode. For a constant bitrate: Choose CBR. Your AAC output bitrate will be equal to the value that you choose for Bitrate. For a variable bitrate: Choose VBR. Your AAC output bitrate will vary according to your audio content and the value that you choose for Bitrate quality.
    #   @return [String]
    # @!attribute raw_format
    #   Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose "No container" for the output container.
    #   @return [String]
    # @!attribute sample_rate
    #   Specify the AAC sample rate in samples per second (Hz). Valid sample rates depend on the AAC profile and Coding mode that you select. For a list of supported sample rates, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/aac-support.html
    #   @return [Integer]
    # @!attribute specification
    #   Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
    #   @return [String]
    # @!attribute target_loudness_range
    #   Specify the xHE-AAC loudness target. Enter an integer from 6 to 16, representing "loudness units". For more information, see the following specification: Supplementary information for R 128 EBU Tech 3342-2023.
    #   @return [Integer]
    # @!attribute vbr_quality
    #   Specify the quality of your variable bitrate (VBR) AAC audio. For a list of approximate VBR bitrates, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/aac-support.html#aac_vbr
    #   @return [String]
    class AacSettings < Struct.new(
      :audio_description_broadcaster_mix,
      :bitrate,
      :codec_profile,
      :coding_mode,
      :loudness_measurement_mode,
      :rap_interval,
      :rate_control_mode,
      :raw_format,
      :sample_rate,
      :specification,
      :target_loudness_range,
      :vbr_quality,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
    module AacSpecification
      MPEG2 = 'MPEG2'
      MPEG4 = 'MPEG4'
    end

    # Specify the quality of your variable bitrate (VBR) AAC audio. For a list of approximate VBR bitrates, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/aac-support.html#aac_vbr
    module AacVbrQuality
      LOW = 'LOW'
      MEDIUM_LOW = 'MEDIUM_LOW'
      MEDIUM_HIGH = 'MEDIUM_HIGH'
      HIGH = 'HIGH'
    end

    # Specify the bitstream mode for the AC-3 stream that the encoder emits. For more information about the AC3 bitstream mode, see ATSC A/52-2012 (Annex E).
    module Ac3BitstreamMode
      COMPLETE_MAIN = 'COMPLETE_MAIN'
      COMMENTARY = 'COMMENTARY'
      DIALOGUE = 'DIALOGUE'
      EMERGENCY = 'EMERGENCY'
      HEARING_IMPAIRED = 'HEARING_IMPAIRED'
      MUSIC_AND_EFFECTS = 'MUSIC_AND_EFFECTS'
      VISUALLY_IMPAIRED = 'VISUALLY_IMPAIRED'
      VOICE_OVER = 'VOICE_OVER'
    end

    # Dolby Digital coding mode. Determines number of channels.
    module Ac3CodingMode
      CODING_MODE_1_0 = 'CODING_MODE_1_0'
      CODING_MODE_1_1 = 'CODING_MODE_1_1'
      CODING_MODE_2_0 = 'CODING_MODE_2_0'
      CODING_MODE_3_2_LFE = 'CODING_MODE_3_2_LFE'
    end

    # Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the line operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile. For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    module Ac3DynamicRangeCompressionLine
      FILM_STANDARD = 'FILM_STANDARD'
      FILM_LIGHT = 'FILM_LIGHT'
      MUSIC_STANDARD = 'MUSIC_STANDARD'
      MUSIC_LIGHT = 'MUSIC_LIGHT'
      SPEECH = 'SPEECH'
      NONE = 'NONE'
    end

    # When you want to add Dolby dynamic range compression (DRC) signaling to your output stream, we recommend that you use the mode-specific settings instead of Dynamic range compression profile. The mode-specific settings are Dynamic range compression profile, line mode and Dynamic range compression profile, RF mode. Note that when you specify values for all three settings, MediaConvert ignores the value of this setting in favor of the mode-specific settings. If you do use this setting instead of the mode-specific settings, choose None to leave out DRC signaling. Keep the default Film standard to set the profile to Dolby's film standard profile for all operating modes.
    module Ac3DynamicRangeCompressionProfile
      FILM_STANDARD = 'FILM_STANDARD'
      NONE = 'NONE'
    end

    # Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the RF operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile. For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    module Ac3DynamicRangeCompressionRf
      FILM_STANDARD = 'FILM_STANDARD'
      FILM_LIGHT = 'FILM_LIGHT'
      MUSIC_STANDARD = 'MUSIC_STANDARD'
      MUSIC_LIGHT = 'MUSIC_LIGHT'
      SPEECH = 'SPEECH'
      NONE = 'NONE'
    end

    # Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
    module Ac3LfeFilter
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
    module Ac3MetadataControl
      FOLLOW_INPUT = 'FOLLOW_INPUT'
      USE_CONFIGURED = 'USE_CONFIGURED'
    end

    # Required when you set Codec to the value AC3.
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. The bitrate that you specify must be a multiple of 8000 within the allowed minimum and maximum values. Leave blank to use the default bitrate for the coding mode you select according ETSI TS 102 366. Valid bitrates for coding mode 1/0: Default: 96000. Minimum: 64000. Maximum: 128000. Valid bitrates for coding mode 1/1: Default: 192000. Minimum: 128000. Maximum: 384000. Valid bitrates for coding mode 2/0: Default: 192000. Minimum: 128000. Maximum: 384000. Valid bitrates for coding mode 3/2 with FLE: Default: 384000. Minimum: 384000. Maximum: 640000.
    #   @return [Integer]
    # @!attribute bitstream_mode
    #   Specify the bitstream mode for the AC-3 stream that the encoder emits. For more information about the AC3 bitstream mode, see ATSC A/52-2012 (Annex E).
    #   @return [String]
    # @!attribute coding_mode
    #   Dolby Digital coding mode. Determines number of channels.
    #   @return [String]
    # @!attribute dialnorm
    #   Sets the dialnorm for the output. If blank and input audio is Dolby Digital, dialnorm will be passed through.
    #   @return [Integer]
    # @!attribute dynamic_range_compression_line
    #   Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the line operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile. For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #   @return [String]
    # @!attribute dynamic_range_compression_profile
    #   When you want to add Dolby dynamic range compression (DRC) signaling to your output stream, we recommend that you use the mode-specific settings instead of Dynamic range compression profile. The mode-specific settings are Dynamic range compression profile, line mode and Dynamic range compression profile, RF mode. Note that when you specify values for all three settings, MediaConvert ignores the value of this setting in favor of the mode-specific settings. If you do use this setting instead of the mode-specific settings, choose None to leave out DRC signaling. Keep the default Film standard to set the profile to Dolby's film standard profile for all operating modes.
    #   @return [String]
    # @!attribute dynamic_range_compression_rf
    #   Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the RF operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile. For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #   @return [String]
    # @!attribute lfe_filter
    #   Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
    #   @return [String]
    # @!attribute metadata_control
    #   When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
    #   @return [String]
    # @!attribute sample_rate
    #   This value is always 48000. It represents the sample rate in Hz.
    #   @return [Integer]
    class Ac3Settings < Struct.new(
      :bitrate,
      :bitstream_mode,
      :coding_mode,
      :dialnorm,
      :dynamic_range_compression_line,
      :dynamic_range_compression_profile,
      :dynamic_range_compression_rf,
      :lfe_filter,
      :metadata_control,
      :sample_rate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify whether the service runs your job with accelerated transcoding. Choose DISABLED if you don't want accelerated transcoding. Choose ENABLED if you want your job to run with accelerated transcoding and to fail if your input files or your job settings aren't compatible with accelerated transcoding. Choose PREFERRED if you want your job to run with accelerated transcoding if the job is compatible with the feature and to run at standard speed if it's not.
    module AccelerationMode
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
      PREFERRED = 'PREFERRED'
    end

    # Accelerated transcoding can significantly speed up jobs with long, visually complex content.
    # @!attribute mode
    #   Specify the conditions when the service will run your job with accelerated transcoding.
    #   @return [String]
    class AccelerationSettings < Struct.new(
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Describes whether the current job is running with accelerated transcoding. For jobs that have Acceleration (AccelerationMode) set to DISABLED, AccelerationStatus is always NOT_APPLICABLE. For jobs that have Acceleration (AccelerationMode) set to ENABLED or PREFERRED, AccelerationStatus is one of the other states. AccelerationStatus is IN_PROGRESS initially, while the service determines whether the input files and job settings are compatible with accelerated transcoding. If they are, AcclerationStatus is ACCELERATED. If your input files and job settings aren't compatible with accelerated transcoding, the service either fails your job or runs it without accelerated transcoding, depending on how you set Acceleration (AccelerationMode). When the service runs your job without accelerated transcoding, AccelerationStatus is NOT_ACCELERATED.
    module AccelerationStatus
      NOT_APPLICABLE = 'NOT_APPLICABLE'
      IN_PROGRESS = 'IN_PROGRESS'
      ACCELERATED = 'ACCELERATED'
      NOT_ACCELERATED = 'NOT_ACCELERATED'
    end

    # Use to remove noise, blocking, blurriness, or ringing from your input as a pre-filter step before encoding. The Advanced input filter removes more types of compression artifacts and is an improvement when compared to basic Deblock and Denoise filters. To remove video compression artifacts from your input and improve the video quality: Choose Enabled. Additionally, this filter can help increase the video quality of your output relative to its bitrate, since noisy inputs are more complex and require more bits to encode. To help restore loss of detail after applying the filter, you can optionally add texture or sharpening as an additional step. Jobs that use this feature incur pro-tier pricing. To not apply advanced input filtering: Choose Disabled. Note that you can still apply basic filtering with Deblock and Denoise.
    module AdvancedInputFilter
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Add texture and detail to areas of your input video content that were lost after applying the Advanced input filter. To adaptively add texture and reduce softness: Choose Enabled. To not add any texture: Keep the default value, Disabled. We recommend that you choose Disabled for input video content that doesn't have texture, including screen recordings, computer graphics, or cartoons.
    module AdvancedInputFilterAddTexture
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Optional settings for Advanced input filter when you set Advanced input filter to Enabled.
    # @!attribute add_texture
    #   Add texture and detail to areas of your input video content that were lost after applying the Advanced input filter. To adaptively add texture and reduce softness: Choose Enabled. To not add any texture: Keep the default value, Disabled. We recommend that you choose Disabled for input video content that doesn't have texture, including screen recordings, computer graphics, or cartoons.
    #   @return [String]
    # @!attribute sharpening
    #   Optionally specify the amount of sharpening to apply when you use the Advanced input filter. Sharpening adds contrast to the edges of your video content and can reduce softness. To apply no sharpening: Keep the default value, Off. To apply a minimal amount of sharpening choose Low, or for the maximum choose High.
    #   @return [String]
    class AdvancedInputFilterSettings < Struct.new(
      :add_texture,
      :sharpening,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Optionally specify the amount of sharpening to apply when you use the Advanced input filter. Sharpening adds contrast to the edges of your video content and can reduce softness. To apply no sharpening: Keep the default value, Off. To apply a minimal amount of sharpening choose Low, or for the maximum choose High.
    module AdvancedInputFilterSharpen
      OFF = 'OFF'
      LOW = 'LOW'
      HIGH = 'HIGH'
    end

    # This setting only applies to H.264, H.265, and MPEG2 outputs. Use Insert AFD signaling to specify whether the service includes AFD values in the output video data and what those values are. * Choose None to remove all AFD values from this output. * Choose Fixed to ignore input AFD values and instead encode the value specified in the job. * Choose Auto to calculate output AFD values based on the input AFD scaler data.
    module AfdSignaling
      NONE = 'NONE'
      AUTO = 'AUTO'
      FIXED = 'FIXED'
    end

    # Required when you set Codec to the value AIFF.
    # @!attribute bit_depth
    #   Specify Bit depth, in bits per sample, to choose the encoding quality for this audio track.
    #   @return [Integer]
    # @!attribute channels
    #   Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64.
    #   @return [Integer]
    # @!attribute sample_rate
    #   Sample rate in Hz.
    #   @return [Integer]
    class AiffSettings < Struct.new(
      :bit_depth,
      :channels,
      :sample_rate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Allowed renditions to specify a list of possible resolutions in your ABR stack. * MediaConvert will create an ABR stack exclusively from the list of resolutions that you specify. * Some resolutions in the Allowed renditions list may not be included, however you can force a resolution to be included by setting Required to ENABLED. * You must specify at least one resolution that is greater than or equal to any resolutions that you specify in Min top rendition size or Min bottom rendition size. * If you specify Allowed renditions, you must not specify a separate rule for Force include renditions.
    # @!attribute height
    #   Use Height to define the video resolution height, in pixels, for this rule.
    #   @return [Integer]
    # @!attribute required
    #   Set to ENABLED to force a rendition to be included.
    #   @return [String]
    # @!attribute width
    #   Use Width to define the video resolution width, in pixels, for this rule.
    #   @return [Integer]
    class AllowedRenditionSize < Struct.new(
      :height,
      :required,
      :width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ignore this setting unless this input is a QuickTime animation with an alpha channel. Use this setting to create separate Key and Fill outputs. In each output, specify which part of the input MediaConvert uses. Leave this setting at the default value DISCARD to delete the alpha channel and preserve the video. Set it to REMAP_TO_LUMA to delete the video and map the alpha channel to the luma channel of your outputs.
    module AlphaBehavior
      DISCARD = 'DISCARD'
      REMAP_TO_LUMA = 'REMAP_TO_LUMA'
    end

    # Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert, MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.
    module AncillaryConvert608To708
      UPCONVERT = 'UPCONVERT'
      DISABLED = 'DISABLED'
    end

    # Settings for ancillary captions source.
    # @!attribute convert608_to708
    #   Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert, MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.
    #   @return [String]
    # @!attribute source_ancillary_channel_number
    #   Specifies the 608 channel number in the ancillary data track from which to extract captions. Unused for passthrough.
    #   @return [Integer]
    # @!attribute terminate_captions
    #   By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting.
    #   @return [String]
    class AncillarySourceSettings < Struct.new(
      :convert608_to708,
      :source_ancillary_channel_number,
      :terminate_captions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting.
    module AncillaryTerminateCaptions
      END_OF_INPUT = 'END_OF_INPUT'
      DISABLED = 'DISABLED'
    end

    # The anti-alias filter is automatically applied to all outputs. The service no longer accepts the value DISABLED for AntiAlias. If you specify that in your job, the service will ignore the setting.
    module AntiAlias
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # @!attribute arn
    #   The ARN of the ACM certificate that you want to associate with your MediaConvert resource.
    #   @return [String]
    class AssociateCertificateRequest < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AssociateCertificateResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the QuickTime audio channel layout tags for the audio channels in this audio track. Enter channel layout tags in the same order as your output's audio channel order. For example, if your output audio track has a left and a right channel, enter Left (L) for the first channel and Right (R) for the second. If your output has multiple single-channel audio tracks, enter a single channel layout tag for each track.
    module AudioChannelTag
      L = 'L'
      R = 'R'
      C = 'C'
      LFE = 'LFE'
      LS = 'LS'
      RS = 'RS'
      LC = 'LC'
      RC = 'RC'
      CS = 'CS'
      LSD = 'LSD'
      RSD = 'RSD'
      TCS = 'TCS'
      VHL = 'VHL'
      VHC = 'VHC'
      VHR = 'VHR'
      TBL = 'TBL'
      TBC = 'TBC'
      TBR = 'TBR'
      RSL = 'RSL'
      RSR = 'RSR'
      LW = 'LW'
      RW = 'RW'
      LFE2 = 'LFE2'
      LT = 'LT'
      RT = 'RT'
      HI = 'HI'
      NAR = 'NAR'
      M = 'M'
    end

    # Specify the QuickTime audio channel layout tags for the audio channels in this audio track. When you don't specify a value, MediaConvert labels your track as Center (C) by default. To use Audio layout tagging, your output must be in a QuickTime (MOV) container and your audio codec must be AAC, WAV, or AIFF.
    # @!attribute channel_tag
    #   Specify the QuickTime audio channel layout tags for the audio channels in this audio track. Enter channel layout tags in the same order as your output's audio channel order. For example, if your output audio track has a left and a right channel, enter Left (L) for the first channel and Right (R) for the second. If your output has multiple single-channel audio tracks, enter a single channel layout tag for each track.
    #   @return [String]
    # @!attribute channel_tags
    #   Specify the QuickTime audio channel layout tags for the audio channels in this audio track. Enter channel layout tags in the same order as your output's audio channel order. For example, if your output audio track has a left and a right channel, enter Left (L) for the first channel and Right (R) for the second. If your output has multiple single-channel audio tracks, enter a single channel layout tag for each track.
    #   @return [Array<String>]
    class AudioChannelTaggingSettings < Struct.new(
      :channel_tag,
      :channel_tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Choose the audio codec for this output. Note that the option Dolby Digital passthrough applies only to Dolby Digital and Dolby Digital Plus audio inputs. Make sure that you choose a codec that's supported with your output container: https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers.html#reference-codecs-containers-output-audio For audio-only outputs, make sure that both your input audio codec and your output audio codec are supported for audio-only workflows. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers-input.html#reference-codecs-containers-input-audio-only and https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers.html#audio-only-output
    module AudioCodec
      AAC = 'AAC'
      MP2 = 'MP2'
      MP3 = 'MP3'
      WAV = 'WAV'
      AIFF = 'AIFF'
      AC3 = 'AC3'
      EAC3 = 'EAC3'
      EAC3_ATMOS = 'EAC3_ATMOS'
      VORBIS = 'VORBIS'
      OPUS = 'OPUS'
      PASSTHROUGH = 'PASSTHROUGH'
      FLAC = 'FLAC'
    end

    # Settings related to audio encoding. The settings in this group vary depending on the value that you choose for your audio codec.
    # @!attribute aac_settings
    #   Required when you set Codec to the value AAC. The service accepts one of two mutually exclusive groups of AAC settings--VBR and CBR. To select one of these modes, set the value of Bitrate control mode to "VBR" or "CBR". In VBR mode, you control the audio quality with the setting VBR quality. In CBR mode, you use the setting Bitrate. Defaults and valid values depend on the rate control mode.
    #   @return [Types::AacSettings]
    # @!attribute ac3_settings
    #   Required when you set Codec to the value AC3.
    #   @return [Types::Ac3Settings]
    # @!attribute aiff_settings
    #   Required when you set Codec to the value AIFF.
    #   @return [Types::AiffSettings]
    # @!attribute codec
    #   Choose the audio codec for this output. Note that the option Dolby Digital passthrough applies only to Dolby Digital and Dolby Digital Plus audio inputs. Make sure that you choose a codec that's supported with your output container: https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers.html#reference-codecs-containers-output-audio For audio-only outputs, make sure that both your input audio codec and your output audio codec are supported for audio-only workflows. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers-input.html#reference-codecs-containers-input-audio-only and https://docs.aws.amazon.com/mediaconvert/latest/ug/reference-codecs-containers.html#audio-only-output
    #   @return [String]
    # @!attribute eac3_atmos_settings
    #   Required when you set Codec to the value EAC3_ATMOS.
    #   @return [Types::Eac3AtmosSettings]
    # @!attribute eac3_settings
    #   Required when you set Codec to the value EAC3.
    #   @return [Types::Eac3Settings]
    # @!attribute flac_settings
    #   Required when you set Codec, under AudioDescriptions>CodecSettings, to the value FLAC.
    #   @return [Types::FlacSettings]
    # @!attribute mp2_settings
    #   Required when you set Codec to the value MP2.
    #   @return [Types::Mp2Settings]
    # @!attribute mp3_settings
    #   Required when you set Codec, under AudioDescriptions>CodecSettings, to the value MP3.
    #   @return [Types::Mp3Settings]
    # @!attribute opus_settings
    #   Required when you set Codec, under AudioDescriptions>CodecSettings, to the value OPUS.
    #   @return [Types::OpusSettings]
    # @!attribute vorbis_settings
    #   Required when you set Codec, under AudioDescriptions>CodecSettings, to the value Vorbis.
    #   @return [Types::VorbisSettings]
    # @!attribute wav_settings
    #   Required when you set Codec to the value WAV.
    #   @return [Types::WavSettings]
    class AudioCodecSettings < Struct.new(
      :aac_settings,
      :ac3_settings,
      :aiff_settings,
      :codec,
      :eac3_atmos_settings,
      :eac3_settings,
      :flac_settings,
      :mp2_settings,
      :mp3_settings,
      :opus_settings,
      :vorbis_settings,
      :wav_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Enable this setting on one audio selector to set it as the default for the job. The service uses this default for outputs where it can't find the specified input audio. If you don't set a default, those outputs have no audio.
    module AudioDefaultSelection
      DEFAULT = 'DEFAULT'
      NOT_DEFAULT = 'NOT_DEFAULT'
    end

    # Settings related to one audio tab on the MediaConvert console. In your job JSON, an instance of AudioDescription is equivalent to one audio tab in the console. Usually, one audio tab corresponds to one output audio track. Depending on how you set up your input audio selectors and whether you use audio selector groups, one audio tab can correspond to a group of output audio tracks.
    # @!attribute audio_channel_tagging_settings
    #   Specify the QuickTime audio channel layout tags for the audio channels in this audio track. When you don't specify a value, MediaConvert labels your track as Center (C) by default. To use Audio layout tagging, your output must be in a QuickTime (MOV) container and your audio codec must be AAC, WAV, or AIFF.
    #   @return [Types::AudioChannelTaggingSettings]
    # @!attribute audio_normalization_settings
    #   Advanced audio normalization settings. Ignore these settings unless you need to comply with a loudness standard.
    #   @return [Types::AudioNormalizationSettings]
    # @!attribute audio_source_name
    #   Specifies which audio data to use from each input. In the simplest case, specify an "Audio Selector":#inputs-audio_selector by name based on its order within each input. For example if you specify "Audio Selector 3", then the third audio selector will be used from each input. If an input does not have an "Audio Selector 3", then the audio selector marked as "default" in that input will be used. If there is no audio selector marked as "default", silence will be inserted for the duration of that input. Alternatively, an "Audio Selector Group":#inputs-audio_selector_group name may be specified, with similar default/silence behavior. If no audio_source_name is specified, then "Audio Selector 1" will be chosen automatically.
    #   @return [String]
    # @!attribute audio_type
    #   Applies only if Follow Input Audio Type is unchecked (false). A number between 0 and 255. The following are defined in ISO-IEC 13818-1: 0 = Undefined, 1 = Clean Effects, 2 = Hearing Impaired, 3 = Visually Impaired Commentary, 4-255 = Reserved.
    #   @return [Integer]
    # @!attribute audio_type_control
    #   When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type, then that value is passed through to the output. If the input contains no ISO 639 audio_type, the value in Audio Type is included in the output. Otherwise the value in Audio Type is included in the output. Note that this field and audioType are both ignored if audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD.
    #   @return [String]
    # @!attribute codec_settings
    #   Settings related to audio encoding. The settings in this group vary depending on the value that you choose for your audio codec.
    #   @return [Types::AudioCodecSettings]
    # @!attribute custom_language_code
    #   Specify the language for this audio output track. The service puts this language code into your output audio track when you set Language code control to Use configured. The service also uses your specified custom language code when you set Language code control to Follow input, but your input file doesn't specify a language code. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming.
    #   @return [String]
    # @!attribute language_code
    #   Indicates the language of the audio output track. The ISO 639 language specified in the 'Language Code' drop down will be used when 'Follow Input Language Code' is not selected or when 'Follow Input Language Code' is selected but there is no ISO 639 language code specified by the input.
    #   @return [String]
    # @!attribute language_code_control
    #   Specify which source for language code takes precedence for this audio track. When you choose Follow input, the service uses the language code from the input track if it's present. If there's no languge code on the input track, the service uses the code that you specify in the setting Language code. When you choose Use configured, the service uses the language code that you specify.
    #   @return [String]
    # @!attribute remix_settings
    #   Advanced audio remixing settings.
    #   @return [Types::RemixSettings]
    # @!attribute stream_name
    #   Specify a label for this output audio stream. For example, "English", "Director commentary", or "track_2". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting.
    #   @return [String]
    class AudioDescription < Struct.new(
      :audio_channel_tagging_settings,
      :audio_normalization_settings,
      :audio_source_name,
      :audio_type,
      :audio_type_control,
      :codec_settings,
      :custom_language_code,
      :language_code,
      :language_code_control,
      :remix_settings,
      :stream_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Apply audio timing corrections to help synchronize audio and video in your output. To apply timing corrections, your input must meet the following requirements: * Container: MP4, or MOV, with an accurate time-to-sample (STTS) table. * Audio track: AAC. Choose from the following audio timing correction settings: * Disabled (Default): Apply no correction. * Auto: Recommended for most inputs. MediaConvert analyzes the audio timing in your input and determines which correction setting to use, if needed. * Track: Adjust the duration of each audio frame by a constant amount to align the audio track length with STTS duration. Track-level correction does not affect pitch, and is recommended for tonal audio content such as music. * Frame: Adjust the duration of each audio frame by a variable amount to align audio frames with STTS timestamps. No corrections are made to already-aligned frames. Frame-level correction may affect the pitch of corrected frames, and is recommended for atonal audio content such as speech or percussion. * Force: Apply audio duration correction, either Track or Frame depending on your input, regardless of the accuracy of your input's STTS table. Your output audio and video may not be aligned or it may contain audio artifacts.
    module AudioDurationCorrection
      DISABLED = 'DISABLED'
      AUTO = 'AUTO'
      TRACK = 'TRACK'
      FRAME = 'FRAME'
      FORCE = 'FORCE'
    end

    # Specify which source for language code takes precedence for this audio track. When you choose Follow input, the service uses the language code from the input track if it's present. If there's no languge code on the input track, the service uses the code that you specify in the setting Language code. When you choose Use configured, the service uses the language code that you specify.
    module AudioLanguageCodeControl
      FOLLOW_INPUT = 'FOLLOW_INPUT'
      USE_CONFIGURED = 'USE_CONFIGURED'
    end

    # Choose one of the following audio normalization algorithms: ITU-R BS.1770-1: Ungated loudness. A measurement of ungated average loudness for an entire piece of content, suitable for measurement of short-form content under ATSC recommendation A/85. Supports up to 5.1 audio channels. ITU-R BS.1770-2: Gated loudness. A measurement of gated average loudness compliant with the requirements of EBU-R128. Supports up to 5.1 audio channels. ITU-R BS.1770-3: Modified peak. The same loudness measurement algorithm as 1770-2, with an updated true peak measurement. ITU-R BS.1770-4: Higher channel count. Allows for more audio channels than the other algorithms, including configurations such as 7.1.
    module AudioNormalizationAlgorithm
      ITU_BS_1770_1 = 'ITU_BS_1770_1'
      ITU_BS_1770_2 = 'ITU_BS_1770_2'
      ITU_BS_1770_3 = 'ITU_BS_1770_3'
      ITU_BS_1770_4 = 'ITU_BS_1770_4'
    end

    # When enabled the output audio is corrected using the chosen algorithm. If disabled, the audio will be measured but not adjusted.
    module AudioNormalizationAlgorithmControl
      CORRECT_AUDIO = 'CORRECT_AUDIO'
      MEASURE_ONLY = 'MEASURE_ONLY'
    end

    # If set to LOG, log each output's audio track loudness to a CSV file.
    module AudioNormalizationLoudnessLogging
      LOG = 'LOG'
      DONT_LOG = 'DONT_LOG'
    end

    # If set to TRUE_PEAK, calculate and log the TruePeak for each output's audio track loudness.
    module AudioNormalizationPeakCalculation
      TRUE_PEAK = 'TRUE_PEAK'
      NONE = 'NONE'
    end

    # Advanced audio normalization settings. Ignore these settings unless you need to comply with a loudness standard.
    # @!attribute algorithm
    #   Choose one of the following audio normalization algorithms: ITU-R BS.1770-1: Ungated loudness. A measurement of ungated average loudness for an entire piece of content, suitable for measurement of short-form content under ATSC recommendation A/85. Supports up to 5.1 audio channels. ITU-R BS.1770-2: Gated loudness. A measurement of gated average loudness compliant with the requirements of EBU-R128. Supports up to 5.1 audio channels. ITU-R BS.1770-3: Modified peak. The same loudness measurement algorithm as 1770-2, with an updated true peak measurement. ITU-R BS.1770-4: Higher channel count. Allows for more audio channels than the other algorithms, including configurations such as 7.1.
    #   @return [String]
    # @!attribute algorithm_control
    #   When enabled the output audio is corrected using the chosen algorithm. If disabled, the audio will be measured but not adjusted.
    #   @return [String]
    # @!attribute correction_gate_level
    #   Content measuring above this level will be corrected to the target level. Content measuring below this level will not be corrected.
    #   @return [Integer]
    # @!attribute loudness_logging
    #   If set to LOG, log each output's audio track loudness to a CSV file.
    #   @return [String]
    # @!attribute peak_calculation
    #   If set to TRUE_PEAK, calculate and log the TruePeak for each output's audio track loudness.
    #   @return [String]
    # @!attribute target_lkfs
    #   When you use Audio normalization, optionally use this setting to specify a target loudness. If you don't specify a value here, the encoder chooses a value for you, based on the algorithm that you choose for Algorithm. If you choose algorithm 1770-1, the encoder will choose -24 LKFS; otherwise, the encoder will choose -23 LKFS.
    #   @return [Float]
    # @!attribute true_peak_limiter_threshold
    #   Specify the True-peak limiter threshold in decibels relative to full scale (dBFS). The peak inter-audio sample loudness in your output will be limited to the value that you specify, without affecting the overall target LKFS. Enter a value from 0 to -8. Leave blank to use the default value 0.
    #   @return [Float]
    class AudioNormalizationSettings < Struct.new(
      :algorithm,
      :algorithm_control,
      :correction_gate_level,
      :loudness_logging,
      :peak_calculation,
      :target_lkfs,
      :true_peak_limiter_threshold,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Details about the media file's audio track.
    # @!attribute bit_depth
    #   The bit depth of the audio track.
    #   @return [Integer]
    # @!attribute bit_rate
    #   The bit rate of the audio track, in bits per second.
    #   @return [Integer]
    # @!attribute channels
    #   The number of audio channels in the audio track.
    #   @return [Integer]
    # @!attribute frame_rate
    #   The frame rate of the video or audio track.
    #   @return [Types::FrameRate]
    # @!attribute language_code
    #   The language code of the audio track, in three character ISO 639-3 format.
    #   @return [String]
    # @!attribute sample_rate
    #   The sample rate of the audio track.
    #   @return [Integer]
    class AudioProperties < Struct.new(
      :bit_depth,
      :bit_rate,
      :channels,
      :frame_rate,
      :language_code,
      :sample_rate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Audio selectors to specify a track or set of tracks from the input that you will use in your outputs. You can use multiple Audio selectors per input.
    # @!attribute audio_duration_correction
    #   Apply audio timing corrections to help synchronize audio and video in your output. To apply timing corrections, your input must meet the following requirements: * Container: MP4, or MOV, with an accurate time-to-sample (STTS) table. * Audio track: AAC. Choose from the following audio timing correction settings: * Disabled (Default): Apply no correction. * Auto: Recommended for most inputs. MediaConvert analyzes the audio timing in your input and determines which correction setting to use, if needed. * Track: Adjust the duration of each audio frame by a constant amount to align the audio track length with STTS duration. Track-level correction does not affect pitch, and is recommended for tonal audio content such as music. * Frame: Adjust the duration of each audio frame by a variable amount to align audio frames with STTS timestamps. No corrections are made to already-aligned frames. Frame-level correction may affect the pitch of corrected frames, and is recommended for atonal audio content such as speech or percussion. * Force: Apply audio duration correction, either Track or Frame depending on your input, regardless of the accuracy of your input's STTS table. Your output audio and video may not be aligned or it may contain audio artifacts.
    #   @return [String]
    # @!attribute custom_language_code
    #   Selects a specific language code from within an audio source, using the ISO 639-2 or ISO 639-3 three-letter language code
    #   @return [String]
    # @!attribute default_selection
    #   Enable this setting on one audio selector to set it as the default for the job. The service uses this default for outputs where it can't find the specified input audio. If you don't set a default, those outputs have no audio.
    #   @return [String]
    # @!attribute external_audio_file_input
    #   Specify the S3, HTTP, or HTTPS URL for your external audio file input.
    #   @return [String]
    # @!attribute hls_rendition_group_settings
    #   Settings specific to audio sources in an HLS alternate rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique audio track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the properties provided, the job fails. If no properties in hlsRenditionGroupSettings are specified, the default audio track within the video segment is chosen. If there is no audio within video segment, the alternative audio with DEFAULT=YES is chosen instead.
    #   @return [Types::HlsRenditionGroupSettings]
    # @!attribute language_code
    #   Specify the language to select from your audio input. In the MediaConvert console choose from a list of languages. In your JSON job settings choose from an ISO 639-2 three-letter code listed at https://www.loc.gov/standards/iso639-2/php/code_list.php
    #   @return [String]
    # @!attribute offset
    #   Specify a time delta, in milliseconds, to offset the audio from the input video.
    #   To specify no offset: Keep the default value, 0.
    #   To specify an offset: Enter an integer from -2147483648 to 2147483647
    #   @return [Integer]
    # @!attribute pids
    #   Selects a specific PID from within an audio source (e.g. 257 selects PID 0x101).
    #   @return [Array<Integer>]
    # @!attribute program_selection
    #   Use this setting for input streams that contain Dolby E, to have the service extract specific program data from the track. To select multiple programs, create multiple selectors with the same Track and different Program numbers. In the console, this setting is visible when you set Selector type to Track. Choose the program number from the dropdown list. If your input file has incorrect metadata, you can choose All channels instead of a program number to have the service ignore the program IDs and include all the programs in the track.
    #   @return [Integer]
    # @!attribute remix_settings
    #   Use these settings to reorder the audio channels of one input to match those of another input. This allows you to combine the two files into a single output, one after the other.
    #   @return [Types::RemixSettings]
    # @!attribute selector_type
    #   Specify how MediaConvert selects audio content within your input. The default is Track. PID: Select audio by specifying the Packet Identifier (PID) values for MPEG Transport Stream inputs. Use this when you know the exact PID values of your audio streams. Track: Default. Select audio by track number. This is the most common option and works with most input container formats. Language code: Select audio by language using ISO 639-2 or ISO 639-3 three-letter language codes. Use this when your source has embedded language metadata and you want to select tracks based on their language. HLS rendition group: Select audio from an HLS rendition group. Use this when your input is an HLS package with multiple audio renditions and you want to select specific rendition groups. All PCM: Select all uncompressed PCM audio tracks from your input automatically. This is useful when you want to include all PCM audio tracks without specifying individual track numbers.
    #   @return [String]
    # @!attribute tracks
    #   Identify a track from the input audio to include in this selector by entering the track index number. To include several tracks in a single audio selector, specify multiple tracks as follows. Using the console, enter a comma-separated list. For example, type "1,2,3" to include tracks 1 through 3.
    #   @return [Array<Integer>]
    class AudioSelector < Struct.new(
      :audio_duration_correction,
      :custom_language_code,
      :default_selection,
      :external_audio_file_input,
      :hls_rendition_group_settings,
      :language_code,
      :offset,
      :pids,
      :program_selection,
      :remix_settings,
      :selector_type,
      :tracks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use audio selector groups to combine multiple sidecar audio inputs so that you can assign them to a single output audio tab. Note that, if you're working with embedded audio, it's simpler to assign multiple input tracks into a single audio selector rather than use an audio selector group.
    # @!attribute audio_selector_names
    #   Name of an Audio Selector within the same input to include in the group. Audio selector names are standardized, based on their order within the input (e.g., "Audio Selector 1"). The audio selector name parameter can be repeated to add any number of audio selectors to the group.
    #   @return [Array<String>]
    class AudioSelectorGroup < Struct.new(
      :audio_selector_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify how MediaConvert selects audio content within your input. The default is Track. PID: Select audio by specifying the Packet Identifier (PID) values for MPEG Transport Stream inputs. Use this when you know the exact PID values of your audio streams. Track: Default. Select audio by track number. This is the most common option and works with most input container formats. Language code: Select audio by language using ISO 639-2 or ISO 639-3 three-letter language codes. Use this when your source has embedded language metadata and you want to select tracks based on their language. HLS rendition group: Select audio from an HLS rendition group. Use this when your input is an HLS package with multiple audio renditions and you want to select specific rendition groups. All PCM: Select all uncompressed PCM audio tracks from your input automatically. This is useful when you want to include all PCM audio tracks without specifying individual track numbers.
    module AudioSelectorType
      PID = 'PID'
      TRACK = 'TRACK'
      LANGUAGE_CODE = 'LANGUAGE_CODE'
      HLS_RENDITION_GROUP = 'HLS_RENDITION_GROUP'
      ALL_PCM = 'ALL_PCM'
    end

    # When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type, then that value is passed through to the output. If the input contains no ISO 639 audio_type, the value in Audio Type is included in the output. Otherwise the value in Audio Type is included in the output. Note that this field and audioType are both ignored if audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD.
    module AudioTypeControl
      FOLLOW_INPUT = 'FOLLOW_INPUT'
      USE_CONFIGURED = 'USE_CONFIGURED'
    end

    # Specify one or more Automated ABR rule types. Note: Force include and Allowed renditions are mutually exclusive.
    # @!attribute allowed_renditions
    #   When customer adds the allowed renditions rule for auto ABR ladder, they are required to add at leat one rendition to allowedRenditions list
    #   @return [Array<Types::AllowedRenditionSize>]
    # @!attribute force_include_renditions
    #   When customer adds the force include renditions rule for auto ABR ladder, they are required to add at leat one rendition to forceIncludeRenditions list
    #   @return [Array<Types::ForceIncludeRenditionSize>]
    # @!attribute min_bottom_rendition_size
    #   Use Min bottom rendition size to specify a minimum size for the lowest resolution in your ABR stack. * The lowest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 640x360 the lowest resolution in your ABR stack will be equal to or greater than to 640x360. * If you specify a Min top rendition size rule, the value that you specify for Min bottom rendition size must be less than, or equal to, Min top rendition size.
    #   @return [Types::MinBottomRenditionSize]
    # @!attribute min_top_rendition_size
    #   Use Min top rendition size to specify a minimum size for the highest resolution in your ABR stack. * The highest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 1280x720 the highest resolution in your ABR stack will be equal to or greater than 1280x720. * If you specify a value for Max resolution, the value that you specify for Min top rendition size must be less than, or equal to, Max resolution.
    #   @return [Types::MinTopRenditionSize]
    # @!attribute type
    #   Use Min top rendition size to specify a minimum size for the highest resolution in your ABR stack. * The highest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 1280x720 the highest resolution in your ABR stack will be equal to or greater than 1280x720. * If you specify a value for Max resolution, the value that you specify for Min top rendition size must be less than, or equal to, Max resolution. Use Min bottom rendition size to specify a minimum size for the lowest resolution in your ABR stack. * The lowest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 640x360 the lowest resolution in your ABR stack will be equal to or greater than to 640x360. * If you specify a Min top rendition size rule, the value that you specify for Min bottom rendition size must be less than, or equal to, Min top rendition size. Use Force include renditions to specify one or more resolutions to include your ABR stack. * (Recommended) To optimize automated ABR, specify as few resolutions as possible. * (Required) The number of resolutions that you specify must be equal to, or less than, the Max renditions setting. * If you specify a Min top rendition size rule, specify at least one resolution that is equal to, or greater than, Min top rendition size. * If you specify a Min bottom rendition size rule, only specify resolutions that are equal to, or greater than, Min bottom rendition size. * If you specify a Force include renditions rule, do not specify a separate rule for Allowed renditions. * Note: The ABR stack may include other resolutions that you do not specify here, depending on the Max renditions setting. Use Allowed renditions to specify a list of possible resolutions in your ABR stack. * (Required) The number of resolutions that you specify must be equal to, or greater than, the Max renditions setting. * MediaConvert will create an ABR stack exclusively from the list of resolutions that you specify. * Some resolutions in the Allowed renditions list may not be included, however you can force a resolution to be included by setting Required to ENABLED. * You must specify at least one resolution that is greater than or equal to any resolutions that you specify in Min top rendition size or Min bottom rendition size. * If you specify Allowed renditions, you must not specify a separate rule for Force include renditions.
    #   @return [String]
    class AutomatedAbrRule < Struct.new(
      :allowed_renditions,
      :force_include_renditions,
      :min_bottom_rendition_size,
      :min_top_rendition_size,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use automated ABR to have MediaConvert set up the renditions in your ABR package for you automatically, based on characteristics of your input video. This feature optimizes video quality while minimizing the overall size of your ABR package.
    # @!attribute max_abr_bitrate
    #   Specify the maximum average bitrate for MediaConvert to use in your automated ABR stack. If you don't specify a value, MediaConvert uses 8,000,000 (8 mb/s) by default. The average bitrate of your highest-quality rendition will be equal to or below this value, depending on the quality, complexity, and resolution of your content. Note that the instantaneous maximum bitrate may vary above the value that you specify.
    #   @return [Integer]
    # @!attribute max_quality_level
    #   Optional. Specify the QVBR quality level to use for all renditions in your automated ABR stack. To have MediaConvert automatically determine the quality level: Leave blank. To manually specify a quality level: Enter a value from 1 to 10. MediaConvert will use a quality level up to the value that you specify, depending on your source. For more information about QVBR quality levels, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/qvbr-guidelines.html
    #   @return [Float]
    # @!attribute max_renditions
    #   Optional. The maximum number of renditions that MediaConvert will create in your automated ABR stack. The number of renditions is determined automatically, based on analysis of each job, but will never exceed this limit. When you set this to Auto in the console, which is equivalent to excluding it from your JSON job specification, MediaConvert defaults to a limit of 15.
    #   @return [Integer]
    # @!attribute min_abr_bitrate
    #   Specify the minimum average bitrate for MediaConvert to use in your automated ABR stack. If you don't specify a value, MediaConvert uses 600,000 (600 kb/s) by default. The average bitrate of your lowest-quality rendition will be near this value. Note that the instantaneous minimum bitrate may vary below the value that you specify.
    #   @return [Integer]
    # @!attribute rules
    #   Optional. Use Automated ABR rules to specify restrictions for the rendition sizes MediaConvert will create in your ABR stack. You can use these rules if your ABR workflow has specific rendition size requirements, but you still want MediaConvert to optimize for video quality and overall file size.
    #   @return [Array<Types::AutomatedAbrRule>]
    class AutomatedAbrSettings < Struct.new(
      :max_abr_bitrate,
      :max_quality_level,
      :max_renditions,
      :min_abr_bitrate,
      :rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use automated encoding to have MediaConvert choose your encoding settings for you, based on characteristics of your input video.
    # @!attribute abr_settings
    #   Use automated ABR to have MediaConvert set up the renditions in your ABR package for you automatically, based on characteristics of your input video. This feature optimizes video quality while minimizing the overall size of your ABR package.
    #   @return [Types::AutomatedAbrSettings]
    class AutomatedEncodingSettings < Struct.new(
      :abr_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to Spatial adaptive quantization.
    module Av1AdaptiveQuantization
      OFF = 'OFF'
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
      HIGHER = 'HIGHER'
      MAX = 'MAX'
    end

    # Specify the Bit depth. You can choose 8-bit or 10-bit.
    module Av1BitDepth
      BIT_8 = 'BIT_8'
      BIT_10 = 'BIT_10'
    end

    # Film grain synthesis replaces film grain present in your content with similar quality synthesized AV1 film grain. We recommend that you choose Enabled to reduce the bandwidth of your QVBR quality level 5, 6, 7, or 8 outputs. For QVBR quality level 9 or 10 outputs we recommend that you keep the default value, Disabled. When you include Film grain synthesis, you cannot include the Noise reducer preprocessor.
    module Av1FilmGrainSynthesis
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    module Av1FramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    module Av1FramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
      FRAMEFORMER = 'FRAMEFORMER'
      MAINTAIN_FRAME_COUNT = 'MAINTAIN_FRAME_COUNT'
    end

    # Settings for quality-defined variable bitrate encoding with the AV1 codec. Use these settings only when you set QVBR for Rate control mode.
    # @!attribute qvbr_quality_level
    #   Use this setting only when you set Rate control mode to QVBR. Specify the target quality level for this output. MediaConvert determines the right number of bits to use for each part of the video to maintain the video quality that you specify. When you keep the default value, AUTO, MediaConvert picks a quality level for you, based on characteristics of your input video. If you prefer to specify a quality level, specify a number from 1 through 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33.
    #   @return [Integer]
    # @!attribute qvbr_quality_level_fine_tune
    #   Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33.
    #   @return [Float]
    class Av1QvbrSettings < Struct.new(
      :qvbr_quality_level,
      :qvbr_quality_level_fine_tune,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # 'With AV1 outputs, for rate control mode, MediaConvert supports only quality-defined variable bitrate (QVBR). You can''t use CBR or VBR.'
    module Av1RateControlMode
      QVBR = 'QVBR'
    end

    # Required when you set Codec, under VideoDescription>CodecSettings to the value AV1.
    # @!attribute adaptive_quantization
    #   Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to Spatial adaptive quantization.
    #   @return [String]
    # @!attribute bit_depth
    #   Specify the Bit depth. You can choose 8-bit or 10-bit.
    #   @return [String]
    # @!attribute film_grain_synthesis
    #   Film grain synthesis replaces film grain present in your content with similar quality synthesized AV1 film grain. We recommend that you choose Enabled to reduce the bandwidth of your QVBR quality level 5, 6, 7, or 8 outputs. For QVBR quality level 9 or 10 outputs we recommend that you keep the default value, Disabled. When you include Film grain synthesis, you cannot include the Noise reducer preprocessor.
    #   @return [String]
    # @!attribute framerate_control
    #   Use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute gop_size
    #   Specify the GOP length (keyframe interval) in frames. With AV1, MediaConvert doesn't support GOP length in seconds. This value must be greater than zero and preferably equal to 1 + ((numberBFrames + 1) * x), where x is an integer value.
    #   @return [Float]
    # @!attribute max_bitrate
    #   Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
    #   @return [Integer]
    # @!attribute number_b_frames_between_reference_frames
    #   Specify from the number of B-frames, in the range of 0-15. For AV1 encoding, we recommend using 7 or 15. Choose a larger number for a lower bitrate and smaller file size; choose a smaller number for better video quality.
    #   @return [Integer]
    # @!attribute per_frame_metrics
    #   Optionally choose one or more per frame metric reports to generate along with your output. You can use these metrics to analyze your video output according to one or more commonly used image quality metrics. You can specify per frame metrics for output groups or for individual outputs. When you do, MediaConvert writes a CSV (Comma-Separated Values) file to your S3 output destination, named after the output name and metric type. For example: videofile_PSNR.csv Jobs that generate per frame metrics will take longer to complete, depending on the resolution and complexity of your output. For example, some 4K jobs might take up to twice as long to complete. Note that when analyzing the video quality of your output, or when comparing the video quality of multiple different outputs, we generally also recommend a detailed visual review in a controlled environment. You can choose from the following per frame metrics: * PSNR: Peak Signal-to-Noise Ratio * SSIM: Structural Similarity Index Measure * MS_SSIM: Multi-Scale Similarity Index Measure * PSNR_HVS: Peak Signal-to-Noise Ratio, Human Visual System * VMAF: Video Multi-Method Assessment Fusion * QVBR: Quality-Defined Variable Bitrate. This option is only available when your output uses the QVBR rate control mode.
    #   @return [Array<String>]
    # @!attribute qvbr_settings
    #   Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode.
    #   @return [Types::Av1QvbrSettings]
    # @!attribute rate_control_mode
    #   'With AV1 outputs, for rate control mode, MediaConvert supports only quality-defined variable bitrate (QVBR). You can''t use CBR or VBR.'
    #   @return [String]
    # @!attribute slices
    #   Specify the number of slices per picture. This value must be 1, 2, 4, 8, 16, or 32. For progressive pictures, this value must be less than or equal to the number of macroblock rows. For interlaced pictures, this value must be less than or equal to half the number of macroblock rows.
    #   @return [Integer]
    # @!attribute spatial_adaptive_quantization
    #   Keep the default value, Enabled, to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    #   @return [String]
    class Av1Settings < Struct.new(
      :adaptive_quantization,
      :bit_depth,
      :film_grain_synthesis,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_size,
      :max_bitrate,
      :number_b_frames_between_reference_frames,
      :per_frame_metrics,
      :qvbr_settings,
      :rate_control_mode,
      :slices,
      :spatial_adaptive_quantization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Keep the default value, Enabled, to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    module Av1SpatialAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Use ad avail blanking settings to specify your output content during SCTE-35 triggered ad avails. You can blank your video or overlay it with an image. MediaConvert also removes any audio and embedded captions during the ad avail. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ad-avail-blanking.html.
    # @!attribute avail_blanking_image
    #   Blanking image to be used. Leave empty for solid black. Only bmp and png images are supported.
    #   @return [String]
    class AvailBlanking < Struct.new(
      :avail_blanking_image,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the AVC-Intra class of your output. The AVC-Intra class selection determines the output video bit rate depending on the frame rate of the output. Outputs with higher class values have higher bitrates and improved image quality. Note that for Class 4K/2K, MediaConvert supports only 4:2:2 chroma subsampling.
    module AvcIntraClass
      CLASS_50 = 'CLASS_50'
      CLASS_100 = 'CLASS_100'
      CLASS_200 = 'CLASS_200'
      CLASS_4K_2K = 'CLASS_4K_2K'
    end

    # If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    module AvcIntraFramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    module AvcIntraFramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
      FRAMEFORMER = 'FRAMEFORMER'
      MAINTAIN_FRAME_COUNT = 'MAINTAIN_FRAME_COUNT'
    end

    # Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    module AvcIntraInterlaceMode
      PROGRESSIVE = 'PROGRESSIVE'
      TOP_FIELD = 'TOP_FIELD'
      BOTTOM_FIELD = 'BOTTOM_FIELD'
      FOLLOW_TOP_FIELD = 'FOLLOW_TOP_FIELD'
      FOLLOW_BOTTOM_FIELD = 'FOLLOW_BOTTOM_FIELD'
    end

    # Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    module AvcIntraScanTypeConversionMode
      INTERLACED = 'INTERLACED'
      INTERLACED_OPTIMIZE = 'INTERLACED_OPTIMIZE'
    end

    # Required when you choose AVC-Intra for your output video codec. For more information about the AVC-Intra settings, see the relevant specification. For detailed information about SD and HD in AVC-Intra, see https://ieeexplore.ieee.org/document/7290936. For information about 4K/2K in AVC-Intra, see https://pro-av.panasonic.net/en/avc-ultra/AVC-ULTRAoverview.pdf.
    # @!attribute avc_intra_class
    #   Specify the AVC-Intra class of your output. The AVC-Intra class selection determines the output video bit rate depending on the frame rate of the output. Outputs with higher class values have higher bitrates and improved image quality. Note that for Class 4K/2K, MediaConvert supports only 4:2:2 chroma subsampling.
    #   @return [String]
    # @!attribute avc_intra_uhd_settings
    #   Optional when you set AVC-Intra class to Class 4K/2K. When you set AVC-Intra class to a different value, this object isn't allowed.
    #   @return [Types::AvcIntraUhdSettings]
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #   @return [String]
    # @!attribute per_frame_metrics
    #   Optionally choose one or more per frame metric reports to generate along with your output. You can use these metrics to analyze your video output according to one or more commonly used image quality metrics. You can specify per frame metrics for output groups or for individual outputs. When you do, MediaConvert writes a CSV (Comma-Separated Values) file to your S3 output destination, named after the output name and metric type. For example: videofile_PSNR.csv Jobs that generate per frame metrics will take longer to complete, depending on the resolution and complexity of your output. For example, some 4K jobs might take up to twice as long to complete. Note that when analyzing the video quality of your output, or when comparing the video quality of multiple different outputs, we generally also recommend a detailed visual review in a controlled environment. You can choose from the following per frame metrics: * PSNR: Peak Signal-to-Noise Ratio * SSIM: Structural Similarity Index Measure * MS_SSIM: Multi-Scale Similarity Index Measure * PSNR_HVS: Peak Signal-to-Noise Ratio, Human Visual System * VMAF: Video Multi-Method Assessment Fusion * QVBR: Quality-Defined Variable Bitrate. This option is only available when your output uses the QVBR rate control mode.
    #   @return [Array<String>]
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    #   @return [String]
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25.
    #   @return [String]
    # @!attribute telecine
    #   When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine to create a smoother picture. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    #   @return [String]
    class AvcIntraSettings < Struct.new(
      :avc_intra_class,
      :avc_intra_uhd_settings,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :interlace_mode,
      :per_frame_metrics,
      :scan_type_conversion_mode,
      :slow_pal,
      :telecine,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25.
    module AvcIntraSlowPal
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine to create a smoother picture. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    module AvcIntraTelecine
      NONE = 'NONE'
      HARD = 'HARD'
    end

    # Optional. Use Quality tuning level to choose how many transcoding passes MediaConvert does with your video. When you choose Multi-pass, your video quality is better and your output bitrate is more accurate. That is, the actual bitrate of your output is closer to the target bitrate defined in the specification. When you choose Single-pass, your encoding time is faster. The default behavior is Single-pass.
    module AvcIntraUhdQualityTuningLevel
      SINGLE_PASS = 'SINGLE_PASS'
      MULTI_PASS = 'MULTI_PASS'
    end

    # Optional when you set AVC-Intra class to Class 4K/2K. When you set AVC-Intra class to a different value, this object isn't allowed.
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level to choose how many transcoding passes MediaConvert does with your video. When you choose Multi-pass, your video quality is better and your output bitrate is more accurate. That is, the actual bitrate of your output is closer to the target bitrate defined in the specification. When you choose Single-pass, your encoding time is faster. The default behavior is Single-pass.
    #   @return [String]
    class AvcIntraUhdSettings < Struct.new(
      :quality_tuning_level,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The service can't process your request because of a problem in the request. Please check your request form and syntax.
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The Bandwidth reduction filter increases the video quality of your output relative to its bitrate. Use to lower the bitrate of your constant quality QVBR output, with little or no perceptual decrease in quality. Or, use to increase the video quality of outputs with other rate control modes relative to the bitrate that you specify. Bandwidth reduction increases further when your input is low quality or noisy. Outputs that use this feature incur pro-tier pricing. When you include Bandwidth reduction filter, you cannot include the Noise reducer preprocessor.
    # @!attribute sharpening
    #   Optionally specify the level of sharpening to apply when you use the Bandwidth reduction filter. Sharpening adds contrast to the edges of your video content and can reduce softness. Keep the default value Off to apply no sharpening. Set Sharpening strength to Low to apply a minimal amount of sharpening, or High to apply a maximum amount of sharpening.
    #   @return [String]
    # @!attribute strength
    #   Specify the strength of the Bandwidth reduction filter. For most workflows, we recommend that you choose Auto to reduce the bandwidth of your output with little to no perceptual decrease in video quality. For high quality and high bitrate outputs, choose Low. For the most bandwidth reduction, choose High. We recommend that you choose High for low bitrate outputs. Note that High may incur a slight increase in the softness of your output.
    #   @return [String]
    class BandwidthReductionFilter < Struct.new(
      :sharpening,
      :strength,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Optionally specify the level of sharpening to apply when you use the Bandwidth reduction filter. Sharpening adds contrast to the edges of your video content and can reduce softness. Keep the default value Off to apply no sharpening. Set Sharpening strength to Low to apply a minimal amount of sharpening, or High to apply a maximum amount of sharpening.
    module BandwidthReductionFilterSharpening
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
      OFF = 'OFF'
    end

    # Specify the strength of the Bandwidth reduction filter. For most workflows, we recommend that you choose Auto to reduce the bandwidth of your output with little to no perceptual decrease in video quality. For high quality and high bitrate outputs, choose Low. For the most bandwidth reduction, choose High. We recommend that you choose High for low bitrate outputs. Note that High may incur a slight increase in the softness of your output.
    module BandwidthReductionFilterStrength
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
      AUTO = 'AUTO'
      OFF = 'OFF'
    end

    # The tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up.
    module BillingTagsSource
      QUEUE = 'QUEUE'
      PRESET = 'PRESET'
      JOB_TEMPLATE = 'JOB_TEMPLATE'
      JOB = 'JOB'
    end

    # To use the available style, color, and position information from your input captions: Set Style passthrough to Enabled. Note that MediaConvert uses default settings for any missing style or position information in your input captions To ignore the style and position information from your input captions and use default settings: Leave blank or keep the default value, Disabled. Default settings include white text with black outlining, bottom-center positioning, and automatic sizing. Whether you set Style passthrough to enabled or not, you can also choose to manually override any of the individual style and position settings. You can also override any fonts by manually specifying custom font files.
    module BurnInSubtitleStylePassthrough
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Burn-in is a captions delivery method, rather than a captions format. Burn-in writes the captions directly on your video frames, replacing pixels of video content with the captions. Set up burn-in captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/burn-in-output-captions.html.
    # @!attribute alignment
    #   Specify the alignment of your captions. If no explicit x_position is provided, setting alignment to centered will placethe captions at the bottom center of the output. Similarly, setting a left alignment willalign captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates.
    #   @return [String]
    # @!attribute apply_font_color
    #   Ignore this setting unless Style passthrough is set to Enabled and Font color set to Black, Yellow, Red, Green, Blue, or Hex. Use Apply font color for additional font color controls. When you choose White text only, or leave blank, your font color setting only applies to white text in your input captions. For example, if your font color setting is Yellow, and your input captions have red and white text, your output captions will have red and yellow text. When you choose ALL_TEXT, your font color setting applies to all of your output captions text.
    #   @return [String]
    # @!attribute background_color
    #   Specify the color of the rectangle behind the captions. Leave background color blank and set Style passthrough to enabled to use the background color data from your input captions, if present.
    #   @return [String]
    # @!attribute background_opacity
    #   Specify the opacity of the background rectangle. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough is set to enabled, leave blank to pass through the background style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all backgrounds from your output captions.
    #   @return [Integer]
    # @!attribute fallback_font
    #   Specify the font that you want the service to use for your burn in captions when your input captions specify a font that MediaConvert doesn't support. When you set Fallback font to best match, or leave blank, MediaConvert uses a supported font that most closely matches the font that your input captions specify. When there are multiple unsupported fonts in your input captions, MediaConvert matches each font with the supported font that matches best. When you explicitly choose a replacement font, MediaConvert uses that font to replace all unsupported fonts from your input.
    #   @return [String]
    # @!attribute font_color
    #   Specify the color of the burned-in captions text. Leave Font color blank and set Style passthrough to enabled to use the font color data from your input captions, if present.
    #   @return [String]
    # @!attribute font_file_bold
    #   Specify a bold TrueType font file to use when rendering your output captions. Enter an S3, HTTP, or HTTPS URL. When you do, you must also separately specify a regular, an italic, and a bold italic font file.
    #   @return [String]
    # @!attribute font_file_bold_italic
    #   Specify a bold italic TrueType font file to use when rendering your output captions.
    #   Enter an S3, HTTP, or HTTPS URL.
    #   When you do, you must also separately specify a regular, a bold, and an italic font file.
    #   @return [String]
    # @!attribute font_file_italic
    #   Specify an italic TrueType font file to use when rendering your output captions. Enter an S3, HTTP, or HTTPS URL. When you do, you must also separately specify a regular, a bold, and a bold italic font file.
    #   @return [String]
    # @!attribute font_file_regular
    #   Specify a regular TrueType font file to use when rendering your output captions. Enter an S3, HTTP, or HTTPS URL. When you do, you must also separately specify a bold, an italic, and a bold italic font file.
    #   @return [String]
    # @!attribute font_opacity
    #   Specify the opacity of the burned-in captions. 255 is opaque; 0 is transparent.
    #   @return [Integer]
    # @!attribute font_resolution
    #   Specify the Font resolution in DPI (dots per inch).
    #   @return [Integer]
    # @!attribute font_script
    #   Set Font script to Automatically determined, or leave blank, to automatically determine the font script in your input captions. Otherwise, set to Simplified Chinese (HANS) or Traditional Chinese (HANT) if your input font script uses Simplified or Traditional Chinese.
    #   @return [String]
    # @!attribute font_size
    #   Specify the Font size in pixels. Must be a positive integer. Set to 0, or leave blank, for automatic font size.
    #   @return [Integer]
    # @!attribute hex_font_color
    #   Ignore this setting unless your Font color is set to Hex. Enter either six or eight hexidecimal digits, representing red, green, and blue, with two optional extra digits for alpha. For example a value of 1122AABB is a red value of 0x11, a green value of 0x22, a blue value of 0xAA, and an alpha value of 0xBB.
    #   @return [String]
    # @!attribute outline_color
    #   Specify font outline color. Leave Outline color blank and set Style passthrough to enabled to use the font outline color data from your input captions, if present.
    #   @return [String]
    # @!attribute outline_size
    #   Specify the Outline size of the caption text, in pixels. Leave Outline size blank and set Style passthrough to enabled to use the outline size data from your input captions, if present.
    #   @return [Integer]
    # @!attribute remove_ruby_reserve_attributes
    #   Optionally remove any tts:rubyReserve attributes present in your input, that do   not have a tts:ruby attribute in the same element, from your output. Use if your vertical Japanese output captions have alignment issues. To remove ruby reserve attributes when present: Choose Enabled. To not remove any ruby reserve attributes: Keep the default value, Disabled.
    #   @return [String]
    # @!attribute shadow_color
    #   Specify the color of the shadow cast by the captions. Leave Shadow color blank and set Style passthrough to enabled to use the shadow color data from your input captions, if present.
    #   @return [String]
    # @!attribute shadow_opacity
    #   Specify the opacity of the shadow. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough is set to Enabled, leave Shadow opacity blank to pass through the shadow style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all shadows from your output captions.
    #   @return [Integer]
    # @!attribute shadow_x_offset
    #   Specify the horizontal offset of the shadow, relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.
    #   @return [Integer]
    # @!attribute shadow_y_offset
    #   Specify the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. Leave Shadow y-offset blank and set Style passthrough to enabled to use the shadow y-offset data from your input captions, if present.
    #   @return [Integer]
    # @!attribute style_passthrough
    #   To use the available style, color, and position information from your input captions: Set Style passthrough to Enabled. Note that MediaConvert uses default settings for any missing style or position information in your input captions To ignore the style and position information from your input captions and use default settings: Leave blank or keep the default value, Disabled. Default settings include white text with black outlining, bottom-center positioning, and automatic sizing. Whether you set Style passthrough to enabled or not, you can also choose to manually override any of the individual style and position settings. You can also override any fonts by manually specifying custom font files.
    #   @return [String]
    # @!attribute teletext_spacing
    #   Specify whether the text spacing in your captions is set by the captions grid, or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read for closed captions.
    #   @return [String]
    # @!attribute x_position
    #   Specify the horizontal position of the captions, relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter.
    #   @return [Integer]
    # @!attribute y_position
    #   Specify the vertical position of the captions, relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output.
    #   @return [Integer]
    class BurninDestinationSettings < Struct.new(
      :alignment,
      :apply_font_color,
      :background_color,
      :background_opacity,
      :fallback_font,
      :font_color,
      :font_file_bold,
      :font_file_bold_italic,
      :font_file_italic,
      :font_file_regular,
      :font_opacity,
      :font_resolution,
      :font_script,
      :font_size,
      :hex_font_color,
      :outline_color,
      :outline_size,
      :remove_ruby_reserve_attributes,
      :shadow_color,
      :shadow_opacity,
      :shadow_x_offset,
      :shadow_y_offset,
      :style_passthrough,
      :teletext_spacing,
      :x_position,
      :y_position,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the alignment of your captions. If no explicit x_position is provided, setting alignment to centered will placethe captions at the bottom center of the output. Similarly, setting a left alignment willalign captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates.
    module BurninSubtitleAlignment
      CENTERED = 'CENTERED'
      LEFT = 'LEFT'
      AUTO = 'AUTO'
    end

    # Ignore this setting unless Style passthrough is set to Enabled and Font color set to Black, Yellow, Red, Green, Blue, or Hex. Use Apply font color for additional font color controls. When you choose White text only, or leave blank, your font color setting only applies to white text in your input captions. For example, if your font color setting is Yellow, and your input captions have red and white text, your output captions will have red and yellow text. When you choose ALL_TEXT, your font color setting applies to all of your output captions text.
    module BurninSubtitleApplyFontColor
      WHITE_TEXT_ONLY = 'WHITE_TEXT_ONLY'
      ALL_TEXT = 'ALL_TEXT'
    end

    # Specify the color of the rectangle behind the captions. Leave background color blank and set Style passthrough to enabled to use the background color data from your input captions, if present.
    module BurninSubtitleBackgroundColor
      NONE = 'NONE'
      BLACK = 'BLACK'
      WHITE = 'WHITE'
      AUTO = 'AUTO'
    end

    # Specify the font that you want the service to use for your burn in captions when your input captions specify a font that MediaConvert doesn't support. When you set Fallback font to best match, or leave blank, MediaConvert uses a supported font that most closely matches the font that your input captions specify. When there are multiple unsupported fonts in your input captions, MediaConvert matches each font with the supported font that matches best. When you explicitly choose a replacement font, MediaConvert uses that font to replace all unsupported fonts from your input.
    module BurninSubtitleFallbackFont
      BEST_MATCH = 'BEST_MATCH'
      MONOSPACED_SANSSERIF = 'MONOSPACED_SANSSERIF'
      MONOSPACED_SERIF = 'MONOSPACED_SERIF'
      PROPORTIONAL_SANSSERIF = 'PROPORTIONAL_SANSSERIF'
      PROPORTIONAL_SERIF = 'PROPORTIONAL_SERIF'
    end

    # Specify the color of the burned-in captions text. Leave Font color blank and set Style passthrough to enabled to use the font color data from your input captions, if present.
    module BurninSubtitleFontColor
      WHITE = 'WHITE'
      BLACK = 'BLACK'
      YELLOW = 'YELLOW'
      RED = 'RED'
      GREEN = 'GREEN'
      BLUE = 'BLUE'
      HEX = 'HEX'
      AUTO = 'AUTO'
    end

    # Specify font outline color. Leave Outline color blank and set Style passthrough to enabled to use the font outline color data from your input captions, if present.
    module BurninSubtitleOutlineColor
      BLACK = 'BLACK'
      WHITE = 'WHITE'
      YELLOW = 'YELLOW'
      RED = 'RED'
      GREEN = 'GREEN'
      BLUE = 'BLUE'
      AUTO = 'AUTO'
    end

    # Specify the color of the shadow cast by the captions. Leave Shadow color blank and set Style passthrough to enabled to use the shadow color data from your input captions, if present.
    module BurninSubtitleShadowColor
      NONE = 'NONE'
      BLACK = 'BLACK'
      WHITE = 'WHITE'
      AUTO = 'AUTO'
    end

    # Specify whether the text spacing in your captions is set by the captions grid, or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read for closed captions.
    module BurninSubtitleTeletextSpacing
      FIXED_GRID = 'FIXED_GRID'
      PROPORTIONAL = 'PROPORTIONAL'
      AUTO = 'AUTO'
    end

    # @!attribute id
    #   The Job ID of the job to be cancelled.
    #   @return [String]
    class CancelJobRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CancelJobResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # This object holds groups of settings related to captions for one output. For each output that has captions, include one instance of CaptionDescriptions.
    # @!attribute caption_selector_name
    #   Specifies which "Caption Selector":#inputs-caption_selector to use from each input when generating captions. The name should be of the format "Caption Selector <N>", which denotes that the Nth Caption Selector will be used from each input.
    #   @return [String]
    # @!attribute custom_language_code
    #   Specify the language for this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information when automatically selecting the font script for rendering the captions text. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming.
    #   @return [String]
    # @!attribute destination_settings
    #   Settings related to one captions tab on the MediaConvert console. Usually, one captions tab corresponds to one output captions track. Depending on your output captions format, one tab might correspond to a set of output captions tracks. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/including-captions.html.
    #   @return [Types::CaptionDestinationSettings]
    # @!attribute language_code
    #   Specify the language of this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information to choose the font language for rendering the captions text.
    #   @return [String]
    # @!attribute language_description
    #   Specify a label for this set of output captions. For example, "English", "Director commentary", or "track_2". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting.
    #   @return [String]
    class CaptionDescription < Struct.new(
      :caption_selector_name,
      :custom_language_code,
      :destination_settings,
      :language_code,
      :language_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Caption Description for preset
    # @!attribute custom_language_code
    #   Specify the language for this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information when automatically selecting the font script for rendering the captions text. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming.
    #   @return [String]
    # @!attribute destination_settings
    #   Settings related to one captions tab on the MediaConvert console. Usually, one captions tab corresponds to one output captions track. Depending on your output captions format, one tab might correspond to a set of output captions tracks. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/including-captions.html.
    #   @return [Types::CaptionDestinationSettings]
    # @!attribute language_code
    #   Specify the language of this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information to choose the font language for rendering the captions text.
    #   @return [String]
    # @!attribute language_description
    #   Specify a label for this set of output captions. For example, "English", "Director commentary", or "track_2". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting.
    #   @return [String]
    class CaptionDescriptionPreset < Struct.new(
      :custom_language_code,
      :destination_settings,
      :language_code,
      :language_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings related to one captions tab on the MediaConvert console. Usually, one captions tab corresponds to one output captions track. Depending on your output captions format, one tab might correspond to a set of output captions tracks. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/including-captions.html.
    # @!attribute burnin_destination_settings
    #   Burn-in is a captions delivery method, rather than a captions format. Burn-in writes the captions directly on your video frames, replacing pixels of video content with the captions. Set up burn-in captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/burn-in-output-captions.html.
    #   @return [Types::BurninDestinationSettings]
    # @!attribute destination_type
    #   Specify the format for this set of captions on this output. The default format is embedded without SCTE-20. Note that your choice of video output container constrains your choice of output captions format. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/captions-support-tables.html. If you are using SCTE-20 and you want to create an output that complies with the SCTE-43 spec, choose SCTE-20 plus embedded. To create a non-compliant output where the embedded captions come first, choose Embedded plus SCTE-20.
    #   @return [String]
    # @!attribute dvb_sub_destination_settings
    #   Settings related to DVB-Sub captions. Set up DVB-Sub captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/dvb-sub-output-captions.html.
    #   @return [Types::DvbSubDestinationSettings]
    # @!attribute embedded_destination_settings
    #   Settings related to CEA/EIA-608 and CEA/EIA-708 (also called embedded or ancillary) captions. Set up embedded captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/embedded-output-captions.html.
    #   @return [Types::EmbeddedDestinationSettings]
    # @!attribute imsc_destination_settings
    #   Settings related to IMSC captions. IMSC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html.
    #   @return [Types::ImscDestinationSettings]
    # @!attribute scc_destination_settings
    #   Settings related to SCC captions. SCC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/scc-srt-output-captions.html.
    #   @return [Types::SccDestinationSettings]
    # @!attribute srt_destination_settings
    #   Settings related to SRT captions. SRT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video.
    #   @return [Types::SrtDestinationSettings]
    # @!attribute teletext_destination_settings
    #   Settings related to teletext captions. Set up teletext captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/teletext-output-captions.html.
    #   @return [Types::TeletextDestinationSettings]
    # @!attribute ttml_destination_settings
    #   Settings related to TTML captions. TTML is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html.
    #   @return [Types::TtmlDestinationSettings]
    # @!attribute webvtt_destination_settings
    #   Settings related to WebVTT captions. WebVTT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html.
    #   @return [Types::WebvttDestinationSettings]
    class CaptionDestinationSettings < Struct.new(
      :burnin_destination_settings,
      :destination_type,
      :dvb_sub_destination_settings,
      :embedded_destination_settings,
      :imsc_destination_settings,
      :scc_destination_settings,
      :srt_destination_settings,
      :teletext_destination_settings,
      :ttml_destination_settings,
      :webvtt_destination_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the format for this set of captions on this output. The default format is embedded without SCTE-20. Note that your choice of video output container constrains your choice of output captions format. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/captions-support-tables.html. If you are using SCTE-20 and you want to create an output that complies with the SCTE-43 spec, choose SCTE-20 plus embedded. To create a non-compliant output where the embedded captions come first, choose Embedded plus SCTE-20.
    module CaptionDestinationType
      BURN_IN = 'BURN_IN'
      DVB_SUB = 'DVB_SUB'
      EMBEDDED = 'EMBEDDED'
      EMBEDDED_PLUS_SCTE20 = 'EMBEDDED_PLUS_SCTE20'
      IMSC = 'IMSC'
      SCTE20_PLUS_EMBEDDED = 'SCTE20_PLUS_EMBEDDED'
      SCC = 'SCC'
      SRT = 'SRT'
      SMI = 'SMI'
      TELETEXT = 'TELETEXT'
      TTML = 'TTML'
      WEBVTT = 'WEBVTT'
    end

    # Use captions selectors to specify the captions data from your input that you use in your outputs. You can use up to 100 captions selectors per input.
    # @!attribute custom_language_code
    #   The specific language to extract from source, using the ISO 639-2 or ISO 639-3 three-letter language code. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions.
    #   @return [String]
    # @!attribute language_code
    #   The specific language to extract from source. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions.
    #   @return [String]
    # @!attribute source_settings
    #   If your input captions are SCC, TTML, STL, SMI, SRT, or IMSC in an xml file, specify the URI of the input captions source file. If your input captions are IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings.
    #   @return [Types::CaptionSourceSettings]
    class CaptionSelector < Struct.new(
      :custom_language_code,
      :language_code,
      :source_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Choose whether to limit the byte rate at which your SCC input captions are inserted into your output. To not limit the caption rate: We recommend that you keep the default value, Disabled. MediaConvert inserts captions in your output according to the byte rates listed in the EIA-608 specification, typically 2 or 3 caption bytes per frame depending on your output frame rate. To limit your output caption rate: Choose Enabled. Choose this option if your downstream systems require a maximum of 2 caption bytes per frame. Note that this setting has no effect when your output frame rate is 30 or 60.
    module CaptionSourceByteRateLimit
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Choose the presentation style of your input SCC captions. To use the same presentation style as your input: Keep the default value, Disabled. To convert paint-on captions to pop-on: Choose Enabled. We also recommend that you choose Enabled if you notice additional repeated lines in your output captions.
    module CaptionSourceConvertPaintOnToPopOn
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Ignore this setting unless your input captions format is SCC. To have the service compensate for differing frame rates between your input captions and input video, specify the frame rate of the captions file. Specify this value as a fraction. For example, you might specify 24 / 1 for 24 fps, 25 / 1 for 25 fps, 24000 / 1001 for 23.976 fps, or 30000 / 1001 for 29.97 fps.
    # @!attribute framerate_denominator
    #   Specify the denominator of the fraction that represents the frame rate for the setting Caption source frame rate. Use this setting along with the setting Framerate numerator.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   Specify the numerator of the fraction that represents the frame rate for the setting Caption source frame rate. Use this setting along with the setting Framerate denominator.
    #   @return [Integer]
    class CaptionSourceFramerate < Struct.new(
      :framerate_denominator,
      :framerate_numerator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # If your input captions are SCC, TTML, STL, SMI, SRT, or IMSC in an xml file, specify the URI of the input captions source file. If your input captions are IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings.
    # @!attribute ancillary_source_settings
    #   Settings for ancillary captions source.
    #   @return [Types::AncillarySourceSettings]
    # @!attribute dvb_sub_source_settings
    #   DVB Sub Source Settings
    #   @return [Types::DvbSubSourceSettings]
    # @!attribute embedded_source_settings
    #   Settings for embedded captions Source
    #   @return [Types::EmbeddedSourceSettings]
    # @!attribute file_source_settings
    #   If your input captions are SCC, SMI, SRT, STL, TTML, WebVTT, or IMSC 1.1 in an xml file, specify the URI of the input caption source file. If your caption source is IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings.
    #   @return [Types::FileSourceSettings]
    # @!attribute source_type
    #   Use Source to identify the format of your input captions. The service cannot auto-detect caption format.
    #   @return [String]
    # @!attribute teletext_source_settings
    #   Settings specific to Teletext caption sources, including Page number.
    #   @return [Types::TeletextSourceSettings]
    # @!attribute track_source_settings
    #   Settings specific to caption sources that are specified by track number. Currently, this is only IMSC captions in an IMF package. If your caption source is IMSC 1.1 in a separate xml file, use FileSourceSettings instead of TrackSourceSettings.
    #   @return [Types::TrackSourceSettings]
    # @!attribute webvtt_hls_source_settings
    #   Settings specific to WebVTT sources in HLS alternative rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique subtitle track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the specified properties, the job fails. If there is only one subtitle track in the rendition group, the settings can be left empty and the default subtitle track will be chosen. If your caption source is a sidecar file, use FileSourceSettings instead of WebvttHlsSourceSettings.
    #   @return [Types::WebvttHlsSourceSettings]
    class CaptionSourceSettings < Struct.new(
      :ancillary_source_settings,
      :dvb_sub_source_settings,
      :embedded_source_settings,
      :file_source_settings,
      :source_type,
      :teletext_source_settings,
      :track_source_settings,
      :webvtt_hls_source_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Source to identify the format of your input captions. The service cannot auto-detect caption format.
    module CaptionSourceType
      ANCILLARY = 'ANCILLARY'
      DVB_SUB = 'DVB_SUB'
      EMBEDDED = 'EMBEDDED'
      SCTE20 = 'SCTE20'
      SCC = 'SCC'
      TTML = 'TTML'
      STL = 'STL'
      SRT = 'SRT'
      SMI = 'SMI'
      SMPTE_TT = 'SMPTE_TT'
      TELETEXT = 'TELETEXT'
      NULL_SOURCE = 'NULL_SOURCE'
      IMSC = 'IMSC'
      WEBVTT = 'WEBVTT'
    end

    # Specify whether this set of input captions appears in your outputs in both STL and Teletext format. If you choose Upconvert, MediaConvert includes the captions data in two ways: it passes the STL data through using the Teletext compatibility bytes fields of the Teletext wrapper, and it also translates the STL data into Teletext.
    module CaptionSourceUpconvertSTLToTeletext
      UPCONVERT = 'UPCONVERT'
      DISABLED = 'DISABLED'
    end

    # Channel mapping contains the group of fields that hold the remixing value for each channel, in dB. Specify remix values to indicate how much of the content from your input audio channel you want in your output audio channels. Each instance of the InputChannels or InputChannelsFineTune array specifies these values for one output channel. Use one instance of this array for each output channel. In the console, each array corresponds to a column in the graphical depiction of the mapping matrix. The rows of the graphical matrix correspond to input channels. Valid values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification). Use InputChannels or InputChannelsFineTune to specify your remix values. Don't use both.
    # @!attribute output_channels
    #   In your JSON job specification, include one child of OutputChannels for each audio channel that you want in your output. Each child should contain one instance of InputChannels or InputChannelsFineTune.
    #   @return [Array<Types::OutputChannelMapping>]
    class ChannelMapping < Struct.new(
      :output_channels,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the chroma sample positioning metadata for your H.264 or H.265 output. To have MediaConvert automatically determine chroma positioning: We recommend that you keep the default value, Auto. To specify center positioning: Choose Force center. To specify top left positioning: Choose Force top left.
    module ChromaPositionMode
      AUTO = 'AUTO'
      FORCE_CENTER = 'FORCE_CENTER'
      FORCE_TOP_LEFT = 'FORCE_TOP_LEFT'
    end

    # Specify YUV limits and RGB tolerances when you set Sample range conversion to Limited range clip.
    # @!attribute maximum_rgb_tolerance
    #   Specify the Maximum RGB color sample range tolerance for your output. MediaConvert corrects any YUV values that, when converted to RGB, would be outside the upper tolerance that you specify. Enter an integer from 90 to 105 as an offset percentage to the maximum possible value. Leave blank to use the default value 100. When you specify a value for Maximum RGB tolerance, you must set Sample range conversion to Limited range clip.
    #   @return [Integer]
    # @!attribute maximum_yuv
    #   Specify the Maximum YUV color sample limit. MediaConvert conforms any pixels in your input above the value that you specify to typical limited range bounds. Enter an integer from 920 to 1023. Leave blank to use the default value 940. The value that you enter applies to 10-bit ranges. For 8-bit ranges, MediaConvert automatically scales this value down. When you specify a value for Maximum YUV, you must set Sample range conversion to Limited range clip.
    #   @return [Integer]
    # @!attribute minimum_rgb_tolerance
    #   Specify the Minimum RGB color sample range tolerance for your output. MediaConvert corrects any YUV values that, when converted to RGB, would be outside the lower tolerance that you specify. Enter an integer from -5 to 10 as an offset percentage to the minimum possible value. Leave blank to use the default value 0. When you specify a value for Minimum RGB tolerance, you must set Sample range conversion to Limited range clip.
    #   @return [Integer]
    # @!attribute minimum_yuv
    #   Specify the Minimum YUV color sample limit. MediaConvert conforms any pixels in your input below the value that you specify to typical limited range bounds. Enter an integer from 0 to 128. Leave blank to use the default value 64. The value that you enter applies to 10-bit ranges. For 8-bit ranges, MediaConvert automatically scales this value down. When you specify a value for Minumum YUV, you must set Sample range conversion to Limited range clip.
    #   @return [Integer]
    class ClipLimits < Struct.new(
      :maximum_rgb_tolerance,
      :maximum_yuv,
      :minimum_rgb_tolerance,
      :minimum_yuv,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the details for each pair of HLS and DASH additional manifests that you want the service to generate for this CMAF output group. Each pair of manifests can reference a different subset of outputs in the group.
    # @!attribute manifest_name_modifier
    #   Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your HLS group is film-name.m3u8. If you enter "-no-premium" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.m3u8. For HLS output groups, specify a manifestNameModifier that is different from the nameModifier of the output. The service uses the output name modifier to create unique names for the individual variant manifests.
    #   @return [String]
    # @!attribute selected_outputs
    #   Specify the outputs that you want this additional top-level manifest to reference.
    #   @return [Array<String>]
    class CmafAdditionalManifest < Struct.new(
      :manifest_name_modifier,
      :selected_outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Disable this setting only when your workflow requires the #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled and control caching in your video distribution set up. For example, use the Cache-Control http header.
    module CmafClientCache
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
    module CmafCodecSpecification
      RFC_6381 = 'RFC_6381'
      RFC_4281 = 'RFC_4281'
    end

    # Settings for CMAF encryption
    # @!attribute constant_initialization_vector
    #   This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default.
    #   @return [String]
    # @!attribute encryption_method
    #   Specify the encryption scheme that you want the service to use when encrypting your CMAF segments. Choose AES-CBC subsample or AES_CTR.
    #   @return [String]
    # @!attribute initialization_vector_in_manifest
    #   When you use DRM with CMAF outputs, choose whether the service writes the 128-bit encryption initialization vector in the HLS and DASH manifests.
    #   @return [String]
    # @!attribute speke_key_provider
    #   If your output group type is CMAF, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is HLS, DASH, or Microsoft Smooth, use the SpekeKeyProvider settings instead.
    #   @return [Types::SpekeKeyProviderCmaf]
    # @!attribute static_key_provider
    #   Use these settings to set up encryption with a static key provider.
    #   @return [Types::StaticKeyProvider]
    # @!attribute type
    #   Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html.
    #   @return [String]
    class CmafEncryptionSettings < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :initialization_vector_in_manifest,
      :speke_key_provider,
      :static_key_provider,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the encryption scheme that you want the service to use when encrypting your CMAF segments. Choose AES-CBC subsample or AES_CTR.
    module CmafEncryptionType
      SAMPLE_AES = 'SAMPLE_AES'
      AES_CTR = 'AES_CTR'
    end

    # Settings related to your CMAF output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html.
    # @!attribute additional_manifests
    #   By default, the service creates one top-level .m3u8 HLS manifest and one top -level .mpd DASH manifest for each CMAF output group in your job. These default manifests reference every output in the output group. To create additional top-level manifests that reference a subset of the outputs in the output group, specify a list of them here. For each additional manifest that you specify, the service creates one HLS manifest and one DASH manifest.
    #   @return [Array<Types::CmafAdditionalManifest>]
    # @!attribute base_url
    #   A partial URI prefix that will be put in the manifest file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file.
    #   @return [String]
    # @!attribute client_cache
    #   Disable this setting only when your workflow requires the #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled and control caching in your video distribution set up. For example, use the Cache-Control http header.
    #   @return [String]
    # @!attribute codec_specification
    #   Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
    #   @return [String]
    # @!attribute dash_i_frame_trick_play_name_modifier
    #   Specify whether MediaConvert generates I-frame only video segments for DASH trick play, also known as trick mode. When specified, the I-frame only video segments are included within an additional AdaptationSet in your DASH output manifest. To generate I-frame only video segments: Enter a name as a text string, up to 256 character long. This name is appended to the end of this output group's base filename, that you specify as part of your destination URI, and used for the I-frame only video segment files. You may also include format identifiers. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/using-variables-in-your-job-settings.html#using-settings-variables-with-streaming-outputs To not generate I-frame only video segments: Leave blank.
    #   @return [String]
    # @!attribute dash_manifest_style
    #   Specify how MediaConvert writes SegmentTimeline in your output DASH manifest. To write a SegmentTimeline in each video Representation: Keep the default value, Basic. To write a common SegmentTimeline in the video AdaptationSet: Choose Compact. Note that MediaConvert will still write a SegmentTimeline in any Representation that does not share a common timeline. To write a video AdaptationSet for each different output framerate, and a common SegmentTimeline in each AdaptationSet: Choose Distinct.
    #   @return [String]
    # @!attribute destination
    #   Use Destination to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
    #   @return [String]
    # @!attribute destination_settings
    #   Settings associated with the destination. Will vary based on the type of destination
    #   @return [Types::DestinationSettings]
    # @!attribute encryption
    #   DRM settings.
    #   @return [Types::CmafEncryptionSettings]
    # @!attribute fragment_length
    #   Specify the length, in whole seconds, of the mp4 fragments. When you don't specify a value, MediaConvert defaults to 2. Related setting: Use Fragment length control to specify whether the encoder enforces this value strictly.
    #   @return [Integer]
    # @!attribute image_based_trick_play
    #   Specify whether MediaConvert generates images for trick play. Keep the default value, None, to not generate any images. Choose Thumbnail to generate tiled thumbnails. Choose Thumbnail and full frame to generate tiled thumbnails and full-resolution images of single frames. When you enable Write HLS manifest, MediaConvert creates a child manifest for each set of images that you generate and adds corresponding entries to the parent manifest. When you enable Write DASH manifest, MediaConvert adds an entry in the .mpd manifest for each set of images that you generate. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md
    #   @return [String]
    # @!attribute image_based_trick_play_settings
    #   Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    #   @return [Types::CmafImageBasedTrickPlaySettings]
    # @!attribute manifest_compression
    #   When set to GZIP, compresses HLS playlist.
    #   @return [String]
    # @!attribute manifest_duration_format
    #   Indicates whether the output manifest should use floating point values for segment duration.
    #   @return [String]
    # @!attribute min_buffer_time
    #   Minimum time of initially buffered media that is needed to ensure smooth playout.
    #   @return [Integer]
    # @!attribute min_final_segment_length
    #   Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds.
    #   @return [Float]
    # @!attribute mpd_manifest_bandwidth_type
    #   Specify how the value for bandwidth is determined for each video Representation in your output MPD manifest. We recommend that you choose a MPD manifest bandwidth type that is compatible with your downstream player configuration. Max: Use the same value that you specify for Max bitrate in the video output, in bits per second. Average: Use the calculated average bitrate of the encoded video output, in bits per second.
    #   @return [String]
    # @!attribute mpd_profile
    #   Specify whether your DASH profile is on-demand or main. When you choose Main profile, the service signals urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand, the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control to Single file.
    #   @return [String]
    # @!attribute pts_offset_handling_for_b_frames
    #   Use this setting only when your output video stream has B-frames, which causes the initial presentation time stamp (PTS) to be offset from the initial decode time stamp (DTS). Specify how MediaConvert handles PTS when writing time stamps in output DASH manifests. Choose Match initial PTS when you want MediaConvert to use the initial PTS as the first time stamp in the manifest. Choose Zero-based to have MediaConvert ignore the initial PTS in the video stream and instead write the initial time stamp as zero in the manifest. For outputs that don't have B-frames, the time stamps in your DASH manifests start at zero regardless of your choice here.
    #   @return [String]
    # @!attribute segment_control
    #   When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
    #   @return [String]
    # @!attribute segment_length
    #   Specify the length, in whole seconds, of each segment. When you don't specify a value, MediaConvert defaults to 10. Related settings: Use Segment length control to specify whether the encoder enforces this value strictly. Use Segment control to specify whether MediaConvert creates separate segment files or one content file that has metadata to mark the segment boundaries.
    #   @return [Integer]
    # @!attribute segment_length_control
    #   Specify how you want MediaConvert to determine segment lengths in this output group. To use the exact value that you specify under Segment length: Choose Exact. Note that this might result in additional I-frames in the output GOP. To create segment lengths that are a multiple of the GOP: Choose Multiple of GOP. MediaConvert will round up the segment lengths to match the next GOP boundary. To have MediaConvert automatically determine a segment duration that is a multiple of both the audio packets and the frame rates: Choose Match. When you do, also specify a target segment duration under Segment length. This is useful for some ad-insertion or segment replacement workflows. Note that Match has the following requirements: - Output containers: Include at least one video output and at least one audio output. Audio-only outputs are not supported. - Output frame rate: Follow source is not supported. - Multiple output frame rates: When you specify multiple outputs, we recommend they share a similar frame rate (as in X/3, X/2, X, or 2X). For example: 5, 15, 30 and 60. Or: 25 and 50. (Outputs must share an integer multiple.) - Output audio codec: Specify Advanced Audio Coding (AAC). - Output sample rate: Choose 48kHz.
    #   @return [String]
    # @!attribute stream_inf_resolution
    #   Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
    #   @return [String]
    # @!attribute target_duration_compatibility_mode
    #   When set to LEGACY, the segment target duration is always rounded up to the nearest integer value above its current value in seconds. When set to SPEC\\_COMPLIANT, the segment target duration is rounded up to the nearest integer value if fraction seconds are greater than or equal to 0.5 (>= 0.5) and rounded down if less than 0.5 (< 0.5). You may need to use LEGACY if your client needs to ensure that the target duration is always longer than the actual duration of the segment. Some older players may experience interrupted playback when the actual duration of a track in a segment is longer than the target duration.
    #   @return [String]
    # @!attribute video_composition_offsets
    #   Specify the video sample composition time offset mode in the output fMP4 TRUN box. For wider player compatibility, set Video composition offsets to Unsigned or leave blank. The earliest presentation time may be greater than zero, and sample composition time offsets will increment using unsigned integers. For strict fMP4 video and audio timing, set Video composition offsets to Signed. The earliest presentation time will be equal to zero, and sample composition time offsets will increment using signed integers.
    #   @return [String]
    # @!attribute write_dash_manifest
    #   When set to ENABLED, a DASH MPD manifest will be generated for this output.
    #   @return [String]
    # @!attribute write_hls_manifest
    #   When set to ENABLED, an Apple HLS manifest will be generated for this output.
    #   @return [String]
    # @!attribute write_segment_timeline_in_representation
    #   When you enable Precise segment duration in DASH manifests, your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element.
    #   @return [String]
    class CmafGroupSettings < Struct.new(
      :additional_manifests,
      :base_url,
      :client_cache,
      :codec_specification,
      :dash_i_frame_trick_play_name_modifier,
      :dash_manifest_style,
      :destination,
      :destination_settings,
      :encryption,
      :fragment_length,
      :image_based_trick_play,
      :image_based_trick_play_settings,
      :manifest_compression,
      :manifest_duration_format,
      :min_buffer_time,
      :min_final_segment_length,
      :mpd_manifest_bandwidth_type,
      :mpd_profile,
      :pts_offset_handling_for_b_frames,
      :segment_control,
      :segment_length,
      :segment_length_control,
      :stream_inf_resolution,
      :target_duration_compatibility_mode,
      :video_composition_offsets,
      :write_dash_manifest,
      :write_hls_manifest,
      :write_segment_timeline_in_representation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify whether MediaConvert generates images for trick play. Keep the default value, None, to not generate any images. Choose Thumbnail to generate tiled thumbnails. Choose Thumbnail and full frame to generate tiled thumbnails and full-resolution images of single frames. When you enable Write HLS manifest, MediaConvert creates a child manifest for each set of images that you generate and adds corresponding entries to the parent manifest. When you enable Write DASH manifest, MediaConvert adds an entry in the .mpd manifest for each set of images that you generate. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md
    module CmafImageBasedTrickPlay
      NONE = 'NONE'
      THUMBNAIL = 'THUMBNAIL'
      THUMBNAIL_AND_FULLFRAME = 'THUMBNAIL_AND_FULLFRAME'
      ADVANCED = 'ADVANCED'
    end

    # Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    # @!attribute interval_cadence
    #   The cadence MediaConvert follows for generating thumbnails. If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence). If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval.
    #   @return [String]
    # @!attribute thumbnail_height
    #   Height of each thumbnail within each tile image, in pixels. Leave blank to maintain aspect ratio with thumbnail width. If following the aspect ratio would lead to a total tile height greater than 4096, then the job will be rejected. Must be divisible by 2.
    #   @return [Integer]
    # @!attribute thumbnail_interval
    #   Enter the interval, in seconds, that MediaConvert uses to generate thumbnails. If the interval you enter doesn't align with the output frame rate, MediaConvert automatically rounds the interval to align with the output frame rate. For example, if the output frame rate is 29.97 frames per second and you enter 5, MediaConvert uses a 150 frame interval to generate thumbnails.
    #   @return [Float]
    # @!attribute thumbnail_width
    #   Width of each thumbnail within each tile image, in pixels. Default is 312. Must be divisible by 8.
    #   @return [Integer]
    # @!attribute tile_height
    #   Number of thumbnails in each column of a tile image. Set a value between 2 and 2048. Must be divisible by 2.
    #   @return [Integer]
    # @!attribute tile_width
    #   Number of thumbnails in each row of a tile image. Set a value between 1 and 512.
    #   @return [Integer]
    class CmafImageBasedTrickPlaySettings < Struct.new(
      :interval_cadence,
      :thumbnail_height,
      :thumbnail_interval,
      :thumbnail_width,
      :tile_height,
      :tile_width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # When you use DRM with CMAF outputs, choose whether the service writes the 128-bit encryption initialization vector in the HLS and DASH manifests.
    module CmafInitializationVectorInManifest
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # The cadence MediaConvert follows for generating thumbnails. If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence). If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval.
    module CmafIntervalCadence
      FOLLOW_IFRAME = 'FOLLOW_IFRAME'
      FOLLOW_CUSTOM = 'FOLLOW_CUSTOM'
    end

    # Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html.
    module CmafKeyProviderType
      SPEKE = 'SPEKE'
      STATIC_KEY = 'STATIC_KEY'
    end

    # When set to GZIP, compresses HLS playlist.
    module CmafManifestCompression
      GZIP = 'GZIP'
      NONE = 'NONE'
    end

    # Indicates whether the output manifest should use floating point values for segment duration.
    module CmafManifestDurationFormat
      FLOATING_POINT = 'FLOATING_POINT'
      INTEGER = 'INTEGER'
    end

    # Specify how the value for bandwidth is determined for each video Representation in your output MPD manifest. We recommend that you choose a MPD manifest bandwidth type that is compatible with your downstream player configuration. Max: Use the same value that you specify for Max bitrate in the video output, in bits per second. Average: Use the calculated average bitrate of the encoded video output, in bits per second.
    module CmafMpdManifestBandwidthType
      AVERAGE = 'AVERAGE'
      MAX = 'MAX'
    end

    # Specify whether your DASH profile is on-demand or main. When you choose Main profile, the service signals urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand, the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control to Single file.
    module CmafMpdProfile
      MAIN_PROFILE = 'MAIN_PROFILE'
      ON_DEMAND_PROFILE = 'ON_DEMAND_PROFILE'
    end

    # Use this setting only when your output video stream has B-frames, which causes the initial presentation time stamp (PTS) to be offset from the initial decode time stamp (DTS). Specify how MediaConvert handles PTS when writing time stamps in output DASH manifests. Choose Match initial PTS when you want MediaConvert to use the initial PTS as the first time stamp in the manifest. Choose Zero-based to have MediaConvert ignore the initial PTS in the video stream and instead write the initial time stamp as zero in the manifest. For outputs that don't have B-frames, the time stamps in your DASH manifests start at zero regardless of your choice here.
    module CmafPtsOffsetHandlingForBFrames
      ZERO_BASED = 'ZERO_BASED'
      MATCH_INITIAL_PTS = 'MATCH_INITIAL_PTS'
    end

    # When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
    module CmafSegmentControl
      SINGLE_FILE = 'SINGLE_FILE'
      SEGMENTED_FILES = 'SEGMENTED_FILES'
    end

    # Specify how you want MediaConvert to determine segment lengths in this output group. To use the exact value that you specify under Segment length: Choose Exact. Note that this might result in additional I-frames in the output GOP. To create segment lengths that are a multiple of the GOP: Choose Multiple of GOP. MediaConvert will round up the segment lengths to match the next GOP boundary. To have MediaConvert automatically determine a segment duration that is a multiple of both the audio packets and the frame rates: Choose Match. When you do, also specify a target segment duration under Segment length. This is useful for some ad-insertion or segment replacement workflows. Note that Match has the following requirements: - Output containers: Include at least one video output and at least one audio output. Audio-only outputs are not supported. - Output frame rate: Follow source is not supported. - Multiple output frame rates: When you specify multiple outputs, we recommend they share a similar frame rate (as in X/3, X/2, X, or 2X). For example: 5, 15, 30 and 60. Or: 25 and 50. (Outputs must share an integer multiple.) - Output audio codec: Specify Advanced Audio Coding (AAC). - Output sample rate: Choose 48kHz.
    module CmafSegmentLengthControl
      EXACT = 'EXACT'
      GOP_MULTIPLE = 'GOP_MULTIPLE'
      MATCH = 'MATCH'
    end

    # Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
    module CmafStreamInfResolution
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # When set to LEGACY, the segment target duration is always rounded up to the nearest integer value above its current value in seconds. When set to SPEC\\_COMPLIANT, the segment target duration is rounded up to the nearest integer value if fraction seconds are greater than or equal to 0.5 (>= 0.5) and rounded down if less than 0.5 (< 0.5). You may need to use LEGACY if your client needs to ensure that the target duration is always longer than the actual duration of the segment. Some older players may experience interrupted playback when the actual duration of a track in a segment is longer than the target duration.
    module CmafTargetDurationCompatibilityMode
      LEGACY = 'LEGACY'
      SPEC_COMPLIANT = 'SPEC_COMPLIANT'
    end

    # Specify the video sample composition time offset mode in the output fMP4 TRUN box. For wider player compatibility, set Video composition offsets to Unsigned or leave blank. The earliest presentation time may be greater than zero, and sample composition time offsets will increment using unsigned integers. For strict fMP4 video and audio timing, set Video composition offsets to Signed. The earliest presentation time will be equal to zero, and sample composition time offsets will increment using signed integers.
    module CmafVideoCompositionOffsets
      SIGNED = 'SIGNED'
      UNSIGNED = 'UNSIGNED'
    end

    # When set to ENABLED, a DASH MPD manifest will be generated for this output.
    module CmafWriteDASHManifest
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # When set to ENABLED, an Apple HLS manifest will be generated for this output.
    module CmafWriteHLSManifest
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # When you enable Precise segment duration in DASH manifests, your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element.
    module CmafWriteSegmentTimelineInRepresentation
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration. In all other cases, keep the default value, Default codec duration. When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    module CmfcAudioDuration
      DEFAULT_CODEC_DURATION = 'DEFAULT_CODEC_DURATION'
      MATCH_VIDEO_DURATION = 'MATCH_VIDEO_DURATION'
    end

    # Use this setting to control the values that MediaConvert puts in your HLS parent playlist to control how the client player selects which audio track to play. Choose Audio-only variant stream (AUDIO_ONLY_VARIANT_STREAM) for any variant that you want to prohibit the client from playing with video. This causes MediaConvert to represent the variant as an EXT-X-STREAM-INF in the HLS manifest. The other options for this setting determine the values that MediaConvert writes for the DEFAULT and AUTOSELECT attributes of the EXT-X-MEDIA entry for the audio variant. For more information about these attributes, see the Apple documentation article https://developer.apple.com/documentation/http_live_streaming/example_playlists_for_http_live_streaming/adding_alternate_media_to_a_playlist. Choose Alternate audio, auto select, default to set DEFAULT=YES and AUTOSELECT=YES. Choose this value for only one variant in your output group. Choose Alternate audio, auto select, not default to set DEFAULT=NO and AUTOSELECT=YES. Choose Alternate Audio, Not Auto Select to set DEFAULT=NO and AUTOSELECT=NO. When you don't specify a value for this setting, MediaConvert defaults to Alternate audio, auto select, default. When there is more than one variant in your output group, you must explicitly choose a value for this setting.
    module CmfcAudioTrackType
      ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT = 'ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT'
      ALTERNATE_AUDIO_AUTO_SELECT = 'ALTERNATE_AUDIO_AUTO_SELECT'
      ALTERNATE_AUDIO_NOT_AUTO_SELECT = 'ALTERNATE_AUDIO_NOT_AUTO_SELECT'
      AUDIO_ONLY_VARIANT_STREAM = 'AUDIO_ONLY_VARIANT_STREAM'
    end

    # Specify whether to flag this audio track as descriptive video service (DVS) in your HLS parent manifest. When you choose Flag, MediaConvert includes the parameter CHARACTERISTICS="public.accessibility.describes-video" in the EXT-X-MEDIA entry for this track. When you keep the default choice, Don't flag, MediaConvert leaves this parameter out. The DVS flag can help with accessibility on Apple devices. For more information, see the Apple documentation.
    module CmfcDescriptiveVideoServiceFlag
      DONT_FLAG = 'DONT_FLAG'
      FLAG = 'FLAG'
    end

    # Choose Include to have MediaConvert generate an HLS child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude.
    module CmfcIFrameOnlyManifest
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # To include key-length-value metadata in this output: Set KLV metadata insertion to Passthrough. MediaConvert reads KLV metadata present in your input and writes each instance to a separate event message box in the output, according to MISB ST1910.1. To exclude this KLV metadata: Set KLV metadata insertion to None or leave blank.
    module CmfcKlvMetadata
      PASSTHROUGH = 'PASSTHROUGH'
      NONE = 'NONE'
    end

    # To add an InbandEventStream element in your output MPD manifest for each type of event message, set Manifest metadata signaling to Enabled. For ID3 event messages, the InbandEventStream element schemeIdUri will be same value that you specify for ID3 metadata scheme ID URI. For SCTE35 event messages, the InbandEventStream element schemeIdUri will be "urn:scte:scte35:2013:bin". To leave these elements out of your output MPD manifest, set Manifest metadata signaling to Disabled. To enable Manifest metadata signaling, you must also set SCTE-35 source to Passthrough, ESAM SCTE-35 to insert, or ID3 metadata to Passthrough.
    module CmfcManifestMetadataSignaling
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML.
    module CmfcScte35Esam
      INSERT = 'INSERT'
      NONE = 'NONE'
    end

    # Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None if you don't want those SCTE-35 markers in this output.
    module CmfcScte35Source
      PASSTHROUGH = 'PASSTHROUGH'
      NONE = 'NONE'
    end

    # These settings relate to the fragmented MP4 container for the segments in your CMAF outputs.
    # @!attribute audio_duration
    #   Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration. In all other cases, keep the default value, Default codec duration. When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    #   @return [String]
    # @!attribute audio_group_id
    #   Specify the audio rendition group for this audio rendition. Specify up to one value for each audio output in your output group. This value appears in your HLS parent manifest in the EXT-X-MEDIA tag of TYPE=AUDIO, as the value for the GROUP-ID attribute. For example, if you specify "audio_aac_1" for Audio group ID, it appears in your manifest like this: #EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID="audio_aac_1". Related setting: To associate the rendition group that this audio track belongs to with a video rendition, include the same value that you provide here for that video output's setting Audio rendition sets.
    #   @return [String]
    # @!attribute audio_rendition_sets
    #   List the audio rendition groups that you want included with this video rendition. Use a comma-separated list. For example, say you want to include the audio rendition groups that have the audio group IDs "audio_aac_1" and "audio_dolby". Then you would specify this value: "audio_aac_1,audio_dolby". Related setting: The rendition groups that you include in your comma-separated list should all match values that you specify in the setting Audio group ID for audio renditions in the same output group as this video rendition. Default behavior: If you don't specify anything here and for Audio group ID, MediaConvert puts each audio variant in its own audio rendition group and associates it with every video variant. Each value in your list appears in your HLS parent manifest in the EXT-X-STREAM-INF tag as the value for the AUDIO attribute. To continue the previous example, say that the file name for the child manifest for your video rendition is "amazing_video_1.m3u8". Then, in your parent manifest, each value will appear on separate lines, like this: #EXT-X-STREAM-INF:AUDIO="audio_aac_1"... amazing_video_1.m3u8 #EXT-X-STREAM-INF:AUDIO="audio_dolby"... amazing_video_1.m3u8
    #   @return [String]
    # @!attribute audio_track_type
    #   Use this setting to control the values that MediaConvert puts in your HLS parent playlist to control how the client player selects which audio track to play. Choose Audio-only variant stream (AUDIO_ONLY_VARIANT_STREAM) for any variant that you want to prohibit the client from playing with video. This causes MediaConvert to represent the variant as an EXT-X-STREAM-INF in the HLS manifest. The other options for this setting determine the values that MediaConvert writes for the DEFAULT and AUTOSELECT attributes of the EXT-X-MEDIA entry for the audio variant. For more information about these attributes, see the Apple documentation article https://developer.apple.com/documentation/http_live_streaming/example_playlists_for_http_live_streaming/adding_alternate_media_to_a_playlist. Choose Alternate audio, auto select, default to set DEFAULT=YES and AUTOSELECT=YES. Choose this value for only one variant in your output group. Choose Alternate audio, auto select, not default to set DEFAULT=NO and AUTOSELECT=YES. Choose Alternate Audio, Not Auto Select to set DEFAULT=NO and AUTOSELECT=NO. When you don't specify a value for this setting, MediaConvert defaults to Alternate audio, auto select, default. When there is more than one variant in your output group, you must explicitly choose a value for this setting.
    #   @return [String]
    # @!attribute descriptive_video_service_flag
    #   Specify whether to flag this audio track as descriptive video service (DVS) in your HLS parent manifest. When you choose Flag, MediaConvert includes the parameter CHARACTERISTICS="public.accessibility.describes-video" in the EXT-X-MEDIA entry for this track. When you keep the default choice, Don't flag, MediaConvert leaves this parameter out. The DVS flag can help with accessibility on Apple devices. For more information, see the Apple documentation.
    #   @return [String]
    # @!attribute i_frame_only_manifest
    #   Choose Include to have MediaConvert generate an HLS child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude.
    #   @return [String]
    # @!attribute klv_metadata
    #   To include key-length-value metadata in this output: Set KLV metadata insertion to Passthrough. MediaConvert reads KLV metadata present in your input and writes each instance to a separate event message box in the output, according to MISB ST1910.1. To exclude this KLV metadata: Set KLV metadata insertion to None or leave blank.
    #   @return [String]
    # @!attribute manifest_metadata_signaling
    #   To add an InbandEventStream element in your output MPD manifest for each type of event message, set Manifest metadata signaling to Enabled. For ID3 event messages, the InbandEventStream element schemeIdUri will be same value that you specify for ID3 metadata scheme ID URI. For SCTE35 event messages, the InbandEventStream element schemeIdUri will be "urn:scte:scte35:2013:bin". To leave these elements out of your output MPD manifest, set Manifest metadata signaling to Disabled. To enable Manifest metadata signaling, you must also set SCTE-35 source to Passthrough, ESAM SCTE-35 to insert, or ID3 metadata to Passthrough.
    #   @return [String]
    # @!attribute scte35_esam
    #   Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML.
    #   @return [String]
    # @!attribute scte35_source
    #   Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None if you don't want those SCTE-35 markers in this output.
    #   @return [String]
    # @!attribute timed_metadata
    #   To include ID3 metadata in this output: Set ID3 metadata to Passthrough. Specify this ID3 metadata in Custom ID3 metadata inserter. MediaConvert writes each instance of ID3 metadata in a separate Event Message (eMSG) box. To exclude this ID3 metadata: Set ID3 metadata to None or leave blank.
    #   @return [String]
    # @!attribute timed_metadata_box_version
    #   Specify the event message box (eMSG) version for ID3 timed metadata in your output.
    #   For more information, see ISO/IEC 23009-1:2022 section 5.10.3.3.3 Syntax.
    #   Leave blank to use the default value Version 0.
    #   When you specify Version 1, you must also set ID3 metadata to Passthrough.
    #   @return [String]
    # @!attribute timed_metadata_scheme_id_uri
    #   Specify the event message box (eMSG) scheme ID URI for ID3 timed metadata in your output. For more information, see ISO/IEC 23009-1:2022 section 5.10.3.3.4 Semantics. Leave blank to use the default value: https://aomedia.org/emsg/ID3 When you specify a value for ID3 metadata scheme ID URI, you must also set ID3 metadata to Passthrough.
    #   @return [String]
    # @!attribute timed_metadata_value
    #   Specify the event message box (eMSG) value for ID3 timed metadata in your output. For more information, see ISO/IEC 23009-1:2022 section 5.10.3.3.4 Semantics. When you specify a value for ID3 Metadata Value, you must also set ID3 metadata to Passthrough.
    #   @return [String]
    class CmfcSettings < Struct.new(
      :audio_duration,
      :audio_group_id,
      :audio_rendition_sets,
      :audio_track_type,
      :descriptive_video_service_flag,
      :i_frame_only_manifest,
      :klv_metadata,
      :manifest_metadata_signaling,
      :scte35_esam,
      :scte35_source,
      :timed_metadata,
      :timed_metadata_box_version,
      :timed_metadata_scheme_id_uri,
      :timed_metadata_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # To include ID3 metadata in this output: Set ID3 metadata to Passthrough. Specify this ID3 metadata in Custom ID3 metadata inserter. MediaConvert writes each instance of ID3 metadata in a separate Event Message (eMSG) box. To exclude this ID3 metadata: Set ID3 metadata to None or leave blank.
    module CmfcTimedMetadata
      PASSTHROUGH = 'PASSTHROUGH'
      NONE = 'NONE'
    end

    # Specify the event message box (eMSG) version for ID3 timed metadata in your output.
    # For more information, see ISO/IEC 23009-1:2022 section 5.10.3.3.3 Syntax.
    # Leave blank to use the default value Version 0.
    # When you specify Version 1, you must also set ID3 metadata to Passthrough.
    module CmfcTimedMetadataBoxVersion
      VERSION_0 = 'VERSION_0'
      VERSION_1 = 'VERSION_1'
    end

    module Codec
      UNKNOWN = 'UNKNOWN'
      AAC = 'AAC'
      AC3 = 'AC3'
      EAC3 = 'EAC3'
      FLAC = 'FLAC'
      MP3 = 'MP3'
      OPUS = 'OPUS'
      PCM = 'PCM'
      VORBIS = 'VORBIS'
      AV1 = 'AV1'
      AVC = 'AVC'
      HEVC = 'HEVC'
      JPEG2000 = 'JPEG2000'
      MJPEG = 'MJPEG'
      MP4V = 'MP4V'
      MPEG2 = 'MPEG2'
      PRORES = 'PRORES'
      THEORA = 'THEORA'
      VP8 = 'VP8'
      VP9 = 'VP9'
      C608 = 'C608'
      C708 = 'C708'
      WEBVTT = 'WEBVTT'
    end

    # Custom 3D lut settings
    # @!attribute file_input
    #   Specify the input file S3, HTTP, or HTTPS URL for your 3D LUT .cube file. Note that MediaConvert accepts 3D LUT files up to 8MB in size.
    #   @return [String]
    # @!attribute input_color_space
    #   Specify which inputs use this 3D LUT, according to their color space.
    #   @return [String]
    # @!attribute input_mastering_luminance
    #   Specify which inputs use this 3D LUT, according to their luminance. To apply this 3D LUT to HDR10 or P3D65 (HDR) inputs with a specific mastering luminance: Enter an integer from 0 to 2147483647, corresponding to the input's Maximum luminance value. To apply this 3D LUT to any input regardless of its luminance: Leave blank, or enter 0.
    #   @return [Integer]
    # @!attribute output_color_space
    #   Specify which outputs use this 3D LUT, according to their color space.
    #   @return [String]
    # @!attribute output_mastering_luminance
    #   Specify which outputs use this 3D LUT, according to their luminance. To apply this 3D LUT to HDR10 or P3D65 (HDR) outputs with a specific luminance: Enter an integer from 0 to 2147483647, corresponding to the output's luminance. To apply this 3D LUT to any output regardless of its luminance: Leave blank, or enter 0.
    #   @return [Integer]
    class ColorConversion3DLUTSetting < Struct.new(
      :file_input,
      :input_color_space,
      :input_mastering_luminance,
      :output_color_space,
      :output_mastering_luminance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings for color correction.
    # @!attribute brightness
    #   Brightness level.
    #   @return [Integer]
    # @!attribute clip_limits
    #   Specify YUV limits and RGB tolerances when you set Sample range conversion to Limited range clip.
    #   @return [Types::ClipLimits]
    # @!attribute color_space_conversion
    #   Specify the color space you want for this output. The service supports conversion between HDR formats, between SDR formats, from SDR to HDR, and from HDR to SDR. SDR to HDR conversion doesn't upgrade the dynamic range. The converted video has an HDR format, but visually appears the same as an unconverted output. HDR to SDR conversion uses tone mapping to approximate the outcome of manually regrading from HDR to SDR. When you specify an output color space, MediaConvert uses the following color space metadata, which includes color primaries, transfer characteristics, and matrix coefficients:
    #     * HDR 10: BT.2020, PQ, BT.2020 non-constant
    #     * HLG 2020: BT.2020, HLG, BT.2020 non-constant
    #     * P3DCI (Theater): DCIP3, SMPTE 428M, BT.709
    #     * P3D65 (SDR): Display P3, sRGB, BT.709
    #     * P3D65 (HDR): Display P3, PQ, BT.709
    #   @return [String]
    # @!attribute contrast
    #   Contrast level.
    #   @return [Integer]
    # @!attribute hdr10_metadata
    #   Use these settings when you convert to the HDR 10 color space. Specify the SMPTE ST 2086 Mastering Display Color Volume static metadata that you want signaled in the output. These values don't affect the pixel values that are encoded in the video stream. They are intended to help the downstream video player display content in a way that reflects the intentions of the the content creator. When you set Color space conversion to HDR 10, these settings are required. You must set values for Max frame average light level and Max content light level; these settings don't have a default value. The default values for the other HDR 10 metadata settings are defined by the P3D65 color space. For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr.
    #   @return [Types::Hdr10Metadata]
    # @!attribute hdr_to_sdr_tone_mapper
    #   Specify how MediaConvert maps brightness and colors from your HDR input to your SDR output. The mode that you select represents a creative choice, with different tradeoffs in the details and tones of your output. To maintain details in bright or saturated areas of your output: Choose Preserve details. For some sources, your SDR output may look less bright and less saturated when compared to your HDR source. MediaConvert automatically applies this mode for HLG sources, regardless of your choice. For a bright and saturated output: Choose Vibrant. We recommend that you choose this mode when any of your source content is HDR10, and for the best results when it is mastered for 1000 nits. You may notice loss of details in bright or saturated areas of your output. HDR to SDR tone mapping has no effect when your input is SDR.
    #   @return [String]
    # @!attribute hue
    #   Hue in degrees.
    #   @return [Integer]
    # @!attribute max_luminance
    #   Specify the maximum mastering display luminance. Enter an integer from 0 to 2147483647, in units of 0.0001 nits. For example, enter 10000000 for 1000 nits.
    #   @return [Integer]
    # @!attribute sample_range_conversion
    #   Specify how MediaConvert limits the color sample range for this output. To create a limited range output from a full range input: Choose Limited range squeeze. For full range inputs, MediaConvert performs a linear offset to color samples equally across all pixels and frames. Color samples in 10-bit outputs are limited to 64 through 940, and 8-bit outputs are limited to 16 through 235. Note: For limited range inputs, values for color samples are passed through to your output unchanged. MediaConvert does not limit the sample range. To correct pixels in your input that are out of range or out of gamut: Choose Limited range clip. Use for broadcast applications. MediaConvert conforms any pixels outside of the values that you specify under Minimum YUV and Maximum YUV to limited range bounds. MediaConvert also corrects any YUV values that, when converted to RGB, would be outside the bounds you specify under Minimum RGB tolerance and Maximum RGB tolerance. With either limited range conversion, MediaConvert writes the sample range metadata in the output.
    #   @return [String]
    # @!attribute saturation
    #   Saturation level.
    #   @return [Integer]
    # @!attribute sdr_reference_white_level
    #   Specify the reference white level, in nits, for all of your SDR inputs. Use to correct brightness levels within HDR10 outputs. The following color metadata must be present in your SDR input: color primaries, transfer characteristics, and matrix coefficients. If your SDR input has missing color metadata, or if you want to correct input color metadata, manually specify a color space in the input video selector. For 1,000 nit peak brightness displays, we recommend that you set SDR reference white level to 203 (according to ITU-R BT.2408). Leave blank to use the default value of 100, or specify an integer from 100 to 1000.
    #   @return [Integer]
    class ColorCorrector < Struct.new(
      :brightness,
      :clip_limits,
      :color_space_conversion,
      :contrast,
      :hdr10_metadata,
      :hdr_to_sdr_tone_mapper,
      :hue,
      :max_luminance,
      :sample_range_conversion,
      :saturation,
      :sdr_reference_white_level,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Choose Insert for this setting to include color metadata in this output. Choose Ignore to exclude color metadata from this output. If you don't specify a value, the service sets this to Insert by default.
    module ColorMetadata
      IGNORE = 'IGNORE'
      INSERT = 'INSERT'
    end

    # The color space color primaries of the video track.
    module ColorPrimaries
      ITU_709 = 'ITU_709'
      UNSPECIFIED = 'UNSPECIFIED'
      RESERVED = 'RESERVED'
      ITU_470M = 'ITU_470M'
      ITU_470BG = 'ITU_470BG'
      SMPTE_170M = 'SMPTE_170M'
      SMPTE_240M = 'SMPTE_240M'
      GENERIC_FILM = 'GENERIC_FILM'
      ITU_2020 = 'ITU_2020'
      SMPTE_428_1 = 'SMPTE_428_1'
      SMPTE_431_2 = 'SMPTE_431_2'
      SMPTE_EG_432_1 = 'SMPTE_EG_432_1'
      IPT = 'IPT'
      SMPTE_2067XYZ = 'SMPTE_2067XYZ'
      EBU_3213_E = 'EBU_3213_E'
      LAST = 'LAST'
    end

    # If your input video has accurate color space metadata, or if you don't know about color space: Keep the default value, Follow. MediaConvert will automatically detect your input color space. If your input video has metadata indicating the wrong color space, or has missing metadata: Specify the accurate color space here. If your input video is HDR 10 and the SMPTE ST 2086 Mastering Display Color Volume static metadata isn't present in your video stream, or if that metadata is present but not accurate: Choose Force HDR 10. Specify correct values in the input HDR 10 metadata settings. For more information about HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr. When you specify an input color space, MediaConvert uses the following color space metadata, which includes color primaries, transfer characteristics, and matrix coefficients:
    #  * HDR 10: BT.2020, PQ, BT.2020 non-constant
    #  * HLG 2020: BT.2020, HLG, BT.2020 non-constant
    #  * P3DCI (Theater): DCIP3, SMPTE 428M, BT.709
    #  * P3D65 (SDR): Display P3, sRGB, BT.709
    #  * P3D65 (HDR): Display P3, PQ, BT.709
    module ColorSpace
      FOLLOW = 'FOLLOW'
      REC_601 = 'REC_601'
      REC_709 = 'REC_709'
      HDR10 = 'HDR10'
      HLG_2020 = 'HLG_2020'
      P3DCI = 'P3DCI'
      P3D65_SDR = 'P3D65_SDR'
      P3D65_HDR = 'P3D65_HDR'
    end

    # Specify the color space you want for this output. The service supports conversion between HDR formats, between SDR formats, from SDR to HDR, and from HDR to SDR. SDR to HDR conversion doesn't upgrade the dynamic range. The converted video has an HDR format, but visually appears the same as an unconverted output. HDR to SDR conversion uses tone mapping to approximate the outcome of manually regrading from HDR to SDR. When you specify an output color space, MediaConvert uses the following color space metadata, which includes color primaries, transfer characteristics, and matrix coefficients:
    #   * HDR 10: BT.2020, PQ, BT.2020 non-constant
    #   * HLG 2020: BT.2020, HLG, BT.2020 non-constant
    #   * P3DCI (Theater): DCIP3, SMPTE 428M, BT.709
    #   * P3D65 (SDR): Display P3, sRGB, BT.709
    #   * P3D65 (HDR): Display P3, PQ, BT.709
    module ColorSpaceConversion
      NONE = 'NONE'
      FORCE_601 = 'FORCE_601'
      FORCE_709 = 'FORCE_709'
      FORCE_HDR10 = 'FORCE_HDR10'
      FORCE_HLG_2020 = 'FORCE_HLG_2020'
      FORCE_P3DCI = 'FORCE_P3DCI'
      FORCE_P3D65_SDR = 'FORCE_P3D65_SDR'
      FORCE_P3D65_HDR = 'FORCE_P3D65_HDR'
    end

    # There are two sources for color metadata, the input file and the job input settings Color space and HDR master display information settings. The Color space usage setting determines which takes precedence. Choose Force to use color metadata from the input job settings. If you don't specify values for those settings, the service defaults to using metadata from your input. FALLBACK - Choose Fallback to use color metadata from the source when it is present. If there's no color metadata in your input file, the service defaults to using values you specify in the input settings.
    module ColorSpaceUsage
      FORCE = 'FORCE'
      FALLBACK = 'FALLBACK'
    end

    # The length of the term of your reserved queue pricing plan commitment.
    module Commitment
      ONE_YEAR = 'ONE_YEAR'
    end

    # The service couldn't complete your request because there is a conflict with the current state of the resource.
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The container of your media file. This information helps you understand the overall structure and details of your media, including format, duration, and track layout.
    # @!attribute duration
    #   The total duration of your media file, in seconds.
    #   @return [Float]
    # @!attribute format
    #   The format of your media file. For example: MP4, QuickTime (MOV), Matroska (MKV), WebM or MXF. Note that this will be blank if your media file has a format that the MediaConvert Probe operation does not recognize.
    #   @return [String]
    # @!attribute tracks
    #   Details about each track (video, audio, or data) in the media file.
    #   @return [Array<Types::Track>]
    class Container < Struct.new(
      :duration,
      :format,
      :tracks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Container specific settings.
    # @!attribute cmfc_settings
    #   These settings relate to the fragmented MP4 container for the segments in your CMAF outputs.
    #   @return [Types::CmfcSettings]
    # @!attribute container
    #   Container for this output. Some containers require a container settings object. If not specified, the default object will be created.
    #   @return [String]
    # @!attribute f4v_settings
    #   Settings for F4v container
    #   @return [Types::F4vSettings]
    # @!attribute m2ts_settings
    #   MPEG-2 TS container settings. These apply to outputs in a File output group when the output's container is MPEG-2 Transport Stream (M2TS). In these assets, data is organized by the program map table (PMT). Each transport stream program contains subsets of data, including audio, video, and metadata. Each of these subsets of data has a numerical label called a packet identifier (PID). Each transport stream program corresponds to one MediaConvert output. The PMT lists the types of data in a program along with their PID. Downstream systems and players use the program map table to look up the PID for each type of data it accesses and then uses the PIDs to locate specific data within the asset.
    #   @return [Types::M2tsSettings]
    # @!attribute m3u8_settings
    #   These settings relate to the MPEG-2 transport stream (MPEG2-TS) container for the MPEG2-TS segments in your HLS outputs.
    #   @return [Types::M3u8Settings]
    # @!attribute mov_settings
    #   These settings relate to your QuickTime MOV output container.
    #   @return [Types::MovSettings]
    # @!attribute mp4_settings
    #   These settings relate to your MP4 output container. You can create audio only outputs with this container. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/supported-codecs-containers-audio-only.html#output-codecs-and-containers-supported-for-audio-only.
    #   @return [Types::Mp4Settings]
    # @!attribute mpd_settings
    #   These settings relate to the fragmented MP4 container for the segments in your DASH outputs.
    #   @return [Types::MpdSettings]
    # @!attribute mxf_settings
    #   These settings relate to your MXF output container.
    #   @return [Types::MxfSettings]
    class ContainerSettings < Struct.new(
      :cmfc_settings,
      :container,
      :f4v_settings,
      :m2ts_settings,
      :m3u8_settings,
      :mov_settings,
      :mp4_settings,
      :mpd_settings,
      :mxf_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Container for this output. Some containers require a container settings object. If not specified, the default object will be created.
    module ContainerType
      F4V = 'F4V'
      GIF = 'GIF'
      ISMV = 'ISMV'
      M2TS = 'M2TS'
      M3U8 = 'M3U8'
      CMFC = 'CMFC'
      MOV = 'MOV'
      MP4 = 'MP4'
      MPD = 'MPD'
      MXF = 'MXF'
      OGG = 'OGG'
      WEBM = 'WEBM'
      RAW = 'RAW'
      Y4M = 'Y4M'
    end

    # The action to take on copy and redistribution control XDS packets. If you select PASSTHROUGH, packets will not be changed. If you select STRIP, any packets will be removed in output captions.
    module CopyProtectionAction
      PASSTHROUGH = 'PASSTHROUGH'
      STRIP = 'STRIP'
    end

    # @!attribute acceleration_settings
    #   Optional. Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide.
    #   @return [Types::AccelerationSettings]
    # @!attribute billing_tags_source
    #   Optionally choose a Billing tags source that AWS Billing and Cost Management will use to display tags for individual output costs on any billing report that you set up. Leave blank to use the default value, Job.
    #   @return [String]
    # @!attribute client_request_token
    #   Prevent duplicate jobs from being created and ensure idempotency for your requests. A client request token can be any string that includes up to 64 ASCII characters. If you reuse a client request token within one minute of a successful request, the API returns the job details of the original request instead. For more information see https://docs.aws.amazon.com/mediaconvert/latest/apireference/idempotency.html.
    #   @return [String]
    # @!attribute hop_destinations
    #   Optional. Use queue hopping to avoid overly long waits in the backlog of the queue that you submit your job to. Specify an alternate queue and the maximum time that your job will wait in the initial queue before hopping. For more information about this feature, see the AWS Elemental MediaConvert User Guide.
    #   @return [Array<Types::HopDestination>]
    # @!attribute job_engine_version
    #   Use Job engine versions to run jobs for your production workflow on one version, while you test and validate the latest version. To specify a Job engine version: Enter a date in a YYYY-MM-DD format. For a list of valid Job engine versions, submit a ListVersions request. To not specify a Job engine version: Leave blank.
    #   @return [String]
    # @!attribute job_template
    #   Optional. When you create a job, you can either specify a job template or specify the transcoding settings individually.
    #   @return [String]
    # @!attribute priority
    #   Optional. Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0.
    #   @return [Integer]
    # @!attribute queue
    #   Optional. When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html.
    #   @return [String]
    # @!attribute role
    #   Required. The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.
    #   @return [String]
    # @!attribute settings
    #   JobSettings contains all the transcode settings for a job.
    #   @return [Types::JobSettings]
    # @!attribute simulate_reserved_queue
    #   Optional. Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default.
    #   @return [String]
    # @!attribute status_update_interval
    #   Optional. Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    #   @return [String]
    # @!attribute tags
    #   Optional. The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.  Use standard AWS tags on your job for automatic integration with AWS services and for custom integrations and workflows.
    #   @return [Hash<String, String>]
    # @!attribute user_metadata
    #   Optional. User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.  Use only for existing integrations or workflows that rely on job metadata tags. Otherwise, we recommend that you use standard AWS tags.
    #   @return [Hash<String, String>]
    class CreateJobRequest < Struct.new(
      :acceleration_settings,
      :billing_tags_source,
      :client_request_token,
      :hop_destinations,
      :job_engine_version,
      :job_template,
      :priority,
      :queue,
      :role,
      :settings,
      :simulate_reserved_queue,
      :status_update_interval,
      :tags,
      :user_metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job
    #   Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #   @return [Types::Job]
    class CreateJobResponse < Struct.new(
      :job,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute acceleration_settings
    #   Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide.
    #   @return [Types::AccelerationSettings]
    # @!attribute category
    #   Optional. A category for the job template you are creating
    #   @return [String]
    # @!attribute description
    #   Optional. A description of the job template you are creating.
    #   @return [String]
    # @!attribute hop_destinations
    #   Optional. Use queue hopping to avoid overly long waits in the backlog of the queue that you submit your job to. Specify an alternate queue and the maximum time that your job will wait in the initial queue before hopping. For more information about this feature, see the AWS Elemental MediaConvert User Guide.
    #   @return [Array<Types::HopDestination>]
    # @!attribute name
    #   The name of the job template you are creating.
    #   @return [String]
    # @!attribute priority
    #   Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0.
    #   @return [Integer]
    # @!attribute queue
    #   Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue.
    #   @return [String]
    # @!attribute settings
    #   JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
    #   @return [Types::JobTemplateSettings]
    # @!attribute status_update_interval
    #   Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    #   @return [String]
    # @!attribute tags
    #   The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
    #   @return [Hash<String, String>]
    class CreateJobTemplateRequest < Struct.new(
      :acceleration_settings,
      :category,
      :description,
      :hop_destinations,
      :name,
      :priority,
      :queue,
      :settings,
      :status_update_interval,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_template
    #   A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
    #   @return [Types::JobTemplate]
    class CreateJobTemplateResponse < Struct.new(
      :job_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute category
    #   Optional. A category for the preset you are creating.
    #   @return [String]
    # @!attribute description
    #   Optional. A description of the preset you are creating.
    #   @return [String]
    # @!attribute name
    #   The name of the preset you are creating.
    #   @return [String]
    # @!attribute settings
    #   Settings for preset
    #   @return [Types::PresetSettings]
    # @!attribute tags
    #   The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
    #   @return [Hash<String, String>]
    class CreatePresetRequest < Struct.new(
      :category,
      :description,
      :name,
      :settings,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute preset
    #   A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
    #   @return [Types::Preset]
    class CreatePresetResponse < Struct.new(
      :preset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute concurrent_jobs
    #   Specify the maximum number of jobs your queue can process concurrently. For on-demand queues, the value you enter is constrained by your service quotas for Maximum concurrent jobs, per on-demand queue and Maximum concurrent jobs, per account. For reserved queues, specify the number of jobs you can process concurrently in your reservation plan instead.
    #   @return [Integer]
    # @!attribute description
    #   Optional. A description of the queue that you are creating.
    #   @return [String]
    # @!attribute name
    #   The name of the queue that you are creating.
    #   @return [String]
    # @!attribute pricing_plan
    #   Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment. When you use the API to create a queue, the default is on-demand.
    #   @return [String]
    # @!attribute reservation_plan_settings
    #   Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
    #   @return [Types::ReservationPlanSettings]
    # @!attribute status
    #   Initial state of the queue. If you create a paused queue, then jobs in that queue won't begin.
    #   @return [String]
    # @!attribute tags
    #   The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
    #   @return [Hash<String, String>]
    class CreateQueueRequest < Struct.new(
      :concurrent_jobs,
      :description,
      :name,
      :pricing_plan,
      :reservation_plan_settings,
      :status,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute queue
    #   You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.
    #   @return [Types::Queue]
    class CreateQueueResponse < Struct.new(
      :queue,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the details for each additional DASH manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group.
    # @!attribute manifest_name_modifier
    #   Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your DASH group is film-name.mpd. If you enter "-no-premium" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.mpd.
    #   @return [String]
    # @!attribute selected_outputs
    #   Specify the outputs that you want this additional top-level manifest to reference.
    #   @return [Array<String>]
    class DashAdditionalManifest < Struct.new(
      :manifest_name_modifier,
      :selected_outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specifies DRM settings for DASH outputs.
    # @!attribute playback_device_compatibility
    #   This setting can improve the compatibility of your output with video players on obsolete devices. It applies only to DASH H.264 outputs with DRM encryption. Choose Unencrypted SEI only to correct problems with playback on older devices. Otherwise, keep the default setting CENC v1. If you choose Unencrypted SEI, for that output, the service will exclude the access unit delimiter and will leave the SEI NAL units unencrypted.
    #   @return [String]
    # @!attribute speke_key_provider
    #   If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead.
    #   @return [Types::SpekeKeyProvider]
    class DashIsoEncryptionSettings < Struct.new(
      :playback_device_compatibility,
      :speke_key_provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use this setting only when your audio codec is a Dolby one (AC3, EAC3, or Atmos) and your downstream workflow requires that your DASH manifest use the Dolby channel configuration tag, rather than the MPEG one. For example, you might need to use this to make dynamic ad insertion work. Specify which audio channel configuration scheme ID URI MediaConvert writes in your DASH manifest. Keep the default value, MPEG channel configuration, to have MediaConvert write this: urn:mpeg:mpegB:cicp:ChannelConfiguration. Choose Dolby channel configuration to have MediaConvert write this instead: tag:dolby.com,2014:dash:audio_channel_configuration:2011.
    module DashIsoGroupAudioChannelConfigSchemeIdUri
      MPEG_CHANNEL_CONFIGURATION = 'MPEG_CHANNEL_CONFIGURATION'
      DOLBY_CHANNEL_CONFIGURATION = 'DOLBY_CHANNEL_CONFIGURATION'
    end

    # Settings related to your DASH output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html.
    # @!attribute additional_manifests
    #   By default, the service creates one .mpd DASH manifest for each DASH ISO output group in your job. This default manifest references every output in the output group. To create additional DASH manifests that reference a subset of the outputs in the output group, specify a list of them here.
    #   @return [Array<Types::DashAdditionalManifest>]
    # @!attribute audio_channel_config_scheme_id_uri
    #   Use this setting only when your audio codec is a Dolby one (AC3, EAC3, or Atmos) and your downstream workflow requires that your DASH manifest use the Dolby channel configuration tag, rather than the MPEG one. For example, you might need to use this to make dynamic ad insertion work. Specify which audio channel configuration scheme ID URI MediaConvert writes in your DASH manifest. Keep the default value, MPEG channel configuration, to have MediaConvert write this: urn:mpeg:mpegB:cicp:ChannelConfiguration. Choose Dolby channel configuration to have MediaConvert write this instead: tag:dolby.com,2014:dash:audio_channel_configuration:2011.
    #   @return [String]
    # @!attribute base_url
    #   A partial URI prefix that will be put in the manifest (.mpd) file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file.
    #   @return [String]
    # @!attribute dash_i_frame_trick_play_name_modifier
    #   Specify whether MediaConvert generates I-frame only video segments for DASH trick play, also known as trick mode. When specified, the I-frame only video segments are included within an additional AdaptationSet in your DASH output manifest. To generate I-frame only video segments: Enter a name as a text string, up to 256 character long. This name is appended to the end of this output group's base filename, that you specify as part of your destination URI, and used for the I-frame only video segment files. You may also include format identifiers. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/using-variables-in-your-job-settings.html#using-settings-variables-with-streaming-outputs To not generate I-frame only video segments: Leave blank.
    #   @return [String]
    # @!attribute dash_manifest_style
    #   Specify how MediaConvert writes SegmentTimeline in your output DASH manifest. To write a SegmentTimeline in each video Representation: Keep the default value, Basic. To write a common SegmentTimeline in the video AdaptationSet: Choose Compact. Note that MediaConvert will still write a SegmentTimeline in any Representation that does not share a common timeline. To write a video AdaptationSet for each different output framerate, and a common SegmentTimeline in each AdaptationSet: Choose Distinct.
    #   @return [String]
    # @!attribute destination
    #   Use Destination to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
    #   @return [String]
    # @!attribute destination_settings
    #   Settings associated with the destination. Will vary based on the type of destination
    #   @return [Types::DestinationSettings]
    # @!attribute encryption
    #   DRM settings.
    #   @return [Types::DashIsoEncryptionSettings]
    # @!attribute fragment_length
    #   Length of fragments to generate (in seconds). Fragment length must be compatible with GOP size and Framerate. Note that fragments will end on the next keyframe after this number of seconds, so actual fragment length may be longer. When Emit Single File is checked, the fragmentation is internal to a single output file and it does not cause the creation of many output files as in other output types.
    #   @return [Integer]
    # @!attribute hbbtv_compliance
    #   Supports HbbTV specification as indicated
    #   @return [String]
    # @!attribute image_based_trick_play
    #   Specify whether MediaConvert generates images for trick play. Keep the default value, None, to not generate any images. Choose Thumbnail to generate tiled thumbnails. Choose Thumbnail and full frame to generate tiled thumbnails and full-resolution images of single frames. MediaConvert adds an entry in the .mpd manifest for each set of images that you generate. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md
    #   @return [String]
    # @!attribute image_based_trick_play_settings
    #   Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    #   @return [Types::DashIsoImageBasedTrickPlaySettings]
    # @!attribute min_buffer_time
    #   Minimum time of initially buffered media that is needed to ensure smooth playout.
    #   @return [Integer]
    # @!attribute min_final_segment_length
    #   Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds.
    #   @return [Float]
    # @!attribute mpd_manifest_bandwidth_type
    #   Specify how the value for bandwidth is determined for each video Representation in your output MPD manifest. We recommend that you choose a MPD manifest bandwidth type that is compatible with your downstream player configuration. Max: Use the same value that you specify for Max bitrate in the video output, in bits per second. Average: Use the calculated average bitrate of the encoded video output, in bits per second.
    #   @return [String]
    # @!attribute mpd_profile
    #   Specify whether your DASH profile is on-demand or main. When you choose Main profile, the service signals urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand, the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control to Single file.
    #   @return [String]
    # @!attribute pts_offset_handling_for_b_frames
    #   Use this setting only when your output video stream has B-frames, which causes the initial presentation time stamp (PTS) to be offset from the initial decode time stamp (DTS). Specify how MediaConvert handles PTS when writing time stamps in output DASH manifests. Choose Match initial PTS when you want MediaConvert to use the initial PTS as the first time stamp in the manifest. Choose Zero-based to have MediaConvert ignore the initial PTS in the video stream and instead write the initial time stamp as zero in the manifest. For outputs that don't have B-frames, the time stamps in your DASH manifests start at zero regardless of your choice here.
    #   @return [String]
    # @!attribute segment_control
    #   When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
    #   @return [String]
    # @!attribute segment_length
    #   Specify the length, in whole seconds, of each segment. When you don't specify a value, MediaConvert defaults to 30. Related settings: Use Segment length control to specify whether the encoder enforces this value strictly. Use Segment control to specify whether MediaConvert creates separate segment files or one content file that has metadata to mark the segment boundaries.
    #   @return [Integer]
    # @!attribute segment_length_control
    #   Specify how you want MediaConvert to determine segment lengths in this output group. To use the exact value that you specify under Segment length: Choose Exact. Note that this might result in additional I-frames in the output GOP. To create segment lengths that are a multiple of the GOP: Choose Multiple of GOP. MediaConvert will round up the segment lengths to match the next GOP boundary. To have MediaConvert automatically determine a segment duration that is a multiple of both the audio packets and the frame rates: Choose Match. When you do, also specify a target segment duration under Segment length. This is useful for some ad-insertion or segment replacement workflows. Note that Match has the following requirements: - Output containers: Include at least one video output and at least one audio output. Audio-only outputs are not supported. - Output frame rate: Follow source is not supported. - Multiple output frame rates: When you specify multiple outputs, we recommend they share a similar frame rate (as in X/3, X/2, X, or 2X). For example: 5, 15, 30 and 60. Or: 25 and 50. (Outputs must share an integer multiple.) - Output audio codec: Specify Advanced Audio Coding (AAC). - Output sample rate: Choose 48kHz.
    #   @return [String]
    # @!attribute video_composition_offsets
    #   Specify the video sample composition time offset mode in the output fMP4 TRUN box. For wider player compatibility, set Video composition offsets to Unsigned or leave blank. The earliest presentation time may be greater than zero, and sample composition time offsets will increment using unsigned integers. For strict fMP4 video and audio timing, set Video composition offsets to Signed. The earliest presentation time will be equal to zero, and sample composition time offsets will increment using signed integers.
    #   @return [String]
    # @!attribute write_segment_timeline_in_representation
    #   If you get an HTTP error in the 400 range when you play back your DASH output, enable this setting and run your transcoding job again. When you enable this setting, the service writes precise segment durations in the DASH manifest. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When you don't enable this setting, the service writes approximate segment durations in your DASH manifest.
    #   @return [String]
    class DashIsoGroupSettings < Struct.new(
      :additional_manifests,
      :audio_channel_config_scheme_id_uri,
      :base_url,
      :dash_i_frame_trick_play_name_modifier,
      :dash_manifest_style,
      :destination,
      :destination_settings,
      :encryption,
      :fragment_length,
      :hbbtv_compliance,
      :image_based_trick_play,
      :image_based_trick_play_settings,
      :min_buffer_time,
      :min_final_segment_length,
      :mpd_manifest_bandwidth_type,
      :mpd_profile,
      :pts_offset_handling_for_b_frames,
      :segment_control,
      :segment_length,
      :segment_length_control,
      :video_composition_offsets,
      :write_segment_timeline_in_representation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Supports HbbTV specification as indicated
    module DashIsoHbbtvCompliance
      HBBTV_1_5 = 'HBBTV_1_5'
      NONE = 'NONE'
    end

    # Specify whether MediaConvert generates images for trick play. Keep the default value, None, to not generate any images. Choose Thumbnail to generate tiled thumbnails. Choose Thumbnail and full frame to generate tiled thumbnails and full-resolution images of single frames. MediaConvert adds an entry in the .mpd manifest for each set of images that you generate. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md
    module DashIsoImageBasedTrickPlay
      NONE = 'NONE'
      THUMBNAIL = 'THUMBNAIL'
      THUMBNAIL_AND_FULLFRAME = 'THUMBNAIL_AND_FULLFRAME'
      ADVANCED = 'ADVANCED'
    end

    # Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    # @!attribute interval_cadence
    #   The cadence MediaConvert follows for generating thumbnails. If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence). If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval.
    #   @return [String]
    # @!attribute thumbnail_height
    #   Height of each thumbnail within each tile image, in pixels. Leave blank to maintain aspect ratio with thumbnail width. If following the aspect ratio would lead to a total tile height greater than 4096, then the job will be rejected. Must be divisible by 2.
    #   @return [Integer]
    # @!attribute thumbnail_interval
    #   Enter the interval, in seconds, that MediaConvert uses to generate thumbnails. If the interval you enter doesn't align with the output frame rate, MediaConvert automatically rounds the interval to align with the output frame rate. For example, if the output frame rate is 29.97 frames per second and you enter 5, MediaConvert uses a 150 frame interval to generate thumbnails.
    #   @return [Float]
    # @!attribute thumbnail_width
    #   Width of each thumbnail within each tile image, in pixels. Default is 312. Must be divisible by 8.
    #   @return [Integer]
    # @!attribute tile_height
    #   Number of thumbnails in each column of a tile image. Set a value between 2 and 2048. Must be divisible by 2.
    #   @return [Integer]
    # @!attribute tile_width
    #   Number of thumbnails in each row of a tile image. Set a value between 1 and 512.
    #   @return [Integer]
    class DashIsoImageBasedTrickPlaySettings < Struct.new(
      :interval_cadence,
      :thumbnail_height,
      :thumbnail_interval,
      :thumbnail_width,
      :tile_height,
      :tile_width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The cadence MediaConvert follows for generating thumbnails. If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence). If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval.
    module DashIsoIntervalCadence
      FOLLOW_IFRAME = 'FOLLOW_IFRAME'
      FOLLOW_CUSTOM = 'FOLLOW_CUSTOM'
    end

    # Specify how the value for bandwidth is determined for each video Representation in your output MPD manifest. We recommend that you choose a MPD manifest bandwidth type that is compatible with your downstream player configuration. Max: Use the same value that you specify for Max bitrate in the video output, in bits per second. Average: Use the calculated average bitrate of the encoded video output, in bits per second.
    module DashIsoMpdManifestBandwidthType
      AVERAGE = 'AVERAGE'
      MAX = 'MAX'
    end

    # Specify whether your DASH profile is on-demand or main. When you choose Main profile, the service signals urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand, the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control to Single file.
    module DashIsoMpdProfile
      MAIN_PROFILE = 'MAIN_PROFILE'
      ON_DEMAND_PROFILE = 'ON_DEMAND_PROFILE'
    end

    # This setting can improve the compatibility of your output with video players on obsolete devices. It applies only to DASH H.264 outputs with DRM encryption. Choose Unencrypted SEI only to correct problems with playback on older devices. Otherwise, keep the default setting CENC v1. If you choose Unencrypted SEI, for that output, the service will exclude the access unit delimiter and will leave the SEI NAL units unencrypted.
    module DashIsoPlaybackDeviceCompatibility
      CENC_V1 = 'CENC_V1'
      UNENCRYPTED_SEI = 'UNENCRYPTED_SEI'
    end

    # Use this setting only when your output video stream has B-frames, which causes the initial presentation time stamp (PTS) to be offset from the initial decode time stamp (DTS). Specify how MediaConvert handles PTS when writing time stamps in output DASH manifests. Choose Match initial PTS when you want MediaConvert to use the initial PTS as the first time stamp in the manifest. Choose Zero-based to have MediaConvert ignore the initial PTS in the video stream and instead write the initial time stamp as zero in the manifest. For outputs that don't have B-frames, the time stamps in your DASH manifests start at zero regardless of your choice here.
    module DashIsoPtsOffsetHandlingForBFrames
      ZERO_BASED = 'ZERO_BASED'
      MATCH_INITIAL_PTS = 'MATCH_INITIAL_PTS'
    end

    # When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
    module DashIsoSegmentControl
      SINGLE_FILE = 'SINGLE_FILE'
      SEGMENTED_FILES = 'SEGMENTED_FILES'
    end

    # Specify how you want MediaConvert to determine segment lengths in this output group. To use the exact value that you specify under Segment length: Choose Exact. Note that this might result in additional I-frames in the output GOP. To create segment lengths that are a multiple of the GOP: Choose Multiple of GOP. MediaConvert will round up the segment lengths to match the next GOP boundary. To have MediaConvert automatically determine a segment duration that is a multiple of both the audio packets and the frame rates: Choose Match. When you do, also specify a target segment duration under Segment length. This is useful for some ad-insertion or segment replacement workflows. Note that Match has the following requirements: - Output containers: Include at least one video output and at least one audio output. Audio-only outputs are not supported. - Output frame rate: Follow source is not supported. - Multiple output frame rates: When you specify multiple outputs, we recommend they share a similar frame rate (as in X/3, X/2, X, or 2X). For example: 5, 15, 30 and 60. Or: 25 and 50. (Outputs must share an integer multiple.) - Output audio codec: Specify Advanced Audio Coding (AAC). - Output sample rate: Choose 48kHz.
    module DashIsoSegmentLengthControl
      EXACT = 'EXACT'
      GOP_MULTIPLE = 'GOP_MULTIPLE'
      MATCH = 'MATCH'
    end

    # Specify the video sample composition time offset mode in the output fMP4 TRUN box. For wider player compatibility, set Video composition offsets to Unsigned or leave blank. The earliest presentation time may be greater than zero, and sample composition time offsets will increment using unsigned integers. For strict fMP4 video and audio timing, set Video composition offsets to Signed. The earliest presentation time will be equal to zero, and sample composition time offsets will increment using signed integers.
    module DashIsoVideoCompositionOffsets
      SIGNED = 'SIGNED'
      UNSIGNED = 'UNSIGNED'
    end

    # When you enable Precise segment duration in manifests, your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element.
    module DashIsoWriteSegmentTimelineInRepresentation
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Specify how MediaConvert writes SegmentTimeline in your output DASH manifest. To write a SegmentTimeline in each video Representation: Keep the default value, Basic. To write a common SegmentTimeline in the video AdaptationSet: Choose Compact. Note that MediaConvert will still write a SegmentTimeline in any Representation that does not share a common timeline. To write a video AdaptationSet for each different output framerate, and a common SegmentTimeline in each AdaptationSet: Choose Distinct.
    module DashManifestStyle
      BASIC = 'BASIC'
      COMPACT = 'COMPACT'
      DISTINCT = 'DISTINCT'
    end

    # Details about the media file's data track.
    # @!attribute language_code
    #   The language code of the data track, in three character ISO 639-3 format.
    #   @return [String]
    class DataProperties < Struct.new(
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the encryption mode that you used to encrypt your input files.
    module DecryptionMode
      AES_CTR = 'AES_CTR'
      AES_CBC = 'AES_CBC'
      AES_GCM = 'AES_GCM'
    end

    # Only applies when you set Deinterlace mode to Deinterlace or Adaptive. Interpolate produces sharper pictures, while blend produces smoother motion. If your source file includes a ticker, such as a scrolling headline at the bottom of the frame: Choose Interpolate ticker or Blend ticker. To apply field doubling: Choose Linear interpolation. Note that Linear interpolation may introduce video artifacts into your output.
    module DeinterlaceAlgorithm
      INTERPOLATE = 'INTERPOLATE'
      INTERPOLATE_TICKER = 'INTERPOLATE_TICKER'
      BLEND = 'BLEND'
      BLEND_TICKER = 'BLEND_TICKER'
      LINEAR_INTERPOLATION = 'LINEAR_INTERPOLATION'
    end

    # Settings for deinterlacer
    # @!attribute algorithm
    #   Only applies when you set Deinterlace mode to Deinterlace or Adaptive. Interpolate produces sharper pictures, while blend produces smoother motion. If your source file includes a ticker, such as a scrolling headline at the bottom of the frame: Choose Interpolate ticker or Blend ticker. To apply field doubling: Choose Linear interpolation. Note that Linear interpolation may introduce video artifacts into your output.
    #   @return [String]
    # @!attribute control
    #   - When set to NORMAL (default), the deinterlacer does not convert frames that are tagged in metadata as progressive. It will only convert those that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive - even those that are already tagged as progressive. Turn Force mode on only if there is a good chance that the metadata has tagged frames as progressive when they are not progressive. Do not turn on otherwise; processing frames that are already progressive into progressive will probably result in lower quality video.
    #   @return [String]
    # @!attribute mode
    #   Use Deinterlacer to choose how the service will do deinterlacing. Default is Deinterlace.
    #   - Deinterlace converts interlaced to progressive.
    #   - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p.
    #   - Adaptive auto-detects and converts to progressive.
    #   @return [String]
    class Deinterlacer < Struct.new(
      :algorithm,
      :control,
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # - When set to NORMAL (default), the deinterlacer does not convert frames that are tagged in metadata as progressive. It will only convert those that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive - even those that are already tagged as progressive. Turn Force mode on only if there is a good chance that the metadata has tagged frames as progressive when they are not progressive. Do not turn on otherwise; processing frames that are already progressive into progressive will probably result in lower quality video.
    module DeinterlacerControl
      FORCE_ALL_FRAMES = 'FORCE_ALL_FRAMES'
      NORMAL = 'NORMAL'
    end

    # Use Deinterlacer to choose how the service will do deinterlacing. Default is Deinterlace.
    # - Deinterlace converts interlaced to progressive.
    # - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p.
    # - Adaptive auto-detects and converts to progressive.
    module DeinterlacerMode
      DEINTERLACE = 'DEINTERLACE'
      INVERSE_TELECINE = 'INVERSE_TELECINE'
      ADAPTIVE = 'ADAPTIVE'
    end

    # @!attribute name
    #   The name of the job template to be deleted.
    #   @return [String]
    class DeleteJobTemplateRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteJobTemplateResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeletePolicyRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeletePolicyResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the preset to be deleted.
    #   @return [String]
    class DeletePresetRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeletePresetResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the queue that you want to delete.
    #   @return [String]
    class DeleteQueueRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteQueueResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist.
    # @deprecated
    #   DescribeEndpoints and account specific endpoints are no longer required. We recommend that you send your requests directly to the regional endpoint instead.
    module DescribeEndpointsMode
      DEFAULT = 'DEFAULT'
      GET_ONLY = 'GET_ONLY'
    end

    # @deprecated
    #   DescribeEndpoints and account specific endpoints are no longer required. We recommend that you send your requests directly to the regional endpoint instead.
    # @!attribute max_results
    #   Optional. Max number of endpoints, up to twenty, that will be returned at one time.
    #   @return [Integer]
    # @!attribute mode
    #   Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist.
    #   @return [String]
    # @!attribute next_token
    #   Use this string, provided with the response to a previous request, to request the next batch of endpoints.
    #   @return [String]
    class DescribeEndpointsRequest < Struct.new(
      :max_results,
      :mode,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @deprecated
    #   DescribeEndpoints and account specific endpoints are no longer required. We recommend that you send your requests directly to the regional endpoint instead.
    # @!attribute endpoints
    #   List of endpoints
    #   @return [Array<Types::Endpoint>]
    # @!attribute next_token
    #   Use this string to request the next batch of endpoints.
    #   @return [String]
    class DescribeEndpointsResponse < Struct.new(
      :endpoints,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings associated with the destination. Will vary based on the type of destination
    # @!attribute s3_settings
    #   Settings associated with S3 destination
    #   @return [Types::S3DestinationSettings]
    class DestinationSettings < Struct.new(
      :s3_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the ACM certificate that you want to disassociate from your MediaConvert resource.
    #   @return [String]
    class DisassociateCertificateRequest < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociateCertificateResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Create Dolby Vision Profile 5 or Profile 8.1 compatible video output.
    # @!attribute l6_metadata
    #   Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to override the MaxCLL and MaxFALL values in your input with new values.
    #   @return [Types::DolbyVisionLevel6Metadata]
    # @!attribute l6_mode
    #   Use Dolby Vision Mode to choose how the service will handle Dolby Vision MaxCLL and MaxFALL properies.
    #   @return [String]
    # @!attribute mapping
    #   Required when you set Dolby Vision Profile to Profile 8.1. When you set Content mapping to None, content mapping is not applied to the HDR10-compatible signal. Depending on the source peak nit level, clipping might occur on HDR devices without Dolby Vision. When you set Content mapping to HDR10 1000, the transcoder creates a 1,000 nits peak HDR10-compatible signal by applying static content mapping to the source. This mode is speed-optimized for PQ10 sources with metadata that is created from analysis. For graded Dolby Vision content, be aware that creative intent might not be guaranteed with extreme 1,000 nits trims.
    #   @return [String]
    # @!attribute profile
    #   Required when you enable Dolby Vision. Use Profile 5 to include frame-interleaved Dolby Vision metadata in your output. Your input must include Dolby Vision metadata or an HDR10 YUV color space. Use Profile 8.1 to include frame-interleaved Dolby Vision metadata and HDR10 metadata in your output. Your input must include Dolby Vision metadata.
    #   @return [String]
    class DolbyVision < Struct.new(
      :l6_metadata,
      :l6_mode,
      :mapping,
      :profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to override the MaxCLL and MaxFALL values in your input with new values.
    # @!attribute max_cll
    #   Maximum Content Light Level. Static HDR metadata that corresponds to the brightest pixel in the entire stream. Measured in nits.
    #   @return [Integer]
    # @!attribute max_fall
    #   Maximum Frame-Average Light Level. Static HDR metadata that corresponds to the highest frame-average brightness in the entire stream. Measured in nits.
    #   @return [Integer]
    class DolbyVisionLevel6Metadata < Struct.new(
      :max_cll,
      :max_fall,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Dolby Vision Mode to choose how the service will handle Dolby Vision MaxCLL and MaxFALL properies.
    module DolbyVisionLevel6Mode
      PASSTHROUGH = 'PASSTHROUGH'
      RECALCULATE = 'RECALCULATE'
      SPECIFY = 'SPECIFY'
    end

    # Required when you set Dolby Vision Profile to Profile 8.1. When you set Content mapping to None, content mapping is not applied to the HDR10-compatible signal. Depending on the source peak nit level, clipping might occur on HDR devices without Dolby Vision. When you set Content mapping to HDR10 1000, the transcoder creates a 1,000 nits peak HDR10-compatible signal by applying static content mapping to the source. This mode is speed-optimized for PQ10 sources with metadata that is created from analysis. For graded Dolby Vision content, be aware that creative intent might not be guaranteed with extreme 1,000 nits trims.
    module DolbyVisionMapping
      HDR10_NOMAP = 'HDR10_NOMAP'
      HDR10_1000 = 'HDR10_1000'
    end

    # Required when you enable Dolby Vision. Use Profile 5 to include frame-interleaved Dolby Vision metadata in your output. Your input must include Dolby Vision metadata or an HDR10 YUV color space. Use Profile 8.1 to include frame-interleaved Dolby Vision metadata and HDR10 metadata in your output. Your input must include Dolby Vision metadata.
    module DolbyVisionProfile
      PROFILE_5 = 'PROFILE_5'
      PROFILE_8_1 = 'PROFILE_8_1'
    end

    # Applies only to 29.97 fps outputs. When this feature is enabled, the service will use drop-frame timecode on outputs. If it is not possible to use drop-frame timecode, the system will fall back to non-drop-frame. This setting is enabled by default when Timecode insertion or Timecode track is enabled.
    module DropFrameTimecode
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Use these settings to insert a DVB Network Information Table (NIT) in the transport stream of this output.
    # @!attribute network_id
    #   The numeric value placed in the Network Information Table (NIT).
    #   @return [Integer]
    # @!attribute network_name
    #   The network name text placed in the network_name_descriptor inside the Network Information Table. Maximum length is 256 characters.
    #   @return [String]
    # @!attribute nit_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #   @return [Integer]
    class DvbNitSettings < Struct.new(
      :network_id,
      :network_name,
      :nit_interval,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use these settings to insert a DVB Service Description Table (SDT) in the transport stream of this output.
    # @!attribute output_sdt
    #   Selects method of inserting SDT information into output stream. "Follow input SDT" copies SDT information from input stream to output stream. "Follow input SDT if present" copies SDT information from input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. Enter "SDT Manually" means user will enter the SDT information. "No SDT" means output stream will not contain SDT information.
    #   @return [String]
    # @!attribute sdt_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #   @return [Integer]
    # @!attribute service_name
    #   The service name placed in the service_descriptor in the Service Description Table. Maximum length is 256 characters.
    #   @return [String]
    # @!attribute service_provider_name
    #   The service provider name placed in the service_descriptor in the Service Description Table. Maximum length is 256 characters.
    #   @return [String]
    class DvbSdtSettings < Struct.new(
      :output_sdt,
      :sdt_interval,
      :service_name,
      :service_provider_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings related to DVB-Sub captions. Set up DVB-Sub captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/dvb-sub-output-captions.html.
    # @!attribute alignment
    #   Specify the alignment of your captions. If no explicit x_position is provided, setting alignment to centered will placethe captions at the bottom center of the output. Similarly, setting a left alignment willalign captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [String]
    # @!attribute apply_font_color
    #   Ignore this setting unless Style Passthrough is set to Enabled and Font color set to Black, Yellow, Red, Green, Blue, or Hex. Use Apply font color for additional font color controls. When you choose White text only, or leave blank, your font color setting only applies to white text in your input captions. For example, if your font color setting is Yellow, and your input captions have red and white text, your output captions will have red and yellow text. When you choose ALL_TEXT, your font color setting applies to all of your output captions text.
    #   @return [String]
    # @!attribute background_color
    #   Specify the color of the rectangle behind the captions. Leave background color blank and set Style passthrough to enabled to use the background color data from your input captions, if present.
    #   @return [String]
    # @!attribute background_opacity
    #   Specify the opacity of the background rectangle. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough is set to enabled, leave blank to pass through the background style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all backgrounds from your output captions. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [Integer]
    # @!attribute dds_handling
    #   Specify how MediaConvert handles the display definition segment (DDS). To exclude the DDS from this set of captions: Keep the default, None. To include the DDS: Choose Specified. When you do, also specify the offset coordinates of the display window with DDS x-coordinate and DDS y-coordinate. To include the DDS, but not include display window data: Choose No display window. When you do, you can write position metadata to the page composition segment (PCS) with DDS x-coordinate and DDS y-coordinate. For video resolutions with a height of 576 pixels or less, MediaConvert doesn't include the DDS, regardless of the value you choose for DDS handling. All burn-in and DVB-Sub font settings must match. To include the DDS, with optimized subtitle placement and reduced data overhead: We recommend that you choose Specified (optimal). This option provides the same visual positioning as Specified while using less bandwidth. This also supports resolutions higher than 1080p while maintaining full DVB-Sub compatibility. When you do, also specify the offset coordinates of the display window with DDS x-coordinate and DDS y-coordinate.
    #   @return [String]
    # @!attribute dds_x_coordinate
    #   Use this setting, along with DDS y-coordinate, to specify the upper left corner of the display definition segment (DDS) display window. With this setting, specify the distance, in pixels, between the left side of the frame and the left side of the DDS display window. Keep the default value, 0, to have MediaConvert automatically choose this offset. Related setting: When you use this setting, you must set DDS handling to a value other than None. MediaConvert uses these values to determine whether to write page position data to the DDS or to the page composition segment. All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute dds_y_coordinate
    #   Use this setting, along with DDS x-coordinate, to specify the upper left corner of the display definition segment (DDS) display window. With this setting, specify the distance, in pixels, between the top of the frame and the top of the DDS display window. Keep the default value, 0, to have MediaConvert automatically choose this offset. Related setting: When you use this setting, you must set DDS handling to a value other than None. MediaConvert uses these values to determine whether to write page position data to the DDS or to the page composition segment (PCS). All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute fallback_font
    #   Specify the font that you want the service to use for your burn in captions when your input captions specify a font that MediaConvert doesn't support. When you set Fallback font to best match, or leave blank, MediaConvert uses a supported font that most closely matches the font that your input captions specify. When there are multiple unsupported fonts in your input captions, MediaConvert matches each font with the supported font that matches best. When you explicitly choose a replacement font, MediaConvert uses that font to replace all unsupported fonts from your input.
    #   @return [String]
    # @!attribute font_color
    #   Specify the color of the captions text. Leave Font color blank and set Style passthrough to enabled to use the font color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [String]
    # @!attribute font_file_bold
    #   Specify a bold TrueType font file to use when rendering your output captions. Enter an S3, HTTP, or HTTPS URL. When you do, you must also separately specify a regular, an italic, and a bold italic font file.
    #   @return [String]
    # @!attribute font_file_bold_italic
    #   Specify a bold italic TrueType font file to use when rendering your output captions.
    #   Enter an S3, HTTP, or HTTPS URL.
    #   When you do, you must also separately specify a regular, a bold, and an italic font file.
    #   @return [String]
    # @!attribute font_file_italic
    #   Specify an italic TrueType font file to use when rendering your output captions. Enter an S3, HTTP, or HTTPS URL. When you do, you must also separately specify a regular, a bold, and a bold italic font file.
    #   @return [String]
    # @!attribute font_file_regular
    #   Specify a regular TrueType font file to use when rendering your output captions. Enter an S3, HTTP, or HTTPS URL. When you do, you must also separately specify a bold, an italic, and a bold italic font file.
    #   @return [String]
    # @!attribute font_opacity
    #   Specify the opacity of the burned-in captions. 255 is opaque; 0 is transparent.
    #   Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [Integer]
    # @!attribute font_resolution
    #   Specify the Font resolution in DPI (dots per inch).
    #   Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [Integer]
    # @!attribute font_script
    #   Set Font script to Automatically determined, or leave blank, to automatically determine the font script in your input captions. Otherwise, set to Simplified Chinese (HANS) or Traditional Chinese (HANT) if your input font script uses Simplified or Traditional Chinese. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [String]
    # @!attribute font_size
    #   Specify the Font size in pixels. Must be a positive integer. Set to 0, or leave blank, for automatic font size. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [Integer]
    # @!attribute height
    #   Specify the height, in pixels, of this set of DVB-Sub captions. The default value is 576 pixels. Related setting: When you use this setting, you must set DDS handling to a value other than None. All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute hex_font_color
    #   Ignore this setting unless your Font color is set to Hex. Enter either six or eight hexidecimal digits, representing red, green, and blue, with two optional extra digits for alpha. For example a value of 1122AABB is a red value of 0x11, a green value of 0x22, a blue value of 0xAA, and an alpha value of 0xBB.
    #   @return [String]
    # @!attribute outline_color
    #   Specify font outline color. Leave Outline color blank and set Style passthrough to enabled to use the font outline color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [String]
    # @!attribute outline_size
    #   Specify the Outline size of the caption text, in pixels. Leave Outline size blank and set Style passthrough to enabled to use the outline size data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [Integer]
    # @!attribute shadow_color
    #   Specify the color of the shadow cast by the captions. Leave Shadow color blank and set Style passthrough to enabled to use the shadow color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [String]
    # @!attribute shadow_opacity
    #   Specify the opacity of the shadow. Enter a value from 0 to 255, where 0 is transparent and 255 is opaque. If Style passthrough is set to Enabled, leave Shadow opacity blank to pass through the shadow style information in your input captions to your output captions. If Style passthrough is set to disabled, leave blank to use a value of 0 and remove all shadows from your output captions. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [Integer]
    # @!attribute shadow_x_offset
    #   Specify the horizontal offset of the shadow, relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [Integer]
    # @!attribute shadow_y_offset
    #   Specify the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. Leave Shadow y-offset blank and set Style passthrough to enabled to use the shadow y-offset data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [Integer]
    # @!attribute style_passthrough
    #   To use the available style, color, and position information from your input captions: Set Style passthrough to Enabled. Note that MediaConvert uses default settings for any missing style or position information in your input captions To ignore the style and position information from your input captions and use default settings: Leave blank or keep the default value, Disabled. Default settings include white text with black outlining, bottom-center positioning, and automatic sizing. Whether you set Style passthrough to enabled or not, you can also choose to manually override any of the individual style and position settings. You can also override any fonts by manually specifying custom font files.
    #   @return [String]
    # @!attribute subtitling_type
    #   Specify whether your DVB subtitles are standard or for hearing impaired. Choose hearing impaired if your subtitles include audio descriptions and dialogue. Choose standard if your subtitles include only dialogue.
    #   @return [String]
    # @!attribute teletext_spacing
    #   Specify whether the Text spacing in your captions is set by the captions grid, or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read for closed captions. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [String]
    # @!attribute width
    #   Specify the width, in pixels, of this set of DVB-Sub captions. The default value is 720 pixels. Related setting: When you use this setting, you must set DDS handling to a value other than None. All burn-in and DVB-Sub font settings must match.
    #   @return [Integer]
    # @!attribute x_position
    #   Specify the horizontal position of the captions, relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [Integer]
    # @!attribute y_position
    #   Specify the vertical position of the captions, relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output. Within your job settings, all of your DVB-Sub settings must be identical.
    #   @return [Integer]
    class DvbSubDestinationSettings < Struct.new(
      :alignment,
      :apply_font_color,
      :background_color,
      :background_opacity,
      :dds_handling,
      :dds_x_coordinate,
      :dds_y_coordinate,
      :fallback_font,
      :font_color,
      :font_file_bold,
      :font_file_bold_italic,
      :font_file_italic,
      :font_file_regular,
      :font_opacity,
      :font_resolution,
      :font_script,
      :font_size,
      :height,
      :hex_font_color,
      :outline_color,
      :outline_size,
      :shadow_color,
      :shadow_opacity,
      :shadow_x_offset,
      :shadow_y_offset,
      :style_passthrough,
      :subtitling_type,
      :teletext_spacing,
      :width,
      :x_position,
      :y_position,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # DVB Sub Source Settings
    # @!attribute pid
    #   When using DVB-Sub with Burn-in, use this PID for the source content. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors.
    #   @return [Integer]
    class DvbSubSourceSettings < Struct.new(
      :pid,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the font that you want the service to use for your burn in captions when your input captions specify a font that MediaConvert doesn't support. When you set Fallback font to best match, or leave blank, MediaConvert uses a supported font that most closely matches the font that your input captions specify. When there are multiple unsupported fonts in your input captions, MediaConvert matches each font with the supported font that matches best. When you explicitly choose a replacement font, MediaConvert uses that font to replace all unsupported fonts from your input.
    module DvbSubSubtitleFallbackFont
      BEST_MATCH = 'BEST_MATCH'
      MONOSPACED_SANSSERIF = 'MONOSPACED_SANSSERIF'
      MONOSPACED_SERIF = 'MONOSPACED_SERIF'
      PROPORTIONAL_SANSSERIF = 'PROPORTIONAL_SANSSERIF'
      PROPORTIONAL_SERIF = 'PROPORTIONAL_SERIF'
    end

    # Specify the alignment of your captions. If no explicit x_position is provided, setting alignment to centered will placethe captions at the bottom center of the output. Similarly, setting a left alignment willalign captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Within your job settings, all of your DVB-Sub settings must be identical.
    module DvbSubtitleAlignment
      CENTERED = 'CENTERED'
      LEFT = 'LEFT'
      AUTO = 'AUTO'
    end

    # Ignore this setting unless Style Passthrough is set to Enabled and Font color set to Black, Yellow, Red, Green, Blue, or Hex. Use Apply font color for additional font color controls. When you choose White text only, or leave blank, your font color setting only applies to white text in your input captions. For example, if your font color setting is Yellow, and your input captions have red and white text, your output captions will have red and yellow text. When you choose ALL_TEXT, your font color setting applies to all of your output captions text.
    module DvbSubtitleApplyFontColor
      WHITE_TEXT_ONLY = 'WHITE_TEXT_ONLY'
      ALL_TEXT = 'ALL_TEXT'
    end

    # Specify the color of the rectangle behind the captions. Leave background color blank and set Style passthrough to enabled to use the background color data from your input captions, if present.
    module DvbSubtitleBackgroundColor
      NONE = 'NONE'
      BLACK = 'BLACK'
      WHITE = 'WHITE'
      AUTO = 'AUTO'
    end

    # Specify the color of the captions text. Leave Font color blank and set Style passthrough to enabled to use the font color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    module DvbSubtitleFontColor
      WHITE = 'WHITE'
      BLACK = 'BLACK'
      YELLOW = 'YELLOW'
      RED = 'RED'
      GREEN = 'GREEN'
      BLUE = 'BLUE'
      HEX = 'HEX'
      AUTO = 'AUTO'
    end

    # Specify font outline color. Leave Outline color blank and set Style passthrough to enabled to use the font outline color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    module DvbSubtitleOutlineColor
      BLACK = 'BLACK'
      WHITE = 'WHITE'
      YELLOW = 'YELLOW'
      RED = 'RED'
      GREEN = 'GREEN'
      BLUE = 'BLUE'
      AUTO = 'AUTO'
    end

    # Specify the color of the shadow cast by the captions. Leave Shadow color blank and set Style passthrough to enabled to use the shadow color data from your input captions, if present. Within your job settings, all of your DVB-Sub settings must be identical.
    module DvbSubtitleShadowColor
      NONE = 'NONE'
      BLACK = 'BLACK'
      WHITE = 'WHITE'
      AUTO = 'AUTO'
    end

    # To use the available style, color, and position information from your input captions: Set Style passthrough to Enabled. Note that MediaConvert uses default settings for any missing style or position information in your input captions To ignore the style and position information from your input captions and use default settings: Leave blank or keep the default value, Disabled. Default settings include white text with black outlining, bottom-center positioning, and automatic sizing. Whether you set Style passthrough to enabled or not, you can also choose to manually override any of the individual style and position settings. You can also override any fonts by manually specifying custom font files.
    module DvbSubtitleStylePassthrough
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Specify whether the Text spacing in your captions is set by the captions grid, or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read for closed captions. Within your job settings, all of your DVB-Sub settings must be identical.
    module DvbSubtitleTeletextSpacing
      FIXED_GRID = 'FIXED_GRID'
      PROPORTIONAL = 'PROPORTIONAL'
      AUTO = 'AUTO'
    end

    # Specify whether your DVB subtitles are standard or for hearing impaired. Choose hearing impaired if your subtitles include audio descriptions and dialogue. Choose standard if your subtitles include only dialogue.
    module DvbSubtitlingType
      HEARING_IMPAIRED = 'HEARING_IMPAIRED'
      STANDARD = 'STANDARD'
    end

    # Use these settings to insert a DVB Time and Date Table (TDT) in the transport stream of this output.
    # @!attribute tdt_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #   @return [Integer]
    class DvbTdtSettings < Struct.new(
      :tdt_interval,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify how MediaConvert handles the display definition segment (DDS). To exclude the DDS from this set of captions: Keep the default, None. To include the DDS: Choose Specified. When you do, also specify the offset coordinates of the display window with DDS x-coordinate and DDS y-coordinate. To include the DDS, but not include display window data: Choose No display window. When you do, you can write position metadata to the page composition segment (PCS) with DDS x-coordinate and DDS y-coordinate. For video resolutions with a height of 576 pixels or less, MediaConvert doesn't include the DDS, regardless of the value you choose for DDS handling. All burn-in and DVB-Sub font settings must match. To include the DDS, with optimized subtitle placement and reduced data overhead: We recommend that you choose Specified (optimal). This option provides the same visual positioning as Specified while using less bandwidth. This also supports resolutions higher than 1080p while maintaining full DVB-Sub compatibility. When you do, also specify the offset coordinates of the display window with DDS x-coordinate and DDS y-coordinate.
    module DvbddsHandling
      NONE = 'NONE'
      SPECIFIED = 'SPECIFIED'
      NO_DISPLAY_WINDOW = 'NO_DISPLAY_WINDOW'
      SPECIFIED_OPTIMAL = 'SPECIFIED_OPTIMAL'
    end

    # Use Dynamic audio selectors when you do not know the track layout of your source when you submit your job, but want to select multiple audio tracks. When you include an audio track in your output and specify this Dynamic audio selector as the Audio source, MediaConvert creates an audio track within that output for each dynamically selected track. Note that when you include a Dynamic audio selector for two or more inputs, each input must have the same number of audio tracks and audio channels.
    # @!attribute audio_duration_correction
    #   Apply audio timing corrections to help synchronize audio and video in your output. To apply timing corrections, your input must meet the following requirements: * Container: MP4, or MOV, with an accurate time-to-sample (STTS) table. * Audio track: AAC. Choose from the following audio timing correction settings: * Disabled (Default): Apply no correction. * Auto: Recommended for most inputs. MediaConvert analyzes the audio timing in your input and determines which correction setting to use, if needed. * Track: Adjust the duration of each audio frame by a constant amount to align the audio track length with STTS duration. Track-level correction does not affect pitch, and is recommended for tonal audio content such as music. * Frame: Adjust the duration of each audio frame by a variable amount to align audio frames with STTS timestamps. No corrections are made to already-aligned frames. Frame-level correction may affect the pitch of corrected frames, and is recommended for atonal audio content such as speech or percussion. * Force: Apply audio duration correction, either Track or Frame depending on your input, regardless of the accuracy of your input's STTS table. Your output audio and video may not be aligned or it may contain audio artifacts.
    #   @return [String]
    # @!attribute external_audio_file_input
    #   Specify the S3, HTTP, or HTTPS URL for your external audio file input.
    #   @return [String]
    # @!attribute language_code
    #   Specify the language to select from your audio input. In the MediaConvert console choose from a list of languages. In your JSON job settings choose from an ISO 639-2 three-letter code listed at https://www.loc.gov/standards/iso639-2/php/code_list.php
    #   @return [String]
    # @!attribute offset
    #   Specify a time delta, in milliseconds, to offset the audio from the input video.
    #   To specify no offset: Keep the default value, 0.
    #   To specify an offset: Enter an integer from -2147483648 to 2147483647
    #   @return [Integer]
    # @!attribute selector_type
    #   Specify which audio tracks to dynamically select from your source. To select all audio tracks: Keep the default value, All tracks. To select all audio tracks with a specific language code: Choose Language code. When you do, you must also specify a language code under the Language code setting. If there is no matching Language code in your source, then no track will be selected.
    #   @return [String]
    class DynamicAudioSelector < Struct.new(
      :audio_duration_correction,
      :external_audio_file_input,
      :language_code,
      :offset,
      :selector_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify which audio tracks to dynamically select from your source. To select all audio tracks: Keep the default value, All tracks. To select all audio tracks with a specific language code: Choose Language code. When you do, you must also specify a language code under the Language code setting. If there is no matching Language code in your source, then no track will be selected.
    module DynamicAudioSelectorType
      ALL_TRACKS = 'ALL_TRACKS'
      LANGUAGE_CODE = 'LANGUAGE_CODE'
    end

    # Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E).
    module Eac3AtmosBitstreamMode
      COMPLETE_MAIN = 'COMPLETE_MAIN'
    end

    # The coding mode for Dolby Digital Plus JOC (Atmos).
    module Eac3AtmosCodingMode
      CODING_MODE_AUTO = 'CODING_MODE_AUTO'
      CODING_MODE_5_1_4 = 'CODING_MODE_5_1_4'
      CODING_MODE_7_1_4 = 'CODING_MODE_7_1_4'
      CODING_MODE_9_1_6 = 'CODING_MODE_9_1_6'
    end

    # Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue analysis.
    module Eac3AtmosDialogueIntelligence
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Specify whether MediaConvert should use any downmix metadata from your input file. Keep the default value, Custom to provide downmix values in your job settings. Choose Follow source to use the metadata from your input. Related settings--Use these settings to specify your downmix values: Left only/Right only surround, Left total/Right total surround, Left total/Right total center, Left only/Right only center, and Stereo downmix. When you keep Custom for Downmix control and you don't specify values for the related settings, MediaConvert uses default values for those settings.
    module Eac3AtmosDownmixControl
      SPECIFIED = 'SPECIFIED'
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
    end

    # Choose the Dolby dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby stream for the line operating mode. Default value: Film light Related setting: To have MediaConvert use the value you specify here, keep the default value, Custom for the setting Dynamic range control. Otherwise, MediaConvert ignores Dynamic range compression line. For information about the Dolby DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    module Eac3AtmosDynamicRangeCompressionLine
      NONE = 'NONE'
      FILM_STANDARD = 'FILM_STANDARD'
      FILM_LIGHT = 'FILM_LIGHT'
      MUSIC_STANDARD = 'MUSIC_STANDARD'
      MUSIC_LIGHT = 'MUSIC_LIGHT'
      SPEECH = 'SPEECH'
    end

    # Choose the Dolby dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby stream for the RF operating mode. Default value: Film light Related setting: To have MediaConvert use the value you specify here, keep the default value, Custom for the setting Dynamic range control. Otherwise, MediaConvert ignores Dynamic range compression RF. For information about the Dolby DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    module Eac3AtmosDynamicRangeCompressionRf
      NONE = 'NONE'
      FILM_STANDARD = 'FILM_STANDARD'
      FILM_LIGHT = 'FILM_LIGHT'
      MUSIC_STANDARD = 'MUSIC_STANDARD'
      MUSIC_LIGHT = 'MUSIC_LIGHT'
      SPEECH = 'SPEECH'
    end

    # Specify whether MediaConvert should use any dynamic range control metadata from your input file. Keep the default value, Custom, to provide dynamic range control values in your job settings. Choose Follow source to use the metadata from your input. Related settings--Use these settings to specify your dynamic range control values: Dynamic range compression line and Dynamic range compression RF. When you keep the value Custom for Dynamic range control and you don't specify values for the related settings, MediaConvert uses default values for those settings.
    module Eac3AtmosDynamicRangeControl
      SPECIFIED = 'SPECIFIED'
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
    end

    # Choose how the service meters the loudness of your audio.
    module Eac3AtmosMeteringMode
      LEQ_A = 'LEQ_A'
      ITU_BS_1770_1 = 'ITU_BS_1770_1'
      ITU_BS_1770_2 = 'ITU_BS_1770_2'
      ITU_BS_1770_3 = 'ITU_BS_1770_3'
      ITU_BS_1770_4 = 'ITU_BS_1770_4'
    end

    # Required when you set Codec to the value EAC3_ATMOS.
    # @!attribute bitrate
    #   Specify the average bitrate for this output in bits per second. Valid values: 384k, 448k, 576k, 640k, 768k, 1024k Default value: 448k Note that MediaConvert supports 384k only with channel-based immersive (CBI) 7.1.4 and 5.1.4 inputs. For CBI 9.1.6 and other input types, MediaConvert automatically increases your output bitrate to 448k.
    #   @return [Integer]
    # @!attribute bitstream_mode
    #   Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E).
    #   @return [String]
    # @!attribute coding_mode
    #   The coding mode for Dolby Digital Plus JOC (Atmos).
    #   @return [String]
    # @!attribute dialogue_intelligence
    #   Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue analysis.
    #   @return [String]
    # @!attribute downmix_control
    #   Specify whether MediaConvert should use any downmix metadata from your input file. Keep the default value, Custom to provide downmix values in your job settings. Choose Follow source to use the metadata from your input. Related settings--Use these settings to specify your downmix values: Left only/Right only surround, Left total/Right total surround, Left total/Right total center, Left only/Right only center, and Stereo downmix. When you keep Custom for Downmix control and you don't specify values for the related settings, MediaConvert uses default values for those settings.
    #   @return [String]
    # @!attribute dynamic_range_compression_line
    #   Choose the Dolby dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby stream for the line operating mode. Default value: Film light Related setting: To have MediaConvert use the value you specify here, keep the default value, Custom for the setting Dynamic range control. Otherwise, MediaConvert ignores Dynamic range compression line. For information about the Dolby DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #   @return [String]
    # @!attribute dynamic_range_compression_rf
    #   Choose the Dolby dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby stream for the RF operating mode. Default value: Film light Related setting: To have MediaConvert use the value you specify here, keep the default value, Custom for the setting Dynamic range control. Otherwise, MediaConvert ignores Dynamic range compression RF. For information about the Dolby DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #   @return [String]
    # @!attribute dynamic_range_control
    #   Specify whether MediaConvert should use any dynamic range control metadata from your input file. Keep the default value, Custom, to provide dynamic range control values in your job settings. Choose Follow source to use the metadata from your input. Related settings--Use these settings to specify your dynamic range control values: Dynamic range compression line and Dynamic range compression RF. When you keep the value Custom for Dynamic range control and you don't specify values for the related settings, MediaConvert uses default values for those settings.
    #   @return [String]
    # @!attribute lo_ro_center_mix_level
    #   Specify a value for the following Dolby Atmos setting: Left only/Right only center mix (Lo/Ro center). MediaConvert uses this value for downmixing. Default value: -3 dB. Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix. Related setting: To have MediaConvert use this value, keep the default value, Custom for the setting Downmix control. Otherwise, MediaConvert ignores Left only/Right only center.
    #   @return [Float]
    # @!attribute lo_ro_surround_mix_level
    #   Specify a value for the following Dolby Atmos setting: Left only/Right only. MediaConvert uses this value for downmixing. Default value: -3 dB. Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix. Related setting: To have MediaConvert use this value, keep the default value, Custom for the setting Downmix control. Otherwise, MediaConvert ignores Left only/Right only surround.
    #   @return [Float]
    # @!attribute lt_rt_center_mix_level
    #   Specify a value for the following Dolby Atmos setting: Left total/Right total center mix (Lt/Rt center). MediaConvert uses this value for downmixing. Default value: -3 dB Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix. Related setting: To have MediaConvert use this value, keep the default value, Custom for the setting Downmix control. Otherwise, MediaConvert ignores Left total/Right total center.
    #   @return [Float]
    # @!attribute lt_rt_surround_mix_level
    #   Specify a value for the following Dolby Atmos setting: Left total/Right total surround mix (Lt/Rt surround). MediaConvert uses this value for downmixing. Default value: -3 dB Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. Related setting: How the service uses this value depends on the value that you choose for Stereo downmix. Related setting: To have MediaConvert use this value, keep the default value, Custom for the setting Downmix control. Otherwise, the service ignores Left total/Right total surround.
    #   @return [Float]
    # @!attribute metering_mode
    #   Choose how the service meters the loudness of your audio.
    #   @return [String]
    # @!attribute sample_rate
    #   This value is always 48000. It represents the sample rate in Hz.
    #   @return [Integer]
    # @!attribute speech_threshold
    #   Specify the percentage of audio content, from 0% to 100%, that must be speech in order for the encoder to use the measured speech loudness as the overall program loudness. Default value: 15%
    #   @return [Integer]
    # @!attribute stereo_downmix
    #   Choose how the service does stereo downmixing. Default value: Not indicated Related setting: To have MediaConvert use this value, keep the default value, Custom for the setting Downmix control. Otherwise, MediaConvert ignores Stereo downmix.
    #   @return [String]
    # @!attribute surround_ex_mode
    #   Specify whether your input audio has an additional center rear surround channel matrix encoded into your left and right surround channels.
    #   @return [String]
    class Eac3AtmosSettings < Struct.new(
      :bitrate,
      :bitstream_mode,
      :coding_mode,
      :dialogue_intelligence,
      :downmix_control,
      :dynamic_range_compression_line,
      :dynamic_range_compression_rf,
      :dynamic_range_control,
      :lo_ro_center_mix_level,
      :lo_ro_surround_mix_level,
      :lt_rt_center_mix_level,
      :lt_rt_surround_mix_level,
      :metering_mode,
      :sample_rate,
      :speech_threshold,
      :stereo_downmix,
      :surround_ex_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Choose how the service does stereo downmixing. Default value: Not indicated Related setting: To have MediaConvert use this value, keep the default value, Custom for the setting Downmix control. Otherwise, MediaConvert ignores Stereo downmix.
    module Eac3AtmosStereoDownmix
      NOT_INDICATED = 'NOT_INDICATED'
      STEREO = 'STEREO'
      SURROUND = 'SURROUND'
      DPL2 = 'DPL2'
    end

    # Specify whether your input audio has an additional center rear surround channel matrix encoded into your left and right surround channels.
    module Eac3AtmosSurroundExMode
      NOT_INDICATED = 'NOT_INDICATED'
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.
    module Eac3AttenuationControl
      ATTENUATE_3_DB = 'ATTENUATE_3_DB'
      NONE = 'NONE'
    end

    # Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E).
    module Eac3BitstreamMode
      COMPLETE_MAIN = 'COMPLETE_MAIN'
      COMMENTARY = 'COMMENTARY'
      EMERGENCY = 'EMERGENCY'
      HEARING_IMPAIRED = 'HEARING_IMPAIRED'
      VISUALLY_IMPAIRED = 'VISUALLY_IMPAIRED'
    end

    # Dolby Digital Plus coding mode. Determines number of channels.
    module Eac3CodingMode
      CODING_MODE_1_0 = 'CODING_MODE_1_0'
      CODING_MODE_2_0 = 'CODING_MODE_2_0'
      CODING_MODE_3_2 = 'CODING_MODE_3_2'
    end

    # Activates a DC highpass filter for all input channels.
    module Eac3DcFilter
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the line operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile. For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    module Eac3DynamicRangeCompressionLine
      NONE = 'NONE'
      FILM_STANDARD = 'FILM_STANDARD'
      FILM_LIGHT = 'FILM_LIGHT'
      MUSIC_STANDARD = 'MUSIC_STANDARD'
      MUSIC_LIGHT = 'MUSIC_LIGHT'
      SPEECH = 'SPEECH'
    end

    # Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the RF operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile. For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    module Eac3DynamicRangeCompressionRf
      NONE = 'NONE'
      FILM_STANDARD = 'FILM_STANDARD'
      FILM_LIGHT = 'FILM_LIGHT'
      MUSIC_STANDARD = 'MUSIC_STANDARD'
      MUSIC_LIGHT = 'MUSIC_LIGHT'
      SPEECH = 'SPEECH'
    end

    # When encoding 3/2 audio, controls whether the LFE channel is enabled
    module Eac3LfeControl
      LFE = 'LFE'
      NO_LFE = 'NO_LFE'
    end

    # Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
    module Eac3LfeFilter
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
    module Eac3MetadataControl
      FOLLOW_INPUT = 'FOLLOW_INPUT'
      USE_CONFIGURED = 'USE_CONFIGURED'
    end

    # When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it is present on the input. this detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.
    module Eac3PassthroughControl
      WHEN_POSSIBLE = 'WHEN_POSSIBLE'
      NO_PASSTHROUGH = 'NO_PASSTHROUGH'
    end

    # Controls the amount of phase-shift applied to the surround channels. Only used for 3/2 coding mode.
    module Eac3PhaseControl
      SHIFT_90_DEGREES = 'SHIFT_90_DEGREES'
      NO_SHIFT = 'NO_SHIFT'
    end

    # Required when you set Codec to the value EAC3.
    # @!attribute attenuation_control
    #   If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.
    #   @return [String]
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. The bitrate that you specify must be a multiple of 8000 within the allowed minimum and maximum values. Leave blank to use the default bitrate for the coding mode you select according ETSI TS 102 366. Valid bitrates for coding mode 1/0: Default: 96000. Minimum: 32000. Maximum: 3024000. Valid bitrates for coding mode 2/0: Default: 192000. Minimum: 96000. Maximum: 3024000. Valid bitrates for coding mode 3/2: Default: 384000. Minimum: 192000. Maximum: 3024000.
    #   @return [Integer]
    # @!attribute bitstream_mode
    #   Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E).
    #   @return [String]
    # @!attribute coding_mode
    #   Dolby Digital Plus coding mode. Determines number of channels.
    #   @return [String]
    # @!attribute dc_filter
    #   Activates a DC highpass filter for all input channels.
    #   @return [String]
    # @!attribute dialnorm
    #   Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through.
    #   @return [Integer]
    # @!attribute dynamic_range_compression_line
    #   Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the line operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile. For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #   @return [String]
    # @!attribute dynamic_range_compression_rf
    #   Choose the Dolby Digital dynamic range control (DRC) profile that MediaConvert uses when encoding the metadata in the Dolby Digital stream for the RF operating mode. Related setting: When you use this setting, MediaConvert ignores any value you provide for Dynamic range compression profile. For information about the Dolby Digital DRC operating modes and profiles, see the Dynamic Range Control chapter of the Dolby Metadata Guide at https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.
    #   @return [String]
    # @!attribute lfe_control
    #   When encoding 3/2 audio, controls whether the LFE channel is enabled
    #   @return [String]
    # @!attribute lfe_filter
    #   Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
    #   @return [String]
    # @!attribute lo_ro_center_mix_level
    #   Specify a value for the following Dolby Digital Plus setting: Left only/Right only center mix. MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix. Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs for the setting Coding mode. If you choose a different value for Coding mode, the service ignores Left only/Right only center.
    #   @return [Float]
    # @!attribute lo_ro_surround_mix_level
    #   Specify a value for the following Dolby Digital Plus setting: Left only/Right only. MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix. Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs for the setting Coding mode. If you choose a different value for Coding mode, the service ignores Left only/Right only surround.
    #   @return [Float]
    # @!attribute lt_rt_center_mix_level
    #   Specify a value for the following Dolby Digital Plus setting: Left total/Right total center mix. MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix. Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs for the setting Coding mode. If you choose a different value for Coding mode, the service ignores Left total/Right total center.
    #   @return [Float]
    # @!attribute lt_rt_surround_mix_level
    #   Specify a value for the following Dolby Digital Plus setting: Left total/Right total surround mix. MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix. Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs for the setting Coding mode. If you choose a different value for Coding mode, the service ignores Left total/Right total surround.
    #   @return [Float]
    # @!attribute metadata_control
    #   When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
    #   @return [String]
    # @!attribute passthrough_control
    #   When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it is present on the input. this detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.
    #   @return [String]
    # @!attribute phase_control
    #   Controls the amount of phase-shift applied to the surround channels. Only used for 3/2 coding mode.
    #   @return [String]
    # @!attribute sample_rate
    #   This value is always 48000. It represents the sample rate in Hz.
    #   @return [Integer]
    # @!attribute stereo_downmix
    #   Choose how the service does stereo downmixing. This setting only applies if you keep the default value of 3/2 - L, R, C, Ls, Rs for the setting Coding mode. If you choose a different value for Coding mode, the service ignores Stereo downmix.
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
      :surround_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Choose how the service does stereo downmixing. This setting only applies if you keep the default value of 3/2 - L, R, C, Ls, Rs for the setting Coding mode. If you choose a different value for Coding mode, the service ignores Stereo downmix.
    module Eac3StereoDownmix
      NOT_INDICATED = 'NOT_INDICATED'
      LO_RO = 'LO_RO'
      LT_RT = 'LT_RT'
      DPL2 = 'DPL2'
    end

    # When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels.
    module Eac3SurroundExMode
      NOT_INDICATED = 'NOT_INDICATED'
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.
    module Eac3SurroundMode
      NOT_INDICATED = 'NOT_INDICATED'
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert, MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.
    module EmbeddedConvert608To708
      UPCONVERT = 'UPCONVERT'
      DISABLED = 'DISABLED'
    end

    # Settings related to CEA/EIA-608 and CEA/EIA-708 (also called embedded or ancillary) captions. Set up embedded captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/embedded-output-captions.html.
    # @!attribute destination608_channel_number
    #   Ignore this setting unless your input captions are SCC format and your output captions are embedded in the video stream. Specify a CC number for each captions channel in this output. If you have two channels, choose CC numbers that aren't in the same field. For example, choose 1 and 3. For more information, see https://docs.aws.amazon.com/console/mediaconvert/dual-scc-to-embedded.
    #   @return [Integer]
    # @!attribute destination708_service_number
    #   Ignore this setting unless your input captions are SCC format and you want both 608 and 708 captions embedded in your output stream. Optionally, specify the 708 service number for each output captions channel. Choose a different number for each channel. To use this setting, also set Force 608 to 708 upconvert to Upconvert in your input captions selector settings. If you choose to upconvert but don't specify a 708 service number, MediaConvert uses the number that you specify for CC channel number for the 708 service number. For more information, see https://docs.aws.amazon.com/console/mediaconvert/dual-scc-to-embedded.
    #   @return [Integer]
    class EmbeddedDestinationSettings < Struct.new(
      :destination608_channel_number,
      :destination708_service_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings for embedded captions Source
    # @!attribute convert608_to708
    #   Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert, MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.
    #   @return [String]
    # @!attribute source608_channel_number
    #   Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
    #   @return [Integer]
    # @!attribute source608_track_number
    #   Specifies the video track index used for extracting captions. The system only supports one input video track, so this should always be set to '1'.
    #   @return [Integer]
    # @!attribute terminate_captions
    #   By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting.
    #   @return [String]
    class EmbeddedSourceSettings < Struct.new(
      :convert608_to708,
      :source608_channel_number,
      :source608_track_number,
      :terminate_captions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting.
    module EmbeddedTerminateCaptions
      END_OF_INPUT = 'END_OF_INPUT'
      DISABLED = 'DISABLED'
    end

    # Set Embedded timecode override to Use MDPM when your AVCHD input contains timecode tag data in the Modified Digital Video Pack Metadata. When you do, we recommend you also set Timecode source to Embedded. Leave Embedded timecode override blank, or set to None, when your input does not contain MDPM timecode.
    module EmbeddedTimecodeOverride
      NONE = 'NONE'
      USE_MDPM = 'USE_MDPM'
    end

    # Specify the SPEKE version, either v1.0 or v2.0, that MediaConvert uses when encrypting your output. For more information, see: https://docs.aws.amazon.com/speke/latest/documentation/speke-api-specification.html To use SPEKE v1.0: Leave blank. To use SPEKE v2.0: Specify a SPEKE v2.0 video preset and a SPEKE v2.0 audio preset.
    # @!attribute speke_audio_preset
    #   Specify which SPEKE version 2.0 audio preset MediaConvert uses to request content keys from your SPEKE server. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/drm-content-speke-v2-presets.html To encrypt to your audio outputs, choose from the following: Audio preset 1, Audio preset 2, or Audio preset 3. To encrypt your audio outputs, using the same content key for both your audio and video outputs: Choose Shared. When you do, you must also set SPEKE v2.0 video preset to Shared. To not encrypt your audio outputs: Choose Unencrypted. When you do, to encrypt your video outputs, you must also specify a SPEKE v2.0 video preset (other than Shared or Unencrypted).
    #   @return [String]
    # @!attribute speke_video_preset
    #   Specify which SPEKE version 2.0 video preset MediaConvert uses to request content keys from your SPEKE server. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/drm-content-speke-v2-presets.html To encrypt to your video outputs, choose from the following: Video preset 1, Video preset 2, Video preset 3, Video preset 4, Video preset 5, Video preset 6, Video preset 7, or Video preset 8. To encrypt your video outputs, using the same content key for both your video and audio outputs: Choose Shared. When you do, you must also set SPEKE v2.0 audio preset to Shared. To not encrypt your video outputs: Choose Unencrypted. When you do, to encrypt your audio outputs, you must also specify a SPEKE v2.0 audio preset (other than Shared or Unencrypted).
    #   @return [String]
    class EncryptionContractConfiguration < Struct.new(
      :speke_audio_preset,
      :speke_video_preset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Describes an account-specific API endpoint.
    # @!attribute url
    #   URL of endpoint
    #   @return [String]
    class Endpoint < Struct.new(
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # ESAM ManifestConfirmConditionNotification defined by OC-SP-ESAM-API-I03-131025.
    # @!attribute mcc_xml
    #   Provide your ESAM ManifestConfirmConditionNotification XML document inside your JSON job settings. Form the XML document as per OC-SP-ESAM-API-I03-131025. The transcoder will use the Manifest Conditioning instructions in the message that you supply.
    #   @return [String]
    class EsamManifestConfirmConditionNotification < Struct.new(
      :mcc_xml,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings for Event Signaling And Messaging (ESAM). If you don't do ad insertion, you can ignore these settings.
    # @!attribute manifest_confirm_condition_notification
    #   Specifies an ESAM ManifestConfirmConditionNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the manifest conditioning instructions that you provide in the setting MCC XML.
    #   @return [Types::EsamManifestConfirmConditionNotification]
    # @!attribute response_signal_preroll
    #   Specifies the stream distance, in milliseconds, between the SCTE 35 messages that the transcoder places and the splice points that they refer to. If the time between the start of the asset and the SCTE-35 message is less than this value, then the transcoder places the SCTE-35 marker at the beginning of the stream.
    #   @return [Integer]
    # @!attribute signal_processing_notification
    #   Specifies an ESAM SignalProcessingNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the signal processing instructions that you provide in the setting SCC XML.
    #   @return [Types::EsamSignalProcessingNotification]
    class EsamSettings < Struct.new(
      :manifest_confirm_condition_notification,
      :response_signal_preroll,
      :signal_processing_notification,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # ESAM SignalProcessingNotification data defined by OC-SP-ESAM-API-I03-131025.
    # @!attribute scc_xml
    #   Provide your ESAM SignalProcessingNotification XML document inside your JSON job settings. Form the XML document as per OC-SP-ESAM-API-I03-131025. The transcoder will use the signal processing instructions in the message that you supply. For your MPEG2-TS file outputs, if you want the service to place SCTE-35 markers at the insertion points you specify in the XML document, you must also enable SCTE-35 ESAM. Note that you can either specify an ESAM XML document or enable SCTE-35 passthrough. You can't do both.
    #   @return [String]
    class EsamSignalProcessingNotification < Struct.new(
      :scc_xml,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # If your source content has EIA-608 Line 21 Data Services, enable this feature to specify what MediaConvert does with the Extended Data Services (XDS) packets. You can choose to pass through XDS packets, or remove them from the output. For more information about XDS, see EIA-608 Line Data Services, section 9.5.1.5 05h Content Advisory.
    # @!attribute copy_protection_action
    #   The action to take on copy and redistribution control XDS packets. If you select PASSTHROUGH, packets will not be changed. If you select STRIP, any packets will be removed in output captions.
    #   @return [String]
    # @!attribute vchip_action
    #   The action to take on content advisory XDS packets. If you select PASSTHROUGH, packets will not be changed. If you select STRIP, any packets will be removed in output captions.
    #   @return [String]
    class ExtendedDataServices < Struct.new(
      :copy_protection_action,
      :vchip_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # To place the MOOV atom at the beginning of your output, which is useful for progressive downloading: Leave blank or choose Progressive download. To place the MOOV at the end of your output: Choose Normal.
    module F4vMoovPlacement
      PROGRESSIVE_DOWNLOAD = 'PROGRESSIVE_DOWNLOAD'
      NORMAL = 'NORMAL'
    end

    # Settings for F4v container
    # @!attribute moov_placement
    #   To place the MOOV atom at the beginning of your output, which is useful for progressive downloading: Leave blank or choose Progressive download. To place the MOOV at the end of your output: Choose Normal.
    #   @return [String]
    class F4vSettings < Struct.new(
      :moov_placement,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings related to your File output group. MediaConvert uses this group of settings to generate a single standalone file, rather than a streaming package.
    # @!attribute destination
    #   Use Destination to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
    #   @return [String]
    # @!attribute destination_settings
    #   Settings associated with the destination. Will vary based on the type of destination
    #   @return [Types::DestinationSettings]
    class FileGroupSettings < Struct.new(
      :destination,
      :destination_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert, MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.
    module FileSourceConvert608To708
      UPCONVERT = 'UPCONVERT'
      DISABLED = 'DISABLED'
    end

    # If your input captions are SCC, SMI, SRT, STL, TTML, WebVTT, or IMSC 1.1 in an xml file, specify the URI of the input caption source file. If your caption source is IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings.
    # @!attribute byte_rate_limit
    #   Choose whether to limit the byte rate at which your SCC input captions are inserted into your output. To not limit the caption rate: We recommend that you keep the default value, Disabled. MediaConvert inserts captions in your output according to the byte rates listed in the EIA-608 specification, typically 2 or 3 caption bytes per frame depending on your output frame rate. To limit your output caption rate: Choose Enabled. Choose this option if your downstream systems require a maximum of 2 caption bytes per frame. Note that this setting has no effect when your output frame rate is 30 or 60.
    #   @return [String]
    # @!attribute convert608_to708
    #   Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert, MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.
    #   @return [String]
    # @!attribute convert_paint_to_pop
    #   Choose the presentation style of your input SCC captions. To use the same presentation style as your input: Keep the default value, Disabled. To convert paint-on captions to pop-on: Choose Enabled. We also recommend that you choose Enabled if you notice additional repeated lines in your output captions.
    #   @return [String]
    # @!attribute framerate
    #   Ignore this setting unless your input captions format is SCC. To have the service compensate for differing frame rates between your input captions and input video, specify the frame rate of the captions file. Specify this value as a fraction. For example, you might specify 24 / 1 for 24 fps, 25 / 1 for 25 fps, 24000 / 1001 for 23.976 fps, or 30000 / 1001 for 29.97 fps.
    #   @return [Types::CaptionSourceFramerate]
    # @!attribute source_file
    #   External caption file used for loading captions. Accepted file extensions are 'scc', 'ttml', 'dfxp', 'stl', 'srt', 'xml', 'smi', 'webvtt', and 'vtt'.
    #   @return [String]
    # @!attribute time_delta
    #   Optional. Use this setting when you need to adjust the sync between your sidecar captions and your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/time-delta-use-cases.html. Enter a positive or negative number to modify the times in the captions file. For example, type 15 to add 15 seconds to all the times in the captions file. Type -5 to subtract 5 seconds from the times in the captions file. You can optionally specify your time delta in milliseconds instead of seconds. When you do so, set the related setting, Time delta units to Milliseconds. Note that, when you specify a time delta for timecode-based caption sources, such as SCC and STL, and your time delta isn't a multiple of the input frame rate, MediaConvert snaps the captions to the nearest frame. For example, when your input video frame rate is 25 fps and you specify 1010ms for time delta, MediaConvert delays your captions by 1000 ms.
    #   @return [Integer]
    # @!attribute time_delta_units
    #   When you use the setting Time delta to adjust the sync between your sidecar captions and your video, use this setting to specify the units for the delta that you specify. When you don't specify a value for Time delta units, MediaConvert uses seconds by default.
    #   @return [String]
    # @!attribute upconvert_stl_to_teletext
    #   Specify whether this set of input captions appears in your outputs in both STL and Teletext format. If you choose Upconvert, MediaConvert includes the captions data in two ways: it passes the STL data through using the Teletext compatibility bytes fields of the Teletext wrapper, and it also translates the STL data into Teletext.
    #   @return [String]
    class FileSourceSettings < Struct.new(
      :byte_rate_limit,
      :convert608_to708,
      :convert_paint_to_pop,
      :framerate,
      :source_file,
      :time_delta,
      :time_delta_units,
      :upconvert_stl_to_teletext,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # When you use the setting Time delta to adjust the sync between your sidecar captions and your video, use this setting to specify the units for the delta that you specify. When you don't specify a value for Time delta units, MediaConvert uses seconds by default.
    module FileSourceTimeDeltaUnits
      SECONDS = 'SECONDS'
      MILLISECONDS = 'MILLISECONDS'
    end

    # Required when you set Codec, under AudioDescriptions>CodecSettings, to the value FLAC.
    # @!attribute bit_depth
    #   Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
    #   @return [Integer]
    # @!attribute channels
    #   Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are between 1 and 8.
    #   @return [Integer]
    # @!attribute sample_rate
    #   Sample rate in Hz.
    #   @return [Integer]
    class FlacSettings < Struct.new(
      :bit_depth,
      :channels,
      :sample_rate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Provide the font script, using an ISO 15924 script code, if the LanguageCode is not sufficient for determining the script type. Where LanguageCode or CustomLanguageCode is sufficient, use "AUTOMATIC" or leave unset.
    module FontScript
      AUTOMATIC = 'AUTOMATIC'
      HANS = 'HANS'
      HANT = 'HANT'
    end

    # You don't have permissions for this action with the credentials you sent.
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Force include renditions to specify one or more resolutions to include your ABR stack. * (Recommended) To optimize automated ABR, specify as few resolutions as possible. * (Required) The number of resolutions that you specify must be equal to, or less than, the Max renditions setting. * If you specify a Min top rendition size rule, specify at least one resolution that is equal to, or greater than, Min top rendition size. * If you specify a Min bottom rendition size rule, only specify resolutions that are equal to, or greater than, Min bottom rendition size. * If you specify a Force include renditions rule, do not specify a separate rule for Allowed renditions. * Note: The ABR stack may include other resolutions that you do not specify here, depending on the Max renditions setting.
    # @!attribute height
    #   Use Height to define the video resolution height, in pixels, for this rule.
    #   @return [Integer]
    # @!attribute width
    #   Use Width to define the video resolution width, in pixels, for this rule.
    #   @return [Integer]
    class ForceIncludeRenditionSize < Struct.new(
      :height,
      :width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Format
      mp4 = 'mp4'
      quicktime = 'quicktime'
      matroska = 'matroska'
      webm = 'webm'
      mxf = 'mxf'
    end

    # Required when you set Codec to the value FRAME_CAPTURE.
    # @!attribute framerate_denominator
    #   Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.n.jpg where n is the 0-based sequence number of each Capture.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.NNNNNNN.jpg where N is the 0-based frame sequence number zero padded to 7 decimal places.
    #   @return [Integer]
    # @!attribute max_captures
    #   Maximum number of captures (encoded jpg output files).
    #   @return [Integer]
    # @!attribute quality
    #   JPEG Quality - a higher value equals higher quality.
    #   @return [Integer]
    class FrameCaptureSettings < Struct.new(
      :framerate_denominator,
      :framerate_numerator,
      :max_captures,
      :quality,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # * PSNR: Peak Signal-to-Noise Ratio * SSIM: Structural Similarity Index Measure * MS_SSIM: Multi-Scale Similarity Index Measure * PSNR_HVS: Peak Signal-to-Noise Ratio, Human Visual System * VMAF: Video Multi-Method Assessment Fusion * QVBR: Quality-Defined Variable Bitrate. This option is only available when your output uses the QVBR rate control mode.
    module FrameMetricType
      PSNR = 'PSNR'
      SSIM = 'SSIM'
      MS_SSIM = 'MS_SSIM'
      PSNR_HVS = 'PSNR_HVS'
      VMAF = 'VMAF'
      QVBR = 'QVBR'
    end

    # The frame rate of the video or audio track.
    # @!attribute denominator
    #   The denominator, or bottom number, in the fractional frame rate. For example, if your frame rate is 24000 / 1001 (23.976 frames per second), then the denominator would be 1001.
    #   @return [Integer]
    # @!attribute numerator
    #   The numerator, or top number, in the fractional frame rate. For example, if your frame rate is 24000 / 1001 (23.976 frames per second), then the numerator would be 24000.
    #   @return [Integer]
    class FrameRate < Struct.new(
      :denominator,
      :numerator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   the job ID of the job.
    #   @return [String]
    class GetJobRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job
    #   Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #   @return [Types::Job]
    class GetJobResponse < Struct.new(
      :job,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the job template.
    #   @return [String]
    class GetJobTemplateRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_template
    #   A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
    #   @return [Types::JobTemplate]
    class GetJobTemplateResponse < Struct.new(
      :job_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetPolicyRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #   @return [Types::Policy]
    class GetPolicyResponse < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the preset.
    #   @return [String]
    class GetPresetRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute preset
    #   A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
    #   @return [Types::Preset]
    class GetPresetResponse < Struct.new(
      :preset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   The name of the queue that you want information about.
    #   @return [String]
    class GetQueueRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute queue
    #   You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.
    #   @return [Types::Queue]
    class GetQueueResponse < Struct.new(
      :queue,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
    module GifFramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use Drop duplicate (DUPLICATE_DROP) conversion. When you choose Interpolate (INTERPOLATE) instead, the conversion produces smoother motion.
    module GifFramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
    end

    # Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value GIF
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use Drop duplicate (DUPLICATE_DROP) conversion. When you choose Interpolate (INTERPOLATE) instead, the conversion produces smoother motion.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    class GifSettings < Struct.new(
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Keep the default value, Auto, for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set H264AdaptiveQuantization to a value other than Auto. Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization to Off. Related settings: The value that you choose here applies to the following settings: H264FlickerAdaptiveQuantization, H264SpatialAdaptiveQuantization, and H264TemporalAdaptiveQuantization.
    module H264AdaptiveQuantization
      OFF = 'OFF'
      AUTO = 'AUTO'
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
      HIGHER = 'HIGHER'
      MAX = 'MAX'
    end

    # Specify an H.264 level that is consistent with your output video settings. If you aren't sure what level to specify, choose Auto.
    module H264CodecLevel
      AUTO = 'AUTO'
      LEVEL_1 = 'LEVEL_1'
      LEVEL_1_1 = 'LEVEL_1_1'
      LEVEL_1_2 = 'LEVEL_1_2'
      LEVEL_1_3 = 'LEVEL_1_3'
      LEVEL_2 = 'LEVEL_2'
      LEVEL_2_1 = 'LEVEL_2_1'
      LEVEL_2_2 = 'LEVEL_2_2'
      LEVEL_3 = 'LEVEL_3'
      LEVEL_3_1 = 'LEVEL_3_1'
      LEVEL_3_2 = 'LEVEL_3_2'
      LEVEL_4 = 'LEVEL_4'
      LEVEL_4_1 = 'LEVEL_4_1'
      LEVEL_4_2 = 'LEVEL_4_2'
      LEVEL_5 = 'LEVEL_5'
      LEVEL_5_1 = 'LEVEL_5_1'
      LEVEL_5_2 = 'LEVEL_5_2'
    end

    # H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License.
    module H264CodecProfile
      BASELINE = 'BASELINE'
      HIGH = 'HIGH'
      HIGH_10BIT = 'HIGH_10BIT'
      HIGH_422 = 'HIGH_422'
      HIGH_422_10BIT = 'HIGH_422_10BIT'
      MAIN = 'MAIN'
    end

    # Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames.
    module H264DynamicSubGop
      ADAPTIVE = 'ADAPTIVE'
      STATIC = 'STATIC'
    end

    # Optionally include or suppress markers at the end of your output that signal the end of the video stream. To include end of stream markers: Leave blank or keep the default value, Include. To not include end of stream markers: Choose Suppress. This is useful when your output will be inserted into another stream.
    module H264EndOfStreamMarkers
      INCLUDE = 'INCLUDE'
      SUPPRESS = 'SUPPRESS'
    end

    # Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.
    module H264EntropyEncoding
      CABAC = 'CABAC'
      CAVLC = 'CAVLC'
    end

    # The video encoding method for your MPEG-4 AVC output. Keep the default value, PAFF, to have MediaConvert use PAFF encoding for interlaced outputs. Choose Force field to disable PAFF encoding and create separate interlaced fields. Choose MBAFF to disable PAFF and have MediaConvert use MBAFF encoding for interlaced outputs.
    module H264FieldEncoding
      PAFF = 'PAFF'
      FORCE_FIELD = 'FORCE_FIELD'
      MBAFF = 'MBAFF'
    end

    # Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264FlickerAdaptiveQuantization is Disabled. Change this value to Enabled to reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. To manually enable or disable H264FlickerAdaptiveQuantization, you must set Adaptive quantization to a value other than AUTO.
    module H264FlickerAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    module H264FramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    module H264FramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
      FRAMEFORMER = 'FRAMEFORMER'
      MAINTAIN_FRAME_COUNT = 'MAINTAIN_FRAME_COUNT'
    end

    # Specify whether to allow B-frames to be referenced by other frame types. To use reference B-frames when your GOP structure has 1 or more B-frames: Leave blank or keep the default value Enabled. We recommend that you choose Enabled to help improve the video quality of your output relative to its bitrate. To not use reference B-frames: Choose Disabled.
    module H264GopBReference
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Specify how the transcoder determines GOP size for this output. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, choose Auto and and leave GOP size blank. By default, if you don't specify GOP mode control, MediaConvert will use automatic behavior. If your output group specifies HLS, DASH, or CMAF, set GOP mode control to Auto and leave GOP size blank in each output in your output group. To explicitly specify the GOP length, choose Specified, frames or Specified, seconds and then provide the GOP length in the related setting GOP size.
    module H264GopSizeUnits
      FRAMES = 'FRAMES'
      SECONDS = 'SECONDS'
      AUTO = 'AUTO'
    end

    # Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    module H264InterlaceMode
      PROGRESSIVE = 'PROGRESSIVE'
      TOP_FIELD = 'TOP_FIELD'
      BOTTOM_FIELD = 'BOTTOM_FIELD'
      FOLLOW_TOP_FIELD = 'FOLLOW_TOP_FIELD'
      FOLLOW_BOTTOM_FIELD = 'FOLLOW_BOTTOM_FIELD'
    end

    # Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source, uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    module H264ParControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # The Quality tuning level you choose represents a trade-off between the encoding speed of your job and the output video quality. For the fastest encoding speed at the cost of video quality: Choose Single pass. For a good balance between encoding speed and video quality: Leave blank or keep the default value Single pass HQ. For the best video quality, at the cost of encoding speed: Choose Multi pass HQ. MediaConvert performs an analysis pass on your input followed by an encoding pass. Outputs that use this feature incur pro-tier pricing.
    module H264QualityTuningLevel
      SINGLE_PASS = 'SINGLE_PASS'
      SINGLE_PASS_HQ = 'SINGLE_PASS_HQ'
      MULTI_PASS_HQ = 'MULTI_PASS_HQ'
    end

    # Settings for quality-defined variable bitrate encoding with the H.264 codec. Use these settings only when you set QVBR for Rate control mode.
    # @!attribute max_average_bitrate
    #   Use this setting only when Rate control mode is QVBR and Quality tuning level is Multi-pass HQ. For Max average bitrate values suited to the complexity of your input video, the service limits the average bitrate of the video part of this output to the value that you choose. That is, the total size of the video element is less than or equal to the value you set multiplied by the number of seconds of encoded output.
    #   @return [Integer]
    # @!attribute qvbr_quality_level
    #   Use this setting only when you set Rate control mode to QVBR. Specify the target quality level for this output. MediaConvert determines the right number of bits to use for each part of the video to maintain the video quality that you specify. When you keep the default value, AUTO, MediaConvert picks a quality level for you, based on characteristics of your input video. If you prefer to specify a quality level, specify a number from 1 through 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33.
    #   @return [Integer]
    # @!attribute qvbr_quality_level_fine_tune
    #   Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33.
    #   @return [Float]
    class H264QvbrSettings < Struct.new(
      :max_average_bitrate,
      :qvbr_quality_level,
      :qvbr_quality_level_fine_tune,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
    module H264RateControlMode
      VBR = 'VBR'
      CBR = 'CBR'
      QVBR = 'QVBR'
    end

    # Places a PPS header on each encoded picture, even if repeated.
    module H264RepeatPps
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Specify whether to apply Saliency aware encoding to your output. Use to improve the perceptual video quality of your output by allocating more encoding bits to the prominent or noticeable parts of your content. To apply saliency aware encoding, when possible: We recommend that you choose Preferred. The effects of Saliency aware encoding are best seen in lower bitrate outputs. When you choose Preferred, note that Saliency aware encoding will only apply to outputs that are 720p or higher in resolution. To not apply saliency aware encoding, prioritizing encoding speed over perceptual video quality: Choose Disabled.
    module H264SaliencyAwareEncoding
      DISABLED = 'DISABLED'
      PREFERRED = 'PREFERRED'
    end

    # Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    module H264ScanTypeConversionMode
      INTERLACED = 'INTERLACED'
      INTERLACED_OPTIMIZE = 'INTERLACED_OPTIMIZE'
    end

    # Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.
    module H264SceneChangeDetect
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
      TRANSITION_DETECTION = 'TRANSITION_DETECTION'
    end

    # Required when you set Codec to the value H_264.
    # @!attribute adaptive_quantization
    #   Keep the default value, Auto, for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set H264AdaptiveQuantization to a value other than Auto. Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization to Off. Related settings: The value that you choose here applies to the following settings: H264FlickerAdaptiveQuantization, H264SpatialAdaptiveQuantization, and H264TemporalAdaptiveQuantization.
    #   @return [String]
    # @!attribute bandwidth_reduction_filter
    #   The Bandwidth reduction filter increases the video quality of your output relative to its bitrate. Use to lower the bitrate of your constant quality QVBR output, with little or no perceptual decrease in quality. Or, use to increase the video quality of outputs with other rate control modes relative to the bitrate that you specify. Bandwidth reduction increases further when your input is low quality or noisy. Outputs that use this feature incur pro-tier pricing. When you include Bandwidth reduction filter, you cannot include the Noise reducer preprocessor.
    #   @return [Types::BandwidthReductionFilter]
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
    #   @return [Integer]
    # @!attribute codec_level
    #   Specify an H.264 level that is consistent with your output video settings. If you aren't sure what level to specify, choose Auto.
    #   @return [String]
    # @!attribute codec_profile
    #   H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License.
    #   @return [String]
    # @!attribute dynamic_sub_gop
    #   Specify whether to allow the number of B-frames in your output GOP structure to vary or not depending on your input video content. To improve the subjective video quality of your output that has high-motion content: Leave blank or keep the default value Adaptive. MediaConvert will use fewer B-frames for high-motion video content than low-motion content. The maximum number of B- frames is limited by the value that you choose for B-frames between reference frames. To use the same number B-frames for all types of content: Choose Static.
    #   @return [String]
    # @!attribute end_of_stream_markers
    #   Optionally include or suppress markers at the end of your output that signal the end of the video stream. To include end of stream markers: Leave blank or keep the default value, Include. To not include end of stream markers: Choose Suppress. This is useful when your output will be inserted into another stream.
    #   @return [String]
    # @!attribute entropy_encoding
    #   Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.
    #   @return [String]
    # @!attribute field_encoding
    #   The video encoding method for your MPEG-4 AVC output. Keep the default value, PAFF, to have MediaConvert use PAFF encoding for interlaced outputs. Choose Force field to disable PAFF encoding and create separate interlaced fields. Choose MBAFF to disable PAFF and have MediaConvert use MBAFF encoding for interlaced outputs.
    #   @return [String]
    # @!attribute flicker_adaptive_quantization
    #   Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264FlickerAdaptiveQuantization is Disabled. Change this value to Enabled to reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. To manually enable or disable H264FlickerAdaptiveQuantization, you must set Adaptive quantization to a value other than AUTO.
    #   @return [String]
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute gop_b_reference
    #   Specify whether to allow B-frames to be referenced by other frame types. To use reference B-frames when your GOP structure has 1 or more B-frames: Leave blank or keep the default value Enabled. We recommend that you choose Enabled to help improve the video quality of your output relative to its bitrate. To not use reference B-frames: Choose Disabled.
    #   @return [String]
    # @!attribute gop_closed_cadence
    #   Specify the relative frequency of open to closed GOPs in this output. For example, if you want to allow four open GOPs and then require a closed GOP, set this value to 5. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. In the console, do this by keeping the default empty value. If you do explicitly specify a value, for segmented outputs, don't set this value to 0.
    #   @return [Integer]
    # @!attribute gop_size
    #   Use this setting only when you set GOP mode control to Specified, frames or Specified, seconds. Specify the GOP length using a whole number of frames or a decimal value of seconds. MediaConvert will interpret this value as frames or seconds depending on the value you choose for GOP mode control. If you want to allow MediaConvert to automatically determine GOP size, leave GOP size blank and set GOP mode control to Auto. If your output group specifies HLS, DASH, or CMAF, leave GOP size blank and set GOP mode control to Auto in each output in your output group.
    #   @return [Float]
    # @!attribute gop_size_units
    #   Specify how the transcoder determines GOP size for this output. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, choose Auto and and leave GOP size blank. By default, if you don't specify GOP mode control, MediaConvert will use automatic behavior. If your output group specifies HLS, DASH, or CMAF, set GOP mode control to Auto and leave GOP size blank in each output in your output group. To explicitly specify the GOP length, choose Specified, frames or Specified, seconds and then provide the GOP length in the related setting GOP size.
    #   @return [String]
    # @!attribute hrd_buffer_final_fill_percentage
    #   If your downstream systems have strict buffer requirements: Specify the minimum percentage of the HRD buffer that's available at the end of each encoded video segment. For the best video quality: Set to 0 or leave blank to automatically determine the final buffer fill percentage.
    #   @return [Integer]
    # @!attribute hrd_buffer_initial_fill_percentage
    #   Percentage of the buffer that should initially be filled (HRD buffer model).
    #   @return [Integer]
    # @!attribute hrd_buffer_size
    #   Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
    #   @return [Integer]
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #   @return [String]
    # @!attribute max_bitrate
    #   Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
    #   @return [Integer]
    # @!attribute min_i_interval
    #   Specify the minimum number of frames allowed between two IDR-frames in your output. This includes frames created at the start of a GOP or a scene change. Use Min I-Interval to improve video compression by varying GOP size when two IDR-frames would be created near each other. For example, if a regular cadence-driven IDR-frame would fall within 5 frames of a scene-change IDR-frame, and you set Min I-interval to 5, then the encoder would only write an IDR-frame for the scene-change. In this way, one GOP is shortened or extended. If a cadence-driven IDR-frame would be further than 5 frames from a scene-change IDR-frame, then the encoder leaves all IDR-frames in place. To use an automatically determined interval: We recommend that you keep this value blank. This allows for MediaConvert to use an optimal setting according to the characteristics of your input video, and results in better video compression. To manually specify an interval: Enter a value from 1 to 30. Use when your downstream systems have specific GOP size requirements. To disable GOP size variance: Enter 0. MediaConvert will only create IDR-frames at the start of your output's cadence-driven GOP. Use when your downstream systems require a regular GOP size.
    #   @return [Integer]
    # @!attribute number_b_frames_between_reference_frames
    #   Specify the number of B-frames between reference frames in this output. For the best video quality: Leave blank. MediaConvert automatically determines the number of B-frames to use based on the characteristics of your input video. To manually specify the number of B-frames between reference frames: Enter an integer from 0 to 7.
    #   @return [Integer]
    # @!attribute number_reference_frames
    #   Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
    #   @return [Integer]
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source, uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    #   @return [String]
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #   @return [Integer]
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #   @return [Integer]
    # @!attribute per_frame_metrics
    #   Optionally choose one or more per frame metric reports to generate along with your output. You can use these metrics to analyze your video output according to one or more commonly used image quality metrics. You can specify per frame metrics for output groups or for individual outputs. When you do, MediaConvert writes a CSV (Comma-Separated Values) file to your S3 output destination, named after the output name and metric type. For example: videofile_PSNR.csv Jobs that generate per frame metrics will take longer to complete, depending on the resolution and complexity of your output. For example, some 4K jobs might take up to twice as long to complete. Note that when analyzing the video quality of your output, or when comparing the video quality of multiple different outputs, we generally also recommend a detailed visual review in a controlled environment. You can choose from the following per frame metrics: * PSNR: Peak Signal-to-Noise Ratio * SSIM: Structural Similarity Index Measure * MS_SSIM: Multi-Scale Similarity Index Measure * PSNR_HVS: Peak Signal-to-Noise Ratio, Human Visual System * VMAF: Video Multi-Method Assessment Fusion * QVBR: Quality-Defined Variable Bitrate. This option is only available when your output uses the QVBR rate control mode.
    #   @return [Array<String>]
    # @!attribute quality_tuning_level
    #   The Quality tuning level you choose represents a trade-off between the encoding speed of your job and the output video quality. For the fastest encoding speed at the cost of video quality: Choose Single pass. For a good balance between encoding speed and video quality: Leave blank or keep the default value Single pass HQ. For the best video quality, at the cost of encoding speed: Choose Multi pass HQ. MediaConvert performs an analysis pass on your input followed by an encoding pass. Outputs that use this feature incur pro-tier pricing.
    #   @return [String]
    # @!attribute qvbr_settings
    #   Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode.
    #   @return [Types::H264QvbrSettings]
    # @!attribute rate_control_mode
    #   Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
    #   @return [String]
    # @!attribute repeat_pps
    #   Places a PPS header on each encoded picture, even if repeated.
    #   @return [String]
    # @!attribute saliency_aware_encoding
    #   Specify whether to apply Saliency aware encoding to your output. Use to improve the perceptual video quality of your output by allocating more encoding bits to the prominent or noticeable parts of your content. To apply saliency aware encoding, when possible: We recommend that you choose Preferred. The effects of Saliency aware encoding are best seen in lower bitrate outputs. When you choose Preferred, note that Saliency aware encoding will only apply to outputs that are 720p or higher in resolution. To not apply saliency aware encoding, prioritizing encoding speed over perceptual video quality: Choose Disabled.
    #   @return [String]
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    #   @return [String]
    # @!attribute scene_change_detect
    #   Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.
    #   @return [String]
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #   @return [Integer]
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25.
    #   @return [String]
    # @!attribute softness
    #   Ignore this setting unless you need to comply with a specification that requires a specific value. If you don't have a specification requirement, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness or by enabling a noise reducer filter. The Softness setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, for flat quantization. Choose the value 1 or 16 to use the default JVT softening quantization matricies from the H.264 specification. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video.
    #   @return [Integer]
    # @!attribute spatial_adaptive_quantization
    #   Only use this setting when you change the default value, Auto, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264SpatialAdaptiveQuantization is Enabled. Keep this default value to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to set H264SpatialAdaptiveQuantization to Disabled. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher. To manually enable or disable H264SpatialAdaptiveQuantization, you must set Adaptive quantization to a value other than AUTO.
    #   @return [String]
    # @!attribute syntax
    #   Produces a bitstream compliant with SMPTE RP-2027.
    #   @return [String]
    # @!attribute telecine
    #   When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine produces a 29.97i output. Soft telecine produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    #   @return [String]
    # @!attribute temporal_adaptive_quantization
    #   Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264TemporalAdaptiveQuantization is Enabled. Keep this default value to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to set H264TemporalAdaptiveQuantization to Disabled. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization. To manually enable or disable H264TemporalAdaptiveQuantization, you must set Adaptive quantization to a value other than AUTO.
    #   @return [String]
    # @!attribute unregistered_sei_timecode
    #   Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
    #   @return [String]
    # @!attribute write_mp4_packaging_type
    #   Specify how SPS and PPS NAL units are written in your output MP4 container, according to ISO/IEC 14496-15. If the location of these parameters doesn't matter in your workflow: Keep the default value, AVC1. MediaConvert writes SPS and PPS NAL units in the sample description ('stsd') box (but not into samples directly). To write SPS and PPS NAL units directly into samples (but not in the 'stsd' box): Choose AVC3. When you do, note that your output might not play properly with some downstream systems or players.
    #   @return [String]
    class H264Settings < Struct.new(
      :adaptive_quantization,
      :bandwidth_reduction_filter,
      :bitrate,
      :codec_level,
      :codec_profile,
      :dynamic_sub_gop,
      :end_of_stream_markers,
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
      :hrd_buffer_final_fill_percentage,
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
      :per_frame_metrics,
      :quality_tuning_level,
      :qvbr_settings,
      :rate_control_mode,
      :repeat_pps,
      :saliency_aware_encoding,
      :scan_type_conversion_mode,
      :scene_change_detect,
      :slices,
      :slow_pal,
      :softness,
      :spatial_adaptive_quantization,
      :syntax,
      :telecine,
      :temporal_adaptive_quantization,
      :unregistered_sei_timecode,
      :write_mp4_packaging_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25.
    module H264SlowPal
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Only use this setting when you change the default value, Auto, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264SpatialAdaptiveQuantization is Enabled. Keep this default value to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to set H264SpatialAdaptiveQuantization to Disabled. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher. To manually enable or disable H264SpatialAdaptiveQuantization, you must set Adaptive quantization to a value other than AUTO.
    module H264SpatialAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Produces a bitstream compliant with SMPTE RP-2027.
    module H264Syntax
      DEFAULT = 'DEFAULT'
      RP2027 = 'RP2027'
    end

    # When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine produces a 29.97i output. Soft telecine produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    module H264Telecine
      NONE = 'NONE'
      SOFT = 'SOFT'
      HARD = 'HARD'
    end

    # Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264TemporalAdaptiveQuantization is Enabled. Keep this default value to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to set H264TemporalAdaptiveQuantization to Disabled. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization. To manually enable or disable H264TemporalAdaptiveQuantization, you must set Adaptive quantization to a value other than AUTO.
    module H264TemporalAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
    module H264UnregisteredSeiTimecode
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Specify how SPS and PPS NAL units are written in your output MP4 container, according to ISO/IEC 14496-15. If the location of these parameters doesn't matter in your workflow: Keep the default value, AVC1. MediaConvert writes SPS and PPS NAL units in the sample description ('stsd') box (but not into samples directly). To write SPS and PPS NAL units directly into samples (but not in the 'stsd' box): Choose AVC3. When you do, note that your output might not play properly with some downstream systems or players.
    module H264WriteMp4PackagingType
      AVC1 = 'AVC1'
      AVC3 = 'AVC3'
    end

    # When you set Adaptive Quantization to Auto, or leave blank, MediaConvert automatically applies quantization to improve the video quality of your output. Set Adaptive Quantization to Low, Medium, High, Higher, or Max to manually control the strength of the quantization filter. When you do, you can specify a value for Spatial Adaptive Quantization, Temporal Adaptive Quantization, and Flicker Adaptive Quantization, to further control the quantization filter. Set Adaptive Quantization to Off to apply no quantization to your output.
    module H265AdaptiveQuantization
      OFF = 'OFF'
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
      HIGHER = 'HIGHER'
      MAX = 'MAX'
      AUTO = 'AUTO'
    end

    # Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).
    module H265AlternateTransferFunctionSei
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # H.265 Level.
    module H265CodecLevel
      AUTO = 'AUTO'
      LEVEL_1 = 'LEVEL_1'
      LEVEL_2 = 'LEVEL_2'
      LEVEL_2_1 = 'LEVEL_2_1'
      LEVEL_3 = 'LEVEL_3'
      LEVEL_3_1 = 'LEVEL_3_1'
      LEVEL_4 = 'LEVEL_4'
      LEVEL_4_1 = 'LEVEL_4_1'
      LEVEL_5 = 'LEVEL_5'
      LEVEL_5_1 = 'LEVEL_5_1'
      LEVEL_5_2 = 'LEVEL_5_2'
      LEVEL_6 = 'LEVEL_6'
      LEVEL_6_1 = 'LEVEL_6_1'
      LEVEL_6_2 = 'LEVEL_6_2'
    end

    # Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so "Main/High" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License.
    module H265CodecProfile
      MAIN_MAIN = 'MAIN_MAIN'
      MAIN_HIGH = 'MAIN_HIGH'
      MAIN10_MAIN = 'MAIN10_MAIN'
      MAIN10_HIGH = 'MAIN10_HIGH'
      MAIN_422_8BIT_MAIN = 'MAIN_422_8BIT_MAIN'
      MAIN_422_8BIT_HIGH = 'MAIN_422_8BIT_HIGH'
      MAIN_422_10BIT_MAIN = 'MAIN_422_10BIT_MAIN'
      MAIN_422_10BIT_HIGH = 'MAIN_422_10BIT_HIGH'
    end

    # Use Deblocking to improve the video quality of your output by smoothing the edges of macroblock artifacts created during video compression. To reduce blocking artifacts at block boundaries, and improve overall video quality: Keep the default value, Enabled. To not apply any deblocking: Choose Disabled. Visible block edge artifacts might appear in the output, especially at lower bitrates.
    module H265Deblocking
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames.
    module H265DynamicSubGop
      ADAPTIVE = 'ADAPTIVE'
      STATIC = 'STATIC'
    end

    # Optionally include or suppress markers at the end of your output that signal the end of the video stream. To include end of stream markers: Leave blank or keep the default value, Include. To not include end of stream markers: Choose Suppress. This is useful when your output will be inserted into another stream.
    module H265EndOfStreamMarkers
      INCLUDE = 'INCLUDE'
      SUPPRESS = 'SUPPRESS'
    end

    # Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set adaptiveQuantization to a value other than Off.
    module H265FlickerAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    module H265FramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    module H265FramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
      FRAMEFORMER = 'FRAMEFORMER'
      MAINTAIN_FRAME_COUNT = 'MAINTAIN_FRAME_COUNT'
    end

    # Specify whether to allow B-frames to be referenced by other frame types. To use reference B-frames when your GOP structure has 1 or more B-frames: Leave blank or keep the default value Enabled. We recommend that you choose Enabled to help improve the video quality of your output relative to its bitrate. To not use reference B-frames: Choose Disabled.
    module H265GopBReference
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Specify how the transcoder determines GOP size for this output. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, choose Auto and and leave GOP size blank. By default, if you don't specify GOP mode control, MediaConvert will use automatic behavior. If your output group specifies HLS, DASH, or CMAF, set GOP mode control to Auto and leave GOP size blank in each output in your output group. To explicitly specify the GOP length, choose Specified, frames or Specified, seconds and then provide the GOP length in the related setting GOP size.
    module H265GopSizeUnits
      FRAMES = 'FRAMES'
      SECONDS = 'SECONDS'
      AUTO = 'AUTO'
    end

    # Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    module H265InterlaceMode
      PROGRESSIVE = 'PROGRESSIVE'
      TOP_FIELD = 'TOP_FIELD'
      BOTTOM_FIELD = 'BOTTOM_FIELD'
      FOLLOW_TOP_FIELD = 'FOLLOW_TOP_FIELD'
      FOLLOW_BOTTOM_FIELD = 'FOLLOW_BOTTOM_FIELD'
    end

    # Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source, uses the PAR from your input video for your output. To specify a different PAR, choose any value other than Follow source. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    module H265ParControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    module H265QualityTuningLevel
      SINGLE_PASS = 'SINGLE_PASS'
      SINGLE_PASS_HQ = 'SINGLE_PASS_HQ'
      MULTI_PASS_HQ = 'MULTI_PASS_HQ'
    end

    # Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode.
    # @!attribute max_average_bitrate
    #   Use this setting only when Rate control mode is QVBR and Quality tuning level is Multi-pass HQ. For Max average bitrate values suited to the complexity of your input video, the service limits the average bitrate of the video part of this output to the value that you choose. That is, the total size of the video element is less than or equal to the value you set multiplied by the number of seconds of encoded output.
    #   @return [Integer]
    # @!attribute qvbr_quality_level
    #   Use this setting only when you set Rate control mode to QVBR. Specify the target quality level for this output. MediaConvert determines the right number of bits to use for each part of the video to maintain the video quality that you specify. When you keep the default value, AUTO, MediaConvert picks a quality level for you, based on characteristics of your input video. If you prefer to specify a quality level, specify a number from 1 through 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33.
    #   @return [Integer]
    # @!attribute qvbr_quality_level_fine_tune
    #   Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33.
    #   @return [Float]
    class H265QvbrSettings < Struct.new(
      :max_average_bitrate,
      :qvbr_quality_level,
      :qvbr_quality_level_fine_tune,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
    module H265RateControlMode
      VBR = 'VBR'
      CBR = 'CBR'
      QVBR = 'QVBR'
    end

    # Specify Sample Adaptive Offset (SAO) filter strength. Adaptive mode dynamically selects best strength based on content
    module H265SampleAdaptiveOffsetFilterMode
      DEFAULT = 'DEFAULT'
      ADAPTIVE = 'ADAPTIVE'
      OFF = 'OFF'
    end

    # Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    module H265ScanTypeConversionMode
      INTERLACED = 'INTERLACED'
      INTERLACED_OPTIMIZE = 'INTERLACED_OPTIMIZE'
    end

    # Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.
    module H265SceneChangeDetect
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
      TRANSITION_DETECTION = 'TRANSITION_DETECTION'
    end

    # Settings for H265 codec
    # @!attribute adaptive_quantization
    #   When you set Adaptive Quantization to Auto, or leave blank, MediaConvert automatically applies quantization to improve the video quality of your output. Set Adaptive Quantization to Low, Medium, High, Higher, or Max to manually control the strength of the quantization filter. When you do, you can specify a value for Spatial Adaptive Quantization, Temporal Adaptive Quantization, and Flicker Adaptive Quantization, to further control the quantization filter. Set Adaptive Quantization to Off to apply no quantization to your output.
    #   @return [String]
    # @!attribute alternate_transfer_function_sei
    #   Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).
    #   @return [String]
    # @!attribute bandwidth_reduction_filter
    #   The Bandwidth reduction filter increases the video quality of your output relative to its bitrate. Use to lower the bitrate of your constant quality QVBR output, with little or no perceptual decrease in quality. Or, use to increase the video quality of outputs with other rate control modes relative to the bitrate that you specify. Bandwidth reduction increases further when your input is low quality or noisy. Outputs that use this feature incur pro-tier pricing. When you include Bandwidth reduction filter, you cannot include the Noise reducer preprocessor.
    #   @return [Types::BandwidthReductionFilter]
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
    #   @return [Integer]
    # @!attribute codec_level
    #   H.265 Level.
    #   @return [String]
    # @!attribute codec_profile
    #   Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so "Main/High" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License.
    #   @return [String]
    # @!attribute deblocking
    #   Use Deblocking to improve the video quality of your output by smoothing the edges of macroblock artifacts created during video compression. To reduce blocking artifacts at block boundaries, and improve overall video quality: Keep the default value, Enabled. To not apply any deblocking: Choose Disabled. Visible block edge artifacts might appear in the output, especially at lower bitrates.
    #   @return [String]
    # @!attribute dynamic_sub_gop
    #   Specify whether to allow the number of B-frames in your output GOP structure to vary or not depending on your input video content. To improve the subjective video quality of your output that has high-motion content: Leave blank or keep the default value Adaptive. MediaConvert will use fewer B-frames for high-motion video content than low-motion content. The maximum number of B- frames is limited by the value that you choose for B-frames between reference frames. To use the same number B-frames for all types of content: Choose Static.
    #   @return [String]
    # @!attribute end_of_stream_markers
    #   Optionally include or suppress markers at the end of your output that signal the end of the video stream. To include end of stream markers: Leave blank or keep the default value, Include. To not include end of stream markers: Choose Suppress. This is useful when your output will be inserted into another stream.
    #   @return [String]
    # @!attribute flicker_adaptive_quantization
    #   Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set adaptiveQuantization to a value other than Off.
    #   @return [String]
    # @!attribute framerate_control
    #   Use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute gop_b_reference
    #   Specify whether to allow B-frames to be referenced by other frame types. To use reference B-frames when your GOP structure has 1 or more B-frames: Leave blank or keep the default value Enabled. We recommend that you choose Enabled to help improve the video quality of your output relative to its bitrate. To not use reference B-frames: Choose Disabled.
    #   @return [String]
    # @!attribute gop_closed_cadence
    #   Specify the relative frequency of open to closed GOPs in this output. For example, if you want to allow four open GOPs and then require a closed GOP, set this value to 5. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, do this by keeping the default empty value. If you do explicitly specify a value, for segmented outputs, don't set this value to 0.
    #   @return [Integer]
    # @!attribute gop_size
    #   Use this setting only when you set GOP mode control to Specified, frames or Specified, seconds. Specify the GOP length using a whole number of frames or a decimal value of seconds. MediaConvert will interpret this value as frames or seconds depending on the value you choose for GOP mode control. If you want to allow MediaConvert to automatically determine GOP size, leave GOP size blank and set GOP mode control to Auto. If your output group specifies HLS, DASH, or CMAF, leave GOP size blank and set GOP mode control to Auto in each output in your output group.
    #   @return [Float]
    # @!attribute gop_size_units
    #   Specify how the transcoder determines GOP size for this output. We recommend that you have the transcoder automatically choose this value for you based on characteristics of your input video. To enable this automatic behavior, choose Auto and and leave GOP size blank. By default, if you don't specify GOP mode control, MediaConvert will use automatic behavior. If your output group specifies HLS, DASH, or CMAF, set GOP mode control to Auto and leave GOP size blank in each output in your output group. To explicitly specify the GOP length, choose Specified, frames or Specified, seconds and then provide the GOP length in the related setting GOP size.
    #   @return [String]
    # @!attribute hrd_buffer_final_fill_percentage
    #   If your downstream systems have strict buffer requirements: Specify the minimum percentage of the HRD buffer that's available at the end of each encoded video segment. For the best video quality: Set to 0 or leave blank to automatically determine the final buffer fill percentage.
    #   @return [Integer]
    # @!attribute hrd_buffer_initial_fill_percentage
    #   Percentage of the buffer that should initially be filled (HRD buffer model).
    #   @return [Integer]
    # @!attribute hrd_buffer_size
    #   Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
    #   @return [Integer]
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #   @return [String]
    # @!attribute max_bitrate
    #   Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
    #   @return [Integer]
    # @!attribute min_i_interval
    #   Specify the minimum number of frames allowed between two IDR-frames in your output. This includes frames created at the start of a GOP or a scene change. Use Min I-Interval to improve video compression by varying GOP size when two IDR-frames would be created near each other. For example, if a regular cadence-driven IDR-frame would fall within 5 frames of a scene-change IDR-frame, and you set Min I-interval to 5, then the encoder would only write an IDR-frame for the scene-change. In this way, one GOP is shortened or extended. If a cadence-driven IDR-frame would be further than 5 frames from a scene-change IDR-frame, then the encoder leaves all IDR-frames in place. To use an automatically determined interval: We recommend that you keep this value blank. This allows for MediaConvert to use an optimal setting according to the characteristics of your input video, and results in better video compression. To manually specify an interval: Enter a value from 1 to 30. Use when your downstream systems have specific GOP size requirements. To disable GOP size variance: Enter 0. MediaConvert will only create IDR-frames at the start of your output's cadence-driven GOP. Use when your downstream systems require a regular GOP size.
    #   @return [Integer]
    # @!attribute number_b_frames_between_reference_frames
    #   Specify the number of B-frames between reference frames in this output. For the best video quality: Leave blank. MediaConvert automatically determines the number of B-frames to use based on the characteristics of your input video. To manually specify the number of B-frames between reference frames: Enter an integer from 0 to 7.
    #   @return [Integer]
    # @!attribute number_reference_frames
    #   Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
    #   @return [Integer]
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source, uses the PAR from your input video for your output. To specify a different PAR, choose any value other than Follow source. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    #   @return [String]
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #   @return [Integer]
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #   @return [Integer]
    # @!attribute per_frame_metrics
    #   Optionally choose one or more per frame metric reports to generate along with your output. You can use these metrics to analyze your video output according to one or more commonly used image quality metrics. You can specify per frame metrics for output groups or for individual outputs. When you do, MediaConvert writes a CSV (Comma-Separated Values) file to your S3 output destination, named after the output name and metric type. For example: videofile_PSNR.csv Jobs that generate per frame metrics will take longer to complete, depending on the resolution and complexity of your output. For example, some 4K jobs might take up to twice as long to complete. Note that when analyzing the video quality of your output, or when comparing the video quality of multiple different outputs, we generally also recommend a detailed visual review in a controlled environment. You can choose from the following per frame metrics: * PSNR: Peak Signal-to-Noise Ratio * SSIM: Structural Similarity Index Measure * MS_SSIM: Multi-Scale Similarity Index Measure * PSNR_HVS: Peak Signal-to-Noise Ratio, Human Visual System * VMAF: Video Multi-Method Assessment Fusion * QVBR: Quality-Defined Variable Bitrate. This option is only available when your output uses the QVBR rate control mode.
    #   @return [Array<String>]
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    #   @return [String]
    # @!attribute qvbr_settings
    #   Settings for quality-defined variable bitrate encoding with the H.265 codec. Use these settings only when you set QVBR for Rate control mode.
    #   @return [Types::H265QvbrSettings]
    # @!attribute rate_control_mode
    #   Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
    #   @return [String]
    # @!attribute sample_adaptive_offset_filter_mode
    #   Specify Sample Adaptive Offset (SAO) filter strength. Adaptive mode dynamically selects best strength based on content
    #   @return [String]
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    #   @return [String]
    # @!attribute scene_change_detect
    #   Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.
    #   @return [String]
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #   @return [Integer]
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25.
    #   @return [String]
    # @!attribute spatial_adaptive_quantization
    #   Keep the default value, Enabled, to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    #   @return [String]
    # @!attribute telecine
    #   This field applies only if the Streams > Advanced > Framerate field is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer field and the Streams > Advanced > Interlaced Mode field to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.
    #   @return [String]
    # @!attribute temporal_adaptive_quantization
    #   Keep the default value, Enabled, to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization.
    #   @return [String]
    # @!attribute temporal_ids
    #   Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output.
    #   @return [String]
    # @!attribute tiles
    #   Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures.
    #   @return [String]
    # @!attribute unregistered_sei_timecode
    #   Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
    #   @return [String]
    # @!attribute write_mp4_packaging_type
    #   If the location of parameter set NAL units doesn't matter in your workflow, ignore this setting. Use this setting only with CMAF or DASH outputs, or with standalone file outputs in an MPEG-4 container (MP4 outputs). Choose HVC1 to mark your output as HVC1. This makes your output compliant with the following specification: ISO IECJTC1 SC29 N13798 Text ISO/IEC FDIS 14496-15 3rd Edition. For these outputs, the service stores parameter set NAL units in the sample headers but not in the samples directly. For MP4 outputs, when you choose HVC1, your output video might not work properly with some downstream systems and video players. The service defaults to marking your output as HEV1. For these outputs, the service writes parameter set NAL units directly into the samples.
    #   @return [String]
    class H265Settings < Struct.new(
      :adaptive_quantization,
      :alternate_transfer_function_sei,
      :bandwidth_reduction_filter,
      :bitrate,
      :codec_level,
      :codec_profile,
      :deblocking,
      :dynamic_sub_gop,
      :end_of_stream_markers,
      :flicker_adaptive_quantization,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_b_reference,
      :gop_closed_cadence,
      :gop_size,
      :gop_size_units,
      :hrd_buffer_final_fill_percentage,
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
      :per_frame_metrics,
      :quality_tuning_level,
      :qvbr_settings,
      :rate_control_mode,
      :sample_adaptive_offset_filter_mode,
      :scan_type_conversion_mode,
      :scene_change_detect,
      :slices,
      :slow_pal,
      :spatial_adaptive_quantization,
      :telecine,
      :temporal_adaptive_quantization,
      :temporal_ids,
      :tiles,
      :unregistered_sei_timecode,
      :write_mp4_packaging_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25.
    module H265SlowPal
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Keep the default value, Enabled, to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    module H265SpatialAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # This field applies only if the Streams > Advanced > Framerate field is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer field and the Streams > Advanced > Interlaced Mode field to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.
    module H265Telecine
      NONE = 'NONE'
      SOFT = 'SOFT'
      HARD = 'HARD'
    end

    # Keep the default value, Enabled, to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization.
    module H265TemporalAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output.
    module H265TemporalIds
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures.
    module H265Tiles
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
    module H265UnregisteredSeiTimecode
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # If the location of parameter set NAL units doesn't matter in your workflow, ignore this setting. Use this setting only with CMAF or DASH outputs, or with standalone file outputs in an MPEG-4 container (MP4 outputs). Choose HVC1 to mark your output as HVC1. This makes your output compliant with the following specification: ISO IECJTC1 SC29 N13798 Text ISO/IEC FDIS 14496-15 3rd Edition. For these outputs, the service stores parameter set NAL units in the sample headers but not in the samples directly. For MP4 outputs, when you choose HVC1, your output video might not work properly with some downstream systems and video players. The service defaults to marking your output as HEV1. For these outputs, the service writes parameter set NAL units directly into the samples.
    module H265WriteMp4PackagingType
      HVC1 = 'HVC1'
      HEV1 = 'HEV1'
    end

    # Specify how MediaConvert maps brightness and colors from your HDR input to your SDR output. The mode that you select represents a creative choice, with different tradeoffs in the details and tones of your output. To maintain details in bright or saturated areas of your output: Choose Preserve details. For some sources, your SDR output may look less bright and less saturated when compared to your HDR source. MediaConvert automatically applies this mode for HLG sources, regardless of your choice. For a bright and saturated output: Choose Vibrant. We recommend that you choose this mode when any of your source content is HDR10, and for the best results when it is mastered for 1000 nits. You may notice loss of details in bright or saturated areas of your output. HDR to SDR tone mapping has no effect when your input is SDR.
    module HDRToSDRToneMapper
      PRESERVE_DETAILS = 'PRESERVE_DETAILS'
      VIBRANT = 'VIBRANT'
    end

    # Use these settings to specify static color calibration metadata, as defined by SMPTE ST 2086. These values don't affect the pixel values that are encoded in the video stream. They are intended to help the downstream video player display content in a way that reflects the intentions of the the content creator.
    # @!attribute blue_primary_x
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #   @return [Integer]
    # @!attribute blue_primary_y
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #   @return [Integer]
    # @!attribute green_primary_x
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #   @return [Integer]
    # @!attribute green_primary_y
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #   @return [Integer]
    # @!attribute max_content_light_level
    #   Maximum light level among all samples in the coded video sequence, in units of candelas per square meter. This setting doesn't have a default value; you must specify a value that is suitable for the content.
    #   @return [Integer]
    # @!attribute max_frame_average_light_level
    #   Maximum average light level of any frame in the coded video sequence, in units of candelas per square meter. This setting doesn't have a default value; you must specify a value that is suitable for the content.
    #   @return [Integer]
    # @!attribute max_luminance
    #   Nominal maximum mastering display luminance in units of of 0.0001 candelas per square meter.
    #   @return [Integer]
    # @!attribute min_luminance
    #   Nominal minimum mastering display luminance in units of of 0.0001 candelas per square meter
    #   @return [Integer]
    # @!attribute red_primary_x
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #   @return [Integer]
    # @!attribute red_primary_y
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #   @return [Integer]
    # @!attribute white_point_x
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #   @return [Integer]
    # @!attribute white_point_y
    #   HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
    #   @return [Integer]
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
      :white_point_y,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Setting for HDR10+ metadata insertion
    # @!attribute mastering_monitor_nits
    #   Specify the HDR10+ mastering display normalized peak luminance, in nits. This is the normalized actual peak luminance of the mastering display, as defined by ST 2094-40.
    #   @return [Integer]
    # @!attribute target_monitor_nits
    #   Specify the HDR10+ target display nominal peak luminance, in nits. This is the nominal maximum luminance of the target display as defined by ST 2094-40.
    #   @return [Integer]
    class Hdr10Plus < Struct.new(
      :mastering_monitor_nits,
      :target_monitor_nits,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ad marker for Apple HLS manifest.
    module HlsAdMarkers
      ELEMENTAL = 'ELEMENTAL'
      ELEMENTAL_SCTE35 = 'ELEMENTAL_SCTE35'
    end

    # Specify the details for each additional HLS manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group.
    # @!attribute manifest_name_modifier
    #   Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your HLS group is film-name.m3u8. If you enter "-no-premium" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.m3u8. For HLS output groups, specify a manifestNameModifier that is different from the nameModifier of the output. The service uses the output name modifier to create unique names for the individual variant manifests.
    #   @return [String]
    # @!attribute selected_outputs
    #   Specify the outputs that you want this additional top-level manifest to reference.
    #   @return [Array<String>]
    class HlsAdditionalManifest < Struct.new(
      :manifest_name_modifier,
      :selected_outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use this setting only in audio-only outputs. Choose MPEG-2 Transport Stream (M2TS) to create a file in an MPEG2-TS container. Keep the default value Automatic to create a raw audio-only file with no container. Regardless of the value that you specify here, if this output has video, the service will place outputs into an MPEG2-TS container.
    module HlsAudioOnlyContainer
      AUTOMATIC = 'AUTOMATIC'
      M2TS = 'M2TS'
    end

    # Ignore this setting unless you are using FairPlay DRM with Verimatrix and you encounter playback issues. Keep the default value, Include, to output audio-only headers. Choose Exclude to remove the audio-only headers from your audio segments.
    module HlsAudioOnlyHeader
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
    module HlsAudioTrackType
      ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT = 'ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT'
      ALTERNATE_AUDIO_AUTO_SELECT = 'ALTERNATE_AUDIO_AUTO_SELECT'
      ALTERNATE_AUDIO_NOT_AUTO_SELECT = 'ALTERNATE_AUDIO_NOT_AUTO_SELECT'
      AUDIO_ONLY_VARIANT_STREAM = 'AUDIO_ONLY_VARIANT_STREAM'
    end

    # Caption Language Mapping
    # @!attribute caption_channel
    #   Caption channel.
    #   @return [Integer]
    # @!attribute custom_language_code
    #   Specify the language for this captions channel, using the ISO 639-2 or ISO 639-3 three-letter language code
    #   @return [String]
    # @!attribute language_code
    #   Specify the language, using the ISO 639-2 three-letter code listed at https://www.loc.gov/standards/iso639-2/php/code_list.php.
    #   @return [String]
    # @!attribute language_description
    #   Caption language description.
    #   @return [String]
    class HlsCaptionLanguageMapping < Struct.new(
      :caption_channel,
      :custom_language_code,
      :language_code,
      :language_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Applies only to 608 Embedded output captions. Insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. None: Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any CLOSED-CAPTIONS line from the manifest.
    module HlsCaptionLanguageSetting
      INSERT = 'INSERT'
      OMIT = 'OMIT'
      NONE = 'NONE'
    end

    # Set Caption segment length control to Match video to create caption segments that align with the video segments from the first video output in this output group. For example, if the video segments are 2 seconds long, your WebVTT segments will also be 2 seconds long. Keep the default setting, Large segments to create caption segments that are 300 seconds long.
    module HlsCaptionSegmentLengthControl
      LARGE_SEGMENTS = 'LARGE_SEGMENTS'
      MATCH_VIDEO = 'MATCH_VIDEO'
    end

    # Disable this setting only when your workflow requires the #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled and control caching in your video distribution set up. For example, use the Cache-Control http header.
    module HlsClientCache
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
    module HlsCodecSpecification
      RFC_6381 = 'RFC_6381'
      RFC_4281 = 'RFC_4281'
    end

    # Specify whether to flag this audio track as descriptive video service (DVS) in your HLS parent manifest. When you choose Flag, MediaConvert includes the parameter CHARACTERISTICS="public.accessibility.describes-video" in the EXT-X-MEDIA entry for this track. When you keep the default choice, Don't flag, MediaConvert leaves this parameter out. The DVS flag can help with accessibility on Apple devices. For more information, see the Apple documentation.
    module HlsDescriptiveVideoServiceFlag
      DONT_FLAG = 'DONT_FLAG'
      FLAG = 'FLAG'
    end

    # Indicates whether segments should be placed in subdirectories.
    module HlsDirectoryStructure
      SINGLE_DIRECTORY = 'SINGLE_DIRECTORY'
      SUBDIRECTORY_PER_STREAM = 'SUBDIRECTORY_PER_STREAM'
    end

    # Settings for HLS encryption
    # @!attribute constant_initialization_vector
    #   This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default.
    #   @return [String]
    # @!attribute encryption_method
    #   Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption.
    #   @return [String]
    # @!attribute initialization_vector_in_manifest
    #   The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest.
    #   @return [String]
    # @!attribute offline_encrypted
    #   Enable this setting to insert the EXT-X-SESSION-KEY element into the master playlist. This allows for offline Apple HLS FairPlay content protection.
    #   @return [String]
    # @!attribute speke_key_provider
    #   If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead.
    #   @return [Types::SpekeKeyProvider]
    # @!attribute static_key_provider
    #   Use these settings to set up encryption with a static key provider.
    #   @return [Types::StaticKeyProvider]
    # @!attribute type
    #   Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html.
    #   @return [String]
    class HlsEncryptionSettings < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :initialization_vector_in_manifest,
      :offline_encrypted,
      :speke_key_provider,
      :static_key_provider,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption.
    module HlsEncryptionType
      AES128 = 'AES128'
      SAMPLE_AES = 'SAMPLE_AES'
    end

    # Settings related to your HLS output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html.
    # @!attribute ad_markers
    #   Choose one or more ad marker types to decorate your Apple HLS manifest. This setting does not determine whether SCTE-35 markers appear in the outputs themselves.
    #   @return [Array<String>]
    # @!attribute additional_manifests
    #   By default, the service creates one top-level .m3u8 HLS manifest for each HLS output group in your job. This default manifest references every output in the output group. To create additional top-level manifests that reference a subset of the outputs in the output group, specify a list of them here.
    #   @return [Array<Types::HlsAdditionalManifest>]
    # @!attribute audio_only_header
    #   Ignore this setting unless you are using FairPlay DRM with Verimatrix and you encounter playback issues. Keep the default value, Include, to output audio-only headers. Choose Exclude to remove the audio-only headers from your audio segments.
    #   @return [String]
    # @!attribute base_url
    #   A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
    #   @return [String]
    # @!attribute caption_language_mappings
    #   Language to be used on Caption outputs
    #   @return [Array<Types::HlsCaptionLanguageMapping>]
    # @!attribute caption_language_setting
    #   Applies only to 608 Embedded output captions. Insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. None: Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any CLOSED-CAPTIONS line from the manifest.
    #   @return [String]
    # @!attribute caption_segment_length_control
    #   Set Caption segment length control to Match video to create caption segments that align with the video segments from the first video output in this output group. For example, if the video segments are 2 seconds long, your WebVTT segments will also be 2 seconds long. Keep the default setting, Large segments to create caption segments that are 300 seconds long.
    #   @return [String]
    # @!attribute client_cache
    #   Disable this setting only when your workflow requires the #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled and control caching in your video distribution set up. For example, use the Cache-Control http header.
    #   @return [String]
    # @!attribute codec_specification
    #   Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
    #   @return [String]
    # @!attribute destination
    #   Use Destination to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
    #   @return [String]
    # @!attribute destination_settings
    #   Settings associated with the destination. Will vary based on the type of destination
    #   @return [Types::DestinationSettings]
    # @!attribute directory_structure
    #   Indicates whether segments should be placed in subdirectories.
    #   @return [String]
    # @!attribute encryption
    #   DRM settings.
    #   @return [Types::HlsEncryptionSettings]
    # @!attribute image_based_trick_play
    #   Specify whether MediaConvert generates images for trick play. Keep the default value, None, to not generate any images. Choose Thumbnail to generate tiled thumbnails. Choose Thumbnail and full frame to generate tiled thumbnails and full-resolution images of single frames. MediaConvert creates a child manifest for each set of images that you generate and adds corresponding entries to the parent manifest. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md
    #   @return [String]
    # @!attribute image_based_trick_play_settings
    #   Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    #   @return [Types::HlsImageBasedTrickPlaySettings]
    # @!attribute manifest_compression
    #   When set to GZIP, compresses HLS playlist.
    #   @return [String]
    # @!attribute manifest_duration_format
    #   Indicates whether the output manifest should use floating point values for segment duration.
    #   @return [String]
    # @!attribute min_final_segment_length
    #   Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds.
    #   @return [Float]
    # @!attribute min_segment_length
    #   When set, Minimum Segment Size is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed.
    #   @return [Integer]
    # @!attribute output_selection
    #   Indicates whether the .m3u8 manifest file should be generated for this HLS output group.
    #   @return [String]
    # @!attribute program_date_time
    #   Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestamp_offset.
    #   @return [String]
    # @!attribute program_date_time_period
    #   Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
    #   @return [Integer]
    # @!attribute progressive_write_hls_manifest
    #   Specify whether MediaConvert generates HLS manifests while your job is running or when your job is complete. To generate HLS manifests while your job is running: Choose Enabled. Use if you want to play back your content as soon as it's available. MediaConvert writes the parent and child manifests after the first three media segments are written to your destination S3 bucket. It then writes new updated manifests after each additional segment is written. The parent manifest includes the latest BANDWIDTH and AVERAGE-BANDWIDTH attributes, and child manifests include the latest available media segment. When your job completes, the final child playlists include an EXT-X-ENDLIST tag. To generate HLS manifests only when your job completes: Choose Disabled.
    #   @return [String]
    # @!attribute segment_control
    #   When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for playback.
    #   @return [String]
    # @!attribute segment_length
    #   Specify the length, in whole seconds, of each segment. When you don't specify a value, MediaConvert defaults to 10. Related settings: Use Segment length control to specify whether the encoder enforces this value strictly. Use Segment control to specify whether MediaConvert creates separate segment files or one content file that has metadata to mark the segment boundaries.
    #   @return [Integer]
    # @!attribute segment_length_control
    #   Specify how you want MediaConvert to determine segment lengths in this output group. To use the exact value that you specify under Segment length: Choose Exact. Note that this might result in additional I-frames in the output GOP. To create segment lengths that are a multiple of the GOP: Choose Multiple of GOP. MediaConvert will round up the segment lengths to match the next GOP boundary. To have MediaConvert automatically determine a segment duration that is a multiple of both the audio packets and the frame rates: Choose Match. When you do, also specify a target segment duration under Segment length. This is useful for some ad-insertion or segment replacement workflows. Note that Match has the following requirements: - Output containers: Include at least one video output and at least one audio output. Audio-only outputs are not supported. - Output frame rate: Follow source is not supported. - Multiple output frame rates: When you specify multiple outputs, we recommend they share a similar frame rate (as in X/3, X/2, X, or 2X). For example: 5, 15, 30 and 60. Or: 25 and 50. (Outputs must share an integer multiple.) - Output audio codec: Specify Advanced Audio Coding (AAC). - Output sample rate: Choose 48kHz.
    #   @return [String]
    # @!attribute segments_per_subdirectory
    #   Specify the number of segments to write to a subdirectory before starting a new one. You must also set Directory structure to Subdirectory per stream for this setting to have an effect.
    #   @return [Integer]
    # @!attribute stream_inf_resolution
    #   Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
    #   @return [String]
    # @!attribute target_duration_compatibility_mode
    #   When set to LEGACY, the segment target duration is always rounded up to the nearest integer value above its current value in seconds. When set to SPEC\\_COMPLIANT, the segment target duration is rounded up to the nearest integer value if fraction seconds are greater than or equal to 0.5 (>= 0.5) and rounded down if less than 0.5 (< 0.5). You may need to use LEGACY if your client needs to ensure that the target duration is always longer than the actual duration of the segment. Some older players may experience interrupted playback when the actual duration of a track in a segment is longer than the target duration.
    #   @return [String]
    # @!attribute timed_metadata_id3_frame
    #   Specify the type of the ID3 frame to use for ID3 timestamps in your output. To include ID3 timestamps: Specify PRIV or TDRL and set ID3 metadata to Passthrough. To exclude ID3 timestamps: Set ID3 timestamp frame type to None.
    #   @return [String]
    # @!attribute timed_metadata_id3_period
    #   Specify the interval in seconds to write ID3 timestamps in your output. The first timestamp starts at the output timecode and date, and increases incrementally with each ID3 timestamp. To use the default interval of 10 seconds: Leave blank. To include this metadata in your output: Set ID3 timestamp frame type to PRIV or TDRL, and set ID3 metadata to Passthrough.
    #   @return [Integer]
    # @!attribute timestamp_delta_milliseconds
    #   Provides an extra millisecond delta offset to fine tune the timestamps.
    #   @return [Integer]
    class HlsGroupSettings < Struct.new(
      :ad_markers,
      :additional_manifests,
      :audio_only_header,
      :base_url,
      :caption_language_mappings,
      :caption_language_setting,
      :caption_segment_length_control,
      :client_cache,
      :codec_specification,
      :destination,
      :destination_settings,
      :directory_structure,
      :encryption,
      :image_based_trick_play,
      :image_based_trick_play_settings,
      :manifest_compression,
      :manifest_duration_format,
      :min_final_segment_length,
      :min_segment_length,
      :output_selection,
      :program_date_time,
      :program_date_time_period,
      :progressive_write_hls_manifest,
      :segment_control,
      :segment_length,
      :segment_length_control,
      :segments_per_subdirectory,
      :stream_inf_resolution,
      :target_duration_compatibility_mode,
      :timed_metadata_id3_frame,
      :timed_metadata_id3_period,
      :timestamp_delta_milliseconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Choose Include to have MediaConvert generate a child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude.
    module HlsIFrameOnlyManifest
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # Specify whether MediaConvert generates images for trick play. Keep the default value, None, to not generate any images. Choose Thumbnail to generate tiled thumbnails. Choose Thumbnail and full frame to generate tiled thumbnails and full-resolution images of single frames. MediaConvert creates a child manifest for each set of images that you generate and adds corresponding entries to the parent manifest. A common application for these images is Roku trick mode. The thumbnails and full-frame images that MediaConvert creates with this feature are compatible with this Roku specification: https://developer.roku.com/docs/developer-program/media-playback/trick-mode/hls-and-dash.md
    module HlsImageBasedTrickPlay
      NONE = 'NONE'
      THUMBNAIL = 'THUMBNAIL'
      THUMBNAIL_AND_FULLFRAME = 'THUMBNAIL_AND_FULLFRAME'
      ADVANCED = 'ADVANCED'
    end

    # Tile and thumbnail settings applicable when imageBasedTrickPlay is ADVANCED
    # @!attribute interval_cadence
    #   The cadence MediaConvert follows for generating thumbnails. If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence). If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval.
    #   @return [String]
    # @!attribute thumbnail_height
    #   Height of each thumbnail within each tile image, in pixels. Leave blank to maintain aspect ratio with thumbnail width. If following the aspect ratio would lead to a total tile height greater than 4096, then the job will be rejected. Must be divisible by 2.
    #   @return [Integer]
    # @!attribute thumbnail_interval
    #   Enter the interval, in seconds, that MediaConvert uses to generate thumbnails. If the interval you enter doesn't align with the output frame rate, MediaConvert automatically rounds the interval to align with the output frame rate. For example, if the output frame rate is 29.97 frames per second and you enter 5, MediaConvert uses a 150 frame interval to generate thumbnails.
    #   @return [Float]
    # @!attribute thumbnail_width
    #   Width of each thumbnail within each tile image, in pixels. Default is 312. Must be divisible by 8.
    #   @return [Integer]
    # @!attribute tile_height
    #   Number of thumbnails in each column of a tile image. Set a value between 2 and 2048. Must be divisible by 2.
    #   @return [Integer]
    # @!attribute tile_width
    #   Number of thumbnails in each row of a tile image. Set a value between 1 and 512.
    #   @return [Integer]
    class HlsImageBasedTrickPlaySettings < Struct.new(
      :interval_cadence,
      :thumbnail_height,
      :thumbnail_interval,
      :thumbnail_width,
      :tile_height,
      :tile_width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest.
    module HlsInitializationVectorInManifest
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # The cadence MediaConvert follows for generating thumbnails. If set to FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in the output (matching the GOP cadence). If set to FOLLOW_CUSTOM, MediaConvert generates thumbnails according to the interval you specify in thumbnailInterval.
    module HlsIntervalCadence
      FOLLOW_IFRAME = 'FOLLOW_IFRAME'
      FOLLOW_CUSTOM = 'FOLLOW_CUSTOM'
    end

    # Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html.
    module HlsKeyProviderType
      SPEKE = 'SPEKE'
      STATIC_KEY = 'STATIC_KEY'
    end

    # When set to GZIP, compresses HLS playlist.
    module HlsManifestCompression
      GZIP = 'GZIP'
      NONE = 'NONE'
    end

    # Indicates whether the output manifest should use floating point values for segment duration.
    module HlsManifestDurationFormat
      FLOATING_POINT = 'FLOATING_POINT'
      INTEGER = 'INTEGER'
    end

    # Enable this setting to insert the EXT-X-SESSION-KEY element into the master playlist. This allows for offline Apple HLS FairPlay content protection.
    module HlsOfflineEncrypted
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Indicates whether the .m3u8 manifest file should be generated for this HLS output group.
    module HlsOutputSelection
      MANIFESTS_AND_SEGMENTS = 'MANIFESTS_AND_SEGMENTS'
      SEGMENTS_ONLY = 'SEGMENTS_ONLY'
    end

    # Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestamp_offset.
    module HlsProgramDateTime
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # Specify whether MediaConvert generates HLS manifests while your job is running or when your job is complete. To generate HLS manifests while your job is running: Choose Enabled. Use if you want to play back your content as soon as it's available. MediaConvert writes the parent and child manifests after the first three media segments are written to your destination S3 bucket. It then writes new updated manifests after each additional segment is written. The parent manifest includes the latest BANDWIDTH and AVERAGE-BANDWIDTH attributes, and child manifests include the latest available media segment. When your job completes, the final child playlists include an EXT-X-ENDLIST tag. To generate HLS manifests only when your job completes: Choose Disabled.
    module HlsProgressiveWriteHlsManifest
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Settings specific to audio sources in an HLS alternate rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique audio track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the properties provided, the job fails. If no properties in hlsRenditionGroupSettings are specified, the default audio track within the video segment is chosen. If there is no audio within video segment, the alternative audio with DEFAULT=YES is chosen instead.
    # @!attribute rendition_group_id
    #   Optional. Specify alternative group ID
    #   @return [String]
    # @!attribute rendition_language_code
    #   Optional. Specify ISO 639-2 or ISO 639-3 code in the language property
    #   @return [String]
    # @!attribute rendition_name
    #   Optional. Specify media name
    #   @return [String]
    class HlsRenditionGroupSettings < Struct.new(
      :rendition_group_id,
      :rendition_language_code,
      :rendition_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for playback.
    module HlsSegmentControl
      SINGLE_FILE = 'SINGLE_FILE'
      SEGMENTED_FILES = 'SEGMENTED_FILES'
    end

    # Specify how you want MediaConvert to determine segment lengths in this output group. To use the exact value that you specify under Segment length: Choose Exact. Note that this might result in additional I-frames in the output GOP. To create segment lengths that are a multiple of the GOP: Choose Multiple of GOP. MediaConvert will round up the segment lengths to match the next GOP boundary. To have MediaConvert automatically determine a segment duration that is a multiple of both the audio packets and the frame rates: Choose Match. When you do, also specify a target segment duration under Segment length. This is useful for some ad-insertion or segment replacement workflows. Note that Match has the following requirements: - Output containers: Include at least one video output and at least one audio output. Audio-only outputs are not supported. - Output frame rate: Follow source is not supported. - Multiple output frame rates: When you specify multiple outputs, we recommend they share a similar frame rate (as in X/3, X/2, X, or 2X). For example: 5, 15, 30 and 60. Or: 25 and 50. (Outputs must share an integer multiple.) - Output audio codec: Specify Advanced Audio Coding (AAC). - Output sample rate: Choose 48kHz.
    module HlsSegmentLengthControl
      EXACT = 'EXACT'
      GOP_MULTIPLE = 'GOP_MULTIPLE'
      MATCH = 'MATCH'
    end

    # Settings for HLS output groups
    # @!attribute audio_group_id
    #   Specifies the group to which the audio rendition belongs.
    #   @return [String]
    # @!attribute audio_only_container
    #   Use this setting only in audio-only outputs. Choose MPEG-2 Transport Stream (M2TS) to create a file in an MPEG2-TS container. Keep the default value Automatic to create an audio-only file in a raw container. Regardless of the value that you specify here, if this output has video, the service will place the output into an MPEG2-TS container.
    #   @return [String]
    # @!attribute audio_rendition_sets
    #   List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','.
    #   @return [String]
    # @!attribute audio_track_type
    #   Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
    #   @return [String]
    # @!attribute descriptive_video_service_flag
    #   Specify whether to flag this audio track as descriptive video service (DVS) in your HLS parent manifest. When you choose Flag, MediaConvert includes the parameter CHARACTERISTICS="public.accessibility.describes-video" in the EXT-X-MEDIA entry for this track. When you keep the default choice, Don't flag, MediaConvert leaves this parameter out. The DVS flag can help with accessibility on Apple devices. For more information, see the Apple documentation.
    #   @return [String]
    # @!attribute i_frame_only_manifest
    #   Choose Include to have MediaConvert generate a child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude.
    #   @return [String]
    # @!attribute segment_modifier
    #   Use this setting to add an identifying string to the filename of each segment. The service adds this string between the name modifier and segment index number. You can use format identifiers in the string. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/using-variables-in-your-job-settings.html
    #   @return [String]
    class HlsSettings < Struct.new(
      :audio_group_id,
      :audio_only_container,
      :audio_rendition_sets,
      :audio_track_type,
      :descriptive_video_service_flag,
      :i_frame_only_manifest,
      :segment_modifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
    module HlsStreamInfResolution
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # When set to LEGACY, the segment target duration is always rounded up to the nearest integer value above its current value in seconds. When set to SPEC\\_COMPLIANT, the segment target duration is rounded up to the nearest integer value if fraction seconds are greater than or equal to 0.5 (>= 0.5) and rounded down if less than 0.5 (< 0.5). You may need to use LEGACY if your client needs to ensure that the target duration is always longer than the actual duration of the segment. Some older players may experience interrupted playback when the actual duration of a track in a segment is longer than the target duration.
    module HlsTargetDurationCompatibilityMode
      LEGACY = 'LEGACY'
      SPEC_COMPLIANT = 'SPEC_COMPLIANT'
    end

    # Specify the type of the ID3 frame to use for ID3 timestamps in your output. To include ID3 timestamps: Specify PRIV or TDRL and set ID3 metadata to Passthrough. To exclude ID3 timestamps: Set ID3 timestamp frame type to None.
    module HlsTimedMetadataId3Frame
      NONE = 'NONE'
      PRIV = 'PRIV'
      TDRL = 'TDRL'
    end

    # Optional. Configuration for a destination queue to which the job can hop once a customer-defined minimum wait time has passed.
    # @!attribute priority
    #   Optional. When you set up a job to use queue hopping, you can specify a different relative priority for the job in the destination queue. If you don't specify, the relative priority will remain the same as in the previous queue.
    #   @return [Integer]
    # @!attribute queue
    #   Optional unless the job is submitted on the default queue. When you set up a job to use queue hopping, you can specify a destination queue. This queue cannot be the original queue to which the job is submitted. If the original queue isn't the default queue and you don't specify the destination queue, the job will move to the default queue.
    #   @return [String]
    # @!attribute wait_minutes
    #   Required for setting up a job to use queue hopping. Minimum wait time in minutes until the job can hop to the destination queue. Valid range is 1 to 4320 minutes, inclusive.
    #   @return [Integer]
    class HopDestination < Struct.new(
      :priority,
      :queue,
      :wait_minutes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # To insert ID3 tags in your output, specify two values. Use ID3 tag to specify the base 64 encoded string and use Timecode to specify the time when the tag should be inserted. To insert multiple ID3 tags in your output, create multiple instances of ID3 insertion.
    # @!attribute id3
    #   Use ID3 tag to provide a fully formed ID3 tag in base64-encode format.
    #   @return [String]
    # @!attribute timecode
    #   Provide a Timecode in HH:MM:SS:FF or HH:MM:SS;FF format.
    #   @return [String]
    class Id3Insertion < Struct.new(
      :id3,
      :timecode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input or output individually. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/graphic-overlay.html. This setting is disabled by default.
    # @!attribute insertable_images
    #   Specify the images that you want to overlay on your video. The images must be PNG or TGA files.
    #   @return [Array<Types::InsertableImage>]
    # @!attribute sdr_reference_white_level
    #   Specify the reference white level, in nits, for all of your image inserter images. Use to correct brightness levels within HDR10 outputs. For 1,000 nit peak brightness displays, we recommend that you set SDR reference white level to 203 (according to ITU-R BT.2408). Leave blank to use the default value of 100, or specify an integer from 100 to 1000.
    #   @return [Integer]
    class ImageInserter < Struct.new(
      :insertable_images,
      :sdr_reference_white_level,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # If the IMSC captions track is intended to provide accessibility for people who are deaf or hard of hearing: Set Accessibility subtitles to Enabled. When you do, MediaConvert adds accessibility attributes to your output HLS or DASH manifest. For HLS manifests, MediaConvert adds the following accessibility attributes under EXT-X-MEDIA for this track: CHARACTERISTICS="public.accessibility.describes-spoken-dialog,public.accessibility.describes-music-and-sound" and AUTOSELECT="YES". For DASH manifests, MediaConvert adds the following in the adaptation set for this track: <Accessibility schemeIdUri="urn:mpeg:dash:role:2011" value="caption"/>. If the captions track is not intended to provide such accessibility: Keep the default value, Disabled. When you do, for DASH manifests, MediaConvert instead adds the following in the adaptation set for this track: <Role schemeIDUri="urn:mpeg:dash:role:2011" value="subtitle"/>.
    module ImscAccessibilitySubs
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Settings related to IMSC captions. IMSC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html.
    # @!attribute accessibility
    #   If the IMSC captions track is intended to provide accessibility for people who are deaf or hard of hearing: Set Accessibility subtitles to Enabled. When you do, MediaConvert adds accessibility attributes to your output HLS or DASH manifest. For HLS manifests, MediaConvert adds the following accessibility attributes under EXT-X-MEDIA for this track: CHARACTERISTICS="public.accessibility.describes-spoken-dialog,public.accessibility.describes-music-and-sound" and AUTOSELECT="YES". For DASH manifests, MediaConvert adds the following in the adaptation set for this track: <Accessibility schemeIdUri="urn:mpeg:dash:role:2011" value="caption"/>. If the captions track is not intended to provide such accessibility: Keep the default value, Disabled. When you do, for DASH manifests, MediaConvert instead adds the following in the adaptation set for this track: <Role schemeIDUri="urn:mpeg:dash:role:2011" value="subtitle"/>.
    #   @return [String]
    # @!attribute style_passthrough
    #   Keep this setting enabled to have MediaConvert use the font style and position information from the captions source in the output. This option is available only when your input captions are IMSC, SMPTE-TT, or TTML. Disable this setting for simplified output captions.
    #   @return [String]
    class ImscDestinationSettings < Struct.new(
      :accessibility,
      :style_passthrough,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Keep this setting enabled to have MediaConvert use the font style and position information from the captions source in the output. This option is available only when your input captions are IMSC, SMPTE-TT, or TTML. Disable this setting for simplified output captions.
    module ImscStylePassthrough
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Use inputs to define the source files used in your transcoding job. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/specify-input-settings.html. You can use multiple video inputs to do input stitching. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/assembling-multiple-inputs-and-input-clips.html
    # @!attribute advanced_input_filter
    #   Use to remove noise, blocking, blurriness, or ringing from your input as a pre-filter step before encoding. The Advanced input filter removes more types of compression artifacts and is an improvement when compared to basic Deblock and Denoise filters. To remove video compression artifacts from your input and improve the video quality: Choose Enabled. Additionally, this filter can help increase the video quality of your output relative to its bitrate, since noisy inputs are more complex and require more bits to encode. To help restore loss of detail after applying the filter, you can optionally add texture or sharpening as an additional step. Jobs that use this feature incur pro-tier pricing. To not apply advanced input filtering: Choose Disabled. Note that you can still apply basic filtering with Deblock and Denoise.
    #   @return [String]
    # @!attribute advanced_input_filter_settings
    #   Optional settings for Advanced input filter when you set Advanced input filter to Enabled.
    #   @return [Types::AdvancedInputFilterSettings]
    # @!attribute audio_selector_groups
    #   Use audio selector groups to combine multiple sidecar audio inputs so that you can assign them to a single output audio tab. Note that, if you're working with embedded audio, it's simpler to assign multiple input tracks into a single audio selector rather than use an audio selector group.
    #   @return [Hash<String, Types::AudioSelectorGroup>]
    # @!attribute audio_selectors
    #   Use Audio selectors to specify a track or set of tracks from the input that you will use in your outputs. You can use multiple Audio selectors per input.
    #   @return [Hash<String, Types::AudioSelector>]
    # @!attribute caption_selectors
    #   Use captions selectors to specify the captions data from your input that you use in your outputs. You can use up to 100 captions selectors per input.
    #   @return [Hash<String, Types::CaptionSelector>]
    # @!attribute crop
    #   Use Cropping selection to specify the video area that the service will include in the output video frame. If you specify a value here, it will override any value that you specify in the output setting Cropping selection.
    #   @return [Types::Rectangle]
    # @!attribute deblock_filter
    #   Enable Deblock to produce smoother motion in the output. Default is disabled. Only manually controllable for MPEG2 and uncompressed video inputs.
    #   @return [String]
    # @!attribute decryption_settings
    #   Settings for decrypting any input files that you encrypt before you upload them to Amazon S3. MediaConvert can decrypt files only when you use AWS Key Management Service (KMS) to encrypt the data key that you use to encrypt your content.
    #   @return [Types::InputDecryptionSettings]
    # @!attribute denoise_filter
    #   Enable Denoise to filter noise from the input. Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs.
    #   @return [String]
    # @!attribute dolby_vision_metadata_xml
    #   Use this setting only when your video source has Dolby Vision studio mastering metadata that is carried in a separate XML file. Specify the Amazon S3 location for the metadata XML file. MediaConvert uses this file to provide global and frame-level metadata for Dolby Vision preprocessing. When you specify a file here and your input also has interleaved global and frame level metadata, MediaConvert ignores the interleaved metadata and uses only the the metadata from this external XML file. Note that your IAM service role must grant MediaConvert read permissions to this file. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.
    #   @return [String]
    # @!attribute dynamic_audio_selectors
    #   Use Dynamic audio selectors when you do not know the track layout of your source when you submit your job, but want to select multiple audio tracks. When you include an audio track in your output and specify this Dynamic audio selector as the Audio source, MediaConvert creates an output audio track for each dynamically selected track. Note that when you include a Dynamic audio selector for two or more inputs, each input must have the same number of audio tracks and audio channels.
    #   @return [Hash<String, Types::DynamicAudioSelector>]
    # @!attribute file_input
    #   Specify the source file for your transcoding job. You can use multiple inputs in a single job. The service concatenates these inputs, in the order that you specify them in the job, to create the outputs. For standard inputs, provide the path to your S3, HTTP, or HTTPS source file. For example, s3://amzn-s3-demo-bucket/input.mp4 for an Amazon S3 input or https://example.com/input.mp4 for an HTTPS input. For TAMS inputs, specify the HTTPS endpoint of your TAMS server. For example, https://tams-server.example.com . When you do, also specify Source ID, Timerange, GAP handling, and the Authorization connection ARN under TAMS settings. (Don't include these parameters in the Input file URL.) For IMF inputs, specify your input by providing the path to your CPL. For example, s3://amzn-s3-demo-bucket/vf/cpl.xml . If the CPL is in an incomplete IMP, make sure to use Supplemental IMPsto specify any supplemental IMPs that contain assets referenced by the CPL.
    #   @return [String]
    # @!attribute filter_enable
    #   Specify whether to apply input filtering to improve the video quality of your input. To apply filtering depending on your input type and quality: Choose Auto. To apply no filtering: Choose Disable. To apply filtering regardless of your input type and quality: Choose Force. When you do, you must also specify a value for Filter strength.
    #   @return [String]
    # @!attribute filter_strength
    #   Specify the strength of the input filter. To apply an automatic amount of filtering based the compression artifacts measured in your input: We recommend that you leave Filter strength blank and set Filter enable to Auto. To manually apply filtering: Enter a value from 1 to 5, where 1 is the least amount of filtering and 5 is the most. The value that you enter applies to the strength of the Deblock or Denoise filters, or to the strength of the Advanced input filter.
    #   @return [Integer]
    # @!attribute image_inserter
    #   Enable the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input individually. This setting is disabled by default.
    #   @return [Types::ImageInserter]
    # @!attribute input_clippings
    #   Contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them.
    #   @return [Array<Types::InputClipping>]
    # @!attribute input_scan_type
    #   When you have a progressive segmented frame (PsF) input, use this setting to flag the input as PsF. MediaConvert doesn't automatically detect PsF. Therefore, flagging your input as PsF results in better preservation of video quality when you do deinterlacing and frame rate conversion. If you don't specify, the default value is Auto. Auto is the correct setting for all inputs that are not PsF. Don't set this value to PsF when your input is interlaced. Doing so creates horizontal interlacing artifacts.
    #   @return [String]
    # @!attribute position
    #   Use Selection placement to define the video area in your output frame. The area outside of the rectangle that you specify here is black. If you specify a value here, it will override any value that you specify in the output setting Selection placement. If you specify a value here, this will override any AFD values in your input, even if you set Respond to AFD to Respond. If you specify a value here, this will ignore anything that you specify for the setting Scaling Behavior.
    #   @return [Types::Rectangle]
    # @!attribute program_number
    #   Use Program to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default.
    #   @return [Integer]
    # @!attribute psi_control
    #   Set PSI control for transport stream inputs to specify which data the demux process to scans.
    #   * Ignore PSI - Scan all PIDs for audio and video.
    #   * Use PSI - Scan only PSI data.
    #   @return [String]
    # @!attribute supplemental_imps
    #   Provide a list of any necessary supplemental IMPs. You need supplemental IMPs if the CPL that you're using for your input is in an incomplete IMP. Specify either the supplemental IMP directories with a trailing slash or the ASSETMAP.xml files. For example ["s3://bucket/ov/", "s3://bucket/vf2/ASSETMAP.xml"]. You don't need to specify the IMP that contains your input CPL, because the service automatically detects it.
    #   @return [Array<String>]
    # @!attribute tams_settings
    #   Specify a Time Addressable Media Store (TAMS) server as an input source. TAMS is an open-source API specification that provides access to time-segmented media content. Use TAMS to retrieve specific time ranges from live or archived media streams. When you specify TAMS settings, MediaConvert connects to your TAMS server, retrieves the media segments for your specified time range, and processes them as a single input. This enables workflows like extracting clips from live streams or processing specific portions of archived content. To use TAMS, you must: 1. Have access to a TAMS-compliant server 2. Specify the server URL in the Input file URL field 3. Provide the required SourceId and Timerange parameters 4. Configure authentication, if your TAMS server requires it
    #   @return [Types::InputTamsSettings]
    # @!attribute timecode_source
    #   Use this Timecode source setting, located under the input settings, to specify how the service counts input video frames. This input frame count affects only the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Choose Embedded to use the timecodes in your input video. Choose Start at zero to start the first frame at zero. Choose Specified start to start the first frame at the timecode that you specify in the setting Start timecode. If you don't specify a value for Timecode source, the service will use Embedded by default. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode.
    #   @return [String]
    # @!attribute timecode_start
    #   Specify the timecode that you want the service to use for this input's initial frame. To use this setting, you must set the Timecode source setting, located under the input settings, to Specified start. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode.
    #   @return [String]
    # @!attribute video_generator
    #   When you include Video generator, MediaConvert creates a video input with black frames. Use this setting if you do not have a video input or if you want to add black video frames before, or after, other inputs. You can specify Video generator, or you can specify an Input file, but you cannot specify both. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/video-generator.html
    #   @return [Types::InputVideoGenerator]
    # @!attribute video_overlays
    #   Contains an array of video overlays.
    #   @return [Array<Types::VideoOverlay>]
    # @!attribute video_selector
    #   Input video selectors contain the video settings for the input. Each of your inputs can have up to one video selector.
    #   @return [Types::VideoSelector]
    class Input < Struct.new(
      :advanced_input_filter,
      :advanced_input_filter_settings,
      :audio_selector_groups,
      :audio_selectors,
      :caption_selectors,
      :crop,
      :deblock_filter,
      :decryption_settings,
      :denoise_filter,
      :dolby_vision_metadata_xml,
      :dynamic_audio_selectors,
      :file_input,
      :filter_enable,
      :filter_strength,
      :image_inserter,
      :input_clippings,
      :input_scan_type,
      :position,
      :program_number,
      :psi_control,
      :supplemental_imps,
      :tams_settings,
      :timecode_source,
      :timecode_start,
      :video_generator,
      :video_overlays,
      :video_selector,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # To transcode only portions of your input, include one input clip for each part of your input that you want in your output. All input clips that you specify will be included in every output of the job. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/assembling-multiple-inputs-and-input-clips.html.
    # @!attribute end_timecode
    #   Set End timecode to the end of the portion of the input you are clipping. The frame corresponding to the End timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When choosing this value, take into account your setting for timecode source under input settings. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to end six minutes into the video, use 01:06:00:00.
    #   @return [String]
    # @!attribute start_timecode
    #   Set Start timecode to the beginning of the portion of the input you are clipping. The frame corresponding to the Start timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When choosing this value, take into account your setting for Input timecode source. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to begin five minutes into the video, use 01:05:00:00.
    #   @return [String]
    class InputClipping < Struct.new(
      :end_timecode,
      :start_timecode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Enable Deblock to produce smoother motion in the output. Default is disabled. Only manually controllable for MPEG2 and uncompressed video inputs.
    module InputDeblockFilter
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Settings for decrypting any input files that you encrypt before you upload them to Amazon S3. MediaConvert can decrypt files only when you use AWS Key Management Service (KMS) to encrypt the data key that you use to encrypt your content.
    # @!attribute decryption_mode
    #   Specify the encryption mode that you used to encrypt your input files.
    #   @return [String]
    # @!attribute encrypted_decryption_key
    #   Warning! Don't provide your encryption key in plaintext. Your job settings could be intercepted, making your encrypted content vulnerable. Specify the encrypted version of the data key that you used to encrypt your content. The data key must be encrypted by AWS Key Management Service (KMS). The key can be 128, 192, or 256 bits.
    #   @return [String]
    # @!attribute initialization_vector
    #   Specify the initialization vector that you used when you encrypted your content before uploading it to Amazon S3. You can use a 16-byte initialization vector with any encryption mode. Or, you can use a 12-byte initialization vector with GCM or CTR. MediaConvert accepts only initialization vectors that are base64-encoded.
    #   @return [String]
    # @!attribute kms_key_region
    #   Specify the AWS Region for AWS Key Management Service (KMS) that you used to encrypt your data key, if that Region is different from the one you are using for AWS Elemental MediaConvert.
    #   @return [String]
    class InputDecryptionSettings < Struct.new(
      :decryption_mode,
      :encrypted_decryption_key,
      :initialization_vector,
      :kms_key_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Enable Denoise to filter noise from the input. Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs.
    module InputDenoiseFilter
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Specify whether to apply input filtering to improve the video quality of your input. To apply filtering depending on your input type and quality: Choose Auto. To apply no filtering: Choose Disable. To apply filtering regardless of your input type and quality: Choose Force. When you do, you must also specify a value for Filter strength.
    module InputFilterEnable
      AUTO = 'AUTO'
      DISABLE = 'DISABLE'
      FORCE = 'FORCE'
    end

    # An input policy allows or disallows a job you submit to run based on the conditions that you specify.
    module InputPolicy
      ALLOWED = 'ALLOWED'
      DISALLOWED = 'DISALLOWED'
    end

    # Set PSI control for transport stream inputs to specify which data the demux process to scans.
    # * Ignore PSI - Scan all PIDs for audio and video.
    # * Use PSI - Scan only PSI data.
    module InputPsiControl
      IGNORE_PSI = 'IGNORE_PSI'
      USE_PSI = 'USE_PSI'
    end

    # Use Rotate to specify how the service rotates your video. You can choose automatic rotation or specify a rotation. You can specify a clockwise rotation of 0, 90, 180, or 270 degrees. If your input video container is .mov or .mp4 and your input has rotation metadata, you can choose Automatic to have the service rotate your video according to the rotation specified in the metadata. The rotation must be within one degree of 90, 180, or 270 degrees. If the rotation metadata specifies any other rotation, the service will default to no rotation. By default, the service does no rotation, even if your input video has rotation metadata. The service doesn't pass through rotation metadata.
    module InputRotate
      DEGREE_0 = 'DEGREE_0'
      DEGREES_90 = 'DEGREES_90'
      DEGREES_180 = 'DEGREES_180'
      DEGREES_270 = 'DEGREES_270'
      AUTO = 'AUTO'
    end

    # If the sample range metadata in your input video is accurate, or if you don't know about sample range, keep the default value, Follow, for this setting. When you do, the service automatically detects your input sample range. If your input video has metadata indicating the wrong sample range, specify the accurate sample range here. When you do, MediaConvert ignores any sample range information in the input metadata. Regardless of whether MediaConvert uses the input sample range or the sample range that you specify, MediaConvert uses the sample range for transcoding and also writes it to the output metadata.
    module InputSampleRange
      FOLLOW = 'FOLLOW'
      FULL_RANGE = 'FULL_RANGE'
      LIMITED_RANGE = 'LIMITED_RANGE'
    end

    # When you have a progressive segmented frame (PsF) input, use this setting to flag the input as PsF. MediaConvert doesn't automatically detect PsF. Therefore, flagging your input as PsF results in better preservation of video quality when you do deinterlacing and frame rate conversion. If you don't specify, the default value is Auto. Auto is the correct setting for all inputs that are not PsF. Don't set this value to PsF when your input is interlaced. Doing so creates horizontal interlacing artifacts.
    module InputScanType
      AUTO = 'AUTO'
      PSF = 'PSF'
    end

    # Specify a Time Addressable Media Store (TAMS) server as an input source. TAMS is an open-source API specification that provides access to time-segmented media content. Use TAMS to retrieve specific time ranges from live or archived media streams. When you specify TAMS settings, MediaConvert connects to your TAMS server, retrieves the media segments for your specified time range, and processes them as a single input. This enables workflows like extracting clips from live streams or processing specific portions of archived content. To use TAMS, you must: 1. Have access to a TAMS-compliant server 2. Specify the server URL in the Input file URL field 3. Provide the required SourceId and Timerange parameters 4. Configure authentication, if your TAMS server requires it
    # @!attribute auth_connection_arn
    #   Specify the ARN (Amazon Resource Name) of an EventBridge Connection to authenticate with your TAMS server. The EventBridge Connection stores your authentication credentials securely. MediaConvert assumes your job's IAM role to access this connection, so ensure the role has the events:RetrieveConnectionCredentials, secretsmanager:DescribeSecret, and secretsmanager:GetSecretValue permissions. Format: arn:aws:events:region:account-id:connection/connection-name/unique-id
    #   @return [String]
    # @!attribute gap_handling
    #   Specify how MediaConvert handles gaps between media segments in your TAMS source. Gaps can occur in live streams due to network issues or other interruptions. Choose from the following options: * Skip gaps - Default. Skip over gaps and join segments together. This creates a continuous output with no blank frames, but may cause timeline discontinuities. * Fill with black - Insert black frames to fill gaps between segments. This maintains timeline continuity but adds black frames where content is missing. * Hold last frame - Repeat the last frame before a gap until the next segment begins. This maintains visual continuity during gaps.
    #   @return [String]
    # @!attribute source_id
    #   Specify the unique identifier for the media source in your TAMS server. MediaConvert uses this source ID to locate the appropriate flows containing the media segments you want to process. The source ID corresponds to a specific media source registered in your TAMS server. This source must be of type urn:x-nmos:format:multi, and can can reference multiple flows for audio, video, or combined audio/video content. MediaConvert automatically selects the highest quality flows available for your job. This setting is required when include TAMS settings in your job.
    #   @return [String]
    # @!attribute timerange
    #   Specify the time range of media segments to retrieve from your TAMS server. MediaConvert fetches only the segments that fall within this range. Use the format specified by your TAMS server implementation. This must be two timestamp values with the format {sign?}{seconds}:{nanoseconds}, separated by an underscore, surrounded by either parentheses or square brackets.  Example: [15:0_35:0) This setting is required when include TAMS settings in your job.
    #   @return [String]
    class InputTamsSettings < Struct.new(
      :auth_connection_arn,
      :gap_handling,
      :source_id,
      :timerange,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specified video input in a template.
    # @!attribute advanced_input_filter
    #   Use to remove noise, blocking, blurriness, or ringing from your input as a pre-filter step before encoding. The Advanced input filter removes more types of compression artifacts and is an improvement when compared to basic Deblock and Denoise filters. To remove video compression artifacts from your input and improve the video quality: Choose Enabled. Additionally, this filter can help increase the video quality of your output relative to its bitrate, since noisy inputs are more complex and require more bits to encode. To help restore loss of detail after applying the filter, you can optionally add texture or sharpening as an additional step. Jobs that use this feature incur pro-tier pricing. To not apply advanced input filtering: Choose Disabled. Note that you can still apply basic filtering with Deblock and Denoise.
    #   @return [String]
    # @!attribute advanced_input_filter_settings
    #   Optional settings for Advanced input filter when you set Advanced input filter to Enabled.
    #   @return [Types::AdvancedInputFilterSettings]
    # @!attribute audio_selector_groups
    #   Use audio selector groups to combine multiple sidecar audio inputs so that you can assign them to a single output audio tab. Note that, if you're working with embedded audio, it's simpler to assign multiple input tracks into a single audio selector rather than use an audio selector group.
    #   @return [Hash<String, Types::AudioSelectorGroup>]
    # @!attribute audio_selectors
    #   Use Audio selectors to specify a track or set of tracks from the input that you will use in your outputs. You can use multiple Audio selectors per input.
    #   @return [Hash<String, Types::AudioSelector>]
    # @!attribute caption_selectors
    #   Use captions selectors to specify the captions data from your input that you use in your outputs. You can use up to 100 captions selectors per input.
    #   @return [Hash<String, Types::CaptionSelector>]
    # @!attribute crop
    #   Use Cropping selection to specify the video area that the service will include in the output video frame. If you specify a value here, it will override any value that you specify in the output setting Cropping selection.
    #   @return [Types::Rectangle]
    # @!attribute deblock_filter
    #   Enable Deblock to produce smoother motion in the output. Default is disabled. Only manually controllable for MPEG2 and uncompressed video inputs.
    #   @return [String]
    # @!attribute denoise_filter
    #   Enable Denoise to filter noise from the input. Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs.
    #   @return [String]
    # @!attribute dolby_vision_metadata_xml
    #   Use this setting only when your video source has Dolby Vision studio mastering metadata that is carried in a separate XML file. Specify the Amazon S3 location for the metadata XML file. MediaConvert uses this file to provide global and frame-level metadata for Dolby Vision preprocessing. When you specify a file here and your input also has interleaved global and frame level metadata, MediaConvert ignores the interleaved metadata and uses only the the metadata from this external XML file. Note that your IAM service role must grant MediaConvert read permissions to this file. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.
    #   @return [String]
    # @!attribute dynamic_audio_selectors
    #   Use Dynamic audio selectors when you do not know the track layout of your source when you submit your job, but want to select multiple audio tracks. When you include an audio track in your output and specify this Dynamic audio selector as the Audio source, MediaConvert creates an output audio track for each dynamically selected track. Note that when you include a Dynamic audio selector for two or more inputs, each input must have the same number of audio tracks and audio channels.
    #   @return [Hash<String, Types::DynamicAudioSelector>]
    # @!attribute filter_enable
    #   Specify whether to apply input filtering to improve the video quality of your input. To apply filtering depending on your input type and quality: Choose Auto. To apply no filtering: Choose Disable. To apply filtering regardless of your input type and quality: Choose Force. When you do, you must also specify a value for Filter strength.
    #   @return [String]
    # @!attribute filter_strength
    #   Specify the strength of the input filter. To apply an automatic amount of filtering based the compression artifacts measured in your input: We recommend that you leave Filter strength blank and set Filter enable to Auto. To manually apply filtering: Enter a value from 1 to 5, where 1 is the least amount of filtering and 5 is the most. The value that you enter applies to the strength of the Deblock or Denoise filters, or to the strength of the Advanced input filter.
    #   @return [Integer]
    # @!attribute image_inserter
    #   Enable the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input individually. This setting is disabled by default.
    #   @return [Types::ImageInserter]
    # @!attribute input_clippings
    #   Contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them.
    #   @return [Array<Types::InputClipping>]
    # @!attribute input_scan_type
    #   When you have a progressive segmented frame (PsF) input, use this setting to flag the input as PsF. MediaConvert doesn't automatically detect PsF. Therefore, flagging your input as PsF results in better preservation of video quality when you do deinterlacing and frame rate conversion. If you don't specify, the default value is Auto. Auto is the correct setting for all inputs that are not PsF. Don't set this value to PsF when your input is interlaced. Doing so creates horizontal interlacing artifacts.
    #   @return [String]
    # @!attribute position
    #   Use Selection placement to define the video area in your output frame. The area outside of the rectangle that you specify here is black. If you specify a value here, it will override any value that you specify in the output setting Selection placement. If you specify a value here, this will override any AFD values in your input, even if you set Respond to AFD to Respond. If you specify a value here, this will ignore anything that you specify for the setting Scaling Behavior.
    #   @return [Types::Rectangle]
    # @!attribute program_number
    #   Use Program to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default.
    #   @return [Integer]
    # @!attribute psi_control
    #   Set PSI control for transport stream inputs to specify which data the demux process to scans.
    #   * Ignore PSI - Scan all PIDs for audio and video.
    #   * Use PSI - Scan only PSI data.
    #   @return [String]
    # @!attribute timecode_source
    #   Use this Timecode source setting, located under the input settings, to specify how the service counts input video frames. This input frame count affects only the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Choose Embedded to use the timecodes in your input video. Choose Start at zero to start the first frame at zero. Choose Specified start to start the first frame at the timecode that you specify in the setting Start timecode. If you don't specify a value for Timecode source, the service will use Embedded by default. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode.
    #   @return [String]
    # @!attribute timecode_start
    #   Specify the timecode that you want the service to use for this input's initial frame. To use this setting, you must set the Timecode source setting, located under the input settings, to Specified start. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode.
    #   @return [String]
    # @!attribute video_overlays
    #   Contains an array of video overlays.
    #   @return [Array<Types::VideoOverlay>]
    # @!attribute video_selector
    #   Input video selectors contain the video settings for the input. Each of your inputs can have up to one video selector.
    #   @return [Types::VideoSelector]
    class InputTemplate < Struct.new(
      :advanced_input_filter,
      :advanced_input_filter_settings,
      :audio_selector_groups,
      :audio_selectors,
      :caption_selectors,
      :crop,
      :deblock_filter,
      :denoise_filter,
      :dolby_vision_metadata_xml,
      :dynamic_audio_selectors,
      :filter_enable,
      :filter_strength,
      :image_inserter,
      :input_clippings,
      :input_scan_type,
      :position,
      :program_number,
      :psi_control,
      :timecode_source,
      :timecode_start,
      :video_overlays,
      :video_selector,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use this Timecode source setting, located under the input settings, to specify how the service counts input video frames. This input frame count affects only the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Choose Embedded to use the timecodes in your input video. Choose Start at zero to start the first frame at zero. Choose Specified start to start the first frame at the timecode that you specify in the setting Start timecode. If you don't specify a value for Timecode source, the service will use Embedded by default. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode.
    module InputTimecodeSource
      EMBEDDED = 'EMBEDDED'
      ZEROBASED = 'ZEROBASED'
      SPECIFIEDSTART = 'SPECIFIEDSTART'
    end

    # When you include Video generator, MediaConvert creates a video input with black frames. Use this setting if you do not have a video input or if you want to add black video frames before, or after, other inputs. You can specify Video generator, or you can specify an Input file, but you cannot specify both. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/video-generator.html
    # @!attribute channels
    #   Specify the number of audio channels to include in your video generator input. MediaConvert creates these audio channels as silent audio within a single audio track. Enter an integer from 1 to 32.
    #   @return [Integer]
    # @!attribute duration
    #   Specify the duration, in milliseconds, for your video generator input.
    #   Enter an integer from 50 to 86400000.
    #   @return [Integer]
    # @!attribute framerate_denominator
    #   Specify the denominator of the fraction that represents the frame rate for your video generator input. When you do, you must also specify a value for Frame rate numerator. MediaConvert uses a default frame rate of 29.97 when you leave Frame rate numerator and Frame rate denominator blank.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   Specify the numerator of the fraction that represents the frame rate for your video generator input. When you do, you must also specify a value for Frame rate denominator. MediaConvert uses a default frame rate of 29.97 when you leave Frame rate numerator and Frame rate denominator blank.
    #   @return [Integer]
    # @!attribute sample_rate
    #   Specify the audio sample rate, in Hz, for the silent audio in your video generator input.
    #   Enter an integer from 32000 to 48000.
    #   @return [Integer]
    class InputVideoGenerator < Struct.new(
      :channels,
      :duration,
      :framerate_denominator,
      :framerate_numerator,
      :sample_rate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # These settings apply to a specific graphic overlay. You can include multiple overlays in your job.
    # @!attribute duration
    #   Specify the time, in milliseconds, for the image to remain on the output video. This duration includes fade-in time but not fade-out time.
    #   @return [Integer]
    # @!attribute fade_in
    #   Specify the length of time, in milliseconds, between the Start time that you specify for the image insertion and the time that the image appears at full opacity. Full opacity is the level that you specify for the opacity setting. If you don't specify a value for Fade-in, the image will appear abruptly at the overlay start time.
    #   @return [Integer]
    # @!attribute fade_out
    #   Specify the length of time, in milliseconds, between the end of the time that you have specified for the image overlay Duration and when the overlaid image has faded to total transparency. If you don't specify a value for Fade-out, the image will disappear abruptly at the end of the inserted image duration.
    #   @return [Integer]
    # @!attribute height
    #   Specify the height of the inserted image in pixels. If you specify a value that's larger than the video resolution height, the service will crop your overlaid image to fit. To use the native height of the image, keep this setting blank.
    #   @return [Integer]
    # @!attribute image_inserter_input
    #   Specify the HTTP, HTTPS, or Amazon S3 location of the image that you want to overlay on the video. Use a PNG or TGA file.
    #   @return [String]
    # @!attribute image_x
    #   Specify the distance, in pixels, between the inserted image and the left edge of the video frame. Required for any image overlay that you specify.
    #   @return [Integer]
    # @!attribute image_y
    #   Specify the distance, in pixels, between the overlaid image and the top edge of the video frame. Required for any image overlay that you specify.
    #   @return [Integer]
    # @!attribute layer
    #   Specify how overlapping inserted images appear. Images with higher values for Layer appear on top of images with lower values for Layer.
    #   @return [Integer]
    # @!attribute opacity
    #   Use Opacity to specify how much of the underlying video shows through the inserted image. 0 is transparent and 100 is fully opaque. Default is 50.
    #   @return [Integer]
    # @!attribute start_time
    #   Specify the timecode of the frame that you want the overlay to first appear on. This must be in timecode (HH:MM:SS:FF or HH:MM:SS;FF) format. Remember to take into account your timecode source settings.
    #   @return [String]
    # @!attribute width
    #   Specify the width of the inserted image in pixels. If you specify a value that's larger than the video resolution width, the service will crop your overlaid image to fit. To use the native width of the image, keep this setting blank.
    #   @return [Integer]
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
      :width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The service encountered an unexpected condition and can't fulfill your request.
    # @!attribute message
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    # @!attribute acceleration_settings
    #   Accelerated transcoding can significantly speed up jobs with long, visually complex content.
    #   @return [Types::AccelerationSettings]
    # @!attribute acceleration_status
    #   Describes whether the current job is running with accelerated transcoding. For jobs that have Acceleration (AccelerationMode) set to DISABLED, AccelerationStatus is always NOT_APPLICABLE. For jobs that have Acceleration (AccelerationMode) set to ENABLED or PREFERRED, AccelerationStatus is one of the other states. AccelerationStatus is IN_PROGRESS initially, while the service determines whether the input files and job settings are compatible with accelerated transcoding. If they are, AcclerationStatus is ACCELERATED. If your input files and job settings aren't compatible with accelerated transcoding, the service either fails your job or runs it without accelerated transcoding, depending on how you set Acceleration (AccelerationMode). When the service runs your job without accelerated transcoding, AccelerationStatus is NOT_ACCELERATED.
    #   @return [String]
    # @!attribute arn
    #   An identifier for this resource that is unique within all of AWS.
    #   @return [String]
    # @!attribute billing_tags_source
    #   The tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up.
    #   @return [String]
    # @!attribute client_request_token
    #   Prevent duplicate jobs from being created and ensure idempotency for your requests. A client request token can be any string that includes up to 64 ASCII characters. If you reuse a client request token within one minute of a successful request, the API returns the job details of the original request instead. For more information see https://docs.aws.amazon.com/mediaconvert/latest/apireference/idempotency.html.
    #   @return [String]
    # @!attribute created_at
    #   The time, in Unix epoch format in seconds, when the job got created.
    #   @return [Time]
    # @!attribute current_phase
    #   A job's phase can be PROBING, TRANSCODING OR UPLOADING
    #   @return [String]
    # @!attribute error_code
    #   Error code for the job
    #   @return [Integer]
    # @!attribute error_message
    #   Error message of Job
    #   @return [String]
    # @!attribute hop_destinations
    #   Optional list of hop destinations.
    #   @return [Array<Types::HopDestination>]
    # @!attribute id
    #   A portion of the job's ARN, unique within your AWS Elemental MediaConvert resources
    #   @return [String]
    # @!attribute job_engine_version_requested
    #   The Job engine version that you requested for your job. Valid versions are in a YYYY-MM-DD format.
    #   @return [String]
    # @!attribute job_engine_version_used
    #   The Job engine version that your job used. Job engine versions are in a YYYY-MM-DD format. When you request an expired version, the response for this property will be empty. Requests to create jobs with an expired version result in a regular job, as if no specific Job engine version was requested. When you request an invalid version, the response for this property will be empty. Requests to create jobs with an invalid version result in a 400 error message, and no job is created.
    #   @return [String]
    # @!attribute job_percent_complete
    #   An estimate of how far your job has progressed. This estimate is shown as a percentage of the total time from when your job leaves its queue to when your output files appear in your output Amazon S3 bucket. AWS Elemental MediaConvert provides jobPercentComplete in CloudWatch STATUS_UPDATE events and in the response to GetJob and ListJobs requests. The jobPercentComplete estimate is reliable for the following input containers: Quicktime, Transport Stream, MP4, and MXF. For some jobs, the service can't provide information about job progress. In those cases, jobPercentComplete returns a null value.
    #   @return [Integer]
    # @!attribute job_template
    #   The job template that the job is created from, if it is created from a job template.
    #   @return [String]
    # @!attribute messages
    #   Provides messages from the service about jobs that you have already successfully submitted.
    #   @return [Types::JobMessages]
    # @!attribute output_group_details
    #   List of output group details
    #   @return [Array<Types::OutputGroupDetail>]
    # @!attribute priority
    #   Relative priority on the job.
    #   @return [Integer]
    # @!attribute queue
    #   When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #   @return [String]
    # @!attribute queue_transitions
    #   The job's queue hopping history.
    #   @return [Array<Types::QueueTransition>]
    # @!attribute retry_count
    #   The number of times that the service automatically attempted to process your job after encountering an error.
    #   @return [Integer]
    # @!attribute role
    #   The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html
    #   @return [String]
    # @!attribute settings
    #   JobSettings contains all the transcode settings for a job.
    #   @return [Types::JobSettings]
    # @!attribute simulate_reserved_queue
    #   Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default.
    #   @return [String]
    # @!attribute status
    #   A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
    #   @return [String]
    # @!attribute status_update_interval
    #   Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    #   @return [String]
    # @!attribute timing
    #   Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds.
    #   @return [Types::Timing]
    # @!attribute user_metadata
    #   User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.
    #   @return [Hash<String, String>]
    # @!attribute warnings
    #   Contains any warning messages for the job. Use to help identify potential issues with your input, output, or job. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/warning_codes.html
    #   @return [Array<Types::WarningGroup>]
    class Job < Struct.new(
      :acceleration_settings,
      :acceleration_status,
      :arn,
      :billing_tags_source,
      :client_request_token,
      :created_at,
      :current_phase,
      :error_code,
      :error_message,
      :hop_destinations,
      :id,
      :job_engine_version_requested,
      :job_engine_version_used,
      :job_percent_complete,
      :job_template,
      :messages,
      :output_group_details,
      :priority,
      :queue,
      :queue_transitions,
      :retry_count,
      :role,
      :settings,
      :simulate_reserved_queue,
      :status,
      :status_update_interval,
      :timing,
      :user_metadata,
      :warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Job engine versions to run jobs for your production workflow on one version, while you test and validate the latest version. Job engine versions are in a YYYY-MM-DD format.
    # @!attribute expiration_date
    #   The date that this Job engine version expires. Requests to create jobs with an expired version result in a regular job, as if no specific Job engine version was requested.
    #   @return [Time]
    # @!attribute version
    #   Use Job engine versions to run jobs for your production workflow on one version, while you test and validate the latest version. Job engine versions are in a YYYY-MM-DD format.
    #   @return [String]
    class JobEngineVersion < Struct.new(
      :expiration_date,
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Provides messages from the service about jobs that you have already successfully submitted.
    # @!attribute info
    #   List of messages that are informational only and don't indicate a problem with your job.
    #   @return [Array<String>]
    # @!attribute warning
    #   List of messages that warn about conditions that might cause your job not to run or to fail.
    #   @return [Array<String>]
    class JobMessages < Struct.new(
      :info,
      :warning,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A job's phase can be PROBING, TRANSCODING OR UPLOADING
    module JobPhase
      PROBING = 'PROBING'
      TRANSCODING = 'TRANSCODING'
      UPLOADING = 'UPLOADING'
    end

    # JobSettings contains all the transcode settings for a job.
    # @!attribute ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time.
    #   @return [Integer]
    # @!attribute avail_blanking
    #   Settings for ad avail blanking. Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails.
    #   @return [Types::AvailBlanking]
    # @!attribute color_conversion3_dlut_settings
    #   Use 3D LUTs to specify custom color mapping behavior when you convert from one color space into another. You can include up to 8 different 3D LUTs. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/3d-luts.html
    #   @return [Array<Types::ColorConversion3DLUTSetting>]
    # @!attribute esam
    #   Settings for Event Signaling And Messaging (ESAM). If you don't do ad insertion, you can ignore these settings.
    #   @return [Types::EsamSettings]
    # @!attribute extended_data_services
    #   If your source content has EIA-608 Line 21 Data Services, enable this feature to specify what MediaConvert does with the Extended Data Services (XDS) packets. You can choose to pass through XDS packets, or remove them from the output. For more information about XDS, see EIA-608 Line Data Services, section 9.5.1.5 05h Content Advisory.
    #   @return [Types::ExtendedDataServices]
    # @!attribute follow_source
    #   Specify the input that MediaConvert references for your default output settings.  MediaConvert uses this input's Resolution, Frame rate, and Pixel aspect ratio for all  outputs that you don't manually specify different output settings for. Enabling this setting will disable "Follow source" for all other inputs.  If MediaConvert cannot follow your source, for example if you specify an audio-only input,  MediaConvert uses the first followable input instead. In your JSON job specification, enter an integer from 1 to 150 corresponding  to the order of your inputs.
    #   @return [Integer]
    # @!attribute inputs
    #   Use Inputs to define source file used in the transcode job. There can be multiple inputs add in a job. These inputs will be concantenated together to create the output.
    #   @return [Array<Types::Input>]
    # @!attribute kantar_watermark
    #   Use these settings only when you use Kantar watermarking. Specify the values that MediaConvert uses to generate and place Kantar watermarks in your output audio. These settings apply to every output in your job. In addition to specifying these values, you also need to store your Kantar credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html.
    #   @return [Types::KantarWatermarkSettings]
    # @!attribute motion_image_inserter
    #   Overlay motion graphics on top of your video. The motion graphics that you specify here appear on all outputs in all output groups. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/motion-graphic-overlay.html.
    #   @return [Types::MotionImageInserter]
    # @!attribute nielsen_configuration
    #   Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration, MediaConvert enables PCM to ID3 tagging for all outputs in the job.
    #   @return [Types::NielsenConfiguration]
    # @!attribute nielsen_non_linear_watermark
    #   Ignore these settings unless you are using Nielsen non-linear watermarking. Specify the values that MediaConvert uses to generate and place Nielsen watermarks in your output audio. In addition to specifying these values, you also need to set up your cloud TIC server. These settings apply to every output in your job. The MediaConvert implementation is currently with the following Nielsen versions: Nielsen Watermark SDK Version 6.0.13 Nielsen NLM Watermark Engine Version 1.3.3 Nielsen Watermark Authenticator [SID_TIC] Version [7.0.0]
    #   @return [Types::NielsenNonLinearWatermarkSettings]
    # @!attribute output_groups
    #   Contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in is a group of settings that apply to the whole group. This required object depends on the value you set for Type. Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings * CMAF_GROUP_SETTINGS, CmafGroupSettings
    #   @return [Array<Types::OutputGroup>]
    # @!attribute timecode_config
    #   These settings control how the service handles timecodes throughout the job. These settings don't affect input clipping.
    #   @return [Types::TimecodeConfig]
    # @!attribute timed_metadata_insertion
    #   Insert user-defined custom ID3 metadata at timecodes that you specify. In each output that you want to include this metadata, you must set ID3 metadata to Passthrough.
    #   @return [Types::TimedMetadataInsertion]
    class JobSettings < Struct.new(
      :ad_avail_offset,
      :avail_blanking,
      :color_conversion3_dlut_settings,
      :esam,
      :extended_data_services,
      :follow_source,
      :inputs,
      :kantar_watermark,
      :motion_image_inserter,
      :nielsen_configuration,
      :nielsen_non_linear_watermark,
      :output_groups,
      :timecode_config,
      :timed_metadata_insertion,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
    module JobStatus
      SUBMITTED = 'SUBMITTED'
      PROGRESSING = 'PROGRESSING'
      COMPLETE = 'COMPLETE'
      CANCELED = 'CANCELED'
      ERROR = 'ERROR'
    end

    # A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
    # @!attribute acceleration_settings
    #   Accelerated transcoding can significantly speed up jobs with long, visually complex content.
    #   @return [Types::AccelerationSettings]
    # @!attribute arn
    #   An identifier for this resource that is unique within all of AWS.
    #   @return [String]
    # @!attribute category
    #   An optional category you create to organize your job templates.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp in epoch seconds for Job template creation.
    #   @return [Time]
    # @!attribute description
    #   An optional description you create for each job template.
    #   @return [String]
    # @!attribute hop_destinations
    #   Optional list of hop destinations.
    #   @return [Array<Types::HopDestination>]
    # @!attribute last_updated
    #   The timestamp in epoch seconds when the Job template was last updated.
    #   @return [Time]
    # @!attribute name
    #   A name you create for each job template. Each name must be unique within your account.
    #   @return [String]
    # @!attribute priority
    #   Relative priority on the job.
    #   @return [Integer]
    # @!attribute queue
    #   Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue.
    #   @return [String]
    # @!attribute settings
    #   JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
    #   @return [Types::JobTemplateSettings]
    # @!attribute status_update_interval
    #   Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    #   @return [String]
    # @!attribute type
    #   A job template can be of two types: system or custom. System or built-in job templates can't be modified or deleted by the user.
    #   @return [String]
    class JobTemplate < Struct.new(
      :acceleration_settings,
      :arn,
      :category,
      :created_at,
      :description,
      :hop_destinations,
      :last_updated,
      :name,
      :priority,
      :queue,
      :settings,
      :status_update_interval,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
    module JobTemplateListBy
      NAME = 'NAME'
      CREATION_DATE = 'CREATION_DATE'
      SYSTEM = 'SYSTEM'
    end

    # JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
    # @!attribute ad_avail_offset
    #   When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time.
    #   @return [Integer]
    # @!attribute avail_blanking
    #   Settings for ad avail blanking. Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails.
    #   @return [Types::AvailBlanking]
    # @!attribute color_conversion3_dlut_settings
    #   Use 3D LUTs to specify custom color mapping behavior when you convert from one color space into another. You can include up to 8 different 3D LUTs. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/3d-luts.html
    #   @return [Array<Types::ColorConversion3DLUTSetting>]
    # @!attribute esam
    #   Settings for Event Signaling And Messaging (ESAM). If you don't do ad insertion, you can ignore these settings.
    #   @return [Types::EsamSettings]
    # @!attribute extended_data_services
    #   If your source content has EIA-608 Line 21 Data Services, enable this feature to specify what MediaConvert does with the Extended Data Services (XDS) packets. You can choose to pass through XDS packets, or remove them from the output. For more information about XDS, see EIA-608 Line Data Services, section 9.5.1.5 05h Content Advisory.
    #   @return [Types::ExtendedDataServices]
    # @!attribute follow_source
    #   Specify the input that MediaConvert references for your default output settings.  MediaConvert uses this input's Resolution, Frame rate, and Pixel aspect ratio for all  outputs that you don't manually specify different output settings for. Enabling this setting will disable "Follow source" for all other inputs.  If MediaConvert cannot follow your source, for example if you specify an audio-only input,  MediaConvert uses the first followable input instead. In your JSON job specification, enter an integer from 1 to 150 corresponding  to the order of your inputs.
    #   @return [Integer]
    # @!attribute inputs
    #   Use Inputs to define the source file used in the transcode job. There can only be one input in a job template. Using the API, you can include multiple inputs when referencing a job template.
    #   @return [Array<Types::InputTemplate>]
    # @!attribute kantar_watermark
    #   Use these settings only when you use Kantar watermarking. Specify the values that MediaConvert uses to generate and place Kantar watermarks in your output audio. These settings apply to every output in your job. In addition to specifying these values, you also need to store your Kantar credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html.
    #   @return [Types::KantarWatermarkSettings]
    # @!attribute motion_image_inserter
    #   Overlay motion graphics on top of your video. The motion graphics that you specify here appear on all outputs in all output groups. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/motion-graphic-overlay.html.
    #   @return [Types::MotionImageInserter]
    # @!attribute nielsen_configuration
    #   Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration, MediaConvert enables PCM to ID3 tagging for all outputs in the job.
    #   @return [Types::NielsenConfiguration]
    # @!attribute nielsen_non_linear_watermark
    #   Ignore these settings unless you are using Nielsen non-linear watermarking. Specify the values that MediaConvert uses to generate and place Nielsen watermarks in your output audio. In addition to specifying these values, you also need to set up your cloud TIC server. These settings apply to every output in your job. The MediaConvert implementation is currently with the following Nielsen versions: Nielsen Watermark SDK Version 6.0.13 Nielsen NLM Watermark Engine Version 1.3.3 Nielsen Watermark Authenticator [SID_TIC] Version [7.0.0]
    #   @return [Types::NielsenNonLinearWatermarkSettings]
    # @!attribute output_groups
    #   Contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in is a group of settings that apply to the whole group. This required object depends on the value you set for Type. Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings * CMAF_GROUP_SETTINGS, CmafGroupSettings
    #   @return [Array<Types::OutputGroup>]
    # @!attribute timecode_config
    #   These settings control how the service handles timecodes throughout the job. These settings don't affect input clipping.
    #   @return [Types::TimecodeConfig]
    # @!attribute timed_metadata_insertion
    #   Insert user-defined custom ID3 metadata at timecodes that you specify. In each output that you want to include this metadata, you must set ID3 metadata to Passthrough.
    #   @return [Types::TimedMetadataInsertion]
    class JobTemplateSettings < Struct.new(
      :ad_avail_offset,
      :avail_blanking,
      :color_conversion3_dlut_settings,
      :esam,
      :extended_data_services,
      :follow_source,
      :inputs,
      :kantar_watermark,
      :motion_image_inserter,
      :nielsen_configuration,
      :nielsen_non_linear_watermark,
      :output_groups,
      :timecode_config,
      :timed_metadata_insertion,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use these settings only when you use Kantar watermarking. Specify the values that MediaConvert uses to generate and place Kantar watermarks in your output audio. These settings apply to every output in your job. In addition to specifying these values, you also need to store your Kantar credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html.
    # @!attribute channel_name
    #   Provide an audio channel name from your Kantar audio license.
    #   @return [String]
    # @!attribute content_reference
    #   Specify a unique identifier for Kantar to use for this piece of content.
    #   @return [String]
    # @!attribute credentials_secret_name
    #   Provide the name of the AWS Secrets Manager secret where your Kantar credentials are stored. Note that your MediaConvert service role must provide access to this secret. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/granting-permissions-for-mediaconvert-to-access-secrets-manager-secret.html. For instructions on creating a secret, see https://docs.aws.amazon.com/secretsmanager/latest/userguide/tutorials_basic.html, in the AWS Secrets Manager User Guide.
    #   @return [String]
    # @!attribute file_offset
    #   Optional. Specify an offset, in whole seconds, from the start of your output and the beginning of the watermarking. When you don't specify an offset, Kantar defaults to zero.
    #   @return [Float]
    # @!attribute kantar_license_id
    #   Provide your Kantar license ID number. You should get this number from Kantar.
    #   @return [Integer]
    # @!attribute kantar_server_url
    #   Provide the HTTPS endpoint to the Kantar server. You should get this endpoint from Kantar.
    #   @return [String]
    # @!attribute log_destination
    #   Optional. Specify the Amazon S3 bucket where you want MediaConvert to store your Kantar watermark XML logs. When you don't specify a bucket, MediaConvert doesn't save these logs. Note that your MediaConvert service role must provide access to this location. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html
    #   @return [String]
    # @!attribute metadata3
    #   You can optionally use this field to specify the first timestamp that Kantar embeds during watermarking. Kantar suggests that you be very cautious when using this Kantar feature, and that you use it only on channels that are managed specifically for use with this feature by your Audience Measurement Operator. For more information about this feature, contact Kantar technical support.
    #   @return [String]
    # @!attribute metadata4
    #   Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    #   @return [String]
    # @!attribute metadata5
    #   Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    #   @return [String]
    # @!attribute metadata6
    #   Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    #   @return [String]
    # @!attribute metadata7
    #   Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    #   @return [String]
    # @!attribute metadata8
    #   Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    #   @return [String]
    class KantarWatermarkSettings < Struct.new(
      :channel_name,
      :content_reference,
      :credentials_secret_name,
      :file_offset,
      :kantar_license_id,
      :kantar_server_url,
      :log_destination,
      :metadata3,
      :metadata4,
      :metadata5,
      :metadata6,
      :metadata7,
      :metadata8,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the language, using the ISO 639-2 three-letter code listed at https://www.loc.gov/standards/iso639-2/php/code_list.php.
    module LanguageCode
      ENG = 'ENG'
      SPA = 'SPA'
      FRA = 'FRA'
      DEU = 'DEU'
      GER = 'GER'
      ZHO = 'ZHO'
      ARA = 'ARA'
      HIN = 'HIN'
      JPN = 'JPN'
      RUS = 'RUS'
      POR = 'POR'
      ITA = 'ITA'
      URD = 'URD'
      VIE = 'VIE'
      KOR = 'KOR'
      PAN = 'PAN'
      ABK = 'ABK'
      AAR = 'AAR'
      AFR = 'AFR'
      AKA = 'AKA'
      SQI = 'SQI'
      AMH = 'AMH'
      ARG = 'ARG'
      HYE = 'HYE'
      ASM = 'ASM'
      AVA = 'AVA'
      AVE = 'AVE'
      AYM = 'AYM'
      AZE = 'AZE'
      BAM = 'BAM'
      BAK = 'BAK'
      EUS = 'EUS'
      BEL = 'BEL'
      BEN = 'BEN'
      BIH = 'BIH'
      BIS = 'BIS'
      BOS = 'BOS'
      BRE = 'BRE'
      BUL = 'BUL'
      MYA = 'MYA'
      CAT = 'CAT'
      KHM = 'KHM'
      CHA = 'CHA'
      CHE = 'CHE'
      NYA = 'NYA'
      CHU = 'CHU'
      CHV = 'CHV'
      COR = 'COR'
      COS = 'COS'
      CRE = 'CRE'
      HRV = 'HRV'
      CES = 'CES'
      DAN = 'DAN'
      DIV = 'DIV'
      NLD = 'NLD'
      DZO = 'DZO'
      ENM = 'ENM'
      EPO = 'EPO'
      EST = 'EST'
      EWE = 'EWE'
      FAO = 'FAO'
      FIJ = 'FIJ'
      FIN = 'FIN'
      FRM = 'FRM'
      FUL = 'FUL'
      GLA = 'GLA'
      GLG = 'GLG'
      LUG = 'LUG'
      KAT = 'KAT'
      ELL = 'ELL'
      GRN = 'GRN'
      GUJ = 'GUJ'
      HAT = 'HAT'
      HAU = 'HAU'
      HEB = 'HEB'
      HER = 'HER'
      HMO = 'HMO'
      HUN = 'HUN'
      ISL = 'ISL'
      IDO = 'IDO'
      IBO = 'IBO'
      IND = 'IND'
      INA = 'INA'
      ILE = 'ILE'
      IKU = 'IKU'
      IPK = 'IPK'
      GLE = 'GLE'
      JAV = 'JAV'
      KAL = 'KAL'
      KAN = 'KAN'
      KAU = 'KAU'
      KAS = 'KAS'
      KAZ = 'KAZ'
      KIK = 'KIK'
      KIN = 'KIN'
      KIR = 'KIR'
      KOM = 'KOM'
      KON = 'KON'
      KUA = 'KUA'
      KUR = 'KUR'
      LAO = 'LAO'
      LAT = 'LAT'
      LAV = 'LAV'
      LIM = 'LIM'
      LIN = 'LIN'
      LIT = 'LIT'
      LUB = 'LUB'
      LTZ = 'LTZ'
      MKD = 'MKD'
      MLG = 'MLG'
      MSA = 'MSA'
      MAL = 'MAL'
      MLT = 'MLT'
      GLV = 'GLV'
      MRI = 'MRI'
      MAR = 'MAR'
      MAH = 'MAH'
      MON = 'MON'
      NAU = 'NAU'
      NAV = 'NAV'
      NDE = 'NDE'
      NBL = 'NBL'
      NDO = 'NDO'
      NEP = 'NEP'
      SME = 'SME'
      NOR = 'NOR'
      NOB = 'NOB'
      NNO = 'NNO'
      OCI = 'OCI'
      OJI = 'OJI'
      ORI = 'ORI'
      ORM = 'ORM'
      OSS = 'OSS'
      PLI = 'PLI'
      FAS = 'FAS'
      POL = 'POL'
      PUS = 'PUS'
      QUE = 'QUE'
      QAA = 'QAA'
      RON = 'RON'
      ROH = 'ROH'
      RUN = 'RUN'
      SMO = 'SMO'
      SAG = 'SAG'
      SAN = 'SAN'
      SRD = 'SRD'
      SRB = 'SRB'
      SNA = 'SNA'
      III = 'III'
      SND = 'SND'
      SIN = 'SIN'
      SLK = 'SLK'
      SLV = 'SLV'
      SOM = 'SOM'
      SOT = 'SOT'
      SUN = 'SUN'
      SWA = 'SWA'
      SSW = 'SSW'
      SWE = 'SWE'
      TGL = 'TGL'
      TAH = 'TAH'
      TGK = 'TGK'
      TAM = 'TAM'
      TAT = 'TAT'
      TEL = 'TEL'
      THA = 'THA'
      BOD = 'BOD'
      TIR = 'TIR'
      TON = 'TON'
      TSO = 'TSO'
      TSN = 'TSN'
      TUR = 'TUR'
      TUK = 'TUK'
      TWI = 'TWI'
      UIG = 'UIG'
      UKR = 'UKR'
      UZB = 'UZB'
      VEN = 'VEN'
      VOL = 'VOL'
      WLN = 'WLN'
      CYM = 'CYM'
      FRY = 'FRY'
      WOL = 'WOL'
      XHO = 'XHO'
      YID = 'YID'
      YOR = 'YOR'
      ZHA = 'ZHA'
      ZUL = 'ZUL'
      ORJ = 'ORJ'
      QPC = 'QPC'
      TNG = 'TNG'
      SRP = 'SRP'
    end

    # @!attribute category
    #   Optionally, specify a job template category to limit responses to only job templates from that category.
    #   @return [String]
    # @!attribute list_by
    #   Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
    #   @return [String]
    # @!attribute max_results
    #   Optional. Number of job templates, up to twenty, that will be returned at one time.
    #   @return [Integer]
    # @!attribute next_token
    #   Use this string, provided with the response to a previous request, to request the next batch of job templates.
    #   @return [String]
    # @!attribute order
    #   Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
    #   @return [String]
    class ListJobTemplatesRequest < Struct.new(
      :category,
      :list_by,
      :max_results,
      :next_token,
      :order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_templates
    #   List of Job templates.
    #   @return [Array<Types::JobTemplate>]
    # @!attribute next_token
    #   Use this string to request the next batch of job templates.
    #   @return [String]
    class ListJobTemplatesResponse < Struct.new(
      :job_templates,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   Optional. Number of jobs, up to twenty, that will be returned at one time.
    #   @return [Integer]
    # @!attribute next_token
    #   Optional. Use this string, provided with the response to a previous request, to request the next batch of jobs.
    #   @return [String]
    # @!attribute order
    #   Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
    #   @return [String]
    # @!attribute queue
    #   Optional. Provide a queue name to get back only jobs from that queue.
    #   @return [String]
    # @!attribute status
    #   Optional. A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
    #   @return [String]
    class ListJobsRequest < Struct.new(
      :max_results,
      :next_token,
      :order,
      :queue,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   List of jobs
    #   @return [Array<Types::Job>]
    # @!attribute next_token
    #   Use this string to request the next batch of jobs.
    #   @return [String]
    class ListJobsResponse < Struct.new(
      :jobs,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute category
    #   Optionally, specify a preset category to limit responses to only presets from that category.
    #   @return [String]
    # @!attribute list_by
    #   Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
    #   @return [String]
    # @!attribute max_results
    #   Optional. Number of presets, up to twenty, that will be returned at one time
    #   @return [Integer]
    # @!attribute next_token
    #   Use this string, provided with the response to a previous request, to request the next batch of presets.
    #   @return [String]
    # @!attribute order
    #   Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
    #   @return [String]
    class ListPresetsRequest < Struct.new(
      :category,
      :list_by,
      :max_results,
      :next_token,
      :order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   Use this string to request the next batch of presets.
    #   @return [String]
    # @!attribute presets
    #   List of presets
    #   @return [Array<Types::Preset>]
    class ListPresetsResponse < Struct.new(
      :next_token,
      :presets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute list_by
    #   Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.
    #   @return [String]
    # @!attribute max_results
    #   Optional. Number of queues, up to twenty, that will be returned at one time.
    #   @return [Integer]
    # @!attribute next_token
    #   Use this string, provided with the response to a previous request, to request the next batch of queues.
    #   @return [String]
    # @!attribute order
    #   Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
    #   @return [String]
    class ListQueuesRequest < Struct.new(
      :list_by,
      :max_results,
      :next_token,
      :order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   Use this string to request the next batch of queues.
    #   @return [String]
    # @!attribute queues
    #   List of queues.
    #   @return [Array<Types::Queue>]
    # @!attribute total_concurrent_jobs
    #   The maximum number of jobs that MediaConvert can process at one time, across all of your on-demand queues in the current AWS Region.
    #   @return [Integer]
    # @!attribute unallocated_concurrent_jobs
    #   The remaining number of concurrent jobs that are not associated with a queue and are available to allocate to a queue. You can allocate these jobs when you create or update a queue.
    #   @return [Integer]
    class ListQueuesResponse < Struct.new(
      :next_token,
      :queues,
      :total_concurrent_jobs,
      :unallocated_concurrent_jobs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the resource that you want to list tags for. To get the ARN, send a GET request with the resource name.
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_tags
    #   The Amazon Resource Name (ARN) and tags for an AWS Elemental MediaConvert resource.
    #   @return [Types::ResourceTags]
    class ListTagsForResourceResponse < Struct.new(
      :resource_tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   Optional. Number of valid Job engine versions, up to twenty, that will be returned at one time.
    #   @return [Integer]
    # @!attribute next_token
    #   Optional. Use this string, provided with the response to a previous request, to request the next batch of Job engine versions.
    #   @return [String]
    class ListVersionsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   Optional. Use this string, provided with the response to a previous request, to request the next batch of Job engine versions.
    #   @return [String]
    # @!attribute versions
    #   Retrieve a JSON array of all available Job engine versions and the date they expire.
    #   @return [Array<Types::JobEngineVersion>]
    class ListVersionsResponse < Struct.new(
      :next_token,
      :versions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Selects between the DVB and ATSC buffer models for Dolby Digital audio.
    module M2tsAudioBufferModel
      DVB = 'DVB'
      ATSC = 'ATSC'
    end

    # Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration. In all other cases, keep the default value, Default codec duration. When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    module M2tsAudioDuration
      DEFAULT_CODEC_DURATION = 'DEFAULT_CODEC_DURATION'
      MATCH_VIDEO_DURATION = 'MATCH_VIDEO_DURATION'
    end

    # Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions.
    module M2tsBufferModel
      MULTIPLEX = 'MULTIPLEX'
      NONE = 'NONE'
    end

    # If you select ALIGN_TO_VIDEO, MediaConvert writes captions and data packets with Presentation Timestamp (PTS) values greater than or equal to the first video packet PTS (MediaConvert drops captions and data packets with lesser PTS values). Keep the default value to allow all PTS values.
    module M2tsDataPtsControl
      AUTO = 'AUTO'
      ALIGN_TO_VIDEO = 'ALIGN_TO_VIDEO'
    end

    # When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
    module M2tsEbpAudioInterval
      VIDEO_AND_FIXED_INTERVALS = 'VIDEO_AND_FIXED_INTERVALS'
      VIDEO_INTERVAL = 'VIDEO_INTERVAL'
    end

    # Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
    module M2tsEbpPlacement
      VIDEO_AND_AUDIO_PIDS = 'VIDEO_AND_AUDIO_PIDS'
      VIDEO_PID = 'VIDEO_PID'
    end

    # Controls whether to include the ES Rate field in the PES header.
    module M2tsEsRateInPes
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # Keep the default value unless you know that your audio EBP markers are incorrectly appearing before your video EBP markers. To correct this problem, set this value to Force.
    module M2tsForceTsVideoEbpOrder
      FORCE = 'FORCE'
      DEFAULT = 'DEFAULT'
    end

    # To include key-length-value metadata in this output: Set KLV metadata insertion to Passthrough. MediaConvert reads KLV metadata present in your input and passes it through to the output transport stream. To exclude this KLV metadata: Set KLV metadata insertion to None or leave blank.
    module M2tsKlvMetadata
      PASSTHROUGH = 'PASSTHROUGH'
      NONE = 'NONE'
    end

    # If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    module M2tsNielsenId3
      INSERT = 'INSERT'
      NONE = 'NONE'
    end

    # When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream.
    module M2tsPcrControl
      PCR_EVERY_PES_PACKET = 'PCR_EVERY_PES_PACKET'
      CONFIGURED_PCR_PERIOD = 'CONFIGURED_PCR_PERIOD'
    end

    # Specify whether MediaConvert automatically attempts to prevent decoder buffer underflows in your transport stream output. Use if you are seeing decoder buffer underflows in your output and are unable to increase your transport stream's bitrate. For most workflows: We recommend that you keep the default value, Disabled. To prevent decoder buffer underflows in your output, when possible: Choose Enabled. Note that if MediaConvert prevents a decoder buffer underflow in your output, output video quality is reduced and your job will take longer to complete.
    module M2tsPreventBufferUnderflow
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate.
    module M2tsRateMode
      VBR = 'VBR'
      CBR = 'CBR'
    end

    # Settings for SCTE-35 signals from ESAM. Include this in your job settings to put SCTE-35 markers in your HLS and transport stream outputs at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML.
    # @!attribute scte35_esam_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport stream generated by ESAM.
    #   @return [Integer]
    class M2tsScte35Esam < Struct.new(
      :scte35_esam_pid,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # For SCTE-35 markers from your input-- Choose Passthrough if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None. Also provide the ESAM XML as a string in the setting Signal processing notification XML. Also enable ESAM SCTE-35 (include the property scte35Esam).
    module M2tsScte35Source
      PASSTHROUGH = 'PASSTHROUGH'
      NONE = 'NONE'
    end

    # Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
    module M2tsSegmentationMarkers
      NONE = 'NONE'
      RAI_SEGSTART = 'RAI_SEGSTART'
      RAI_ADAPT = 'RAI_ADAPT'
      PSI_SEGSTART = 'PSI_SEGSTART'
      EBP = 'EBP'
      EBP_LEGACY = 'EBP_LEGACY'
    end

    # The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of "reset_cadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of "maintain_cadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule.
    module M2tsSegmentationStyle
      MAINTAIN_CADENCE = 'MAINTAIN_CADENCE'
      RESET_CADENCE = 'RESET_CADENCE'
    end

    # MPEG-2 TS container settings. These apply to outputs in a File output group when the output's container is MPEG-2 Transport Stream (M2TS). In these assets, data is organized by the program map table (PMT). Each transport stream program contains subsets of data, including audio, video, and metadata. Each of these subsets of data has a numerical label called a packet identifier (PID). Each transport stream program corresponds to one MediaConvert output. The PMT lists the types of data in a program along with their PID. Downstream systems and players use the program map table to look up the PID for each type of data it accesses and then uses the PIDs to locate specific data within the asset.
    # @!attribute audio_buffer_model
    #   Selects between the DVB and ATSC buffer models for Dolby Digital audio.
    #   @return [String]
    # @!attribute audio_duration
    #   Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration. In all other cases, keep the default value, Default codec duration. When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    #   @return [String]
    # @!attribute audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #   @return [Integer]
    # @!attribute audio_pids
    #   Specify the packet identifiers (PIDs) for any elementary audio streams you include in this output. Specify multiple PIDs as a JSON array. Default is the range 482-492.
    #   @return [Array<Integer>]
    # @!attribute audio_pts_offset_delta
    #   Manually specify the difference in PTS offset that will be applied to the audio track, in seconds or milliseconds, when you set PTS offset to Seconds or Milliseconds. Enter an integer from -10000 to 10000. Leave blank to keep the default value 0.
    #   @return [Integer]
    # @!attribute bitrate
    #   Specify the output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate. Other common values are 3750000, 7500000, and 15000000.
    #   @return [Integer]
    # @!attribute buffer_model
    #   Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions.
    #   @return [String]
    # @!attribute data_pts_control
    #   If you select ALIGN_TO_VIDEO, MediaConvert writes captions and data packets with Presentation Timestamp (PTS) values greater than or equal to the first video packet PTS (MediaConvert drops captions and data packets with lesser PTS values). Keep the default value to allow all PTS values.
    #   @return [String]
    # @!attribute dvb_nit_settings
    #   Use these settings to insert a DVB Network Information Table (NIT) in the transport stream of this output.
    #   @return [Types::DvbNitSettings]
    # @!attribute dvb_sdt_settings
    #   Use these settings to insert a DVB Service Description Table (SDT) in the transport stream of this output.
    #   @return [Types::DvbSdtSettings]
    # @!attribute dvb_sub_pids
    #   Specify the packet identifiers (PIDs) for DVB subtitle data included in this output. Specify multiple PIDs as a JSON array. Default is the range 460-479.
    #   @return [Array<Integer>]
    # @!attribute dvb_tdt_settings
    #   Use these settings to insert a DVB Time and Date Table (TDT) in the transport stream of this output.
    #   @return [Types::DvbTdtSettings]
    # @!attribute dvb_teletext_pid
    #   Specify the packet identifier (PID) for DVB teletext data you include in this output. Default is 499.
    #   @return [Integer]
    # @!attribute ebp_audio_interval
    #   When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
    #   @return [String]
    # @!attribute ebp_placement
    #   Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
    #   @return [String]
    # @!attribute es_rate_in_pes
    #   Controls whether to include the ES Rate field in the PES header.
    #   @return [String]
    # @!attribute force_ts_video_ebp_order
    #   Keep the default value unless you know that your audio EBP markers are incorrectly appearing before your video EBP markers. To correct this problem, set this value to Force.
    #   @return [String]
    # @!attribute fragment_time
    #   The length, in seconds, of each fragment. Only used with EBP markers.
    #   @return [Float]
    # @!attribute klv_metadata
    #   To include key-length-value metadata in this output: Set KLV metadata insertion to Passthrough. MediaConvert reads KLV metadata present in your input and passes it through to the output transport stream. To exclude this KLV metadata: Set KLV metadata insertion to None or leave blank.
    #   @return [String]
    # @!attribute max_pcr_interval
    #   Specify the maximum time, in milliseconds, between Program Clock References (PCRs) inserted into the transport stream.
    #   @return [Integer]
    # @!attribute min_ebp_interval
    #   When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker. The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
    #   @return [Integer]
    # @!attribute nielsen_id3
    #   If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #   @return [String]
    # @!attribute null_packet_bitrate
    #   Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
    #   @return [Float]
    # @!attribute pat_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #   @return [Integer]
    # @!attribute pcr_control
    #   When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream.
    #   @return [String]
    # @!attribute pcr_pid
    #   Specify the packet identifier (PID) for the program clock reference (PCR) in this output. If you do not specify a value, the service will use the value for Video PID.
    #   @return [Integer]
    # @!attribute pmt_interval
    #   Specify the number of milliseconds between instances of the program map table (PMT) in the output transport stream.
    #   @return [Integer]
    # @!attribute pmt_pid
    #   Specify the packet identifier (PID) for the program map table (PMT) itself. Default is 480.
    #   @return [Integer]
    # @!attribute prevent_buffer_underflow
    #   Specify whether MediaConvert automatically attempts to prevent decoder buffer underflows in your transport stream output. Use if you are seeing decoder buffer underflows in your output and are unable to increase your transport stream's bitrate. For most workflows: We recommend that you keep the default value, Disabled. To prevent decoder buffer underflows in your output, when possible: Choose Enabled. Note that if MediaConvert prevents a decoder buffer underflow in your output, output video quality is reduced and your job will take longer to complete.
    #   @return [String]
    # @!attribute private_metadata_pid
    #   Specify the packet identifier (PID) of the private metadata stream. Default is 503.
    #   @return [Integer]
    # @!attribute program_number
    #   Use Program number to specify the program number used in the program map table (PMT) for this output. Default is 1. Program numbers and program map tables are parts of MPEG-2 transport stream containers, used for organizing data.
    #   @return [Integer]
    # @!attribute pts_offset
    #   Manually specify the initial PTS offset, in seconds, when you set PTS offset to Seconds. Enter an integer from 0 to 3600. Leave blank to keep the default value 2.
    #   @return [Integer]
    # @!attribute pts_offset_mode
    #   Specify the initial presentation timestamp (PTS) offset for your transport stream output. To let MediaConvert automatically determine the initial PTS offset: Keep the default value, Auto. We recommend that you choose Auto for the widest player compatibility. The initial PTS will be at least two seconds and vary depending on your output's bitrate, HRD buffer size and HRD buffer initial fill percentage. To manually specify an initial PTS offset: Choose Seconds or Milliseconds. Then specify the number of seconds or milliseconds with PTS offset.
    #   @return [String]
    # @!attribute rate_mode
    #   When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate.
    #   @return [String]
    # @!attribute scte35_esam
    #   Include this in your job settings to put SCTE-35 markers in your HLS and transport stream outputs at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML.
    #   @return [Types::M2tsScte35Esam]
    # @!attribute scte35_pid
    #   Specify the packet identifier (PID) of the SCTE-35 stream in the transport stream.
    #   @return [Integer]
    # @!attribute scte35_source
    #   For SCTE-35 markers from your input-- Choose Passthrough if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None. Also provide the ESAM XML as a string in the setting Signal processing notification XML. Also enable ESAM SCTE-35 (include the property scte35Esam).
    #   @return [String]
    # @!attribute segmentation_markers
    #   Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
    #   @return [String]
    # @!attribute segmentation_style
    #   The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of "reset_cadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of "maintain_cadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule.
    #   @return [String]
    # @!attribute segmentation_time
    #   Specify the length, in seconds, of each segment. Required unless markers is set to _none_.
    #   @return [Float]
    # @!attribute timed_metadata_pid
    #   Packet Identifier (PID) of the ID3 metadata stream in the transport stream.
    #   @return [Integer]
    # @!attribute transport_stream_id
    #   Specify the ID for the transport stream itself in the program map table for this output. Transport stream IDs and program map tables are parts of MPEG-2 transport stream containers, used for organizing data.
    #   @return [Integer]
    # @!attribute video_pid
    #   Specify the packet identifier (PID) of the elementary video stream in the transport stream.
    #   @return [Integer]
    class M2tsSettings < Struct.new(
      :audio_buffer_model,
      :audio_duration,
      :audio_frames_per_pes,
      :audio_pids,
      :audio_pts_offset_delta,
      :bitrate,
      :buffer_model,
      :data_pts_control,
      :dvb_nit_settings,
      :dvb_sdt_settings,
      :dvb_sub_pids,
      :dvb_tdt_settings,
      :dvb_teletext_pid,
      :ebp_audio_interval,
      :ebp_placement,
      :es_rate_in_pes,
      :force_ts_video_ebp_order,
      :fragment_time,
      :klv_metadata,
      :max_pcr_interval,
      :min_ebp_interval,
      :nielsen_id3,
      :null_packet_bitrate,
      :pat_interval,
      :pcr_control,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :prevent_buffer_underflow,
      :private_metadata_pid,
      :program_number,
      :pts_offset,
      :pts_offset_mode,
      :rate_mode,
      :scte35_esam,
      :scte35_pid,
      :scte35_source,
      :segmentation_markers,
      :segmentation_style,
      :segmentation_time,
      :timed_metadata_pid,
      :transport_stream_id,
      :video_pid,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration. In all other cases, keep the default value, Default codec duration. When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    module M3u8AudioDuration
      DEFAULT_CODEC_DURATION = 'DEFAULT_CODEC_DURATION'
      MATCH_VIDEO_DURATION = 'MATCH_VIDEO_DURATION'
    end

    # If you select ALIGN_TO_VIDEO, MediaConvert writes captions and data packets with Presentation Timestamp (PTS) values greater than or equal to the first video packet PTS (MediaConvert drops captions and data packets with lesser PTS values). Keep the default value AUTO to allow all PTS values.
    module M3u8DataPtsControl
      AUTO = 'AUTO'
      ALIGN_TO_VIDEO = 'ALIGN_TO_VIDEO'
    end

    # If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    module M3u8NielsenId3
      INSERT = 'INSERT'
      NONE = 'NONE'
    end

    # When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
    module M3u8PcrControl
      PCR_EVERY_PES_PACKET = 'PCR_EVERY_PES_PACKET'
      CONFIGURED_PCR_PERIOD = 'CONFIGURED_PCR_PERIOD'
    end

    # For SCTE-35 markers from your input-- Choose Passthrough if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None if you don't want manifest conditioning. Choose Passthrough and choose Ad markers if you do want manifest conditioning. In both cases, also provide the ESAM XML as a string in the setting Signal processing notification XML.
    module M3u8Scte35Source
      PASSTHROUGH = 'PASSTHROUGH'
      NONE = 'NONE'
    end

    # These settings relate to the MPEG-2 transport stream (MPEG2-TS) container for the MPEG2-TS segments in your HLS outputs.
    # @!attribute audio_duration
    #   Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration. In all other cases, keep the default value, Default codec duration. When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    #   @return [String]
    # @!attribute audio_frames_per_pes
    #   The number of audio frames to insert for each PES packet.
    #   @return [Integer]
    # @!attribute audio_pids
    #   Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
    #   @return [Array<Integer>]
    # @!attribute audio_pts_offset_delta
    #   Manually specify the difference in PTS offset that will be applied to the audio track, in seconds or milliseconds, when you set PTS offset to Seconds or Milliseconds. Enter an integer from -10000 to 10000. Leave blank to keep the default value 0.
    #   @return [Integer]
    # @!attribute data_pts_control
    #   If you select ALIGN_TO_VIDEO, MediaConvert writes captions and data packets with Presentation Timestamp (PTS) values greater than or equal to the first video packet PTS (MediaConvert drops captions and data packets with lesser PTS values). Keep the default value AUTO to allow all PTS values.
    #   @return [String]
    # @!attribute max_pcr_interval
    #   Specify the maximum time, in milliseconds, between Program Clock References (PCRs) inserted into the transport stream.
    #   @return [Integer]
    # @!attribute nielsen_id3
    #   If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    #   @return [String]
    # @!attribute pat_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #   @return [Integer]
    # @!attribute pcr_control
    #   When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
    #   @return [String]
    # @!attribute pcr_pid
    #   Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID.
    #   @return [Integer]
    # @!attribute pmt_interval
    #   The number of milliseconds between instances of this table in the output transport stream.
    #   @return [Integer]
    # @!attribute pmt_pid
    #   Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream.
    #   @return [Integer]
    # @!attribute private_metadata_pid
    #   Packet Identifier (PID) of the private metadata stream in the transport stream.
    #   @return [Integer]
    # @!attribute program_number
    #   The value of the program number field in the Program Map Table.
    #   @return [Integer]
    # @!attribute pts_offset
    #   Manually specify the initial PTS offset, in seconds, when you set PTS offset to Seconds. Enter an integer from 0 to 3600. Leave blank to keep the default value 2.
    #   @return [Integer]
    # @!attribute pts_offset_mode
    #   Specify the initial presentation timestamp (PTS) offset for your transport stream output. To let MediaConvert automatically determine the initial PTS offset: Keep the default value, Auto. We recommend that you choose Auto for the widest player compatibility. The initial PTS will be at least two seconds and vary depending on your output's bitrate, HRD buffer size and HRD buffer initial fill percentage. To manually specify an initial PTS offset: Choose Seconds or Milliseconds. Then specify the number of seconds or milliseconds with PTS offset.
    #   @return [String]
    # @!attribute scte35_pid
    #   Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
    #   @return [Integer]
    # @!attribute scte35_source
    #   For SCTE-35 markers from your input-- Choose Passthrough if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None if you don't want manifest conditioning. Choose Passthrough and choose Ad markers if you do want manifest conditioning. In both cases, also provide the ESAM XML as a string in the setting Signal processing notification XML.
    #   @return [String]
    # @!attribute timed_metadata
    #   Set ID3 metadata to Passthrough to include ID3 metadata in this output. This includes ID3 metadata from the following features: ID3 timestamp period, and Custom ID3 metadata inserter. To exclude this ID3 metadata in this output: set ID3 metadata to None or leave blank.
    #   @return [String]
    # @!attribute timed_metadata_pid
    #   Packet Identifier (PID) of the ID3 metadata stream in the transport stream.
    #   @return [Integer]
    # @!attribute transport_stream_id
    #   The value of the transport stream ID field in the Program Map Table.
    #   @return [Integer]
    # @!attribute video_pid
    #   Packet Identifier (PID) of the elementary video stream in the transport stream.
    #   @return [Integer]
    class M3u8Settings < Struct.new(
      :audio_duration,
      :audio_frames_per_pes,
      :audio_pids,
      :audio_pts_offset_delta,
      :data_pts_control,
      :max_pcr_interval,
      :nielsen_id3,
      :pat_interval,
      :pcr_control,
      :pcr_pid,
      :pmt_interval,
      :pmt_pid,
      :private_metadata_pid,
      :program_number,
      :pts_offset,
      :pts_offset_mode,
      :scte35_pid,
      :scte35_source,
      :timed_metadata,
      :timed_metadata_pid,
      :transport_stream_id,
      :video_pid,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The color space matrix coefficients of the video track.
    module MatrixCoefficients
      RGB = 'RGB'
      ITU_709 = 'ITU_709'
      UNSPECIFIED = 'UNSPECIFIED'
      RESERVED = 'RESERVED'
      FCC = 'FCC'
      ITU_470BG = 'ITU_470BG'
      SMPTE_170M = 'SMPTE_170M'
      SMPTE_240M = 'SMPTE_240M'
      YCgCo = 'YCgCo'
      ITU_2020_NCL = 'ITU_2020_NCL'
      ITU_2020_CL = 'ITU_2020_CL'
      SMPTE_2085 = 'SMPTE_2085'
      CD_NCL = 'CD_NCL'
      CD_CL = 'CD_CL'
      ITU_2100ICtCp = 'ITU_2100ICtCp'
      IPT = 'IPT'
      EBU3213 = 'EBU3213'
      LAST = 'LAST'
    end

    # Metadata and other file information.
    # @!attribute e_tag
    #   The entity tag (ETag) of the file.
    #   @return [String]
    # @!attribute file_size
    #   The size of the media file, in bytes.
    #   @return [Integer]
    # @!attribute last_modified
    #   The last modification timestamp of the media file, in Unix time.
    #   @return [Time]
    # @!attribute mime_type
    #   The MIME type of the media file.
    #   @return [String]
    class Metadata < Struct.new(
      :e_tag,
      :file_size,
      :last_modified,
      :mime_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Min bottom rendition size to specify a minimum size for the lowest resolution in your ABR stack. * The lowest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 640x360 the lowest resolution in your ABR stack will be equal to or greater than to 640x360. * If you specify a Min top rendition size rule, the value that you specify for Min bottom rendition size must be less than, or equal to, Min top rendition size.
    # @!attribute height
    #   Use Height to define the video resolution height, in pixels, for this rule.
    #   @return [Integer]
    # @!attribute width
    #   Use Width to define the video resolution width, in pixels, for this rule.
    #   @return [Integer]
    class MinBottomRenditionSize < Struct.new(
      :height,
      :width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Min top rendition size to specify a minimum size for the highest resolution in your ABR stack. * The highest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 1280x720 the highest resolution in your ABR stack will be equal to or greater than 1280x720. * If you specify a value for Max resolution, the value that you specify for Min top rendition size must be less than, or equal to, Max resolution.
    # @!attribute height
    #   Use Height to define the video resolution height, in pixels, for this rule.
    #   @return [Integer]
    # @!attribute width
    #   Use Width to define the video resolution width, in pixels, for this rule.
    #   @return [Integer]
    class MinTopRenditionSize < Struct.new(
      :height,
      :width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Overlay motion graphics on top of your video. The motion graphics that you specify here appear on all outputs in all output groups. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/motion-graphic-overlay.html.
    # @!attribute framerate
    #   If your motion graphic asset is a .mov file, keep this setting unspecified. If your motion graphic asset is a series of .png files, specify the frame rate of the overlay in frames per second, as a fraction. For example, specify 24 fps as 24/1. Make sure that the number of images in your series matches the frame rate and your intended overlay duration. For example, if you want a 30-second overlay at 30 fps, you should have 900 .png images. This overlay frame rate doesn't need to match the frame rate of the underlying video.
    #   @return [Types::MotionImageInsertionFramerate]
    # @!attribute input
    #   Specify the .mov file or series of .png files that you want to overlay on your video. For .png files, provide the file name of the first file in the series. Make sure that the names of the .png files end with sequential numbers that specify the order that they are played in. For example, overlay_000.png, overlay_001.png, overlay_002.png, and so on. The sequence must start at zero, and each image file name must have the same number of digits. Pad your initial file names with enough zeros to complete the sequence. For example, if the first image is overlay_0.png, there can be only 10 images in the sequence, with the last image being overlay_9.png. But if the first image is overlay_00.png, there can be 100 images in the sequence.
    #   @return [String]
    # @!attribute insertion_mode
    #   Choose the type of motion graphic asset that you are providing for your overlay. You can choose either a .mov file or a series of .png files.
    #   @return [String]
    # @!attribute offset
    #   Use Offset to specify the placement of your motion graphic overlay on the video frame. Specify in pixels, from the upper-left corner of the frame. If you don't specify an offset, the service scales your overlay to the full size of the frame. Otherwise, the service inserts the overlay at its native resolution and scales the size up or down with any video scaling.
    #   @return [Types::MotionImageInsertionOffset]
    # @!attribute playback
    #   Specify whether your motion graphic overlay repeats on a loop or plays only once.
    #   @return [String]
    # @!attribute start_time
    #   Specify when the motion overlay begins. Use timecode format (HH:MM:SS:FF or HH:MM:SS;FF). Make sure that the timecode you provide here takes into account how you have set up your timecode configuration under both job settings and input settings. The simplest way to do that is to set both to start at 0. If you need to set up your job to follow timecodes embedded in your source that don't start at zero, make sure that you specify a start time that is after the first embedded timecode. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/setting-up-timecode.html
    #   @return [String]
    class MotionImageInserter < Struct.new(
      :framerate,
      :input,
      :insertion_mode,
      :offset,
      :playback,
      :start_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # For motion overlays that don't have a built-in frame rate, specify the frame rate of the overlay in frames per second, as a fraction. For example, specify 24 fps as 24/1. The overlay frame rate doesn't need to match the frame rate of the underlying video.
    # @!attribute framerate_denominator
    #   The bottom of the fraction that expresses your overlay frame rate. For example, if your frame rate is 24 fps, set this value to 1.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   The top of the fraction that expresses your overlay frame rate. For example, if your frame rate is 24 fps, set this value to 24.
    #   @return [Integer]
    class MotionImageInsertionFramerate < Struct.new(
      :framerate_denominator,
      :framerate_numerator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Choose the type of motion graphic asset that you are providing for your overlay. You can choose either a .mov file or a series of .png files.
    module MotionImageInsertionMode
      MOV = 'MOV'
      PNG = 'PNG'
    end

    # Specify the offset between the upper-left corner of the video frame and the top left corner of the overlay.
    # @!attribute image_x
    #   Set the distance, in pixels, between the overlay and the left edge of the video frame.
    #   @return [Integer]
    # @!attribute image_y
    #   Set the distance, in pixels, between the overlay and the top edge of the video frame.
    #   @return [Integer]
    class MotionImageInsertionOffset < Struct.new(
      :image_x,
      :image_y,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify whether your motion graphic overlay repeats on a loop or plays only once.
    module MotionImagePlayback
      ONCE = 'ONCE'
      REPEAT = 'REPEAT'
    end

    # When enabled, include 'clap' atom if appropriate for the video output settings.
    module MovClapAtom
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
    module MovCslgAtom
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2.
    module MovMpeg2FourCCControl
      XDCAM = 'XDCAM'
      MPEG = 'MPEG'
    end

    # Unless you need Omneon compatibility: Keep the default value, None. To make this output compatible with Omneon: Choose Omneon. When you do, MediaConvert increases the length of the 'elst' edit list atom. Note that this might cause file rejections when a recipient of the output file doesn't expect this extra padding.
    module MovPaddingControl
      OMNEON = 'OMNEON'
      NONE = 'NONE'
    end

    # Always keep the default value (SELF_CONTAINED) for this setting.
    module MovReference
      SELF_CONTAINED = 'SELF_CONTAINED'
      EXTERNAL = 'EXTERNAL'
    end

    # These settings relate to your QuickTime MOV output container.
    # @!attribute clap_atom
    #   When enabled, include 'clap' atom if appropriate for the video output settings.
    #   @return [String]
    # @!attribute cslg_atom
    #   When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
    #   @return [String]
    # @!attribute mpeg2_four_cc_control
    #   When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2.
    #   @return [String]
    # @!attribute padding_control
    #   Unless you need Omneon compatibility: Keep the default value, None. To make this output compatible with Omneon: Choose Omneon. When you do, MediaConvert increases the length of the 'elst' edit list atom. Note that this might cause file rejections when a recipient of the output file doesn't expect this extra padding.
    #   @return [String]
    # @!attribute reference
    #   Always keep the default value (SELF_CONTAINED) for this setting.
    #   @return [String]
    class MovSettings < Struct.new(
      :clap_atom,
      :cslg_atom,
      :mpeg2_four_cc_control,
      :padding_control,
      :reference,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Required when you set Codec to the value MP2.
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second.
    #   @return [Integer]
    # @!attribute channels
    #   Set Channels to specify the number of channels in this output audio track. Choosing Mono in will give you 1 output channel; choosing Stereo will give you 2. In the API, valid values are 1 and 2.
    #   @return [Integer]
    # @!attribute sample_rate
    #   Sample rate in Hz.
    #   @return [Integer]
    class Mp2Settings < Struct.new(
      :bitrate,
      :channels,
      :sample_rate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify whether the service encodes this MP3 audio output with a constant bitrate (CBR) or a variable bitrate (VBR).
    module Mp3RateControlMode
      CBR = 'CBR'
      VBR = 'VBR'
    end

    # Required when you set Codec, under AudioDescriptions>CodecSettings, to the value MP3.
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second.
    #   @return [Integer]
    # @!attribute channels
    #   Specify the number of channels in this output audio track. Choosing Mono gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2.
    #   @return [Integer]
    # @!attribute rate_control_mode
    #   Specify whether the service encodes this MP3 audio output with a constant bitrate (CBR) or a variable bitrate (VBR).
    #   @return [String]
    # @!attribute sample_rate
    #   Sample rate in Hz.
    #   @return [Integer]
    # @!attribute vbr_quality
    #   Required when you set Bitrate control mode to VBR. Specify the audio quality of this MP3 output from 0 (highest quality) to 9 (lowest quality).
    #   @return [Integer]
    class Mp3Settings < Struct.new(
      :bitrate,
      :channels,
      :rate_control_mode,
      :sample_rate,
      :vbr_quality,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # When enabled, a C2PA compliant manifest will be generated, signed and embeded in the output. For more information on C2PA, see https://c2pa.org/specifications/specifications/2.1/index.html
    module Mp4C2paManifest
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
    module Mp4CslgAtom
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # Inserts a free-space box immediately after the moov box.
    module Mp4FreeSpaceBox
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # To place the MOOV atom at the beginning of your output, which is useful for progressive downloading: Leave blank or choose Progressive download. To place the MOOV at the end of your output: Choose Normal.
    module Mp4MoovPlacement
      PROGRESSIVE_DOWNLOAD = 'PROGRESSIVE_DOWNLOAD'
      NORMAL = 'NORMAL'
    end

    # These settings relate to your MP4 output container. You can create audio only outputs with this container. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/supported-codecs-containers-audio-only.html#output-codecs-and-containers-supported-for-audio-only.
    # @!attribute audio_duration
    #   Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration. In all other cases, keep the default value, Default codec duration. When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    #   @return [String]
    # @!attribute c2pa_manifest
    #   When enabled, a C2PA compliant manifest will be generated, signed and embeded in the output. For more information on C2PA, see https://c2pa.org/specifications/specifications/2.1/index.html
    #   @return [String]
    # @!attribute certificate_secret
    #   Specify the name or ARN of the AWS Secrets Manager secret that contains your C2PA public certificate chain in PEM format. Provide a valid secret name or ARN. Note that your MediaConvert service role must allow access to this secret. The public certificate chain is added to the COSE header (x5chain) for signature validation. Include the signer's certificate and all intermediate certificates. Do not include the root certificate. For details on COSE, see: https://opensource.contentauthenticity.org/docs/manifest/signing-manifests
    #   @return [String]
    # @!attribute cslg_atom
    #   When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
    #   @return [String]
    # @!attribute ctts_version
    #   Ignore this setting unless compliance to the CTTS box version specification matters in your workflow. Specify a value of 1 to set your CTTS box version to 1 and make your output compliant with the specification. When you specify a value of 1, you must also set CSLG atom to the value INCLUDE. Keep the default value 0 to set your CTTS box version to 0. This can provide backward compatibility for some players and packagers.
    #   @return [Integer]
    # @!attribute free_space_box
    #   Inserts a free-space box immediately after the moov box.
    #   @return [String]
    # @!attribute moov_placement
    #   To place the MOOV atom at the beginning of your output, which is useful for progressive downloading: Leave blank or choose Progressive download. To place the MOOV at the end of your output: Choose Normal.
    #   @return [String]
    # @!attribute mp4_major_brand
    #   Overrides the "Major Brand" field in the output file. Usually not necessary to specify.
    #   @return [String]
    # @!attribute signing_kms_key
    #   Specify the ID or ARN of the AWS KMS key used to sign the C2PA manifest in your MP4 output. Provide a valid KMS key ARN. Note that your MediaConvert service role must allow access to this key.
    #   @return [String]
    class Mp4Settings < Struct.new(
      :audio_duration,
      :c2pa_manifest,
      :certificate_secret,
      :cslg_atom,
      :ctts_version,
      :free_space_box,
      :moov_placement,
      :mp4_major_brand,
      :signing_kms_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Optional. Choose Include to have MediaConvert mark up your DASH manifest with <Accessibility> elements for embedded 608 captions. This markup isn't generally required, but some video players require it to discover and play embedded 608 captions. Keep the default value, Exclude, to leave these elements out. When you enable this setting, this is the markup that MediaConvert includes in your manifest: <Accessibility schemeIdUri="urn:scte:dash:cc:cea-608:2015" value="CC1=eng"/>
    module MpdAccessibilityCaptionHints
      INCLUDE = 'INCLUDE'
      EXCLUDE = 'EXCLUDE'
    end

    # Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration. In all other cases, keep the default value, Default codec duration. When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    module MpdAudioDuration
      DEFAULT_CODEC_DURATION = 'DEFAULT_CODEC_DURATION'
      MATCH_VIDEO_DURATION = 'MATCH_VIDEO_DURATION'
    end

    # Use this setting only in DASH output groups that include sidecar TTML or IMSC captions. You specify sidecar captions in a separate output from your audio and video. Choose Raw for captions in a single XML file in a raw container. Choose Fragmented MPEG-4 for captions in XML format contained within fragmented MP4 files. This set of fragmented MP4 files is separate from your video and audio fragmented MP4 files.
    module MpdCaptionContainerType
      RAW = 'RAW'
      FRAGMENTED_MP4 = 'FRAGMENTED_MP4'
    end

    # To include key-length-value metadata in this output: Set KLV metadata insertion to Passthrough. MediaConvert reads KLV metadata present in your input and writes each instance to a separate event message box in the output, according to MISB ST1910.1. To exclude this KLV metadata: Set KLV metadata insertion to None or leave blank.
    module MpdKlvMetadata
      NONE = 'NONE'
      PASSTHROUGH = 'PASSTHROUGH'
    end

    # To add an InbandEventStream element in your output MPD manifest for each type of event message, set Manifest metadata signaling to Enabled. For ID3 event messages, the InbandEventStream element schemeIdUri will be same value that you specify for ID3 metadata scheme ID URI. For SCTE35 event messages, the InbandEventStream element schemeIdUri will be "urn:scte:scte35:2013:bin". To leave these elements out of your output MPD manifest, set Manifest metadata signaling to Disabled. To enable Manifest metadata signaling, you must also set SCTE-35 source to Passthrough, ESAM SCTE-35 to insert, or ID3 metadata to Passthrough.
    module MpdManifestMetadataSignaling
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML.
    module MpdScte35Esam
      INSERT = 'INSERT'
      NONE = 'NONE'
    end

    # Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None if you don't want those SCTE-35 markers in this output.
    module MpdScte35Source
      PASSTHROUGH = 'PASSTHROUGH'
      NONE = 'NONE'
    end

    # These settings relate to the fragmented MP4 container for the segments in your DASH outputs.
    # @!attribute accessibility_caption_hints
    #   Optional. Choose Include to have MediaConvert mark up your DASH manifest with <Accessibility> elements for embedded 608 captions. This markup isn't generally required, but some video players require it to discover and play embedded 608 captions. Keep the default value, Exclude, to leave these elements out. When you enable this setting, this is the markup that MediaConvert includes in your manifest: <Accessibility schemeIdUri="urn:scte:dash:cc:cea-608:2015" value="CC1=eng"/>
    #   @return [String]
    # @!attribute audio_duration
    #   Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration. In all other cases, keep the default value, Default codec duration. When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    #   @return [String]
    # @!attribute caption_container_type
    #   Use this setting only in DASH output groups that include sidecar TTML or IMSC captions. You specify sidecar captions in a separate output from your audio and video. Choose Raw for captions in a single XML file in a raw container. Choose Fragmented MPEG-4 for captions in XML format contained within fragmented MP4 files. This set of fragmented MP4 files is separate from your video and audio fragmented MP4 files.
    #   @return [String]
    # @!attribute klv_metadata
    #   To include key-length-value metadata in this output: Set KLV metadata insertion to Passthrough. MediaConvert reads KLV metadata present in your input and writes each instance to a separate event message box in the output, according to MISB ST1910.1. To exclude this KLV metadata: Set KLV metadata insertion to None or leave blank.
    #   @return [String]
    # @!attribute manifest_metadata_signaling
    #   To add an InbandEventStream element in your output MPD manifest for each type of event message, set Manifest metadata signaling to Enabled. For ID3 event messages, the InbandEventStream element schemeIdUri will be same value that you specify for ID3 metadata scheme ID URI. For SCTE35 event messages, the InbandEventStream element schemeIdUri will be "urn:scte:scte35:2013:bin". To leave these elements out of your output MPD manifest, set Manifest metadata signaling to Disabled. To enable Manifest metadata signaling, you must also set SCTE-35 source to Passthrough, ESAM SCTE-35 to insert, or ID3 metadata to Passthrough.
    #   @return [String]
    # @!attribute scte35_esam
    #   Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML.
    #   @return [String]
    # @!attribute scte35_source
    #   Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None if you don't want those SCTE-35 markers in this output.
    #   @return [String]
    # @!attribute timed_metadata
    #   To include ID3 metadata in this output: Set ID3 metadata to Passthrough. Specify this ID3 metadata in Custom ID3 metadata inserter. MediaConvert writes each instance of ID3 metadata in a separate Event Message (eMSG) box. To exclude this ID3 metadata: Set ID3 metadata to None or leave blank.
    #   @return [String]
    # @!attribute timed_metadata_box_version
    #   Specify the event message box (eMSG) version for ID3 timed metadata in your output.
    #   For more information, see ISO/IEC 23009-1:2022 section 5.10.3.3.3 Syntax.
    #   Leave blank to use the default value Version 0.
    #   When you specify Version 1, you must also set ID3 metadata to Passthrough.
    #   @return [String]
    # @!attribute timed_metadata_scheme_id_uri
    #   Specify the event message box (eMSG) scheme ID URI for ID3 timed metadata in your output. For more information, see ISO/IEC 23009-1:2022 section 5.10.3.3.4 Semantics. Leave blank to use the default value: https://aomedia.org/emsg/ID3 When you specify a value for ID3 metadata scheme ID URI, you must also set ID3 metadata to Passthrough.
    #   @return [String]
    # @!attribute timed_metadata_value
    #   Specify the event message box (eMSG) value for ID3 timed metadata in your output. For more information, see ISO/IEC 23009-1:2022 section 5.10.3.3.4 Semantics. When you specify a value for ID3 Metadata Value, you must also set ID3 metadata to Passthrough.
    #   @return [String]
    class MpdSettings < Struct.new(
      :accessibility_caption_hints,
      :audio_duration,
      :caption_container_type,
      :klv_metadata,
      :manifest_metadata_signaling,
      :scte35_esam,
      :scte35_source,
      :timed_metadata,
      :timed_metadata_box_version,
      :timed_metadata_scheme_id_uri,
      :timed_metadata_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # To include ID3 metadata in this output: Set ID3 metadata to Passthrough. Specify this ID3 metadata in Custom ID3 metadata inserter. MediaConvert writes each instance of ID3 metadata in a separate Event Message (eMSG) box. To exclude this ID3 metadata: Set ID3 metadata to None or leave blank.
    module MpdTimedMetadata
      PASSTHROUGH = 'PASSTHROUGH'
      NONE = 'NONE'
    end

    # Specify the event message box (eMSG) version for ID3 timed metadata in your output.
    # For more information, see ISO/IEC 23009-1:2022 section 5.10.3.3.3 Syntax.
    # Leave blank to use the default value Version 0.
    # When you specify Version 1, you must also set ID3 metadata to Passthrough.
    module MpdTimedMetadataBoxVersion
      VERSION_0 = 'VERSION_0'
      VERSION_1 = 'VERSION_1'
    end

    # Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to the following settings: Spatial adaptive quantization, and Temporal adaptive quantization.
    module Mpeg2AdaptiveQuantization
      OFF = 'OFF'
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
    end

    # Use Level to set the MPEG-2 level for the video output.
    module Mpeg2CodecLevel
      AUTO = 'AUTO'
      LOW = 'LOW'
      MAIN = 'MAIN'
      HIGH1440 = 'HIGH1440'
      HIGH = 'HIGH'
    end

    # Use Profile to set the MPEG-2 profile for the video output.
    module Mpeg2CodecProfile
      MAIN = 'MAIN'
      PROFILE_422 = 'PROFILE_422'
    end

    # Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames.
    module Mpeg2DynamicSubGop
      ADAPTIVE = 'ADAPTIVE'
      STATIC = 'STATIC'
    end

    # If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    module Mpeg2FramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    module Mpeg2FramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
      FRAMEFORMER = 'FRAMEFORMER'
      MAINTAIN_FRAME_COUNT = 'MAINTAIN_FRAME_COUNT'
    end

    # Specify the units for GOP size. If you don't specify a value here, by default the encoder measures GOP size in frames.
    module Mpeg2GopSizeUnits
      FRAMES = 'FRAMES'
      SECONDS = 'SECONDS'
    end

    # Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    module Mpeg2InterlaceMode
      PROGRESSIVE = 'PROGRESSIVE'
      TOP_FIELD = 'TOP_FIELD'
      BOTTOM_FIELD = 'BOTTOM_FIELD'
      FOLLOW_TOP_FIELD = 'FOLLOW_TOP_FIELD'
      FOLLOW_BOTTOM_FIELD = 'FOLLOW_BOTTOM_FIELD'
    end

    # Use Intra DC precision to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio.
    module Mpeg2IntraDcPrecision
      AUTO = 'AUTO'
      INTRA_DC_PRECISION_8 = 'INTRA_DC_PRECISION_8'
      INTRA_DC_PRECISION_9 = 'INTRA_DC_PRECISION_9'
      INTRA_DC_PRECISION_10 = 'INTRA_DC_PRECISION_10'
      INTRA_DC_PRECISION_11 = 'INTRA_DC_PRECISION_11'
    end

    # Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source, uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    module Mpeg2ParControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    module Mpeg2QualityTuningLevel
      SINGLE_PASS = 'SINGLE_PASS'
      MULTI_PASS = 'MULTI_PASS'
    end

    # Use Rate control mode to specify whether the bitrate is variable (vbr) or constant (cbr).
    module Mpeg2RateControlMode
      VBR = 'VBR'
      CBR = 'CBR'
    end

    # Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    module Mpeg2ScanTypeConversionMode
      INTERLACED = 'INTERLACED'
      INTERLACED_OPTIMIZE = 'INTERLACED_OPTIMIZE'
    end

    # Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default.
    module Mpeg2SceneChangeDetect
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Required when you set Codec to the value MPEG2.
    # @!attribute adaptive_quantization
    #   Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to the following settings: Spatial adaptive quantization, and Temporal adaptive quantization.
    #   @return [String]
    # @!attribute bitrate
    #   Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
    #   @return [Integer]
    # @!attribute codec_level
    #   Use Level to set the MPEG-2 level for the video output.
    #   @return [String]
    # @!attribute codec_profile
    #   Use Profile to set the MPEG-2 profile for the video output.
    #   @return [String]
    # @!attribute dynamic_sub_gop
    #   Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames.
    #   @return [String]
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute gop_closed_cadence
    #   Specify the relative frequency of open to closed GOPs in this output. For example, if you want to allow four open GOPs and then require a closed GOP, set this value to 5. When you create a streaming output, we recommend that you keep the default value, 1, so that players starting mid-stream receive an IDR frame as quickly as possible. Don't set this value to 0; that would break output segmenting.
    #   @return [Integer]
    # @!attribute gop_size
    #   Specify the interval between keyframes, in seconds or frames, for this output. Default: 12 Related settings: When you specify the GOP size in seconds, set GOP mode control to Specified, seconds. The default value for GOP mode control is Frames.
    #   @return [Float]
    # @!attribute gop_size_units
    #   Specify the units for GOP size. If you don't specify a value here, by default the encoder measures GOP size in frames.
    #   @return [String]
    # @!attribute hrd_buffer_final_fill_percentage
    #   If your downstream systems have strict buffer requirements: Specify the minimum percentage of the HRD buffer that's available at the end of each encoded video segment. For the best video quality: Set to 0 or leave blank to automatically determine the final buffer fill percentage.
    #   @return [Integer]
    # @!attribute hrd_buffer_initial_fill_percentage
    #   Percentage of the buffer that should initially be filled (HRD buffer model).
    #   @return [Integer]
    # @!attribute hrd_buffer_size
    #   Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
    #   @return [Integer]
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #   @return [String]
    # @!attribute intra_dc_precision
    #   Use Intra DC precision to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio.
    #   @return [String]
    # @!attribute max_bitrate
    #   Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000.
    #   @return [Integer]
    # @!attribute min_i_interval
    #   Specify the minimum number of frames allowed between two IDR-frames in your output. This includes frames created at the start of a GOP or a scene change. Use Min I-Interval to improve video compression by varying GOP size when two IDR-frames would be created near each other. For example, if a regular cadence-driven IDR-frame would fall within 5 frames of a scene-change IDR-frame, and you set Min I-interval to 5, then the encoder would only write an IDR-frame for the scene-change. In this way, one GOP is shortened or extended. If a cadence-driven IDR-frame would be further than 5 frames from a scene-change IDR-frame, then the encoder leaves all IDR-frames in place. To manually specify an interval: Enter a value from 1 to 30. Use when your downstream systems have specific GOP size requirements. To disable GOP size variance: Enter 0. MediaConvert will only create IDR-frames at the start of your output's cadence-driven GOP. Use when your downstream systems require a regular GOP size.
    #   @return [Integer]
    # @!attribute number_b_frames_between_reference_frames
    #   Specify the number of B-frames that MediaConvert puts between reference frames in this output. Valid values are whole numbers from 0 through 7. When you don't specify a value, MediaConvert defaults to 2.
    #   @return [Integer]
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source, uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    #   @return [String]
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #   @return [Integer]
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #   @return [Integer]
    # @!attribute per_frame_metrics
    #   Optionally choose one or more per frame metric reports to generate along with your output. You can use these metrics to analyze your video output according to one or more commonly used image quality metrics. You can specify per frame metrics for output groups or for individual outputs. When you do, MediaConvert writes a CSV (Comma-Separated Values) file to your S3 output destination, named after the output name and metric type. For example: videofile_PSNR.csv Jobs that generate per frame metrics will take longer to complete, depending on the resolution and complexity of your output. For example, some 4K jobs might take up to twice as long to complete. Note that when analyzing the video quality of your output, or when comparing the video quality of multiple different outputs, we generally also recommend a detailed visual review in a controlled environment. You can choose from the following per frame metrics: * PSNR: Peak Signal-to-Noise Ratio * SSIM: Structural Similarity Index Measure * MS_SSIM: Multi-Scale Similarity Index Measure * PSNR_HVS: Peak Signal-to-Noise Ratio, Human Visual System * VMAF: Video Multi-Method Assessment Fusion * QVBR: Quality-Defined Variable Bitrate. This option is only available when your output uses the QVBR rate control mode.
    #   @return [Array<String>]
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    #   @return [String]
    # @!attribute rate_control_mode
    #   Use Rate control mode to specify whether the bitrate is variable (vbr) or constant (cbr).
    #   @return [String]
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    #   @return [String]
    # @!attribute scene_change_detect
    #   Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default.
    #   @return [String]
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25.
    #   @return [String]
    # @!attribute softness
    #   Ignore this setting unless you need to comply with a specification that requires a specific value. If you don't have a specification requirement, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness or by enabling a noise reducer filter. The Softness setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, to use the AWS Elemental default matrices. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video.
    #   @return [Integer]
    # @!attribute spatial_adaptive_quantization
    #   Keep the default value, Enabled, to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    #   @return [String]
    # @!attribute syntax
    #   Specify whether this output's video uses the D10 syntax. Keep the default value to not use the syntax. Related settings: When you choose D10 for your MXF profile, you must also set this value to D10.
    #   @return [String]
    # @!attribute telecine
    #   When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine produces a 29.97i output. Soft telecine produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    #   @return [String]
    # @!attribute temporal_adaptive_quantization
    #   Keep the default value, Enabled, to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization.
    #   @return [String]
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
      :hrd_buffer_final_fill_percentage,
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
      :per_frame_metrics,
      :quality_tuning_level,
      :rate_control_mode,
      :scan_type_conversion_mode,
      :scene_change_detect,
      :slow_pal,
      :softness,
      :spatial_adaptive_quantization,
      :syntax,
      :telecine,
      :temporal_adaptive_quantization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25.
    module Mpeg2SlowPal
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Keep the default value, Enabled, to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    module Mpeg2SpatialAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Specify whether this output's video uses the D10 syntax. Keep the default value to not use the syntax. Related settings: When you choose D10 for your MXF profile, you must also set this value to D10.
    module Mpeg2Syntax
      DEFAULT = 'DEFAULT'
      D_10 = 'D_10'
    end

    # When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine produces a 29.97i output. Soft telecine produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    module Mpeg2Telecine
      NONE = 'NONE'
      SOFT = 'SOFT'
      HARD = 'HARD'
    end

    # Keep the default value, Enabled, to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization.
    module Mpeg2TemporalAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Specify the details for each additional Microsoft Smooth Streaming manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group.
    # @!attribute manifest_name_modifier
    #   Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your Microsoft Smooth group is film-name.ismv. If you enter "-no-premium" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.ismv.
    #   @return [String]
    # @!attribute selected_outputs
    #   Specify the outputs that you want this additional top-level manifest to reference.
    #   @return [Array<String>]
    class MsSmoothAdditionalManifest < Struct.new(
      :manifest_name_modifier,
      :selected_outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream.
    module MsSmoothAudioDeduplication
      COMBINE_DUPLICATE_STREAMS = 'COMBINE_DUPLICATE_STREAMS'
      NONE = 'NONE'
    end

    # If you are using DRM, set DRM System to specify the value SpekeKeyProvider.
    # @!attribute speke_key_provider
    #   If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead.
    #   @return [Types::SpekeKeyProvider]
    class MsSmoothEncryptionSettings < Struct.new(
      :speke_key_provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify how you want MediaConvert to determine the fragment length. Choose Exact to have the encoder use the exact length that you specify with the setting Fragment length. This might result in extra I-frames. Choose Multiple of GOP to have the encoder round up the segment lengths to match the next GOP boundary.
    module MsSmoothFragmentLengthControl
      EXACT = 'EXACT'
      GOP_MULTIPLE = 'GOP_MULTIPLE'
    end

    # Settings related to your Microsoft Smooth Streaming output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html.
    # @!attribute additional_manifests
    #   By default, the service creates one .ism Microsoft Smooth Streaming manifest for each Microsoft Smooth Streaming output group in your job. This default manifest references every output in the output group. To create additional manifests that reference a subset of the outputs in the output group, specify a list of them here.
    #   @return [Array<Types::MsSmoothAdditionalManifest>]
    # @!attribute audio_deduplication
    #   COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream.
    #   @return [String]
    # @!attribute destination
    #   Use Destination to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
    #   @return [String]
    # @!attribute destination_settings
    #   Settings associated with the destination. Will vary based on the type of destination
    #   @return [Types::DestinationSettings]
    # @!attribute encryption
    #   If you are using DRM, set DRM System to specify the value SpekeKeyProvider.
    #   @return [Types::MsSmoothEncryptionSettings]
    # @!attribute fragment_length
    #   Specify how you want MediaConvert to determine the fragment length. Choose Exact to have the encoder use the exact length that you specify with the setting Fragment length. This might result in extra I-frames. Choose Multiple of GOP to have the encoder round up the segment lengths to match the next GOP boundary.
    #   @return [Integer]
    # @!attribute fragment_length_control
    #   Specify how you want MediaConvert to determine the fragment length. Choose Exact to have the encoder use the exact length that you specify with the setting Fragment length. This might result in extra I-frames. Choose Multiple of GOP to have the encoder round up the segment lengths to match the next GOP boundary.
    #   @return [String]
    # @!attribute manifest_encoding
    #   Use Manifest encoding to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16.
    #   @return [String]
    class MsSmoothGroupSettings < Struct.new(
      :additional_manifests,
      :audio_deduplication,
      :destination,
      :destination_settings,
      :encryption,
      :fragment_length,
      :fragment_length_control,
      :manifest_encoding,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Manifest encoding to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16.
    module MsSmoothManifestEncoding
      UTF8 = 'UTF8'
      UTF16 = 'UTF16'
    end

    # Optional. When you have AFD signaling set up in your output video stream, use this setting to choose whether to also include it in the MXF wrapper. Choose Don't copy to exclude AFD signaling from the MXF wrapper. Choose Copy from video stream to copy the AFD values from the video stream for this output to the MXF wrapper. Regardless of which option you choose, the AFD values remain in the video stream. Related settings: To set up your output to include or exclude AFD values, see AfdSignaling, under VideoDescription. On the console, find AFD signaling under the output's video encoding settings.
    module MxfAfdSignaling
      NO_COPY = 'NO_COPY'
      COPY_FROM_VIDEO = 'COPY_FROM_VIDEO'
    end

    # Specify the MXF profile, also called shim, for this output. To automatically select a profile according to your output video codec and resolution, leave blank. For a list of codecs supported with each MXF profile, see https://docs.aws.amazon.com/mediaconvert/latest/ug/codecs-supported-with-each-mxf-profile.html. For more information about the automatic selection behavior, see https://docs.aws.amazon.com/mediaconvert/latest/ug/default-automatic-selection-of-mxf-profiles.html.
    module MxfProfile
      D_10 = 'D_10'
      XDCAM = 'XDCAM'
      OP1A = 'OP1A'
      XAVC = 'XAVC'
      XDCAM_RDD9 = 'XDCAM_RDD9'
    end

    # These settings relate to your MXF output container.
    # @!attribute afd_signaling
    #   Optional. When you have AFD signaling set up in your output video stream, use this setting to choose whether to also include it in the MXF wrapper. Choose Don't copy to exclude AFD signaling from the MXF wrapper. Choose Copy from video stream to copy the AFD values from the video stream for this output to the MXF wrapper. Regardless of which option you choose, the AFD values remain in the video stream. Related settings: To set up your output to include or exclude AFD values, see AfdSignaling, under VideoDescription. On the console, find AFD signaling under the output's video encoding settings.
    #   @return [String]
    # @!attribute profile
    #   Specify the MXF profile, also called shim, for this output. To automatically select a profile according to your output video codec and resolution, leave blank. For a list of codecs supported with each MXF profile, see https://docs.aws.amazon.com/mediaconvert/latest/ug/codecs-supported-with-each-mxf-profile.html. For more information about the automatic selection behavior, see https://docs.aws.amazon.com/mediaconvert/latest/ug/default-automatic-selection-of-mxf-profiles.html.
    #   @return [String]
    # @!attribute xavc_profile_settings
    #   Specify the XAVC profile settings for MXF outputs when you set your MXF profile to XAVC.
    #   @return [Types::MxfXavcProfileSettings]
    class MxfSettings < Struct.new(
      :afd_signaling,
      :profile,
      :xavc_profile_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # To create an output that complies with the XAVC file format guidelines for interoperability, keep the default value, Drop frames for compliance. To include all frames from your input in this output, keep the default setting, Allow any duration. The number of frames that MediaConvert excludes when you set this to Drop frames for compliance depends on the output frame rate and duration.
    module MxfXavcDurationMode
      ALLOW_ANY_DURATION = 'ALLOW_ANY_DURATION'
      DROP_FRAMES_FOR_COMPLIANCE = 'DROP_FRAMES_FOR_COMPLIANCE'
    end

    # Specify the XAVC profile settings for MXF outputs when you set your MXF profile to XAVC.
    # @!attribute duration_mode
    #   To create an output that complies with the XAVC file format guidelines for interoperability, keep the default value, Drop frames for compliance. To include all frames from your input in this output, keep the default setting, Allow any duration. The number of frames that MediaConvert excludes when you set this to Drop frames for compliance depends on the output frame rate and duration.
    #   @return [String]
    # @!attribute max_anc_data_size
    #   Specify a value for this setting only for outputs that you set up with one of these two XAVC profiles: XAVC HD Intra CBG or XAVC 4K Intra CBG. Specify the amount of space in each frame that the service reserves for ancillary data, such as teletext captions. The default value for this setting is 1492 bytes per frame. This should be sufficient to prevent overflow unless you have multiple pages of teletext captions data. If you have a large amount of teletext data, specify a larger number.
    #   @return [Integer]
    class MxfXavcProfileSettings < Struct.new(
      :duration_mode,
      :max_anc_data_size,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # For forensic video watermarking, MediaConvert supports Nagra NexGuard File Marker watermarking. MediaConvert supports both PreRelease Content (NGPR/G2) and OTT Streaming workflows.
    # @!attribute license
    #   Use the base64 license string that Nagra provides you. Enter it directly in your JSON job specification or in the console. Required when you include Nagra NexGuard File Marker watermarking in your job.
    #   @return [String]
    # @!attribute payload
    #   Specify the payload ID that you want associated with this output. Valid values vary depending on your Nagra NexGuard forensic watermarking workflow. Required when you include Nagra NexGuard File Marker watermarking in your job. For PreRelease Content (NGPR/G2), specify an integer from 1 through 4,194,303. You must generate a unique ID for each asset you watermark, and keep a record of which ID you have assigned to each asset. Neither Nagra nor MediaConvert keep track of the relationship between output files and your IDs. For OTT Streaming, create two adaptive bitrate (ABR) stacks for each asset. Do this by setting up two output groups. For one output group, set the value of Payload ID to 0 in every output. For the other output group, set Payload ID to 1 in every output.
    #   @return [Integer]
    # @!attribute preset
    #   Enter one of the watermarking preset strings that Nagra provides you. Required when you include Nagra NexGuard File Marker watermarking in your job.
    #   @return [String]
    # @!attribute strength
    #   Optional. Ignore this setting unless Nagra support directs you to specify a value. When you don't specify a value here, the Nagra NexGuard library uses its default value.
    #   @return [String]
    class NexGuardFileMarkerSettings < Struct.new(
      :license,
      :payload,
      :preset,
      :strength,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Choose the type of Nielsen watermarks that you want in your outputs. When you choose NAES 2 and NW, you must provide a value for the setting SID. When you choose CBET, you must provide a value for the setting CSID. When you choose NAES 2, NW, and CBET, you must provide values for both of these settings.
    module NielsenActiveWatermarkProcessType
      NAES2_AND_NW = 'NAES2_AND_NW'
      CBET = 'CBET'
      NAES2_AND_NW_AND_CBET = 'NAES2_AND_NW_AND_CBET'
    end

    # Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration, MediaConvert enables PCM to ID3 tagging for all outputs in the job.
    # @!attribute breakout_code
    #   Nielsen has discontinued the use of breakout code functionality. If you must include this property, set the value to zero.
    #   @return [Integer]
    # @!attribute distributor_id
    #   Use Distributor ID to specify the distributor ID that is assigned to your organization by Nielsen.
    #   @return [String]
    class NielsenConfiguration < Struct.new(
      :breakout_code,
      :distributor_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ignore these settings unless you are using Nielsen non-linear watermarking. Specify the values that MediaConvert uses to generate and place Nielsen watermarks in your output audio. In addition to specifying these values, you also need to set up your cloud TIC server. These settings apply to every output in your job. The MediaConvert implementation is currently with the following Nielsen versions: Nielsen Watermark SDK Version 6.0.13 Nielsen NLM Watermark Engine Version 1.3.3 Nielsen Watermark Authenticator [SID_TIC] Version [7.0.0]
    # @!attribute active_watermark_process
    #   Choose the type of Nielsen watermarks that you want in your outputs. When you choose NAES 2 and NW, you must provide a value for the setting SID. When you choose CBET, you must provide a value for the setting CSID. When you choose NAES 2, NW, and CBET, you must provide values for both of these settings.
    #   @return [String]
    # @!attribute adi_filename
    #   Optional. Use this setting when you want the service to include an ADI file in the Nielsen metadata .zip file. To provide an ADI file, store it in Amazon S3 and provide a URL to it here. The URL should be in the following format: S3://bucket/path/ADI-file. For more information about the metadata .zip file, see the setting Metadata destination.
    #   @return [String]
    # @!attribute asset_id
    #   Use the asset ID that you provide to Nielsen to uniquely identify this asset. Required for all Nielsen non-linear watermarking.
    #   @return [String]
    # @!attribute asset_name
    #   Use the asset name that you provide to Nielsen for this asset. Required for all Nielsen non-linear watermarking.
    #   @return [String]
    # @!attribute cbet_source_id
    #   Use the CSID that Nielsen provides to you. This CBET source ID should be unique to your Nielsen account but common to all of your output assets that have CBET watermarking. Required when you choose a value for the setting Watermark types that includes CBET.
    #   @return [String]
    # @!attribute episode_id
    #   Optional. If this asset uses an episode ID with Nielsen, provide it here.
    #   @return [String]
    # @!attribute metadata_destination
    #   Specify the Amazon S3 location where you want MediaConvert to save your Nielsen non-linear metadata .zip file. This Amazon S3 bucket must be in the same Region as the one where you do your MediaConvert transcoding. If you want to include an ADI file in this .zip file, use the setting ADI file to specify it. MediaConvert delivers the Nielsen metadata .zip files only to your metadata destination Amazon S3 bucket. It doesn't deliver the .zip files to Nielsen. You are responsible for delivering the metadata .zip files to Nielsen.
    #   @return [String]
    # @!attribute source_id
    #   Use the SID that Nielsen provides to you. This source ID should be unique to your Nielsen account but common to all of your output assets. Required for all Nielsen non-linear watermarking. This ID should be unique to your Nielsen account but common to all of your output assets. Required for all Nielsen non-linear watermarking.
    #   @return [Integer]
    # @!attribute source_watermark_status
    #   Required. Specify whether your source content already contains Nielsen non-linear watermarks. When you set this value to Watermarked, the service fails the job. Nielsen requires that you add non-linear watermarking to only clean content that doesn't already have non-linear Nielsen watermarks.
    #   @return [String]
    # @!attribute tic_server_url
    #   Specify the endpoint for the TIC server that you have deployed and configured in the AWS Cloud. Required for all Nielsen non-linear watermarking. MediaConvert can't connect directly to a TIC server. Instead, you must use API Gateway to provide a RESTful interface between MediaConvert and a TIC server that you deploy in your AWS account. For more information on deploying a TIC server in your AWS account and the required API Gateway, contact Nielsen support.
    #   @return [String]
    # @!attribute unique_tic_per_audio_track
    #   To create assets that have the same TIC values in each audio track, keep the default value Share TICs. To create assets that have unique TIC values for each audio track, choose Use unique TICs.
    #   @return [String]
    class NielsenNonLinearWatermarkSettings < Struct.new(
      :active_watermark_process,
      :adi_filename,
      :asset_id,
      :asset_name,
      :cbet_source_id,
      :episode_id,
      :metadata_destination,
      :source_id,
      :source_watermark_status,
      :tic_server_url,
      :unique_tic_per_audio_track,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Required. Specify whether your source content already contains Nielsen non-linear watermarks. When you set this value to Watermarked, the service fails the job. Nielsen requires that you add non-linear watermarking to only clean content that doesn't already have non-linear Nielsen watermarks.
    module NielsenSourceWatermarkStatusType
      CLEAN = 'CLEAN'
      WATERMARKED = 'WATERMARKED'
    end

    # To create assets that have the same TIC values in each audio track, keep the default value Share TICs. To create assets that have unique TIC values for each audio track, choose Use unique TICs.
    module NielsenUniqueTicPerAudioTrackType
      RESERVE_UNIQUE_TICS_PER_TRACK = 'RESERVE_UNIQUE_TICS_PER_TRACK'
      SAME_TICS_PER_TRACK = 'SAME_TICS_PER_TRACK'
    end

    # When you set Noise reducer to Temporal, the bandwidth and sharpness of your output is reduced. You can optionally use Post temporal sharpening to apply sharpening to the edges of your output. Note that Post temporal sharpening will also make the bandwidth reduction from the Noise reducer smaller. The default behavior, Auto, allows the transcoder to determine whether to apply sharpening, depending on your input type and quality. When you set Post temporal sharpening to Enabled, specify how much sharpening is applied using Post temporal sharpening strength. Set Post temporal sharpening to Disabled to not apply sharpening.
    module NoiseFilterPostTemporalSharpening
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
      AUTO = 'AUTO'
    end

    # Use Post temporal sharpening strength to define the amount of sharpening the transcoder applies to your output. Set Post temporal sharpening strength to Low, Medium, or High to indicate the amount of sharpening.
    module NoiseFilterPostTemporalSharpeningStrength
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
    end

    # Enable the Noise reducer feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default. When you enable Noise reducer, you must also select a value for Noise reducer filter. For AVC outputs, when you include Noise reducer, you cannot include the Bandwidth reduction filter.
    # @!attribute filter
    #   Use Noise reducer filter to select one of the following spatial image filtering functions. To use this setting, you must also enable Noise reducer. * Bilateral preserves edges while reducing noise. * Mean (softest), Gaussian, Lanczos, and Sharpen (sharpest) do convolution filtering. * Conserve does min/max noise reduction. * Spatial does frequency-domain filtering based on JND principles. * Temporal optimizes video quality for complex motion.
    #   @return [String]
    # @!attribute filter_settings
    #   Settings for a noise reducer filter
    #   @return [Types::NoiseReducerFilterSettings]
    # @!attribute spatial_filter_settings
    #   Noise reducer filter settings for spatial filter.
    #   @return [Types::NoiseReducerSpatialFilterSettings]
    # @!attribute temporal_filter_settings
    #   Noise reducer filter settings for temporal filter.
    #   @return [Types::NoiseReducerTemporalFilterSettings]
    class NoiseReducer < Struct.new(
      :filter,
      :filter_settings,
      :spatial_filter_settings,
      :temporal_filter_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Noise reducer filter to select one of the following spatial image filtering functions. To use this setting, you must also enable Noise reducer. * Bilateral preserves edges while reducing noise. * Mean (softest), Gaussian, Lanczos, and Sharpen (sharpest) do convolution filtering. * Conserve does min/max noise reduction. * Spatial does frequency-domain filtering based on JND principles. * Temporal optimizes video quality for complex motion.
    module NoiseReducerFilter
      BILATERAL = 'BILATERAL'
      MEAN = 'MEAN'
      GAUSSIAN = 'GAUSSIAN'
      LANCZOS = 'LANCZOS'
      SHARPEN = 'SHARPEN'
      CONSERVE = 'CONSERVE'
      SPATIAL = 'SPATIAL'
      TEMPORAL = 'TEMPORAL'
    end

    # Settings for a noise reducer filter
    # @!attribute strength
    #   Relative strength of noise reducing filter. Higher values produce stronger filtering.
    #   @return [Integer]
    class NoiseReducerFilterSettings < Struct.new(
      :strength,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Noise reducer filter settings for spatial filter.
    # @!attribute post_filter_sharpen_strength
    #   Specify strength of post noise reduction sharpening filter, with 0 disabling the filter and 3 enabling it at maximum strength.
    #   @return [Integer]
    # @!attribute speed
    #   The speed of the filter, from -2 (lower speed) to 3 (higher speed), with 0 being the nominal value.
    #   @return [Integer]
    # @!attribute strength
    #   Relative strength of noise reducing filter. Higher values produce stronger filtering.
    #   @return [Integer]
    class NoiseReducerSpatialFilterSettings < Struct.new(
      :post_filter_sharpen_strength,
      :speed,
      :strength,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Noise reducer filter settings for temporal filter.
    # @!attribute aggressive_mode
    #   Use Aggressive mode for content that has complex motion. Higher values produce stronger temporal filtering. This filters highly complex scenes more aggressively and creates better VQ for low bitrate outputs.
    #   @return [Integer]
    # @!attribute post_temporal_sharpening
    #   When you set Noise reducer to Temporal, the bandwidth and sharpness of your output is reduced. You can optionally use Post temporal sharpening to apply sharpening to the edges of your output. Note that Post temporal sharpening will also make the bandwidth reduction from the Noise reducer smaller. The default behavior, Auto, allows the transcoder to determine whether to apply sharpening, depending on your input type and quality. When you set Post temporal sharpening to Enabled, specify how much sharpening is applied using Post temporal sharpening strength. Set Post temporal sharpening to Disabled to not apply sharpening.
    #   @return [String]
    # @!attribute post_temporal_sharpening_strength
    #   Use Post temporal sharpening strength to define the amount of sharpening the transcoder applies to your output. Set Post temporal sharpening strength to Low, Medium, or High to indicate the amount of sharpening.
    #   @return [String]
    # @!attribute speed
    #   The speed of the filter (higher number is faster). Low setting reduces bit rate at the cost of transcode time, high setting improves transcode time at the cost of bit rate.
    #   @return [Integer]
    # @!attribute strength
    #   Specify the strength of the noise reducing filter on this output. Higher values produce stronger filtering. We recommend the following value ranges, depending on the result that you want: * 0-2 for complexity reduction with minimal sharpness loss * 2-8 for complexity reduction with image preservation * 8-16 for a high level of complexity reduction
    #   @return [Integer]
    class NoiseReducerTemporalFilterSettings < Struct.new(
      :aggressive_mode,
      :post_temporal_sharpening,
      :post_temporal_sharpening_strength,
      :speed,
      :strength,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The resource you requested doesn't exist.
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Required when you set Codec, under AudioDescriptions>CodecSettings, to the value OPUS.
    # @!attribute bitrate
    #   Optional. Specify the average bitrate in bits per second. Valid values are multiples of 8000, from 32000 through 192000. The default value is 96000, which we recommend for quality and bandwidth.
    #   @return [Integer]
    # @!attribute channels
    #   Specify the number of channels in this output audio track. Choosing Mono on gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2.
    #   @return [Integer]
    # @!attribute sample_rate
    #   Optional. Sample rate in Hz. Valid values are 16000, 24000, and 48000. The default value is 48000.
    #   @return [Integer]
    class OpusSettings < Struct.new(
      :bitrate,
      :channels,
      :sample_rate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
    module Order
      ASCENDING = 'ASCENDING'
      DESCENDING = 'DESCENDING'
    end

    # Each output in your job is a collection of settings that describes how you want MediaConvert to encode a single output file or stream. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/create-outputs.html.
    # @!attribute audio_descriptions
    #   Contains groups of audio encoding settings organized by audio codec. Include one instance of per output. Can contain multiple groups of encoding settings.
    #   @return [Array<Types::AudioDescription>]
    # @!attribute caption_descriptions
    #   Contains groups of captions settings. For each output that has captions, include one instance of CaptionDescriptions. Can contain multiple groups of captions settings.
    #   @return [Array<Types::CaptionDescription>]
    # @!attribute container_settings
    #   Container specific settings.
    #   @return [Types::ContainerSettings]
    # @!attribute extension
    #   Use Extension to specify the file extension for outputs in File output groups. If you do not specify a value, the service will use default extensions by container type as follows * MPEG-2 transport stream, m2ts * Quicktime, mov * MXF container, mxf * MPEG-4 container, mp4 * WebM container, webm * Animated GIF container, gif * No Container, the service will use codec extensions (e.g. AAC, H265, H265, AC3)
    #   @return [String]
    # @!attribute name_modifier
    #   Use Name modifier to have the service add a string to the end of each output filename. You specify the base filename as part of your destination URI. When you create multiple outputs in the same output group, Name modifier is required. Name modifier also accepts format identifiers. For DASH ISO outputs, if you use the format identifiers $Number$ or $Time$ in one output, you must use them in the same way in all outputs of the output group.
    #   @return [String]
    # @!attribute output_settings
    #   Specific settings for this type of output.
    #   @return [Types::OutputSettings]
    # @!attribute preset
    #   Use Preset to specify a preset for your transcoding settings. Provide the system or custom preset name. You can specify either Preset or Container settings, but not both.
    #   @return [String]
    # @!attribute video_description
    #   VideoDescription contains a group of video encoding settings. The specific video settings depend on the video codec that you choose for the property codec. Include one instance of VideoDescription per output.
    #   @return [Types::VideoDescription]
    class Output < Struct.new(
      :audio_descriptions,
      :caption_descriptions,
      :container_settings,
      :extension,
      :name_modifier,
      :output_settings,
      :preset,
      :video_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # OutputChannel mapping settings.
    # @!attribute input_channels
    #   Use this setting to specify your remix values when they are integers, such as -10, 0, or 4.
    #   @return [Array<Integer>]
    # @!attribute input_channels_fine_tune
    #   Use this setting to specify your remix values when they have a decimal component, such as -10.312, 0.08, or 4.9. MediaConvert rounds your remixing values to the nearest thousandth.
    #   @return [Array<Float>]
    class OutputChannelMapping < Struct.new(
      :input_channels,
      :input_channels_fine_tune,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Details regarding output
    # @!attribute duration_in_ms
    #   Duration in milliseconds
    #   @return [Integer]
    # @!attribute video_details
    #   Contains details about the output's video stream
    #   @return [Types::VideoDetail]
    class OutputDetail < Struct.new(
      :duration_in_ms,
      :video_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Group of outputs
    # @!attribute automated_encoding_settings
    #   Use automated encoding to have MediaConvert choose your encoding settings for you, based on characteristics of your input video.
    #   @return [Types::AutomatedEncodingSettings]
    # @!attribute custom_name
    #   Use Custom Group Name to specify a name for the output group. This value is displayed on the console and can make your job settings JSON more human-readable. It does not affect your outputs. Use up to twelve characters that are either letters, numbers, spaces, or underscores.
    #   @return [String]
    # @!attribute name
    #   Name of the output group
    #   @return [String]
    # @!attribute output_group_settings
    #   Output Group settings, including type
    #   @return [Types::OutputGroupSettings]
    # @!attribute outputs
    #   This object holds groups of encoding settings, one group of settings per output.
    #   @return [Array<Types::Output>]
    class OutputGroup < Struct.new(
      :automated_encoding_settings,
      :custom_name,
      :name,
      :output_group_settings,
      :outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Contains details about the output groups specified in the job settings.
    # @!attribute output_details
    #   Details about the output
    #   @return [Array<Types::OutputDetail>]
    class OutputGroupDetail < Struct.new(
      :output_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Output Group settings, including type
    # @!attribute cmaf_group_settings
    #   Settings related to your CMAF output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html.
    #   @return [Types::CmafGroupSettings]
    # @!attribute dash_iso_group_settings
    #   Settings related to your DASH output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html.
    #   @return [Types::DashIsoGroupSettings]
    # @!attribute file_group_settings
    #   Settings related to your File output group. MediaConvert uses this group of settings to generate a single standalone file, rather than a streaming package.
    #   @return [Types::FileGroupSettings]
    # @!attribute hls_group_settings
    #   Settings related to your HLS output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html.
    #   @return [Types::HlsGroupSettings]
    # @!attribute ms_smooth_group_settings
    #   Settings related to your Microsoft Smooth Streaming output package. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/outputs-file-ABR.html.
    #   @return [Types::MsSmoothGroupSettings]
    # @!attribute per_frame_metrics
    #   Optionally choose one or more per frame metric reports to generate along with your output. You can use these metrics to analyze your video output according to one or more commonly used image quality metrics. You can specify per frame metrics for output groups or for individual outputs. When you do, MediaConvert writes a CSV (Comma-Separated Values) file to your S3 output destination, named after the output name and metric type. For example: videofile_PSNR.csv Jobs that generate per frame metrics will take longer to complete, depending on the resolution and complexity of your output. For example, some 4K jobs might take up to twice as long to complete. Note that when analyzing the video quality of your output, or when comparing the video quality of multiple different outputs, we generally also recommend a detailed visual review in a controlled environment. You can choose from the following per frame metrics: * PSNR: Peak Signal-to-Noise Ratio * SSIM: Structural Similarity Index Measure * MS_SSIM: Multi-Scale Similarity Index Measure * PSNR_HVS: Peak Signal-to-Noise Ratio, Human Visual System * VMAF: Video Multi-Method Assessment Fusion * QVBR: Quality-Defined Variable Bitrate. This option is only available when your output uses the QVBR rate control mode.
    #   @return [Array<String>]
    # @!attribute type
    #   Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming, CMAF)
    #   @return [String]
    class OutputGroupSettings < Struct.new(
      :cmaf_group_settings,
      :dash_iso_group_settings,
      :file_group_settings,
      :hls_group_settings,
      :ms_smooth_group_settings,
      :per_frame_metrics,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming, CMAF)
    module OutputGroupType
      HLS_GROUP_SETTINGS = 'HLS_GROUP_SETTINGS'
      DASH_ISO_GROUP_SETTINGS = 'DASH_ISO_GROUP_SETTINGS'
      FILE_GROUP_SETTINGS = 'FILE_GROUP_SETTINGS'
      MS_SMOOTH_GROUP_SETTINGS = 'MS_SMOOTH_GROUP_SETTINGS'
      CMAF_GROUP_SETTINGS = 'CMAF_GROUP_SETTINGS'
    end

    # Selects method of inserting SDT information into output stream. "Follow input SDT" copies SDT information from input stream to output stream. "Follow input SDT if present" copies SDT information from input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. Enter "SDT Manually" means user will enter the SDT information. "No SDT" means output stream will not contain SDT information.
    module OutputSdt
      SDT_FOLLOW = 'SDT_FOLLOW'
      SDT_FOLLOW_IF_PRESENT = 'SDT_FOLLOW_IF_PRESENT'
      SDT_MANUAL = 'SDT_MANUAL'
      SDT_NONE = 'SDT_NONE'
    end

    # Specific settings for this type of output.
    # @!attribute hls_settings
    #   Settings for HLS output groups
    #   @return [Types::HlsSettings]
    class OutputSettings < Struct.new(
      :hls_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use this setting if your input has video and audio durations that don't align, and your output or player has strict alignment requirements. Examples: Input audio track has a delayed start. Input video track ends before audio ends. When you set Pad video to Black, MediaConvert generates black video frames so that output video and audio durations match. Black video frames are added at the beginning or end, depending on your input. To keep the default behavior and not generate black video, set Pad video to Disabled or leave blank.
    module PadVideo
      DISABLED = 'DISABLED'
      BLACK = 'BLACK'
    end

    # If you work with a third party video watermarking partner, use the group of settings that correspond with your watermarking partner to include watermarks in your output.
    # @!attribute nexguard_file_marker_settings
    #   For forensic video watermarking, MediaConvert supports Nagra NexGuard File Marker watermarking. MediaConvert supports both PreRelease Content (NGPR/G2) and OTT Streaming workflows.
    #   @return [Types::NexGuardFileMarkerSettings]
    class PartnerWatermarking < Struct.new(
      :nexguard_file_marker_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    # @!attribute http_inputs
    #   Allow or disallow jobs that specify HTTP inputs.
    #   @return [String]
    # @!attribute https_inputs
    #   Allow or disallow jobs that specify HTTPS inputs.
    #   @return [String]
    # @!attribute s3_inputs
    #   Allow or disallow jobs that specify Amazon S3 inputs.
    #   @return [String]
    class Policy < Struct.new(
      :http_inputs,
      :https_inputs,
      :s3_inputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
    # @!attribute arn
    #   An identifier for this resource that is unique within all of AWS.
    #   @return [String]
    # @!attribute category
    #   An optional category you create to organize your presets.
    #   @return [String]
    # @!attribute created_at
    #   The timestamp in epoch seconds for preset creation.
    #   @return [Time]
    # @!attribute description
    #   An optional description you create for each preset.
    #   @return [String]
    # @!attribute last_updated
    #   The timestamp in epoch seconds when the preset was last updated.
    #   @return [Time]
    # @!attribute name
    #   A name you create for each preset. Each name must be unique within your account.
    #   @return [String]
    # @!attribute settings
    #   Settings for preset
    #   @return [Types::PresetSettings]
    # @!attribute type
    #   A preset can be of two types: system or custom. System or built-in preset can't be modified or deleted by the user.
    #   @return [String]
    class Preset < Struct.new(
      :arn,
      :category,
      :created_at,
      :description,
      :last_updated,
      :name,
      :settings,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
    module PresetListBy
      NAME = 'NAME'
      CREATION_DATE = 'CREATION_DATE'
      SYSTEM = 'SYSTEM'
    end

    # Settings for preset
    # @!attribute audio_descriptions
    #   Contains groups of audio encoding settings organized by audio codec. Include one instance of per output. Can contain multiple groups of encoding settings.
    #   @return [Array<Types::AudioDescription>]
    # @!attribute caption_descriptions
    #   This object holds groups of settings related to captions for one output. For each output that has captions, include one instance of CaptionDescriptions.
    #   @return [Array<Types::CaptionDescriptionPreset>]
    # @!attribute container_settings
    #   Container specific settings.
    #   @return [Types::ContainerSettings]
    # @!attribute video_description
    #   VideoDescription contains a group of video encoding settings. The specific video settings depend on the video codec that you choose for the property codec. Include one instance of VideoDescription per output.
    #   @return [Types::VideoDescription]
    class PresetSettings < Struct.new(
      :audio_descriptions,
      :caption_descriptions,
      :container_settings,
      :video_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify which SPEKE version 2.0 audio preset MediaConvert uses to request content keys from your SPEKE server. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/drm-content-speke-v2-presets.html To encrypt to your audio outputs, choose from the following: Audio preset 1, Audio preset 2, or Audio preset 3. To encrypt your audio outputs, using the same content key for both your audio and video outputs: Choose Shared. When you do, you must also set SPEKE v2.0 video preset to Shared. To not encrypt your audio outputs: Choose Unencrypted. When you do, to encrypt your video outputs, you must also specify a SPEKE v2.0 video preset (other than Shared or Unencrypted).
    module PresetSpeke20Audio
      PRESET_AUDIO_1 = 'PRESET_AUDIO_1'
      PRESET_AUDIO_2 = 'PRESET_AUDIO_2'
      PRESET_AUDIO_3 = 'PRESET_AUDIO_3'
      SHARED = 'SHARED'
      UNENCRYPTED = 'UNENCRYPTED'
    end

    # Specify which SPEKE version 2.0 video preset MediaConvert uses to request content keys from your SPEKE server. For more information, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/drm-content-speke-v2-presets.html To encrypt to your video outputs, choose from the following: Video preset 1, Video preset 2, Video preset 3, Video preset 4, Video preset 5, Video preset 6, Video preset 7, or Video preset 8. To encrypt your video outputs, using the same content key for both your video and audio outputs: Choose Shared. When you do, you must also set SPEKE v2.0 audio preset to Shared. To not encrypt your video outputs: Choose Unencrypted. When you do, to encrypt your audio outputs, you must also specify a SPEKE v2.0 audio preset (other than Shared or Unencrypted).
    module PresetSpeke20Video
      PRESET_VIDEO_1 = 'PRESET_VIDEO_1'
      PRESET_VIDEO_2 = 'PRESET_VIDEO_2'
      PRESET_VIDEO_3 = 'PRESET_VIDEO_3'
      PRESET_VIDEO_4 = 'PRESET_VIDEO_4'
      PRESET_VIDEO_5 = 'PRESET_VIDEO_5'
      PRESET_VIDEO_6 = 'PRESET_VIDEO_6'
      PRESET_VIDEO_7 = 'PRESET_VIDEO_7'
      PRESET_VIDEO_8 = 'PRESET_VIDEO_8'
      SHARED = 'SHARED'
      UNENCRYPTED = 'UNENCRYPTED'
    end

    # Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment.
    module PricingPlan
      ON_DEMAND = 'ON_DEMAND'
      RESERVED = 'RESERVED'
    end

    # The input file that needs to be analyzed.
    # @!attribute file_url
    #   Specify the S3, HTTP, or HTTPS URL for your media file.
    #   @return [String]
    class ProbeInputFile < Struct.new(
      :file_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute input_files
    #   Specify a media file to probe.
    #   @return [Array<Types::ProbeInputFile>]
    class ProbeRequest < Struct.new(
      :input_files,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute probe_results
    #   Probe results for your media file.
    #   @return [Array<Types::ProbeResult>]
    class ProbeResponse < Struct.new(
      :probe_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Probe results for your media file.
    # @!attribute container
    #   The container of your media file. This information helps you understand the overall structure and details of your media, including format, duration, and track layout.
    #   @return [Types::Container]
    # @!attribute metadata
    #   Metadata and other file information.
    #   @return [Types::Metadata]
    # @!attribute track_mappings
    #   An array containing track mapping information.
    #   @return [Array<Types::TrackMapping>]
    class ProbeResult < Struct.new(
      :container,
      :metadata,
      :track_mappings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # This setting applies only to ProRes 4444 and ProRes 4444 XQ outputs that you create from inputs that use 4:4:4 chroma sampling. Set Preserve 4:4:4 sampling to allow outputs to also use 4:4:4 chroma sampling. You must specify a value for this setting when your output codec profile supports 4:4:4 chroma sampling. Related Settings: For Apple ProRes outputs with 4:4:4 chroma sampling: Choose Preserve 4:4:4 sampling. Use when your input has 4:4:4 chroma sampling and your output codec Profile is Apple ProRes 4444 or 4444 XQ. Note that when you choose Preserve 4:4:4 sampling, you cannot include any of the following Preprocessors: Dolby Vision, HDR10+, or Noise reducer.
    module ProresChromaSampling
      PRESERVE_444_SAMPLING = 'PRESERVE_444_SAMPLING'
      SUBSAMPLE_TO_422 = 'SUBSAMPLE_TO_422'
    end

    # Use Profile to specify the type of Apple ProRes codec to use for this output.
    module ProresCodecProfile
      APPLE_PRORES_422 = 'APPLE_PRORES_422'
      APPLE_PRORES_422_HQ = 'APPLE_PRORES_422_HQ'
      APPLE_PRORES_422_LT = 'APPLE_PRORES_422_LT'
      APPLE_PRORES_422_PROXY = 'APPLE_PRORES_422_PROXY'
      APPLE_PRORES_4444 = 'APPLE_PRORES_4444'
      APPLE_PRORES_4444_XQ = 'APPLE_PRORES_4444_XQ'
    end

    # If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    module ProresFramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    module ProresFramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
      FRAMEFORMER = 'FRAMEFORMER'
      MAINTAIN_FRAME_COUNT = 'MAINTAIN_FRAME_COUNT'
    end

    # Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    module ProresInterlaceMode
      PROGRESSIVE = 'PROGRESSIVE'
      TOP_FIELD = 'TOP_FIELD'
      BOTTOM_FIELD = 'BOTTOM_FIELD'
      FOLLOW_TOP_FIELD = 'FOLLOW_TOP_FIELD'
      FOLLOW_BOTTOM_FIELD = 'FOLLOW_BOTTOM_FIELD'
    end

    # Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source, uses the PAR from your input video for your output. To specify a different PAR, choose any value other than Follow source. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    module ProresParControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    module ProresScanTypeConversionMode
      INTERLACED = 'INTERLACED'
      INTERLACED_OPTIMIZE = 'INTERLACED_OPTIMIZE'
    end

    # Required when you set Codec to the value PRORES.
    # @!attribute chroma_sampling
    #   This setting applies only to ProRes 4444 and ProRes 4444 XQ outputs that you create from inputs that use 4:4:4 chroma sampling. Set Preserve 4:4:4 sampling to allow outputs to also use 4:4:4 chroma sampling. You must specify a value for this setting when your output codec profile supports 4:4:4 chroma sampling. Related Settings: For Apple ProRes outputs with 4:4:4 chroma sampling: Choose Preserve 4:4:4 sampling. Use when your input has 4:4:4 chroma sampling and your output codec Profile is Apple ProRes 4444 or 4444 XQ. Note that when you choose Preserve 4:4:4 sampling, you cannot include any of the following Preprocessors: Dolby Vision, HDR10+, or Noise reducer.
    #   @return [String]
    # @!attribute codec_profile
    #   Use Profile to specify the type of Apple ProRes codec to use for this output.
    #   @return [String]
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #   @return [String]
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source, uses the PAR from your input video for your output. To specify a different PAR, choose any value other than Follow source. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    #   @return [String]
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #   @return [Integer]
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #   @return [Integer]
    # @!attribute per_frame_metrics
    #   Optionally choose one or more per frame metric reports to generate along with your output. You can use these metrics to analyze your video output according to one or more commonly used image quality metrics. You can specify per frame metrics for output groups or for individual outputs. When you do, MediaConvert writes a CSV (Comma-Separated Values) file to your S3 output destination, named after the output name and metric type. For example: videofile_PSNR.csv Jobs that generate per frame metrics will take longer to complete, depending on the resolution and complexity of your output. For example, some 4K jobs might take up to twice as long to complete. Note that when analyzing the video quality of your output, or when comparing the video quality of multiple different outputs, we generally also recommend a detailed visual review in a controlled environment. You can choose from the following per frame metrics: * PSNR: Peak Signal-to-Noise Ratio * SSIM: Structural Similarity Index Measure * MS_SSIM: Multi-Scale Similarity Index Measure * PSNR_HVS: Peak Signal-to-Noise Ratio, Human Visual System * VMAF: Video Multi-Method Assessment Fusion * QVBR: Quality-Defined Variable Bitrate. This option is only available when your output uses the QVBR rate control mode.
    #   @return [Array<String>]
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    #   @return [String]
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25.
    #   @return [String]
    # @!attribute telecine
    #   When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine to create a smoother picture. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    #   @return [String]
    class ProresSettings < Struct.new(
      :chroma_sampling,
      :codec_profile,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :interlace_mode,
      :par_control,
      :par_denominator,
      :par_numerator,
      :per_frame_metrics,
      :scan_type_conversion_mode,
      :slow_pal,
      :telecine,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25.
    module ProresSlowPal
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine to create a smoother picture. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    module ProresTelecine
      NONE = 'NONE'
      HARD = 'HARD'
    end

    # @!attribute policy
    #   A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #   @return [Types::Policy]
    class PutPolicyRequest < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   A policy configures behavior that you allow or disallow for your account. For information about MediaConvert policies, see the user guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #   @return [Types::Policy]
    class PutPolicyResponse < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.
    # @!attribute arn
    #   An identifier for this resource that is unique within all of AWS.
    #   @return [String]
    # @!attribute concurrent_jobs
    #   The maximum number of jobs your queue can process concurrently.
    #   @return [Integer]
    # @!attribute created_at
    #   The timestamp in epoch seconds for when you created the queue.
    #   @return [Time]
    # @!attribute description
    #   An optional description that you create for each queue.
    #   @return [String]
    # @!attribute last_updated
    #   The timestamp in epoch seconds for when you most recently updated the queue.
    #   @return [Time]
    # @!attribute name
    #   A name that you create for each queue. Each name must be unique within your account.
    #   @return [String]
    # @!attribute pricing_plan
    #   Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment.
    #   @return [String]
    # @!attribute progressing_jobs_count
    #   The estimated number of jobs with a PROGRESSING status.
    #   @return [Integer]
    # @!attribute reservation_plan
    #   Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
    #   @return [Types::ReservationPlan]
    # @!attribute service_overrides
    #   A list of any service overrides applied by MediaConvert to the settings that you have configured. If you see any overrides, we recommend that you contact AWS Support.
    #   @return [Array<Types::ServiceOverride>]
    # @!attribute status
    #   Queues can be ACTIVE or PAUSED. If you pause a queue, the service won't begin processing jobs in that queue. Jobs that are running when you pause the queue continue to run until they finish or result in an error.
    #   @return [String]
    # @!attribute submitted_jobs_count
    #   The estimated number of jobs with a SUBMITTED status.
    #   @return [Integer]
    # @!attribute type
    #   Specifies whether this on-demand queue is system or custom. System queues are built in. You can't modify or delete system queues. You can create and modify custom queues.
    #   @return [String]
    class Queue < Struct.new(
      :arn,
      :concurrent_jobs,
      :created_at,
      :description,
      :last_updated,
      :name,
      :pricing_plan,
      :progressing_jobs_count,
      :reservation_plan,
      :service_overrides,
      :status,
      :submitted_jobs_count,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.
    module QueueListBy
      NAME = 'NAME'
      CREATION_DATE = 'CREATION_DATE'
    end

    # Queues can be ACTIVE or PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause a queue continue to run until they finish or result in an error.
    module QueueStatus
      ACTIVE = 'ACTIVE'
      PAUSED = 'PAUSED'
    end

    # Description of the source and destination queues between which the job has moved, along with the timestamp of the move
    # @!attribute destination_queue
    #   The queue that the job was on after the transition.
    #   @return [String]
    # @!attribute source_queue
    #   The queue that the job was on before the transition.
    #   @return [String]
    # @!attribute timestamp
    #   The time, in Unix epoch format, that the job moved from the source queue to the destination queue.
    #   @return [Time]
    class QueueTransition < Struct.new(
      :destination_queue,
      :source_queue,
      :timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Rectangle to identify a specific area of the video frame.
    # @!attribute height
    #   Height of rectangle in pixels. Specify only even numbers.
    #   @return [Integer]
    # @!attribute width
    #   Width of rectangle in pixels. Specify only even numbers.
    #   @return [Integer]
    # @!attribute x
    #   The distance, in pixels, between the rectangle and the left edge of the video frame. Specify only even numbers.
    #   @return [Integer]
    # @!attribute y
    #   The distance, in pixels, between the rectangle and the top edge of the video frame. Specify only even numbers.
    #   @return [Integer]
    class Rectangle < Struct.new(
      :height,
      :width,
      :x,
      :y,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Manual audio remixing to adjust audio levels for each audio channel in each output of your job. With audio remixing, you can output more or fewer audio channels than your input audio source provides.
    # @!attribute audio_description_audio_channel
    #   Optionally specify the channel in your input that contains your audio description audio signal. MediaConvert mixes your audio signal across all output channels, while reducing their volume according to your data stream. When you specify an audio description audio channel, you must also specify an audio description data channel. For more information about audio description signals, see the BBC WHP 198 and 051 white papers.
    #   @return [Integer]
    # @!attribute audio_description_data_channel
    #   Optionally specify the channel in your input that contains your audio description data stream. MediaConvert mixes your audio signal across all output channels, while reducing their volume according to your data stream. When you specify an audio description data channel, you must also specify an audio description audio channel. For more information about audio description signals, see the BBC WHP 198 and 051 white papers.
    #   @return [Integer]
    # @!attribute channel_mapping
    #   Channel mapping contains the group of fields that hold the remixing value for each channel, in dB. Specify remix values to indicate how much of the content from your input audio channel you want in your output audio channels. Each instance of the InputChannels or InputChannelsFineTune array specifies these values for one output channel. Use one instance of this array for each output channel. In the console, each array corresponds to a column in the graphical depiction of the mapping matrix. The rows of the graphical matrix correspond to input channels. Valid values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification). Use InputChannels or InputChannelsFineTune to specify your remix values. Don't use both.
    #   @return [Types::ChannelMapping]
    # @!attribute channels_in
    #   Specify the number of audio channels from your input that you want to use in your output. With remixing, you might combine or split the data in these channels, so the number of channels in your final output might be different. If you are doing both input channel mapping and output channel mapping, the number of output channels in your input mapping must be the same as the number of input channels in your output mapping.
    #   @return [Integer]
    # @!attribute channels_out
    #   Specify the number of channels in this output after remixing. Valid values: 1, 2, 4, 6, 8... 64. (1 and even numbers to 64.) If you are doing both input channel mapping and output channel mapping, the number of output channels in your input mapping must be the same as the number of input channels in your output mapping.
    #   @return [Integer]
    class RemixSettings < Struct.new(
      :audio_description_audio_channel,
      :audio_description_data_channel,
      :channel_mapping,
      :channels_in,
      :channels_out,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Optionally remove any tts:rubyReserve attributes present in your input, that do   not have a tts:ruby attribute in the same element, from your output. Use if your vertical Japanese output captions have alignment issues. To remove ruby reserve attributes when present: Choose Enabled. To not remove any ruby reserve attributes: Keep the default value, Disabled.
    module RemoveRubyReserveAttributes
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term.
    module RenewalType
      AUTO_RENEW = 'AUTO_RENEW'
      EXPIRE = 'EXPIRE'
    end

    # Set to ENABLED to force a rendition to be included.
    module RequiredFlag
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
    # @!attribute commitment
    #   The length of the term of your reserved queue pricing plan commitment.
    #   @return [String]
    # @!attribute expires_at
    #   The timestamp in epoch seconds for when the current pricing plan term for this reserved queue expires.
    #   @return [Time]
    # @!attribute purchased_at
    #   The timestamp in epoch seconds for when you set up the current pricing plan for this reserved queue.
    #   @return [Time]
    # @!attribute renewal_type
    #   Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term.
    #   @return [String]
    # @!attribute reserved_slots
    #   Specifies the number of reserved transcode slots (RTS) for this queue. The number of RTS determines how many jobs the queue can process in parallel; each RTS can process one job at a time. When you increase this number, you extend your existing commitment with a new 12-month commitment for a larger number of RTS. The new commitment begins when you purchase the additional capacity. You can't decrease the number of RTS in your reserved queue.
    #   @return [Integer]
    # @!attribute status
    #   Specifies whether the pricing plan for your reserved queue is ACTIVE or EXPIRED.
    #   @return [String]
    class ReservationPlan < Struct.new(
      :commitment,
      :expires_at,
      :purchased_at,
      :renewal_type,
      :reserved_slots,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
    # @!attribute commitment
    #   The length of the term of your reserved queue pricing plan commitment.
    #   @return [String]
    # @!attribute renewal_type
    #   Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term. When your term is auto renewed, you extend your commitment by 12 months from the auto renew date. You can cancel this commitment.
    #   @return [String]
    # @!attribute reserved_slots
    #   Specifies the number of reserved transcode slots (RTS) for this queue. The number of RTS determines how many jobs the queue can process in parallel; each RTS can process one job at a time. You can't decrease the number of RTS in your reserved queue. You can increase the number of RTS by extending your existing commitment with a new 12-month commitment for the larger number. The new commitment begins when you purchase the additional capacity. You can't cancel your commitment or revert to your original commitment after you increase the capacity.
    #   @return [Integer]
    class ReservationPlanSettings < Struct.new(
      :commitment,
      :renewal_type,
      :reserved_slots,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specifies whether the pricing plan for your reserved queue is ACTIVE or EXPIRED.
    module ReservationPlanStatus
      ACTIVE = 'ACTIVE'
      EXPIRED = 'EXPIRED'
    end

    # The Amazon Resource Name (ARN) and tags for an AWS Elemental MediaConvert resource.
    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    # @!attribute tags
    #   The tags for the resource.
    #   @return [Hash<String, String>]
    class ResourceTags < Struct.new(
      :arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Respond to AFD to specify how the service changes the video itself in response to AFD values in the input. * Choose Respond to clip the input video frame according to the AFD value, input display aspect ratio, and output display aspect ratio. * Choose Passthrough to include the input AFD values. Do not choose this when AfdSignaling is set to NONE. A preferred implementation of this workflow is to set RespondToAfd to and set AfdSignaling to AUTO. * Choose None to remove all input AFD values from this output.
    module RespondToAfd
      NONE = 'NONE'
      RESPOND = 'RESPOND'
      PASSTHROUGH = 'PASSTHROUGH'
    end

    # Use Min top rendition size to specify a minimum size for the highest resolution in your ABR stack. * The highest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 1280x720 the highest resolution in your ABR stack will be equal to or greater than 1280x720. * If you specify a value for Max resolution, the value that you specify for Min top rendition size must be less than, or equal to, Max resolution. Use Min bottom rendition size to specify a minimum size for the lowest resolution in your ABR stack. * The lowest resolution in your ABR stack will be equal to or greater than the value that you enter. For example: If you specify 640x360 the lowest resolution in your ABR stack will be equal to or greater than to 640x360. * If you specify a Min top rendition size rule, the value that you specify for Min bottom rendition size must be less than, or equal to, Min top rendition size. Use Force include renditions to specify one or more resolutions to include your ABR stack. * (Recommended) To optimize automated ABR, specify as few resolutions as possible. * (Required) The number of resolutions that you specify must be equal to, or less than, the Max renditions setting. * If you specify a Min top rendition size rule, specify at least one resolution that is equal to, or greater than, Min top rendition size. * If you specify a Min bottom rendition size rule, only specify resolutions that are equal to, or greater than, Min bottom rendition size. * If you specify a Force include renditions rule, do not specify a separate rule for Allowed renditions. * Note: The ABR stack may include other resolutions that you do not specify here, depending on the Max renditions setting. Use Allowed renditions to specify a list of possible resolutions in your ABR stack. * (Required) The number of resolutions that you specify must be equal to, or greater than, the Max renditions setting. * MediaConvert will create an ABR stack exclusively from the list of resolutions that you specify. * Some resolutions in the Allowed renditions list may not be included, however you can force a resolution to be included by setting Required to ENABLED. * You must specify at least one resolution that is greater than or equal to any resolutions that you specify in Min top rendition size or Min bottom rendition size. * If you specify Allowed renditions, you must not specify a separate rule for Force include renditions.
    module RuleType
      MIN_TOP_RENDITION_SIZE = 'MIN_TOP_RENDITION_SIZE'
      MIN_BOTTOM_RENDITION_SIZE = 'MIN_BOTTOM_RENDITION_SIZE'
      FORCE_INCLUDE_RENDITIONS = 'FORCE_INCLUDE_RENDITIONS'
      ALLOWED_RENDITIONS = 'ALLOWED_RENDITIONS'
    end

    # Optional. Have MediaConvert automatically apply Amazon S3 access control for the outputs in this output group. When you don't use this setting, S3 automatically applies the default access control list PRIVATE.
    # @!attribute canned_acl
    #   Choose an Amazon S3 canned ACL for MediaConvert to apply to this output.
    #   @return [String]
    class S3DestinationAccessControl < Struct.new(
      :canned_acl,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings associated with S3 destination
    # @!attribute access_control
    #   Optional. Have MediaConvert automatically apply Amazon S3 access control for the outputs in this output group. When you don't use this setting, S3 automatically applies the default access control list PRIVATE.
    #   @return [Types::S3DestinationAccessControl]
    # @!attribute encryption
    #   Settings for how your job outputs are encrypted as they are uploaded to Amazon S3.
    #   @return [Types::S3EncryptionSettings]
    # @!attribute storage_class
    #   Specify the S3 storage class to use for this output. To use your destination's default storage class: Keep the default value, Not set. For more information about S3 storage classes, see https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html
    #   @return [String]
    class S3DestinationSettings < Struct.new(
      :access_control,
      :encryption,
      :storage_class,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings for how your job outputs are encrypted as they are uploaded to Amazon S3.
    # @!attribute encryption_type
    #   Specify how you want your data keys managed. AWS uses data keys to encrypt your content. AWS also encrypts the data keys themselves, using a customer master key (CMK), and then stores the encrypted data keys alongside your encrypted content. Use this setting to specify which AWS service manages the CMK. For simplest set up, choose Amazon S3. If you want your master key to be managed by AWS Key Management Service (KMS), choose AWS KMS. By default, when you choose AWS KMS, KMS uses the AWS managed customer master key (CMK) associated with Amazon S3 to encrypt your data keys. You can optionally choose to specify a different, customer managed CMK. Do so by specifying the Amazon Resource Name (ARN) of the key for the setting KMS ARN.
    #   @return [String]
    # @!attribute kms_encryption_context
    #   Optionally, specify the encryption context that you want to use alongside your KMS key. AWS KMS uses this encryption context as additional authenticated data (AAD) to support authenticated encryption. This value must be a base64-encoded UTF-8 string holding JSON which represents a string-string map. To use this setting, you must also set Server-side encryption to AWS KMS. For more information about encryption context, see: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context.
    #   @return [String]
    # @!attribute kms_key_arn
    #   Optionally, specify the customer master key (CMK) that you want to use to encrypt the data key that AWS uses to encrypt your output content. Enter the Amazon Resource Name (ARN) of the CMK. To use this setting, you must also set Server-side encryption to AWS KMS. If you set Server-side encryption to AWS KMS but don't specify a CMK here, AWS uses the AWS managed CMK associated with Amazon S3.
    #   @return [String]
    class S3EncryptionSettings < Struct.new(
      :encryption_type,
      :kms_encryption_context,
      :kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Choose an Amazon S3 canned ACL for MediaConvert to apply to this output.
    module S3ObjectCannedAcl
      PUBLIC_READ = 'PUBLIC_READ'
      AUTHENTICATED_READ = 'AUTHENTICATED_READ'
      BUCKET_OWNER_READ = 'BUCKET_OWNER_READ'
      BUCKET_OWNER_FULL_CONTROL = 'BUCKET_OWNER_FULL_CONTROL'
    end

    # Specify how you want your data keys managed. AWS uses data keys to encrypt your content. AWS also encrypts the data keys themselves, using a customer master key (CMK), and then stores the encrypted data keys alongside your encrypted content. Use this setting to specify which AWS service manages the CMK. For simplest set up, choose Amazon S3. If you want your master key to be managed by AWS Key Management Service (KMS), choose AWS KMS. By default, when you choose AWS KMS, KMS uses the AWS managed customer master key (CMK) associated with Amazon S3 to encrypt your data keys. You can optionally choose to specify a different, customer managed CMK. Do so by specifying the Amazon Resource Name (ARN) of the key for the setting KMS ARN.
    module S3ServerSideEncryptionType
      SERVER_SIDE_ENCRYPTION_S3 = 'SERVER_SIDE_ENCRYPTION_S3'
      SERVER_SIDE_ENCRYPTION_KMS = 'SERVER_SIDE_ENCRYPTION_KMS'
    end

    # Specify the S3 storage class to use for this output. To use your destination's default storage class: Keep the default value, Not set. For more information about S3 storage classes, see https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html
    module S3StorageClass
      STANDARD = 'STANDARD'
      REDUCED_REDUNDANCY = 'REDUCED_REDUNDANCY'
      STANDARD_IA = 'STANDARD_IA'
      ONEZONE_IA = 'ONEZONE_IA'
      INTELLIGENT_TIERING = 'INTELLIGENT_TIERING'
      GLACIER = 'GLACIER'
      DEEP_ARCHIVE = 'DEEP_ARCHIVE'
    end

    # Specify how MediaConvert limits the color sample range for this output. To create a limited range output from a full range input: Choose Limited range squeeze. For full range inputs, MediaConvert performs a linear offset to color samples equally across all pixels and frames. Color samples in 10-bit outputs are limited to 64 through 940, and 8-bit outputs are limited to 16 through 235. Note: For limited range inputs, values for color samples are passed through to your output unchanged. MediaConvert does not limit the sample range. To correct pixels in your input that are out of range or out of gamut: Choose Limited range clip. Use for broadcast applications. MediaConvert conforms any pixels outside of the values that you specify under Minimum YUV and Maximum YUV to limited range bounds. MediaConvert also corrects any YUV values that, when converted to RGB, would be outside the bounds you specify under Minimum RGB tolerance and Maximum RGB tolerance. With either limited range conversion, MediaConvert writes the sample range metadata in the output.
    module SampleRangeConversion
      LIMITED_RANGE_SQUEEZE = 'LIMITED_RANGE_SQUEEZE'
      NONE = 'NONE'
      LIMITED_RANGE_CLIP = 'LIMITED_RANGE_CLIP'
    end

    # Specify the video Scaling behavior when your output has a different resolution than your input. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/video-scaling.html
    module ScalingBehavior
      DEFAULT = 'DEFAULT'
      STRETCH_TO_OUTPUT = 'STRETCH_TO_OUTPUT'
      FIT = 'FIT'
      FIT_NO_UPSCALE = 'FIT_NO_UPSCALE'
      FILL = 'FILL'
    end

    # Set Framerate to make sure that the captions and the video are synchronized in the output. Specify a frame rate that matches the frame rate of the associated video. If the video frame rate is 29.97, choose 29.97 dropframe only if the video has video_insertion=true and drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe.
    module SccDestinationFramerate
      FRAMERATE_23_97 = 'FRAMERATE_23_97'
      FRAMERATE_24 = 'FRAMERATE_24'
      FRAMERATE_25 = 'FRAMERATE_25'
      FRAMERATE_29_97_DROPFRAME = 'FRAMERATE_29_97_DROPFRAME'
      FRAMERATE_29_97_NON_DROPFRAME = 'FRAMERATE_29_97_NON_DROPFRAME'
    end

    # Settings related to SCC captions. SCC is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/scc-srt-output-captions.html.
    # @!attribute framerate
    #   Set Framerate to make sure that the captions and the video are synchronized in the output. Specify a frame rate that matches the frame rate of the associated video. If the video frame rate is 29.97, choose 29.97 dropframe only if the video has video_insertion=true and drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe.
    #   @return [String]
    class SccDestinationSettings < Struct.new(
      :framerate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute input_file
    #   Optional. Provide your input file URL or your partial input file name. The maximum length for an input file is 300 characters.
    #   @return [String]
    # @!attribute max_results
    #   Optional. Number of jobs, up to twenty, that will be returned at one time.
    #   @return [Integer]
    # @!attribute next_token
    #   Optional. Use this string, provided with the response to a previous request, to request the next batch of jobs.
    #   @return [String]
    # @!attribute order
    #   Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
    #   @return [String]
    # @!attribute queue
    #   Optional. Provide a queue name, or a queue ARN, to return only jobs from that queue.
    #   @return [String]
    # @!attribute status
    #   Optional. A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
    #   @return [String]
    class SearchJobsRequest < Struct.new(
      :input_file,
      :max_results,
      :next_token,
      :order,
      :queue,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   List of jobs.
    #   @return [Array<Types::Job>]
    # @!attribute next_token
    #   Use this string to request the next batch of jobs.
    #   @return [String]
    class SearchJobsResponse < Struct.new(
      :jobs,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A service override applied by MediaConvert to the settings that you have configured. If you see any overrides, we recommend that you contact AWS Support.
    # @!attribute message
    #   Details about the service override that MediaConvert has applied.
    #   @return [String]
    # @!attribute name
    #   The name of the setting that MediaConvert has applied an override to.
    #   @return [String]
    # @!attribute override_value
    #   The current value of the service override that MediaConvert has applied.
    #   @return [String]
    # @!attribute value
    #   The value of the setting that you configured, prior to any overrides that MediaConvert has applied.
    #   @return [String]
    class ServiceOverride < Struct.new(
      :message,
      :name,
      :override_value,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default.
    module SimulateReservedQueue
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead.
    # @!attribute certificate_arn
    #   If you want your key provider to encrypt the content keys that it provides to MediaConvert, set up a certificate with a master key using AWS Certificate Manager. Specify the certificate's Amazon Resource Name (ARN) here.
    #   @return [String]
    # @!attribute encryption_contract_configuration
    #   Specify the SPEKE version, either v1.0 or v2.0, that MediaConvert uses when encrypting your output. For more information, see: https://docs.aws.amazon.com/speke/latest/documentation/speke-api-specification.html To use SPEKE v1.0: Leave blank. To use SPEKE v2.0: Specify a SPEKE v2.0 video preset and a SPEKE v2.0 audio preset.
    #   @return [Types::EncryptionContractConfiguration]
    # @!attribute resource_id
    #   Specify the resource ID that your SPEKE-compliant key provider uses to identify this content.
    #   @return [String]
    # @!attribute system_ids
    #   Relates to SPEKE implementation. DRM system identifiers. DASH output groups support a max of two system ids. HLS output groups support a max of 3 system ids. Other group types support one system id. See https://dashif.org/identifiers/content_protection/ for more details.
    #   @return [Array<String>]
    # @!attribute url
    #   Specify the URL to the key server that your SPEKE-compliant DRM key provider uses to provide keys for encrypting your content.
    #   @return [String]
    class SpekeKeyProvider < Struct.new(
      :certificate_arn,
      :encryption_contract_configuration,
      :resource_id,
      :system_ids,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # If your output group type is CMAF, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is HLS, DASH, or Microsoft Smooth, use the SpekeKeyProvider settings instead.
    # @!attribute certificate_arn
    #   If you want your key provider to encrypt the content keys that it provides to MediaConvert, set up a certificate with a master key using AWS Certificate Manager. Specify the certificate's Amazon Resource Name (ARN) here.
    #   @return [String]
    # @!attribute dash_signaled_system_ids
    #   Specify the DRM system IDs that you want signaled in the DASH manifest that MediaConvert creates as part of this CMAF package. The DASH manifest can currently signal up to three system IDs. For more information, see https://dashif.org/identifiers/content_protection/.
    #   @return [Array<String>]
    # @!attribute encryption_contract_configuration
    #   Specify the SPEKE version, either v1.0 or v2.0, that MediaConvert uses when encrypting your output. For more information, see: https://docs.aws.amazon.com/speke/latest/documentation/speke-api-specification.html To use SPEKE v1.0: Leave blank. To use SPEKE v2.0: Specify a SPEKE v2.0 video preset and a SPEKE v2.0 audio preset.
    #   @return [Types::EncryptionContractConfiguration]
    # @!attribute hls_signaled_system_ids
    #   Specify up to 3 DRM system IDs that you want signaled in the HLS manifest that MediaConvert creates as part of this CMAF package. For more information, see https://dashif.org/identifiers/content_protection/.
    #   @return [Array<String>]
    # @!attribute resource_id
    #   Specify the resource ID that your SPEKE-compliant key provider uses to identify this content.
    #   @return [String]
    # @!attribute url
    #   Specify the URL to the key server that your SPEKE-compliant DRM key provider uses to provide keys for encrypting your content.
    #   @return [String]
    class SpekeKeyProviderCmaf < Struct.new(
      :certificate_arn,
      :dash_signaled_system_ids,
      :encryption_contract_configuration,
      :hls_signaled_system_ids,
      :resource_id,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings related to SRT captions. SRT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video.
    # @!attribute style_passthrough
    #   Set Style passthrough to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use simplified output captions.
    #   @return [String]
    class SrtDestinationSettings < Struct.new(
      :style_passthrough,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Set Style passthrough to ENABLED to use the available style, color, and position information from your input captions. MediaConvert uses default settings for any missing style and position information in your input captions. Set Style passthrough to DISABLED, or leave blank, to ignore the style and position information from your input captions and use simplified output captions.
    module SrtStylePassthrough
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # Use these settings to set up encryption with a static key provider.
    # @!attribute key_format
    #   Relates to DRM implementation. Sets the value of the KEYFORMAT attribute. Must be 'identity' or a reverse DNS string. May be omitted to indicate an implicit value of 'identity'.
    #   @return [String]
    # @!attribute key_format_versions
    #   Relates to DRM implementation. Either a single positive integer version value or a slash delimited list of version values (1/2/3).
    #   @return [String]
    # @!attribute static_key_value
    #   Relates to DRM implementation. Use a 32-character hexidecimal string to specify Key Value.
    #   @return [String]
    # @!attribute url
    #   Relates to DRM implementation. The location of the license server used for protecting content.
    #   @return [String]
    class StaticKeyProvider < Struct.new(
      :key_format,
      :key_format_versions,
      :static_key_value,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    module StatusUpdateInterval
      SECONDS_10 = 'SECONDS_10'
      SECONDS_12 = 'SECONDS_12'
      SECONDS_15 = 'SECONDS_15'
      SECONDS_20 = 'SECONDS_20'
      SECONDS_30 = 'SECONDS_30'
      SECONDS_60 = 'SECONDS_60'
      SECONDS_120 = 'SECONDS_120'
      SECONDS_180 = 'SECONDS_180'
      SECONDS_240 = 'SECONDS_240'
      SECONDS_300 = 'SECONDS_300'
      SECONDS_360 = 'SECONDS_360'
      SECONDS_420 = 'SECONDS_420'
      SECONDS_480 = 'SECONDS_480'
      SECONDS_540 = 'SECONDS_540'
      SECONDS_600 = 'SECONDS_600'
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag. To get the ARN, send a GET request with the resource name.
    #   @return [String]
    # @!attribute tags
    #   The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify how MediaConvert handles gaps between media segments in your TAMS source. Gaps can occur in live streams due to network issues or other interruptions. Choose from the following options: * Skip gaps - Default. Skip over gaps and join segments together. This creates a continuous output with no blank frames, but may cause timeline discontinuities. * Fill with black - Insert black frames to fill gaps between segments. This maintains timeline continuity but adds black frames where content is missing. * Hold last frame - Repeat the last frame before a gap until the next segment begins. This maintains visual continuity during gaps.
    module TamsGapHandling
      SKIP_GAPS = 'SKIP_GAPS'
      FILL_WITH_BLACK = 'FILL_WITH_BLACK'
      HOLD_LAST_FRAME = 'HOLD_LAST_FRAME'
    end

    # Settings related to teletext captions. Set up teletext captions in the same output as your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/teletext-output-captions.html.
    # @!attribute page_number
    #   Set pageNumber to the Teletext page number for the destination captions for this output. This value must be a three-digit hexadecimal string; strings ending in -FF are invalid. If you are passing through the entire set of Teletext data, do not use this field.
    #   @return [String]
    # @!attribute page_types
    #   Specify the page types for this Teletext page. If you don't specify a value here, the service sets the page type to the default value Subtitle. If you pass through the entire set of Teletext data, don't use this field. When you pass through a set of Teletext pages, your output has the same page types as your input.
    #   @return [Array<String>]
    class TeletextDestinationSettings < Struct.new(
      :page_number,
      :page_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A page type as defined in the standard ETSI EN 300 468, Table 94
    module TeletextPageType
      PAGE_TYPE_INITIAL = 'PAGE_TYPE_INITIAL'
      PAGE_TYPE_SUBTITLE = 'PAGE_TYPE_SUBTITLE'
      PAGE_TYPE_ADDL_INFO = 'PAGE_TYPE_ADDL_INFO'
      PAGE_TYPE_PROGRAM_SCHEDULE = 'PAGE_TYPE_PROGRAM_SCHEDULE'
      PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE = 'PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE'
    end

    # Settings specific to Teletext caption sources, including Page number.
    # @!attribute page_number
    #   Use Page Number to specify the three-digit hexadecimal page number that will be used for Teletext captions. Do not use this setting if you are passing through teletext from the input source to output.
    #   @return [String]
    class TeletextSourceSettings < Struct.new(
      :page_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings for burning the output timecode and specified prefix into the output.
    # @!attribute font_size
    #   Use Font size to set the font size of any burned-in timecode. Valid values are 10, 16, 32, 48.
    #   @return [Integer]
    # @!attribute position
    #   Use Position under Timecode burn-in to specify the location the burned-in timecode on output video.
    #   @return [String]
    # @!attribute prefix
    #   Use Prefix to place ASCII characters before any burned-in timecode. For example, a prefix of "EZ-" will result in the timecode "EZ-00:00:00:00". Provide either the characters themselves or the ASCII code equivalents. The supported range of characters is 0x20 through 0x7e. This includes letters, numbers, and all special characters represented on a standard English keyboard.
    #   @return [String]
    class TimecodeBurnin < Struct.new(
      :font_size,
      :position,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Position under Timecode burn-in to specify the location the burned-in timecode on output video.
    module TimecodeBurninPosition
      TOP_CENTER = 'TOP_CENTER'
      TOP_LEFT = 'TOP_LEFT'
      TOP_RIGHT = 'TOP_RIGHT'
      MIDDLE_LEFT = 'MIDDLE_LEFT'
      MIDDLE_CENTER = 'MIDDLE_CENTER'
      MIDDLE_RIGHT = 'MIDDLE_RIGHT'
      BOTTOM_LEFT = 'BOTTOM_LEFT'
      BOTTOM_CENTER = 'BOTTOM_CENTER'
      BOTTOM_RIGHT = 'BOTTOM_RIGHT'
    end

    # These settings control how the service handles timecodes throughout the job. These settings don't affect input clipping.
    # @!attribute anchor
    #   If you use an editing platform that relies on an anchor timecode, use Anchor Timecode to specify a timecode that will match the input video frame to the output video frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF). This setting ignores frame rate conversion. System behavior for Anchor Timecode varies depending on your setting for Source. * If Source is set to Specified Start, the first input frame is the specified value in Start Timecode. Anchor Timecode and Start Timecode are used calculate output timecode. * If Source is set to Start at 0 the first frame is 00:00:00:00. * If Source is set to Embedded, the first frame is the timecode value on the first input frame of the input.
    #   @return [String]
    # @!attribute source
    #   Use Source to set how timecodes are handled within this job. To make sure that your video, audio, captions, and markers are synchronized and that time-based features, such as image inserter, work correctly, choose the Timecode source option that matches your assets. All timecodes are in a 24-hour format with frame number (HH:MM:SS:FF). * Embedded - Use the timecode that is in the input video. If no embedded timecode is in the source, the service will use Start at 0 instead. * Start at 0 - Set the timecode of the initial frame to 00:00:00:00. * Specified Start - Set the timecode of the initial frame to a value other than zero. You use Start timecode to provide this value.
    #   @return [String]
    # @!attribute start
    #   Only use when you set Source to Specified start. Use Start timecode to specify the timecode for the initial frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF).
    #   @return [String]
    # @!attribute timestamp_offset
    #   Only applies to outputs that support program-date-time stamp. Use Timestamp offset to overwrite the timecode date without affecting the time and frame number. Provide the new date as a string in the format "yyyy-mm-dd". To use Timestamp offset, you must also enable Insert program-date-time in the output settings. For example, if the date part of your timecodes is 2002-1-25 and you want to change it to one year later, set Timestamp offset to 2003-1-25.
    #   @return [String]
    class TimecodeConfig < Struct.new(
      :anchor,
      :source,
      :start,
      :timestamp_offset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use Source to set how timecodes are handled within this job. To make sure that your video, audio, captions, and markers are synchronized and that time-based features, such as image inserter, work correctly, choose the Timecode source option that matches your assets. All timecodes are in a 24-hour format with frame number (HH:MM:SS:FF). * Embedded - Use the timecode that is in the input video. If no embedded timecode is in the source, the service will use Start at 0 instead. * Start at 0 - Set the timecode of the initial frame to 00:00:00:00. * Specified Start - Set the timecode of the initial frame to a value other than zero. You use Start timecode to provide this value.
    module TimecodeSource
      EMBEDDED = 'EMBEDDED'
      ZEROBASED = 'ZEROBASED'
      SPECIFIEDSTART = 'SPECIFIEDSTART'
    end

    # To include a timecode track in your MP4 output: Choose Enabled. MediaConvert writes the timecode track in the Null Media Header box (NMHD), without any timecode text formatting information. You can also specify dropframe or non-dropframe timecode under the Drop Frame Timecode setting. To not include a timecode track: Keep the default value, Disabled.
    module TimecodeTrack
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Set ID3 metadata to Passthrough to include ID3 metadata in this output. This includes ID3 metadata from the following features: ID3 timestamp period, and Custom ID3 metadata inserter. To exclude this ID3 metadata in this output: set ID3 metadata to None or leave blank.
    module TimedMetadata
      PASSTHROUGH = 'PASSTHROUGH'
      NONE = 'NONE'
    end

    # Insert user-defined custom ID3 metadata at timecodes that you specify. In each output that you want to include this metadata, you must set ID3 metadata to Passthrough.
    # @!attribute id3_insertions
    #   Id3Insertions contains the array of Id3Insertion instances.
    #   @return [Array<Types::Id3Insertion>]
    class TimedMetadataInsertion < Struct.new(
      :id3_insertions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds.
    # @!attribute finish_time
    #   The time, in Unix epoch format, that the transcoding job finished
    #   @return [Time]
    # @!attribute start_time
    #   The time, in Unix epoch format, that transcoding for the job began.
    #   @return [Time]
    # @!attribute submit_time
    #   The time, in Unix epoch format, that you submitted the job.
    #   @return [Time]
    class Timing < Struct.new(
      :finish_time,
      :start_time,
      :submit_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests.
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Details about each track (video, audio, or data) in the media file.
    # @!attribute audio_properties
    #   Details about the media file's audio track.
    #   @return [Types::AudioProperties]
    # @!attribute codec
    #   The codec of the audio or video track, or caption format of the data track.
    #   @return [String]
    # @!attribute data_properties
    #   Details about the media file's data track.
    #   @return [Types::DataProperties]
    # @!attribute duration
    #   The duration of the track, in seconds.
    #   @return [Float]
    # @!attribute index
    #   The unique index number of the track, starting at 1.
    #   @return [Integer]
    # @!attribute track_type
    #   The type of track: video, audio, or data.
    #   @return [String]
    # @!attribute video_properties
    #   Details about the media file's video track.
    #   @return [Types::VideoProperties]
    class Track < Struct.new(
      :audio_properties,
      :codec,
      :data_properties,
      :duration,
      :index,
      :track_type,
      :video_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # An array containing track mapping information.
    # @!attribute audio_track_indexes
    #   The index numbers of the audio tracks in your media file.
    #   @return [Array<Integer>]
    # @!attribute data_track_indexes
    #   The index numbers of the data tracks in your media file.
    #   @return [Array<Integer>]
    # @!attribute video_track_indexes
    #   The index numbers of the video tracks in your media file.
    #   @return [Array<Integer>]
    class TrackMapping < Struct.new(
      :audio_track_indexes,
      :data_track_indexes,
      :video_track_indexes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings specific to caption sources that are specified by track number. Currently, this is only IMSC captions in an IMF package. If your caption source is IMSC 1.1 in a separate xml file, use FileSourceSettings instead of TrackSourceSettings.
    # @!attribute track_number
    #   Use this setting to select a single captions track from a source. Track numbers correspond to the order in the captions source file. For IMF sources, track numbering is based on the order that the captions appear in the CPL. For example, use 1 to select the captions asset that is listed first in the CPL. To include more than one captions track in your job outputs, create multiple input captions selectors. Specify one track per selector.
    #   @return [Integer]
    class TrackSourceSettings < Struct.new(
      :track_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TrackType
      video = 'video'
      audio = 'audio'
      data = 'data'
    end

    # The color space transfer characteristics of the video track.
    module TransferCharacteristics
      ITU_709 = 'ITU_709'
      UNSPECIFIED = 'UNSPECIFIED'
      RESERVED = 'RESERVED'
      ITU_470M = 'ITU_470M'
      ITU_470BG = 'ITU_470BG'
      SMPTE_170M = 'SMPTE_170M'
      SMPTE_240M = 'SMPTE_240M'
      LINEAR = 'LINEAR'
      LOG10_2 = 'LOG10_2'
      LOC10_2_5 = 'LOC10_2_5'
      IEC_61966_2_4 = 'IEC_61966_2_4'
      ITU_1361 = 'ITU_1361'
      IEC_61966_2_1 = 'IEC_61966_2_1'
      ITU_2020_10bit = 'ITU_2020_10bit'
      ITU_2020_12bit = 'ITU_2020_12bit'
      SMPTE_2084 = 'SMPTE_2084'
      SMPTE_428_1 = 'SMPTE_428_1'
      ARIB_B67 = 'ARIB_B67'
      LAST = 'LAST'
    end

    # Specify the initial presentation timestamp (PTS) offset for your transport stream output. To let MediaConvert automatically determine the initial PTS offset: Keep the default value, Auto. We recommend that you choose Auto for the widest player compatibility. The initial PTS will be at least two seconds and vary depending on your output's bitrate, HRD buffer size and HRD buffer initial fill percentage. To manually specify an initial PTS offset: Choose Seconds or Milliseconds. Then specify the number of seconds or milliseconds with PTS offset.
    module TsPtsOffset
      AUTO = 'AUTO'
      SECONDS = 'SECONDS'
      MILLISECONDS = 'MILLISECONDS'
    end

    # Settings related to TTML captions. TTML is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html.
    # @!attribute style_passthrough
    #   Pass through style and position information from a TTML-like input source (TTML, IMSC, SMPTE-TT) to the TTML output.
    #   @return [String]
    class TtmlDestinationSettings < Struct.new(
      :style_passthrough,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Pass through style and position information from a TTML-like input source (TTML, IMSC, SMPTE-TT) to the TTML output.
    module TtmlStylePassthrough
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module Type
      SYSTEM = 'SYSTEM'
      CUSTOM = 'CUSTOM'
    end

    # The four character code for the uncompressed video.
    module UncompressedFourcc
      I420 = 'I420'
      I422 = 'I422'
      I444 = 'I444'
    end

    # Use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    module UncompressedFramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    module UncompressedFramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
      FRAMEFORMER = 'FRAMEFORMER'
      MAINTAIN_FRAME_COUNT = 'MAINTAIN_FRAME_COUNT'
    end

    # Optional. Choose the scan line type for this output. If you don't specify a value, MediaConvert will create a progressive output.
    module UncompressedInterlaceMode
      INTERLACED = 'INTERLACED'
      PROGRESSIVE = 'PROGRESSIVE'
    end

    # Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    module UncompressedScanTypeConversionMode
      INTERLACED = 'INTERLACED'
      INTERLACED_OPTIMIZE = 'INTERLACED_OPTIMIZE'
    end

    # Required when you set Codec, under VideoDescription>CodecSettings to the value UNCOMPRESSED.
    # @!attribute fourcc
    #   The four character code for the uncompressed video.
    #   @return [String]
    # @!attribute framerate_control
    #   Use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute interlace_mode
    #   Optional. Choose the scan line type for this output. If you don't specify a value, MediaConvert will create a progressive output.
    #   @return [String]
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    #   @return [String]
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Framerate to 25.
    #   @return [String]
    # @!attribute telecine
    #   When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine to create a smoother picture. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    #   @return [String]
    class UncompressedSettings < Struct.new(
      :fourcc,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :interlace_mode,
      :scan_type_conversion_mode,
      :slow_pal,
      :telecine,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Framerate to 25.
    module UncompressedSlowPal
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine to create a smoother picture. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    module UncompressedTelecine
      NONE = 'NONE'
      HARD = 'HARD'
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove tags from. To get the ARN, send a GET request with the resource name.
    #   @return [String]
    # @!attribute tag_keys
    #   The keys of the tags that you want to remove from the resource.
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute acceleration_settings
    #   Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide.
    #   @return [Types::AccelerationSettings]
    # @!attribute category
    #   The new category for the job template, if you are changing it.
    #   @return [String]
    # @!attribute description
    #   The new description for the job template, if you are changing it.
    #   @return [String]
    # @!attribute hop_destinations
    #   Optional list of hop destinations.
    #   @return [Array<Types::HopDestination>]
    # @!attribute name
    #   The name of the job template you are modifying
    #   @return [String]
    # @!attribute priority
    #   Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0.
    #   @return [Integer]
    # @!attribute queue
    #   The new queue for the job template, if you are changing it.
    #   @return [String]
    # @!attribute settings
    #   JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
    #   @return [Types::JobTemplateSettings]
    # @!attribute status_update_interval
    #   Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
    #   @return [String]
    class UpdateJobTemplateRequest < Struct.new(
      :acceleration_settings,
      :category,
      :description,
      :hop_destinations,
      :name,
      :priority,
      :queue,
      :settings,
      :status_update_interval,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_template
    #   A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
    #   @return [Types::JobTemplate]
    class UpdateJobTemplateResponse < Struct.new(
      :job_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute category
    #   The new category for the preset, if you are changing it.
    #   @return [String]
    # @!attribute description
    #   The new description for the preset, if you are changing it.
    #   @return [String]
    # @!attribute name
    #   The name of the preset you are modifying.
    #   @return [String]
    # @!attribute settings
    #   Settings for preset
    #   @return [Types::PresetSettings]
    class UpdatePresetRequest < Struct.new(
      :category,
      :description,
      :name,
      :settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute preset
    #   A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
    #   @return [Types::Preset]
    class UpdatePresetResponse < Struct.new(
      :preset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute concurrent_jobs
    #   Specify the maximum number of jobs your queue can process concurrently. For on-demand queues, the value you enter is constrained by your service quotas for Maximum concurrent jobs, per on-demand queue and Maximum concurrent jobs, per account. For reserved queues, update your reservation plan instead in order to increase your yearly commitment.
    #   @return [Integer]
    # @!attribute description
    #   The new description for the queue, if you are changing it.
    #   @return [String]
    # @!attribute name
    #   The name of the queue that you are modifying.
    #   @return [String]
    # @!attribute reservation_plan_settings
    #   The new details of your pricing plan for your reserved queue. When you set up a new pricing plan to replace an expired one, you enter into another 12-month commitment. When you add capacity to your queue by increasing the number of RTS, you extend the term of your commitment to 12 months from when you add capacity. After you make these commitments, you can't cancel them.
    #   @return [Types::ReservationPlanSettings]
    # @!attribute status
    #   Pause or activate a queue by changing its status between ACTIVE and PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause the queue continue to run until they finish or result in an error.
    #   @return [String]
    class UpdateQueueRequest < Struct.new(
      :concurrent_jobs,
      :description,
      :name,
      :reservation_plan_settings,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute queue
    #   You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.
    #   @return [Types::Queue]
    class UpdateQueueResponse < Struct.new(
      :queue,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the VC3 class to choose the quality characteristics for this output. VC3 class, together with the settings Framerate (framerateNumerator and framerateDenominator) and Resolution (height and width), determine your output bitrate. For example, say that your video resolution is 1920x1080 and your framerate is 29.97. Then Class 145 gives you an output with a bitrate of approximately 145 Mbps and Class 220 gives you and output with a bitrate of approximately 220 Mbps. VC3 class also specifies the color bit depth of your output.
    module Vc3Class
      CLASS_145_8BIT = 'CLASS_145_8BIT'
      CLASS_220_8BIT = 'CLASS_220_8BIT'
      CLASS_220_10BIT = 'CLASS_220_10BIT'
    end

    # If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    module Vc3FramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    module Vc3FramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
      FRAMEFORMER = 'FRAMEFORMER'
      MAINTAIN_FRAME_COUNT = 'MAINTAIN_FRAME_COUNT'
    end

    # Optional. Choose the scan line type for this output. If you don't specify a value, MediaConvert will create a progressive output.
    module Vc3InterlaceMode
      INTERLACED = 'INTERLACED'
      PROGRESSIVE = 'PROGRESSIVE'
    end

    # Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    module Vc3ScanTypeConversionMode
      INTERLACED = 'INTERLACED'
      INTERLACED_OPTIMIZE = 'INTERLACED_OPTIMIZE'
    end

    # Required when you set Codec to the value VC3
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute interlace_mode
    #   Optional. Choose the scan line type for this output. If you don't specify a value, MediaConvert will create a progressive output.
    #   @return [String]
    # @!attribute scan_type_conversion_mode
    #   Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing, for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine to None or Soft. You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode to a value other than Progressive.
    #   @return [String]
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Framerate to 25.
    #   @return [String]
    # @!attribute telecine
    #   When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine to create a smoother picture. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    #   @return [String]
    # @!attribute vc3_class
    #   Specify the VC3 class to choose the quality characteristics for this output. VC3 class, together with the settings Framerate (framerateNumerator and framerateDenominator) and Resolution (height and width), determine your output bitrate. For example, say that your video resolution is 1920x1080 and your framerate is 29.97. Then Class 145 gives you an output with a bitrate of approximately 145 Mbps and Class 220 gives you and output with a bitrate of approximately 220 Mbps. VC3 class also specifies the color bit depth of your output.
    #   @return [String]
    class Vc3Settings < Struct.new(
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :interlace_mode,
      :scan_type_conversion_mode,
      :slow_pal,
      :telecine,
      :vc3_class,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Framerate to 25.
    module Vc3SlowPal
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine to create a smoother picture. When you keep the default value, None, MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
    module Vc3Telecine
      NONE = 'NONE'
      HARD = 'HARD'
    end

    # The action to take on content advisory XDS packets. If you select PASSTHROUGH, packets will not be changed. If you select STRIP, any packets will be removed in output captions.
    module VchipAction
      PASSTHROUGH = 'PASSTHROUGH'
      STRIP = 'STRIP'
    end

    # Type of video codec
    module VideoCodec
      AV1 = 'AV1'
      AVC_INTRA = 'AVC_INTRA'
      FRAME_CAPTURE = 'FRAME_CAPTURE'
      GIF = 'GIF'
      H_264 = 'H_264'
      H_265 = 'H_265'
      MPEG2 = 'MPEG2'
      PASSTHROUGH = 'PASSTHROUGH'
      PRORES = 'PRORES'
      UNCOMPRESSED = 'UNCOMPRESSED'
      VC3 = 'VC3'
      VP8 = 'VP8'
      VP9 = 'VP9'
      XAVC = 'XAVC'
    end

    # Video codec settings contains the group of settings related to video encoding. The settings in this group vary depending on the value that you choose for Video codec. For each codec enum that you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AV1, Av1Settings * AVC_INTRA, AvcIntraSettings * FRAME_CAPTURE, FrameCaptureSettings * GIF, GifSettings * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * UNCOMPRESSED, UncompressedSettings * VC3, Vc3Settings * VP8, Vp8Settings * VP9, Vp9Settings * XAVC, XavcSettings
    # @!attribute av1_settings
    #   Required when you set Codec, under VideoDescription>CodecSettings to the value AV1.
    #   @return [Types::Av1Settings]
    # @!attribute avc_intra_settings
    #   Required when you choose AVC-Intra for your output video codec. For more information about the AVC-Intra settings, see the relevant specification. For detailed information about SD and HD in AVC-Intra, see https://ieeexplore.ieee.org/document/7290936. For information about 4K/2K in AVC-Intra, see https://pro-av.panasonic.net/en/avc-ultra/AVC-ULTRAoverview.pdf.
    #   @return [Types::AvcIntraSettings]
    # @!attribute codec
    #   Specifies the video codec. This must be equal to one of the enum values defined by the object VideoCodec. To passthrough the video stream of your input without any video encoding: Choose Passthrough. More information about passthrough codec support and job settings requirements, see: https://docs.aws.amazon.com/mediaconvert/latest/ug/video-passthrough-feature-restrictions.html
    #   @return [String]
    # @!attribute frame_capture_settings
    #   Required when you set Codec to the value FRAME_CAPTURE.
    #   @return [Types::FrameCaptureSettings]
    # @!attribute gif_settings
    #   Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value GIF
    #   @return [Types::GifSettings]
    # @!attribute h264_settings
    #   Required when you set Codec to the value H_264.
    #   @return [Types::H264Settings]
    # @!attribute h265_settings
    #   Settings for H265 codec
    #   @return [Types::H265Settings]
    # @!attribute mpeg2_settings
    #   Required when you set Codec to the value MPEG2.
    #   @return [Types::Mpeg2Settings]
    # @!attribute prores_settings
    #   Required when you set Codec to the value PRORES.
    #   @return [Types::ProresSettings]
    # @!attribute uncompressed_settings
    #   Required when you set Codec, under VideoDescription>CodecSettings to the value UNCOMPRESSED.
    #   @return [Types::UncompressedSettings]
    # @!attribute vc3_settings
    #   Required when you set Codec to the value VC3
    #   @return [Types::Vc3Settings]
    # @!attribute vp8_settings
    #   Required when you set Codec to the value VP8.
    #   @return [Types::Vp8Settings]
    # @!attribute vp9_settings
    #   Required when you set Codec to the value VP9.
    #   @return [Types::Vp9Settings]
    # @!attribute xavc_settings
    #   Required when you set Codec to the value XAVC.
    #   @return [Types::XavcSettings]
    class VideoCodecSettings < Struct.new(
      :av1_settings,
      :avc_intra_settings,
      :codec,
      :frame_capture_settings,
      :gif_settings,
      :h264_settings,
      :h265_settings,
      :mpeg2_settings,
      :prores_settings,
      :uncompressed_settings,
      :vc3_settings,
      :vp8_settings,
      :vp9_settings,
      :xavc_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings related to video encoding of your output. The specific video settings depend on the video codec that you choose.
    # @!attribute afd_signaling
    #   This setting only applies to H.264, H.265, and MPEG2 outputs. Use Insert AFD signaling to specify whether the service includes AFD values in the output video data and what those values are. * Choose None to remove all AFD values from this output. * Choose Fixed to ignore input AFD values and instead encode the value specified in the job. * Choose Auto to calculate output AFD values based on the input AFD scaler data.
    #   @return [String]
    # @!attribute anti_alias
    #   The anti-alias filter is automatically applied to all outputs. The service no longer accepts the value DISABLED for AntiAlias. If you specify that in your job, the service will ignore the setting.
    #   @return [String]
    # @!attribute chroma_position_mode
    #   Specify the chroma sample positioning metadata for your H.264 or H.265 output. To have MediaConvert automatically determine chroma positioning: We recommend that you keep the default value, Auto. To specify center positioning: Choose Force center. To specify top left positioning: Choose Force top left.
    #   @return [String]
    # @!attribute codec_settings
    #   Video codec settings contains the group of settings related to video encoding. The settings in this group vary depending on the value that you choose for Video codec. For each codec enum that you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AV1, Av1Settings * AVC_INTRA, AvcIntraSettings * FRAME_CAPTURE, FrameCaptureSettings * GIF, GifSettings * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * UNCOMPRESSED, UncompressedSettings * VC3, Vc3Settings * VP8, Vp8Settings * VP9, Vp9Settings * XAVC, XavcSettings
    #   @return [Types::VideoCodecSettings]
    # @!attribute color_metadata
    #   Choose Insert for this setting to include color metadata in this output. Choose Ignore to exclude color metadata from this output. If you don't specify a value, the service sets this to Insert by default.
    #   @return [String]
    # @!attribute crop
    #   Use Cropping selection to specify the video area that the service will include in the output video frame.
    #   @return [Types::Rectangle]
    # @!attribute drop_frame_timecode
    #   Applies only to 29.97 fps outputs. When this feature is enabled, the service will use drop-frame timecode on outputs. If it is not possible to use drop-frame timecode, the system will fall back to non-drop-frame. This setting is enabled by default when Timecode insertion or Timecode track is enabled.
    #   @return [String]
    # @!attribute fixed_afd
    #   Applies only if you set AFD Signaling to Fixed. Use Fixed to specify a four-bit AFD value which the service will write on all frames of this video output.
    #   @return [Integer]
    # @!attribute height
    #   Use Height to define the video resolution height, in pixels, for this output. To use the same resolution as your input: Leave both Width and Height blank. To evenly scale from your input resolution: Leave Height blank and enter a value for Width. For example, if your input is 1920x1080 and you set Width to 1280, your output will be 1280x720.
    #   @return [Integer]
    # @!attribute position
    #   Use Selection placement to define the video area in your output frame. The area outside of the rectangle that you specify here is black.
    #   @return [Types::Rectangle]
    # @!attribute respond_to_afd
    #   Use Respond to AFD to specify how the service changes the video itself in response to AFD values in the input. * Choose Respond to clip the input video frame according to the AFD value, input display aspect ratio, and output display aspect ratio. * Choose Passthrough to include the input AFD values. Do not choose this when AfdSignaling is set to NONE. A preferred implementation of this workflow is to set RespondToAfd to and set AfdSignaling to AUTO. * Choose None to remove all input AFD values from this output.
    #   @return [String]
    # @!attribute scaling_behavior
    #   Specify the video Scaling behavior when your output has a different resolution than your input. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/video-scaling.html
    #   @return [String]
    # @!attribute sharpness
    #   Use Sharpness setting to specify the strength of anti-aliasing. This setting changes the width of the anti-alias filter kernel used for scaling. Sharpness only applies if your output resolution is different from your input resolution. 0 is the softest setting, 100 the sharpest, and 50 recommended for most content.
    #   @return [Integer]
    # @!attribute timecode_insertion
    #   Applies only to H.264, H.265, MPEG2, and ProRes outputs. Only enable Timecode insertion when the input frame rate is identical to the output frame rate. To include timecodes in this output, set Timecode insertion to PIC_TIMING_SEI. To leave them out, set it to DISABLED. Default is DISABLED. When the service inserts timecodes in an output, by default, it uses any embedded timecodes from the input. If none are present, the service will set the timecode for the first output frame to zero. To change this default behavior, adjust the settings under Timecode configuration. In the console, these settings are located under Job > Job settings > Timecode configuration. Note - Timecode source under input settings does not affect the timecodes that are inserted in the output. Source under Job settings > Timecode configuration does.
    #   @return [String]
    # @!attribute timecode_track
    #   To include a timecode track in your MP4 output: Choose Enabled. MediaConvert writes the timecode track in the Null Media Header box (NMHD), without any timecode text formatting information. You can also specify dropframe or non-dropframe timecode under the Drop Frame Timecode setting. To not include a timecode track: Keep the default value, Disabled.
    #   @return [String]
    # @!attribute video_preprocessors
    #   Find additional transcoding features under Preprocessors. Enable the features at each output individually. These features are disabled by default.
    #   @return [Types::VideoPreprocessor]
    # @!attribute width
    #   Use Width to define the video resolution width, in pixels, for this output. To use the same resolution as your input: Leave both Width and Height blank. To evenly scale from your input resolution: Leave Width blank and enter a value for Height. For example, if your input is 1920x1080 and you set Height to 720, your output will be 1280x720.
    #   @return [Integer]
    class VideoDescription < Struct.new(
      :afd_signaling,
      :anti_alias,
      :chroma_position_mode,
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
      :timecode_track,
      :video_preprocessors,
      :width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Contains details about the output's video stream
    # @!attribute height_in_px
    #   Height in pixels for the output
    #   @return [Integer]
    # @!attribute width_in_px
    #   Width in pixels for the output
    #   @return [Integer]
    class VideoDetail < Struct.new(
      :height_in_px,
      :width_in_px,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Overlay one or more videos on top of your input video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/video-overlays.html
    # @!attribute crop
    #   Specify a rectangle of content to crop and use from your video overlay's input video. When you do, MediaConvert uses the cropped dimensions that you specify under X offset, Y offset, Width, and Height.
    #   @return [Types::VideoOverlayCrop]
    # @!attribute end_timecode
    #   Enter the end timecode in the base input video for this overlay. Your overlay will be active through this frame. To display your video overlay for the duration of the base input video: Leave blank. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS isthe second, and FF is the frame number. When entering this value, take into account your choice for the base input video's timecode source. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your overlay to end ten minutes into the video, enter 01:10:00:00.
    #   @return [String]
    # @!attribute initial_position
    #   Specify the Initial position of your video overlay. To specify the Initial position of your video overlay, including distance from the left or top edge of the base input video's frame, or size: Enter a value for X position, Y position, Width, or Height. To use the full frame of the base input video: Leave blank.
    #   @return [Types::VideoOverlayPosition]
    # @!attribute input
    #   Input settings for Video overlay. You can include one or more video overlays in sequence at different times that you specify.
    #   @return [Types::VideoOverlayInput]
    # @!attribute playback
    #   Specify whether your video overlay repeats or plays only once. To repeat your video overlay on a loop: Keep the default value, Repeat. Your overlay will repeat for the duration of the base input video. To playback your video overlay only once: Choose Once. With either option, you can end playback at a time that you specify by entering a value for End timecode.
    #   @return [String]
    # @!attribute start_timecode
    #   Enter the start timecode in the base input video for this overlay. Your overlay will be active starting with this frame. To display your video overlay starting at the beginning of the base input video: Leave blank. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When entering this value, take into account your choice for the base input video's timecode source. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your overlay to begin five minutes into the video, enter 01:05:00:00.
    #   @return [String]
    # @!attribute transitions
    #   Specify one or more transitions for your video overlay. Use Transitions to reposition or resize your overlay over time. To use the same position and size for the duration of your video overlay: Leave blank. To specify a Transition: Enter a value for Start timecode, End Timecode, X Position, Y Position, Width, or Height.
    #   @return [Array<Types::VideoOverlayTransition>]
    class VideoOverlay < Struct.new(
      :crop,
      :end_timecode,
      :initial_position,
      :input,
      :playback,
      :start_timecode,
      :transitions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify a rectangle of content to crop and use from your video overlay's input video. When you do, MediaConvert uses the cropped dimensions that you specify under X offset, Y offset, Width, and Height.
    # @!attribute height
    #   Specify the height of the video overlay cropping rectangle. To use the same height as your overlay input video: Keep blank, or enter 0. To specify a different height for the cropping rectangle: Enter an integer representing the Unit type that you choose, either Pixels or Percentage. For example, when you enter 100 and choose Pixels, the cropping rectangle will be 100 pixels high. When you enter 10, choose Percentage, and your overlay input video is 1920x1080, the cropping rectangle will be 108 pixels high.
    #   @return [Integer]
    # @!attribute unit
    #   Specify the Unit type to use when you enter a value for X position, Y position, Width, or Height. You can choose Pixels or Percentage. Leave blank to use the default value, Pixels.
    #   @return [String]
    # @!attribute width
    #   Specify the width of the video overlay cropping rectangle. To use the same width as your overlay input video: Keep blank, or enter 0. To specify a different width for the cropping rectangle: Enter an integer representing the Unit type that you choose, either Pixels or Percentage. For example, when you enter 100 and choose Pixels, the cropping rectangle will be 100 pixels wide. When you enter 10, choose Percentage, and your overlay input video is 1920x1080, the cropping rectangle will be 192 pixels wide.
    #   @return [Integer]
    # @!attribute x
    #   Specify the distance between the cropping rectangle and the left edge of your overlay video's frame. To position the cropping rectangle along the left edge: Keep blank, or enter 0. To position the cropping rectangle to the right, relative to the left edge of your overlay video's frame: Enter an integer representing the Unit type that you choose, either Pixels or Percentage. For example, when you enter 10 and choose Pixels, the cropping rectangle will be positioned 10 pixels from the left edge of the overlay video's frame. When you enter 10, choose Percentage, and your overlay input video is 1920x1080, the cropping rectangle will be positioned 192 pixels from the left edge of the overlay video's frame.
    #   @return [Integer]
    # @!attribute y
    #   Specify the distance between the cropping rectangle and the top edge of your overlay video's frame. To position the cropping rectangle along the top edge: Keep blank, or enter 0. To position the cropping rectangle down, relative to the top edge of your overlay video's frame: Enter an integer representing the Unit type that you choose, either Pixels or Percentage. For example, when you enter 10 and choose Pixels, the cropping rectangle will be positioned 10 pixels from the top edge of the overlay video's frame. When you enter 10, choose Percentage, and your overlay input video is 1920x1080, the cropping rectangle will be positioned 108 pixels from the top edge of the overlay video's frame.
    #   @return [Integer]
    class VideoOverlayCrop < Struct.new(
      :height,
      :unit,
      :width,
      :x,
      :y,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Input settings for Video overlay. You can include one or more video overlays in sequence at different times that you specify.
    # @!attribute file_input
    #   Specify the input file S3, HTTP, or HTTPS URL for your video overlay.
    #   To specify one or more Transitions for your base input video instead: Leave blank.
    #   @return [String]
    # @!attribute input_clippings
    #   Specify one or more clips to use from your video overlay. When you include an input clip, you must also specify its start timecode, end timecode, or both start and end timecode.
    #   @return [Array<Types::VideoOverlayInputClipping>]
    # @!attribute timecode_source
    #   Specify the timecode source for your video overlay input clips. To use the timecode present in your video overlay: Choose Embedded. To use a zerobased timecode: Choose Start at 0. To choose a timecode: Choose Specified start. When you do, enter the starting timecode in Start timecode. If you don't specify a value for Timecode source, MediaConvert uses Embedded by default.
    #   @return [String]
    # @!attribute timecode_start
    #   Specify the starting timecode for this video overlay. To use this setting, you must set Timecode source to Specified start.
    #   @return [String]
    class VideoOverlayInput < Struct.new(
      :file_input,
      :input_clippings,
      :timecode_source,
      :timecode_start,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # To transcode only portions of your video overlay, include one input clip for each part of your video overlay that you want in your output.
    # @!attribute end_timecode
    #   Specify the timecode of the last frame to include in your video overlay's clip. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When entering this value, take into account your choice for Timecode source.
    #   @return [String]
    # @!attribute start_timecode
    #   Specify the timecode of the first frame to include in your video overlay's clip. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When entering this value, take into account your choice for Timecode source.
    #   @return [String]
    class VideoOverlayInputClipping < Struct.new(
      :end_timecode,
      :start_timecode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify whether your video overlay repeats or plays only once. To repeat your video overlay on a loop: Keep the default value, Repeat. Your overlay will repeat for the duration of the base input video. To playback your video overlay only once: Choose Once. With either option, you can end playback at a time that you specify by entering a value for End timecode.
    module VideoOverlayPlayBackMode
      ONCE = 'ONCE'
      REPEAT = 'REPEAT'
    end

    # position of video overlay
    # @!attribute height
    #   To scale your video overlay to the same height as the base input video: Leave blank. To scale the height of your video overlay to a different height: Enter an integer representing the Unit type that you choose, either Pixels or Percentage. For example, when you enter 360 and choose Pixels, your video overlay will be rendered with a height of 360. When you enter 50, choose Percentage, and your overlay's source has a height of 1080, your video overlay will be rendered with a height of 540. To scale your overlay to a specific height while automatically maintaining its original aspect ratio, enter a value for Height and leave Width blank.
    #   @return [Integer]
    # @!attribute unit
    #   Specify the Unit type to use when you enter a value for X position, Y position, Width, or Height. You can choose Pixels or Percentage. Leave blank to use the default value, Pixels.
    #   @return [String]
    # @!attribute width
    #   To scale your video overlay to the same width as the base input video: Leave blank. To scale the width of your video overlay to a different width: Enter an integer representing the Unit type that you choose, either Pixels or Percentage. For example, when you enter 640 and choose Pixels, your video overlay will scale to a height of 640 pixels. When you enter 50, choose Percentage, and your overlay's source has a width of 1920, your video overlay will scale to a width of 960. To scale your overlay to a specific width while automatically maintaining its original aspect ratio, enter a value for Width and leave Height blank.
    #   @return [Integer]
    # @!attribute x_position
    #   To position the left edge of your video overlay along the left edge of the base input video's frame: Keep blank, or enter 0. To position the left edge of your video overlay to the right, relative to the left edge of the base input video's frame: Enter an integer representing the Unit type that you choose, either Pixels or Percentage. For example, when you enter 10 and choose Pixels, your video overlay will be positioned 10 pixels from the left edge of the base input video's frame. When you enter 10, choose Percentage, and your base input video is 1920x1080, your video overlay will be positioned 192 pixels from the left edge of the base input video's frame.
    #   @return [Integer]
    # @!attribute y_position
    #   To position the top edge of your video overlay along the top edge of the base input video's frame: Keep blank, or enter 0. To position the top edge of your video overlay down, relative to the top edge of the base input video's frame: Enter an integer representing the Unit type that you choose, either Pixels or Percentage. For example, when you enter 10 and choose Pixels, your video overlay will be positioned 10 pixels from the top edge of the base input video's frame. When you enter 10, choose Percentage, and your underlying video is 1920x1080, your video overlay will be positioned 108 pixels from the top edge of the base input video's frame.
    #   @return [Integer]
    class VideoOverlayPosition < Struct.new(
      :height,
      :unit,
      :width,
      :x_position,
      :y_position,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify one or more Transitions for your video overlay. Use Transitions to reposition or resize your overlay over time. To use the same position and size for the duration of your video overlay: Leave blank. To specify a Transition: Enter a value for Start timecode, End Timecode, X Position, Y Position, Width, or Height.
    # @!attribute end_position
    #   Specify the ending position for this transition, relative to the base input video's frame. Your video overlay will move smoothly to this position, beginning at this transition's Start timecode and ending at this transition's End timecode.
    #   @return [Types::VideoOverlayPosition]
    # @!attribute end_timecode
    #   Specify the timecode for when this transition ends. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When entering this value, take into account your choice for Timecode source.
    #   @return [String]
    # @!attribute start_timecode
    #   Specify the timecode for when this transition begins. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When entering this value, take into account your choice for Timecode source.
    #   @return [String]
    class VideoOverlayTransition < Struct.new(
      :end_position,
      :end_timecode,
      :start_timecode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the Unit type to use when you enter a value for X position, Y position, Width, or Height. You can choose Pixels or Percentage. Leave blank to use the default value, Pixels.
    module VideoOverlayUnit
      PIXELS = 'PIXELS'
      PERCENTAGE = 'PERCENTAGE'
    end

    # Find additional transcoding features under Preprocessors. Enable the features at each output individually. These features are disabled by default.
    # @!attribute color_corrector
    #   Use these settings to convert the color space or to modify properties such as hue and contrast for this output. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/converting-the-color-space.html.
    #   @return [Types::ColorCorrector]
    # @!attribute deinterlacer
    #   Use the deinterlacer to produce smoother motion and a clearer picture. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-scan-type.html.
    #   @return [Types::Deinterlacer]
    # @!attribute dolby_vision
    #   Enable Dolby Vision feature to produce Dolby Vision compatible video output.
    #   @return [Types::DolbyVision]
    # @!attribute hdr10_plus
    #   Enable HDR10+ analysis and metadata injection. Compatible with HEVC only.
    #   @return [Types::Hdr10Plus]
    # @!attribute image_inserter
    #   Enable the Image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each output individually. This setting is disabled by default.
    #   @return [Types::ImageInserter]
    # @!attribute noise_reducer
    #   Enable the Noise reducer feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default. When you enable Noise reducer, you must also select a value for Noise reducer filter. For AVC outputs, when you include Noise reducer, you cannot include the Bandwidth reduction filter.
    #   @return [Types::NoiseReducer]
    # @!attribute partner_watermarking
    #   If you work with a third party video watermarking partner, use the group of settings that correspond with your watermarking partner to include watermarks in your output.
    #   @return [Types::PartnerWatermarking]
    # @!attribute timecode_burnin
    #   Settings for burning the output timecode and specified prefix into the output.
    #   @return [Types::TimecodeBurnin]
    class VideoPreprocessor < Struct.new(
      :color_corrector,
      :deinterlacer,
      :dolby_vision,
      :hdr10_plus,
      :image_inserter,
      :noise_reducer,
      :partner_watermarking,
      :timecode_burnin,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Details about the media file's video track.
    # @!attribute bit_depth
    #   The bit depth of the video track.
    #   @return [Integer]
    # @!attribute bit_rate
    #   The bit rate of the video track, in bits per second.
    #   @return [Integer]
    # @!attribute color_primaries
    #   The color space color primaries of the video track.
    #   @return [String]
    # @!attribute frame_rate
    #   The frame rate of the video or audio track.
    #   @return [Types::FrameRate]
    # @!attribute height
    #   The height of the video track, in pixels.
    #   @return [Integer]
    # @!attribute matrix_coefficients
    #   The color space matrix coefficients of the video track.
    #   @return [String]
    # @!attribute transfer_characteristics
    #   The color space transfer characteristics of the video track.
    #   @return [String]
    # @!attribute width
    #   The width of the video track, in pixels.
    #   @return [Integer]
    class VideoProperties < Struct.new(
      :bit_depth,
      :bit_rate,
      :color_primaries,
      :frame_rate,
      :height,
      :matrix_coefficients,
      :transfer_characteristics,
      :width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Input video selectors contain the video settings for the input. Each of your inputs can have up to one video selector.
    # @!attribute alpha_behavior
    #   Ignore this setting unless this input is a QuickTime animation with an alpha channel. Use this setting to create separate Key and Fill outputs. In each output, specify which part of the input MediaConvert uses. Leave this setting at the default value DISCARD to delete the alpha channel and preserve the video. Set it to REMAP_TO_LUMA to delete the video and map the alpha channel to the luma channel of your outputs.
    #   @return [String]
    # @!attribute color_space
    #   If your input video has accurate color space metadata, or if you don't know about color space: Keep the default value, Follow. MediaConvert will automatically detect your input color space. If your input video has metadata indicating the wrong color space, or has missing metadata: Specify the accurate color space here. If your input video is HDR 10 and the SMPTE ST 2086 Mastering Display Color Volume static metadata isn't present in your video stream, or if that metadata is present but not accurate: Choose Force HDR 10. Specify correct values in the input HDR 10 metadata settings. For more information about HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr. When you specify an input color space, MediaConvert uses the following color space metadata, which includes color primaries, transfer characteristics, and matrix coefficients:
    #    * HDR 10: BT.2020, PQ, BT.2020 non-constant
    #    * HLG 2020: BT.2020, HLG, BT.2020 non-constant
    #    * P3DCI (Theater): DCIP3, SMPTE 428M, BT.709
    #    * P3D65 (SDR): Display P3, sRGB, BT.709
    #    * P3D65 (HDR): Display P3, PQ, BT.709
    #   @return [String]
    # @!attribute color_space_usage
    #   There are two sources for color metadata, the input file and the job input settings Color space and HDR master display information settings. The Color space usage setting determines which takes precedence. Choose Force to use color metadata from the input job settings. If you don't specify values for those settings, the service defaults to using metadata from your input. FALLBACK - Choose Fallback to use color metadata from the source when it is present. If there's no color metadata in your input file, the service defaults to using values you specify in the input settings.
    #   @return [String]
    # @!attribute embedded_timecode_override
    #   Set Embedded timecode override to Use MDPM when your AVCHD input contains timecode tag data in the Modified Digital Video Pack Metadata. When you do, we recommend you also set Timecode source to Embedded. Leave Embedded timecode override blank, or set to None, when your input does not contain MDPM timecode.
    #   @return [String]
    # @!attribute hdr10_metadata
    #   Use these settings to provide HDR 10 metadata that is missing or inaccurate in your input video. Appropriate values vary depending on the input video and must be provided by a color grader. The color grader generates these values during the HDR 10 mastering process. The valid range for each of these settings is 0 to 50,000. Each increment represents 0.00002 in CIE1931 color coordinate. Related settings - When you specify these values, you must also set Color space to HDR 10. To specify whether the the values you specify here take precedence over the values in the metadata of your input file, set Color space usage. To specify whether color metadata is included in an output, set Color metadata. For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr.
    #   @return [Types::Hdr10Metadata]
    # @!attribute max_luminance
    #   Specify the maximum mastering display luminance. Enter an integer from 0 to 2147483647, in units of 0.0001 nits. For example, enter 10000000 for 1000 nits.
    #   @return [Integer]
    # @!attribute pad_video
    #   Use this setting if your input has video and audio durations that don't align, and your output or player has strict alignment requirements. Examples: Input audio track has a delayed start. Input video track ends before audio ends. When you set Pad video to Black, MediaConvert generates black video frames so that output video and audio durations match. Black video frames are added at the beginning or end, depending on your input. To keep the default behavior and not generate black video, set Pad video to Disabled or leave blank.
    #   @return [String]
    # @!attribute pid
    #   Use PID to select specific video data from an input file. Specify this value as an integer; the system automatically converts it to the hexidecimal value. For example, 257 selects PID 0x101. A PID, or packet identifier, is an identifier for a set of data in an MPEG-2 transport stream container.
    #   @return [Integer]
    # @!attribute program_number
    #   Selects a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported.
    #   @return [Integer]
    # @!attribute rotate
    #   Use Rotate to specify how the service rotates your video. You can choose automatic rotation or specify a rotation. You can specify a clockwise rotation of 0, 90, 180, or 270 degrees. If your input video container is .mov or .mp4 and your input has rotation metadata, you can choose Automatic to have the service rotate your video according to the rotation specified in the metadata. The rotation must be within one degree of 90, 180, or 270 degrees. If the rotation metadata specifies any other rotation, the service will default to no rotation. By default, the service does no rotation, even if your input video has rotation metadata. The service doesn't pass through rotation metadata.
    #   @return [String]
    # @!attribute sample_range
    #   If the sample range metadata in your input video is accurate, or if you don't know about sample range, keep the default value, Follow, for this setting. When you do, the service automatically detects your input sample range. If your input video has metadata indicating the wrong sample range, specify the accurate sample range here. When you do, MediaConvert ignores any sample range information in the input metadata. Regardless of whether MediaConvert uses the input sample range or the sample range that you specify, MediaConvert uses the sample range for transcoding and also writes it to the output metadata.
    #   @return [String]
    class VideoSelector < Struct.new(
      :alpha_behavior,
      :color_space,
      :color_space_usage,
      :embedded_timecode_override,
      :hdr10_metadata,
      :max_luminance,
      :pad_video,
      :pid,
      :program_number,
      :rotate,
      :sample_range,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Applies only to H.264, H.265, MPEG2, and ProRes outputs. Only enable Timecode insertion when the input frame rate is identical to the output frame rate. To include timecodes in this output, set Timecode insertion to PIC_TIMING_SEI. To leave them out, set it to DISABLED. Default is DISABLED. When the service inserts timecodes in an output, by default, it uses any embedded timecodes from the input. If none are present, the service will set the timecode for the first output frame to zero. To change this default behavior, adjust the settings under Timecode configuration. In the console, these settings are located under Job > Job settings > Timecode configuration. Note - Timecode source under input settings does not affect the timecodes that are inserted in the output. Source under Job settings > Timecode configuration does.
    module VideoTimecodeInsertion
      DISABLED = 'DISABLED'
      PIC_TIMING_SEI = 'PIC_TIMING_SEI'
    end

    # Required when you set Codec, under AudioDescriptions>CodecSettings, to the value Vorbis.
    # @!attribute channels
    #   Optional. Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2. The default value is 2.
    #   @return [Integer]
    # @!attribute sample_rate
    #   Optional. Specify the audio sample rate in Hz. Valid values are 22050, 32000, 44100, and 48000. The default value is 48000.
    #   @return [Integer]
    # @!attribute vbr_quality
    #   Optional. Specify the variable audio quality of this Vorbis output from -1 (lowest quality, ~45 kbit/s) to 10 (highest quality, ~500 kbit/s). The default value is 4 (~128 kbit/s). Values 5 and 6 are approximately 160 and 192 kbit/s, respectively.
    #   @return [Integer]
    class VorbisSettings < Struct.new(
      :channels,
      :sample_rate,
      :vbr_quality,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    module Vp8FramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    module Vp8FramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
      FRAMEFORMER = 'FRAMEFORMER'
      MAINTAIN_FRAME_COUNT = 'MAINTAIN_FRAME_COUNT'
    end

    # Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source, uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    module Vp8ParControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.
    module Vp8QualityTuningLevel
      MULTI_PASS = 'MULTI_PASS'
      MULTI_PASS_HQ = 'MULTI_PASS_HQ'
    end

    # With the VP8 codec, you can use only the variable bitrate (VBR) rate control mode.
    module Vp8RateControlMode
      VBR = 'VBR'
    end

    # Required when you set Codec to the value VP8.
    # @!attribute bitrate
    #   Target bitrate in bits/second. For example, enter five megabits per second as 5000000.
    #   @return [Integer]
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute gop_size
    #   GOP Length (keyframe interval) in frames. Must be greater than zero.
    #   @return [Float]
    # @!attribute hrd_buffer_size
    #   Optional. Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
    #   @return [Integer]
    # @!attribute max_bitrate
    #   Ignore this setting unless you set qualityTuningLevel to MULTI_PASS. Optional. Specify the maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. The default behavior uses twice the target bitrate as the maximum bitrate.
    #   @return [Integer]
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source, uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    #   @return [String]
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #   @return [Integer]
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #   @return [Integer]
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.
    #   @return [String]
    # @!attribute rate_control_mode
    #   With the VP8 codec, you can use only the variable bitrate (VBR) rate control mode.
    #   @return [String]
    class Vp8Settings < Struct.new(
      :bitrate,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_size,
      :hrd_buffer_size,
      :max_bitrate,
      :par_control,
      :par_denominator,
      :par_numerator,
      :quality_tuning_level,
      :rate_control_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    module Vp9FramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    module Vp9FramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
      FRAMEFORMER = 'FRAMEFORMER'
      MAINTAIN_FRAME_COUNT = 'MAINTAIN_FRAME_COUNT'
    end

    # Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source, uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
    module Vp9ParControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.
    module Vp9QualityTuningLevel
      MULTI_PASS = 'MULTI_PASS'
      MULTI_PASS_HQ = 'MULTI_PASS_HQ'
    end

    # With the VP9 codec, you can use only the variable bitrate (VBR) rate control mode.
    module Vp9RateControlMode
      VBR = 'VBR'
    end

    # Required when you set Codec to the value VP9.
    # @!attribute bitrate
    #   Target bitrate in bits/second. For example, enter five megabits per second as 5000000.
    #   @return [Integer]
    # @!attribute framerate_control
    #   If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute gop_size
    #   GOP Length (keyframe interval) in frames. Must be greater than zero.
    #   @return [Float]
    # @!attribute hrd_buffer_size
    #   Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
    #   @return [Integer]
    # @!attribute max_bitrate
    #   Ignore this setting unless you set qualityTuningLevel to MULTI_PASS. Optional. Specify the maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. The default behavior uses twice the target bitrate as the maximum bitrate.
    #   @return [Integer]
    # @!attribute par_control
    #   Optional. Specify how the service determines the pixel aspect ratio for this output. The default behavior is to use the same pixel aspect ratio as your input video.
    #   @return [String]
    # @!attribute par_denominator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
    #   @return [Integer]
    # @!attribute par_numerator
    #   Required when you set Pixel aspect ratio to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
    #   @return [Integer]
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.
    #   @return [String]
    # @!attribute rate_control_mode
    #   With the VP9 codec, you can use only the variable bitrate (VBR) rate control mode.
    #   @return [String]
    class Vp9Settings < Struct.new(
      :bitrate,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :gop_size,
      :hrd_buffer_size,
      :max_bitrate,
      :par_control,
      :par_denominator,
      :par_numerator,
      :quality_tuning_level,
      :rate_control_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Contains any warning codes and their count for the job.
    # @!attribute code
    #   Warning code that identifies a specific warning in the job. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/warning_codes.html
    #   @return [Integer]
    # @!attribute count
    #   The number of times this warning occurred in the job.
    #   @return [Integer]
    class WarningGroup < Struct.new(
      :code,
      :count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Optional. Ignore this setting unless Nagra support directs you to specify a value. When you don't specify a value here, the Nagra NexGuard library uses its default value.
    module WatermarkingStrength
      LIGHTEST = 'LIGHTEST'
      LIGHTER = 'LIGHTER'
      DEFAULT = 'DEFAULT'
      STRONGER = 'STRONGER'
      STRONGEST = 'STRONGEST'
    end

    # Specify the file format for your wave audio output. To use a RIFF wave format: Keep the default value, RIFF. If your output audio is likely to exceed 4GB in file size, or if you otherwise need the extended support of the RF64 format: Choose RF64. If your player only supports the extensible wave format: Choose Extensible.
    module WavFormat
      RIFF = 'RIFF'
      RF64 = 'RF64'
      EXTENSIBLE = 'EXTENSIBLE'
    end

    # Required when you set Codec to the value WAV.
    # @!attribute bit_depth
    #   Specify Bit depth, in bits per sample, to choose the encoding quality for this audio track.
    #   @return [Integer]
    # @!attribute channels
    #   Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64.
    #   @return [Integer]
    # @!attribute format
    #   Specify the file format for your wave audio output. To use a RIFF wave format: Keep the default value, RIFF. If your output audio is likely to exceed 4GB in file size, or if you otherwise need the extended support of the RF64 format: Choose RF64. If your player only supports the extensible wave format: Choose Extensible.
    #   @return [String]
    # @!attribute sample_rate
    #   Sample rate in Hz.
    #   @return [Integer]
    class WavSettings < Struct.new(
      :bit_depth,
      :channels,
      :format,
      :sample_rate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # If the WebVTT captions track is intended to provide accessibility for people who are deaf or hard of hearing: Set Accessibility subtitles to Enabled. When you do, MediaConvert adds accessibility attributes to your output HLS or DASH manifest. For HLS manifests, MediaConvert adds the following accessibility attributes under EXT-X-MEDIA for this track: CHARACTERISTICS="public.accessibility.describes-spoken-dialog,public.accessibility.describes-music-and-sound" and AUTOSELECT="YES". For DASH manifests, MediaConvert adds the following in the adaptation set for this track: <Accessibility schemeIdUri="urn:mpeg:dash:role:2011" value="caption"/>. If the captions track is not intended to provide such accessibility: Keep the default value, Disabled. When you do, for DASH manifests, MediaConvert instead adds the following in the adaptation set for this track: <Role schemeIDUri="urn:mpeg:dash:role:2011" value="subtitle"/>.
    module WebvttAccessibilitySubs
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Settings related to WebVTT captions. WebVTT is a sidecar format that holds captions in a file that is separate from the video container. Set up sidecar captions in the same output group, but different output from your video. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html.
    # @!attribute accessibility
    #   If the WebVTT captions track is intended to provide accessibility for people who are deaf or hard of hearing: Set Accessibility subtitles to Enabled. When you do, MediaConvert adds accessibility attributes to your output HLS or DASH manifest. For HLS manifests, MediaConvert adds the following accessibility attributes under EXT-X-MEDIA for this track: CHARACTERISTICS="public.accessibility.describes-spoken-dialog,public.accessibility.describes-music-and-sound" and AUTOSELECT="YES". For DASH manifests, MediaConvert adds the following in the adaptation set for this track: <Accessibility schemeIdUri="urn:mpeg:dash:role:2011" value="caption"/>. If the captions track is not intended to provide such accessibility: Keep the default value, Disabled. When you do, for DASH manifests, MediaConvert instead adds the following in the adaptation set for this track: <Role schemeIDUri="urn:mpeg:dash:role:2011" value="subtitle"/>.
    #   @return [String]
    # @!attribute style_passthrough
    #   Specify how MediaConvert writes style information in your output WebVTT captions. To use the available style, color, and position information from your input captions: Choose Enabled. MediaConvert uses default settings when style and position information is missing from your input captions. To recreate the input captions exactly: Choose Strict. MediaConvert automatically applies timing adjustments, including adjustments for frame rate conversion, ad avails, and input clipping. Your input captions format must be WebVTT. To ignore the style and position information from your input captions and use simplified output captions: Keep the default value, Disabled. Or leave blank. To use the available style, color, and position information from your input captions, while merging cues with identical time ranges: Choose merge. This setting can help prevent positioning overlaps for certain players that expect a single single cue for any given time range.
    #   @return [String]
    class WebvttDestinationSettings < Struct.new(
      :accessibility,
      :style_passthrough,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Settings specific to WebVTT sources in HLS alternative rendition group. Specify the properties (renditionGroupId, renditionName or renditionLanguageCode) to identify the unique subtitle track among the alternative rendition groups present in the HLS manifest. If no unique track is found, or multiple tracks match the specified properties, the job fails. If there is only one subtitle track in the rendition group, the settings can be left empty and the default subtitle track will be chosen. If your caption source is a sidecar file, use FileSourceSettings instead of WebvttHlsSourceSettings.
    # @!attribute rendition_group_id
    #   Optional. Specify alternative group ID
    #   @return [String]
    # @!attribute rendition_language_code
    #   Optional. Specify ISO 639-2 or ISO 639-3 code in the language property
    #   @return [String]
    # @!attribute rendition_name
    #   Optional. Specify media name
    #   @return [String]
    class WebvttHlsSourceSettings < Struct.new(
      :rendition_group_id,
      :rendition_language_code,
      :rendition_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify how MediaConvert writes style information in your output WebVTT captions. To use the available style, color, and position information from your input captions: Choose Enabled. MediaConvert uses default settings when style and position information is missing from your input captions. To recreate the input captions exactly: Choose Strict. MediaConvert automatically applies timing adjustments, including adjustments for frame rate conversion, ad avails, and input clipping. Your input captions format must be WebVTT. To ignore the style and position information from your input captions and use simplified output captions: Keep the default value, Disabled. Or leave blank. To use the available style, color, and position information from your input captions, while merging cues with identical time ranges: Choose merge. This setting can help prevent positioning overlaps for certain players that expect a single single cue for any given time range.
    module WebvttStylePassthrough
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
      STRICT = 'STRICT'
      MERGE = 'MERGE'
    end

    # Specify the XAVC Intra 4k (CBG) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    module Xavc4kIntraCbgProfileClass
      CLASS_100 = 'CLASS_100'
      CLASS_300 = 'CLASS_300'
      CLASS_480 = 'CLASS_480'
    end

    # Required when you set Profile to the value XAVC_4K_INTRA_CBG.
    # @!attribute xavc_class
    #   Specify the XAVC Intra 4k (CBG) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    #   @return [String]
    class Xavc4kIntraCbgProfileSettings < Struct.new(
      :xavc_class,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the XAVC Intra 4k (VBR) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    module Xavc4kIntraVbrProfileClass
      CLASS_100 = 'CLASS_100'
      CLASS_300 = 'CLASS_300'
      CLASS_480 = 'CLASS_480'
    end

    # Required when you set Profile to the value XAVC_4K_INTRA_VBR.
    # @!attribute xavc_class
    #   Specify the XAVC Intra 4k (VBR) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    #   @return [String]
    class Xavc4kIntraVbrProfileSettings < Struct.new(
      :xavc_class,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the XAVC 4k (Long GOP) Bitrate Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    module Xavc4kProfileBitrateClass
      BITRATE_CLASS_100 = 'BITRATE_CLASS_100'
      BITRATE_CLASS_140 = 'BITRATE_CLASS_140'
      BITRATE_CLASS_200 = 'BITRATE_CLASS_200'
    end

    # Specify the codec profile for this output. Choose High, 8-bit, 4:2:0 (HIGH) or High, 10-bit, 4:2:2 (HIGH_422). These profiles are specified in ITU-T H.264.
    module Xavc4kProfileCodecProfile
      HIGH = 'HIGH'
      HIGH_422 = 'HIGH_422'
    end

    # Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    module Xavc4kProfileQualityTuningLevel
      SINGLE_PASS = 'SINGLE_PASS'
      SINGLE_PASS_HQ = 'SINGLE_PASS_HQ'
      MULTI_PASS_HQ = 'MULTI_PASS_HQ'
    end

    # Required when you set Profile to the value XAVC_4K.
    # @!attribute bitrate_class
    #   Specify the XAVC 4k (Long GOP) Bitrate Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    #   @return [String]
    # @!attribute codec_profile
    #   Specify the codec profile for this output. Choose High, 8-bit, 4:2:0 (HIGH) or High, 10-bit, 4:2:2 (HIGH_422). These profiles are specified in ITU-T H.264.
    #   @return [String]
    # @!attribute flicker_adaptive_quantization
    #   The best way to set up adaptive quantization is to keep the default value, Auto, for the setting Adaptive quantization. When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set Adaptive quantization to a value other than Off or Auto. Use Adaptive quantization to adjust the degree of smoothing that Flicker adaptive quantization provides.
    #   @return [String]
    # @!attribute gop_b_reference
    #   Specify whether the encoder uses B-frames as reference frames for other pictures in the same GOP. Choose Allow to allow the encoder to use B-frames as reference frames. Choose Don't allow to prevent the encoder from using B-frames as reference frames.
    #   @return [String]
    # @!attribute gop_closed_cadence
    #   Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
    #   @return [Integer]
    # @!attribute hrd_buffer_size
    #   Specify the size of the buffer that MediaConvert uses in the HRD buffer model for this output. Specify this value in bits; for example, enter five megabits as 5000000. When you don't set this value, or you set it to zero, MediaConvert calculates the default by doubling the bitrate of this output point.
    #   @return [Integer]
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    #   @return [String]
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #   @return [Integer]
    class Xavc4kProfileSettings < Struct.new(
      :bitrate_class,
      :codec_profile,
      :flicker_adaptive_quantization,
      :gop_b_reference,
      :gop_closed_cadence,
      :hrd_buffer_size,
      :quality_tuning_level,
      :slices,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Keep the default value, Auto, for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set Adaptive quantization to a value other than Auto. Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization to Off. Related settings: The value that you choose here applies to the following settings: Flicker adaptive quantization (flickerAdaptiveQuantization), Spatial adaptive quantization, and Temporal adaptive quantization.
    module XavcAdaptiveQuantization
      OFF = 'OFF'
      AUTO = 'AUTO'
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
      HIGHER = 'HIGHER'
      MAX = 'MAX'
    end

    # Optional. Choose a specific entropy encoding mode only when you want to override XAVC recommendations. If you choose the value auto, MediaConvert uses the mode that the XAVC file format specifies given this output's operating point.
    module XavcEntropyEncoding
      AUTO = 'AUTO'
      CABAC = 'CABAC'
      CAVLC = 'CAVLC'
    end

    # The best way to set up adaptive quantization is to keep the default value, Auto, for the setting Adaptive quantization. When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set Adaptive quantization to a value other than Off or Auto. Use Adaptive quantization to adjust the degree of smoothing that Flicker adaptive quantization provides.
    module XavcFlickerAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # If you are using the console, use the Frame rate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list. The framerates shown in the dropdown list are decimal approximations of fractions.
    module XavcFramerateControl
      INITIALIZE_FROM_SOURCE = 'INITIALIZE_FROM_SOURCE'
      SPECIFIED = 'SPECIFIED'
    end

    # Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    module XavcFramerateConversionAlgorithm
      DUPLICATE_DROP = 'DUPLICATE_DROP'
      INTERPOLATE = 'INTERPOLATE'
      FRAMEFORMER = 'FRAMEFORMER'
      MAINTAIN_FRAME_COUNT = 'MAINTAIN_FRAME_COUNT'
    end

    # Specify whether the encoder uses B-frames as reference frames for other pictures in the same GOP. Choose Allow to allow the encoder to use B-frames as reference frames. Choose Don't allow to prevent the encoder from using B-frames as reference frames.
    module XavcGopBReference
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # Specify the XAVC Intra HD (CBG) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    module XavcHdIntraCbgProfileClass
      CLASS_50 = 'CLASS_50'
      CLASS_100 = 'CLASS_100'
      CLASS_200 = 'CLASS_200'
    end

    # Required when you set Profile to the value XAVC_HD_INTRA_CBG.
    # @!attribute xavc_class
    #   Specify the XAVC Intra HD (CBG) Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    #   @return [String]
    class XavcHdIntraCbgProfileSettings < Struct.new(
      :xavc_class,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Specify the XAVC HD (Long GOP) Bitrate Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    module XavcHdProfileBitrateClass
      BITRATE_CLASS_25 = 'BITRATE_CLASS_25'
      BITRATE_CLASS_35 = 'BITRATE_CLASS_35'
      BITRATE_CLASS_50 = 'BITRATE_CLASS_50'
    end

    # Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    module XavcHdProfileQualityTuningLevel
      SINGLE_PASS = 'SINGLE_PASS'
      SINGLE_PASS_HQ = 'SINGLE_PASS_HQ'
      MULTI_PASS_HQ = 'MULTI_PASS_HQ'
    end

    # Required when you set Profile to the value XAVC_HD.
    # @!attribute bitrate_class
    #   Specify the XAVC HD (Long GOP) Bitrate Class to set the bitrate of your output. Outputs of the same class have similar image quality over the operating points that are valid for that class.
    #   @return [String]
    # @!attribute flicker_adaptive_quantization
    #   The best way to set up adaptive quantization is to keep the default value, Auto, for the setting Adaptive quantization. When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set Adaptive quantization to a value other than Off or Auto. Use Adaptive quantization to adjust the degree of smoothing that Flicker adaptive quantization provides.
    #   @return [String]
    # @!attribute gop_b_reference
    #   Specify whether the encoder uses B-frames as reference frames for other pictures in the same GOP. Choose Allow to allow the encoder to use B-frames as reference frames. Choose Don't allow to prevent the encoder from using B-frames as reference frames.
    #   @return [String]
    # @!attribute gop_closed_cadence
    #   Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
    #   @return [Integer]
    # @!attribute hrd_buffer_size
    #   Specify the size of the buffer that MediaConvert uses in the HRD buffer model for this output. Specify this value in bits; for example, enter five megabits as 5000000. When you don't set this value, or you set it to zero, MediaConvert calculates the default by doubling the bitrate of this output point.
    #   @return [Integer]
    # @!attribute interlace_mode
    #   Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    #   @return [String]
    # @!attribute quality_tuning_level
    #   Optional. Use Quality tuning level to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
    #   @return [String]
    # @!attribute slices
    #   Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    #   @return [Integer]
    # @!attribute telecine
    #   Ignore this setting unless you set Frame rate (framerateNumerator divided by framerateDenominator) to 29.970. If your input framerate is 23.976, choose Hard. Otherwise, keep the default value None. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-telecine-and-inverse-telecine.html.
    #   @return [String]
    class XavcHdProfileSettings < Struct.new(
      :bitrate_class,
      :flicker_adaptive_quantization,
      :gop_b_reference,
      :gop_closed_cadence,
      :hrd_buffer_size,
      :interlace_mode,
      :quality_tuning_level,
      :slices,
      :telecine,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ignore this setting unless you set Frame rate (framerateNumerator divided by framerateDenominator) to 29.970. If your input framerate is 23.976, choose Hard. Otherwise, keep the default value None. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-telecine-and-inverse-telecine.html.
    module XavcHdProfileTelecine
      NONE = 'NONE'
      HARD = 'HARD'
    end

    # Choose the scan line type for the output. Keep the default value, Progressive to create a progressive output, regardless of the scan type of your input. Use Top field first or Bottom field first to create an output that's interlaced with the same field polarity throughout. Use Follow, default top or Follow, default bottom to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
    module XavcInterlaceMode
      PROGRESSIVE = 'PROGRESSIVE'
      TOP_FIELD = 'TOP_FIELD'
      BOTTOM_FIELD = 'BOTTOM_FIELD'
      FOLLOW_TOP_FIELD = 'FOLLOW_TOP_FIELD'
      FOLLOW_BOTTOM_FIELD = 'FOLLOW_BOTTOM_FIELD'
    end

    # Specify the XAVC profile for this output. For more information, see the Sony documentation at https://www.xavc-info.org/. Note that MediaConvert doesn't support the interlaced video XAVC operating points for XAVC_HD_INTRA_CBG. To create an interlaced XAVC output, choose the profile XAVC_HD.
    module XavcProfile
      XAVC_HD_INTRA_CBG = 'XAVC_HD_INTRA_CBG'
      XAVC_4K_INTRA_CBG = 'XAVC_4K_INTRA_CBG'
      XAVC_4K_INTRA_VBR = 'XAVC_4K_INTRA_VBR'
      XAVC_HD = 'XAVC_HD'
      XAVC_4K = 'XAVC_4K'
    end

    # Required when you set Codec to the value XAVC.
    # @!attribute adaptive_quantization
    #   Keep the default value, Auto, for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set Adaptive quantization to a value other than Auto. Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization to Off. Related settings: The value that you choose here applies to the following settings: Flicker adaptive quantization (flickerAdaptiveQuantization), Spatial adaptive quantization, and Temporal adaptive quantization.
    #   @return [String]
    # @!attribute entropy_encoding
    #   Optional. Choose a specific entropy encoding mode only when you want to override XAVC recommendations. If you choose the value auto, MediaConvert uses the mode that the XAVC file format specifies given this output's operating point.
    #   @return [String]
    # @!attribute framerate_control
    #   If you are using the console, use the Frame rate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list. The framerates shown in the dropdown list are decimal approximations of fractions.
    #   @return [String]
    # @!attribute framerate_conversion_algorithm
    #   Choose the method that you want MediaConvert to use when increasing or decreasing your video's frame rate. For numerically simple conversions, such as 60 fps to 30 fps: We recommend that you keep the default value, Drop duplicate. For numerically complex conversions, to avoid stutter: Choose Interpolate. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence: Choose FrameFormer to do motion-compensated interpolation. FrameFormer uses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost. When you choose FrameFormer, your input video resolution must be at least 128x96. To create an output with the same number of frames as your input: Choose Maintain frame count. When you do, MediaConvert will not drop, interpolate, add, or otherwise change the frame count from your input to your output. Note that since the frame count is maintained, the duration of your output will become shorter at higher frame rates and longer at lower frame rates.
    #   @return [String]
    # @!attribute framerate_denominator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Frame rate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute framerate_numerator
    #   When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example, 24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
    #   @return [Integer]
    # @!attribute per_frame_metrics
    #   Optionally choose one or more per frame metric reports to generate along with your output. You can use these metrics to analyze your video output according to one or more commonly used image quality metrics. You can specify per frame metrics for output groups or for individual outputs. When you do, MediaConvert writes a CSV (Comma-Separated Values) file to your S3 output destination, named after the output name and metric type. For example: videofile_PSNR.csv Jobs that generate per frame metrics will take longer to complete, depending on the resolution and complexity of your output. For example, some 4K jobs might take up to twice as long to complete. Note that when analyzing the video quality of your output, or when comparing the video quality of multiple different outputs, we generally also recommend a detailed visual review in a controlled environment. You can choose from the following per frame metrics: * PSNR: Peak Signal-to-Noise Ratio * SSIM: Structural Similarity Index Measure * MS_SSIM: Multi-Scale Similarity Index Measure * PSNR_HVS: Peak Signal-to-Noise Ratio, Human Visual System * VMAF: Video Multi-Method Assessment Fusion * QVBR: Quality-Defined Variable Bitrate. This option is only available when your output uses the QVBR rate control mode.
    #   @return [Array<String>]
    # @!attribute profile
    #   Specify the XAVC profile for this output. For more information, see the Sony documentation at https://www.xavc-info.org/. Note that MediaConvert doesn't support the interlaced video XAVC operating points for XAVC_HD_INTRA_CBG. To create an interlaced XAVC output, choose the profile XAVC_HD.
    #   @return [String]
    # @!attribute slow_pal
    #   Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Frame rate to 25.
    #   @return [String]
    # @!attribute softness
    #   Ignore this setting unless your downstream workflow requires that you specify it explicitly. Otherwise, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness or by enabling a noise reducer filter. The Softness setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, for flat quantization. Choose the value 1 or 16 to use the default JVT softening quantization matricies from the H.264 specification. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video.
    #   @return [Integer]
    # @!attribute spatial_adaptive_quantization
    #   The best way to set up adaptive quantization is to keep the default value, Auto, for the setting Adaptive quantization. When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. For this setting, keep the default value, Enabled, to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    #   @return [String]
    # @!attribute temporal_adaptive_quantization
    #   The best way to set up adaptive quantization is to keep the default value, Auto, for the setting Adaptive quantization. When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. For this setting, keep the default value, Enabled, to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal adaptive quantization, adjust the strength of the filter with the setting Adaptive quantization.
    #   @return [String]
    # @!attribute xavc4k_intra_cbg_profile_settings
    #   Required when you set Profile to the value XAVC_4K_INTRA_CBG.
    #   @return [Types::Xavc4kIntraCbgProfileSettings]
    # @!attribute xavc4k_intra_vbr_profile_settings
    #   Required when you set Profile to the value XAVC_4K_INTRA_VBR.
    #   @return [Types::Xavc4kIntraVbrProfileSettings]
    # @!attribute xavc4k_profile_settings
    #   Required when you set Profile to the value XAVC_4K.
    #   @return [Types::Xavc4kProfileSettings]
    # @!attribute xavc_hd_intra_cbg_profile_settings
    #   Required when you set Profile to the value XAVC_HD_INTRA_CBG.
    #   @return [Types::XavcHdIntraCbgProfileSettings]
    # @!attribute xavc_hd_profile_settings
    #   Required when you set Profile to the value XAVC_HD.
    #   @return [Types::XavcHdProfileSettings]
    class XavcSettings < Struct.new(
      :adaptive_quantization,
      :entropy_encoding,
      :framerate_control,
      :framerate_conversion_algorithm,
      :framerate_denominator,
      :framerate_numerator,
      :per_frame_metrics,
      :profile,
      :slow_pal,
      :softness,
      :spatial_adaptive_quantization,
      :temporal_adaptive_quantization,
      :xavc4k_intra_cbg_profile_settings,
      :xavc4k_intra_vbr_profile_settings,
      :xavc4k_profile_settings,
      :xavc_hd_intra_cbg_profile_settings,
      :xavc_hd_profile_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Frame rate to 25.
    module XavcSlowPal
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # The best way to set up adaptive quantization is to keep the default value, Auto, for the setting Adaptive quantization. When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. For this setting, keep the default value, Enabled, to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
    module XavcSpatialAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

    # The best way to set up adaptive quantization is to keep the default value, Auto, for the setting Adaptive quantization. When you do so, MediaConvert automatically applies the best types of quantization for your video content. Include this setting in your JSON job specification only when you choose to change the default value for Adaptive quantization. For this setting, keep the default value, Enabled, to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal adaptive quantization, adjust the strength of the filter with the setting Adaptive quantization.
    module XavcTemporalAdaptiveQuantization
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
    end

  end
end
