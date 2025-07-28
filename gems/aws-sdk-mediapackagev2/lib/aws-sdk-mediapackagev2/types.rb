# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaPackageV2
  module Types

    # Access is denied because either you don't have permissions to perform
    # the requested operation or MediaPackage is getting throttling errors
    # with CDN authorization. The user or role that is making the request
    # must have at least one IAM permissions policy attached that grants the
    # required permissions. For more information, see Access Management in
    # the IAM User Guide. Or, if you're using CDN authorization, you will
    # receive this exception if MediaPackage receives a throttling error
    # from Secrets Manager.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name of the channel group containing the channel from which the
    #   harvest job is running.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel from which the harvest job is running.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name of the origin endpoint that the harvest job is harvesting
    #   from. This cannot be changed after the harvest job is submitted.
    #   @return [String]
    #
    # @!attribute [rw] harvest_job_name
    #   The name of the harvest job to cancel. This name must be unique
    #   within the channel and cannot be changed after the harvest job is
    #   submitted.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current Entity Tag (ETag) associated with the harvest job. Used
    #   for concurrency control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CancelHarvestJobRequest AWS API Documentation
    #
    class CancelHarvestJobRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :harvest_job_name,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CancelHarvestJobResponse AWS API Documentation
    #
    class CancelHarvestJobResponse < Aws::EmptyStructure; end

    # The settings to enable CDN authorization headers in MediaPackage.
    #
    # @!attribute [rw] cdn_identifier_secret_arns
    #   The ARN for the secret in Secrets Manager that your CDN uses for
    #   authorization to access the endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] secrets_role_arn
    #   The ARN for the IAM role that gives MediaPackage read access to
    #   Secrets Manager and KMS for CDN authorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CdnAuthConfiguration AWS API Documentation
    #
    class CdnAuthConfiguration < Struct.new(
      :cdn_identifier_secret_arns,
      :secrets_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the channel group.
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel group was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel group was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the channel
    #   group for future identification purposes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ChannelGroupListConfiguration AWS API Documentation
    #
    class ChannelGroupListConfiguration < Struct.new(
      :channel_group_name,
      :arn,
      :created_at,
      :modified_at,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the channel.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the channel for
    #   future identification purposes.
    #   @return [String]
    #
    # @!attribute [rw] input_type
    #   The input type will be an immutable field which will be used to
    #   define whether the channel will allow CMAF ingest or HLS ingest. If
    #   unprovided, it will default to HLS to preserve current behavior.
    #
    #   The allowed values are:
    #
    #   * `HLS` - The HLS streaming specification (which defines M3U8
    #     manifests and TS segments).
    #
    #   * `CMAF` - The DASH-IF CMAF Ingest specification (which defines CMAF
    #     segments with optional DASH manifests).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ChannelListConfiguration AWS API Documentation
    #
    class ChannelListConfiguration < Struct.new(
      :arn,
      :channel_name,
      :channel_group_name,
      :created_at,
      :modified_at,
      :description,
      :input_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting this resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] conflict_exception_type
    #   The type of ConflictException.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :conflict_exception_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region. You can't use spaces in the name. You
    #   can't change the name after you create the channel group.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Enter any descriptive text that helps you to identify the channel
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannelGroupRequest AWS API Documentation
    #
    class CreateChannelGroupRequest < Struct.new(
      :channel_group_name,
      :client_token,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] egress_domain
    #   The output domain where the source stream should be sent. Integrate
    #   the egress domain with a downstream CDN (such as Amazon CloudFront)
    #   or playback device.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel group was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel group was modified.
    #   @return [Time]
    #
    # @!attribute [rw] etag
    #   The current Entity Tag (ETag) associated with this resource. The
    #   entity tag can be used to safely make concurrent updates to the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for your channel group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannelGroupResponse AWS API Documentation
    #
    class CreateChannelGroupResponse < Struct.new(
      :channel_group_name,
      :arn,
      :egress_domain,
      :created_at,
      :modified_at,
      :etag,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group. You can't change the name after
    #   you create the channel.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] input_type
    #   The input type will be an immutable field which will be used to
    #   define whether the channel will allow CMAF ingest or HLS ingest. If
    #   unprovided, it will default to HLS to preserve current behavior.
    #
    #   The allowed values are:
    #
    #   * `HLS` - The HLS streaming specification (which defines M3U8
    #     manifests and TS segments).
    #
    #   * `CMAF` - The DASH-IF CMAF Ingest specification (which defines CMAF
    #     segments with optional DASH manifests).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Enter any descriptive text that helps you to identify the channel.
    #   @return [String]
    #
    # @!attribute [rw] input_switch_configuration
    #   The configuration for input switching based on the media quality
    #   confidence score (MQCS) as provided from AWS Elemental MediaLive.
    #   This setting is valid only when `InputType` is `CMAF`.
    #   @return [Types::InputSwitchConfiguration]
    #
    # @!attribute [rw] output_header_configuration
    #   The settings for what common media server data (CMSD) headers AWS
    #   Elemental MediaPackage includes in responses to the CDN. This
    #   setting is valid only when `InputType` is `CMAF`.
    #   @return [Types::OutputHeaderConfiguration]
    #
    # @!attribute [rw] tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannelRequest AWS API Documentation
    #
    class CreateChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :client_token,
      :input_type,
      :description,
      :input_switch_configuration,
      :output_header_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your channel.
    #   @return [String]
    #
    # @!attribute [rw] ingest_endpoints
    #   The list of ingest endpoints.
    #   @return [Array<Types::IngestEndpoint>]
    #
    # @!attribute [rw] input_type
    #   The input type will be an immutable field which will be used to
    #   define whether the channel will allow CMAF ingest or HLS ingest. If
    #   unprovided, it will default to HLS to preserve current behavior.
    #
    #   The allowed values are:
    #
    #   * `HLS` - The HLS streaming specification (which defines M3U8
    #     manifests and TS segments).
    #
    #   * `CMAF` - The DASH-IF CMAF Ingest specification (which defines CMAF
    #     segments with optional DASH manifests).
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current Entity Tag (ETag) associated with this resource. The
    #   entity tag can be used to safely make concurrent updates to the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_switch_configuration
    #   The configuration for input switching based on the media quality
    #   confidence score (MQCS) as provided from AWS Elemental MediaLive.
    #   This setting is valid only when `InputType` is `CMAF`.
    #   @return [Types::InputSwitchConfiguration]
    #
    # @!attribute [rw] output_header_configuration
    #   The settings for what common media server data (CMSD) headers AWS
    #   Elemental MediaPackage includes in responses to the CDN. This
    #   setting is valid only when `InputType` is `CMAF`.
    #   @return [Types::OutputHeaderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannelResponse AWS API Documentation
    #
    class CreateChannelResponse < Struct.new(
      :arn,
      :channel_name,
      :channel_group_name,
      :created_at,
      :modified_at,
      :description,
      :ingest_endpoints,
      :input_type,
      :etag,
      :tags,
      :input_switch_configuration,
      :output_header_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create a DASH manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint.
    #   @return [String]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of the manifest's content.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_configuration
    #   Filter configuration includes settings for manifest filtering, start
    #   and end times, and time delay that apply to all of your egress
    #   requests for this manifest.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] min_update_period_seconds
    #   Minimum amount of time (in seconds) that the player should wait
    #   before requesting updates to the manifest.
    #   @return [Integer]
    #
    # @!attribute [rw] min_buffer_time_seconds
    #   Minimum amount of content (in seconds) that a player must keep
    #   available in the buffer.
    #   @return [Integer]
    #
    # @!attribute [rw] suggested_presentation_delay_seconds
    #   The amount of time (in seconds) that the player should be from the
    #   end of the manifest.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_template_format
    #   Determines the type of variable used in the `media` URL of the
    #   `SegmentTemplate` tag in the manifest. Also specifies if segment
    #   timeline information is included in `SegmentTimeline` or
    #   `SegmentTemplate`.
    #
    #   Value description:
    #
    #   * `NUMBER_WITH_TIMELINE` - The `$Number$` variable is used in the
    #     `media` URL. The value of this variable is the sequential number
    #     of the segment. A full `SegmentTimeline` object is presented in
    #     each `SegmentTemplate`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] period_triggers
    #   A list of triggers that controls when AWS Elemental MediaPackage
    #   separates the MPEG-DASH manifest into multiple periods. Type `ADS`
    #   to indicate that AWS Elemental MediaPackage must create periods in
    #   the output manifest that correspond to SCTE-35 ad markers in the
    #   input source. Leave this value empty to indicate that the manifest
    #   is contained all in one period. For more information about periods
    #   in the DASH manifest, see [Multi-period DASH in AWS Elemental
    #   MediaPackage][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediapackage/latest/userguide/multi-period.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] scte_dash
    #   The SCTE configuration.
    #   @return [Types::ScteDash]
    #
    # @!attribute [rw] drm_signaling
    #   Determines how the DASH manifest signals the DRM content.
    #   @return [String]
    #
    # @!attribute [rw] utc_timing
    #   Determines the type of UTC timing included in the DASH Media
    #   Presentation Description (MPD).
    #   @return [Types::DashUtcTiming]
    #
    # @!attribute [rw] profiles
    #   The profile that the output is compliant with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] base_urls
    #   The base URLs to use for retrieving segments.
    #   @return [Array<Types::DashBaseUrl>]
    #
    # @!attribute [rw] program_information
    #   Details about the content that you want MediaPackage to pass through
    #   in the manifest to the playback device.
    #   @return [Types::DashProgramInformation]
    #
    # @!attribute [rw] dvb_settings
    #   For endpoints that use the DVB-DASH profile only. The font download
    #   and error reporting information that you want MediaPackage to pass
    #   through to the manifest.
    #   @return [Types::DashDvbSettings]
    #
    # @!attribute [rw] compactness
    #   The layout of the DASH manifest that MediaPackage produces.
    #   `STANDARD` indicates a default manifest, which is compacted. `NONE`
    #   indicates a full manifest.
    #
    #   For information about compactness, see [DASH manifest
    #   compactness][1] in the *Elemental MediaPackage v2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediapackage/latest/userguide/compacted.html
    #   @return [String]
    #
    # @!attribute [rw] subtitle_configuration
    #   The configuration for DASH subtitles.
    #   @return [Types::DashSubtitleConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateDashManifestConfiguration AWS API Documentation
    #
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
      :subtitle_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for creating a new harvest job.
    #
    # @!attribute [rw] channel_group_name
    #   The name of the channel group containing the channel from which to
    #   harvest content.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel from which to harvest content.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name of the origin endpoint from which to harvest content.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] harvested_manifests
    #   A list of manifests to be harvested.
    #   @return [Types::HarvestedManifests]
    #
    # @!attribute [rw] schedule_configuration
    #   The configuration for when the harvest job should run, including
    #   start and end times.
    #   @return [Types::HarvesterScheduleConfiguration]
    #
    # @!attribute [rw] destination
    #   The S3 destination where the harvested content will be placed.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] harvest_job_name
    #   A name for the harvest job. This name must be unique within the
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with the harvest job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateHarvestJobRequest AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object returned after creating a harvest job.
    #
    # @!attribute [rw] channel_group_name
    #   The name of the channel group containing the channel from which
    #   content is being harvested.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel from which content is being harvested.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name of the origin endpoint from which content is being
    #   harvested.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The S3 destination where the harvested content will be placed.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] harvest_job_name
    #   The name of the created harvest job.
    #   @return [String]
    #
    # @!attribute [rw] harvested_manifests
    #   A list of manifests that will be harvested.
    #   @return [Types::HarvestedManifests]
    #
    # @!attribute [rw] description
    #   The description of the harvest job, if provided.
    #   @return [String]
    #
    # @!attribute [rw] schedule_configuration
    #   The configuration for when the harvest job will run, including start
    #   and end times.
    #   @return [Types::HarvesterScheduleConfiguration]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created harvest job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the harvest job was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the harvest job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the harvest job (e.g., CREATED, IN\_PROGRESS,
    #   ABORTED, COMPLETED, FAILED).
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message if the harvest job creation failed.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the harvest job. Used for concurrency
    #   control.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with the harvest job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateHarvestJobResponse AWS API Documentation
    #
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
      :etag,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create an HTTP live streaming (HLS) manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index,
    #   with an added suffix to distinguish it from the manifest name. The
    #   manifestName on the HLSManifest object overrides the manifestName
    #   you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] scte_hls
    #   The SCTE configuration.
    #   @return [Types::ScteHls]
    #
    # @!attribute [rw] start_tag
    #   To insert an EXT-X-START tag in your HLS playlist, specify a
    #   StartTag configuration object with a valid TimeOffset. When you do,
    #   you can also optionally specify whether to include a PRECISE value
    #   in the EXT-X-START tag.
    #   @return [Types::StartTag]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of the manifest's content.
    #   @return [Integer]
    #
    # @!attribute [rw] program_date_time_interval_seconds
    #   Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the
    #   interval that you specify. If you don't enter an interval,
    #   EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest. The
    #   tags sync the stream to the wall clock so that viewers can seek to a
    #   specific time in the playback timeline on the player.
    #
    #   Irrespective of this parameter, if any ID3Timed metadata is in the
    #   HLS input, it is passed through to the HLS output.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_configuration
    #   Filter configuration includes settings for manifest filtering, start
    #   and end times, and time delay that apply to all of your egress
    #   requests for this manifest.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] url_encode_child_manifest
    #   When enabled, MediaPackage URL-encodes the query string for API
    #   requests for HLS child manifests to comply with Amazon Web Services
    #   Signature Version 4 (SigV4) signature signing protocol. For more
    #   information, see [Amazon Web Services Signature Version 4 for API
    #   requests][1] in *Identity and Access Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateHlsManifestConfiguration AWS API Documentation
    #
    class CreateHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :scte_hls,
      :start_tag,
      :manifest_window_seconds,
      :program_date_time_interval_seconds,
      :filter_configuration,
      :url_encode_child_manifest)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create a low-latency HTTP live streaming (HLS) manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index,
    #   with an added suffix to distinguish it from the manifest name. The
    #   manifestName on the HLSManifest object overrides the manifestName
    #   you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] scte_hls
    #   The SCTE configuration.
    #   @return [Types::ScteHls]
    #
    # @!attribute [rw] start_tag
    #   To insert an EXT-X-START tag in your HLS playlist, specify a
    #   StartTag configuration object with a valid TimeOffset. When you do,
    #   you can also optionally specify whether to include a PRECISE value
    #   in the EXT-X-START tag.
    #   @return [Types::StartTag]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of the manifest's content.
    #   @return [Integer]
    #
    # @!attribute [rw] program_date_time_interval_seconds
    #   Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the
    #   interval that you specify. If you don't enter an interval,
    #   EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest. The
    #   tags sync the stream to the wall clock so that viewers can seek to a
    #   specific time in the playback timeline on the player.
    #
    #   Irrespective of this parameter, if any ID3Timed metadata is in the
    #   HLS input, it is passed through to the HLS output.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_configuration
    #   Filter configuration includes settings for manifest filtering, start
    #   and end times, and time delay that apply to all of your egress
    #   requests for this manifest.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] url_encode_child_manifest
    #   When enabled, MediaPackage URL-encodes the query string for API
    #   requests for LL-HLS child manifests to comply with Amazon Web
    #   Services Signature Version 4 (SigV4) signature signing protocol. For
    #   more information, see [Amazon Web Services Signature Version 4 for
    #   API requests][1] in *Identity and Access Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateLowLatencyHlsManifestConfiguration AWS API Documentation
    #
    class CreateLowLatencyHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :scte_hls,
      :start_tag,
      :manifest_window_seconds,
      :program_date_time_interval_seconds,
      :filter_configuration,
      :url_encode_child_manifest)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration parameters for creating a Microsoft Smooth Streaming
    # (MSS) manifest. MSS is a streaming media format developed by Microsoft
    # that delivers adaptive bitrate streaming content to compatible players
    # and devices.
    #
    # @!attribute [rw] manifest_name
    #   A short string that's appended to the endpoint URL to create a
    #   unique path to this MSS manifest. The manifest name must be unique
    #   within the origin endpoint and can contain letters, numbers,
    #   hyphens, and underscores.
    #   @return [String]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of the manifest window. This
    #   determines how much content is available in the manifest at any
    #   given time. The manifest window slides forward as new segments
    #   become available, maintaining a consistent duration of content. The
    #   minimum value is 30 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_configuration
    #   Filter configuration includes settings for manifest filtering, start
    #   and end times, and time delay that apply to all of your egress
    #   requests for this manifest.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] manifest_layout
    #   Determines the layout format of the MSS manifest. This controls how
    #   the manifest is structured and presented to client players,
    #   affecting compatibility with different MSS-compatible devices and
    #   applications.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateMssManifestConfiguration AWS API Documentation
    #
    class CreateMssManifestConfiguration < Struct.new(
      :manifest_name,
      :manifest_window_seconds,
      :filter_configuration,
      :manifest_layout)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and must be unique for your
    #   account in the AWS Region and channel. You can't use spaces in the
    #   name. You can't change the name after you create the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container to attach to this origin endpoint. A container
    #   type is a file format that encapsulates one or more media streams,
    #   such as audio and video, into a single file. You can't change the
    #   container type after you create the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Enter any descriptive text that helps you to identify the origin
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can
    #   start-over or catch-up on content that falls within the window. The
    #   maximum startover window is 1,209,600 seconds (14 days).
    #   @return [Integer]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::CreateHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::CreateLowLatencyHlsManifestConfiguration>]
    #
    # @!attribute [rw] dash_manifests
    #   A DASH manifest configuration.
    #   @return [Array<Types::CreateDashManifestConfiguration>]
    #
    # @!attribute [rw] mss_manifests
    #   A list of Microsoft Smooth Streaming (MSS) manifest configurations
    #   for the origin endpoint. You can configure multiple MSS manifests to
    #   provide different streaming experiences or to support different
    #   client requirements.
    #   @return [Array<Types::CreateMssManifestConfiguration>]
    #
    # @!attribute [rw] force_endpoint_error_configuration
    #   The failover settings for the endpoint.
    #   @return [Types::ForceEndpointErrorConfiguration]
    #
    # @!attribute [rw] tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateOriginEndpointRequest AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container attached to this origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] created_at
    #   The date and time the origin endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the origin endpoint was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can
    #   start-over or catch-up on content that falls within the window.
    #   @return [Integer]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::GetHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::GetLowLatencyHlsManifestConfiguration>]
    #
    # @!attribute [rw] dash_manifests
    #   A DASH manifest configuration.
    #   @return [Array<Types::GetDashManifestConfiguration>]
    #
    # @!attribute [rw] mss_manifests
    #   The Microsoft Smooth Streaming (MSS) manifest configurations that
    #   were created for this origin endpoint.
    #   @return [Array<Types::GetMssManifestConfiguration>]
    #
    # @!attribute [rw] force_endpoint_error_configuration
    #   The failover settings for the endpoint.
    #   @return [Types::ForceEndpointErrorConfiguration]
    #
    # @!attribute [rw] etag
    #   The current Entity Tag (ETag) associated with this resource. The
    #   entity tag can be used to safely make concurrent updates to the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   origin endpoint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateOriginEndpointResponse AWS API Documentation
    #
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
      :etag,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The base URLs to use for retrieving segments. You can specify multiple
    # locations and indicate the priority and weight for when each should be
    # used, for use in mutli-CDN workflows.
    #
    # @!attribute [rw] url
    #   A source location for segments.
    #   @return [String]
    #
    # @!attribute [rw] service_location
    #   The name of the source location.
    #   @return [String]
    #
    # @!attribute [rw] dvb_priority
    #   For use with DVB-DASH profiles only. The priority of this location
    #   for servings segments. The lower the number, the higher the
    #   priority.
    #   @return [Integer]
    #
    # @!attribute [rw] dvb_weight
    #   For use with DVB-DASH profiles only. The weighting for source
    #   locations that have the same priority.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DashBaseUrl AWS API Documentation
    #
    class DashBaseUrl < Struct.new(
      :url,
      :service_location,
      :dvb_priority,
      :dvb_weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # For use with DVB-DASH profiles only. The settings for font downloads
    # that you want Elemental MediaPackage to pass through to the manifest.
    #
    # @!attribute [rw] url
    #   The URL for downloading fonts for subtitles.
    #   @return [String]
    #
    # @!attribute [rw] mime_type
    #   The `mimeType` of the resource that's at the font download URL.
    #
    #   For information about font MIME types, see the [MPEG-DASH Profile
    #   for Transport of ISO BMFF Based DVB Services over IP Based
    #   Networks][1] document.
    #
    #
    #
    #   [1]: https://dvb.org/wp-content/uploads/2021/06/A168r4_MPEG-DASH-Profile-for-Transport-of-ISO-BMFF-Based-DVB-Services_Draft-ts_103-285-v140_November_2021.pdf
    #   @return [String]
    #
    # @!attribute [rw] font_family
    #   The `fontFamily` name for subtitles, as described in [EBU-TT-D
    #   Subtitling Distribution Format][1].
    #
    #
    #
    #   [1]: https://tech.ebu.ch/publications/tech3380
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DashDvbFontDownload AWS API Documentation
    #
    class DashDvbFontDownload < Struct.new(
      :url,
      :mime_type,
      :font_family)
      SENSITIVE = []
      include Aws::Structure
    end

    # For use with DVB-DASH profiles only. The settings for error reporting
    # from the playback device that you want Elemental MediaPackage to pass
    # through to the manifest.
    #
    # @!attribute [rw] reporting_url
    #   The URL where playback devices send error reports.
    #   @return [String]
    #
    # @!attribute [rw] probability
    #   The number of playback devices per 1000 that will send error reports
    #   to the reporting URL. This represents the probability that a
    #   playback device will be a reporting player for this session.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DashDvbMetricsReporting AWS API Documentation
    #
    class DashDvbMetricsReporting < Struct.new(
      :reporting_url,
      :probability)
      SENSITIVE = []
      include Aws::Structure
    end

    # For endpoints that use the DVB-DASH profile only. The font download
    # and error reporting information that you want MediaPackage to pass
    # through to the manifest.
    #
    # @!attribute [rw] font_download
    #   Subtitle font settings.
    #   @return [Types::DashDvbFontDownload]
    #
    # @!attribute [rw] error_metrics
    #   Playback device error reporting settings.
    #   @return [Array<Types::DashDvbMetricsReporting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DashDvbSettings AWS API Documentation
    #
    class DashDvbSettings < Struct.new(
      :font_download,
      :error_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the content that you want MediaPackage to pass through
    # in the manifest to the playback device.
    #
    # @!attribute [rw] title
    #   The title for the manifest.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Information about the content provider.
    #   @return [String]
    #
    # @!attribute [rw] copyright
    #   A copyright statement about the content.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for this manifest.
    #   @return [String]
    #
    # @!attribute [rw] more_information_url
    #   An absolute URL that contains more information about this content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DashProgramInformation AWS API Documentation
    #
    class DashProgramInformation < Struct.new(
      :title,
      :source,
      :copyright,
      :language_code,
      :more_information_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for DASH subtitles.
    #
    # @!attribute [rw] ttml_configuration
    #   Settings for TTML subtitles.
    #   @return [Types::DashTtmlConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DashSubtitleConfiguration AWS API Documentation
    #
    class DashSubtitleConfiguration < Struct.new(
      :ttml_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for TTML subtitles.
    #
    # @!attribute [rw] ttml_profile
    #   The profile that MediaPackage uses when signaling subtitles in the
    #   manifest. `IMSC` is the default profile. `EBU-TT-D` produces
    #   subtitles that are compliant with the EBU-TT-D TTML profile.
    #   MediaPackage passes through subtitle styles to the manifest. For
    #   more information about EBU-TT-D subtitles, see [EBU-TT-D Subtitling
    #   Distribution Format][1].
    #
    #
    #
    #   [1]: https://tech.ebu.ch/publications/tech3380
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DashTtmlConfiguration AWS API Documentation
    #
    class DashTtmlConfiguration < Struct.new(
      :ttml_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines the type of UTC timing included in the DASH Media
    # Presentation Description (MPD).
    #
    # @!attribute [rw] timing_mode
    #   The UTC timing mode.
    #   @return [String]
    #
    # @!attribute [rw] timing_source
    #   The the method that the player uses to synchronize to coordinated
    #   universal time (UTC) wall clock time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DashUtcTiming AWS API Documentation
    #
    class DashUtcTiming < Struct.new(
      :timing_mode,
      :timing_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelGroupRequest AWS API Documentation
    #
    class DeleteChannelGroupRequest < Struct.new(
      :channel_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelGroupResponse AWS API Documentation
    #
    class DeleteChannelGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelPolicyRequest AWS API Documentation
    #
    class DeleteChannelPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelPolicyResponse AWS API Documentation
    #
    class DeleteChannelPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelRequest AWS API Documentation
    #
    class DeleteChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelResponse AWS API Documentation
    #
    class DeleteChannelResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpointPolicyRequest AWS API Documentation
    #
    class DeleteOriginEndpointPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpointPolicyResponse AWS API Documentation
    #
    class DeleteOriginEndpointPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpointRequest AWS API Documentation
    #
    class DeleteOriginEndpointRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpointResponse AWS API Documentation
    #
    class DeleteOriginEndpointResponse < Aws::EmptyStructure; end

    # The configuration for the destination where the harvested content will
    # be exported.
    #
    # @!attribute [rw] s3_destination
    #   The configuration for exporting harvested content to an S3 bucket.
    #   This includes details such as the bucket name and destination path
    #   within the bucket.
    #   @return [Types::S3DestinationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for encrypting content.
    #
    # @!attribute [rw] constant_initialization_vector
    #   A 128-bit, 16-byte hex value represented by a 32-character string,
    #   used in conjunction with the key for encrypting content. If you
    #   don't specify a value, then MediaPackage creates the constant
    #   initialization vector (IV).
    #   @return [String]
    #
    # @!attribute [rw] encryption_method
    #   The encryption method to use.
    #   @return [Types::EncryptionMethod]
    #
    # @!attribute [rw] key_rotation_interval_seconds
    #   The frequency (in seconds) of key changes for live workflows, in
    #   which content is streamed real time. The service retrieves content
    #   keys before the live content begins streaming, and then retrieves
    #   them as needed over the lifetime of the workflow. By default, key
    #   rotation is set to 300 seconds (5 minutes), the minimum rotation
    #   interval, which is equivalent to setting it to 300. If you don't
    #   enter an interval, content keys aren't rotated.
    #
    #   The following example setting causes the service to rotate keys
    #   every thirty minutes: `1800`
    #   @return [Integer]
    #
    # @!attribute [rw] cmaf_exclude_segment_drm_metadata
    #   Excludes SEIG and SGPD boxes from segment metadata in CMAF
    #   containers.
    #
    #   When set to `true`, MediaPackage omits these DRM metadata boxes from
    #   CMAF segments, which can improve compatibility with certain devices
    #   and players that don't support these boxes.
    #
    #   Important considerations:
    #
    #   * This setting only affects CMAF container formats
    #
    #   * Key rotation can still be handled through media playlist signaling
    #
    #   * PSSH and TENC boxes remain unaffected
    #
    #   * Default behavior is preserved when this setting is disabled
    #
    #   Valid values: `true` \| `false`
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] speke_key_provider
    #   The parameters for the SPEKE key provider.
    #   @return [Types::SpekeKeyProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/Encryption AWS API Documentation
    #
    class Encryption < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :key_rotation_interval_seconds,
      :cmaf_exclude_segment_drm_metadata,
      :speke_key_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configure one or more content encryption keys for your endpoints that
    # use SPEKE Version 2.0. The encryption contract defines which content
    # keys are used to encrypt the audio and video tracks in your stream. To
    # configure the encryption contract, specify which audio and video
    # encryption presets to use.
    #
    # @!attribute [rw] preset_speke_20_audio
    #   A collection of audio encryption presets.
    #
    #   Value description:
    #
    #   * PRESET-AUDIO-1 - Use one content key to encrypt all of the audio
    #     tracks in your stream.
    #
    #   * PRESET-AUDIO-2 - Use one content key to encrypt all of the stereo
    #     audio tracks and one content key to encrypt all of the
    #     multichannel audio tracks.
    #
    #   * PRESET-AUDIO-3 - Use one content key to encrypt all of the stereo
    #     audio tracks, one content key to encrypt all of the multichannel
    #     audio tracks with 3 to 6 channels, and one content key to encrypt
    #     all of the multichannel audio tracks with more than 6 channels.
    #
    #   * SHARED - Use the same content key for all of the audio and video
    #     tracks in your stream.
    #
    #   * UNENCRYPTED - Don't encrypt any of the audio tracks in your
    #     stream.
    #   @return [String]
    #
    # @!attribute [rw] preset_speke_20_video
    #   A collection of video encryption presets.
    #
    #   Value description:
    #
    #   * PRESET-VIDEO-1 - Use one content key to encrypt all of the video
    #     tracks in your stream.
    #
    #   * PRESET-VIDEO-2 - Use one content key to encrypt all of the SD
    #     video tracks and one content key for all HD and higher resolutions
    #     video tracks.
    #
    #   * PRESET-VIDEO-3 - Use one content key to encrypt all of the SD
    #     video tracks, one content key for HD video tracks and one content
    #     key for all UHD video tracks.
    #
    #   * PRESET-VIDEO-4 - Use one content key to encrypt all of the SD
    #     video tracks, one content key for HD video tracks, one content key
    #     for all UHD1 video tracks and one content key for all UHD2 video
    #     tracks.
    #
    #   * PRESET-VIDEO-5 - Use one content key to encrypt all of the SD
    #     video tracks, one content key for HD1 video tracks, one content
    #     key for HD2 video tracks, one content key for all UHD1 video
    #     tracks and one content key for all UHD2 video tracks.
    #
    #   * PRESET-VIDEO-6 - Use one content key to encrypt all of the SD
    #     video tracks, one content key for HD1 video tracks, one content
    #     key for HD2 video tracks and one content key for all UHD video
    #     tracks.
    #
    #   * PRESET-VIDEO-7 - Use one content key to encrypt all of the SD+HD1
    #     video tracks, one content key for HD2 video tracks and one content
    #     key for all UHD video tracks.
    #
    #   * PRESET-VIDEO-8 - Use one content key to encrypt all of the SD+HD1
    #     video tracks, one content key for HD2 video tracks, one content
    #     key for all UHD1 video tracks and one content key for all UHD2
    #     video tracks.
    #
    #   * SHARED - Use the same content key for all of the video and audio
    #     tracks in your stream.
    #
    #   * UNENCRYPTED - Don't encrypt any of the video tracks in your
    #     stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/EncryptionContractConfiguration AWS API Documentation
    #
    class EncryptionContractConfiguration < Struct.new(
      :preset_speke_20_audio,
      :preset_speke_20_video)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption type.
    #
    # @!attribute [rw] ts_encryption_method
    #   The encryption method to use.
    #   @return [String]
    #
    # @!attribute [rw] cmaf_encryption_method
    #   The encryption method to use.
    #   @return [String]
    #
    # @!attribute [rw] ism_encryption_method
    #   The encryption method used for Microsoft Smooth Streaming (MSS)
    #   content. This specifies how the MSS segments are encrypted to
    #   protect the content during delivery to client players.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/EncryptionMethod AWS API Documentation
    #
    class EncryptionMethod < Struct.new(
      :ts_encryption_method,
      :cmaf_encryption_method,
      :ism_encryption_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter configuration includes settings for manifest filtering, start
    # and end times, and time delay that apply to all of your egress
    # requests for this manifest.
    #
    # @!attribute [rw] manifest_filter
    #   Optionally specify one or more manifest filters for all of your
    #   manifest egress requests. When you include a manifest filter, note
    #   that you cannot use an identical manifest filter query parameter for
    #   this manifest's endpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   Optionally specify the start time for all of your manifest egress
    #   requests. When you include start time, note that you cannot use
    #   start time query parameters for this manifest's endpoint URL.
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   Optionally specify the end time for all of your manifest egress
    #   requests. When you include end time, note that you cannot use end
    #   time query parameters for this manifest's endpoint URL.
    #   @return [Time]
    #
    # @!attribute [rw] time_delay_seconds
    #   Optionally specify the time delay for all of your manifest egress
    #   requests. Enter a value that is smaller than your endpoint's
    #   startover window. When you include time delay, note that you cannot
    #   use time delay query parameters for this manifest's endpoint URL.
    #   @return [Integer]
    #
    # @!attribute [rw] clip_start_time
    #   Optionally specify the clip start time for all of your manifest
    #   egress requests. When you include clip start time, note that you
    #   cannot use clip start time query parameters for this manifest's
    #   endpoint URL.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/FilterConfiguration AWS API Documentation
    #
    class FilterConfiguration < Struct.new(
      :manifest_filter,
      :start,
      :end,
      :time_delay_seconds,
      :clip_start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The failover settings for the endpoint.
    #
    # @!attribute [rw] endpoint_error_conditions
    #   The failover conditions for the endpoint. The options are:
    #
    #   * `STALE_MANIFEST` - The manifest stalled and there are no new
    #     segments or parts.
    #
    #   * `INCOMPLETE_MANIFEST` - There is a gap in the manifest.
    #
    #   * `MISSING_DRM_KEY` - Key rotation is enabled but we're unable to
    #     fetch the key for the current key period.
    #
    #   * `SLATE_INPUT` - The segments which contain slate content are
    #     considered to be missing content.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ForceEndpointErrorConfiguration AWS API Documentation
    #
    class ForceEndpointErrorConfiguration < Struct.new(
      :endpoint_error_conditions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelGroupRequest AWS API Documentation
    #
    class GetChannelGroupRequest < Struct.new(
      :channel_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] egress_domain
    #   The output domain where the source stream should be sent. Integrate
    #   the domain with a downstream CDN (such as Amazon CloudFront) or
    #   playback device.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel group was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel group was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your channel group.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current Entity Tag (ETag) associated with this resource. The
    #   entity tag can be used to safely make concurrent updates to the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelGroupResponse AWS API Documentation
    #
    class GetChannelGroupResponse < Struct.new(
      :channel_group_name,
      :arn,
      :egress_domain,
      :created_at,
      :modified_at,
      :description,
      :etag,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelPolicyRequest AWS API Documentation
    #
    class GetChannelPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy assigned to the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelPolicyResponse AWS API Documentation
    #
    class GetChannelPolicyResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelRequest AWS API Documentation
    #
    class GetChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel was modified.
    #   @return [Time]
    #
    # @!attribute [rw] reset_at
    #   The time that the channel was last reset.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your channel.
    #   @return [String]
    #
    # @!attribute [rw] ingest_endpoints
    #   The list of ingest endpoints.
    #   @return [Array<Types::IngestEndpoint>]
    #
    # @!attribute [rw] input_type
    #   The input type will be an immutable field which will be used to
    #   define whether the channel will allow CMAF ingest or HLS ingest. If
    #   unprovided, it will default to HLS to preserve current behavior.
    #
    #   The allowed values are:
    #
    #   * `HLS` - The HLS streaming specification (which defines M3U8
    #     manifests and TS segments).
    #
    #   * `CMAF` - The DASH-IF CMAF Ingest specification (which defines CMAF
    #     segments with optional DASH manifests).
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current Entity Tag (ETag) associated with this resource. The
    #   entity tag can be used to safely make concurrent updates to the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_switch_configuration
    #   The configuration for input switching based on the media quality
    #   confidence score (MQCS) as provided from AWS Elemental MediaLive.
    #   This setting is valid only when `InputType` is `CMAF`.
    #   @return [Types::InputSwitchConfiguration]
    #
    # @!attribute [rw] output_header_configuration
    #   The settings for what common media server data (CMSD) headers AWS
    #   Elemental MediaPackage includes in responses to the CDN. This
    #   setting is valid only when `InputType` is `CMAF`.
    #   @return [Types::OutputHeaderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelResponse AWS API Documentation
    #
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
      :etag,
      :tags,
      :input_switch_configuration,
      :output_header_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieve the DASH manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short string that's appended to the endpoint URL. The manifest
    #   name creates a unique path to this endpoint. If you don't enter a
    #   value, MediaPackage uses the default manifest name, index.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The egress domain URL for stream delivery from MediaPackage.
    #   @return [String]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of the manifest's content.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_configuration
    #   Filter configuration includes settings for manifest filtering, start
    #   and end times, and time delay that apply to all of your egress
    #   requests for this manifest.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] min_update_period_seconds
    #   Minimum amount of time (in seconds) that the player should wait
    #   before requesting updates to the manifest.
    #   @return [Integer]
    #
    # @!attribute [rw] min_buffer_time_seconds
    #   Minimum amount of content (in seconds) that a player must keep
    #   available in the buffer.
    #   @return [Integer]
    #
    # @!attribute [rw] suggested_presentation_delay_seconds
    #   The amount of time (in seconds) that the player should be from the
    #   end of the manifest.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_template_format
    #   Determines the type of variable used in the `media` URL of the
    #   `SegmentTemplate` tag in the manifest. Also specifies if segment
    #   timeline information is included in `SegmentTimeline` or
    #   `SegmentTemplate`.
    #
    #   Value description:
    #
    #   * `NUMBER_WITH_TIMELINE` - The `$Number$` variable is used in the
    #     `media` URL. The value of this variable is the sequential number
    #     of the segment. A full `SegmentTimeline` object is presented in
    #     each `SegmentTemplate`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] period_triggers
    #   A list of triggers that controls when AWS Elemental MediaPackage
    #   separates the MPEG-DASH manifest into multiple periods. Leave this
    #   value empty to indicate that the manifest is contained all in one
    #   period. For more information about periods in the DASH manifest, see
    #   [Multi-period DASH in AWS Elemental MediaPackage][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediapackage/latest/userguide/multi-period.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] scte_dash
    #   The SCTE configuration.
    #   @return [Types::ScteDash]
    #
    # @!attribute [rw] drm_signaling
    #   Determines how the DASH manifest signals the DRM content.
    #   @return [String]
    #
    # @!attribute [rw] utc_timing
    #   Determines the type of UTC timing included in the DASH Media
    #   Presentation Description (MPD).
    #   @return [Types::DashUtcTiming]
    #
    # @!attribute [rw] profiles
    #   The profile that the output is compliant with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] base_urls
    #   The base URL to use for retrieving segments.
    #   @return [Array<Types::DashBaseUrl>]
    #
    # @!attribute [rw] program_information
    #   Details about the content that you want MediaPackage to pass through
    #   in the manifest to the playback device.
    #   @return [Types::DashProgramInformation]
    #
    # @!attribute [rw] dvb_settings
    #   For endpoints that use the DVB-DASH profile only. The font download
    #   and error reporting information that you want MediaPackage to pass
    #   through to the manifest.
    #   @return [Types::DashDvbSettings]
    #
    # @!attribute [rw] compactness
    #   The layout of the DASH manifest that MediaPackage produces.
    #   `STANDARD` indicates a default manifest, which is compacted. `NONE`
    #   indicates a full manifest.
    #   @return [String]
    #
    # @!attribute [rw] subtitle_configuration
    #   The configuration for DASH subtitles.
    #   @return [Types::DashSubtitleConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetDashManifestConfiguration AWS API Documentation
    #
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
      :subtitle_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for retrieving a specific harvest job.
    #
    # @!attribute [rw] channel_group_name
    #   The name of the channel group containing the channel associated with
    #   the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel associated with the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name of the origin endpoint associated with the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] harvest_job_name
    #   The name of the harvest job to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetHarvestJobRequest AWS API Documentation
    #
    class GetHarvestJobRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :harvest_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object containing the details of the requested harvest
    # job.
    #
    # @!attribute [rw] channel_group_name
    #   The name of the channel group containing the channel associated with
    #   the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel associated with the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name of the origin endpoint associated with the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The S3 destination where the harvested content is being placed.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] harvest_job_name
    #   The name of the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] harvested_manifests
    #   A list of manifests that are being or have been harvested.
    #   @return [Types::HarvestedManifests]
    #
    # @!attribute [rw] description
    #   The description of the harvest job, if provided.
    #   @return [String]
    #
    # @!attribute [rw] schedule_configuration
    #   The configuration for when the harvest job is scheduled to run,
    #   including start and end times.
    #   @return [Types::HarvesterScheduleConfiguration]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the harvest job was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time when the harvest job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the harvest job (e.g., QUEUED, IN\_PROGRESS,
    #   CANCELLED, COMPLETED, FAILED).
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message if the harvest job encountered any issues.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the harvest job. Used for concurrency
    #   control.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tags associated with the harvest job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetHarvestJobResponse AWS API Documentation
    #
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
      :etag,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieve the HTTP live streaming (HLS) manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The egress domain URL for stream delivery from MediaPackage.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default child manifest name,
    #   index\_1. The manifestName on the HLSManifest object overrides the
    #   manifestName you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of the manifest's content.
    #   @return [Integer]
    #
    # @!attribute [rw] program_date_time_interval_seconds
    #   Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the
    #   interval that you specify. If you don't enter an interval,
    #   EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest. The
    #   tags sync the stream to the wall clock so that viewers can seek to a
    #   specific time in the playback timeline on the player.
    #
    #   Irrespective of this parameter, if any ID3Timed metadata is in the
    #   HLS input, it is passed through to the HLS output.
    #   @return [Integer]
    #
    # @!attribute [rw] scte_hls
    #   The SCTE configuration.
    #   @return [Types::ScteHls]
    #
    # @!attribute [rw] filter_configuration
    #   Filter configuration includes settings for manifest filtering, start
    #   and end times, and time delay that apply to all of your egress
    #   requests for this manifest.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] start_tag
    #   To insert an EXT-X-START tag in your HLS playlist, specify a
    #   StartTag configuration object with a valid TimeOffset. When you do,
    #   you can also optionally specify whether to include a PRECISE value
    #   in the EXT-X-START tag.
    #   @return [Types::StartTag]
    #
    # @!attribute [rw] url_encode_child_manifest
    #   When enabled, MediaPackage URL-encodes the query string for API
    #   requests for HLS child manifests to comply with Amazon Web Services
    #   Signature Version 4 (SigV4) signature signing protocol. For more
    #   information, see [Amazon Web Services Signature Version 4 for API
    #   requests][1] in *Identity and Access Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetHlsManifestConfiguration AWS API Documentation
    #
    class GetHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :url,
      :child_manifest_name,
      :manifest_window_seconds,
      :program_date_time_interval_seconds,
      :scte_hls,
      :filter_configuration,
      :start_tag,
      :url_encode_child_manifest)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieve the low-latency HTTP live streaming (HLS) manifest
    # configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The egress domain URL for stream delivery from MediaPackage.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default child manifest name,
    #   index\_1. The manifestName on the HLSManifest object overrides the
    #   manifestName you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of the manifest's content.
    #   @return [Integer]
    #
    # @!attribute [rw] program_date_time_interval_seconds
    #   Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the
    #   interval that you specify. If you don't enter an interval,
    #   EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest. The
    #   tags sync the stream to the wall clock so that viewers can seek to a
    #   specific time in the playback timeline on the player.
    #
    #   Irrespective of this parameter, if any ID3Timed metadata is in the
    #   HLS input, it is passed through to the HLS output.
    #   @return [Integer]
    #
    # @!attribute [rw] scte_hls
    #   The SCTE configuration.
    #   @return [Types::ScteHls]
    #
    # @!attribute [rw] filter_configuration
    #   Filter configuration includes settings for manifest filtering, start
    #   and end times, and time delay that apply to all of your egress
    #   requests for this manifest.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] start_tag
    #   To insert an EXT-X-START tag in your HLS playlist, specify a
    #   StartTag configuration object with a valid TimeOffset. When you do,
    #   you can also optionally specify whether to include a PRECISE value
    #   in the EXT-X-START tag.
    #   @return [Types::StartTag]
    #
    # @!attribute [rw] url_encode_child_manifest
    #   When enabled, MediaPackage URL-encodes the query string for API
    #   requests for LL-HLS child manifests to comply with Amazon Web
    #   Services Signature Version 4 (SigV4) signature signing protocol. For
    #   more information, see [Amazon Web Services Signature Version 4 for
    #   API requests][1] in *Identity and Access Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetLowLatencyHlsManifestConfiguration AWS API Documentation
    #
    class GetLowLatencyHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :url,
      :child_manifest_name,
      :manifest_window_seconds,
      :program_date_time_interval_seconds,
      :scte_hls,
      :filter_configuration,
      :start_tag,
      :url_encode_child_manifest)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details for a Microsoft Smooth Streaming (MSS) manifest
    # associated with an origin endpoint. This includes all the settings and
    # properties that define how the MSS content is packaged and delivered.
    #
    # @!attribute [rw] manifest_name
    #   The name of the MSS manifest. This name is appended to the origin
    #   endpoint URL to create the unique path for accessing this specific
    #   MSS manifest.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The complete URL for accessing the MSS manifest. Client players use
    #   this URL to retrieve the manifest and begin streaming the Microsoft
    #   Smooth Streaming content.
    #   @return [String]
    #
    # @!attribute [rw] filter_configuration
    #   Filter configuration includes settings for manifest filtering, start
    #   and end times, and time delay that apply to all of your egress
    #   requests for this manifest.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The duration (in seconds) of the manifest window. This represents
    #   the total amount of content available in the manifest at any given
    #   time.
    #   @return [Integer]
    #
    # @!attribute [rw] manifest_layout
    #   The layout format of the MSS manifest, which determines how the
    #   manifest is structured for client compatibility.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetMssManifestConfiguration AWS API Documentation
    #
    class GetMssManifestConfiguration < Struct.new(
      :manifest_name,
      :url,
      :filter_configuration,
      :manifest_window_seconds,
      :manifest_layout)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpointPolicyRequest AWS API Documentation
    #
    class GetOriginEndpointPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy assigned to the origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] cdn_auth_configuration
    #   The settings for using authorization headers between the
    #   MediaPackage endpoint and your CDN.
    #
    #   For information about CDN authorization, see [CDN authorization in
    #   Elemental MediaPackage][1] in the MediaPackage user guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediapackage/latest/userguide/cdn-auth.html
    #   @return [Types::CdnAuthConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpointPolicyResponse AWS API Documentation
    #
    class GetOriginEndpointPolicyResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :policy,
      :cdn_auth_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpointRequest AWS API Documentation
    #
    class GetOriginEndpointRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container attached to this origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] created_at
    #   The date and time the origin endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the origin endpoint was modified.
    #   @return [Time]
    #
    # @!attribute [rw] reset_at
    #   The time that the origin endpoint was last reset.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can
    #   start-over or catch-up on content that falls within the window.
    #   @return [Integer]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::GetHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::GetLowLatencyHlsManifestConfiguration>]
    #
    # @!attribute [rw] dash_manifests
    #   A DASH manifest configuration.
    #   @return [Array<Types::GetDashManifestConfiguration>]
    #
    # @!attribute [rw] mss_manifests
    #   The Microsoft Smooth Streaming (MSS) manifest configurations
    #   associated with this origin endpoint.
    #   @return [Array<Types::GetMssManifestConfiguration>]
    #
    # @!attribute [rw] force_endpoint_error_configuration
    #   The failover settings for the endpoint.
    #   @return [Types::ForceEndpointErrorConfiguration]
    #
    # @!attribute [rw] etag
    #   The current Entity Tag (ETag) associated with this resource. The
    #   entity tag can be used to safely make concurrent updates to the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   origin endpoint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpointResponse AWS API Documentation
    #
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
      :etag,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a harvest job resource in MediaPackage v2, which is used to
    # export content from an origin endpoint to an S3 bucket.
    #
    # @!attribute [rw] channel_group_name
    #   The name of the channel group containing the channel associated with
    #   this harvest job.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel associated with this harvest job.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name of the origin endpoint associated with this harvest job.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The S3 destination where the harvested content will be placed.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] harvest_job_name
    #   The name of the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] harvested_manifests
    #   A list of manifests that are being or have been harvested.
    #   @return [Types::HarvestedManifests]
    #
    # @!attribute [rw] description
    #   An optional description of the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] schedule_configuration
    #   The configuration for when the harvest job is scheduled to run.
    #   @return [Types::HarvesterScheduleConfiguration]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the harvest job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the harvest job was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time when the harvest job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the harvest job (e.g., QUEUED, IN\_PROGRESS,
    #   CANCELLED, COMPLETED, FAILED).
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message if the harvest job encountered any issues.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the harvest job. Used for concurrency
    #   control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/HarvestJob AWS API Documentation
    #
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
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a harvested DASH manifest.
    #
    # @!attribute [rw] manifest_name
    #   The name of the harvested DASH manifest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/HarvestedDashManifest AWS API Documentation
    #
    class HarvestedDashManifest < Struct.new(
      :manifest_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a harvested HLS manifest.
    #
    # @!attribute [rw] manifest_name
    #   The name of the harvested HLS manifest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/HarvestedHlsManifest AWS API Documentation
    #
    class HarvestedHlsManifest < Struct.new(
      :manifest_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a harvested Low-Latency HLS manifest.
    #
    # @!attribute [rw] manifest_name
    #   The name of the harvested Low-Latency HLS manifest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/HarvestedLowLatencyHlsManifest AWS API Documentation
    #
    class HarvestedLowLatencyHlsManifest < Struct.new(
      :manifest_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of harvested manifests of different types.
    #
    # @!attribute [rw] hls_manifests
    #   A list of harvested HLS manifests.
    #   @return [Array<Types::HarvestedHlsManifest>]
    #
    # @!attribute [rw] dash_manifests
    #   A list of harvested DASH manifests.
    #   @return [Array<Types::HarvestedDashManifest>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A list of harvested Low-Latency HLS manifests.
    #   @return [Array<Types::HarvestedLowLatencyHlsManifest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/HarvestedManifests AWS API Documentation
    #
    class HarvestedManifests < Struct.new(
      :hls_manifests,
      :dash_manifests,
      :low_latency_hls_manifests)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the schedule configuration for a harvest job.
    #
    # @!attribute [rw] start_time
    #   The start time for the harvest job.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time for the harvest job.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/HarvesterScheduleConfiguration AWS API Documentation
    #
    class HarvesterScheduleConfiguration < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ingest domain URL where the source stream should be sent.
    #
    # @!attribute [rw] id
    #   The system-generated unique identifier for the IngestEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The ingest domain URL where the source stream should be sent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/IngestEndpoint AWS API Documentation
    #
    class IngestEndpoint < Struct.new(
      :id,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for input switching based on the media quality
    # confidence score (MQCS) as provided from AWS Elemental MediaLive.
    #
    # @!attribute [rw] mqcs_input_switching
    #   When true, AWS Elemental MediaPackage performs input switching based
    #   on the MQCS. Default is true. This setting is valid only when
    #   `InputType` is `CMAF`.
    #   @return [Boolean]
    #
    # @!attribute [rw] preferred_input
    #   For CMAF inputs, indicates which input MediaPackage should prefer
    #   when both inputs have equal MQCS scores. Select `1` to prefer the
    #   first ingest endpoint, or `2` to prefer the second ingest endpoint.
    #   If you don't specify a preferred input, MediaPackage uses its
    #   default switching behavior when MQCS scores are equal.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/InputSwitchConfiguration AWS API Documentation
    #
    class InputSwitchConfiguration < Struct.new(
      :mqcs_input_switching,
      :preferred_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that an error from the service occurred while trying to
    # process a request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request. Use the token to
    #   fetch the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannelGroupsRequest AWS API Documentation
    #
    class ListChannelGroupsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The objects being returned.
    #   @return [Array<Types::ChannelGroupListConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request. Use the token to
    #   fetch the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannelGroupsResponse AWS API Documentation
    #
    class ListChannelGroupsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request. Use the token to
    #   fetch the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannelsRequest AWS API Documentation
    #
    class ListChannelsRequest < Struct.new(
      :channel_group_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The objects being returned.
    #   @return [Array<Types::ChannelListConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannelsResponse AWS API Documentation
    #
    class ListChannelsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List the DASH manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short string that's appended to the endpoint URL. The manifest
    #   name creates a unique path to this endpoint. If you don't enter a
    #   value, MediaPackage uses the default manifest name, index.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The egress domain URL for stream delivery from MediaPackage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListDashManifestConfiguration AWS API Documentation
    #
    class ListDashManifestConfiguration < Struct.new(
      :manifest_name,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for listing harvest jobs.
    #
    # @!attribute [rw] channel_group_name
    #   The name of the channel group to filter the harvest jobs by. If
    #   specified, only harvest jobs associated with channels in this group
    #   will be returned.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel to filter the harvest jobs by. If specified,
    #   only harvest jobs associated with this channel will be returned.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name of the origin endpoint to filter the harvest jobs by. If
    #   specified, only harvest jobs associated with this origin endpoint
    #   will be returned.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to filter the harvest jobs by. If specified, only harvest
    #   jobs with this status will be returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of harvest jobs to return in a single request. If
    #   not specified, a default value will be used.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination. Provide this value in subsequent
    #   requests to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListHarvestJobsRequest AWS API Documentation
    #
    class ListHarvestJobsRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object containing the list of harvest jobs that match the
    # specified criteria.
    #
    # @!attribute [rw] items
    #   An array of harvest job objects that match the specified criteria.
    #   @return [Array<Types::HarvestJob>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination. Include this value in subsequent
    #   requests to retrieve the next set of results. If null, there are no
    #   more results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListHarvestJobsResponse AWS API Documentation
    #
    class ListHarvestJobsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List the HTTP live streaming (HLS) manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default child manifest name,
    #   index\_1. The manifestName on the HLSManifest object overrides the
    #   manifestName you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The egress domain URL for stream delivery from MediaPackage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListHlsManifestConfiguration AWS API Documentation
    #
    class ListHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # List the low-latency HTTP live streaming (HLS) manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default child manifest name,
    #   index\_1. The manifestName on the HLSManifest object overrides the
    #   manifestName you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The egress domain URL for stream delivery from MediaPackage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListLowLatencyHlsManifestConfiguration AWS API Documentation
    #
    class ListLowLatencyHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a Microsoft Smooth Streaming (MSS) manifest
    # configuration. This provides key details about the MSS manifest
    # without including all configuration parameters.
    #
    # @!attribute [rw] manifest_name
    #   The name of the MSS manifest configuration.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL for accessing the MSS manifest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListMssManifestConfiguration AWS API Documentation
    #
    class ListMssManifestConfiguration < Struct.new(
      :manifest_name,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request. Use the token to
    #   fetch the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListOriginEndpointsRequest AWS API Documentation
    #
    class ListOriginEndpointsRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The objects being returned.
    #   @return [Array<Types::OriginEndpointListConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request. Use the token to
    #   fetch the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListOriginEndpointsResponse AWS API Documentation
    #
    class ListOriginEndpointsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the CloudWatch resource that you want to view tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the origin endpoint.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container attached to this origin endpoint. A container
    #   type is a file format that encapsulates one or more media streams,
    #   such as audio and video, into a single file.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the origin
    #   endpoint for future identification purposes.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the origin endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the origin endpoint was modified.
    #   @return [Time]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::ListHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::ListLowLatencyHlsManifestConfiguration>]
    #
    # @!attribute [rw] dash_manifests
    #   A DASH manifest configuration.
    #   @return [Array<Types::ListDashManifestConfiguration>]
    #
    # @!attribute [rw] mss_manifests
    #   A list of Microsoft Smooth Streaming (MSS) manifest configurations
    #   associated with the origin endpoint. Each configuration represents a
    #   different MSS streaming option available from this endpoint.
    #   @return [Array<Types::ListMssManifestConfiguration>]
    #
    # @!attribute [rw] force_endpoint_error_configuration
    #   The failover settings for the endpoint.
    #   @return [Types::ForceEndpointErrorConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/OriginEndpointListConfiguration AWS API Documentation
    #
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
      :force_endpoint_error_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for what common media server data (CMSD) headers AWS
    # Elemental MediaPackage includes in responses to the CDN.
    #
    # @!attribute [rw] publish_mqcs
    #   When true, AWS Elemental MediaPackage includes the MQCS in responses
    #   to the CDN. This setting is valid only when `InputType` is `CMAF`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/OutputHeaderConfiguration AWS API Documentation
    #
    class OutputHeaderConfiguration < Struct.new(
      :publish_mqcs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to attach to the specified channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutChannelPolicyRequest AWS API Documentation
    #
    class PutChannelPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutChannelPolicyResponse AWS API Documentation
    #
    class PutChannelPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to attach to the specified origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] cdn_auth_configuration
    #   The settings for using authorization headers between the
    #   MediaPackage endpoint and your CDN.
    #
    #   For information about CDN authorization, see [CDN authorization in
    #   Elemental MediaPackage][1] in the MediaPackage user guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediapackage/latest/userguide/cdn-auth.html
    #   @return [Types::CdnAuthConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutOriginEndpointPolicyRequest AWS API Documentation
    #
    class PutOriginEndpointPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :policy,
      :cdn_auth_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutOriginEndpointPolicyResponse AWS API Documentation
    #
    class PutOriginEndpointPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_group_name
    #   The name of the channel group that contains the channel that you are
    #   resetting.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel that you are resetting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ResetChannelStateRequest AWS API Documentation
    #
    class ResetChannelStateRequest < Struct.new(
      :channel_group_name,
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name of the channel group that contains the channel that you
    #   just reset.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel that you just reset.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the channel that you
    #   just reset.
    #   @return [String]
    #
    # @!attribute [rw] reset_at
    #   The time that the channel was last reset.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ResetChannelStateResponse AWS API Documentation
    #
    class ResetChannelStateResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :arn,
      :reset_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name of the channel group that contains the channel with the
    #   origin endpoint that you are resetting.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel with the origin endpoint that you are
    #   resetting.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name of the origin endpoint that you are resetting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ResetOriginEndpointStateRequest AWS API Documentation
    #
    class ResetOriginEndpointStateRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name of the channel group that contains the channel with the
    #   origin endpoint that you just reset.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel with the origin endpoint that you just
    #   reset.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name of the origin endpoint that you just reset.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the endpoint that you
    #   just reset.
    #   @return [String]
    #
    # @!attribute [rw] reset_at
    #   The time that the origin endpoint was last reset.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ResetOriginEndpointStateResponse AWS API Documentation
    #
    class ResetOriginEndpointStateResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :arn,
      :reset_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type_not_found
    #   The specified resource type wasn't found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration parameters for where in an S3 bucket to place the
    # harvested content.
    #
    # @!attribute [rw] bucket_name
    #   The name of an S3 bucket within which harvested content will be
    #   exported.
    #   @return [String]
    #
    # @!attribute [rw] destination_path
    #   The path within the specified S3 bucket where the harvested content
    #   will be placed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/S3DestinationConfig AWS API Documentation
    #
    class S3DestinationConfig < Struct.new(
      :bucket_name,
      :destination_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SCTE configuration.
    #
    # @!attribute [rw] scte_filter
    #   The SCTE-35 message types that you want to be treated as ad markers
    #   in the output.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/Scte AWS API Documentation
    #
    class Scte < Struct.new(
      :scte_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SCTE configuration.
    #
    # @!attribute [rw] ad_marker_dash
    #   Choose how ad markers are included in the packaged content. If you
    #   include ad markers in the content stream in your upstream encoders,
    #   then you need to inform MediaPackage what to do with the ad markers
    #   in the output.
    #
    #   Value description:
    #
    #   * `Binary` - The SCTE-35 marker is expressed as a hex-string (Base64
    #     string) rather than full XML.
    #
    #   * `XML` - The SCTE marker is expressed fully in XML.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ScteDash AWS API Documentation
    #
    class ScteDash < Struct.new(
      :ad_marker_dash)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SCTE configuration.
    #
    # @!attribute [rw] ad_marker_hls
    #   Ad markers indicate when ads should be inserted during playback. If
    #   you include ad markers in the content stream in your upstream
    #   encoders, then you need to inform MediaPackage what to do with the
    #   ad markers in the output. Choose what you want MediaPackage to do
    #   with the ad markers.
    #
    #   Value description:
    #
    #   * DATERANGE - Insert EXT-X-DATERANGE tags to signal ad and program
    #     transition events in TS and CMAF manifests. If you use DATERANGE,
    #     you must set a programDateTimeIntervalSeconds value of 1 or
    #     higher. To learn more about DATERANGE, see [SCTE-35 Ad Marker
    #     EXT-X-DATERANGE][1].
    #
    #   ^
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/mediapackage/latest/ug/scte-35-ad-marker-ext-x-daterange.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ScteHls AWS API Documentation
    #
    class ScteHls < Struct.new(
      :ad_marker_hls)
      SENSITIVE = []
      include Aws::Structure
    end

    # The segment configuration, including the segment name, duration, and
    # other configuration values.
    #
    # @!attribute [rw] segment_duration_seconds
    #   The duration (in seconds) of each segment. Enter a value equal to,
    #   or a multiple of, the input segment duration. If the value that you
    #   enter is different from the input segment duration, MediaPackage
    #   rounds segments to the nearest multiple of the input segment
    #   duration.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_name
    #   The name that describes the segment. The name is the base name of
    #   the segment used in all content manifests inside of the endpoint.
    #   You can't use spaces in the name.
    #   @return [String]
    #
    # @!attribute [rw] ts_use_audio_rendition_group
    #   When selected, MediaPackage bundles all audio tracks in a rendition
    #   group. All other tracks in the stream can be used with any audio
    #   rendition from the group.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_iframe_only_streams
    #   When selected, the stream set includes an additional I-frame only
    #   stream, along with the other tracks. If false, this extra stream is
    #   not included. MediaPackage generates an I-frame only stream from the
    #   first rendition in the manifest. The service inserts
    #   EXT-I-FRAMES-ONLY tags in the output manifest, and then generates
    #   and includes an I-frames only playlist in the stream. This playlist
    #   permits player functionality like fast forward and rewind.
    #   @return [Boolean]
    #
    # @!attribute [rw] ts_include_dvb_subtitles
    #   By default, MediaPackage excludes all digital video broadcasting
    #   (DVB) subtitles from the output. When selected, MediaPackage passes
    #   through DVB subtitles into the output.
    #   @return [Boolean]
    #
    # @!attribute [rw] scte
    #   The SCTE configuration options in the segment settings.
    #   @return [Types::Scte]
    #
    # @!attribute [rw] encryption
    #   The parameters for encrypting content.
    #   @return [Types::Encryption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/Segment AWS API Documentation
    #
    class Segment < Struct.new(
      :segment_duration_seconds,
      :segment_name,
      :ts_use_audio_rendition_group,
      :include_iframe_only_streams,
      :ts_include_dvb_subtitles,
      :scte,
      :encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for the SPEKE key provider.
    #
    # @!attribute [rw] encryption_contract_configuration
    #   Configure one or more content encryption keys for your endpoints
    #   that use SPEKE Version 2.0. The encryption contract defines which
    #   content keys are used to encrypt the audio and video tracks in your
    #   stream. To configure the encryption contract, specify which audio
    #   and video encryption presets to use.
    #   @return [Types::EncryptionContractConfiguration]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the content. The service sends this to the
    #   key server to identify the current endpoint. How unique you make
    #   this depends on how fine-grained you want access controls to be. The
    #   service does not permit you to use the same ID for two simultaneous
    #   encryption processes. The resource ID is also known as the content
    #   ID.
    #
    #   The following example shows a resource ID:
    #   `MovieNight20171126093045`
    #   @return [String]
    #
    # @!attribute [rw] drm_systems
    #   The DRM solution provider you're using to protect your content
    #   during distribution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The ARN for the IAM role granted by the key provider that provides
    #   access to the key provider API. This role must have a trust policy
    #   that allows MediaPackage to assume the role, and it must have a
    #   sufficient permissions policy to allow access to the specific key
    #   retrieval URL. Get this from your DRM solution provider.
    #
    #   Valid format: `arn:aws:iam::{accountID}:role/{name}`. The following
    #   example shows a role ARN:
    #   `arn:aws:iam::444455556666:role/SpekeAccess`
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the API Gateway proxy that you set up to talk to your key
    #   server. The API Gateway proxy must reside in the same AWS Region as
    #   MediaPackage and must start with https://.
    #
    #   The following example shows a URL:
    #   `https://1wm2dx1f33.execute-api.us-west-2.amazonaws.com/SpekeSample/copyProtection`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/SpekeKeyProvider AWS API Documentation
    #
    class SpekeKeyProvider < Struct.new(
      :encryption_contract_configuration,
      :resource_id,
      :drm_systems,
      :role_arn,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # To insert an EXT-X-START tag in your HLS playlist, specify a StartTag
    # configuration object with a valid TimeOffset. When you do, you can
    # also optionally specify whether to include a PRECISE value in the
    # EXT-X-START tag.
    #
    # @!attribute [rw] time_offset
    #   Specify the value for TIME-OFFSET within your EXT-X-START tag. Enter
    #   a signed floating point value which, if positive, must be less than
    #   the configured manifest duration minus three times the configured
    #   segment target duration. If negative, the absolute value must be
    #   larger than three times the configured segment target duration, and
    #   the absolute value must be smaller than the configured manifest
    #   duration.
    #   @return [Float]
    #
    # @!attribute [rw] precise
    #   Specify the value for PRECISE within your EXT-X-START tag. Leave
    #   blank, or choose false, to use the default value NO. Choose yes to
    #   use the value YES.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/StartTag AWS API Documentation
    #
    class StartTag < Struct.new(
      :time_offset,
      :precise)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the MediaPackage resource that you're adding tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request throughput limit was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the MediaPackage resource that you're removing tags
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The expected current Entity Tag (ETag) for the resource. If the
    #   specified ETag does not match the resource's current entity tag,
    #   the update request will be rejected.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the channel
    #   group for future identification purposes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannelGroupRequest AWS API Documentation
    #
    class UpdateChannelGroupRequest < Struct.new(
      :channel_group_name,
      :etag,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] egress_domain
    #   The output domain where the source stream is sent. Integrate the
    #   domain with a downstream CDN (such as Amazon CloudFront) or playback
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel group was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel group was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your channel group.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current Entity Tag (ETag) associated with this resource. The
    #   entity tag can be used to safely make concurrent updates to the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannelGroupResponse AWS API Documentation
    #
    class UpdateChannelGroupResponse < Struct.new(
      :channel_group_name,
      :arn,
      :egress_domain,
      :created_at,
      :modified_at,
      :description,
      :etag,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The expected current Entity Tag (ETag) for the resource. If the
    #   specified ETag does not match the resource's current entity tag,
    #   the update request will be rejected.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the channel for
    #   future identification purposes.
    #   @return [String]
    #
    # @!attribute [rw] input_switch_configuration
    #   The configuration for input switching based on the media quality
    #   confidence score (MQCS) as provided from AWS Elemental MediaLive.
    #   This setting is valid only when `InputType` is `CMAF`.
    #   @return [Types::InputSwitchConfiguration]
    #
    # @!attribute [rw] output_header_configuration
    #   The settings for what common media server data (CMSD) headers AWS
    #   Elemental MediaPackage includes in responses to the CDN. This
    #   setting is valid only when `InputType` is `CMAF`.
    #   @return [Types::OutputHeaderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannelRequest AWS API Documentation
    #
    class UpdateChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :etag,
      :description,
      :input_switch_configuration,
      :output_header_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your channel.
    #   @return [String]
    #
    # @!attribute [rw] ingest_endpoints
    #   The list of ingest endpoints.
    #   @return [Array<Types::IngestEndpoint>]
    #
    # @!attribute [rw] input_type
    #   The input type will be an immutable field which will be used to
    #   define whether the channel will allow CMAF ingest or HLS ingest. If
    #   unprovided, it will default to HLS to preserve current behavior.
    #
    #   The allowed values are:
    #
    #   * `HLS` - The HLS streaming specification (which defines M3U8
    #     manifests and TS segments).
    #
    #   * `CMAF` - The DASH-IF CMAF Ingest specification (which defines CMAF
    #     segments with optional DASH manifests).
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current Entity Tag (ETag) associated with this resource. The
    #   entity tag can be used to safely make concurrent updates to the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_switch_configuration
    #   The configuration for input switching based on the media quality
    #   confidence score (MQCS) as provided from AWS Elemental MediaLive.
    #   This setting is valid only when `InputType` is `CMAF`.
    #   @return [Types::InputSwitchConfiguration]
    #
    # @!attribute [rw] output_header_configuration
    #   The settings for what common media server data (CMSD) headers AWS
    #   Elemental MediaPackage includes in responses to the CDN. This
    #   setting is valid only when `InputType` is `CMAF`.
    #   @return [Types::OutputHeaderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannelResponse AWS API Documentation
    #
    class UpdateChannelResponse < Struct.new(
      :arn,
      :channel_name,
      :channel_group_name,
      :created_at,
      :modified_at,
      :description,
      :ingest_endpoints,
      :input_type,
      :etag,
      :tags,
      :input_switch_configuration,
      :output_header_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container attached to this origin endpoint. A container
    #   type is a file format that encapsulates one or more media streams,
    #   such as audio and video, into a single file.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the origin
    #   endpoint for future identification purposes.
    #   @return [String]
    #
    # @!attribute [rw] startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can
    #   start-over or catch-up on content that falls within the window. The
    #   maximum startover window is 1,209,600 seconds (14 days).
    #   @return [Integer]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::CreateHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::CreateLowLatencyHlsManifestConfiguration>]
    #
    # @!attribute [rw] dash_manifests
    #   A DASH manifest configuration.
    #   @return [Array<Types::CreateDashManifestConfiguration>]
    #
    # @!attribute [rw] mss_manifests
    #   A list of Microsoft Smooth Streaming (MSS) manifest configurations
    #   to update for the origin endpoint. This replaces the existing MSS
    #   manifest configurations.
    #   @return [Array<Types::CreateMssManifestConfiguration>]
    #
    # @!attribute [rw] force_endpoint_error_configuration
    #   The failover settings for the endpoint.
    #   @return [Types::ForceEndpointErrorConfiguration]
    #
    # @!attribute [rw] etag
    #   The expected current Entity Tag (ETag) for the resource. If the
    #   specified ETag does not match the resource's current entity tag,
    #   the update request will be rejected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateOriginEndpointRequest AWS API Documentation
    #
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
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container attached to this origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] created_at
    #   The date and time the origin endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the origin endpoint was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can
    #   start-over or catch-up on content that falls within the window.
    #   @return [Integer]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::GetHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::GetLowLatencyHlsManifestConfiguration>]
    #
    # @!attribute [rw] mss_manifests
    #   The updated Microsoft Smooth Streaming (MSS) manifest configurations
    #   for this origin endpoint.
    #   @return [Array<Types::GetMssManifestConfiguration>]
    #
    # @!attribute [rw] force_endpoint_error_configuration
    #   The failover settings for the endpoint.
    #   @return [Types::ForceEndpointErrorConfiguration]
    #
    # @!attribute [rw] etag
    #   The current Entity Tag (ETag) associated with this resource. The
    #   entity tag can be used to safely make concurrent updates to the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   origin endpoint.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] dash_manifests
    #   A DASH manifest configuration.
    #   @return [Array<Types::GetDashManifestConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateOriginEndpointResponse AWS API Documentation
    #
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
      :etag,
      :tags,
      :dash_manifests)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to meet the constraints specified by the AWS service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] validation_exception_type
    #   The type of ValidationException.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :validation_exception_type)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

