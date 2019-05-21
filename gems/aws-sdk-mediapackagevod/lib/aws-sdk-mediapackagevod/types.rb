# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaPackageVod
  module Types

    # A MediaPackage VOD Asset resource.
    #
    # @!attribute [rw] arn
    #   The ARN of the Asset.
    #   @return [String]
    #
    # @!attribute [rw] egress_endpoints
    #   The list of egress endpoints available for the Asset.
    #   @return [Array<Types::EgressEndpoint>]
    #
    # @!attribute [rw] id
    #   The unique identifier for the Asset.
    #   @return [String]
    #
    # @!attribute [rw] packaging_group_id
    #   The ID of the PackagingGroup for the Asset.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID to include in SPEKE key requests.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   ARN of the source object in S3.
    #   @return [String]
    #
    # @!attribute [rw] source_role_arn
    #   The IAM role\_arn used to access the source S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/Asset AWS API Documentation
    #
    class Asset < Struct.new(
      :arn,
      :egress_endpoints,
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn)
      include Aws::Structure
    end

    # Parameters used to create a MediaPackage VOD Asset.
    #
    # @!attribute [rw] id
    #   The unique identifier for the Asset.
    #   @return [String]
    #
    # @!attribute [rw] packaging_group_id
    #   The ID of the PackagingGroup for the Asset.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID to include in SPEKE key requests.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   ARN of the source object in S3.
    #   @return [String]
    #
    # @!attribute [rw] source_role_arn
    #   The IAM role ARN used to access the source S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/AssetCreateParameters AWS API Documentation
    #
    class AssetCreateParameters < Struct.new(
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn)
      include Aws::Structure
    end

    # A collection of MediaPackage VOD Asset resources.
    #
    # @!attribute [rw] assets
    #   A list of MediaPackage VOD Asset resources.
    #   @return [Array<Types::AssetShallow>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used to resume pagination from the end of the
    #   collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/AssetList AWS API Documentation
    #
    class AssetList < Struct.new(
      :assets,
      :next_token)
      include Aws::Structure
    end

    # A MediaPackage VOD Asset resource.
    #
    # @!attribute [rw] arn
    #   The ARN of the Asset.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the Asset.
    #   @return [String]
    #
    # @!attribute [rw] packaging_group_id
    #   The ID of the PackagingGroup for the Asset.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID to include in SPEKE key requests.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   ARN of the source object in S3.
    #   @return [String]
    #
    # @!attribute [rw] source_role_arn
    #   The IAM role ARN used to access the source S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/AssetShallow AWS API Documentation
    #
    class AssetShallow < Struct.new(
      :arn,
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn)
      include Aws::Structure
    end

    # A CMAF encryption configuration.
    #
    # @note When making an API call, you may pass CmafEncryption
    #   data as a hash:
    #
    #       {
    #         speke_key_provider: { # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CmafEncryption AWS API Documentation
    #
    class CmafEncryption < Struct.new(
      :speke_key_provider)
      include Aws::Structure
    end

    # A CMAF packaging configuration.
    #
    # @note When making an API call, you may pass CmafPackage
    #   data as a hash:
    #
    #       {
    #         encryption: {
    #           speke_key_provider: { # required
    #             role_arn: "__string", # required
    #             system_ids: ["__string"], # required
    #             url: "__string", # required
    #           },
    #         },
    #         hls_manifests: [ # required
    #           {
    #             ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #             include_iframe_only_stream: false,
    #             manifest_name: "__string",
    #             program_date_time_interval_seconds: 1,
    #             repeat_ext_x_key: false,
    #             stream_selection: {
    #               max_video_bits_per_second: 1,
    #               min_video_bits_per_second: 1,
    #               stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #             },
    #           },
    #         ],
    #         segment_duration_seconds: 1,
    #       }
    #
    # @!attribute [rw] encryption
    #   A CMAF encryption configuration.
    #   @return [Types::CmafEncryption]
    #
    # @!attribute [rw] hls_manifests
    #   A list of HLS manifest configurations.
    #   @return [Array<Types::HlsManifest>]
    #
    # @!attribute [rw] segment_duration_seconds
    #   Duration (in seconds) of each fragment. Actual fragments will be
    #   rounded to the nearest multiple of the source fragment duration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CmafPackage AWS API Documentation
    #
    class CmafPackage < Struct.new(
      :encryption,
      :hls_manifests,
      :segment_duration_seconds)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAssetRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #         packaging_group_id: "__string", # required
    #         resource_id: "__string",
    #         source_arn: "__string", # required
    #         source_role_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] packaging_group_id
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   @return [String]
    #
    # @!attribute [rw] source_role_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreateAssetRequest AWS API Documentation
    #
    class CreateAssetRequest < Struct.new(
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] egress_endpoints
    #   @return [Array<Types::EgressEndpoint>]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] packaging_group_id
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   @return [String]
    #
    # @!attribute [rw] source_role_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreateAssetResponse AWS API Documentation
    #
    class CreateAssetResponse < Struct.new(
      :arn,
      :egress_endpoints,
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePackagingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         cmaf_package: {
    #           encryption: {
    #             speke_key_provider: { # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           hls_manifests: [ # required
    #             {
    #               ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #               include_iframe_only_stream: false,
    #               manifest_name: "__string",
    #               program_date_time_interval_seconds: 1,
    #               repeat_ext_x_key: false,
    #               stream_selection: {
    #                 max_video_bits_per_second: 1,
    #                 min_video_bits_per_second: 1,
    #                 stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #               },
    #             },
    #           ],
    #           segment_duration_seconds: 1,
    #         },
    #         dash_package: {
    #           dash_manifests: [ # required
    #             {
    #               manifest_name: "__string",
    #               min_buffer_time_seconds: 1,
    #               profile: "NONE", # accepts NONE, HBBTV_1_5
    #               stream_selection: {
    #                 max_video_bits_per_second: 1,
    #                 min_video_bits_per_second: 1,
    #                 stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #               },
    #             },
    #           ],
    #           encryption: {
    #             speke_key_provider: { # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           segment_duration_seconds: 1,
    #         },
    #         hls_package: {
    #           encryption: {
    #             encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #             speke_key_provider: { # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           hls_manifests: [ # required
    #             {
    #               ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #               include_iframe_only_stream: false,
    #               manifest_name: "__string",
    #               program_date_time_interval_seconds: 1,
    #               repeat_ext_x_key: false,
    #               stream_selection: {
    #                 max_video_bits_per_second: 1,
    #                 min_video_bits_per_second: 1,
    #                 stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #               },
    #             },
    #           ],
    #           segment_duration_seconds: 1,
    #           use_audio_rendition_group: false,
    #         },
    #         id: "__string", # required
    #         mss_package: {
    #           encryption: {
    #             speke_key_provider: { # required
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             },
    #           },
    #           mss_manifests: [ # required
    #             {
    #               manifest_name: "__string",
    #               stream_selection: {
    #                 max_video_bits_per_second: 1,
    #                 min_video_bits_per_second: 1,
    #                 stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #               },
    #             },
    #           ],
    #           segment_duration_seconds: 1,
    #         },
    #         packaging_group_id: "__string", # required
    #       }
    #
    # @!attribute [rw] cmaf_package
    #   A CMAF packaging configuration.
    #   @return [Types::CmafPackage]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] packaging_group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingConfigurationRequest AWS API Documentation
    #
    class CreatePackagingConfigurationRequest < Struct.new(
      :cmaf_package,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] cmaf_package
    #   A CMAF packaging configuration.
    #   @return [Types::CmafPackage]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] packaging_group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingConfigurationResponse AWS API Documentation
    #
    class CreatePackagingConfigurationResponse < Struct.new(
      :arn,
      :cmaf_package,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePackagingGroupRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingGroupRequest AWS API Documentation
    #
    class CreatePackagingGroupRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingGroupResponse AWS API Documentation
    #
    class CreatePackagingGroupResponse < Struct.new(
      :arn,
      :id)
      include Aws::Structure
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) encryption
    # configuration.
    #
    # @note When making an API call, you may pass DashEncryption
    #   data as a hash:
    #
    #       {
    #         speke_key_provider: { # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DashEncryption AWS API Documentation
    #
    class DashEncryption < Struct.new(
      :speke_key_provider)
      include Aws::Structure
    end

    # A DASH manifest configuration.
    #
    # @note When making an API call, you may pass DashManifest
    #   data as a hash:
    #
    #       {
    #         manifest_name: "__string",
    #         min_buffer_time_seconds: 1,
    #         profile: "NONE", # accepts NONE, HBBTV_1_5
    #         stream_selection: {
    #           max_video_bits_per_second: 1,
    #           min_video_bits_per_second: 1,
    #           stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #         },
    #       }
    #
    # @!attribute [rw] manifest_name
    #   An optional string to include in the name of the manifest.
    #   @return [String]
    #
    # @!attribute [rw] min_buffer_time_seconds
    #   Minimum duration (in seconds) that a player will buffer media before
    #   starting the presentation.
    #   @return [Integer]
    #
    # @!attribute [rw] profile
    #   The Dynamic Adaptive Streaming over HTTP (DASH) profile type. When
    #   set to "HBBTV\_1\_5", HbbTV 1.5 compliant output is enabled.
    #   @return [String]
    #
    # @!attribute [rw] stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DashManifest AWS API Documentation
    #
    class DashManifest < Struct.new(
      :manifest_name,
      :min_buffer_time_seconds,
      :profile,
      :stream_selection)
      include Aws::Structure
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @note When making an API call, you may pass DashPackage
    #   data as a hash:
    #
    #       {
    #         dash_manifests: [ # required
    #           {
    #             manifest_name: "__string",
    #             min_buffer_time_seconds: 1,
    #             profile: "NONE", # accepts NONE, HBBTV_1_5
    #             stream_selection: {
    #               max_video_bits_per_second: 1,
    #               min_video_bits_per_second: 1,
    #               stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #             },
    #           },
    #         ],
    #         encryption: {
    #           speke_key_provider: { # required
    #             role_arn: "__string", # required
    #             system_ids: ["__string"], # required
    #             url: "__string", # required
    #           },
    #         },
    #         segment_duration_seconds: 1,
    #       }
    #
    # @!attribute [rw] dash_manifests
    #   A list of DASH manifest configurations.
    #   @return [Array<Types::DashManifest>]
    #
    # @!attribute [rw] encryption
    #   A Dynamic Adaptive Streaming over HTTP (DASH) encryption
    #   configuration.
    #   @return [Types::DashEncryption]
    #
    # @!attribute [rw] segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DashPackage AWS API Documentation
    #
    class DashPackage < Struct.new(
      :dash_manifests,
      :encryption,
      :segment_duration_seconds)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAssetRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeleteAssetRequest AWS API Documentation
    #
    class DeleteAssetRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeleteAssetResponse AWS API Documentation
    #
    class DeleteAssetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeletePackagingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingConfigurationRequest AWS API Documentation
    #
    class DeletePackagingConfigurationRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingConfigurationResponse AWS API Documentation
    #
    class DeletePackagingConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeletePackagingGroupRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingGroupRequest AWS API Documentation
    #
    class DeletePackagingGroupRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingGroupResponse AWS API Documentation
    #
    class DeletePackagingGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeAssetRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribeAssetRequest AWS API Documentation
    #
    class DescribeAssetRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] egress_endpoints
    #   @return [Array<Types::EgressEndpoint>]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] packaging_group_id
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   @return [String]
    #
    # @!attribute [rw] source_role_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribeAssetResponse AWS API Documentation
    #
    class DescribeAssetResponse < Struct.new(
      :arn,
      :egress_endpoints,
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePackagingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingConfigurationRequest AWS API Documentation
    #
    class DescribePackagingConfigurationRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] cmaf_package
    #   A CMAF packaging configuration.
    #   @return [Types::CmafPackage]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] packaging_group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingConfigurationResponse AWS API Documentation
    #
    class DescribePackagingConfigurationResponse < Struct.new(
      :arn,
      :cmaf_package,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePackagingGroupRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingGroupRequest AWS API Documentation
    #
    class DescribePackagingGroupRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingGroupResponse AWS API Documentation
    #
    class DescribePackagingGroupResponse < Struct.new(
      :arn,
      :id)
      include Aws::Structure
    end

    # The endpoint URL used to access an Asset using one
    # PackagingConfiguration.
    #
    # @!attribute [rw] packaging_configuration_id
    #   The ID of the PackagingConfiguration being applied to the Asset.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the parent manifest for the repackaged Asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/EgressEndpoint AWS API Documentation
    #
    class EgressEndpoint < Struct.new(
      :packaging_configuration_id,
      :url)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      include Aws::Structure
    end

    # An HTTP Live Streaming (HLS) encryption configuration.
    #
    # @note When making an API call, you may pass HlsEncryption
    #   data as a hash:
    #
    #       {
    #         encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #         speke_key_provider: { # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       }
    #
    # @!attribute [rw] encryption_method
    #   The encryption method to use.
    #   @return [String]
    #
    # @!attribute [rw] speke_key_provider
    #   A configuration for accessing an external Secure Packager and
    #   Encoder Key Exchange (SPEKE) service that will provide encryption
    #   keys.
    #   @return [Types::SpekeKeyProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/HlsEncryption AWS API Documentation
    #
    class HlsEncryption < Struct.new(
      :encryption_method,
      :speke_key_provider)
      include Aws::Structure
    end

    # An HTTP Live Streaming (HLS) manifest configuration.
    #
    # @note When making an API call, you may pass HlsManifest
    #   data as a hash:
    #
    #       {
    #         ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #         include_iframe_only_stream: false,
    #         manifest_name: "__string",
    #         program_date_time_interval_seconds: 1,
    #         repeat_ext_x_key: false,
    #         stream_selection: {
    #           max_video_bits_per_second: 1,
    #           min_video_bits_per_second: 1,
    #           stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #         },
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
    # @!attribute [rw] include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #   @return [Boolean]
    #
    # @!attribute [rw] manifest_name
    #   An optional string to include in the name of the manifest.
    #   @return [String]
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
    # @!attribute [rw] repeat_ext_x_key
    #   When enabled, the EXT-X-KEY tag will be repeated in output
    #   manifests.
    #   @return [Boolean]
    #
    # @!attribute [rw] stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/HlsManifest AWS API Documentation
    #
    class HlsManifest < Struct.new(
      :ad_markers,
      :include_iframe_only_stream,
      :manifest_name,
      :program_date_time_interval_seconds,
      :repeat_ext_x_key,
      :stream_selection)
      include Aws::Structure
    end

    # An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @note When making an API call, you may pass HlsPackage
    #   data as a hash:
    #
    #       {
    #         encryption: {
    #           encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #           speke_key_provider: { # required
    #             role_arn: "__string", # required
    #             system_ids: ["__string"], # required
    #             url: "__string", # required
    #           },
    #         },
    #         hls_manifests: [ # required
    #           {
    #             ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #             include_iframe_only_stream: false,
    #             manifest_name: "__string",
    #             program_date_time_interval_seconds: 1,
    #             repeat_ext_x_key: false,
    #             stream_selection: {
    #               max_video_bits_per_second: 1,
    #               min_video_bits_per_second: 1,
    #               stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #             },
    #           },
    #         ],
    #         segment_duration_seconds: 1,
    #         use_audio_rendition_group: false,
    #       }
    #
    # @!attribute [rw] encryption
    #   An HTTP Live Streaming (HLS) encryption configuration.
    #   @return [Types::HlsEncryption]
    #
    # @!attribute [rw] hls_manifests
    #   A list of HLS manifest configurations.
    #   @return [Array<Types::HlsManifest>]
    #
    # @!attribute [rw] segment_duration_seconds
    #   Duration (in seconds) of each fragment. Actual fragments will be
    #   rounded to the nearest multiple of the source fragment duration.
    #   @return [Integer]
    #
    # @!attribute [rw] use_audio_rendition_group
    #   When enabled, audio streams will be placed in rendition groups in
    #   the output.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/HlsPackage AWS API Documentation
    #
    class HlsPackage < Struct.new(
      :encryption,
      :hls_manifests,
      :segment_duration_seconds,
      :use_audio_rendition_group)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssetsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         packaging_group_id: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] packaging_group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListAssetsRequest AWS API Documentation
    #
    class ListAssetsRequest < Struct.new(
      :max_results,
      :next_token,
      :packaging_group_id)
      include Aws::Structure
    end

    # @!attribute [rw] assets
    #   @return [Array<Types::AssetShallow>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListAssetsResponse AWS API Documentation
    #
    class ListAssetsResponse < Struct.new(
      :assets,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPackagingConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         packaging_group_id: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] packaging_group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListPackagingConfigurationsRequest AWS API Documentation
    #
    class ListPackagingConfigurationsRequest < Struct.new(
      :max_results,
      :next_token,
      :packaging_group_id)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] packaging_configurations
    #   @return [Array<Types::PackagingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListPackagingConfigurationsResponse AWS API Documentation
    #
    class ListPackagingConfigurationsResponse < Struct.new(
      :next_token,
      :packaging_configurations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPackagingGroupsRequest
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListPackagingGroupsRequest AWS API Documentation
    #
    class ListPackagingGroupsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] packaging_groups
    #   @return [Array<Types::PackagingGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListPackagingGroupsResponse AWS API Documentation
    #
    class ListPackagingGroupsResponse < Struct.new(
      :next_token,
      :packaging_groups)
      include Aws::Structure
    end

    # A Microsoft Smooth Streaming (MSS) encryption configuration.
    #
    # @note When making an API call, you may pass MssEncryption
    #   data as a hash:
    #
    #       {
    #         speke_key_provider: { # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/MssEncryption AWS API Documentation
    #
    class MssEncryption < Struct.new(
      :speke_key_provider)
      include Aws::Structure
    end

    # A Microsoft Smooth Streaming (MSS) manifest configuration.
    #
    # @note When making an API call, you may pass MssManifest
    #   data as a hash:
    #
    #       {
    #         manifest_name: "__string",
    #         stream_selection: {
    #           max_video_bits_per_second: 1,
    #           min_video_bits_per_second: 1,
    #           stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #         },
    #       }
    #
    # @!attribute [rw] manifest_name
    #   An optional string to include in the name of the manifest.
    #   @return [String]
    #
    # @!attribute [rw] stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/MssManifest AWS API Documentation
    #
    class MssManifest < Struct.new(
      :manifest_name,
      :stream_selection)
      include Aws::Structure
    end

    # A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #
    # @note When making an API call, you may pass MssPackage
    #   data as a hash:
    #
    #       {
    #         encryption: {
    #           speke_key_provider: { # required
    #             role_arn: "__string", # required
    #             system_ids: ["__string"], # required
    #             url: "__string", # required
    #           },
    #         },
    #         mss_manifests: [ # required
    #           {
    #             manifest_name: "__string",
    #             stream_selection: {
    #               max_video_bits_per_second: 1,
    #               min_video_bits_per_second: 1,
    #               stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #             },
    #           },
    #         ],
    #         segment_duration_seconds: 1,
    #       }
    #
    # @!attribute [rw] encryption
    #   A Microsoft Smooth Streaming (MSS) encryption configuration.
    #   @return [Types::MssEncryption]
    #
    # @!attribute [rw] mss_manifests
    #   A list of MSS manifest configurations.
    #   @return [Array<Types::MssManifest>]
    #
    # @!attribute [rw] segment_duration_seconds
    #   The duration (in seconds) of each segment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/MssPackage AWS API Documentation
    #
    class MssPackage < Struct.new(
      :encryption,
      :mss_manifests,
      :segment_duration_seconds)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A MediaPackage VOD PackagingConfiguration resource.
    #
    # @!attribute [rw] arn
    #   The ARN of the PackagingConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] cmaf_package
    #   A CMAF packaging configuration.
    #   @return [Types::CmafPackage]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   The ID of the PackagingConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] packaging_group_id
    #   The ID of a PackagingGroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/PackagingConfiguration AWS API Documentation
    #
    class PackagingConfiguration < Struct.new(
      :arn,
      :cmaf_package,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id)
      include Aws::Structure
    end

    # Parameters used to create a new MediaPackage VOD
    # PackagingConfiguration resource.
    #
    # @!attribute [rw] cmaf_package
    #   A CMAF packaging configuration.
    #   @return [Types::CmafPackage]
    #
    # @!attribute [rw] dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging
    #   configuration.
    #   @return [Types::DashPackage]
    #
    # @!attribute [rw] hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    #
    # @!attribute [rw] id
    #   The ID of the PackagingConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #   @return [Types::MssPackage]
    #
    # @!attribute [rw] packaging_group_id
    #   The ID of a PackagingGroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/PackagingConfigurationCreateParameters AWS API Documentation
    #
    class PackagingConfigurationCreateParameters < Struct.new(
      :cmaf_package,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id)
      include Aws::Structure
    end

    # A collection of MediaPackage VOD PackagingConfiguration resources.
    #
    # @!attribute [rw] next_token
    #   A token that can be used to resume pagination from the end of the
    #   collection.
    #   @return [String]
    #
    # @!attribute [rw] packaging_configurations
    #   A list of MediaPackage VOD PackagingConfiguration resources.
    #   @return [Array<Types::PackagingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/PackagingConfigurationList AWS API Documentation
    #
    class PackagingConfigurationList < Struct.new(
      :next_token,
      :packaging_configurations)
      include Aws::Structure
    end

    # A MediaPackage VOD PackagingGroup resource.
    #
    # @!attribute [rw] arn
    #   The ARN of the PackagingGroup.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the PackagingGroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/PackagingGroup AWS API Documentation
    #
    class PackagingGroup < Struct.new(
      :arn,
      :id)
      include Aws::Structure
    end

    # Parameters used to create a new MediaPackage VOD PackagingGroup
    # resource.
    #
    # @!attribute [rw] id
    #   The ID of the PackagingGroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/PackagingGroupCreateParameters AWS API Documentation
    #
    class PackagingGroupCreateParameters < Struct.new(
      :id)
      include Aws::Structure
    end

    # A collection of MediaPackage VOD PackagingGroup resources.
    #
    # @!attribute [rw] next_token
    #   A token that can be used to resume pagination from the end of the
    #   collection.
    #   @return [String]
    #
    # @!attribute [rw] packaging_groups
    #   A list of MediaPackage VOD PackagingGroup resources.
    #   @return [Array<Types::PackagingGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/PackagingGroupList AWS API Documentation
    #
    class PackagingGroupList < Struct.new(
      :next_token,
      :packaging_groups)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A configuration for accessing an external Secure Packager and Encoder
    # Key Exchange (SPEKE) service that will provide encryption keys.
    #
    # @note When making an API call, you may pass SpekeKeyProvider
    #   data as a hash:
    #
    #       {
    #         role_arn: "__string", # required
    #         system_ids: ["__string"], # required
    #         url: "__string", # required
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/SpekeKeyProvider AWS API Documentation
    #
    class SpekeKeyProvider < Struct.new(
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/StreamSelection AWS API Documentation
    #
    class StreamSelection < Struct.new(
      :max_video_bits_per_second,
      :min_video_bits_per_second,
      :stream_order)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/UnprocessableEntityException AWS API Documentation
    #
    class UnprocessableEntityException < Struct.new(
      :message)
      include Aws::Structure
    end

  end
end
