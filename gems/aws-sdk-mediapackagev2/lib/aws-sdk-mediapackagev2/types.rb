# frozen_string_literal: true

# This is generated code!

module Aws::MediaPackageV2
  # This module contains the types returned by client operations.
  module Types

    # <p>Access is denied because either you don't have permissions to perform the requested operation or MediaPackage is getting throttling errors with CDN authorization. The user or role that is making the request must have at least 
    #          one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide. Or, if you're using CDN authorization, you will receive this exception
    #          if MediaPackage receives a throttling error from Secrets Manager.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AdMarkerDash
      BINARY = 'BINARY'
      XML = 'XML'
    end

    module AdMarkerHls
      DATERANGE = 'DATERANGE'
    end

    # @!attribute channel_group_name
    #   <p>The name of the channel group containing the channel from which the harvest job is running.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel from which the harvest job is running.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name of the origin endpoint that the harvest job is harvesting from. This cannot be changed after the harvest job is submitted.</p>
    #   @return [String]
    # @!attribute harvest_job_name
    #   <p>The name of the harvest job to cancel. This name must be unique within the channel and cannot be changed after the harvest job is submitted.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current Entity Tag (ETag) associated with the harvest job. Used for concurrency control.</p>
    #   @return [String]
    class CancelHarvestJobRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :harvest_job_name,
      :e_tag,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CancelHarvestJobResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The settings to enable CDN authorization headers in MediaPackage.</p>
    # @!attribute cdn_identifier_secret_arns
    #   <p>The ARN for the secret in Secrets Manager that your CDN uses for authorization to access the endpoint.</p>
    #   @return [Array<String>]
    # @!attribute secrets_role_arn
    #   <p>The ARN for the IAM role that gives MediaPackage read access to Secrets Manager and KMS for CDN authorization.</p>
    #   @return [String]
    class CdnAuthConfiguration < Struct.new(
      :cdn_identifier_secret_arns,
      :secrets_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration of the channel group.</p>
    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the channel group was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the channel group was modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Any descriptive information that you want to add to the channel group for future identification purposes.</p>
    #   @return [String]
    class ChannelGroupListConfiguration < Struct.new(
      :channel_group_name,
      :arn,
      :created_at,
      :modified_at,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration of the channel.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the channel was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the channel was modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Any descriptive information that you want to add to the channel for future identification purposes.</p>
    #   @return [String]
    # @!attribute input_type
    #   <p>The input type will be an immutable field which will be used to define whether the channel will allow CMAF ingest or HLS ingest. If unprovided, it will default to HLS to preserve current behavior.</p>
    #            <p>The allowed values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HLS</code> - The HLS streaming specification (which defines M3U8 manifests and TS segments).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CMAF</code> - The DASH-IF CMAF Ingest specification (which defines CMAF segments with optional DASH manifests).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ChannelListConfiguration < Struct.new(
      :arn,
      :channel_name,
      :channel_group_name,
      :created_at,
      :modified_at,
      :description,
      :input_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CmafEncryptionMethod
      CENC = 'CENC'
      CBCS = 'CBCS'
    end

    # <p>Updating or deleting this resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute conflict_exception_type
    #   <p>The type of ConflictException.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :conflict_exception_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConflictExceptionType
      RESOURCE_IN_USE = 'RESOURCE_IN_USE'
      RESOURCE_ALREADY_EXISTS = 'RESOURCE_ALREADY_EXISTS'
      IDEMPOTENT_PARAMETER_MISMATCH = 'IDEMPOTENT_PARAMETER_MISMATCH'
      CONFLICTING_OPERATION = 'CONFLICTING_OPERATION'
    end

    module ContainerType
      TS = 'TS'
      CMAF = 'CMAF'
      ISM = 'ISM'
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region. You can't use spaces in the name. You can't change the name after you create the channel group.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Enter any descriptive text that helps you to identify the channel group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A comma-separated list of tag key:value pairs that you define. For example:</p>
    #            <p>
    #               <code>"Key1": "Value1",</code>
    #            </p>
    #            <p>
    #               <code>"Key2": "Value2"</code>
    #            </p>
    #   @return [Hash<String, String>]
    class CreateChannelGroupRequest < Struct.new(
      :channel_group_name,
      :client_token,
      :description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute egress_domain
    #   <p>The output domain where the source stream should be sent. Integrate the egress domain with a downstream CDN (such as Amazon CloudFront) or playback device.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the channel group was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the channel group was modified.</p>
    #   @return [Time]
    # @!attribute e_tag
    #   <p>The current Entity Tag (ETag) associated with this resource. The entity tag can be used to safely make concurrent updates to the resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for your channel group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The comma-separated list of tag key:value pairs assigned to the channel group.</p>
    #   @return [Hash<String, String>]
    class CreateChannelGroupResponse < Struct.new(
      :channel_group_name,
      :arn,
      :egress_domain,
      :created_at,
      :modified_at,
      :e_tag,
      :description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. You can't change the name after you create the channel.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute input_type
    #   <p>The input type will be an immutable field which will be used to define whether the channel will allow CMAF ingest or HLS ingest. If unprovided, it will default to HLS to preserve current behavior.</p>
    #            <p>The allowed values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HLS</code> - The HLS streaming specification (which defines M3U8 manifests and TS segments).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CMAF</code> - The DASH-IF CMAF Ingest specification (which defines CMAF segments with optional DASH manifests).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>Enter any descriptive text that helps you to identify the channel.</p>
    #   @return [String]
    # @!attribute input_switch_configuration
    #   <p>The configuration for input switching based on the media quality confidence score (MQCS) as provided from AWS Elemental MediaLive. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Types::InputSwitchConfiguration]
    # @!attribute output_header_configuration
    #   <p>The settings for what common media server data (CMSD) headers AWS Elemental MediaPackage includes in responses to the CDN. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Types::OutputHeaderConfiguration]
    # @!attribute tags
    #   <p>A comma-separated list of tag key:value pairs that you define. For example:</p>
    #            <p>
    #               <code>"Key1": "Value1",</code>
    #            </p>
    #            <p>
    #               <code>"Key2": "Value2"</code>
    #            </p>
    #   @return [Hash<String, String>]
    class CreateChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :client_token,
      :input_type,
      :description,
      :input_switch_configuration,
      :output_header_configuration,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    #   @return [String]
    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the channel was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the channel was modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for your channel.</p>
    #   @return [String]
    # @!attribute ingest_endpoints
    #   <p>The list of ingest endpoints.</p>
    #   @return [Array<Types::IngestEndpoint>]
    # @!attribute input_type
    #   <p>The input type will be an immutable field which will be used to define whether the channel will allow CMAF ingest or HLS ingest. If unprovided, it will default to HLS to preserve current behavior.</p>
    #            <p>The allowed values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HLS</code> - The HLS streaming specification (which defines M3U8 manifests and TS segments).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CMAF</code> - The DASH-IF CMAF Ingest specification (which defines CMAF segments with optional DASH manifests).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current Entity Tag (ETag) associated with this resource. The entity tag can be used to safely make concurrent updates to the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The comma-separated list of tag key:value pairs assigned to the channel.</p>
    #   @return [Hash<String, String>]
    # @!attribute input_switch_configuration
    #   <p>The configuration for input switching based on the media quality confidence score (MQCS) as provided from AWS Elemental MediaLive. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Types::InputSwitchConfiguration]
    # @!attribute output_header_configuration
    #   <p>The settings for what common media server data (CMSD) headers AWS Elemental MediaPackage includes in responses to the CDN. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Types::OutputHeaderConfiguration]
    class CreateChannelResponse < Struct.new(
      :arn,
      :channel_name,
      :channel_group_name,
      :created_at,
      :modified_at,
      :description,
      :ingest_endpoints,
      :input_type,
      :e_tag,
      :tags,
      :input_switch_configuration,
      :output_header_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Create a DASH manifest configuration.</p>
    # @!attribute manifest_name
    #   <p>A short string that's appended to the endpoint URL. The child manifest name creates a unique path to this endpoint.</p>
    #   @return [String]
    # @!attribute manifest_window_seconds
    #   <p>The total duration (in seconds) of the manifest's content.</p>
    #   @return [Integer]
    # @!attribute filter_configuration
    #   <p>Filter configuration includes settings for manifest filtering, start and end times, and time delay that apply to all of your egress requests for this manifest. </p>
    #   @return [Types::FilterConfiguration]
    # @!attribute min_update_period_seconds
    #   <p>Minimum amount of time (in seconds) that the player should wait before requesting updates to the manifest.</p>
    #   @return [Integer]
    # @!attribute min_buffer_time_seconds
    #   <p>Minimum amount of content (in seconds) that a player must keep available in the buffer.</p>
    #   @return [Integer]
    # @!attribute suggested_presentation_delay_seconds
    #   <p>The amount of time (in seconds) that the player should be from the end of the manifest.</p>
    #   @return [Integer]
    # @!attribute segment_template_format
    #   <p>Determines the type of variable used in the <code>media</code> URL of the <code>SegmentTemplate</code> tag in the manifest. Also specifies if segment timeline information is included in <code>SegmentTimeline</code> or <code>SegmentTemplate</code>.</p>
    #            <p>Value description:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NUMBER_WITH_TIMELINE</code> - The <code>$Number$</code> variable is used in the <code>media</code> URL. The value of this variable is the sequential number of the segment. A full <code>SegmentTimeline</code> object is presented in each <code>SegmentTemplate</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute period_triggers
    #   <p>A list of triggers that controls when AWS Elemental MediaPackage separates the MPEG-DASH manifest into multiple periods. Type <code>ADS</code> to indicate that AWS Elemental MediaPackage must create periods in the output manifest that correspond to SCTE-35 ad markers in the input source. Leave this value empty to indicate that the manifest is contained all in one period.
    #            For more information about periods in the DASH manifest, see <a href="https://docs.aws.amazon.com/mediapackage/latest/userguide/multi-period.html">Multi-period DASH in AWS Elemental MediaPackage</a>.</p>
    #   @return [Array<String>]
    # @!attribute scte_dash
    #   <p>The SCTE configuration.</p>
    #   @return [Types::ScteDash]
    # @!attribute drm_signaling
    #   <p>Determines how the DASH manifest signals the DRM content.</p>
    #   @return [String]
    # @!attribute utc_timing
    #   <p>Determines the type of UTC timing included in the DASH Media Presentation Description (MPD).</p>
    #   @return [Types::DashUtcTiming]
    # @!attribute profiles
    #   <p>The profile that the output is compliant with.</p>
    #   @return [Array<String>]
    # @!attribute base_urls
    #   <p>The base URLs to use for retrieving segments.</p>
    #   @return [Array<Types::DashBaseUrl>]
    # @!attribute program_information
    #   <p>Details about the content that you want MediaPackage to pass through in the manifest to the playback device.</p>
    #   @return [Types::DashProgramInformation]
    # @!attribute dvb_settings
    #   <p>For endpoints that use the DVB-DASH profile only. The font download and error reporting information that you want MediaPackage to pass through to the manifest.</p>
    #   @return [Types::DashDvbSettings]
    # @!attribute compactness
    #   <p>The layout of the DASH manifest that MediaPackage produces. <code>STANDARD</code> indicates a default manifest, which is compacted. <code>NONE</code> indicates a full manifest.</p>
    #            <p>For information about compactness, see <a href="https://docs.aws.amazon.com/mediapackage/latest/userguide/compacted.html">DASH manifest compactness</a> in the <i>Elemental MediaPackage v2 User Guide</i>.</p>
    #   @return [String]
    # @!attribute subtitle_configuration
    #   <p>The configuration for DASH subtitles.</p>
    #   @return [Types::DashSubtitleConfiguration]
    class CreateDashManifestConfiguration < Struct.new(
      :manifest_name,
      :manifest_window_seconds,
      :filter_configuration,
      :min_update_period_seconds,
      :min_buffer_time_seconds,
      :suggested_presentation_delay_seconds,
      :segment_template_format,
      :period_triggers,
      :scte_dash,
      :drm_signaling,
      :utc_timing,
      :profiles,
      :base_urls,
      :program_information,
      :dvb_settings,
      :compactness,
      :subtitle_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request object for creating a new harvest job.</p>
    # @!attribute channel_group_name
    #   <p>The name of the channel group containing the channel from which to harvest content.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel from which to harvest content.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name of the origin endpoint from which to harvest content.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the harvest job.</p>
    #   @return [String]
    # @!attribute harvested_manifests
    #   <p>A list of manifests to be harvested.</p>
    #   @return [Types::HarvestedManifests]
    # @!attribute schedule_configuration
    #   <p>The configuration for when the harvest job should run, including start and end times.</p>
    #   @return [Types::HarvesterScheduleConfiguration]
    # @!attribute destination
    #   <p>The S3 destination where the harvested content will be placed.</p>
    #   @return [Types::Destination]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute harvest_job_name
    #   <p>A name for the harvest job. This name must be unique within the channel.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with the harvest job.</p>
    #   @return [Hash<String, String>]
    class CreateHarvestJobRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :description,
      :harvested_manifests,
      :schedule_configuration,
      :destination,
      :client_token,
      :harvest_job_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The response object returned after creating a harvest job.</p>
    # @!attribute channel_group_name
    #   <p>The name of the channel group containing the channel from which content is being harvested.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel from which content is being harvested.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name of the origin endpoint from which content is being harvested.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The S3 destination where the harvested content will be placed.</p>
    #   @return [Types::Destination]
    # @!attribute harvest_job_name
    #   <p>The name of the created harvest job.</p>
    #   @return [String]
    # @!attribute harvested_manifests
    #   <p>A list of manifests that will be harvested.</p>
    #   @return [Types::HarvestedManifests]
    # @!attribute description
    #   <p>The description of the harvest job, if provided.</p>
    #   @return [String]
    # @!attribute schedule_configuration
    #   <p>The configuration for when the harvest job will run, including start and end times.</p>
    #   @return [Types::HarvesterScheduleConfiguration]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created harvest job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the harvest job was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the harvest job was last modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the harvest job (e.g., CREATED, IN_PROGRESS, ABORTED, COMPLETED, FAILED).</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message if the harvest job creation failed.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the harvest job. Used for concurrency control.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with the harvest job.</p>
    #   @return [Hash<String, String>]
    class CreateHarvestJobResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :destination,
      :harvest_job_name,
      :harvested_manifests,
      :description,
      :schedule_configuration,
      :arn,
      :created_at,
      :modified_at,
      :status,
      :error_message,
      :e_tag,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Create an HTTP live streaming (HLS) manifest configuration.</p>
    # @!attribute manifest_name
    #   <p>A short short string that's appended to the endpoint URL. The manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default manifest name, index. MediaPackage automatically inserts the format extension, such as .m3u8. You can't use the same manifest name if you use HLS manifest and low-latency HLS manifest. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute child_manifest_name
    #   <p>A short string that's appended to the endpoint URL. The child manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default manifest name, index, with an added suffix to distinguish it from the manifest name. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute scte_hls
    #   <p>The SCTE configuration.</p>
    #   @return [Types::ScteHls]
    # @!attribute start_tag
    #   <p>To insert an EXT-X-START tag in your HLS playlist, specify a StartTag configuration object with a valid TimeOffset. When you do, you can also optionally specify whether to include a PRECISE value in the EXT-X-START tag.</p>
    #   @return [Types::StartTag]
    # @!attribute manifest_window_seconds
    #   <p>The total duration (in seconds) of the manifest's content.</p>
    #   @return [Integer]
    # @!attribute program_date_time_interval_seconds
    #   <p>Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the interval that you specify. If you don't enter an interval,
    #            EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest.
    #            The tags sync the stream to the wall clock so that viewers can seek to a specific time in the playback timeline on the player.</p>
    #            <p>Irrespective of this parameter, if any ID3Timed metadata is in the HLS input, it is passed through to the HLS output.</p>
    #   @return [Integer]
    # @!attribute filter_configuration
    #   <p>Filter configuration includes settings for manifest filtering, start and end times, and time delay that apply to all of your egress requests for this manifest. </p>
    #   @return [Types::FilterConfiguration]
    # @!attribute url_encode_child_manifest
    #   <p>When enabled, MediaPackage URL-encodes the query string for API requests for HLS child manifests to comply with Amazon Web Services Signature Version 4 (SigV4) signature signing protocol.
    #            For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html">Amazon Web Services Signature Version 4 for API requests</a> in <i>Identity and Access Management User Guide</i>.</p>
    #   @return [Boolean]
    class CreateHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :scte_hls,
      :start_tag,
      :manifest_window_seconds,
      :program_date_time_interval_seconds,
      :filter_configuration,
      :url_encode_child_manifest,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Create a low-latency HTTP live streaming (HLS) manifest configuration.</p>
    # @!attribute manifest_name
    #   <p>A short short string that's appended to the endpoint URL. The manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default manifest name, index. MediaPackage automatically inserts the format extension, such as .m3u8. You can't use the same manifest name if you use HLS manifest and low-latency HLS manifest. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute child_manifest_name
    #   <p>A short string that's appended to the endpoint URL. The child manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default manifest name, index, with an added suffix to distinguish it from the manifest name. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute scte_hls
    #   <p>The SCTE configuration.</p>
    #   @return [Types::ScteHls]
    # @!attribute start_tag
    #   <p>To insert an EXT-X-START tag in your HLS playlist, specify a StartTag configuration object with a valid TimeOffset. When you do, you can also optionally specify whether to include a PRECISE value in the EXT-X-START tag.</p>
    #   @return [Types::StartTag]
    # @!attribute manifest_window_seconds
    #   <p>The total duration (in seconds) of the manifest's content.</p>
    #   @return [Integer]
    # @!attribute program_date_time_interval_seconds
    #   <p>Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the interval that you specify. If you don't enter an interval,
    #            EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest.
    #            The tags sync the stream to the wall clock so that viewers can seek to a specific time in the playback timeline on the player.</p>
    #            <p>Irrespective of this parameter, if any ID3Timed metadata is in the HLS input, it is passed through to the HLS output.</p>
    #   @return [Integer]
    # @!attribute filter_configuration
    #   <p>Filter configuration includes settings for manifest filtering, start and end times, and time delay that apply to all of your egress requests for this manifest. </p>
    #   @return [Types::FilterConfiguration]
    # @!attribute url_encode_child_manifest
    #   <p>When enabled, MediaPackage URL-encodes the query string for API requests for LL-HLS child manifests to comply with Amazon Web Services Signature Version 4 (SigV4) signature signing protocol.
    #            For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html">Amazon Web Services Signature Version 4 for API requests</a> in <i>Identity and Access Management User Guide</i>.</p>
    #   @return [Boolean]
    class CreateLowLatencyHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :scte_hls,
      :start_tag,
      :manifest_window_seconds,
      :program_date_time_interval_seconds,
      :filter_configuration,
      :url_encode_child_manifest,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration parameters for creating a Microsoft Smooth Streaming (MSS) manifest. MSS is a streaming media format developed by Microsoft that delivers adaptive bitrate streaming content to compatible players and devices.</p>
    # @!attribute manifest_name
    #   <p>A short string that's appended to the endpoint URL to create a unique path to this MSS manifest. The manifest name must be unique within the origin endpoint and can contain letters, numbers, hyphens, and underscores.</p>
    #   @return [String]
    # @!attribute manifest_window_seconds
    #   <p>The total duration (in seconds) of the manifest window. This determines how much content is available in the manifest at any given time. The manifest window slides forward as new segments become available, maintaining a consistent duration of content. The minimum value is 30 seconds.</p>
    #   @return [Integer]
    # @!attribute filter_configuration
    #   <p>Filter configuration includes settings for manifest filtering, start and end times, and time delay that apply to all of your egress requests for this manifest. </p>
    #   @return [Types::FilterConfiguration]
    # @!attribute manifest_layout
    #   <p>Determines the layout format of the MSS manifest. This controls how the manifest is structured and presented to client players, affecting compatibility with different MSS-compatible devices and applications.</p>
    #   @return [String]
    class CreateMssManifestConfiguration < Struct.new(
      :manifest_name,
      :manifest_window_seconds,
      :filter_configuration,
      :manifest_layout,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and must be unique for your account in the AWS Region and channel. You can't use spaces in the name. You can't change the name after you create the endpoint.</p>
    #   @return [String]
    # @!attribute container_type
    #   <p>The type of container to attach to this origin endpoint. A container type is a file format that encapsulates one or more media streams, such as audio and video, into a single file. You can't change the container type after you create the endpoint.</p>
    #   @return [String]
    # @!attribute segment
    #   <p>The segment configuration, including the segment name, duration, and other configuration values.</p>
    #   @return [Types::Segment]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Enter any descriptive text that helps you to identify the origin endpoint.</p>
    #   @return [String]
    # @!attribute startover_window_seconds
    #   <p>The size of the window (in seconds) to create a window of the live stream that's available for on-demand viewing. Viewers can start-over or catch-up on content that falls within the window. The maximum startover window is 1,209,600 seconds (14 days).</p>
    #   @return [Integer]
    # @!attribute hls_manifests
    #   <p>An HTTP live streaming (HLS) manifest configuration.</p>
    #   @return [Array<Types::CreateHlsManifestConfiguration>]
    # @!attribute low_latency_hls_manifests
    #   <p>A low-latency HLS manifest configuration.</p>
    #   @return [Array<Types::CreateLowLatencyHlsManifestConfiguration>]
    # @!attribute dash_manifests
    #   <p>A DASH manifest configuration.</p>
    #   @return [Array<Types::CreateDashManifestConfiguration>]
    # @!attribute mss_manifests
    #   <p>A list of Microsoft Smooth Streaming (MSS) manifest configurations for the origin endpoint. You can configure multiple MSS manifests to provide different streaming experiences or to support different client requirements.</p>
    #   @return [Array<Types::CreateMssManifestConfiguration>]
    # @!attribute force_endpoint_error_configuration
    #   <p>The failover settings for the endpoint.</p>
    #   @return [Types::ForceEndpointErrorConfiguration]
    # @!attribute tags
    #   <p>A comma-separated list of tag key:value pairs that you define. For example:</p>
    #            <p>
    #               <code>"Key1": "Value1",</code>
    #            </p>
    #            <p>
    #               <code>"Key2": "Value2"</code>
    #            </p>
    #   @return [Hash<String, String>]
    class CreateOriginEndpointRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :segment,
      :client_token,
      :description,
      :startover_window_seconds,
      :hls_manifests,
      :low_latency_hls_manifests,
      :dash_manifests,
      :mss_manifests,
      :force_endpoint_error_configuration,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel.</p>
    #   @return [String]
    # @!attribute container_type
    #   <p>The type of container attached to this origin endpoint.</p>
    #   @return [String]
    # @!attribute segment
    #   <p>The segment configuration, including the segment name, duration, and other configuration values.</p>
    #   @return [Types::Segment]
    # @!attribute created_at
    #   <p>The date and time the origin endpoint was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the origin endpoint was modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for your origin endpoint.</p>
    #   @return [String]
    # @!attribute startover_window_seconds
    #   <p>The size of the window (in seconds) to create a window of the live stream that's available for on-demand viewing. Viewers can start-over or catch-up on content that falls within the window.</p>
    #   @return [Integer]
    # @!attribute hls_manifests
    #   <p>An HTTP live streaming (HLS) manifest configuration.</p>
    #   @return [Array<Types::GetHlsManifestConfiguration>]
    # @!attribute low_latency_hls_manifests
    #   <p>A low-latency HLS manifest configuration.</p>
    #   @return [Array<Types::GetLowLatencyHlsManifestConfiguration>]
    # @!attribute dash_manifests
    #   <p>A DASH manifest configuration.</p>
    #   @return [Array<Types::GetDashManifestConfiguration>]
    # @!attribute mss_manifests
    #   <p>The Microsoft Smooth Streaming (MSS) manifest configurations that were created for this origin endpoint.</p>
    #   @return [Array<Types::GetMssManifestConfiguration>]
    # @!attribute force_endpoint_error_configuration
    #   <p>The failover settings for the endpoint.</p>
    #   @return [Types::ForceEndpointErrorConfiguration]
    # @!attribute e_tag
    #   <p>The current Entity Tag (ETag) associated with this resource. The entity tag can be used to safely make concurrent updates to the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The comma-separated list of tag key:value pairs assigned to the origin endpoint.</p>
    #   @return [Hash<String, String>]
    class CreateOriginEndpointResponse < Struct.new(
      :arn,
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :segment,
      :created_at,
      :modified_at,
      :description,
      :startover_window_seconds,
      :hls_manifests,
      :low_latency_hls_manifests,
      :dash_manifests,
      :mss_manifests,
      :force_endpoint_error_configuration,
      :e_tag,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The base URLs to use for retrieving segments. You can specify multiple locations and indicate the priority and weight for when each should be used, for use in mutli-CDN workflows.</p>
    # @!attribute url
    #   <p>A source location for segments.</p>
    #   @return [String]
    # @!attribute service_location
    #   <p>The name of the source location.</p>
    #   @return [String]
    # @!attribute dvb_priority
    #   <p>For use with DVB-DASH profiles only. The priority of this location for servings segments. The lower the number, the higher the priority.</p>
    #   @return [Integer]
    # @!attribute dvb_weight
    #   <p>For use with DVB-DASH profiles only. The weighting for source locations that have the same priority. </p>
    #   @return [Integer]
    class DashBaseUrl < Struct.new(
      :url,
      :service_location,
      :dvb_priority,
      :dvb_weight,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DashCompactness
      STANDARD = 'STANDARD'
      NONE = 'NONE'
    end

    module DashDrmSignaling
      INDIVIDUAL = 'INDIVIDUAL'
      REFERENCED = 'REFERENCED'
    end

    # <p>For use with DVB-DASH profiles only. The settings for font downloads that you want Elemental MediaPackage to pass through to the manifest.</p>
    # @!attribute url
    #   <p>The URL for downloading fonts for subtitles.</p>
    #   @return [String]
    # @!attribute mime_type
    #   <p>The <code>mimeType</code> of the resource that's at the font download URL.</p>
    #            <p>For information about font MIME types, see the <a href="https://dvb.org/wp-content/uploads/2021/06/A168r4_MPEG-DASH-Profile-for-Transport-of-ISO-BMFF-Based-DVB-Services_Draft-ts_103-285-v140_November_2021.pdf">MPEG-DASH Profile for Transport of ISO BMFF Based DVB Services over IP Based Networks</a> document. </p>
    #   @return [String]
    # @!attribute font_family
    #   <p>The <code>fontFamily</code> name for subtitles, as described in <a href="https://tech.ebu.ch/publications/tech3380">EBU-TT-D Subtitling Distribution Format</a>. </p>
    #   @return [String]
    class DashDvbFontDownload < Struct.new(
      :url,
      :mime_type,
      :font_family,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>For use with DVB-DASH profiles only. The settings for error reporting from the playback device that you want Elemental MediaPackage to pass through to the manifest.</p>
    # @!attribute reporting_url
    #   <p>The URL where playback devices send error reports.</p>
    #   @return [String]
    # @!attribute probability
    #   <p>The number of playback devices per 1000 that will send error reports to the reporting URL. This represents the probability that a playback device will be a reporting player for this session.</p>
    #   @return [Integer]
    class DashDvbMetricsReporting < Struct.new(
      :reporting_url,
      :probability,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>For endpoints that use the DVB-DASH profile only. The font download and error reporting information that you want MediaPackage to pass through to the manifest.</p>
    # @!attribute font_download
    #   <p>Subtitle font settings.</p>
    #   @return [Types::DashDvbFontDownload]
    # @!attribute error_metrics
    #   <p>Playback device error reporting settings.</p>
    #   @return [Array<Types::DashDvbMetricsReporting>]
    class DashDvbSettings < Struct.new(
      :font_download,
      :error_metrics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DashPeriodTrigger
      AVAILS = 'AVAILS'
      DRM_KEY_ROTATION = 'DRM_KEY_ROTATION'
      SOURCE_CHANGES = 'SOURCE_CHANGES'
      SOURCE_DISRUPTIONS = 'SOURCE_DISRUPTIONS'
      NONE = 'NONE'
    end

    module DashProfile
      DVB_DASH = 'DVB_DASH'
    end

    # <p>Details about the content that you want MediaPackage to pass through in the manifest to the playback device.</p>
    # @!attribute title
    #   <p>The title for the manifest.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Information about the content provider.</p>
    #   @return [String]
    # @!attribute copyright
    #   <p>A copyright statement about the content.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code for this manifest.</p>
    #   @return [String]
    # @!attribute more_information_url
    #   <p>An absolute URL that contains more information about this content.</p>
    #   @return [String]
    class DashProgramInformation < Struct.new(
      :title,
      :source,
      :copyright,
      :language_code,
      :more_information_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DashSegmentTemplateFormat
      NUMBER_WITH_TIMELINE = 'NUMBER_WITH_TIMELINE'
    end

    # <p>The configuration for DASH subtitles.</p>
    # @!attribute ttml_configuration
    #   <p>Settings for TTML subtitles.</p>
    #   @return [Types::DashTtmlConfiguration]
    class DashSubtitleConfiguration < Struct.new(
      :ttml_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The settings for TTML subtitles.</p>
    # @!attribute ttml_profile
    #   <p>The profile that MediaPackage uses when signaling subtitles in the manifest. <code>IMSC</code> is the default profile. 
    #            <code>EBU-TT-D</code> produces subtitles that are compliant with the EBU-TT-D TTML profile. 
    #            MediaPackage passes through subtitle styles to the manifest. For more information about EBU-TT-D subtitles, see <a href="https://tech.ebu.ch/publications/tech3380">EBU-TT-D Subtitling Distribution Format</a>.</p>
    #   @return [String]
    class DashTtmlConfiguration < Struct.new(
      :ttml_profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DashTtmlProfile
      IMSC_1 = 'IMSC_1'
      EBU_TT_D_101 = 'EBU_TT_D_101'
    end

    # <p>Determines the type of UTC timing included in the DASH Media Presentation Description (MPD).</p>
    # @!attribute timing_mode
    #   <p>The UTC timing mode.</p>
    #   @return [String]
    # @!attribute timing_source
    #   <p>The the method that the player uses to synchronize to coordinated universal time (UTC) wall clock time.</p>
    #   @return [String]
    class DashUtcTiming < Struct.new(
      :timing_mode,
      :timing_source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DashUtcTimingMode
      HTTP_HEAD = 'HTTP_HEAD'
      HTTP_ISO = 'HTTP_ISO'
      HTTP_XSDATE = 'HTTP_XSDATE'
      UTC_DIRECT = 'UTC_DIRECT'
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    class DeleteChannelGroupRequest < Struct.new(
      :channel_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteChannelGroupResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    #   @return [String]
    class DeleteChannelPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteChannelPolicyResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    #   @return [String]
    class DeleteChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteChannelResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    #   @return [String]
    class DeleteOriginEndpointPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteOriginEndpointPolicyResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    #   @return [String]
    class DeleteOriginEndpointRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteOriginEndpointResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration for the destination where the harvested content will be exported.</p>
    # @!attribute s3_destination
    #   <p>The configuration for exporting harvested content to an S3 bucket. This includes details such as the bucket name and destination path within the bucket.</p>
    #   @return [Types::S3DestinationConfig]
    class Destination < Struct.new(
      :s3_destination,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DrmSystem
      CLEAR_KEY_AES_128 = 'CLEAR_KEY_AES_128'
      FAIRPLAY = 'FAIRPLAY'
      PLAYREADY = 'PLAYREADY'
      WIDEVINE = 'WIDEVINE'
      IRDETO = 'IRDETO'
    end

    # <p>The parameters for encrypting content.</p>
    # @!attribute constant_initialization_vector
    #   <p>A 128-bit, 16-byte hex value represented by a 32-character string, used in conjunction with the key for encrypting content. If you don't specify a value, then MediaPackage creates the constant initialization vector (IV).</p>
    #   @return [String]
    # @!attribute encryption_method
    #   <p>The encryption method to use.</p>
    #   @return [Types::EncryptionMethod]
    # @!attribute key_rotation_interval_seconds
    #   <p>The frequency (in seconds) of key changes for live workflows, in which content is streamed real time. The service retrieves content keys before the live content begins streaming, and then retrieves them as needed over the lifetime of the workflow. By default, key rotation is set to 300 seconds (5 minutes), the minimum rotation interval, which is equivalent to setting it to 300. If you don't enter an interval, content keys aren't rotated.</p>
    #            <p>The following example setting causes the service to rotate keys every thirty minutes: <code>1800</code>
    #            </p>
    #   @return [Integer]
    # @!attribute cmaf_exclude_segment_drm_metadata
    #   <p>Excludes SEIG and SGPD boxes from segment metadata in CMAF containers.</p>
    #            <p>When set to <code>true</code>, MediaPackage omits these DRM metadata boxes from CMAF segments, which can improve compatibility with certain devices and players that don't support these boxes.</p>
    #            <p>Important considerations:</p>
    #            <ul>
    #               <li>
    #                  <p>This setting only affects CMAF container formats</p>
    #               </li>
    #               <li>
    #                  <p>Key rotation can still be handled through media playlist signaling</p>
    #               </li>
    #               <li>
    #                  <p>PSSH and TENC boxes remain unaffected</p>
    #               </li>
    #               <li>
    #                  <p>Default behavior is preserved when this setting is disabled</p>
    #               </li>
    #            </ul>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute speke_key_provider
    #   <p>The parameters for the SPEKE key provider.</p>
    #   @return [Types::SpekeKeyProvider]
    class Encryption < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :key_rotation_interval_seconds,
      :cmaf_exclude_segment_drm_metadata,
      :speke_key_provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configure one or more content encryption keys for your endpoints that use SPEKE Version 2.0. The encryption contract defines which content keys are used to encrypt the audio and video tracks in your stream. To configure the encryption contract, specify which audio and video encryption presets to use.</p>
    # @!attribute preset_speke20_audio
    #   <p>A collection of audio encryption presets.</p>
    #            <p>Value description: </p>
    #            <ul>
    #               <li>
    #                  <p>PRESET-AUDIO-1 - Use one content key to encrypt all of the
    #                  audio tracks in your stream.</p>
    #               </li>
    #               <li>
    #                  <p>PRESET-AUDIO-2 - Use one content key to encrypt all of the
    #                  stereo audio tracks and one content key to encrypt all of the multichannel
    #                  audio tracks.</p>
    #               </li>
    #               <li>
    #                  <p>PRESET-AUDIO-3 - Use one content key to encrypt all of the
    #                  stereo audio tracks, one content key to encrypt all of the multichannel audio
    #                  tracks with 3 to 6 channels, and one content key to encrypt all of the
    #                  multichannel audio tracks with more than 6 channels.</p>
    #               </li>
    #               <li>
    #                  <p>SHARED - Use the same content key for all of the audio and
    #                  video tracks in your stream.</p>
    #               </li>
    #               <li>
    #                  <p>UNENCRYPTED - Don't encrypt any of the audio tracks in your
    #                  stream.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute preset_speke20_video
    #   <p>A collection of video encryption presets.</p>
    #            <p>Value description: </p>
    #            <ul>
    #               <li>
    #                  <p>PRESET-VIDEO-1 - Use one content key to encrypt all of the video
    #                  tracks in your stream.</p>
    #               </li>
    #               <li>
    #                  <p>PRESET-VIDEO-2 - Use one content key to encrypt all of the SD
    #                  video tracks and one content key for all HD and higher resolutions video
    #                  tracks.</p>
    #               </li>
    #               <li>
    #                  <p>PRESET-VIDEO-3 - Use one content key to encrypt all of the SD
    #                  video tracks, one content key for HD video tracks and one content key for all
    #                  UHD video tracks.</p>
    #               </li>
    #               <li>
    #                  <p>PRESET-VIDEO-4 - Use one content key to encrypt all of the SD
    #                  video tracks, one content key for HD video tracks, one content key for all UHD1
    #                  video tracks and one content key for all UHD2 video tracks.</p>
    #               </li>
    #               <li>
    #                  <p>PRESET-VIDEO-5 - Use one content key to encrypt all of the SD
    #                  video tracks, one content key for HD1 video tracks, one content key for HD2
    #                  video tracks, one content key for all UHD1 video tracks and one content key for
    #                  all UHD2 video tracks.</p>
    #               </li>
    #               <li>
    #                  <p>PRESET-VIDEO-6 - Use one content key to encrypt all of the SD
    #                  video tracks, one content key for HD1 video tracks, one content key for HD2
    #                  video tracks and one content key for all UHD video tracks.</p>
    #               </li>
    #               <li>
    #                  <p>PRESET-VIDEO-7 - Use one content key to encrypt all of the SD+HD1
    #                  video tracks, one content key for HD2 video tracks and one content key for all
    #                  UHD video tracks.</p>
    #               </li>
    #               <li>
    #                  <p>PRESET-VIDEO-8 - Use one content key to encrypt all of the SD+HD1
    #                  video tracks, one content key for HD2 video tracks, one content key for all
    #                  UHD1 video tracks and one content key for all UHD2 video tracks.</p>
    #               </li>
    #               <li>
    #                  <p>SHARED - Use the same content key for all of the video and audio
    #                  tracks in your stream.</p>
    #               </li>
    #               <li>
    #                  <p>UNENCRYPTED - Don't encrypt any of the video tracks in your stream.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class EncryptionContractConfiguration < Struct.new(
      :preset_speke20_audio,
      :preset_speke20_video,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The encryption type.</p>
    # @!attribute ts_encryption_method
    #   <p>The encryption method to use.</p>
    #   @return [String]
    # @!attribute cmaf_encryption_method
    #   <p>The encryption method to use.</p>
    #   @return [String]
    # @!attribute ism_encryption_method
    #   <p>The encryption method used for Microsoft Smooth Streaming (MSS) content. This specifies how the MSS segments are encrypted to protect the content during delivery to client players.</p>
    #   @return [String]
    class EncryptionMethod < Struct.new(
      :ts_encryption_method,
      :cmaf_encryption_method,
      :ism_encryption_method,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EndpointErrorCondition
      STALE_MANIFEST = 'STALE_MANIFEST'
      INCOMPLETE_MANIFEST = 'INCOMPLETE_MANIFEST'
      MISSING_DRM_KEY = 'MISSING_DRM_KEY'
      SLATE_INPUT = 'SLATE_INPUT'
    end

    # <p>Filter configuration includes settings for manifest filtering, start and end times, and time delay that apply to all of your egress requests for this manifest. </p>
    # @!attribute manifest_filter
    #   <p>Optionally specify one or more manifest filters for all of your manifest egress requests. When you include a manifest filter, note that you cannot use an identical manifest filter query parameter for this manifest's endpoint URL.</p>
    #   @return [String]
    # @!attribute start
    #   <p>Optionally specify the start time for all of your manifest egress requests. When you include start time, note that you cannot use start time query parameters for this manifest's endpoint URL.</p>
    #   @return [Time]
    # @!attribute end
    #   <p>Optionally specify the end time for all of your manifest egress requests. When you include end time, note that you cannot use end time query parameters for this manifest's endpoint URL.</p>
    #   @return [Time]
    # @!attribute time_delay_seconds
    #   <p>Optionally specify the time delay for all of your manifest egress requests. Enter a value that is smaller than your endpoint's startover window. When you include time delay, note that you cannot use time delay query parameters for this manifest's endpoint URL.</p>
    #   @return [Integer]
    # @!attribute clip_start_time
    #   <p>Optionally specify the clip start time for all of your manifest egress requests. When you include clip start time, note that you cannot use clip start time query parameters for this manifest's endpoint URL.</p>
    #   @return [Time]
    class FilterConfiguration < Struct.new(
      :manifest_filter,
      :start,
      :end,
      :time_delay_seconds,
      :clip_start_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The failover settings for the endpoint.</p>
    # @!attribute endpoint_error_conditions
    #   <p>The failover conditions for the endpoint. The options are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STALE_MANIFEST</code> - The manifest stalled and there are no new segments or parts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INCOMPLETE_MANIFEST</code> - There is a gap in the manifest.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISSING_DRM_KEY</code> - Key rotation is enabled but we're unable to fetch the key for the current key period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SLATE_INPUT</code> - The segments which contain slate content are considered to be missing content.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class ForceEndpointErrorConfiguration < Struct.new(
      :endpoint_error_conditions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    class GetChannelGroupRequest < Struct.new(
      :channel_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute egress_domain
    #   <p>The output domain where the source stream should be sent. Integrate the domain with a downstream CDN (such as Amazon CloudFront) or playback device.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the channel group was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the channel group was modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for your channel group.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current Entity Tag (ETag) associated with this resource. The entity tag can be used to safely make concurrent updates to the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The comma-separated list of tag key:value pairs assigned to the channel group.</p>
    #   @return [Hash<String, String>]
    class GetChannelGroupResponse < Struct.new(
      :channel_group_name,
      :arn,
      :egress_domain,
      :created_at,
      :modified_at,
      :description,
      :e_tag,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    class GetChannelPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy assigned to the channel.</p>
    #   @return [String]
    class GetChannelPolicyResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    class GetChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    #   @return [String]
    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the channel was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the channel was modified.</p>
    #   @return [Time]
    # @!attribute reset_at
    #   <p>The time that the channel was last reset.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for your channel.</p>
    #   @return [String]
    # @!attribute ingest_endpoints
    #   <p>The list of ingest endpoints.</p>
    #   @return [Array<Types::IngestEndpoint>]
    # @!attribute input_type
    #   <p>The input type will be an immutable field which will be used to define whether the channel will allow CMAF ingest or HLS ingest. If unprovided, it will default to HLS to preserve current behavior.</p>
    #            <p>The allowed values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HLS</code> - The HLS streaming specification (which defines M3U8 manifests and TS segments).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CMAF</code> - The DASH-IF CMAF Ingest specification (which defines CMAF segments with optional DASH manifests).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current Entity Tag (ETag) associated with this resource. The entity tag can be used to safely make concurrent updates to the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The comma-separated list of tag key:value pairs assigned to the channel.</p>
    #   @return [Hash<String, String>]
    # @!attribute input_switch_configuration
    #   <p>The configuration for input switching based on the media quality confidence score (MQCS) as provided from AWS Elemental MediaLive. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Types::InputSwitchConfiguration]
    # @!attribute output_header_configuration
    #   <p>The settings for what common media server data (CMSD) headers AWS Elemental MediaPackage includes in responses to the CDN. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Types::OutputHeaderConfiguration]
    class GetChannelResponse < Struct.new(
      :arn,
      :channel_name,
      :channel_group_name,
      :created_at,
      :modified_at,
      :reset_at,
      :description,
      :ingest_endpoints,
      :input_type,
      :e_tag,
      :tags,
      :input_switch_configuration,
      :output_header_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Retrieve the DASH manifest configuration.</p>
    # @!attribute manifest_name
    #   <p>A short string that's appended to the endpoint URL. The manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default manifest name, index. </p>
    #   @return [String]
    # @!attribute url
    #   <p>The egress domain URL for stream delivery from MediaPackage.</p>
    #   @return [String]
    # @!attribute manifest_window_seconds
    #   <p>The total duration (in seconds) of the manifest's content.</p>
    #   @return [Integer]
    # @!attribute filter_configuration
    #   <p>Filter configuration includes settings for manifest filtering, start and end times, and time delay that apply to all of your egress requests for this manifest. </p>
    #   @return [Types::FilterConfiguration]
    # @!attribute min_update_period_seconds
    #   <p>Minimum amount of time (in seconds) that the player should wait before requesting updates to the manifest.</p>
    #   @return [Integer]
    # @!attribute min_buffer_time_seconds
    #   <p>Minimum amount of content (in seconds) that a player must keep available in the buffer.</p>
    #   @return [Integer]
    # @!attribute suggested_presentation_delay_seconds
    #   <p>The amount of time (in seconds) that the player should be from the end of the manifest.</p>
    #   @return [Integer]
    # @!attribute segment_template_format
    #   <p>Determines the type of variable used in the <code>media</code> URL of the <code>SegmentTemplate</code> tag in the manifest. Also specifies if segment timeline information is included in <code>SegmentTimeline</code> or <code>SegmentTemplate</code>.</p>
    #            <p>Value description:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NUMBER_WITH_TIMELINE</code> - The <code>$Number$</code> variable is used in the <code>media</code> URL. The value of this variable is the sequential number of the segment. A full <code>SegmentTimeline</code> object is presented in each <code>SegmentTemplate</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute period_triggers
    #   <p>A list of triggers that controls when AWS Elemental MediaPackage separates the MPEG-DASH manifest into multiple periods. Leave this value empty to indicate that the manifest is contained all in one period.
    #            For more information about periods in the DASH manifest, see <a href="https://docs.aws.amazon.com/mediapackage/latest/userguide/multi-period.html">Multi-period DASH in AWS Elemental MediaPackage</a>.</p>
    #   @return [Array<String>]
    # @!attribute scte_dash
    #   <p>The SCTE configuration.</p>
    #   @return [Types::ScteDash]
    # @!attribute drm_signaling
    #   <p>Determines how the DASH manifest signals the DRM content.</p>
    #   @return [String]
    # @!attribute utc_timing
    #   <p>Determines the type of UTC timing included in the DASH Media Presentation Description (MPD).</p>
    #   @return [Types::DashUtcTiming]
    # @!attribute profiles
    #   <p>The profile that the output is compliant with.</p>
    #   @return [Array<String>]
    # @!attribute base_urls
    #   <p>The base URL to use for retrieving segments.</p>
    #   @return [Array<Types::DashBaseUrl>]
    # @!attribute program_information
    #   <p>Details about the content that you want MediaPackage to pass through in the manifest to the playback device.</p>
    #   @return [Types::DashProgramInformation]
    # @!attribute dvb_settings
    #   <p>For endpoints that use the DVB-DASH profile only. The font download and error reporting information that you want MediaPackage to pass through to the manifest.</p>
    #   @return [Types::DashDvbSettings]
    # @!attribute compactness
    #   <p>The layout of the DASH manifest that MediaPackage produces. <code>STANDARD</code> indicates a default manifest, which is compacted. <code>NONE</code> indicates a full manifest.</p>
    #   @return [String]
    # @!attribute subtitle_configuration
    #   <p>The configuration for DASH subtitles.</p>
    #   @return [Types::DashSubtitleConfiguration]
    class GetDashManifestConfiguration < Struct.new(
      :manifest_name,
      :url,
      :manifest_window_seconds,
      :filter_configuration,
      :min_update_period_seconds,
      :min_buffer_time_seconds,
      :suggested_presentation_delay_seconds,
      :segment_template_format,
      :period_triggers,
      :scte_dash,
      :drm_signaling,
      :utc_timing,
      :profiles,
      :base_urls,
      :program_information,
      :dvb_settings,
      :compactness,
      :subtitle_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request object for retrieving a specific harvest job.</p>
    # @!attribute channel_group_name
    #   <p>The name of the channel group containing the channel associated with the harvest job.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel associated with the harvest job.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name of the origin endpoint associated with the harvest job.</p>
    #   @return [String]
    # @!attribute harvest_job_name
    #   <p>The name of the harvest job to retrieve.</p>
    #   @return [String]
    class GetHarvestJobRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :harvest_job_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The response object containing the details of the requested harvest job.</p>
    # @!attribute channel_group_name
    #   <p>The name of the channel group containing the channel associated with the harvest job.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel associated with the harvest job.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name of the origin endpoint associated with the harvest job.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The S3 destination where the harvested content is being placed.</p>
    #   @return [Types::Destination]
    # @!attribute harvest_job_name
    #   <p>The name of the harvest job.</p>
    #   @return [String]
    # @!attribute harvested_manifests
    #   <p>A list of manifests that are being or have been harvested.</p>
    #   @return [Types::HarvestedManifests]
    # @!attribute description
    #   <p>The description of the harvest job, if provided.</p>
    #   @return [String]
    # @!attribute schedule_configuration
    #   <p>The configuration for when the harvest job is scheduled to run, including start and end times.</p>
    #   @return [Types::HarvesterScheduleConfiguration]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the harvest job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the harvest job was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time when the harvest job was last modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the harvest job (e.g., QUEUED, IN_PROGRESS, CANCELLED, COMPLETED, FAILED).</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message if the harvest job encountered any issues.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the harvest job. Used for concurrency control.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tags associated with the harvest job.</p>
    #   @return [Hash<String, String>]
    class GetHarvestJobResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :destination,
      :harvest_job_name,
      :harvested_manifests,
      :description,
      :schedule_configuration,
      :arn,
      :created_at,
      :modified_at,
      :status,
      :error_message,
      :e_tag,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Retrieve the HTTP live streaming (HLS) manifest configuration.</p>
    # @!attribute manifest_name
    #   <p>A short short string that's appended to the endpoint URL. The manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default manifest name, index. MediaPackage automatically inserts the format extension, such as .m3u8. You can't use the same manifest name if you use HLS manifest and low-latency HLS manifest. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The egress domain URL for stream delivery from MediaPackage.</p>
    #   @return [String]
    # @!attribute child_manifest_name
    #   <p>A short string that's appended to the endpoint URL. The child manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default child manifest name, index_1. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute manifest_window_seconds
    #   <p>The total duration (in seconds) of the manifest's content.</p>
    #   @return [Integer]
    # @!attribute program_date_time_interval_seconds
    #   <p>Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the interval that you specify. If you don't enter an interval,
    #            EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest.
    #            The tags sync the stream to the wall clock so that viewers can seek to a specific time in the playback timeline on the player.</p>
    #            <p>Irrespective of this parameter, if any ID3Timed metadata is in the HLS input, it is passed through to the HLS output.</p>
    #   @return [Integer]
    # @!attribute scte_hls
    #   <p>The SCTE configuration.</p>
    #   @return [Types::ScteHls]
    # @!attribute filter_configuration
    #   <p>Filter configuration includes settings for manifest filtering, start and end times, and time delay that apply to all of your egress requests for this manifest. </p>
    #   @return [Types::FilterConfiguration]
    # @!attribute start_tag
    #   <p>To insert an EXT-X-START tag in your HLS playlist, specify a StartTag configuration object with a valid TimeOffset. When you do, you can also optionally specify whether to include a PRECISE value in the EXT-X-START tag.</p>
    #   @return [Types::StartTag]
    # @!attribute url_encode_child_manifest
    #   <p>When enabled, MediaPackage URL-encodes the query string for API requests for HLS child manifests to comply with Amazon Web Services Signature Version 4 (SigV4) signature signing protocol.
    #            For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html">Amazon Web Services Signature Version 4 for API requests</a> in <i>Identity and Access Management User Guide</i>.</p>
    #   @return [Boolean]
    class GetHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :url,
      :child_manifest_name,
      :manifest_window_seconds,
      :program_date_time_interval_seconds,
      :scte_hls,
      :filter_configuration,
      :start_tag,
      :url_encode_child_manifest,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Retrieve the low-latency HTTP live streaming (HLS) manifest configuration.</p>
    # @!attribute manifest_name
    #   <p>A short short string that's appended to the endpoint URL. The manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default manifest name, index. MediaPackage automatically inserts the format extension, such as .m3u8. You can't use the same manifest name if you use HLS manifest and low-latency HLS manifest. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The egress domain URL for stream delivery from MediaPackage.</p>
    #   @return [String]
    # @!attribute child_manifest_name
    #   <p>A short string that's appended to the endpoint URL. The child manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default child manifest name, index_1. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute manifest_window_seconds
    #   <p>The total duration (in seconds) of the manifest's content.</p>
    #   @return [Integer]
    # @!attribute program_date_time_interval_seconds
    #   <p>Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the interval that you specify. If you don't enter an interval,
    #            EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest.
    #            The tags sync the stream to the wall clock so that viewers can seek to a specific time in the playback timeline on the player.</p>
    #            <p>Irrespective of this parameter, if any ID3Timed metadata is in the HLS input, it is passed through to the HLS output.</p>
    #   @return [Integer]
    # @!attribute scte_hls
    #   <p>The SCTE configuration.</p>
    #   @return [Types::ScteHls]
    # @!attribute filter_configuration
    #   <p>Filter configuration includes settings for manifest filtering, start and end times, and time delay that apply to all of your egress requests for this manifest. </p>
    #   @return [Types::FilterConfiguration]
    # @!attribute start_tag
    #   <p>To insert an EXT-X-START tag in your HLS playlist, specify a StartTag configuration object with a valid TimeOffset. When you do, you can also optionally specify whether to include a PRECISE value in the EXT-X-START tag.</p>
    #   @return [Types::StartTag]
    # @!attribute url_encode_child_manifest
    #   <p>When enabled, MediaPackage URL-encodes the query string for API requests for LL-HLS child manifests to comply with Amazon Web Services Signature Version 4 (SigV4) signature signing protocol.
    #            For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html">Amazon Web Services Signature Version 4 for API requests</a> in <i>Identity and Access Management User Guide</i>.</p>
    #   @return [Boolean]
    class GetLowLatencyHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :url,
      :child_manifest_name,
      :manifest_window_seconds,
      :program_date_time_interval_seconds,
      :scte_hls,
      :filter_configuration,
      :start_tag,
      :url_encode_child_manifest,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration details for a Microsoft Smooth Streaming (MSS) manifest associated with an origin endpoint. This includes all the settings and properties that define how the MSS content is packaged and delivered.</p>
    # @!attribute manifest_name
    #   <p>The name of the MSS manifest. This name is appended to the origin endpoint URL to create the unique path for accessing this specific MSS manifest.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The complete URL for accessing the MSS manifest. Client players use this URL to retrieve the manifest and begin streaming the Microsoft Smooth Streaming content.</p>
    #   @return [String]
    # @!attribute filter_configuration
    #   <p>Filter configuration includes settings for manifest filtering, start and end times, and time delay that apply to all of your egress requests for this manifest. </p>
    #   @return [Types::FilterConfiguration]
    # @!attribute manifest_window_seconds
    #   <p>The duration (in seconds) of the manifest window. This represents the total amount of content available in the manifest at any given time.</p>
    #   @return [Integer]
    # @!attribute manifest_layout
    #   <p>The layout format of the MSS manifest, which determines how the manifest is structured for client compatibility.</p>
    #   @return [String]
    class GetMssManifestConfiguration < Struct.new(
      :manifest_name,
      :url,
      :filter_configuration,
      :manifest_window_seconds,
      :manifest_layout,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    #   @return [String]
    class GetOriginEndpointPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy assigned to the origin endpoint.</p>
    #   @return [String]
    # @!attribute cdn_auth_configuration
    #   <p>The settings for using authorization headers between the MediaPackage endpoint and your CDN. </p>
    #            <p>For information about CDN authorization, see <a href="https://docs.aws.amazon.com/mediapackage/latest/userguide/cdn-auth.html">CDN authorization
    #               in Elemental MediaPackage</a>  in the MediaPackage user guide.</p>
    #   @return [Types::CdnAuthConfiguration]
    class GetOriginEndpointPolicyResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :policy,
      :cdn_auth_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    #   @return [String]
    class GetOriginEndpointRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel.</p>
    #   @return [String]
    # @!attribute container_type
    #   <p>The type of container attached to this origin endpoint.</p>
    #   @return [String]
    # @!attribute segment
    #   <p>The segment configuration, including the segment name, duration, and other configuration values.</p>
    #   @return [Types::Segment]
    # @!attribute created_at
    #   <p>The date and time the origin endpoint was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the origin endpoint was modified.</p>
    #   @return [Time]
    # @!attribute reset_at
    #   <p>The time that the origin endpoint was last reset.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for your origin endpoint.</p>
    #   @return [String]
    # @!attribute startover_window_seconds
    #   <p>The size of the window (in seconds) to create a window of the live stream that's available for on-demand viewing. Viewers can start-over or catch-up on content that falls within the window.</p>
    #   @return [Integer]
    # @!attribute hls_manifests
    #   <p>An HTTP live streaming (HLS) manifest configuration.</p>
    #   @return [Array<Types::GetHlsManifestConfiguration>]
    # @!attribute low_latency_hls_manifests
    #   <p>A low-latency HLS manifest configuration.</p>
    #   @return [Array<Types::GetLowLatencyHlsManifestConfiguration>]
    # @!attribute dash_manifests
    #   <p>A DASH manifest configuration.</p>
    #   @return [Array<Types::GetDashManifestConfiguration>]
    # @!attribute mss_manifests
    #   <p>The Microsoft Smooth Streaming (MSS) manifest configurations associated with this origin endpoint.</p>
    #   @return [Array<Types::GetMssManifestConfiguration>]
    # @!attribute force_endpoint_error_configuration
    #   <p>The failover settings for the endpoint.</p>
    #   @return [Types::ForceEndpointErrorConfiguration]
    # @!attribute e_tag
    #   <p>The current Entity Tag (ETag) associated with this resource. The entity tag can be used to safely make concurrent updates to the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The comma-separated list of tag key:value pairs assigned to the origin endpoint.</p>
    #   @return [Hash<String, String>]
    class GetOriginEndpointResponse < Struct.new(
      :arn,
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :segment,
      :created_at,
      :modified_at,
      :reset_at,
      :description,
      :startover_window_seconds,
      :hls_manifests,
      :low_latency_hls_manifests,
      :dash_manifests,
      :mss_manifests,
      :force_endpoint_error_configuration,
      :e_tag,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a harvest job resource in MediaPackage v2, which is used to export content from an origin endpoint to an S3 bucket.</p>
    # @!attribute channel_group_name
    #   <p>The name of the channel group containing the channel associated with this harvest job.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel associated with this harvest job.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name of the origin endpoint associated with this harvest job.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The S3 destination where the harvested content will be placed.</p>
    #   @return [Types::Destination]
    # @!attribute harvest_job_name
    #   <p>The name of the harvest job.</p>
    #   @return [String]
    # @!attribute harvested_manifests
    #   <p>A list of manifests that are being or have been harvested.</p>
    #   @return [Types::HarvestedManifests]
    # @!attribute description
    #   <p>An optional description of the harvest job.</p>
    #   @return [String]
    # @!attribute schedule_configuration
    #   <p>The configuration for when the harvest job is scheduled to run.</p>
    #   @return [Types::HarvesterScheduleConfiguration]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the harvest job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the harvest job was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time when the harvest job was last modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the harvest job (e.g., QUEUED, IN_PROGRESS, CANCELLED, COMPLETED, FAILED).</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message if the harvest job encountered any issues.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the harvest job. Used for concurrency control.</p>
    #   @return [String]
    class HarvestJob < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :destination,
      :harvest_job_name,
      :harvested_manifests,
      :description,
      :schedule_configuration,
      :arn,
      :created_at,
      :modified_at,
      :status,
      :error_message,
      :e_tag,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module HarvestJobStatus
      QUEUED = 'QUEUED'
      IN_PROGRESS = 'IN_PROGRESS'
      CANCELLED = 'CANCELLED'
      COMPLETED = 'COMPLETED'
      FAILED = 'FAILED'
    end

    # <p>Information about a harvested DASH manifest.</p>
    # @!attribute manifest_name
    #   <p>The name of the harvested DASH manifest.</p>
    #   @return [String]
    class HarvestedDashManifest < Struct.new(
      :manifest_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a harvested HLS manifest.</p>
    # @!attribute manifest_name
    #   <p>The name of the harvested HLS manifest.</p>
    #   @return [String]
    class HarvestedHlsManifest < Struct.new(
      :manifest_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a harvested Low-Latency HLS manifest.</p>
    # @!attribute manifest_name
    #   <p>The name of the harvested Low-Latency HLS manifest.</p>
    #   @return [String]
    class HarvestedLowLatencyHlsManifest < Struct.new(
      :manifest_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A collection of harvested manifests of different types.</p>
    # @!attribute hls_manifests
    #   <p>A list of harvested HLS manifests.</p>
    #   @return [Array<Types::HarvestedHlsManifest>]
    # @!attribute dash_manifests
    #   <p>A list of harvested DASH manifests.</p>
    #   @return [Array<Types::HarvestedDashManifest>]
    # @!attribute low_latency_hls_manifests
    #   <p>A list of harvested Low-Latency HLS manifests.</p>
    #   @return [Array<Types::HarvestedLowLatencyHlsManifest>]
    class HarvestedManifests < Struct.new(
      :hls_manifests,
      :dash_manifests,
      :low_latency_hls_manifests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the schedule configuration for a harvest job.</p>
    # @!attribute start_time
    #   <p>The start time for the harvest job.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the harvest job.</p>
    #   @return [Time]
    class HarvesterScheduleConfiguration < Struct.new(
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The ingest domain URL where the source stream should be sent.</p>
    # @!attribute id
    #   <p>The system-generated unique identifier for the IngestEndpoint.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The ingest domain URL where the source stream should be sent.</p>
    #   @return [String]
    class IngestEndpoint < Struct.new(
      :id,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration for input switching based on the media quality confidence score (MQCS) as provided from AWS Elemental MediaLive.</p>
    # @!attribute mqcs_input_switching
    #   <p>When true, AWS Elemental MediaPackage performs input switching based on the MQCS. Default is true. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Boolean]
    # @!attribute preferred_input
    #   <p>For CMAF inputs, indicates which input MediaPackage should prefer when both inputs have equal MQCS scores. Select <code>1</code> to prefer the first ingest endpoint, or <code>2</code> to prefer the second ingest endpoint. If you don't specify a preferred input, MediaPackage uses its default switching behavior when MQCS scores are equal.</p>
    #   @return [Integer]
    class InputSwitchConfiguration < Struct.new(
      :mqcs_input_switching,
      :preferred_input,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InputType
      HLS = 'HLS'
      CMAF = 'CMAF'
    end

    # <p>Indicates that an error from the service occurred while trying to process a request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module IsmEncryptionMethod
      CENC = 'CENC'
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListChannelGroupsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The objects being returned.</p>
    #   @return [Array<Types::ChannelGroupListConfiguration>]
    # @!attribute next_token
    #   <p>The pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListChannelGroupsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListChannelsRequest < Struct.new(
      :channel_group_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The objects being returned.</p>
    #   @return [Array<Types::ChannelListConfiguration>]
    # @!attribute next_token
    #   <p>The pagination token from the GET list request.</p>
    #   @return [String]
    class ListChannelsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List the DASH manifest configuration.</p>
    # @!attribute manifest_name
    #   <p>A short string that's appended to the endpoint URL. The manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default manifest name, index. </p>
    #   @return [String]
    # @!attribute url
    #   <p>The egress domain URL for stream delivery from MediaPackage.</p>
    #   @return [String]
    class ListDashManifestConfiguration < Struct.new(
      :manifest_name,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request object for listing harvest jobs.</p>
    # @!attribute channel_group_name
    #   <p>The name of the channel group to filter the harvest jobs by. If specified, only harvest jobs associated with channels in this group will be returned.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel to filter the harvest jobs by. If specified, only harvest jobs associated with this channel will be returned.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name of the origin endpoint to filter the harvest jobs by. If specified, only harvest jobs associated with this origin endpoint will be returned.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status to filter the harvest jobs by. If specified, only harvest jobs with this status will be returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of harvest jobs to return in a single request. If not specified, a default value will be used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used for pagination. Provide this value in subsequent requests to retrieve the next set of results.</p>
    #   @return [String]
    class ListHarvestJobsRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :status,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The response object containing the list of harvest jobs that match the specified criteria.</p>
    # @!attribute items
    #   <p>An array of harvest job objects that match the specified criteria.</p>
    #   @return [Array<Types::HarvestJob>]
    # @!attribute next_token
    #   <p>A token used for pagination. Include this value in subsequent requests to retrieve the next set of results. If null, there are no more results to retrieve.</p>
    #   @return [String]
    class ListHarvestJobsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List the HTTP live streaming (HLS) manifest configuration.</p>
    # @!attribute manifest_name
    #   <p>A short short string that's appended to the endpoint URL. The manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default manifest name, index. MediaPackage automatically inserts the format extension, such as .m3u8. You can't use the same manifest name if you use HLS manifest and low-latency HLS manifest. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute child_manifest_name
    #   <p>A short string that's appended to the endpoint URL. The child manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default child manifest name, index_1. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The egress domain URL for stream delivery from MediaPackage.</p>
    #   @return [String]
    class ListHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List the low-latency HTTP live streaming (HLS) manifest configuration.</p>
    # @!attribute manifest_name
    #   <p>A short short string that's appended to the endpoint URL. The manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default manifest name, index. MediaPackage automatically inserts the format extension, such as .m3u8. You can't use the same manifest name if you use HLS manifest and low-latency HLS manifest. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute child_manifest_name
    #   <p>A short string that's appended to the endpoint URL. The child manifest name creates a unique path to this endpoint. If you don't enter a value, MediaPackage uses the default child manifest name, index_1. The manifestName on the HLSManifest object overrides the manifestName you provided on the originEndpoint object.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The egress domain URL for stream delivery from MediaPackage.</p>
    #   @return [String]
    class ListLowLatencyHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information about a Microsoft Smooth Streaming (MSS) manifest configuration. This provides key details about the MSS manifest without including all configuration parameters.</p>
    # @!attribute manifest_name
    #   <p>The name of the MSS manifest configuration.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL for accessing the MSS manifest.</p>
    #   @return [String]
    class ListMssManifestConfiguration < Struct.new(
      :manifest_name,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListOriginEndpointsRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The objects being returned.</p>
    #   @return [Array<Types::OriginEndpointListConfiguration>]
    # @!attribute next_token
    #   <p>The pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListOriginEndpointsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the CloudWatch resource that you want to view tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MssManifestLayout
      FULL = 'FULL'
      COMPACT = 'COMPACT'
    end

    # <p>The configuration of the origin endpoint.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    #   @return [String]
    # @!attribute container_type
    #   <p>The type of container attached to this origin endpoint. A container type is a file format that encapsulates one or more media streams, such as audio and video, into a single file. </p>
    #   @return [String]
    # @!attribute description
    #   <p>Any descriptive information that you want to add to the origin endpoint for future identification purposes.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the origin endpoint was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the origin endpoint was modified.</p>
    #   @return [Time]
    # @!attribute hls_manifests
    #   <p>An HTTP live streaming (HLS) manifest configuration.</p>
    #   @return [Array<Types::ListHlsManifestConfiguration>]
    # @!attribute low_latency_hls_manifests
    #   <p>A low-latency HLS manifest configuration.</p>
    #   @return [Array<Types::ListLowLatencyHlsManifestConfiguration>]
    # @!attribute dash_manifests
    #   <p>A DASH manifest configuration.</p>
    #   @return [Array<Types::ListDashManifestConfiguration>]
    # @!attribute mss_manifests
    #   <p>A list of Microsoft Smooth Streaming (MSS) manifest configurations associated with the origin endpoint. Each configuration represents a different MSS streaming option available from this endpoint.</p>
    #   @return [Array<Types::ListMssManifestConfiguration>]
    # @!attribute force_endpoint_error_configuration
    #   <p>The failover settings for the endpoint.</p>
    #   @return [Types::ForceEndpointErrorConfiguration]
    class OriginEndpointListConfiguration < Struct.new(
      :arn,
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :description,
      :created_at,
      :modified_at,
      :hls_manifests,
      :low_latency_hls_manifests,
      :dash_manifests,
      :mss_manifests,
      :force_endpoint_error_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The settings for what common media server data (CMSD) headers AWS Elemental MediaPackage includes in responses to the CDN.</p>
    # @!attribute publish_mqcs
    #   <p>When true, AWS Elemental MediaPackage includes the MQCS in responses to the CDN. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Boolean]
    class OutputHeaderConfiguration < Struct.new(
      :publish_mqcs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PresetSpeke20Audio
      PRESET_AUDIO_1 = 'PRESET_AUDIO_1'
      PRESET_AUDIO_2 = 'PRESET_AUDIO_2'
      PRESET_AUDIO_3 = 'PRESET_AUDIO_3'
      SHARED = 'SHARED'
      UNENCRYPTED = 'UNENCRYPTED'
    end

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

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy to attach to the specified channel.</p>
    #   @return [String]
    class PutChannelPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutChannelPolicyResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy to attach to the specified origin endpoint.</p>
    #   @return [String]
    # @!attribute cdn_auth_configuration
    #   <p>The settings for using authorization headers between the MediaPackage endpoint and your CDN. </p>
    #            <p>For information about CDN authorization, see <a href="https://docs.aws.amazon.com/mediapackage/latest/userguide/cdn-auth.html">CDN authorization
    #               in Elemental MediaPackage</a>  in the MediaPackage user guide. </p>
    #   @return [Types::CdnAuthConfiguration]
    class PutOriginEndpointPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :policy,
      :cdn_auth_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutOriginEndpointPolicyResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name of the channel group that contains the channel that you are resetting.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel that you are resetting.</p>
    #   @return [String]
    class ResetChannelStateRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name of the channel group that contains the channel that you just reset.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel that you just reset.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the channel that you just reset.</p>
    #   @return [String]
    # @!attribute reset_at
    #   <p>The time that the channel was last reset.</p>
    #   @return [Time]
    class ResetChannelStateResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :arn,
      :reset_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name of the channel group that contains the channel with the origin endpoint that you are resetting.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel with the origin endpoint that you are resetting.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name of the origin endpoint that you are resetting.</p>
    #   @return [String]
    class ResetOriginEndpointStateRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name of the channel group that contains the channel with the origin endpoint that you just reset.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel with the origin endpoint that you just reset.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name of the origin endpoint that you just reset.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the endpoint that you just reset.</p>
    #   @return [String]
    # @!attribute reset_at
    #   <p>The time that the origin endpoint was last reset.</p>
    #   @return [Time]
    class ResetOriginEndpointStateResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :arn,
      :reset_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type_not_found
    #   <p>The specified resource type wasn't found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type_not_found,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceTypeNotFound
      CHANNEL_GROUP = 'CHANNEL_GROUP'
      CHANNEL = 'CHANNEL'
      ORIGIN_ENDPOINT = 'ORIGIN_ENDPOINT'
      HARVEST_JOB = 'HARVEST_JOB'
    end

    # <p>Configuration parameters for where in an S3 bucket to place the harvested content.</p>
    # @!attribute bucket_name
    #   <p>The name of an S3 bucket within which harvested content will be exported.</p>
    #   @return [String]
    # @!attribute destination_path
    #   <p>The path within the specified S3 bucket where the harvested content will be placed.</p>
    #   @return [String]
    class S3DestinationConfig < Struct.new(
      :bucket_name,
      :destination_path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The SCTE configuration.</p>
    # @!attribute scte_filter
    #   <p>The SCTE-35 message types that you want to be treated as ad markers in the output.</p>
    #   @return [Array<String>]
    class Scte < Struct.new(
      :scte_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The SCTE configuration.</p>
    # @!attribute ad_marker_dash
    #   <p>Choose how ad markers are included in the packaged content. If you include ad markers in the content stream in your upstream encoders, then you need to inform MediaPackage what to do with the ad markers in the output.</p>
    #            <p>Value description:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Binary</code> - The SCTE-35 marker is expressed as a hex-string (Base64 string) rather than full XML.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XML</code> - The SCTE marker is expressed fully in XML.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ScteDash < Struct.new(
      :ad_marker_dash,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ScteFilter
      SPLICE_INSERT = 'SPLICE_INSERT'
      BREAK = 'BREAK'
      PROVIDER_ADVERTISEMENT = 'PROVIDER_ADVERTISEMENT'
      DISTRIBUTOR_ADVERTISEMENT = 'DISTRIBUTOR_ADVERTISEMENT'
      PROVIDER_PLACEMENT_OPPORTUNITY = 'PROVIDER_PLACEMENT_OPPORTUNITY'
      DISTRIBUTOR_PLACEMENT_OPPORTUNITY = 'DISTRIBUTOR_PLACEMENT_OPPORTUNITY'
      PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY = 'PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY'
      DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY = 'DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY'
      PROGRAM = 'PROGRAM'
    end

    # <p>The SCTE configuration.</p>
    # @!attribute ad_marker_hls
    #   <p>Ad markers indicate when ads should be inserted during playback. If you include ad markers in the content stream in your upstream encoders, then you need to inform MediaPackage what to do with the ad markers in the output. Choose what you want MediaPackage to do with the ad markers.</p>
    #            <p>Value description: </p>
    #            <ul>
    #               <li>
    #                  <p>DATERANGE - Insert EXT-X-DATERANGE tags to signal ad and program transition events in TS and CMAF manifests. If you use DATERANGE, you must set a programDateTimeIntervalSeconds value of 1 or higher. To learn more about DATERANGE, see <a href="http://docs.aws.amazon.com/mediapackage/latest/ug/scte-35-ad-marker-ext-x-daterange.html">SCTE-35 Ad Marker EXT-X-DATERANGE</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ScteHls < Struct.new(
      :ad_marker_hls,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The segment configuration, including the segment name, duration, and other configuration values.</p>
    # @!attribute segment_duration_seconds
    #   <p>The duration (in seconds) of each segment. Enter a value equal to, or a multiple of, the input segment duration. If the value that you enter is different from the input segment duration, MediaPackage rounds segments to the nearest multiple of the input segment duration.</p>
    #   @return [Integer]
    # @!attribute segment_name
    #   <p>The name that describes the segment. The name is the base name of the segment used in all content manifests inside of the endpoint. You can't use spaces in the name.</p>
    #   @return [String]
    # @!attribute ts_use_audio_rendition_group
    #   <p>When selected, MediaPackage bundles all audio tracks in a rendition group. All other tracks in the stream can be used with any audio rendition from the group.</p>
    #   @return [Boolean]
    # @!attribute include_iframe_only_streams
    #   <p>When selected, the stream set includes an additional I-frame only stream, along with the other tracks. If false, this extra stream is not included. MediaPackage generates an I-frame only stream from the first rendition in the manifest. The service inserts EXT-I-FRAMES-ONLY tags in the output manifest, and then generates and includes an I-frames only playlist in the stream. This playlist permits player functionality like fast forward and rewind.</p>
    #   @return [Boolean]
    # @!attribute ts_include_dvb_subtitles
    #   <p>By default, MediaPackage excludes all digital video broadcasting (DVB) subtitles from the output. When selected, MediaPackage passes through DVB subtitles into the output.</p>
    #   @return [Boolean]
    # @!attribute scte
    #   <p>The SCTE configuration options in the segment settings.</p>
    #   @return [Types::Scte]
    # @!attribute encryption
    #   <p>The parameters for encrypting content.</p>
    #   @return [Types::Encryption]
    class Segment < Struct.new(
      :segment_duration_seconds,
      :segment_name,
      :ts_use_audio_rendition_group,
      :include_iframe_only_streams,
      :ts_include_dvb_subtitles,
      :scte,
      :encryption,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The parameters for the SPEKE key provider.</p>
    # @!attribute encryption_contract_configuration
    #   <p>Configure one or more content encryption keys for your endpoints that use SPEKE Version 2.0. The encryption contract defines which content keys are used to encrypt the audio and video tracks in your stream. To configure the encryption contract, specify which audio and video encryption presets to use.</p>
    #   @return [Types::EncryptionContractConfiguration]
    # @!attribute resource_id
    #   <p>The unique identifier for the content. The service sends this to the key server to identify the current endpoint. How unique you make this depends on how fine-grained you want access controls to be. The service does not permit you to use the same ID for two simultaneous encryption processes. The resource ID is also known as the content ID.</p>
    #            <p>The following example shows a resource ID: <code>MovieNight20171126093045</code>
    #            </p>
    #   @return [String]
    # @!attribute drm_systems
    #   <p>The DRM solution provider you're using to protect your content during distribution.</p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The ARN for the IAM role granted by the key provider that provides access to the key provider API. This role must have a trust policy that allows MediaPackage to assume the role, and it must have a sufficient permissions policy to allow access to the specific key retrieval URL. Get this from your DRM solution provider.</p>
    #            <p>Valid format: <code>arn:aws:iam::{accountID}:role/{name}</code>. The following example shows a role ARN: <code>arn:aws:iam::444455556666:role/SpekeAccess</code>
    #            </p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the API Gateway proxy that you set up to talk to your key server. The API Gateway proxy must reside in the same AWS Region as MediaPackage and must start with https://.</p>
    #            <p>The following example shows a URL: <code>https://1wm2dx1f33.execute-api.us-west-2.amazonaws.com/SpekeSample/copyProtection</code>
    #            </p>
    #   @return [String]
    class SpekeKeyProvider < Struct.new(
      :encryption_contract_configuration,
      :resource_id,
      :drm_systems,
      :role_arn,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>To insert an EXT-X-START tag in your HLS playlist, specify a StartTag configuration object with a valid TimeOffset. When you do, you can also optionally specify whether to include a PRECISE value in the EXT-X-START tag.</p>
    # @!attribute time_offset
    #   <p>Specify the value for TIME-OFFSET within your EXT-X-START tag. Enter a signed floating point value which, if positive, must be less than the configured manifest duration minus three times the configured segment target duration. If negative, the absolute value must be larger than three times the configured segment target duration, and the absolute value must be smaller than the configured manifest duration.</p>
    #   @return [Float]
    # @!attribute precise
    #   <p>Specify the value for PRECISE within your EXT-X-START tag. Leave blank, or choose false, to use the default value NO. Choose yes to use the value YES.</p>
    #   @return [Boolean]
    class StartTag < Struct.new(
      :time_offset,
      :precise,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the MediaPackage resource that you're adding tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request throughput limit was exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TsEncryptionMethod
      AES_128 = 'AES_128'
      SAMPLE_AES = 'SAMPLE_AES'
    end

    # @!attribute resource_arn
    #   <p>The ARN of the MediaPackage resource that you're removing tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The expected current Entity Tag (ETag) for the resource. If the specified ETag does not match the resource's current entity tag, the update request will be rejected.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Any descriptive information that you want to add to the channel group for future identification purposes.</p>
    #   @return [String]
    class UpdateChannelGroupRequest < Struct.new(
      :channel_group_name,
      :e_tag,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute egress_domain
    #   <p>The output domain where the source stream is sent. Integrate the domain with a downstream CDN (such as Amazon CloudFront) or playback device.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the channel group was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the channel group was modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for your channel group.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current Entity Tag (ETag) associated with this resource. The entity tag can be used to safely make concurrent updates to the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The comma-separated list of tag key:value pairs assigned to the channel group.</p>
    #   @return [Hash<String, String>]
    class UpdateChannelGroupResponse < Struct.new(
      :channel_group_name,
      :arn,
      :egress_domain,
      :created_at,
      :modified_at,
      :description,
      :e_tag,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The expected current Entity Tag (ETag) for the resource. If the specified ETag does not match the resource's current entity tag, the update request will be rejected.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Any descriptive information that you want to add to the channel for future identification purposes.</p>
    #   @return [String]
    # @!attribute input_switch_configuration
    #   <p>The configuration for input switching based on the media quality confidence score (MQCS) as provided from AWS Elemental MediaLive. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Types::InputSwitchConfiguration]
    # @!attribute output_header_configuration
    #   <p>The settings for what common media server data (CMSD) headers AWS Elemental MediaPackage includes in responses to the CDN. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Types::OutputHeaderConfiguration]
    class UpdateChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :e_tag,
      :description,
      :input_switch_configuration,
      :output_header_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    #   @return [String]
    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the channel was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the channel was modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for your channel.</p>
    #   @return [String]
    # @!attribute ingest_endpoints
    #   <p>The list of ingest endpoints.</p>
    #   @return [Array<Types::IngestEndpoint>]
    # @!attribute input_type
    #   <p>The input type will be an immutable field which will be used to define whether the channel will allow CMAF ingest or HLS ingest. If unprovided, it will default to HLS to preserve current behavior.</p>
    #            <p>The allowed values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HLS</code> - The HLS streaming specification (which defines M3U8 manifests and TS segments).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CMAF</code> - The DASH-IF CMAF Ingest specification (which defines CMAF segments with optional DASH manifests).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current Entity Tag (ETag) associated with this resource. The entity tag can be used to safely make concurrent updates to the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The comma-separated list of tag key:value pairs assigned to the channel.</p>
    #   @return [Hash<String, String>]
    # @!attribute input_switch_configuration
    #   <p>The configuration for input switching based on the media quality confidence score (MQCS) as provided from AWS Elemental MediaLive. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Types::InputSwitchConfiguration]
    # @!attribute output_header_configuration
    #   <p>The settings for what common media server data (CMSD) headers AWS Elemental MediaPackage includes in responses to the CDN. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
    #   @return [Types::OutputHeaderConfiguration]
    class UpdateChannelResponse < Struct.new(
      :arn,
      :channel_name,
      :channel_group_name,
      :created_at,
      :modified_at,
      :description,
      :ingest_endpoints,
      :input_type,
      :e_tag,
      :tags,
      :input_switch_configuration,
      :output_header_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group. </p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel. </p>
    #   @return [String]
    # @!attribute container_type
    #   <p>The type of container attached to this origin endpoint. A container type is a file format that encapsulates one or more media streams, such as audio and video, into a single file. </p>
    #   @return [String]
    # @!attribute segment
    #   <p>The segment configuration, including the segment name, duration, and other configuration values.</p>
    #   @return [Types::Segment]
    # @!attribute description
    #   <p>Any descriptive information that you want to add to the origin endpoint for future identification purposes.</p>
    #   @return [String]
    # @!attribute startover_window_seconds
    #   <p>The size of the window (in seconds) to create a window of the live stream that's available for on-demand viewing. Viewers can start-over or catch-up on content that falls within the window. The maximum startover window is 1,209,600 seconds (14 days).</p>
    #   @return [Integer]
    # @!attribute hls_manifests
    #   <p>An HTTP live streaming (HLS) manifest configuration.</p>
    #   @return [Array<Types::CreateHlsManifestConfiguration>]
    # @!attribute low_latency_hls_manifests
    #   <p>A low-latency HLS manifest configuration.</p>
    #   @return [Array<Types::CreateLowLatencyHlsManifestConfiguration>]
    # @!attribute dash_manifests
    #   <p>A DASH manifest configuration.</p>
    #   @return [Array<Types::CreateDashManifestConfiguration>]
    # @!attribute mss_manifests
    #   <p>A list of Microsoft Smooth Streaming (MSS) manifest configurations to update for the origin endpoint. This replaces the existing MSS manifest configurations.</p>
    #   @return [Array<Types::CreateMssManifestConfiguration>]
    # @!attribute force_endpoint_error_configuration
    #   <p>The failover settings for the endpoint.</p>
    #   @return [Types::ForceEndpointErrorConfiguration]
    # @!attribute e_tag
    #   <p>The expected current Entity Tag (ETag) for the resource. If the specified ETag does not match the resource's current entity tag, the update request will be rejected.</p>
    #   @return [String]
    class UpdateOriginEndpointRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :segment,
      :description,
      :startover_window_seconds,
      :hls_manifests,
      :low_latency_hls_manifests,
      :dash_manifests,
      :mss_manifests,
      :force_endpoint_error_configuration,
      :e_tag,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN associated with the resource.</p>
    #   @return [String]
    # @!attribute channel_group_name
    #   <p>The name that describes the channel group. The name is the primary identifier for the channel group, and must be unique for your account in the AWS Region.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name that describes the channel. The name is the primary identifier for the channel, and must be unique for your account in the AWS Region and channel group.</p>
    #   @return [String]
    # @!attribute origin_endpoint_name
    #   <p>The name that describes the origin endpoint. The name is the primary identifier for the origin endpoint, and and must be unique for your account in the AWS Region and channel.</p>
    #   @return [String]
    # @!attribute container_type
    #   <p>The type of container attached to this origin endpoint.</p>
    #   @return [String]
    # @!attribute segment
    #   <p>The segment configuration, including the segment name, duration, and other configuration values.</p>
    #   @return [Types::Segment]
    # @!attribute created_at
    #   <p>The date and time the origin endpoint was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the origin endpoint was modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the origin endpoint.</p>
    #   @return [String]
    # @!attribute startover_window_seconds
    #   <p>The size of the window (in seconds) to create a window of the live stream that's available for on-demand viewing. Viewers can start-over or catch-up on content that falls within the window.</p>
    #   @return [Integer]
    # @!attribute hls_manifests
    #   <p>An HTTP live streaming (HLS) manifest configuration.</p>
    #   @return [Array<Types::GetHlsManifestConfiguration>]
    # @!attribute low_latency_hls_manifests
    #   <p>A low-latency HLS manifest configuration.</p>
    #   @return [Array<Types::GetLowLatencyHlsManifestConfiguration>]
    # @!attribute mss_manifests
    #   <p>The updated Microsoft Smooth Streaming (MSS) manifest configurations for this origin endpoint.</p>
    #   @return [Array<Types::GetMssManifestConfiguration>]
    # @!attribute force_endpoint_error_configuration
    #   <p>The failover settings for the endpoint.</p>
    #   @return [Types::ForceEndpointErrorConfiguration]
    # @!attribute e_tag
    #   <p>The current Entity Tag (ETag) associated with this resource. The entity tag can be used to safely make concurrent updates to the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The comma-separated list of tag key:value pairs assigned to the origin endpoint.</p>
    #   @return [Hash<String, String>]
    # @!attribute dash_manifests
    #   <p>A DASH manifest configuration.</p>
    #   @return [Array<Types::GetDashManifestConfiguration>]
    class UpdateOriginEndpointResponse < Struct.new(
      :arn,
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :segment,
      :created_at,
      :modified_at,
      :description,
      :startover_window_seconds,
      :hls_manifests,
      :low_latency_hls_manifests,
      :mss_manifests,
      :force_endpoint_error_configuration,
      :e_tag,
      :tags,
      :dash_manifests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input failed to meet the constraints specified by the AWS service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute validation_exception_type
    #   <p>The type of ValidationException.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :validation_exception_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ValidationExceptionType
      CONTAINER_TYPE_IMMUTABLE = 'CONTAINER_TYPE_IMMUTABLE'
      INVALID_PAGINATION_TOKEN = 'INVALID_PAGINATION_TOKEN'
      INVALID_PAGINATION_MAX_RESULTS = 'INVALID_PAGINATION_MAX_RESULTS'
      INVALID_POLICY = 'INVALID_POLICY'
      INVALID_ROLE_ARN = 'INVALID_ROLE_ARN'
      MANIFEST_NAME_COLLISION = 'MANIFEST_NAME_COLLISION'
      ENCRYPTION_METHOD_CONTAINER_TYPE_MISMATCH = 'ENCRYPTION_METHOD_CONTAINER_TYPE_MISMATCH'
      CENC_IV_INCOMPATIBLE = 'CENC_IV_INCOMPATIBLE'
      ENCRYPTION_CONTRACT_WITHOUT_AUDIO_RENDITION_INCOMPATIBLE = 'ENCRYPTION_CONTRACT_WITHOUT_AUDIO_RENDITION_INCOMPATIBLE'
      ENCRYPTION_CONTRACT_WITH_ISM_CONTAINER_INCOMPATIBLE = 'ENCRYPTION_CONTRACT_WITH_ISM_CONTAINER_INCOMPATIBLE'
      ENCRYPTION_CONTRACT_UNENCRYPTED = 'ENCRYPTION_CONTRACT_UNENCRYPTED'
      ENCRYPTION_CONTRACT_SHARED = 'ENCRYPTION_CONTRACT_SHARED'
      NUM_MANIFESTS_LOW = 'NUM_MANIFESTS_LOW'
      NUM_MANIFESTS_HIGH = 'NUM_MANIFESTS_HIGH'
      MANIFEST_DRM_SYSTEMS_INCOMPATIBLE = 'MANIFEST_DRM_SYSTEMS_INCOMPATIBLE'
      DRM_SYSTEMS_ENCRYPTION_METHOD_INCOMPATIBLE = 'DRM_SYSTEMS_ENCRYPTION_METHOD_INCOMPATIBLE'
      ROLE_ARN_NOT_ASSUMABLE = 'ROLE_ARN_NOT_ASSUMABLE'
      ROLE_ARN_LENGTH_OUT_OF_RANGE = 'ROLE_ARN_LENGTH_OUT_OF_RANGE'
      ROLE_ARN_INVALID_FORMAT = 'ROLE_ARN_INVALID_FORMAT'
      URL_INVALID = 'URL_INVALID'
      URL_SCHEME = 'URL_SCHEME'
      URL_USER_INFO = 'URL_USER_INFO'
      URL_PORT = 'URL_PORT'
      URL_UNKNOWN_HOST = 'URL_UNKNOWN_HOST'
      URL_LOCAL_ADDRESS = 'URL_LOCAL_ADDRESS'
      URL_LOOPBACK_ADDRESS = 'URL_LOOPBACK_ADDRESS'
      URL_LINK_LOCAL_ADDRESS = 'URL_LINK_LOCAL_ADDRESS'
      URL_MULTICAST_ADDRESS = 'URL_MULTICAST_ADDRESS'
      MEMBER_INVALID = 'MEMBER_INVALID'
      MEMBER_MISSING = 'MEMBER_MISSING'
      MEMBER_MIN_VALUE = 'MEMBER_MIN_VALUE'
      MEMBER_MAX_VALUE = 'MEMBER_MAX_VALUE'
      MEMBER_MIN_LENGTH = 'MEMBER_MIN_LENGTH'
      MEMBER_MAX_LENGTH = 'MEMBER_MAX_LENGTH'
      MEMBER_INVALID_ENUM_VALUE = 'MEMBER_INVALID_ENUM_VALUE'
      MEMBER_DOES_NOT_MATCH_PATTERN = 'MEMBER_DOES_NOT_MATCH_PATTERN'
      INVALID_MANIFEST_FILTER = 'INVALID_MANIFEST_FILTER'
      INVALID_TIME_DELAY_SECONDS = 'INVALID_TIME_DELAY_SECONDS'
      END_TIME_EARLIER_THAN_START_TIME = 'END_TIME_EARLIER_THAN_START_TIME'
      TS_CONTAINER_TYPE_WITH_DASH_MANIFEST = 'TS_CONTAINER_TYPE_WITH_DASH_MANIFEST'
      DIRECT_MODE_WITH_TIMING_SOURCE = 'DIRECT_MODE_WITH_TIMING_SOURCE'
      NONE_MODE_WITH_TIMING_SOURCE = 'NONE_MODE_WITH_TIMING_SOURCE'
      TIMING_SOURCE_MISSING = 'TIMING_SOURCE_MISSING'
      UPDATE_PERIOD_SMALLER_THAN_SEGMENT_DURATION = 'UPDATE_PERIOD_SMALLER_THAN_SEGMENT_DURATION'
      PERIOD_TRIGGERS_NONE_SPECIFIED_WITH_ADDITIONAL_VALUES = 'PERIOD_TRIGGERS_NONE_SPECIFIED_WITH_ADDITIONAL_VALUES'
      DRM_SIGNALING_MISMATCH_SEGMENT_ENCRYPTION_STATUS = 'DRM_SIGNALING_MISMATCH_SEGMENT_ENCRYPTION_STATUS'
      ONLY_CMAF_INPUT_TYPE_ALLOW_FORCE_ENDPOINT_ERROR_CONFIGURATION = 'ONLY_CMAF_INPUT_TYPE_ALLOW_FORCE_ENDPOINT_ERROR_CONFIGURATION'
      SOURCE_DISRUPTIONS_ENABLED_INCORRECTLY = 'SOURCE_DISRUPTIONS_ENABLED_INCORRECTLY'
      HARVESTED_MANIFEST_HAS_START_END_FILTER_CONFIGURATION = 'HARVESTED_MANIFEST_HAS_START_END_FILTER_CONFIGURATION'
      HARVESTED_MANIFEST_NOT_FOUND_ON_ENDPOINT = 'HARVESTED_MANIFEST_NOT_FOUND_ON_ENDPOINT'
      TOO_MANY_IN_PROGRESS_HARVEST_JOBS = 'TOO_MANY_IN_PROGRESS_HARVEST_JOBS'
      HARVEST_JOB_INELIGIBLE_FOR_CANCELLATION = 'HARVEST_JOB_INELIGIBLE_FOR_CANCELLATION'
      INVALID_HARVEST_JOB_DURATION = 'INVALID_HARVEST_JOB_DURATION'
      HARVEST_JOB_S3_DESTINATION_MISSING_OR_INCOMPLETE = 'HARVEST_JOB_S3_DESTINATION_MISSING_OR_INCOMPLETE'
      HARVEST_JOB_UNABLE_TO_WRITE_TO_S3_DESTINATION = 'HARVEST_JOB_UNABLE_TO_WRITE_TO_S3_DESTINATION'
      HARVEST_JOB_CUSTOMER_ENDPOINT_READ_ACCESS_DENIED = 'HARVEST_JOB_CUSTOMER_ENDPOINT_READ_ACCESS_DENIED'
      CLIP_START_TIME_WITH_START_OR_END = 'CLIP_START_TIME_WITH_START_OR_END'
      START_TAG_TIME_OFFSET_INVALID = 'START_TAG_TIME_OFFSET_INVALID'
      INCOMPATIBLE_DASH_PROFILE_DVB_DASH_CONFIGURATION = 'INCOMPATIBLE_DASH_PROFILE_DVB_DASH_CONFIGURATION'
      DASH_DVB_ATTRIBUTES_WITHOUT_DVB_DASH_PROFILE = 'DASH_DVB_ATTRIBUTES_WITHOUT_DVB_DASH_PROFILE'
      INCOMPATIBLE_DASH_COMPACTNESS_CONFIGURATION = 'INCOMPATIBLE_DASH_COMPACTNESS_CONFIGURATION'
      INCOMPATIBLE_XML_ENCODING = 'INCOMPATIBLE_XML_ENCODING'
      CMAF_EXCLUDE_SEGMENT_DRM_METADATA_INCOMPATIBLE_CONTAINER_TYPE = 'CMAF_EXCLUDE_SEGMENT_DRM_METADATA_INCOMPATIBLE_CONTAINER_TYPE'
      ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_INPUT_SWITCHING = 'ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_INPUT_SWITCHING'
      ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_OUTPUT_CONFIGURATION = 'ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_OUTPUT_CONFIGURATION'
      ONLY_CMAF_INPUT_TYPE_ALLOW_PREFERRED_INPUT_CONFIGURATION = 'ONLY_CMAF_INPUT_TYPE_ALLOW_PREFERRED_INPUT_CONFIGURATION'
      TS_CONTAINER_TYPE_WITH_MSS_MANIFEST = 'TS_CONTAINER_TYPE_WITH_MSS_MANIFEST'
      CMAF_CONTAINER_TYPE_WITH_MSS_MANIFEST = 'CMAF_CONTAINER_TYPE_WITH_MSS_MANIFEST'
      ISM_CONTAINER_TYPE_WITH_HLS_MANIFEST = 'ISM_CONTAINER_TYPE_WITH_HLS_MANIFEST'
      ISM_CONTAINER_TYPE_WITH_LL_HLS_MANIFEST = 'ISM_CONTAINER_TYPE_WITH_LL_HLS_MANIFEST'
      ISM_CONTAINER_TYPE_WITH_DASH_MANIFEST = 'ISM_CONTAINER_TYPE_WITH_DASH_MANIFEST'
      ISM_CONTAINER_TYPE_WITH_SCTE = 'ISM_CONTAINER_TYPE_WITH_SCTE'
      ISM_CONTAINER_WITH_KEY_ROTATION = 'ISM_CONTAINER_WITH_KEY_ROTATION'
      BATCH_GET_SECRET_VALUE_DENIED = 'BATCH_GET_SECRET_VALUE_DENIED'
      GET_SECRET_VALUE_DENIED = 'GET_SECRET_VALUE_DENIED'
      DESCRIBE_SECRET_DENIED = 'DESCRIBE_SECRET_DENIED'
      INVALID_SECRET_FORMAT = 'INVALID_SECRET_FORMAT'
      SECRET_IS_NOT_ONE_KEY_VALUE_PAIR = 'SECRET_IS_NOT_ONE_KEY_VALUE_PAIR'
      INVALID_SECRET_KEY = 'INVALID_SECRET_KEY'
      INVALID_SECRET_VALUE = 'INVALID_SECRET_VALUE'
      SECRET_ARN_RESOURCE_NOT_FOUND = 'SECRET_ARN_RESOURCE_NOT_FOUND'
      DECRYPT_SECRET_FAILED = 'DECRYPT_SECRET_FAILED'
      TOO_MANY_SECRETS = 'TOO_MANY_SECRETS'
      DUPLICATED_SECRET = 'DUPLICATED_SECRET'
      MALFORMED_SECRET_ARN = 'MALFORMED_SECRET_ARN'
      SECRET_FROM_DIFFERENT_ACCOUNT = 'SECRET_FROM_DIFFERENT_ACCOUNT'
      SECRET_FROM_DIFFERENT_REGION = 'SECRET_FROM_DIFFERENT_REGION'
      INVALID_SECRET = 'INVALID_SECRET'
    end

  end
end
