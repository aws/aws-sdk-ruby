# frozen_string_literal: true

# This is generated code!

module Aws::MediaPackage
  # This module contains the types returned by client operations.
  module Types

    # CDN Authorization credentials
    # @!attribute cdn_identifier_secret
    #   The Amazon Resource Name (ARN) for the secret in Secrets Manager that your Content Distribution Network (CDN) uses for authorization to access your endpoint.
    #   @return [String]
    # @!attribute secrets_role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager.
    #   @return [String]
    class Authorization < Struct.new(
      :cdn_identifier_secret,
      :secrets_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A Channel resource configuration.
    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #   @return [String]
    # @!attribute created_at
    #   The date and time the Channel was created.
    #   @return [String]
    # @!attribute description
    #   A short text description of the Channel.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    # @!attribute id
    #   The ID of the Channel.
    #   @return [String]
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #   @return [Types::IngressAccessLogs]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class Channel < Struct.new(
      :arn,
      :created_at,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A Common Media Application Format (CMAF) encryption configuration.
    # @!attribute constant_initialization_vector
    #   An optional 128-bit, 16-byte hex value represented by a 32-character string, used in conjunction with the key for encrypting blocks. If you don't specify a value, then MediaPackage creates the constant initialization vector (IV).
    #   @return [String]
    # @!attribute encryption_method
    #   The encryption method to use.
    #   @return [String]
    # @!attribute key_rotation_interval_seconds
    #   Time (in seconds) between each encryption key rotation.
    #   @return [Integer]
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #   @return [Types::SpekeKeyProvider]
    class CmafEncryption < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :key_rotation_interval_seconds,
      :speke_key_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A Common Media Application Format (CMAF) packaging configuration.
    # @!attribute encryption
    #   A Common Media Application Format (CMAF) encryption configuration.
    #   @return [Types::CmafEncryption]
    # @!attribute hls_manifests
    #   A list of HLS manifest configurations
    #   @return [Array<Types::HlsManifest>]
    # @!attribute segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #   @return [Integer]
    # @!attribute segment_prefix
    #   An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.
    #   @return [String]
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    class CmafPackage < Struct.new(
      :encryption,
      :hls_manifests,
      :segment_duration_seconds,
      :segment_prefix,
      :stream_selection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A Common Media Application Format (CMAF) packaging configuration.
    # @!attribute encryption
    #   A Common Media Application Format (CMAF) encryption configuration.
    #   @return [Types::CmafEncryption]
    # @!attribute hls_manifests
    #   A list of HLS manifest configurations
    #   @return [Array<Types::HlsManifestCreateOrUpdateParameters>]
    # @!attribute segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #   @return [Integer]
    # @!attribute segment_prefix
    #   An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.
    #   @return [String]
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    class CmafPackageCreateOrUpdateParameters < Struct.new(
      :encryption,
      :hls_manifests,
      :segment_duration_seconds,
      :segment_prefix,
      :stream_selection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # the option to configure log subscription.
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute id
    #   The ID of the channel to log subscription.
    #   @return [String]
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #   @return [Types::IngressAccessLogs]
    class ConfigureLogsRequest < Struct.new(
      :egress_access_logs,
      :id,
      :ingress_access_logs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #   @return [String]
    # @!attribute created_at
    #   The date and time the Channel was created.
    #   @return [String]
    # @!attribute description
    #   A short text description of the Channel.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    # @!attribute id
    #   The ID of the Channel.
    #   @return [String]
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #   @return [Types::IngressAccessLogs]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class ConfigureLogsResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A new Channel configuration.
    # @!attribute description
    #   A short text description of the Channel.
    #   @return [String]
    # @!attribute id
    #   The ID of the Channel. The ID must be unique within the region and it
    #   cannot be changed after a Channel is created.
    #   @return [String]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class CreateChannelRequest < Struct.new(
      :description,
      :id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #   @return [String]
    # @!attribute created_at
    #   The date and time the Channel was created.
    #   @return [String]
    # @!attribute description
    #   A short text description of the Channel.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    # @!attribute id
    #   The ID of the Channel.
    #   @return [String]
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #   @return [Types::IngressAccessLogs]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class CreateChannelResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Configuration parameters used to create a new HarvestJob.
    # @!attribute end_time
    #   The end of the time-window which will be harvested
    #   @return [String]
    # @!attribute id
    #   The ID of the HarvestJob. The ID must be unique within the region
    #   and it cannot be changed after the HarvestJob is submitted
    #   @return [String]
    # @!attribute origin_endpoint_id
    #   The ID of the OriginEndpoint that the HarvestJob will harvest from.
    #   This cannot be changed after the HarvestJob is submitted.
    #   @return [String]
    # @!attribute s3_destination
    #   Configuration parameters for where in an S3 bucket to place the harvested content
    #   @return [Types::S3Destination]
    # @!attribute start_time
    #   The start of the time-window which will be harvested
    #   @return [String]
    class CreateHarvestJobRequest < Struct.new(
      :end_time,
      :id,
      :origin_endpoint_id,
      :s3_destination,
      :start_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the HarvestJob.
    #   @return [String]
    # @!attribute channel_id
    #   The ID of the Channel that the HarvestJob will harvest from.
    #   @return [String]
    # @!attribute created_at
    #   The date and time the HarvestJob was submitted.
    #   @return [String]
    # @!attribute end_time
    #   The end of the time-window which will be harvested.
    #   @return [String]
    # @!attribute id
    #   The ID of the HarvestJob. The ID must be unique within the region
    #   and it cannot be changed after the HarvestJob is submitted.
    #   @return [String]
    # @!attribute origin_endpoint_id
    #   The ID of the OriginEndpoint that the HarvestJob will harvest from.
    #   This cannot be changed after the HarvestJob is submitted.
    #   @return [String]
    # @!attribute s3_destination
    #   Configuration parameters for where in an S3 bucket to place the harvested content
    #   @return [Types::S3Destination]
    # @!attribute start_time
    #   The start of the time-window which will be harvested.
    #   @return [String]
    # @!attribute status
    #   The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for
    #   HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will
    #   include an explanation of why the HarvestJob failed.
    #   @return [String]
    class CreateHarvestJobResponse < Struct.new(
      :arn,
      :channel_id,
      :created_at,
      :end_time,
      :id,
      :origin_endpoint_id,
      :s3_destination,
      :start_time,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Configuration parameters used to create a new OriginEndpoint.
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute channel_id
    #   The ID of the Channel that the OriginEndpoint will be associated with.
    #   This cannot be changed after the OriginEndpoint is created.
    #   @return [String]
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackageCreateOrUpdateParameters]
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #   @return [Types::DashPackage]
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #   @return [String]
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    # @!attribute id
    #   The ID of the OriginEndpoint.  The ID must be unique within the region
    #   and it cannot be changed after the OriginEndpoint is created.
    #   @return [String]
    # @!attribute manifest_name
    #   A short string that will be used as the filename of the OriginEndpoint URL (defaults to "index").
    #   @return [String]
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #   @return [String]
    # @!attribute startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    # @!attribute time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #   @return [Array<String>]
    class CreateOriginEndpointRequest < Struct.new(
      :authorization,
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :tags,
      :time_delay_seconds,
      :whitelist,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
    #   @return [String]
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute channel_id
    #   The ID of the Channel the OriginEndpoint is associated with.
    #   @return [String]
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackage]
    # @!attribute created_at
    #   The date and time the OriginEndpoint was created.
    #   @return [String]
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #   @return [Types::DashPackage]
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #   @return [String]
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    # @!attribute id
    #   The ID of the OriginEndpoint.
    #   @return [String]
    # @!attribute manifest_name
    #   A short string appended to the end of the OriginEndpoint URL.
    #   @return [String]
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #   @return [String]
    # @!attribute startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    # @!attribute time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute url
    #   The URL of the packaged OriginEndpoint for consumption.
    #   @return [String]
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #   @return [Array<String>]
    class CreateOriginEndpointResponse < Struct.new(
      :arn,
      :authorization,
      :channel_id,
      :cmaf_package,
      :created_at,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :tags,
      :time_delay_seconds,
      :url,
      :whitelist,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.
    # @!attribute key_rotation_interval_seconds
    #   Time (in seconds) between each encryption key rotation.
    #   @return [Integer]
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #   @return [Types::SpekeKeyProvider]
    class DashEncryption < Struct.new(
      :key_rotation_interval_seconds,
      :speke_key_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    # @!attribute ad_triggers
    #   A list of SCTE-35 message types that are treated as ad markers in the output.  If empty, no
    #   ad markers are output.  Specify multiple items to create ad markers for all of the included
    #   message types.
    #   @return [Array<String>]
    # @!attribute ads_on_delivery_restrictions
    #   This setting allows the delivery restriction flags on SCTE-35 segmentation descriptors to
    #   determine whether a message signals an ad.  Choosing "NONE" means no SCTE-35 messages become
    #   ads.  Choosing "RESTRICTED" means SCTE-35 messages of the types specified in AdTriggers that
    #   contain delivery restrictions will be treated as ads.  Choosing "UNRESTRICTED" means SCTE-35
    #   messages of the types specified in AdTriggers that do not contain delivery restrictions will
    #   be treated as ads.  Choosing "BOTH" means all SCTE-35 messages of the types specified in
    #   AdTriggers will be treated as ads.  Note that Splice Insert messages do not have these flags
    #   and are always treated as ads if specified in AdTriggers.
    #   @return [String]
    # @!attribute encryption
    #   A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.
    #   @return [Types::DashEncryption]
    # @!attribute include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #   @return [Boolean]
    # @!attribute manifest_layout
    #   Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level. When set to DRM_TOP_LEVEL_COMPACT, content protection elements are placed the MPD level and referenced at the AdaptationSet level.
    #   @return [String]
    # @!attribute manifest_window_seconds
    #   Time window (in seconds) contained in each manifest.
    #   @return [Integer]
    # @!attribute min_buffer_time_seconds
    #   Minimum duration (in seconds) that a player will buffer media before starting the presentation.
    #   @return [Integer]
    # @!attribute min_update_period_seconds
    #   Minimum duration (in seconds) between potential changes to the Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD).
    #   @return [Integer]
    # @!attribute period_triggers
    #   A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH)
    #   Media Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not
    #   be partitioned into more than one period. If the list contains "ADS", new periods will be created where
    #   the Channel source contains SCTE-35 ad markers.
    #   @return [Array<String>]
    # @!attribute profile
    #   The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled. When set to "DVB-DASH_2014", DVB-DASH 2014 compliant output is enabled.
    #   @return [String]
    # @!attribute segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #   @return [Integer]
    # @!attribute segment_template_format
    #   Determines the type of SegmentTemplate included in the Media Presentation Description (MPD).  When set to NUMBER_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs.  When set to TIME_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to NUMBER_WITH_DURATION, only a duration is included in each SegmentTemplate, with $Number$ media URLs.
    #   @return [String]
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    # @!attribute suggested_presentation_delay_seconds
    #   Duration (in seconds) to delay live content before presentation.
    #   @return [Integer]
    # @!attribute utc_timing
    #   Determines the type of UTCTiming included in the Media Presentation Description (MPD)
    #   @return [String]
    # @!attribute utc_timing_uri
    #   Specifies the value attribute of the UTCTiming field when utcTiming is set to HTTP-ISO, HTTP-HEAD or HTTP-XSDATE
    #   @return [String]
    class DashPackage < Struct.new(
      :ad_triggers,
      :ads_on_delivery_restrictions,
      :encryption,
      :include_iframe_only_stream,
      :manifest_layout,
      :manifest_window_seconds,
      :min_buffer_time_seconds,
      :min_update_period_seconds,
      :period_triggers,
      :profile,
      :segment_duration_seconds,
      :segment_template_format,
      :stream_selection,
      :suggested_presentation_delay_seconds,
      :utc_timing,
      :utc_timing_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of the Channel to delete.
    #   @return [String]
    class DeleteChannelRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteChannelResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of the OriginEndpoint to delete.
    #   @return [String]
    class DeleteOriginEndpointRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteOriginEndpointResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of a Channel.
    #   @return [String]
    class DescribeChannelRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #   @return [String]
    # @!attribute created_at
    #   The date and time the Channel was created.
    #   @return [String]
    # @!attribute description
    #   A short text description of the Channel.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    # @!attribute id
    #   The ID of the Channel.
    #   @return [String]
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #   @return [Types::IngressAccessLogs]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class DescribeChannelResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of the HarvestJob.
    #   @return [String]
    class DescribeHarvestJobRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the HarvestJob.
    #   @return [String]
    # @!attribute channel_id
    #   The ID of the Channel that the HarvestJob will harvest from.
    #   @return [String]
    # @!attribute created_at
    #   The date and time the HarvestJob was submitted.
    #   @return [String]
    # @!attribute end_time
    #   The end of the time-window which will be harvested.
    #   @return [String]
    # @!attribute id
    #   The ID of the HarvestJob. The ID must be unique within the region
    #   and it cannot be changed after the HarvestJob is submitted.
    #   @return [String]
    # @!attribute origin_endpoint_id
    #   The ID of the OriginEndpoint that the HarvestJob will harvest from.
    #   This cannot be changed after the HarvestJob is submitted.
    #   @return [String]
    # @!attribute s3_destination
    #   Configuration parameters for where in an S3 bucket to place the harvested content
    #   @return [Types::S3Destination]
    # @!attribute start_time
    #   The start of the time-window which will be harvested.
    #   @return [String]
    # @!attribute status
    #   The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for
    #   HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will
    #   include an explanation of why the HarvestJob failed.
    #   @return [String]
    class DescribeHarvestJobResponse < Struct.new(
      :arn,
      :channel_id,
      :created_at,
      :end_time,
      :id,
      :origin_endpoint_id,
      :s3_destination,
      :start_time,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of the OriginEndpoint.
    #   @return [String]
    class DescribeOriginEndpointRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
    #   @return [String]
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute channel_id
    #   The ID of the Channel the OriginEndpoint is associated with.
    #   @return [String]
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackage]
    # @!attribute created_at
    #   The date and time the OriginEndpoint was created.
    #   @return [String]
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #   @return [Types::DashPackage]
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #   @return [String]
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    # @!attribute id
    #   The ID of the OriginEndpoint.
    #   @return [String]
    # @!attribute manifest_name
    #   A short string appended to the end of the OriginEndpoint URL.
    #   @return [String]
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #   @return [String]
    # @!attribute startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    # @!attribute time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute url
    #   The URL of the packaged OriginEndpoint for consumption.
    #   @return [String]
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #   @return [Array<String>]
    class DescribeOriginEndpointResponse < Struct.new(
      :arn,
      :authorization,
      :channel_id,
      :cmaf_package,
      :created_at,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :tags,
      :time_delay_seconds,
      :url,
      :whitelist,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Configure egress access logging.
    # @!attribute log_group_name
    #   Customize the log group name.
    #   @return [String]
    class EgressAccessLogs < Struct.new(
      :log_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Use encryptionContractConfiguration to configure one or more content encryption keys for your endpoints that use SPEKE 2.0. 
    # The encryption contract defines which content keys are used to encrypt the audio and video tracks in your stream. 
    # To configure the encryption contract, specify which audio and video encryption presets to use.
    # Note the following considerations when using encryptionContractConfiguration:
    # encryptionContractConfiguration can be used for DASH or CMAF endpoints that use SPEKE 2.0. SPEKE 2.0 relies on the CPIX 2.3 specification.
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
      include ::Smithy::Schema::Structure
    end

    # The client is not authorized to access the requested resource.
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A HarvestJob resource configuration
    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the HarvestJob.
    #   @return [String]
    # @!attribute channel_id
    #   The ID of the Channel that the HarvestJob will harvest from.
    #   @return [String]
    # @!attribute created_at
    #   The date and time the HarvestJob was submitted.
    #   @return [String]
    # @!attribute end_time
    #   The end of the time-window which will be harvested.
    #   @return [String]
    # @!attribute id
    #   The ID of the HarvestJob. The ID must be unique within the region
    #   and it cannot be changed after the HarvestJob is submitted.
    #   @return [String]
    # @!attribute origin_endpoint_id
    #   The ID of the OriginEndpoint that the HarvestJob will harvest from.
    #   This cannot be changed after the HarvestJob is submitted.
    #   @return [String]
    # @!attribute s3_destination
    #   Configuration parameters for where in an S3 bucket to place the harvested content
    #   @return [Types::S3Destination]
    # @!attribute start_time
    #   The start of the time-window which will be harvested.
    #   @return [String]
    # @!attribute status
    #   The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for
    #   HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will
    #   include an explanation of why the HarvestJob failed.
    #   @return [String]
    class HarvestJob < Struct.new(
      :arn,
      :channel_id,
      :created_at,
      :end_time,
      :id,
      :origin_endpoint_id,
      :s3_destination,
      :start_time,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # An HTTP Live Streaming (HLS) encryption configuration.
    # @!attribute constant_initialization_vector
    #   A constant initialization vector for encryption (optional).
    #   When not specified the initialization vector will be periodically rotated.
    #   @return [String]
    # @!attribute encryption_method
    #   The encryption method to use.
    #   @return [String]
    # @!attribute key_rotation_interval_seconds
    #   Interval (in seconds) between each encryption key rotation.
    #   @return [Integer]
    # @!attribute repeat_ext_x_key
    #   When enabled, the EXT-X-KEY tag will be repeated in output manifests.
    #   @return [Boolean]
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #   @return [Types::SpekeKeyProvider]
    class HlsEncryption < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :key_rotation_interval_seconds,
      :repeat_ext_x_key,
      :speke_key_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # An HTTP Live Streaming (HLS) ingest resource configuration.
    # @!attribute ingest_endpoints
    #   A list of endpoints to which the source stream should be sent.
    #   @return [Array<Types::IngestEndpoint>]
    class HlsIngest < Struct.new(
      :ingest_endpoints,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A HTTP Live Streaming (HLS) manifest configuration.
    # @!attribute ad_markers
    #   This setting controls how ad markers are included in the packaged OriginEndpoint.
    #   "NONE" will omit all SCTE-35 ad markers from the output.
    #   "PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
    #   markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
    #   "SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
    #   messages in the input source.
    #   "DATERANGE" inserts EXT-X-DATERANGE tags to signal ad and program transition events 
    #   in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value 
    #   that is greater than 0.
    #   @return [String]
    # @!attribute id
    #   The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.
    #   @return [String]
    # @!attribute include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #   @return [Boolean]
    # @!attribute manifest_name
    #   An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.
    #   @return [String]
    # @!attribute playlist_type
    #   The HTTP Live Streaming (HLS) playlist type.
    #   When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE
    #   entry will be included in the media playlist.
    #   @return [String]
    # @!attribute playlist_window_seconds
    #   Time window (in seconds) contained in each parent manifest.
    #   @return [Integer]
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
    # @!attribute url
    #   The URL of the packaged OriginEndpoint for consumption.
    #   @return [String]
    # @!attribute ad_triggers
    #   A list of SCTE-35 message types that are treated as ad markers in the output.  If empty, no
    #   ad markers are output.  Specify multiple items to create ad markers for all of the included
    #   message types.
    #   @return [Array<String>]
    # @!attribute ads_on_delivery_restrictions
    #   This setting allows the delivery restriction flags on SCTE-35 segmentation descriptors to
    #   determine whether a message signals an ad.  Choosing "NONE" means no SCTE-35 messages become
    #   ads.  Choosing "RESTRICTED" means SCTE-35 messages of the types specified in AdTriggers that
    #   contain delivery restrictions will be treated as ads.  Choosing "UNRESTRICTED" means SCTE-35
    #   messages of the types specified in AdTriggers that do not contain delivery restrictions will
    #   be treated as ads.  Choosing "BOTH" means all SCTE-35 messages of the types specified in
    #   AdTriggers will be treated as ads.  Note that Splice Insert messages do not have these flags
    #   and are always treated as ads if specified in AdTriggers.
    #   @return [String]
    class HlsManifest < Struct.new(
      :ad_markers,
      :id,
      :include_iframe_only_stream,
      :manifest_name,
      :playlist_type,
      :playlist_window_seconds,
      :program_date_time_interval_seconds,
      :url,
      :ad_triggers,
      :ads_on_delivery_restrictions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A HTTP Live Streaming (HLS) manifest configuration.
    # @!attribute ad_markers
    #   This setting controls how ad markers are included in the packaged OriginEndpoint.
    #   "NONE" will omit all SCTE-35 ad markers from the output.
    #   "PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
    #   markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
    #   "SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
    #   messages in the input source.
    #   "DATERANGE" inserts EXT-X-DATERANGE tags to signal ad and program transition events 
    #   in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value 
    #   that is greater than 0.
    #   @return [String]
    # @!attribute ad_triggers
    #   A list of SCTE-35 message types that are treated as ad markers in the output.  If empty, no
    #   ad markers are output.  Specify multiple items to create ad markers for all of the included
    #   message types.
    #   @return [Array<String>]
    # @!attribute ads_on_delivery_restrictions
    #   This setting allows the delivery restriction flags on SCTE-35 segmentation descriptors to
    #   determine whether a message signals an ad.  Choosing "NONE" means no SCTE-35 messages become
    #   ads.  Choosing "RESTRICTED" means SCTE-35 messages of the types specified in AdTriggers that
    #   contain delivery restrictions will be treated as ads.  Choosing "UNRESTRICTED" means SCTE-35
    #   messages of the types specified in AdTriggers that do not contain delivery restrictions will
    #   be treated as ads.  Choosing "BOTH" means all SCTE-35 messages of the types specified in
    #   AdTriggers will be treated as ads.  Note that Splice Insert messages do not have these flags
    #   and are always treated as ads if specified in AdTriggers.
    #   @return [String]
    # @!attribute id
    #   The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.
    #   @return [String]
    # @!attribute include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #   @return [Boolean]
    # @!attribute manifest_name
    #   An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.
    #   @return [String]
    # @!attribute playlist_type
    #   The HTTP Live Streaming (HLS) playlist type.
    #   When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE
    #   entry will be included in the media playlist.
    #   @return [String]
    # @!attribute playlist_window_seconds
    #   Time window (in seconds) contained in each parent manifest.
    #   @return [Integer]
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
    class HlsManifestCreateOrUpdateParameters < Struct.new(
      :ad_markers,
      :ad_triggers,
      :ads_on_delivery_restrictions,
      :id,
      :include_iframe_only_stream,
      :manifest_name,
      :playlist_type,
      :playlist_window_seconds,
      :program_date_time_interval_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # An HTTP Live Streaming (HLS) packaging configuration.
    # @!attribute ad_markers
    #   This setting controls how ad markers are included in the packaged OriginEndpoint.
    #   "NONE" will omit all SCTE-35 ad markers from the output.
    #   "PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
    #   markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
    #   "SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
    #   messages in the input source.
    #   "DATERANGE" inserts EXT-X-DATERANGE tags to signal ad and program transition events 
    #   in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value 
    #   that is greater than 0.
    #   @return [String]
    # @!attribute ad_triggers
    #   A list of SCTE-35 message types that are treated as ad markers in the output.  If empty, no
    #   ad markers are output.  Specify multiple items to create ad markers for all of the included
    #   message types.
    #   @return [Array<String>]
    # @!attribute ads_on_delivery_restrictions
    #   This setting allows the delivery restriction flags on SCTE-35 segmentation descriptors to
    #   determine whether a message signals an ad.  Choosing "NONE" means no SCTE-35 messages become
    #   ads.  Choosing "RESTRICTED" means SCTE-35 messages of the types specified in AdTriggers that
    #   contain delivery restrictions will be treated as ads.  Choosing "UNRESTRICTED" means SCTE-35
    #   messages of the types specified in AdTriggers that do not contain delivery restrictions will
    #   be treated as ads.  Choosing "BOTH" means all SCTE-35 messages of the types specified in
    #   AdTriggers will be treated as ads.  Note that Splice Insert messages do not have these flags
    #   and are always treated as ads if specified in AdTriggers.
    #   @return [String]
    # @!attribute encryption
    #   An HTTP Live Streaming (HLS) encryption configuration.
    #   @return [Types::HlsEncryption]
    # @!attribute include_dvb_subtitles
    #   When enabled, MediaPackage passes through digital video broadcasting (DVB) subtitles into the output.
    #   @return [Boolean]
    # @!attribute include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #   @return [Boolean]
    # @!attribute playlist_type
    #   The HTTP Live Streaming (HLS) playlist type.
    #   When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE
    #   entry will be included in the media playlist.
    #   @return [String]
    # @!attribute playlist_window_seconds
    #   Time window (in seconds) contained in each parent manifest.
    #   @return [Integer]
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
    # @!attribute segment_duration_seconds
    #   Duration (in seconds) of each fragment. Actual fragments will be
    #   rounded to the nearest multiple of the source fragment duration.
    #   @return [Integer]
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    # @!attribute use_audio_rendition_group
    #   When enabled, audio streams will be placed in rendition groups in the output.
    #   @return [Boolean]
    class HlsPackage < Struct.new(
      :ad_markers,
      :ad_triggers,
      :ads_on_delivery_restrictions,
      :encryption,
      :include_dvb_subtitles,
      :include_iframe_only_stream,
      :playlist_type,
      :playlist_window_seconds,
      :program_date_time_interval_seconds,
      :segment_duration_seconds,
      :stream_selection,
      :use_audio_rendition_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # An endpoint for ingesting source content for a Channel.
    # @!attribute id
    #   The system generated unique identifier for the IngestEndpoint
    #   @return [String]
    # @!attribute password
    #   The system generated password for ingest authentication.
    #   @return [String]
    # @!attribute url
    #   The ingest URL to which the source stream should be sent.
    #   @return [String]
    # @!attribute username
    #   The system generated username for ingest authentication.
    #   @return [String]
    class IngestEndpoint < Struct.new(
      :id,
      :password,
      :url,
      :username,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Configure ingress access logging.
    # @!attribute log_group_name
    #   Customize the log group name.
    #   @return [String]
    class IngressAccessLogs < Struct.new(
      :log_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # An unexpected error occurred.
    # @!attribute message
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   Upper bound on number of records to return.
    #   @return [Integer]
    # @!attribute next_token
    #   A token used to resume pagination from the end of a previous request.
    #   @return [String]
    class ListChannelsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channels
    #   A list of Channel records.
    #   @return [Array<Types::Channel>]
    # @!attribute next_token
    #   A token that can be used to resume pagination from the end of the collection.
    #   @return [String]
    class ListChannelsResponse < Struct.new(
      :channels,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute include_channel_id
    #   When specified, the request will return only HarvestJobs associated with the given Channel ID.
    #   @return [String]
    # @!attribute include_status
    #   When specified, the request will return only HarvestJobs in the given status.
    #   @return [String]
    # @!attribute max_results
    #   The upper bound on the number of records to return.
    #   @return [Integer]
    # @!attribute next_token
    #   A token used to resume pagination from the end of a previous request.
    #   @return [String]
    class ListHarvestJobsRequest < Struct.new(
      :include_channel_id,
      :include_status,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute harvest_jobs
    #   A list of HarvestJob records.
    #   @return [Array<Types::HarvestJob>]
    # @!attribute next_token
    #   A token that can be used to resume pagination from the end of the collection.
    #   @return [String]
    class ListHarvestJobsResponse < Struct.new(
      :harvest_jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_id
    #   When specified, the request will return only OriginEndpoints associated with the given Channel ID.
    #   @return [String]
    # @!attribute max_results
    #   The upper bound on the number of records to return.
    #   @return [Integer]
    # @!attribute next_token
    #   A token used to resume pagination from the end of a previous request.
    #   @return [String]
    class ListOriginEndpointsRequest < Struct.new(
      :channel_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   A token that can be used to resume pagination from the end of the collection.
    #   @return [String]
    # @!attribute origin_endpoints
    #   A list of OriginEndpoint records.
    #   @return [Array<Types::OriginEndpoint>]
    class ListOriginEndpointsResponse < Struct.new(
      :next_token,
      :origin_endpoints,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A Microsoft Smooth Streaming (MSS) encryption configuration.
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #   @return [Types::SpekeKeyProvider]
    class MssEncryption < Struct.new(
      :speke_key_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A Microsoft Smooth Streaming (MSS) packaging configuration.
    # @!attribute encryption
    #   A Microsoft Smooth Streaming (MSS) encryption configuration.
    #   @return [Types::MssEncryption]
    # @!attribute manifest_window_seconds
    #   The time window (in seconds) contained in each manifest.
    #   @return [Integer]
    # @!attribute segment_duration_seconds
    #   The duration (in seconds) of each segment.
    #   @return [Integer]
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #   @return [Types::StreamSelection]
    class MssPackage < Struct.new(
      :encryption,
      :manifest_window_seconds,
      :segment_duration_seconds,
      :stream_selection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The requested resource does not exist.
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # An OriginEndpoint resource configuration.
    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
    #   @return [String]
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute channel_id
    #   The ID of the Channel the OriginEndpoint is associated with.
    #   @return [String]
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackage]
    # @!attribute created_at
    #   The date and time the OriginEndpoint was created.
    #   @return [String]
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #   @return [Types::DashPackage]
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #   @return [String]
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    # @!attribute id
    #   The ID of the OriginEndpoint.
    #   @return [String]
    # @!attribute manifest_name
    #   A short string appended to the end of the OriginEndpoint URL.
    #   @return [String]
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #   @return [String]
    # @!attribute startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    # @!attribute time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute url
    #   The URL of the packaged OriginEndpoint for consumption.
    #   @return [String]
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #   @return [Array<String>]
    class OriginEndpoint < Struct.new(
      :arn,
      :authorization,
      :channel_id,
      :cmaf_package,
      :created_at,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :tags,
      :time_delay_seconds,
      :url,
      :whitelist,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    # @!attribute id
    #   The ID of the channel to update.
    #   @return [String]
    class RotateChannelCredentialsRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #   @return [String]
    # @!attribute created_at
    #   The date and time the Channel was created.
    #   @return [String]
    # @!attribute description
    #   A short text description of the Channel.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    # @!attribute id
    #   The ID of the Channel.
    #   @return [String]
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #   @return [Types::IngressAccessLogs]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class RotateChannelCredentialsResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   The ID of the channel the IngestEndpoint is on.
    #   @return [String]
    # @!attribute ingest_endpoint_id
    #   The id of the IngestEndpoint whose credentials should be rotated
    #   @return [String]
    class RotateIngestEndpointCredentialsRequest < Struct.new(
      :id,
      :ingest_endpoint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #   @return [String]
    # @!attribute created_at
    #   The date and time the Channel was created.
    #   @return [String]
    # @!attribute description
    #   A short text description of the Channel.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    # @!attribute id
    #   The ID of the Channel.
    #   @return [String]
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #   @return [Types::IngressAccessLogs]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class RotateIngestEndpointCredentialsResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Configuration parameters for where in an S3 bucket to place the harvested content
    # @!attribute bucket_name
    #   The name of an S3 bucket within which harvested content will be exported
    #   @return [String]
    # @!attribute manifest_key
    #   The key in the specified S3 bucket where the harvested top-level manifest will be placed.
    #   @return [String]
    # @!attribute role_arn
    #   The IAM role used to write to the specified S3 bucket
    #   @return [String]
    class S3Destination < Struct.new(
      :bucket_name,
      :manifest_key,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # An unexpected error occurred.
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    # @!attribute certificate_arn
    #   An Amazon Resource Name (ARN) of a Certificate Manager certificate
    #   that MediaPackage will use for enforcing secure end-to-end data
    #   transfer with the key provider service.
    #   @return [String]
    # @!attribute encryption_contract_configuration
    #   Use encryptionContractConfiguration to configure one or more content encryption keys for your endpoints that use SPEKE 2.0. 
    #   The encryption contract defines which content keys are used to encrypt the audio and video tracks in your stream. 
    #   To configure the encryption contract, specify which audio and video encryption presets to use.
    #   Note the following considerations when using encryptionContractConfiguration:
    #   encryptionContractConfiguration can be used for DASH or CMAF endpoints that use SPEKE 2.0. SPEKE 2.0 relies on the CPIX 2.3 specification.
    #   You must disable key rotation for this endpoint by setting keyRotationIntervalSeconds to 0.
    #   @return [Types::EncryptionContractConfiguration]
    # @!attribute resource_id
    #   The resource ID to include in key requests.
    #   @return [String]
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
      :certificate_arn,
      :encryption_contract_configuration,
      :resource_id,
      :role_arn,
      :system_ids,
      :url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
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
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   @return [String]
    # @!attribute tags
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The client has exceeded their resource or throttling limits.
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The parameters sent in the request are not valid.
    # @!attribute message
    #   @return [String]
    class UnprocessableEntityException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   @return [String]
    # @!attribute tag_keys
    #   The key(s) of tag to be deleted
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Configuration parameters used to update the Channel.
    # @!attribute description
    #   A short text description of the Channel.
    #   @return [String]
    # @!attribute id
    #   The ID of the Channel to update.
    #   @return [String]
    class UpdateChannelRequest < Struct.new(
      :description,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #   @return [String]
    # @!attribute created_at
    #   The date and time the Channel was created.
    #   @return [String]
    # @!attribute description
    #   A short text description of the Channel.
    #   @return [String]
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #   @return [Types::EgressAccessLogs]
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #   @return [Types::HlsIngest]
    # @!attribute id
    #   The ID of the Channel.
    #   @return [String]
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #   @return [Types::IngressAccessLogs]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    class UpdateChannelResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Configuration parameters used to update an existing OriginEndpoint.
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackageCreateOrUpdateParameters]
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #   @return [Types::DashPackage]
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #   @return [String]
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    # @!attribute id
    #   The ID of the OriginEndpoint to update.
    #   @return [String]
    # @!attribute manifest_name
    #   A short string that will be appended to the end of the Endpoint URL.
    #   @return [String]
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #   @return [String]
    # @!attribute startover_window_seconds
    #   Maximum duration (in seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute time_delay_seconds
    #   Amount of delay (in seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #   @return [Array<String>]
    class UpdateOriginEndpointRequest < Struct.new(
      :authorization,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :time_delay_seconds,
      :whitelist,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
    #   @return [String]
    # @!attribute authorization
    #   CDN Authorization credentials
    #   @return [Types::Authorization]
    # @!attribute channel_id
    #   The ID of the Channel the OriginEndpoint is associated with.
    #   @return [String]
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #   @return [Types::CmafPackage]
    # @!attribute created_at
    #   The date and time the OriginEndpoint was created.
    #   @return [String]
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #   @return [Types::DashPackage]
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #   @return [String]
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #   @return [Types::HlsPackage]
    # @!attribute id
    #   The ID of the OriginEndpoint.
    #   @return [String]
    # @!attribute manifest_name
    #   A short string appended to the end of the OriginEndpoint URL.
    #   @return [String]
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #   @return [Types::MssPackage]
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #   @return [String]
    # @!attribute startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute tags
    #   A collection of tags associated with a resource
    #   @return [Hash<String, String>]
    # @!attribute time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #   @return [Integer]
    # @!attribute url
    #   The URL of the packaged OriginEndpoint for consumption.
    #   @return [String]
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #   @return [Array<String>]
    class UpdateOriginEndpointResponse < Struct.new(
      :arn,
      :authorization,
      :channel_id,
      :cmaf_package,
      :created_at,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :tags,
      :time_delay_seconds,
      :url,
      :whitelist,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
