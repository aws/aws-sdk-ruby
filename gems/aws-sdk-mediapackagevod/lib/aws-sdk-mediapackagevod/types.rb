# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
    # @!attribute [rw] created_at
    #   The time the Asset was initially submitted for Ingest.
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
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/Asset AWS API Documentation
    #
    class Asset < Struct.new(
      :arn,
      :created_at,
      :egress_endpoints,
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn,
      :tags)
      SENSITIVE = []
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
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/AssetCreateParameters AWS API Documentation
    #
    class AssetCreateParameters < Struct.new(
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A MediaPackage VOD Asset resource.
    #
    # @!attribute [rw] arn
    #   The ARN of the Asset.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time the Asset was initially submitted for Ingest.
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
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/AssetShallow AWS API Documentation
    #
    class AssetShallow < Struct.new(
      :arn,
      :created_at,
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # CDN Authorization credentials
    #
    # @!attribute [rw] cdn_identifier_secret
    #   The Amazon Resource Name (ARN) for the secret in AWS Secrets Manager
    #   that is used for CDN authorization.
    #   @return [String]
    #
    # @!attribute [rw] secrets_role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that allows
    #   MediaPackage to communicate with AWS Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/Authorization AWS API Documentation
    #
    class Authorization < Struct.new(
      :cdn_identifier_secret,
      :secrets_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CMAF encryption configuration.
    #
    # @!attribute [rw] constant_initialization_vector
    #   An optional 128-bit, 16-byte hex value represented by a 32-character
    #   string, used in conjunction with the key for encrypting blocks. If
    #   you don't specify a value, then MediaPackage creates the constant
    #   initialization vector (IV).
    #   @return [String]
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
      :constant_initialization_vector,
      :speke_key_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CMAF packaging configuration.
    #
    # @!attribute [rw] encryption
    #   A CMAF encryption configuration.
    #   @return [Types::CmafEncryption]
    #
    # @!attribute [rw] hls_manifests
    #   A list of HLS manifest configurations.
    #   @return [Array<Types::HlsManifest>]
    #
    # @!attribute [rw] include_encoder_configuration_in_segments
    #   When includeEncoderConfigurationInSegments is set to true,
    #   MediaPackage places your encoder's Sequence Parameter Set (SPS),
    #   Picture Parameter Set (PPS), and Video Parameter Set (VPS) metadata
    #   in every video segment instead of in the init fragment. This lets
    #   you use different SPS/PPS/VPS settings for your assets during
    #   content playback.
    #   @return [Boolean]
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
      :include_encoder_configuration_in_segments,
      :segment_duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration parameters for egress access logging.
    #
    # @!attribute [rw] egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ConfigureLogsParameters AWS API Documentation
    #
    class ConfigureLogsParameters < Struct.new(
      :egress_access_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ConfigureLogsRequest AWS API Documentation
    #
    class ConfigureLogsRequest < Struct.new(
      :egress_access_logs,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] created_at
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ConfigureLogsResponse AWS API Documentation
    #
    class ConfigureLogsResponse < Struct.new(
      :arn,
      :authorization,
      :created_at,
      :domain_name,
      :egress_access_logs,
      :id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreateAssetRequest AWS API Documentation
    #
    class CreateAssetRequest < Struct.new(
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created_at
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
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreateAssetResponse AWS API Documentation
    #
    class CreateAssetResponse < Struct.new(
      :arn,
      :created_at,
      :egress_endpoints,
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingConfigurationRequest AWS API Documentation
    #
    class CreatePackagingConfigurationRequest < Struct.new(
      :cmaf_package,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] cmaf_package
    #   A CMAF packaging configuration.
    #   @return [Types::CmafPackage]
    #
    # @!attribute [rw] created_at
    #   @return [String]
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
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingConfigurationResponse AWS API Documentation
    #
    class CreatePackagingConfigurationResponse < Struct.new(
      :arn,
      :cmaf_package,
      :created_at,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingGroupRequest AWS API Documentation
    #
    class CreatePackagingGroupRequest < Struct.new(
      :authorization,
      :egress_access_logs,
      :id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] created_at
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingGroupResponse AWS API Documentation
    #
    class CreatePackagingGroupResponse < Struct.new(
      :arn,
      :authorization,
      :created_at,
      :domain_name,
      :egress_access_logs,
      :id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) encryption
    # configuration.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A DASH manifest configuration.
    #
    # @!attribute [rw] manifest_layout
    #   Determines the position of some tags in the Media Presentation
    #   Description (MPD). When set to FULL, elements like SegmentTemplate
    #   and ContentProtection are included in each Representation. When set
    #   to COMPACT, duplicate elements are combined and presented at the
    #   AdaptationSet level.
    #   @return [String]
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
    # @!attribute [rw] scte_markers_source
    #   The source of scte markers used. When set to SEGMENTS, the scte
    #   markers are sourced from the segments of the ingested content. When
    #   set to MANIFEST, the scte markers are sourced from the manifest of
    #   the ingested content.
    #   @return [String]
    #
    # @!attribute [rw] stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DashManifest AWS API Documentation
    #
    class DashManifest < Struct.new(
      :manifest_layout,
      :manifest_name,
      :min_buffer_time_seconds,
      :profile,
      :scte_markers_source,
      :stream_selection)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
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
    # @!attribute [rw] include_encoder_configuration_in_segments
    #   When includeEncoderConfigurationInSegments is set to true,
    #   MediaPackage places your encoder's Sequence Parameter Set (SPS),
    #   Picture Parameter Set (PPS), and Video Parameter Set (VPS) metadata
    #   in every video segment instead of in the init fragment. This lets
    #   you use different SPS/PPS/VPS settings for your assets during
    #   content playback.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #   @return [Boolean]
    #
    # @!attribute [rw] period_triggers
    #   A list of triggers that controls when the outgoing Dynamic Adaptive
    #   Streaming over HTTP (DASH) Media Presentation Description (MPD) will
    #   be partitioned into multiple periods. If empty, the content will not
    #   be partitioned into more than one period. If the list contains
    #   "ADS", new periods will be created where the Asset contains
    #   SCTE-35 ad markers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_template_format
    #   Determines the type of SegmentTemplate included in the Media
    #   Presentation Description (MPD). When set to NUMBER\_WITH\_TIMELINE,
    #   a full timeline is presented in each SegmentTemplate, with $Number$
    #   media URLs. When set to TIME\_WITH\_TIMELINE, a full timeline is
    #   presented in each SegmentTemplate, with $Time$ media URLs. When set
    #   to NUMBER\_WITH\_DURATION, only a duration is included in each
    #   SegmentTemplate, with $Number$ media URLs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DashPackage AWS API Documentation
    #
    class DashPackage < Struct.new(
      :dash_manifests,
      :encryption,
      :include_encoder_configuration_in_segments,
      :include_iframe_only_stream,
      :period_triggers,
      :segment_duration_seconds,
      :segment_template_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeleteAssetRequest AWS API Documentation
    #
    class DeleteAssetRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeleteAssetResponse AWS API Documentation
    #
    class DeleteAssetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingConfigurationRequest AWS API Documentation
    #
    class DeletePackagingConfigurationRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingConfigurationResponse AWS API Documentation
    #
    class DeletePackagingConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingGroupRequest AWS API Documentation
    #
    class DeletePackagingGroupRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingGroupResponse AWS API Documentation
    #
    class DeletePackagingGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribeAssetRequest AWS API Documentation
    #
    class DescribeAssetRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created_at
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
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribeAssetResponse AWS API Documentation
    #
    class DescribeAssetResponse < Struct.new(
      :arn,
      :created_at,
      :egress_endpoints,
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingConfigurationRequest AWS API Documentation
    #
    class DescribePackagingConfigurationRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] cmaf_package
    #   A CMAF packaging configuration.
    #   @return [Types::CmafPackage]
    #
    # @!attribute [rw] created_at
    #   @return [String]
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
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingConfigurationResponse AWS API Documentation
    #
    class DescribePackagingConfigurationResponse < Struct.new(
      :arn,
      :cmaf_package,
      :created_at,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingGroupRequest AWS API Documentation
    #
    class DescribePackagingGroupRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approximate_asset_count
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] created_at
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingGroupResponse AWS API Documentation
    #
    class DescribePackagingGroupResponse < Struct.new(
      :approximate_asset_count,
      :arn,
      :authorization,
      :created_at,
      :domain_name,
      :egress_access_logs,
      :id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configure egress access logging.
    #
    # @!attribute [rw] log_group_name
    #   Customize the log group name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/EgressAccessLogs AWS API Documentation
    #
    class EgressAccessLogs < Struct.new(
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint URL used to access an Asset using one
    # PackagingConfiguration.
    #
    # @!attribute [rw] packaging_configuration_id
    #   The ID of the PackagingConfiguration being applied to the Asset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current processing status of the asset used for the packaging
    #   configuration. The status can be either QUEUED, PROCESSING,
    #   PLAYABLE, or FAILED. Status information won't be available for most
    #   assets ingested before 2021-09-30.
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
      :status,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use encryptionContractConfiguration to configure one or more content
    # encryption keys for your endpoints that use SPEKE 2.0. The encryption
    # contract defines which content keys are used to encrypt the audio and
    # video tracks in your stream. To configure the encryption contract,
    # specify which audio and video encryption presets to use. Note the
    # following considerations when using encryptionContractConfiguration:
    # encryptionContractConfiguration can be used for DASH endpoints that
    # use SPEKE 2.0. SPEKE 2.0 relies on the CPIX 2.3 specification. You
    # must disable key rotation for this endpoint by setting
    # keyRotationIntervalSeconds to 0.
    #
    # @!attribute [rw] preset_speke_20_audio
    #   A collection of audio encryption presets.
    #   @return [String]
    #
    # @!attribute [rw] preset_speke_20_video
    #   A collection of video encryption presets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/EncryptionContractConfiguration AWS API Documentation
    #
    class EncryptionContractConfiguration < Struct.new(
      :preset_speke_20_audio,
      :preset_speke_20_video)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP Live Streaming (HLS) encryption configuration.
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
    # @!attribute [rw] speke_key_provider
    #   A configuration for accessing an external Secure Packager and
    #   Encoder Key Exchange (SPEKE) service that will provide encryption
    #   keys.
    #   @return [Types::SpekeKeyProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/HlsEncryption AWS API Documentation
    #
    class HlsEncryption < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :speke_key_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP Live Streaming (HLS) manifest configuration.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @!attribute [rw] encryption
    #   An HTTP Live Streaming (HLS) encryption configuration.
    #   @return [Types::HlsEncryption]
    #
    # @!attribute [rw] hls_manifests
    #   A list of HLS manifest configurations.
    #   @return [Array<Types::HlsManifest>]
    #
    # @!attribute [rw] include_dvb_subtitles
    #   When enabled, MediaPackage passes through digital video broadcasting
    #   (DVB) subtitles into the output.
    #   @return [Boolean]
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
      :include_dvb_subtitles,
      :segment_duration_seconds,
      :use_audio_rendition_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Microsoft Smooth Streaming (MSS) encryption configuration.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A Microsoft Smooth Streaming (MSS) manifest configuration.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
    # @!attribute [rw] created_at
    #   The time the PackagingConfiguration was created.
    #   @return [String]
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
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/PackagingConfiguration AWS API Documentation
    #
    class PackagingConfiguration < Struct.new(
      :arn,
      :cmaf_package,
      :created_at,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id,
      :tags)
      SENSITIVE = []
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
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/PackagingConfigurationCreateParameters AWS API Documentation
    #
    class PackagingConfigurationCreateParameters < Struct.new(
      :cmaf_package,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A MediaPackage VOD PackagingGroup resource.
    #
    # @!attribute [rw] approximate_asset_count
    #   The approximate asset count of the PackagingGroup.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The ARN of the PackagingGroup.
    #   @return [String]
    #
    # @!attribute [rw] authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] created_at
    #   The time the PackagingGroup was created.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name for Assets in the PackagingGroup.
    #   @return [String]
    #
    # @!attribute [rw] egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    #
    # @!attribute [rw] id
    #   The ID of the PackagingGroup.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/PackagingGroup AWS API Documentation
    #
    class PackagingGroup < Struct.new(
      :approximate_asset_count,
      :arn,
      :authorization,
      :created_at,
      :domain_name,
      :egress_access_logs,
      :id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters used to create a new MediaPackage VOD PackagingGroup
    # resource.
    #
    # @!attribute [rw] authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    #
    # @!attribute [rw] id
    #   The ID of the PackagingGroup.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/PackagingGroupCreateParameters AWS API Documentation
    #
    class PackagingGroupCreateParameters < Struct.new(
      :authorization,
      :egress_access_logs,
      :id,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters used to update a MediaPackage packaging group.
    #
    # @!attribute [rw] authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/PackagingGroupUpdateParameters AWS API Documentation
    #
    class PackagingGroupUpdateParameters < Struct.new(
      :authorization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for accessing an external Secure Packager and Encoder
    # Key Exchange (SPEKE) service that will provide encryption keys.
    #
    # @!attribute [rw] encryption_contract_configuration
    #   Use encryptionContractConfiguration to configure one or more content
    #   encryption keys for your endpoints that use SPEKE 2.0. The
    #   encryption contract defines which content keys are used to encrypt
    #   the audio and video tracks in your stream. To configure the
    #   encryption contract, specify which audio and video encryption
    #   presets to use. Note the following considerations when using
    #   encryptionContractConfiguration: encryptionContractConfiguration can
    #   be used for DASH endpoints that use SPEKE 2.0. SPEKE 2.0 relies on
    #   the CPIX 2.3 specification. You must disable key rotation for this
    #   endpoint by setting keyRotationIntervalSeconds to 0.
    #   @return [Types::EncryptionContractConfiguration]
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
      :encryption_contract_configuration,
      :role_arn,
      :system_ids,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A StreamSelection configuration.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/TagsModel AWS API Documentation
    #
    class TagsModel < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/UnprocessableEntityException AWS API Documentation
    #
    class UnprocessableEntityException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/UpdatePackagingGroupRequest AWS API Documentation
    #
    class UpdatePackagingGroupRequest < Struct.new(
      :authorization,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approximate_asset_count
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    #
    # @!attribute [rw] created_at
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/UpdatePackagingGroupResponse AWS API Documentation
    #
    class UpdatePackagingGroupResponse < Struct.new(
      :approximate_asset_count,
      :arn,
      :authorization,
      :created_at,
      :domain_name,
      :egress_access_logs,
      :id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
