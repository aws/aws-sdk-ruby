# frozen_string_literal: true

# This is generated code!

module Aws::MediaPackageVod
  # This module contains the types returned by client operations.
  module Types

    module AdMarkers
      NONE = 'NONE'
      SCTE35_ENHANCED = 'SCTE35_ENHANCED'
      PASSTHROUGH = 'PASSTHROUGH'
    end

    # A MediaPackage VOD Asset resource.
    # @!attribute arn
    #   The ARN of the Asset.
    #   @return [String]
    # @!attribute created_at
    #   The time the Asset was initially submitted for Ingest.
    #   @return [String]
    # @!attribute id
    #   The unique identifier for the Asset.
    #   @return [String]
    # @!attribute packaging_group_id
    #   The ID of the PackagingGroup for the Asset.
    #   @return [String]
    # @!attribute resource_id
    #   The resource ID to include in SPEKE key requests.
    #   @return [String]
    # @!attribute source_arn
    #   ARN of the source object in S3.
    #   @return [String]
    # @!attribute source_role_arn
    #   The IAM role ARN used to access the source S3 bucket.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class AssetShallow < Struct.new(
      :arn,
      :created_at,
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # CDN Authorization credentials
    # @!attribute cdn_identifier_secret
    #   The Amazon Resource Name (ARN) for the secret in AWS Secrets Manager that is used for CDN authorization.
    #   @return [String]
    # @!attribute secrets_role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager.
    #   @return [String]
    class Authorization < Struct.new(
      :cdn_identifier_secret,
      :secrets_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A CMAF encryption configuration.
    # @!attribute constant_initialization_vector
    #   An optional 128-bit, 16-byte hex value represented by a 32-character string, used in conjunction with the key for encrypting blocks. If you don't specify a value, then MediaPackage creates the constant initialization vector (IV).
    #   @return [String]
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #   @return [Types::SpekeKeyProvider]
    class CmafEncryption < Struct.new(
      :constant_initialization_vector,
      :speke_key_provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A CMAF packaging configuration.
    # @!attribute encryption
    #   A CMAF encryption configuration.
    #   @return [Types::CmafEncryption]
    # @!attribute hls_manifests
    #   A list of HLS manifest configurations.
    #   @return [Array<Types::HlsManifest>]
    # @!attribute include_encoder_configuration_in_segments
    #   When includeEncoderConfigurationInSegments is set to true, MediaPackage places your encoder's Sequence Parameter Set (SPS), Picture Parameter Set (PPS), and Video Parameter Set (VPS) metadata in every video segment instead of in the init fragment. This lets you use different SPS/PPS/VPS settings for your assets during content playback.
    #   @return [Boolean]
    # @!attribute segment_duration_seconds
    #   Duration (in seconds) of each fragment. Actual fragments will be
    #   rounded to the nearest multiple of the source fragment duration.
    #   @return [Integer]
    class CmafPackage < Struct.new(
      :encryption,
      :hls_manifests,
      :include_encoder_configuration_in_segments,
      :segment_duration_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The option to configure log subscription.
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute id
    #   The ID of a MediaPackage VOD PackagingGroup resource.
    #   @return [String]
    class ConfigureLogsRequest < Struct.new(
      :egress_access_logs,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the PackagingGroup.
    #   @return [String]
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute created_at
    #   The time the PackagingGroup was created.
    #   @return [String]
    # @!attribute domain_name
    #   The fully qualified domain name for Assets in the PackagingGroup.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute id
    #   The ID of the PackagingGroup.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class ConfigureLogsResponse < Struct.new(
      :arn,
      :authorization,
      :created_at,
      :domain_name,
      :egress_access_logs,
      :id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A new MediaPackage VOD Asset configuration.
    # @!attribute id
    #   The unique identifier for the Asset.
    #   @return [String]
    # @!attribute packaging_group_id
    #   The ID of the PackagingGroup for the Asset.
    #   @return [String]
    # @!attribute resource_id
    #   The resource ID to include in SPEKE key requests.
    #   @return [String]
    # @!attribute source_arn
    #   ARN of the source object in S3.
    #   @return [String]
    # @!attribute source_role_arn
    #   The IAM role ARN used to access the source S3 bucket.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class CreateAssetRequest < Struct.new(
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the Asset.
    #   @return [String]
    # @!attribute created_at
    #   The time the Asset was initially submitted for Ingest.
    #   @return [String]
    # @!attribute egress_endpoints
    #   The list of egress endpoints available for the Asset.
    #   @return [Array<Types::EgressEndpoint>]
    # @!attribute id
    #   The unique identifier for the Asset.
    #   @return [String]
    # @!attribute packaging_group_id
    #   The ID of the PackagingGroup for the Asset.
    #   @return [String]
    # @!attribute resource_id
    #   The resource ID to include in SPEKE key requests.
    #   @return [String]
    # @!attribute source_arn
    #   ARN of the source object in S3.
    #   @return [String]
    # @!attribute source_role_arn
    #   The IAM role_arn used to access the source S3 bucket.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class CreateAssetResponse < Struct.new(
      :arn,
      :created_at,
      :egress_endpoints,
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A new MediaPackage VOD PackagingConfiguration resource configuration.
    # @!attribute cmaf_package
    #   A CMAF packaging configuration.
    #   @return [Types::CmafPackage]
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #   @return [Types::DashPackage]
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    # @!attribute id
    #   The ID of the PackagingConfiguration.
    #   @return [String]
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #   @return [Types::MssPackage]
    # @!attribute packaging_group_id
    #   The ID of a PackagingGroup.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class CreatePackagingConfigurationRequest < Struct.new(
      :cmaf_package,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the PackagingConfiguration.
    #   @return [String]
    # @!attribute cmaf_package
    #   A CMAF packaging configuration.
    #   @return [Types::CmafPackage]
    # @!attribute created_at
    #   The time the PackagingConfiguration was created.
    #   @return [String]
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #   @return [Types::DashPackage]
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    # @!attribute id
    #   The ID of the PackagingConfiguration.
    #   @return [String]
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #   @return [Types::MssPackage]
    # @!attribute packaging_group_id
    #   The ID of a PackagingGroup.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class CreatePackagingConfigurationResponse < Struct.new(
      :arn,
      :cmaf_package,
      :created_at,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A new MediaPackage VOD PackagingGroup resource configuration.
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute id
    #   The ID of the PackagingGroup.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class CreatePackagingGroupRequest < Struct.new(
      :authorization,
      :egress_access_logs,
      :id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the PackagingGroup.
    #   @return [String]
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute created_at
    #   The time the PackagingGroup was created.
    #   @return [String]
    # @!attribute domain_name
    #   The fully qualified domain name for Assets in the PackagingGroup.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute id
    #   The ID of the PackagingGroup.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class CreatePackagingGroupResponse < Struct.new(
      :arn,
      :authorization,
      :created_at,
      :domain_name,
      :egress_access_logs,
      :id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #   @return [Types::SpekeKeyProvider]
    class DashEncryption < Struct.new(
      :speke_key_provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A DASH manifest configuration.
    # @!attribute manifest_layout
    #   Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level.
    #   @return [String]
    # @!attribute manifest_name
    #   An optional string to include in the name of the manifest.
    #   @return [String]
    # @!attribute min_buffer_time_seconds
    #   Minimum duration (in seconds) that a player will buffer media before starting the presentation.
    #   @return [Integer]
    # @!attribute profile
    #   The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled.
    #   @return [String]
    # @!attribute scte_markers_source
    #   The source of scte markers used. When set to SEGMENTS, the scte markers are sourced from the segments of the ingested content. When set to MANIFEST, the scte markers are sourced from the manifest of the ingested content.
    #   @return [String]
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    class DashManifest < Struct.new(
      :manifest_layout,
      :manifest_name,
      :min_buffer_time_seconds,
      :profile,
      :scte_markers_source,
      :stream_selection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    # @!attribute dash_manifests
    #   A list of DASH manifest configurations.
    #   @return [Array<Types::DashManifest>]
    # @!attribute encryption
    #   A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.
    #   @return [Types::DashEncryption]
    # @!attribute include_encoder_configuration_in_segments
    #   When includeEncoderConfigurationInSegments is set to true, MediaPackage places your encoder's Sequence Parameter Set (SPS), Picture Parameter Set (PPS), and Video Parameter Set (VPS) metadata in every video segment instead of in the init fragment. This lets you use different SPS/PPS/VPS settings for your assets during content playback.
    #   @return [Boolean]
    # @!attribute include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #   @return [Boolean]
    # @!attribute period_triggers
    #   A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH)
    #   Media Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not
    #   be partitioned into more than one period. If the list contains "ADS", new periods will be created where
    #   the Asset contains SCTE-35 ad markers.
    #   @return [Array<String>]
    # @!attribute segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #   @return [Integer]
    # @!attribute segment_template_format
    #   Determines the type of SegmentTemplate included in the Media Presentation Description (MPD).  When set to NUMBER_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs.  When set to TIME_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to NUMBER_WITH_DURATION, only a duration is included in each SegmentTemplate, with $Number$ media URLs.
    #   @return [String]
    class DashPackage < Struct.new(
      :dash_manifests,
      :encryption,
      :include_encoder_configuration_in_segments,
      :include_iframe_only_stream,
      :period_triggers,
      :segment_duration_seconds,
      :segment_template_format,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of the MediaPackage VOD Asset resource to delete.
    #   @return [String]
    class DeleteAssetRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAssetResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of the MediaPackage VOD PackagingConfiguration resource to delete.
    #   @return [String]
    class DeletePackagingConfigurationRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeletePackagingConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of the MediaPackage VOD PackagingGroup resource to delete.
    #   @return [String]
    class DeletePackagingGroupRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeletePackagingGroupResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of an MediaPackage VOD Asset resource.
    #   @return [String]
    class DescribeAssetRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the Asset.
    #   @return [String]
    # @!attribute created_at
    #   The time the Asset was initially submitted for Ingest.
    #   @return [String]
    # @!attribute egress_endpoints
    #   The list of egress endpoints available for the Asset.
    #   @return [Array<Types::EgressEndpoint>]
    # @!attribute id
    #   The unique identifier for the Asset.
    #   @return [String]
    # @!attribute packaging_group_id
    #   The ID of the PackagingGroup for the Asset.
    #   @return [String]
    # @!attribute resource_id
    #   The resource ID to include in SPEKE key requests.
    #   @return [String]
    # @!attribute source_arn
    #   ARN of the source object in S3.
    #   @return [String]
    # @!attribute source_role_arn
    #   The IAM role_arn used to access the source S3 bucket.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class DescribeAssetResponse < Struct.new(
      :arn,
      :created_at,
      :egress_endpoints,
      :id,
      :packaging_group_id,
      :resource_id,
      :source_arn,
      :source_role_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of a MediaPackage VOD PackagingConfiguration resource.
    #   @return [String]
    class DescribePackagingConfigurationRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The ARN of the PackagingConfiguration.
    #   @return [String]
    # @!attribute cmaf_package
    #   A CMAF packaging configuration.
    #   @return [Types::CmafPackage]
    # @!attribute created_at
    #   The time the PackagingConfiguration was created.
    #   @return [String]
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #   @return [Types::DashPackage]
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    # @!attribute id
    #   The ID of the PackagingConfiguration.
    #   @return [String]
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #   @return [Types::MssPackage]
    # @!attribute packaging_group_id
    #   The ID of a PackagingGroup.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class DescribePackagingConfigurationResponse < Struct.new(
      :arn,
      :cmaf_package,
      :created_at,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of a MediaPackage VOD PackagingGroup resource.
    #   @return [String]
    class DescribePackagingGroupRequest < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute approximate_asset_count
    #   The approximate asset count of the PackagingGroup.
    #   @return [Integer]
    # @!attribute arn
    #   The ARN of the PackagingGroup.
    #   @return [String]
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute created_at
    #   The time the PackagingGroup was created.
    #   @return [String]
    # @!attribute domain_name
    #   The fully qualified domain name for Assets in the PackagingGroup.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute id
    #   The ID of the PackagingGroup.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class DescribePackagingGroupResponse < Struct.new(
      :approximate_asset_count,
      :arn,
      :authorization,
      :created_at,
      :domain_name,
      :egress_access_logs,
      :id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Configure egress access logging.
    # @!attribute log_group_name
    #   Customize the log group name.
    #   @return [String]
    class EgressAccessLogs < Struct.new(
      :log_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The endpoint URL used to access an Asset using one PackagingConfiguration.
    # @!attribute packaging_configuration_id
    #   The ID of the PackagingConfiguration being applied to the Asset.
    #   @return [String]
    # @!attribute status
    #   The current processing status of the asset used for the packaging configuration. The status can be either QUEUED, PROCESSING, PLAYABLE, or FAILED. Status information won't be available for most assets ingested before 2021-09-30.
    #   @return [String]
    # @!attribute url
    #   The URL of the parent manifest for the repackaged Asset.
    #   @return [String]
    class EgressEndpoint < Struct.new(
      :packaging_configuration_id,
      :status,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Use encryptionContractConfiguration to configure one or more content encryption keys for your endpoints that use SPEKE 2.0. 
    # The encryption contract defines which content keys are used to encrypt the audio and video tracks in your stream. 
    # To configure the encryption contract, specify which audio and video encryption presets to use.
    # Note the following considerations when using encryptionContractConfiguration:
    # encryptionContractConfiguration can be used for DASH endpoints that use SPEKE 2.0. SPEKE 2.0 relies on the CPIX 2.3 specification.
    # You must disable key rotation for this endpoint by setting keyRotationIntervalSeconds to 0.
    # @!attribute preset_speke20_audio
    #   A collection of audio encryption presets.
    #   @return [String]
    # @!attribute preset_speke20_video
    #   A collection of video encryption presets.
    #   @return [String]
    class EncryptionContractConfiguration < Struct.new(
      :preset_speke20_audio,
      :preset_speke20_video,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EncryptionMethod
      AES_128 = 'AES_128'
      SAMPLE_AES = 'SAMPLE_AES'
    end

    # The client is not authorized to access the requested resource.
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # An HTTP Live Streaming (HLS) encryption configuration.
    # @!attribute constant_initialization_vector
    #   A constant initialization vector for encryption (optional).
    #   When not specified the initialization vector will be periodically rotated.
    #   @return [String]
    # @!attribute encryption_method
    #   The encryption method to use.
    #   @return [String]
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #   @return [Types::SpekeKeyProvider]
    class HlsEncryption < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :speke_key_provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # An HTTP Live Streaming (HLS) manifest configuration.
    # @!attribute ad_markers
    #   This setting controls how ad markers are included in the packaged OriginEndpoint.
    #   "NONE" will omit all SCTE-35 ad markers from the output.
    #   "PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
    #   markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
    #   "SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
    #   messages in the input source.
    #   @return [String]
    # @!attribute include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #   @return [Boolean]
    # @!attribute manifest_name
    #   An optional string to include in the name of the manifest.
    #   @return [String]
    # @!attribute program_date_time_interval_seconds
    #   The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
    #   inserted into manifests. Additionally, when an interval is specified
    #   ID3Timed Metadata messages will be generated every 5 seconds using the
    #   ingest time of the content.
    #   If the interval is not specified, or set to 0, then
    #   no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
    #   ID3Timed Metadata messages will be generated. Note that irrespective
    #   of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
    #   it will be passed through to HLS output.
    #   @return [Integer]
    # @!attribute repeat_ext_x_key
    #   When enabled, the EXT-X-KEY tag will be repeated in output manifests.
    #   @return [Boolean]
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    class HlsManifest < Struct.new(
      :ad_markers,
      :include_iframe_only_stream,
      :manifest_name,
      :program_date_time_interval_seconds,
      :repeat_ext_x_key,
      :stream_selection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # An HTTP Live Streaming (HLS) packaging configuration.
    # @!attribute encryption
    #   An HTTP Live Streaming (HLS) encryption configuration.
    #   @return [Types::HlsEncryption]
    # @!attribute hls_manifests
    #   A list of HLS manifest configurations.
    #   @return [Array<Types::HlsManifest>]
    # @!attribute include_dvb_subtitles
    #   When enabled, MediaPackage passes through digital video broadcasting (DVB) subtitles into the output.
    #   @return [Boolean]
    # @!attribute segment_duration_seconds
    #   Duration (in seconds) of each fragment. Actual fragments will be
    #   rounded to the nearest multiple of the source fragment duration.
    #   @return [Integer]
    # @!attribute use_audio_rendition_group
    #   When enabled, audio streams will be placed in rendition groups in the output.
    #   @return [Boolean]
    class HlsPackage < Struct.new(
      :encryption,
      :hls_manifests,
      :include_dvb_subtitles,
      :segment_duration_seconds,
      :use_audio_rendition_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # An unexpected error occurred.
    # @!attribute message
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   Upper bound on number of records to return.
    #   @return [Integer]
    # @!attribute next_token
    #   A token used to resume pagination from the end of a previous request.
    #   @return [String]
    # @!attribute packaging_group_id
    #   Returns Assets associated with the specified PackagingGroup.
    #   @return [String]
    class ListAssetsRequest < Struct.new(
      :max_results,
      :next_token,
      :packaging_group_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assets
    #   A list of MediaPackage VOD Asset resources.
    #   @return [Array<Types::AssetShallow>]
    # @!attribute next_token
    #   A token that can be used to resume pagination from the end of the collection.
    #   @return [String]
    class ListAssetsResponse < Struct.new(
      :assets,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   Upper bound on number of records to return.
    #   @return [Integer]
    # @!attribute next_token
    #   A token used to resume pagination from the end of a previous request.
    #   @return [String]
    # @!attribute packaging_group_id
    #   Returns MediaPackage VOD PackagingConfigurations associated with the specified PackagingGroup.
    #   @return [String]
    class ListPackagingConfigurationsRequest < Struct.new(
      :max_results,
      :next_token,
      :packaging_group_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   A token that can be used to resume pagination from the end of the collection.
    #   @return [String]
    # @!attribute packaging_configurations
    #   A list of MediaPackage VOD PackagingConfiguration resources.
    #   @return [Array<Types::PackagingConfiguration>]
    class ListPackagingConfigurationsResponse < Struct.new(
      :next_token,
      :packaging_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   Upper bound on number of records to return.
    #   @return [Integer]
    # @!attribute next_token
    #   A token used to resume pagination from the end of a previous request.
    #   @return [String]
    class ListPackagingGroupsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   A token that can be used to resume pagination from the end of the collection.
    #   @return [String]
    # @!attribute packaging_groups
    #   A list of MediaPackage VOD PackagingGroup resources.
    #   @return [Array<Types::PackagingGroup>]
    class ListPackagingGroupsResponse < Struct.new(
      :next_token,
      :packaging_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ManifestLayout
      FULL = 'FULL'
      COMPACT = 'COMPACT'
    end

    # A Microsoft Smooth Streaming (MSS) encryption configuration.
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #   @return [Types::SpekeKeyProvider]
    class MssEncryption < Struct.new(
      :speke_key_provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A Microsoft Smooth Streaming (MSS) manifest configuration.
    # @!attribute manifest_name
    #   An optional string to include in the name of the manifest.
    #   @return [String]
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    class MssManifest < Struct.new(
      :manifest_name,
      :stream_selection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    # @!attribute encryption
    #   A Microsoft Smooth Streaming (MSS) encryption configuration.
    #   @return [Types::MssEncryption]
    # @!attribute mss_manifests
    #   A list of MSS manifest configurations.
    #   @return [Array<Types::MssManifest>]
    # @!attribute segment_duration_seconds
    #   The duration (in seconds) of each segment.
    #   @return [Integer]
    class MssPackage < Struct.new(
      :encryption,
      :mss_manifests,
      :segment_duration_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The requested resource does not exist.
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A MediaPackage VOD PackagingConfiguration resource.
    # @!attribute arn
    #   The ARN of the PackagingConfiguration.
    #   @return [String]
    # @!attribute cmaf_package
    #   A CMAF packaging configuration.
    #   @return [Types::CmafPackage]
    # @!attribute created_at
    #   The time the PackagingConfiguration was created.
    #   @return [String]
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #   @return [Types::DashPackage]
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    # @!attribute id
    #   The ID of the PackagingConfiguration.
    #   @return [String]
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #   @return [Types::MssPackage]
    # @!attribute packaging_group_id
    #   The ID of a PackagingGroup.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class PackagingConfiguration < Struct.new(
      :arn,
      :cmaf_package,
      :created_at,
      :dash_package,
      :hls_package,
      :id,
      :mss_package,
      :packaging_group_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A MediaPackage VOD PackagingGroup resource.
    # @!attribute approximate_asset_count
    #   The approximate asset count of the PackagingGroup.
    #   @return [Integer]
    # @!attribute arn
    #   The ARN of the PackagingGroup.
    #   @return [String]
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute created_at
    #   The time the PackagingGroup was created.
    #   @return [String]
    # @!attribute domain_name
    #   The fully qualified domain name for Assets in the PackagingGroup.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute id
    #   The ID of the PackagingGroup.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class PackagingGroup < Struct.new(
      :approximate_asset_count,
      :arn,
      :authorization,
      :created_at,
      :domain_name,
      :egress_access_logs,
      :id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PresetSpeke20Audio
      PRESET_AUDIO_1 = 'PRESET-AUDIO-1'
      PRESET_AUDIO_2 = 'PRESET-AUDIO-2'
      PRESET_AUDIO_3 = 'PRESET-AUDIO-3'
      SHARED = 'SHARED'
      UNENCRYPTED = 'UNENCRYPTED'
    end

    module PresetSpeke20Video
      PRESET_VIDEO_1 = 'PRESET-VIDEO-1'
      PRESET_VIDEO_2 = 'PRESET-VIDEO-2'
      PRESET_VIDEO_3 = 'PRESET-VIDEO-3'
      PRESET_VIDEO_4 = 'PRESET-VIDEO-4'
      PRESET_VIDEO_5 = 'PRESET-VIDEO-5'
      PRESET_VIDEO_6 = 'PRESET-VIDEO-6'
      PRESET_VIDEO_7 = 'PRESET-VIDEO-7'
      PRESET_VIDEO_8 = 'PRESET-VIDEO-8'
      SHARED = 'SHARED'
      UNENCRYPTED = 'UNENCRYPTED'
    end

    module Profile
      NONE = 'NONE'
      HBBTV_1_5 = 'HBBTV_1_5'
    end

    module ScteMarkersSource
      SEGMENTS = 'SEGMENTS'
      MANIFEST = 'MANIFEST'
    end

    module SegmentTemplateFormat
      NUMBER_WITH_TIMELINE = 'NUMBER_WITH_TIMELINE'
      TIME_WITH_TIMELINE = 'TIME_WITH_TIMELINE'
      NUMBER_WITH_DURATION = 'NUMBER_WITH_DURATION'
    end

    # An unexpected error occurred.
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    # @!attribute encryption_contract_configuration
    #   Use encryptionContractConfiguration to configure one or more content encryption keys for your endpoints that use SPEKE 2.0. 
    #   The encryption contract defines which content keys are used to encrypt the audio and video tracks in your stream. 
    #   To configure the encryption contract, specify which audio and video encryption presets to use.
    #   Note the following considerations when using encryptionContractConfiguration:
    #   encryptionContractConfiguration can be used for DASH endpoints that use SPEKE 2.0. SPEKE 2.0 relies on the CPIX 2.3 specification.
    #   You must disable key rotation for this endpoint by setting keyRotationIntervalSeconds to 0.
    #   @return [Types::EncryptionContractConfiguration]
    # @!attribute role_arn
    #   An Amazon Resource Name (ARN) of an IAM role that AWS Elemental
    #   MediaPackage will assume when accessing the key provider service.
    #   @return [String]
    # @!attribute system_ids
    #   The system IDs to include in key requests.
    #   @return [Array<String>]
    # @!attribute url
    #   The URL of the external key provider service.
    #   @return [String]
    class SpekeKeyProvider < Struct.new(
      :encryption_contract_configuration,
      :role_arn,
      :system_ids,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StreamOrder
      ORIGINAL = 'ORIGINAL'
      VIDEO_BITRATE_ASCENDING = 'VIDEO_BITRATE_ASCENDING'
      VIDEO_BITRATE_DESCENDING = 'VIDEO_BITRATE_DESCENDING'
    end

    # A StreamSelection configuration.
    # @!attribute max_video_bits_per_second
    #   The maximum video bitrate (bps) to include in output.
    #   @return [Integer]
    # @!attribute min_video_bits_per_second
    #   The minimum video bitrate (bps) to include in output.
    #   @return [Integer]
    # @!attribute stream_order
    #   A directive that determines the order of streams in the output.
    #   @return [String]
    class StreamSelection < Struct.new(
      :max_video_bits_per_second,
      :min_video_bits_per_second,
      :stream_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The client has exceeded their resource or throttling limits.
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # The parameters sent in the request are not valid.
    # @!attribute message
    #   @return [String]
    class UnprocessableEntityException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.
    #   @return [String]
    # @!attribute tag_keys
    #   A comma-separated list of the tag keys to remove from the resource.
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # A MediaPackage VOD PackagingGroup resource configuration.
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute id
    #   The ID of a MediaPackage VOD PackagingGroup resource.
    #   @return [String]
    class UpdatePackagingGroupRequest < Struct.new(
      :authorization,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute approximate_asset_count
    #   The approximate asset count of the PackagingGroup.
    #   @return [Integer]
    # @!attribute arn
    #   The ARN of the PackagingGroup.
    #   @return [String]
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute created_at
    #   The time the PackagingGroup was created.
    #   @return [String]
    # @!attribute domain_name
    #   The fully qualified domain name for Assets in the PackagingGroup.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute id
    #   The ID of the PackagingGroup.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class UpdatePackagingGroupResponse < Struct.new(
      :approximate_asset_count,
      :arn,
      :authorization,
      :created_at,
      :domain_name,
      :egress_access_logs,
      :id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Periodtriggerselement
      ADS = 'ADS'
    end

  end
end
