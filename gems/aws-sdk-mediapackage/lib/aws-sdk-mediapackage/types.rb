# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaPackage
  module Types

    # A Channel resource configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A short text description of the Channel.
    #   @return [String]
    #
    # @!attribute [rw] hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    #
    # @!attribute [rw] id
    #   The ID of the Channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/Channel AWS API Documentation
    #
    class Channel < Struct.new(
      :arn,
      :description,
      :hls_ingest,
      :id)
      include Aws::Structure
    end

    # Configuration parameters for a new Channel.
    #
    # @!attribute [rw] description
    #   A short text description of the Channel.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the Channel. The ID must be unique within the region and
    #   it cannot be changed after a Channel is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ChannelCreateParameters AWS API Documentation
    #
    class ChannelCreateParameters < Struct.new(
      :description,
      :id)
      include Aws::Structure
    end

    # A collection of Channel records.
    #
    # @!attribute [rw] channels
    #   A list of Channel records.
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to resume pagination from the end of the
    #   collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ChannelList AWS API Documentation
    #
    class ChannelList < Struct.new(
      :channels,
      :next_token)
      include Aws::Structure
    end

    # Configuration parameters for updating an existing Channel.
    #
    # @!attribute [rw] description
    #   A short text description of the Channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ChannelUpdateParameters AWS API Documentation
    #
    class ChannelUpdateParameters < Struct.new(
      :description)
      include Aws::Structure
    end

    # A Common Media Application Format (CMAF) encryption configuration.
    #
    # @note When making an API call, you may pass CmafEncryption
    #   data as a hash:
    #
    #       {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       }
    #
    # @!attribute [rw] key_rotation_interval_seconds
    #   Time (in seconds) between each encryption key rotation.
    #   @return [Integer]
    #
    # @!attribute [rw] speke_key_provider
    #   A configuration for accessing an external Secure Packager and
    #   Encoder Key Exchange (SPEKE) service that will provide encryption
    #   keys.
    #   @return [Types::SpekeKeyProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CmafEncryption AWS API Documentation
    #
    class CmafEncryption < Struct.new(
      :key_rotation_interval_seconds,
      :speke_key_provider)
      include Aws::Structure
    end

    # A Common Media Application Format (CMAF) packaging configuration.
    #
    # @!attribute [rw] encryption
    #   A Common Media Application Format (CMAF) encryption configuration.
    #   @return [Types::CmafEncryption]
    #
    # @!attribute [rw] hls_manifests
    #   A list of HLS manifest configurations
    #   @return [Array<Types::HlsManifest>]
    #
    # @!attribute [rw] segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_prefix
    #   An optional custom string that is prepended to the name of each
    #   segment. If not specified, it defaults to the ChannelId.
    #   @return [String]
    #
    # @!attribute [rw] stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CmafPackage AWS API Documentation
    #
    class CmafPackage < Struct.new(
      :encryption,
      :hls_manifests,
      :segment_duration_seconds,
      :segment_prefix,
      :stream_selection)
      include Aws::Structure
    end

    # A Common Media Application Format (CMAF) packaging configuration.
    #
    # @note When making an API call, you may pass CmafPackageCreateOrUpdateParameters
    #   data as a hash:
    #
    #       {
    #         encryption: {
    #           key_rotation_interval_seconds: 1,
    #           speke_key_provider: { # required
    #             resource_id: "__string", # required
    #             role_arn: "__string", # required
    #             system_ids: ["__string"], # required
    #             url: "__string", # required
    #           },
    #         },
    #         hls_manifests: [
    #           {
    #             ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #             id: "__string", # required
    #             include_iframe_only_stream: false,
    #             manifest_name: "__string",
    #             playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #             playlist_window_seconds: 1,
    #             program_date_time_interval_seconds: 1,
    #           },
    #         ],
    #         segment_duration_seconds: 1,
    #         segment_prefix: "__string",
    #         stream_selection: {
    #           max_video_bits_per_second: 1,
    #           min_video_bits_per_second: 1,
    #           stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #         },
    #       }
    #
    # @!attribute [rw] encryption
    #   A Common Media Application Format (CMAF) encryption configuration.
    #   @return [Types::CmafEncryption]
    #
    # @!attribute [rw] hls_manifests
    #   A list of HLS manifest configurations
    #   @return [Array<Types::HlsManifestCreateOrUpdateParameters>]
    #
    # @!attribute [rw] segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_prefix
    #   An optional custom string that is prepended to the name of each
    #   segment. If not specified, it defaults to the ChannelId.
    #   @return [String]
    #
    # @!attribute [rw] stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CmafPackageCreateOrUpdateParameters AWS API Documentation
    #
    class CmafPackageCreateOrUpdateParameters < Struct.new(
      :encryption,
      :hls_manifests,
      :segment_duration_seconds,
      :segment_prefix,
      :stream_selection)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateChannelRequest
    #   data as a hash:
    #
    #       {
    #         description: "__string",
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CreateChannelRequest AWS API Documentation
    #
    class CreateChannelRequest < Struct.new(
      :description,
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CreateChannelResponse AWS API Documentation
    #
    class CreateChannelResponse < Struct.new(
      :arn,
      :description,
      :hls_ingest,
      :id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOriginEndpointRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "__string", # required
    #         cmaf_package: {
    #           encryption: {
    #             key_rotation_interval_seconds: 1,
    #             speke_key_provider: { # required
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           hls_manifests: [
    #             {
    #               ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #               id: "__string", # required
    #               include_iframe_only_stream: false,
    #               manifest_name: "__string",
    #               playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #               playlist_window_seconds: 1,
    #               program_date_time_interval_seconds: 1,
    #             },
    #           ],
    #           segment_duration_seconds: 1,
    #           segment_prefix: "__string",
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #         dash_package: {
    #           encryption: {
    #             key_rotation_interval_seconds: 1,
    #             speke_key_provider: { # required
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           period_triggers: ["ADS"], # accepts ADS
    #           profile: "NONE", # accepts NONE, HBBTV_1_5
    #           segment_duration_seconds: 1,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #           suggested_presentation_delay_seconds: 1,
    #         },
    #         description: "__string",
    #         hls_package: {
    #           ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #           encryption: {
    #             constant_initialization_vector: "__string",
    #             encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #             key_rotation_interval_seconds: 1,
    #             repeat_ext_x_key: false,
    #             speke_key_provider: { # required
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           include_iframe_only_stream: false,
    #           playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1,
    #           segment_duration_seconds: 1,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #           use_audio_rendition_group: false,
    #         },
    #         id: "__string", # required
    #         manifest_name: "__string",
    #         mss_package: {
    #           encryption: {
    #             speke_key_provider: { # required
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           manifest_window_seconds: 1,
    #           segment_duration_seconds: 1,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #         startover_window_seconds: 1,
    #         time_delay_seconds: 1,
    #         whitelist: ["__string"],
    #       }
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @!attribute [rw] cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackageCreateOrUpdateParameters]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] manifest_name
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] startover_window_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] time_delay_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] whitelist
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CreateOriginEndpointRequest AWS API Documentation
    #
    class CreateOriginEndpointRequest < Struct.new(
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :startover_window_seconds,
      :time_delay_seconds,
      :whitelist)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @!attribute [rw] cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackage]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] manifest_name
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] startover_window_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] time_delay_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] url
    #   @return [String]
    #
    # @!attribute [rw] whitelist
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CreateOriginEndpointResponse AWS API Documentation
    #
    class CreateOriginEndpointResponse < Struct.new(
      :arn,
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :startover_window_seconds,
      :time_delay_seconds,
      :url,
      :whitelist)
      include Aws::Structure
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) encryption
    # configuration.
    #
    # @note When making an API call, you may pass DashEncryption
    #   data as a hash:
    #
    #       {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       }
    #
    # @!attribute [rw] key_rotation_interval_seconds
    #   Time (in seconds) between each encryption key rotation.
    #   @return [Integer]
    #
    # @!attribute [rw] speke_key_provider
    #   A configuration for accessing an external Secure Packager and
    #   Encoder Key Exchange (SPEKE) service that will provide encryption
    #   keys.
    #   @return [Types::SpekeKeyProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DashEncryption AWS API Documentation
    #
    class DashEncryption < Struct.new(
      :key_rotation_interval_seconds,
      :speke_key_provider)
      include Aws::Structure
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @note When making an API call, you may pass DashPackage
    #   data as a hash:
    #
    #       {
    #         encryption: {
    #           key_rotation_interval_seconds: 1,
    #           speke_key_provider: { # required
    #             resource_id: "__string", # required
    #             role_arn: "__string", # required
    #             system_ids: ["__string"], # required
    #             url: "__string", # required
    #           },
    #         },
    #         manifest_window_seconds: 1,
    #         min_buffer_time_seconds: 1,
    #         min_update_period_seconds: 1,
    #         period_triggers: ["ADS"], # accepts ADS
    #         profile: "NONE", # accepts NONE, HBBTV_1_5
    #         segment_duration_seconds: 1,
    #         stream_selection: {
    #           max_video_bits_per_second: 1,
    #           min_video_bits_per_second: 1,
    #           stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #         },
    #         suggested_presentation_delay_seconds: 1,
    #       }
    #
    # @!attribute [rw] encryption
    #   A Dynamic Adaptive Streaming over HTTP (DASH) encryption
    #   configuration.
    #   @return [Types::DashEncryption]
    #
    # @!attribute [rw] manifest_window_seconds
    #   Time window (in seconds) contained in each manifest.
    #   @return [Integer]
    #
    # @!attribute [rw] min_buffer_time_seconds
    #   Minimum duration (in seconds) that a player will buffer media before
    #   starting the presentation.
    #   @return [Integer]
    #
    # @!attribute [rw] min_update_period_seconds
    #   Minimum duration (in seconds) between potential changes to the
    #   Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation
    #   Description (MPD).
    #   @return [Integer]
    #
    # @!attribute [rw] period_triggers
    #   A list of triggers that controls when the outgoing Dynamic Adaptive
    #   Streaming over HTTP (DASH) Media Presentation Description (MPD) will
    #   be partitioned into multiple periods. If empty, the content will not
    #   be partitioned into more than one period. If the list contains
    #   "ADS", new periods will be created where the Channel source
    #   contains SCTE-35 ad markers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] profile
    #   The Dynamic Adaptive Streaming over HTTP (DASH) profile type. When
    #   set to "HBBTV\_1\_5", HbbTV 1.5 compliant output is enabled.
    #   @return [String]
    #
    # @!attribute [rw] segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    #
    # @!attribute [rw] suggested_presentation_delay_seconds
    #   Duration (in seconds) to delay live content before presentation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DashPackage AWS API Documentation
    #
    class DashPackage < Struct.new(
      :encryption,
      :manifest_window_seconds,
      :min_buffer_time_seconds,
      :min_update_period_seconds,
      :period_triggers,
      :profile,
      :segment_duration_seconds,
      :stream_selection,
      :suggested_presentation_delay_seconds)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteChannelRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DeleteChannelRequest AWS API Documentation
    #
    class DeleteChannelRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DeleteChannelResponse AWS API Documentation
    #
    class DeleteChannelResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteOriginEndpointRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DeleteOriginEndpointRequest AWS API Documentation
    #
    class DeleteOriginEndpointRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DeleteOriginEndpointResponse AWS API Documentation
    #
    class DeleteOriginEndpointResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeChannelRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DescribeChannelRequest AWS API Documentation
    #
    class DescribeChannelRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DescribeChannelResponse AWS API Documentation
    #
    class DescribeChannelResponse < Struct.new(
      :arn,
      :description,
      :hls_ingest,
      :id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeOriginEndpointRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DescribeOriginEndpointRequest AWS API Documentation
    #
    class DescribeOriginEndpointRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @!attribute [rw] cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackage]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] manifest_name
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] startover_window_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] time_delay_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] url
    #   @return [String]
    #
    # @!attribute [rw] whitelist
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DescribeOriginEndpointResponse AWS API Documentation
    #
    class DescribeOriginEndpointResponse < Struct.new(
      :arn,
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :startover_window_seconds,
      :time_delay_seconds,
      :url,
      :whitelist)
      include Aws::Structure
    end

    # An HTTP Live Streaming (HLS) encryption configuration.
    #
    # @note When making an API call, you may pass HlsEncryption
    #   data as a hash:
    #
    #       {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #         key_rotation_interval_seconds: 1,
    #         repeat_ext_x_key: false,
    #         speke_key_provider: { # required
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       }
    #
    # @!attribute [rw] constant_initialization_vector
    #   A constant initialization vector for encryption (optional). When not
    #   specified the initialization vector will be periodically rotated.
    #   @return [String]
    #
    # @!attribute [rw] encryption_method
    #   The encryption method to use.
    #   @return [String]
    #
    # @!attribute [rw] key_rotation_interval_seconds
    #   Interval (in seconds) between each encryption key rotation.
    #   @return [Integer]
    #
    # @!attribute [rw] repeat_ext_x_key
    #   When enabled, the EXT-X-KEY tag will be repeated in output
    #   manifests.
    #   @return [Boolean]
    #
    # @!attribute [rw] speke_key_provider
    #   A configuration for accessing an external Secure Packager and
    #   Encoder Key Exchange (SPEKE) service that will provide encryption
    #   keys.
    #   @return [Types::SpekeKeyProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/HlsEncryption AWS API Documentation
    #
    class HlsEncryption < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :key_rotation_interval_seconds,
      :repeat_ext_x_key,
      :speke_key_provider)
      include Aws::Structure
    end

    # An HTTP Live Streaming (HLS) ingest resource configuration.
    #
    # @!attribute [rw] ingest_endpoints
    #   A list of endpoints to which the source stream should be sent.
    #   @return [Array<Types::IngestEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/HlsIngest AWS API Documentation
    #
    class HlsIngest < Struct.new(
      :ingest_endpoints)
      include Aws::Structure
    end

    # A HTTP Live Streaming (HLS) manifest configuration.
    #
    # @!attribute [rw] ad_markers
    #   This setting controls how ad markers are included in the packaged
    #   OriginEndpoint. "NONE" will omit all SCTE-35 ad markers from the
    #   output. "PASSTHROUGH" causes the manifest to contain a copy of the
    #   SCTE-35 ad markers (comments) taken directly from the input HTTP
    #   Live Streaming (HLS) manifest. "SCTE35\_ENHANCED" generates ad
    #   markers and blackout tags based on SCTE-35 messages in the input
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the manifest. The ID must be unique within the
    #   OriginEndpoint and it cannot be changed after it is created.
    #   @return [String]
    #
    # @!attribute [rw] include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #   @return [Boolean]
    #
    # @!attribute [rw] manifest_name
    #   An optional short string appended to the end of the OriginEndpoint
    #   URL. If not specified, defaults to the manifestName for the
    #   OriginEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] playlist_type
    #   The HTTP Live Streaming (HLS) playlist type. When either "EVENT"
    #   or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE entry
    #   will be included in the media playlist.
    #   @return [String]
    #
    # @!attribute [rw] playlist_window_seconds
    #   Time window (in seconds) contained in each parent manifest.
    #   @return [Integer]
    #
    # @!attribute [rw] program_date_time_interval_seconds
    #   The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
    #   inserted into manifests. Additionally, when an interval is specified
    #   ID3Timed Metadata messages will be generated every 5 seconds using
    #   the ingest time of the content. If the interval is not specified, or
    #   set to 0, then no EXT-X-PROGRAM-DATE-TIME tags will be inserted into
    #   manifests and no ID3Timed Metadata messages will be generated. Note
    #   that irrespective of this parameter, if any ID3 Timed Metadata is
    #   found in HTTP Live Streaming (HLS) input, it will be passed through
    #   to HLS output.
    #   @return [Integer]
    #
    # @!attribute [rw] url
    #   The URL of the packaged OriginEndpoint for consumption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/HlsManifest AWS API Documentation
    #
    class HlsManifest < Struct.new(
      :ad_markers,
      :id,
      :include_iframe_only_stream,
      :manifest_name,
      :playlist_type,
      :playlist_window_seconds,
      :program_date_time_interval_seconds,
      :url)
      include Aws::Structure
    end

    # A HTTP Live Streaming (HLS) manifest configuration.
    #
    # @note When making an API call, you may pass HlsManifestCreateOrUpdateParameters
    #   data as a hash:
    #
    #       {
    #         ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #         id: "__string", # required
    #         include_iframe_only_stream: false,
    #         manifest_name: "__string",
    #         playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #         playlist_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #       }
    #
    # @!attribute [rw] ad_markers
    #   This setting controls how ad markers are included in the packaged
    #   OriginEndpoint. "NONE" will omit all SCTE-35 ad markers from the
    #   output. "PASSTHROUGH" causes the manifest to contain a copy of the
    #   SCTE-35 ad markers (comments) taken directly from the input HTTP
    #   Live Streaming (HLS) manifest. "SCTE35\_ENHANCED" generates ad
    #   markers and blackout tags based on SCTE-35 messages in the input
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the manifest. The ID must be unique within the
    #   OriginEndpoint and it cannot be changed after it is created.
    #   @return [String]
    #
    # @!attribute [rw] include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #   @return [Boolean]
    #
    # @!attribute [rw] manifest_name
    #   An optional short string appended to the end of the OriginEndpoint
    #   URL. If not specified, defaults to the manifestName for the
    #   OriginEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] playlist_type
    #   The HTTP Live Streaming (HLS) playlist type. When either "EVENT"
    #   or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE entry
    #   will be included in the media playlist.
    #   @return [String]
    #
    # @!attribute [rw] playlist_window_seconds
    #   Time window (in seconds) contained in each parent manifest.
    #   @return [Integer]
    #
    # @!attribute [rw] program_date_time_interval_seconds
    #   The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
    #   inserted into manifests. Additionally, when an interval is specified
    #   ID3Timed Metadata messages will be generated every 5 seconds using
    #   the ingest time of the content. If the interval is not specified, or
    #   set to 0, then no EXT-X-PROGRAM-DATE-TIME tags will be inserted into
    #   manifests and no ID3Timed Metadata messages will be generated. Note
    #   that irrespective of this parameter, if any ID3 Timed Metadata is
    #   found in HTTP Live Streaming (HLS) input, it will be passed through
    #   to HLS output.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/HlsManifestCreateOrUpdateParameters AWS API Documentation
    #
    class HlsManifestCreateOrUpdateParameters < Struct.new(
      :ad_markers,
      :id,
      :include_iframe_only_stream,
      :manifest_name,
      :playlist_type,
      :playlist_window_seconds,
      :program_date_time_interval_seconds)
      include Aws::Structure
    end

    # An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @note When making an API call, you may pass HlsPackage
    #   data as a hash:
    #
    #       {
    #         ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #         encryption: {
    #           constant_initialization_vector: "__string",
    #           encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #           key_rotation_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           speke_key_provider: { # required
    #             resource_id: "__string", # required
    #             role_arn: "__string", # required
    #             system_ids: ["__string"], # required
    #             url: "__string", # required
    #           },
    #         },
    #         include_iframe_only_stream: false,
    #         playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #         playlist_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         segment_duration_seconds: 1,
    #         stream_selection: {
    #           max_video_bits_per_second: 1,
    #           min_video_bits_per_second: 1,
    #           stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #         },
    #         use_audio_rendition_group: false,
    #       }
    #
    # @!attribute [rw] ad_markers
    #   This setting controls how ad markers are included in the packaged
    #   OriginEndpoint. "NONE" will omit all SCTE-35 ad markers from the
    #   output. "PASSTHROUGH" causes the manifest to contain a copy of the
    #   SCTE-35 ad markers (comments) taken directly from the input HTTP
    #   Live Streaming (HLS) manifest. "SCTE35\_ENHANCED" generates ad
    #   markers and blackout tags based on SCTE-35 messages in the input
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   An HTTP Live Streaming (HLS) encryption configuration.
    #   @return [Types::HlsEncryption]
    #
    # @!attribute [rw] include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #   @return [Boolean]
    #
    # @!attribute [rw] playlist_type
    #   The HTTP Live Streaming (HLS) playlist type. When either "EVENT"
    #   or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE entry
    #   will be included in the media playlist.
    #   @return [String]
    #
    # @!attribute [rw] playlist_window_seconds
    #   Time window (in seconds) contained in each parent manifest.
    #   @return [Integer]
    #
    # @!attribute [rw] program_date_time_interval_seconds
    #   The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
    #   inserted into manifests. Additionally, when an interval is specified
    #   ID3Timed Metadata messages will be generated every 5 seconds using
    #   the ingest time of the content. If the interval is not specified, or
    #   set to 0, then no EXT-X-PROGRAM-DATE-TIME tags will be inserted into
    #   manifests and no ID3Timed Metadata messages will be generated. Note
    #   that irrespective of this parameter, if any ID3 Timed Metadata is
    #   found in HTTP Live Streaming (HLS) input, it will be passed through
    #   to HLS output.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_duration_seconds
    #   Duration (in seconds) of each fragment. Actual fragments will be
    #   rounded to the nearest multiple of the source fragment duration.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    #
    # @!attribute [rw] use_audio_rendition_group
    #   When enabled, audio streams will be placed in rendition groups in
    #   the output.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/HlsPackage AWS API Documentation
    #
    class HlsPackage < Struct.new(
      :ad_markers,
      :encryption,
      :include_iframe_only_stream,
      :playlist_type,
      :playlist_window_seconds,
      :program_date_time_interval_seconds,
      :segment_duration_seconds,
      :stream_selection,
      :use_audio_rendition_group)
      include Aws::Structure
    end

    # An endpoint for ingesting source content for a Channel.
    #
    # @!attribute [rw] id
    #   The system generated unique identifier for the IngestEndpoint
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The system generated password for ingest authentication.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The ingest URL to which the source stream should be sent.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The system generated username for ingest authentication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/IngestEndpoint AWS API Documentation
    #
    class IngestEndpoint < Struct.new(
      :id,
      :password,
      :url,
      :username)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListChannelsRequest AWS API Documentation
    #
    class ListChannelsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListChannelsResponse AWS API Documentation
    #
    class ListChannelsResponse < Struct.new(
      :channels,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOriginEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "__string",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListOriginEndpointsRequest AWS API Documentation
    #
    class ListOriginEndpointsRequest < Struct.new(
      :channel_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoints
    #   @return [Array<Types::OriginEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListOriginEndpointsResponse AWS API Documentation
    #
    class ListOriginEndpointsResponse < Struct.new(
      :next_token,
      :origin_endpoints)
      include Aws::Structure
    end

    # A Microsoft Smooth Streaming (MSS) encryption configuration.
    #
    # @note When making an API call, you may pass MssEncryption
    #   data as a hash:
    #
    #       {
    #         speke_key_provider: { # required
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       }
    #
    # @!attribute [rw] speke_key_provider
    #   A configuration for accessing an external Secure Packager and
    #   Encoder Key Exchange (SPEKE) service that will provide encryption
    #   keys.
    #   @return [Types::SpekeKeyProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/MssEncryption AWS API Documentation
    #
    class MssEncryption < Struct.new(
      :speke_key_provider)
      include Aws::Structure
    end

    # A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    # @note When making an API call, you may pass MssPackage
    #   data as a hash:
    #
    #       {
    #         encryption: {
    #           speke_key_provider: { # required
    #             resource_id: "__string", # required
    #             role_arn: "__string", # required
    #             system_ids: ["__string"], # required
    #             url: "__string", # required
    #           },
    #         },
    #         manifest_window_seconds: 1,
    #         segment_duration_seconds: 1,
    #         stream_selection: {
    #           max_video_bits_per_second: 1,
    #           min_video_bits_per_second: 1,
    #           stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #         },
    #       }
    #
    # @!attribute [rw] encryption
    #   A Microsoft Smooth Streaming (MSS) encryption configuration.
    #   @return [Types::MssEncryption]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The time window (in seconds) contained in each manifest.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_duration_seconds
    #   The duration (in seconds) of each segment.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/MssPackage AWS API Documentation
    #
    class MssPackage < Struct.new(
      :encryption,
      :manifest_window_seconds,
      :segment_duration_seconds,
      :stream_selection)
      include Aws::Structure
    end

    # An OriginEndpoint resource configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   The ID of the Channel the OriginEndpoint is associated with.
    #   @return [String]
    #
    # @!attribute [rw] cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackage]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] description
    #   A short text description of the OriginEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   The ID of the OriginEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] manifest_name
    #   A short string appended to the end of the OriginEndpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover
    #   playback. If not specified, startover playback will be disabled for
    #   the OriginEndpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live
    #   content. If not specified, there will be no time delay in effect for
    #   the OriginEndpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] url
    #   The URL of the packaged OriginEndpoint for consumption.
    #   @return [String]
    #
    # @!attribute [rw] whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the
    #   OriginEndpoint.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/OriginEndpoint AWS API Documentation
    #
    class OriginEndpoint < Struct.new(
      :arn,
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :startover_window_seconds,
      :time_delay_seconds,
      :url,
      :whitelist)
      include Aws::Structure
    end

    # Configuration parameters for a new OriginEndpoint.
    #
    # @!attribute [rw] channel_id
    #   The ID of the Channel that the OriginEndpoint will be associated
    #   with. This cannot be changed after the OriginEndpoint is created.
    #   @return [String]
    #
    # @!attribute [rw] cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackageCreateOrUpdateParameters]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] description
    #   A short text description of the OriginEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   The ID of the OriginEndpoint. The ID must be unique within the
    #   region and it cannot be changed after the OriginEndpoint is created.
    #   @return [String]
    #
    # @!attribute [rw] manifest_name
    #   A short string that will be used as the filename of the
    #   OriginEndpoint URL (defaults to "index").
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover
    #   playback. If not specified, startover playback will be disabled for
    #   the OriginEndpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live
    #   content. If not specified, there will be no time delay in effect for
    #   the OriginEndpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the
    #   OriginEndpoint.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/OriginEndpointCreateParameters AWS API Documentation
    #
    class OriginEndpointCreateParameters < Struct.new(
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :startover_window_seconds,
      :time_delay_seconds,
      :whitelist)
      include Aws::Structure
    end

    # A collection of OriginEndpoint records.
    #
    # @!attribute [rw] next_token
    #   A token that can be used to resume pagination from the end of the
    #   collection.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoints
    #   A list of OriginEndpoint records.
    #   @return [Array<Types::OriginEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/OriginEndpointList AWS API Documentation
    #
    class OriginEndpointList < Struct.new(
      :next_token,
      :origin_endpoints)
      include Aws::Structure
    end

    # Configuration parameters for updating an existing OriginEndpoint.
    #
    # @!attribute [rw] cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackageCreateOrUpdateParameters]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] description
    #   A short text description of the OriginEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] manifest_name
    #   A short string that will be appended to the end of the Endpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] startover_window_seconds
    #   Maximum duration (in seconds) of content to retain for startover
    #   playback. If not specified, startover playback will be disabled for
    #   the OriginEndpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] time_delay_seconds
    #   Amount of delay (in seconds) to enforce on the playback of live
    #   content. If not specified, there will be no time delay in effect for
    #   the OriginEndpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the
    #   OriginEndpoint.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/OriginEndpointUpdateParameters AWS API Documentation
    #
    class OriginEndpointUpdateParameters < Struct.new(
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :manifest_name,
      :mss_package,
      :startover_window_seconds,
      :time_delay_seconds,
      :whitelist)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RotateChannelCredentialsRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/RotateChannelCredentialsRequest AWS API Documentation
    #
    class RotateChannelCredentialsRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/RotateChannelCredentialsResponse AWS API Documentation
    #
    class RotateChannelCredentialsResponse < Struct.new(
      :arn,
      :description,
      :hls_ingest,
      :id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RotateIngestEndpointCredentialsRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #         ingest_endpoint_id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] ingest_endpoint_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/RotateIngestEndpointCredentialsRequest AWS API Documentation
    #
    class RotateIngestEndpointCredentialsRequest < Struct.new(
      :id,
      :ingest_endpoint_id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/RotateIngestEndpointCredentialsResponse AWS API Documentation
    #
    class RotateIngestEndpointCredentialsResponse < Struct.new(
      :arn,
      :description,
      :hls_ingest,
      :id)
      include Aws::Structure
    end

    # A configuration for accessing an external Secure Packager and Encoder
    # Key Exchange (SPEKE) service that will provide encryption keys.
    #
    # @note When making an API call, you may pass SpekeKeyProvider
    #   data as a hash:
    #
    #       {
    #         resource_id: "__string", # required
    #         role_arn: "__string", # required
    #         system_ids: ["__string"], # required
    #         url: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_id
    #   The resource ID to include in key requests.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   An Amazon Resource Name (ARN) of an IAM role that AWS Elemental
    #   MediaPackage will assume when accessing the key provider service.
    #   @return [String]
    #
    # @!attribute [rw] system_ids
    #   The system IDs to include in key requests.
    #   @return [Array<String>]
    #
    # @!attribute [rw] url
    #   The URL of the external key provider service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/SpekeKeyProvider AWS API Documentation
    #
    class SpekeKeyProvider < Struct.new(
      :resource_id,
      :role_arn,
      :system_ids,
      :url)
      include Aws::Structure
    end

    # A StreamSelection configuration.
    #
    # @note When making an API call, you may pass StreamSelection
    #   data as a hash:
    #
    #       {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       }
    #
    # @!attribute [rw] max_video_bits_per_second
    #   The maximum video bitrate (bps) to include in output.
    #   @return [Integer]
    #
    # @!attribute [rw] min_video_bits_per_second
    #   The minimum video bitrate (bps) to include in output.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_order
    #   A directive that determines the order of streams in the output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/StreamSelection AWS API Documentation
    #
    class StreamSelection < Struct.new(
      :max_video_bits_per_second,
      :min_video_bits_per_second,
      :stream_order)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateChannelRequest
    #   data as a hash:
    #
    #       {
    #         description: "__string",
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/UpdateChannelRequest AWS API Documentation
    #
    class UpdateChannelRequest < Struct.new(
      :description,
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/UpdateChannelResponse AWS API Documentation
    #
    class UpdateChannelResponse < Struct.new(
      :arn,
      :description,
      :hls_ingest,
      :id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateOriginEndpointRequest
    #   data as a hash:
    #
    #       {
    #         cmaf_package: {
    #           encryption: {
    #             key_rotation_interval_seconds: 1,
    #             speke_key_provider: { # required
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           hls_manifests: [
    #             {
    #               ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #               id: "__string", # required
    #               include_iframe_only_stream: false,
    #               manifest_name: "__string",
    #               playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #               playlist_window_seconds: 1,
    #               program_date_time_interval_seconds: 1,
    #             },
    #           ],
    #           segment_duration_seconds: 1,
    #           segment_prefix: "__string",
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #         dash_package: {
    #           encryption: {
    #             key_rotation_interval_seconds: 1,
    #             speke_key_provider: { # required
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           period_triggers: ["ADS"], # accepts ADS
    #           profile: "NONE", # accepts NONE, HBBTV_1_5
    #           segment_duration_seconds: 1,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #           suggested_presentation_delay_seconds: 1,
    #         },
    #         description: "__string",
    #         hls_package: {
    #           ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #           encryption: {
    #             constant_initialization_vector: "__string",
    #             encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #             key_rotation_interval_seconds: 1,
    #             repeat_ext_x_key: false,
    #             speke_key_provider: { # required
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           include_iframe_only_stream: false,
    #           playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1,
    #           segment_duration_seconds: 1,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #           use_audio_rendition_group: false,
    #         },
    #         id: "__string", # required
    #         manifest_name: "__string",
    #         mss_package: {
    #           encryption: {
    #             speke_key_provider: { # required
    #               resource_id: "__string", # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           manifest_window_seconds: 1,
    #           segment_duration_seconds: 1,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #         startover_window_seconds: 1,
    #         time_delay_seconds: 1,
    #         whitelist: ["__string"],
    #       }
    #
    # @!attribute [rw] cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackageCreateOrUpdateParameters]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] manifest_name
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] startover_window_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] time_delay_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] whitelist
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/UpdateOriginEndpointRequest AWS API Documentation
    #
    class UpdateOriginEndpointRequest < Struct.new(
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :startover_window_seconds,
      :time_delay_seconds,
      :whitelist)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   @return [String]
    #
    # @!attribute [rw] cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackage]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] manifest_name
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] startover_window_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] time_delay_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] url
    #   @return [String]
    #
    # @!attribute [rw] whitelist
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/UpdateOriginEndpointResponse AWS API Documentation
    #
    class UpdateOriginEndpointResponse < Struct.new(
      :arn,
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :startover_window_seconds,
      :time_delay_seconds,
      :url,
      :whitelist)
      include Aws::Structure
    end

  end
end
