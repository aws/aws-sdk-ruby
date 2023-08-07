# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaTailor
  module Types

    # Access configuration parameters.
    #
    # @!attribute [rw] access_type
    #   The type of authentication used to access content from
    #   `HttpConfiguration::BaseUrl` on your source location. Accepted
    #   value: `S3_SIGV4`.
    #
    #   `S3_SIGV4` - AWS Signature Version 4 authentication for Amazon S3
    #   hosted virtual-style access. If your source location base URL is an
    #   Amazon S3 bucket, MediaTailor can use AWS Signature Version 4
    #   (SigV4) authentication to access the bucket where your source
    #   content is stored. Your MediaTailor source location baseURL must
    #   follow the S3 virtual hosted-style request URL format. For example,
    #   https://bucket-name.s3.Region.amazonaws.com/key-name.
    #
    #   Before you can use `S3_SIGV4`, you must meet these requirements:
    #
    #   • You must allow MediaTailor to access your S3 bucket by granting
    #   mediatailor.amazonaws.com principal access in IAM. For information
    #   about configuring access in IAM, see Access management in the IAM
    #   User Guide.
    #
    #   • The mediatailor.amazonaws.com service principal must have
    #   permissions to read all top level manifests referenced by the
    #   VodSource packaging configurations.
    #
    #   • The caller of the API must have s3:GetObject IAM permissions to
    #   read all top level manifests referenced by your MediaTailor
    #   VodSource packaging configurations.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_access_token_configuration
    #   AWS Secrets Manager access token configuration parameters.
    #   @return [Types::SecretsManagerAccessTokenConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/AccessConfiguration AWS API Documentation
    #
    class AccessConfiguration < Struct.new(
      :access_type,
      :secrets_manager_access_token_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ad break configuration parameters.
    #
    # @!attribute [rw] ad_break_metadata
    #   Defines a list of key/value pairs that MediaTailor generates within
    #   the `EXT-X-ASSET`tag for `SCTE35_ENHANCED` output.
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] message_type
    #   The SCTE-35 ad insertion type. Accepted value: `SPLICE_INSERT`,
    #   `TIME_SIGNAL`.
    #   @return [String]
    #
    # @!attribute [rw] offset_millis
    #   How long (in milliseconds) after the beginning of the program that
    #   an ad starts. This value must fall within 100ms of a segment
    #   boundary, otherwise the ad break will be skipped.
    #   @return [Integer]
    #
    # @!attribute [rw] slate
    #   Ad break slate configuration.
    #   @return [Types::SlateSource]
    #
    # @!attribute [rw] splice_insert_message
    #   This defines the SCTE-35 `splice_insert()` message inserted around
    #   the ad. For information about using `splice_insert()`, see the
    #   SCTE-35 specficiaiton, section 9.7.3.1.
    #   @return [Types::SpliceInsertMessage]
    #
    # @!attribute [rw] time_signal_message
    #   Defines the SCTE-35 `time_signal` message inserted around the ad.
    #
    #   Programs on a channel's schedule can be configured with one or more
    #   ad breaks. You can attach a `splice_insert` SCTE-35 message to the
    #   ad break. This message provides basic metadata about the ad break.
    #
    #   See section 9.7.4 of the 2022 SCTE-35 specification for more
    #   information.
    #   @return [Types::TimeSignalMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/AdBreak AWS API Documentation
    #
    class AdBreak < Struct.new(
      :ad_break_metadata,
      :message_type,
      :offset_millis,
      :slate,
      :splice_insert_message,
      :time_signal_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # For HLS, when set to `true`, MediaTailor passes through
    # `EXT-X-CUE-IN`, `EXT-X-CUE-OUT`, and `EXT-X-SPLICEPOINT-SCTE35` ad
    # markers from the origin manifest to the MediaTailor personalized
    # manifest.
    #
    # No logic is applied to these ad markers. For example, if
    # `EXT-X-CUE-OUT` has a value of `60`, but no ads are filled for that ad
    # break, MediaTailor will not set the value to `0`.
    #
    # @!attribute [rw] enabled
    #   Enables ad marker passthrough for your configuration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/AdMarkerPassthrough AWS API Documentation
    #
    class AdMarkerPassthrough < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Alert configuration parameters.
    #
    # @!attribute [rw] alert_code
    #   The code for the alert. For example, `NOT_PROCESSED`.
    #   @return [String]
    #
    # @!attribute [rw] alert_message
    #   If an alert is generated for a resource, an explanation of the
    #   reason for the alert.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category that MediaTailor assigns to the alert.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the alert was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] related_resource_arns
    #   The Amazon Resource Names (ARNs) related to this alert.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/Alert AWS API Documentation
    #
    class Alert < Struct.new(
      :alert_code,
      :alert_message,
      :category,
      :last_modified_time,
      :related_resource_arns,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # MediaTailor only places (consumes) prefetched ads if the ad break
    # meets the criteria defined by the dynamic variables. This gives you
    # granular control over which ad break to place the prefetched ads into.
    #
    # As an example, let's say that you set `DynamicVariable` to
    # `scte.event_id` and `Operator` to `EQUALS`, and your playback
    # configuration has an ADS URL of
    # `https://my.ads.server.com/path?&podId=[scte.avail_num]&event=[scte.event_id]&duration=[session.avail_duration_secs]`.
    # And the prefetch request to the ADS contains these values
    # `https://my.ads.server.com/path?&podId=3&event=my-awesome-event&duration=30`.
    # MediaTailor will only insert the prefetched ads into the ad break if
    # has a SCTE marker with an event id of `my-awesome-event`, since it
    # must match the event id that MediaTailor uses to query the ADS.
    #
    # You can specify up to five `AvailMatchingCriteria`. If you specify
    # multiple `AvailMatchingCriteria`, MediaTailor combines them to match
    # using a logical `AND`. You can model logical `OR` combinations by
    # creating multiple prefetch schedules.
    #
    # @!attribute [rw] dynamic_variable
    #   The dynamic variable(s) that MediaTailor should use as avail
    #   matching criteria. MediaTailor only places the prefetched ads into
    #   the avail if the avail matches the criteria defined by the dynamic
    #   variable. For information about dynamic variables, see [Using
    #   dynamic ad variables][1] in the *MediaTailor User Guide*.
    #
    #   You can include up to 100 dynamic variables.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/variables.html
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   For the `DynamicVariable` specified in `AvailMatchingCriteria`, the
    #   Operator that is used for the comparison.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/AvailMatchingCriteria AWS API Documentation
    #
    class AvailMatchingCriteria < Struct.new(
      :dynamic_variable,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for avail suppression, also known as ad suppression.
    # For more information about ad suppression, see [Ad Suppression][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html
    #
    # @!attribute [rw] fill_policy
    #   Defines the policy to apply to the avail suppression mode.
    #   `BEHIND_LIVE_EDGE` will always use the full avail suppression
    #   policy. `AFTER_LIVE_EDGE` mode can be used to invoke partial ad
    #   break fills when a session starts mid-break.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   Sets the ad suppression mode. By default, ad suppression is off and
    #   all ad breaks are filled with ads or slate. When Mode is set to
    #   `BEHIND_LIVE_EDGE`, ad suppression is active and MediaTailor won't
    #   fill ad breaks on or behind the ad suppression Value time in the
    #   manifest lookback window. When Mode is set to `AFTER_LIVE_EDGE`, ad
    #   suppression is active and MediaTailor won't fill ad breaks that are
    #   within the live edge plus the avail suppression value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A live edge offset time in HH:MM:SS. MediaTailor won't fill ad
    #   breaks on or behind this time in the manifest lookback window. If
    #   Value is set to 00:00:00, it is in sync with the live edge, and
    #   MediaTailor won't fill any ad breaks on or behind the live edge. If
    #   you set a Value time, MediaTailor won't fill any ad breaks on or
    #   behind this time in the manifest lookback window. For example, if
    #   you set 00:45:00, then MediaTailor will fill ad breaks that occur
    #   within 45 minutes behind the live edge, but won't fill ad breaks on
    #   or behind 45 minutes behind the live edge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/AvailSuppression AWS API Documentation
    #
    class AvailSuppression < Struct.new(
      :fill_policy,
      :mode,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request contains unexpected data.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for bumpers. Bumpers are short audio or video clips
    # that play at the start or before the end of an ad break. To learn more
    # about bumpers, see [Bumpers][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html
    #
    # @!attribute [rw] end_url
    #   The URL for the end bumper asset.
    #   @return [String]
    #
    # @!attribute [rw] start_url
    #   The URL for the start bumper asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/Bumper AWS API Documentation
    #
    class Bumper < Struct.new(
      :end_url,
      :start_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for using a content delivery network (CDN), like
    # Amazon CloudFront, for content and ad segment management.
    #
    # @!attribute [rw] ad_segment_url_prefix
    #   A non-default content delivery network (CDN) to serve ad segments.
    #   By default, AWS Elemental MediaTailor uses Amazon CloudFront with
    #   default cache settings as its CDN for ad segments. To set up an
    #   alternate CDN, create a rule in your CDN for the origin
    #   ads.mediatailor.*&lt;region&gt;*.amazonaws.com. Then specify the
    #   rule's name in this `AdSegmentUrlPrefix`. When AWS Elemental
    #   MediaTailor serves a manifest, it reports your CDN as the source for
    #   ad segments.
    #   @return [String]
    #
    # @!attribute [rw] content_segment_url_prefix
    #   A content delivery network (CDN) to cache content segments, so that
    #   content requests don’t always have to go to the origin server.
    #   First, create a rule in your CDN for the content segment origin
    #   server. Then specify the rule's name in this
    #   `ContentSegmentUrlPrefix`. When AWS Elemental MediaTailor serves a
    #   manifest, it reports your CDN as the source for content segments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CdnConfiguration AWS API Documentation
    #
    class CdnConfiguration < Struct.new(
      :ad_segment_url_prefix,
      :content_segment_url_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration parameters for a channel. For information about
    # MediaTailor channels, see [Working with channels][1] in the
    # *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
    #
    # @!attribute [rw] arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_state
    #   Returns the state whether the channel is running or not.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp of when the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] filler_slate
    #   The slate used to fill gaps between programs in the schedule. You
    #   must configure filler slate if your channel uses the `LINEAR`
    #   `PlaybackMode`. MediaTailor doesn't support filler slate for
    #   channels using the `LOOP` `PlaybackMode`.
    #   @return [Types::SlateSource]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp of when the channel was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration.
    #   @return [Types::LogConfigurationForChannel]
    #
    # @!attribute [rw] outputs
    #   The channel's output properties.
    #   @return [Array<Types::ResponseOutputItem>]
    #
    # @!attribute [rw] playback_mode
    #   The type of playback mode for this channel.
    #
    #   `LINEAR` - Programs play back-to-back only once.
    #
    #   `LOOP` - Programs play back-to-back in an endless loop. When the
    #   last program in the schedule plays, playback loops back to the first
    #   program in the schedule.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the channel. Tags are key-value pairs that you
    #   can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tier
    #   The tier for this channel. STANDARD tier channels can contain live
    #   programs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/Channel AWS API Documentation
    #
    class Channel < Struct.new(
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :log_configuration,
      :outputs,
      :playback_mode,
      :tags,
      :tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Clip range configuration for the VOD source associated with the
    # program.
    #
    # @!attribute [rw] end_offset_millis
    #   The end offset of the clip range, in milliseconds, starting from the
    #   beginning of the VOD source associated with the program.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ClipRange AWS API Documentation
    #
    class ClipRange < Struct.new(
      :end_offset_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] log_types
    #   The types of logs to collect.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ConfigureLogsForChannelRequest AWS API Documentation
    #
    class ConfigureLogsForChannelRequest < Struct.new(
      :channel_name,
      :log_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] log_types
    #   The types of logs collected.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ConfigureLogsForChannelResponse AWS API Documentation
    #
    class ConfigureLogsForChannelResponse < Struct.new(
      :channel_name,
      :log_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures Amazon CloudWatch log settings for a playback
    # configuration.
    #
    # @!attribute [rw] percent_enabled
    #   The percentage of session logs that MediaTailor sends to your
    #   Cloudwatch Logs account. For example, if your playback configuration
    #   has 1000 sessions and percentEnabled is set to `60`, MediaTailor
    #   sends logs for 600 of the sessions to CloudWatch Logs. MediaTailor
    #   decides at random which of the playback configuration sessions to
    #   send logs for. If you want to view logs for a specific session, you
    #   can use the [debug log mode][1].
    #
    #   Valid values: `0` - `100`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html
    #   @return [Integer]
    #
    # @!attribute [rw] playback_configuration_name
    #   The name of the playback configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ConfigureLogsForPlaybackConfigurationRequest AWS API Documentation
    #
    class ConfigureLogsForPlaybackConfigurationRequest < Struct.new(
      :percent_enabled,
      :playback_configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] percent_enabled
    #   The percentage of session logs that MediaTailor sends to your
    #   Cloudwatch Logs account.
    #   @return [Integer]
    #
    # @!attribute [rw] playback_configuration_name
    #   The name of the playback configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ConfigureLogsForPlaybackConfigurationResponse AWS API Documentation
    #
    class ConfigureLogsForPlaybackConfigurationResponse < Struct.new(
      :percent_enabled,
      :playback_configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] filler_slate
    #   The slate used to fill gaps between programs in the schedule. You
    #   must configure filler slate if your channel uses the `LINEAR`
    #   `PlaybackMode`. MediaTailor doesn't support filler slate for
    #   channels using the `LOOP` `PlaybackMode`.
    #   @return [Types::SlateSource]
    #
    # @!attribute [rw] outputs
    #   The channel's output properties.
    #   @return [Array<Types::RequestOutputItem>]
    #
    # @!attribute [rw] playback_mode
    #   The type of playback mode to use for this channel.
    #
    #   `LINEAR` - The programs in the schedule play once back-to-back in
    #   the schedule.
    #
    #   `LOOP` - The programs in the schedule play back-to-back in an
    #   endless loop. When the last program in the schedule stops playing,
    #   playback loops back to the first program in the schedule.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the channel. Tags are key-value pairs that you
    #   can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tier
    #   The tier of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateChannelRequest AWS API Documentation
    #
    class CreateChannelRequest < Struct.new(
      :channel_name,
      :filler_slate,
      :outputs,
      :playback_mode,
      :tags,
      :tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) to assign to the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name to assign to the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_state
    #   Indicates whether the channel is in a running state or not.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp of when the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] filler_slate
    #   Contains information about the slate used to fill gaps between
    #   programs in the schedule.
    #   @return [Types::SlateSource]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp of when the channel was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] outputs
    #   The output properties to assign to the channel.
    #   @return [Array<Types::ResponseOutputItem>]
    #
    # @!attribute [rw] playback_mode
    #   The playback mode to assign to the channel.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the channel. Tags are key-value pairs that you
    #   can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tier
    #   The tier of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateChannelResponse AWS API Documentation
    #
    class CreateChannelResponse < Struct.new(
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :outputs,
      :playback_mode,
      :tags,
      :tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] http_package_configurations
    #   A list of HTTP package configuration parameters for this live
    #   source.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] live_source_name
    #   The name of the live source.
    #   @return [String]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the live source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateLiveSourceRequest AWS API Documentation
    #
    class CreateLiveSourceRequest < Struct.new(
      :http_package_configurations,
      :live_source_name,
      :source_location_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN to assign to the live source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the live source was created.
    #   @return [Time]
    #
    # @!attribute [rw] http_package_configurations
    #   A list of HTTP package configuration parameters for this live
    #   source.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] last_modified_time
    #   The time the live source was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] live_source_name
    #   The name to assign to the live source.
    #   @return [String]
    #
    # @!attribute [rw] source_location_name
    #   The name to assign to the source location of the live source.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the live source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateLiveSourceResponse AWS API Documentation
    #
    class CreateLiveSourceResponse < Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] consumption
    #   The configuration settings for MediaTailor's *consumption* of the
    #   prefetched ads from the ad decision server. Each consumption
    #   configuration contains an end time and an optional start time that
    #   define the *consumption window*. Prefetch schedules automatically
    #   expire no earlier than seven days after the end time.
    #   @return [Types::PrefetchConsumption]
    #
    # @!attribute [rw] name
    #   The name to assign to the schedule request.
    #   @return [String]
    #
    # @!attribute [rw] playback_configuration_name
    #   The name to assign to the playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] retrieval
    #   The configuration settings for retrieval of prefetched ads from the
    #   ad decision server. Only one set of prefetched ads will be retrieved
    #   and subsequently consumed for each ad break.
    #   @return [Types::PrefetchRetrieval]
    #
    # @!attribute [rw] stream_id
    #   An optional stream identifier that MediaTailor uses to prefetch ads
    #   for multiple streams that use the same playback configuration. If
    #   `StreamId` is specified, MediaTailor returns all of the prefetch
    #   schedules with an exact match on `StreamId`. If not specified,
    #   MediaTailor returns all of the prefetch schedules for the playback
    #   configuration, regardless of `StreamId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreatePrefetchScheduleRequest AWS API Documentation
    #
    class CreatePrefetchScheduleRequest < Struct.new(
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN to assign to the prefetch schedule.
    #   @return [String]
    #
    # @!attribute [rw] consumption
    #   The configuration settings for MediaTailor's *consumption* of the
    #   prefetched ads from the ad decision server. Each consumption
    #   configuration contains an end time and an optional start time that
    #   define the *consumption window*. Prefetch schedules automatically
    #   expire no earlier than seven days after the end time.
    #   @return [Types::PrefetchConsumption]
    #
    # @!attribute [rw] name
    #   The name to assign to the prefetch schedule.
    #   @return [String]
    #
    # @!attribute [rw] playback_configuration_name
    #   The name to assign to the playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] retrieval
    #   The configuration settings for retrieval of prefetched ads from the
    #   ad decision server. Only one set of prefetched ads will be retrieved
    #   and subsequently consumed for each ad break.
    #   @return [Types::PrefetchRetrieval]
    #
    # @!attribute [rw] stream_id
    #   An optional stream identifier that MediaTailor uses to prefetch ads
    #   for multiple streams that use the same playback configuration. If
    #   `StreamId` is specified, MediaTailor returns all of the prefetch
    #   schedules with an exact match on `StreamId`. If not specified,
    #   MediaTailor returns all of the prefetch schedules for the playback
    #   configuration, regardless of `StreamId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreatePrefetchScheduleResponse AWS API Documentation
    #
    class CreatePrefetchScheduleResponse < Struct.new(
      :arn,
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ad_breaks
    #   The ad break configuration settings.
    #   @return [Array<Types::AdBreak>]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel for this Program.
    #   @return [String]
    #
    # @!attribute [rw] live_source_name
    #   The name of the LiveSource for this Program.
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   The name of the Program.
    #   @return [String]
    #
    # @!attribute [rw] schedule_configuration
    #   The schedule configuration settings.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location.
    #   @return [String]
    #
    # @!attribute [rw] vod_source_name
    #   The name that's used to refer to a VOD source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateProgramRequest AWS API Documentation
    #
    class CreateProgramRequest < Struct.new(
      :ad_breaks,
      :channel_name,
      :live_source_name,
      :program_name,
      :schedule_configuration,
      :source_location_name,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ad_breaks
    #   The ad break configuration settings.
    #   @return [Array<Types::AdBreak>]
    #
    # @!attribute [rw] arn
    #   The ARN to assign to the program.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name to assign to the channel for this program.
    #   @return [String]
    #
    # @!attribute [rw] clip_range
    #   The clip range configuration settings.
    #   @return [Types::ClipRange]
    #
    # @!attribute [rw] creation_time
    #   The time the program was created.
    #   @return [Time]
    #
    # @!attribute [rw] duration_millis
    #   The duration of the live program in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] live_source_name
    #   The name of the LiveSource for this Program.
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   The name to assign to this program.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start_time
    #   The scheduled start time for this Program.
    #   @return [Time]
    #
    # @!attribute [rw] source_location_name
    #   The name to assign to the source location for this program.
    #   @return [String]
    #
    # @!attribute [rw] vod_source_name
    #   The name that's used to refer to a VOD source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateProgramResponse AWS API Documentation
    #
    class CreateProgramResponse < Struct.new(
      :ad_breaks,
      :arn,
      :channel_name,
      :clip_range,
      :creation_time,
      :duration_millis,
      :live_source_name,
      :program_name,
      :scheduled_start_time,
      :source_location_name,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_configuration
    #   Access configuration parameters. Configures the type of
    #   authentication used to access content from your source location.
    #   @return [Types::AccessConfiguration]
    #
    # @!attribute [rw] default_segment_delivery_configuration
    #   The optional configuration for the server that serves segments.
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute [rw] http_configuration
    #   The source's HTTP package configurations.
    #   @return [Types::HttpConfiguration]
    #
    # @!attribute [rw] segment_delivery_configurations
    #   A list of the segment delivery configurations associated with this
    #   resource.
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    #
    # @!attribute [rw] source_location_name
    #   The name associated with the source location.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the source location. Tags are key-value pairs
    #   that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more
    #   information, see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateSourceLocationRequest AWS API Documentation
    #
    class CreateSourceLocationRequest < Struct.new(
      :access_configuration,
      :default_segment_delivery_configuration,
      :http_configuration,
      :segment_delivery_configurations,
      :source_location_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_configuration
    #   Access configuration parameters. Configures the type of
    #   authentication used to access content from your source location.
    #   @return [Types::AccessConfiguration]
    #
    # @!attribute [rw] arn
    #   The ARN to assign to the source location.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the source location was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_segment_delivery_configuration
    #   The optional configuration for the server that serves segments.
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute [rw] http_configuration
    #   The source's HTTP package configurations.
    #   @return [Types::HttpConfiguration]
    #
    # @!attribute [rw] last_modified_time
    #   The time the source location was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] segment_delivery_configurations
    #   The segment delivery configurations for the source location. For
    #   information about MediaTailor configurations, see [Working with
    #   configurations in AWS Elemental MediaTailor][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    #
    # @!attribute [rw] source_location_name
    #   The name to assign to the source location.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the source location. Tags are key-value pairs
    #   that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more
    #   information, see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateSourceLocationResponse AWS API Documentation
    #
    class CreateSourceLocationResponse < Struct.new(
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] http_package_configurations
    #   A list of HTTP package configuration parameters for this VOD source.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location for this VOD source.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the VOD source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vod_source_name
    #   The name associated with the VOD source.&gt;
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateVodSourceRequest AWS API Documentation
    #
    class CreateVodSourceRequest < Struct.new(
      :http_package_configurations,
      :source_location_name,
      :tags,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN to assign to this VOD source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the VOD source was created.
    #   @return [Time]
    #
    # @!attribute [rw] http_package_configurations
    #   A list of HTTP package configuration parameters for this VOD source.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] last_modified_time
    #   The time the VOD source was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] source_location_name
    #   The name to assign to the source location for this VOD source.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the VOD source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vod_source_name
    #   The name to assign to the VOD source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateVodSourceResponse AWS API Documentation
    #
    class CreateVodSourceResponse < Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for DASH content.
    #
    # @!attribute [rw] manifest_endpoint_prefix
    #   The URL generated by MediaTailor to initiate a playback session. The
    #   session uses server-side reporting. This setting is ignored in PUT
    #   operations.
    #   @return [String]
    #
    # @!attribute [rw] mpd_location
    #   The setting that controls whether MediaTailor includes the Location
    #   tag in DASH manifests. MediaTailor populates the Location tag with
    #   the URL for manifest update requests, to be used by players that
    #   don't support sticky redirects. Disable this if you have CDN
    #   routing rules set up for accessing MediaTailor manifests, and you
    #   are either using client-side reporting or your players support
    #   sticky HTTP redirects. Valid values are `DISABLED` and
    #   `EMT_DEFAULT`. The `EMT_DEFAULT` setting enables the inclusion of
    #   the tag and is the default value.
    #   @return [String]
    #
    # @!attribute [rw] origin_manifest_type
    #   The setting that controls whether MediaTailor handles manifests from
    #   the origin server as multi-period manifests or single-period
    #   manifests. If your origin server produces single-period manifests,
    #   set this to `SINGLE_PERIOD`. The default setting is `MULTI_PERIOD`.
    #   For multi-period manifests, omit this setting or set it to
    #   `MULTI_PERIOD`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DashConfiguration AWS API Documentation
    #
    class DashConfiguration < Struct.new(
      :manifest_endpoint_prefix,
      :mpd_location,
      :origin_manifest_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for DASH PUT operations.
    #
    # @!attribute [rw] mpd_location
    #   The setting that controls whether MediaTailor includes the Location
    #   tag in DASH manifests. MediaTailor populates the Location tag with
    #   the URL for manifest update requests, to be used by players that
    #   don't support sticky redirects. Disable this if you have CDN
    #   routing rules set up for accessing MediaTailor manifests, and you
    #   are either using client-side reporting or your players support
    #   sticky HTTP redirects. Valid values are `DISABLED` and
    #   `EMT_DEFAULT`. The `EMT_DEFAULT` setting enables the inclusion of
    #   the tag and is the default value.
    #   @return [String]
    #
    # @!attribute [rw] origin_manifest_type
    #   The setting that controls whether MediaTailor handles manifests from
    #   the origin server as multi-period manifests or single-period
    #   manifests. If your origin server produces single-period manifests,
    #   set this to `SINGLE_PERIOD`. The default setting is `MULTI_PERIOD`.
    #   For multi-period manifests, omit this setting or set it to
    #   `MULTI_PERIOD`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DashConfigurationForPut AWS API Documentation
    #
    class DashConfigurationForPut < Struct.new(
      :mpd_location,
      :origin_manifest_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dash manifest configuration parameters.
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of each manifest. Minimum value:
    #   `30` seconds. Maximum value: `3600` seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] min_buffer_time_seconds
    #   Minimum amount of content (measured in seconds) that a player must
    #   keep available in the buffer. Minimum value: `2` seconds. Maximum
    #   value: `60` seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] min_update_period_seconds
    #   Minimum amount of time (in seconds) that the player should wait
    #   before requesting updates to the manifest. Minimum value: `2`
    #   seconds. Maximum value: `60` seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] suggested_presentation_delay_seconds
    #   Amount of time (in seconds) that the player should be from the live
    #   point at the end of the manifest. Minimum value: `2` seconds.
    #   Maximum value: `60` seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DashPlaylistSettings AWS API Documentation
    #
    class DashPlaylistSettings < Struct.new(
      :manifest_window_seconds,
      :min_buffer_time_seconds,
      :min_update_period_seconds,
      :suggested_presentation_delay_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The optional configuration for a server that serves segments. Use this
    # if you want the segment delivery server to be different from the
    # source location server. For example, you can configure your source
    # location server to be an origination server, such as MediaPackage, and
    # the segment delivery server to be a content delivery network (CDN),
    # such as CloudFront. If you don't specify a segment delivery server,
    # then the source location server is used.
    #
    # @!attribute [rw] base_url
    #   The hostname of the server that will be used to serve segments. This
    #   string must include the protocol, such as **https://**.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DefaultSegmentDeliveryConfiguration AWS API Documentation
    #
    class DefaultSegmentDeliveryConfiguration < Struct.new(
      :base_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel associated with this channel policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteChannelPolicyRequest AWS API Documentation
    #
    class DeleteChannelPolicyRequest < Struct.new(
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteChannelPolicyResponse AWS API Documentation
    #
    class DeleteChannelPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteChannelRequest AWS API Documentation
    #
    class DeleteChannelRequest < Struct.new(
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteChannelResponse AWS API Documentation
    #
    class DeleteChannelResponse < Aws::EmptyStructure; end

    # @!attribute [rw] live_source_name
    #   The name of the live source.
    #   @return [String]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location associated with this Live Source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteLiveSourceRequest AWS API Documentation
    #
    class DeleteLiveSourceRequest < Struct.new(
      :live_source_name,
      :source_location_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteLiveSourceResponse AWS API Documentation
    #
    class DeleteLiveSourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the playback configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeletePlaybackConfigurationRequest AWS API Documentation
    #
    class DeletePlaybackConfigurationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeletePlaybackConfigurationResponse AWS API Documentation
    #
    class DeletePlaybackConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the prefetch schedule. If the action is successful, the
    #   service sends back an HTTP 204 response with an empty HTTP body.
    #   @return [String]
    #
    # @!attribute [rw] playback_configuration_name
    #   The name of the playback configuration for this prefetch schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeletePrefetchScheduleRequest AWS API Documentation
    #
    class DeletePrefetchScheduleRequest < Struct.new(
      :name,
      :playback_configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeletePrefetchScheduleResponse AWS API Documentation
    #
    class DeletePrefetchScheduleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   The name of the program.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteProgramRequest AWS API Documentation
    #
    class DeleteProgramRequest < Struct.new(
      :channel_name,
      :program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteProgramResponse AWS API Documentation
    #
    class DeleteProgramResponse < Aws::EmptyStructure; end

    # @!attribute [rw] source_location_name
    #   The name of the source location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteSourceLocationRequest AWS API Documentation
    #
    class DeleteSourceLocationRequest < Struct.new(
      :source_location_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteSourceLocationResponse AWS API Documentation
    #
    class DeleteSourceLocationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] source_location_name
    #   The name of the source location associated with this VOD Source.
    #   @return [String]
    #
    # @!attribute [rw] vod_source_name
    #   The name of the VOD source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteVodSourceRequest AWS API Documentation
    #
    class DeleteVodSourceRequest < Struct.new(
      :source_location_name,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteVodSourceResponse AWS API Documentation
    #
    class DeleteVodSourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeChannelRequest AWS API Documentation
    #
    class DescribeChannelRequest < Struct.new(
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_state
    #   Indicates whether the channel is in a running state or not.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp of when the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] filler_slate
    #   Contains information about the slate used to fill gaps between
    #   programs in the schedule.
    #   @return [Types::SlateSource]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp of when the channel was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration for the channel.
    #   @return [Types::LogConfigurationForChannel]
    #
    # @!attribute [rw] outputs
    #   The channel's output properties.
    #   @return [Array<Types::ResponseOutputItem>]
    #
    # @!attribute [rw] playback_mode
    #   The channel's playback mode.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the channel. Tags are key-value pairs that you
    #   can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tier
    #   The channel's tier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeChannelResponse AWS API Documentation
    #
    class DescribeChannelResponse < Struct.new(
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :log_configuration,
      :outputs,
      :playback_mode,
      :tags,
      :tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] live_source_name
    #   The name of the live source.
    #   @return [String]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location associated with this Live Source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeLiveSourceRequest AWS API Documentation
    #
    class DescribeLiveSourceRequest < Struct.new(
      :live_source_name,
      :source_location_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the live source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp that indicates when the live source was created.
    #   @return [Time]
    #
    # @!attribute [rw] http_package_configurations
    #   The HTTP package configurations.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp that indicates when the live source was modified.
    #   @return [Time]
    #
    # @!attribute [rw] live_source_name
    #   The name of the live source.
    #   @return [String]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location associated with the live source.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the live source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeLiveSourceResponse AWS API Documentation
    #
    class DescribeLiveSourceResponse < Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel associated with this Program.
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   The name of the program.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeProgramRequest AWS API Documentation
    #
    class DescribeProgramRequest < Struct.new(
      :channel_name,
      :program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ad_breaks
    #   The ad break configuration settings.
    #   @return [Array<Types::AdBreak>]
    #
    # @!attribute [rw] arn
    #   The ARN of the program.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel that the program belongs to.
    #   @return [String]
    #
    # @!attribute [rw] clip_range
    #   The clip range configuration settings.
    #   @return [Types::ClipRange]
    #
    # @!attribute [rw] creation_time
    #   The timestamp of when the program was created.
    #   @return [Time]
    #
    # @!attribute [rw] duration_millis
    #   The duration of the live program in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] live_source_name
    #   The name of the LiveSource for this Program.
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   The name of the program.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start_time
    #   The date and time that the program is scheduled to start in ISO 8601
    #   format and Coordinated Universal Time (UTC). For example, the value
    #   2021-03-27T17:48:16.751Z represents March 27, 2021 at 17:48:16.751
    #   UTC.
    #   @return [Time]
    #
    # @!attribute [rw] source_location_name
    #   The source location name.
    #   @return [String]
    #
    # @!attribute [rw] vod_source_name
    #   The name that's used to refer to a VOD source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeProgramResponse AWS API Documentation
    #
    class DescribeProgramResponse < Struct.new(
      :ad_breaks,
      :arn,
      :channel_name,
      :clip_range,
      :creation_time,
      :duration_millis,
      :live_source_name,
      :program_name,
      :scheduled_start_time,
      :source_location_name,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_location_name
    #   The name of the source location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeSourceLocationRequest AWS API Documentation
    #
    class DescribeSourceLocationRequest < Struct.new(
      :source_location_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_configuration
    #   The access configuration for the source location.
    #   @return [Types::AccessConfiguration]
    #
    # @!attribute [rw] arn
    #   The ARN of the source location.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp that indicates when the source location was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_segment_delivery_configuration
    #   The default segment delivery configuration settings.
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute [rw] http_configuration
    #   The HTTP package configuration settings for the source location.
    #   @return [Types::HttpConfiguration]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp that indicates when the source location was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] segment_delivery_configurations
    #   A list of the segment delivery configurations associated with this
    #   resource.
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the source location. Tags are key-value pairs
    #   that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more
    #   information, see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeSourceLocationResponse AWS API Documentation
    #
    class DescribeSourceLocationResponse < Struct.new(
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_location_name
    #   The name of the source location associated with this VOD Source.
    #   @return [String]
    #
    # @!attribute [rw] vod_source_name
    #   The name of the VOD Source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeVodSourceRequest AWS API Documentation
    #
    class DescribeVodSourceRequest < Struct.new(
      :source_location_name,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the VOD source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp that indicates when the VOD source was created.
    #   @return [Time]
    #
    # @!attribute [rw] http_package_configurations
    #   The HTTP package configurations.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] last_modified_time
    #   The last modified time of the VOD source.
    #   @return [Time]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location associated with the VOD source.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the VOD source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vod_source_name
    #   The name of the VOD source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeVodSourceResponse AWS API Documentation
    #
    class DescribeVodSourceResponse < Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel associated with this Channel Policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetChannelPolicyRequest AWS API Documentation
    #
    class GetChannelPolicyRequest < Struct.new(
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The IAM policy for the channel. IAM policies are used to control
    #   access to your channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetChannelPolicyResponse AWS API Documentation
    #
    class GetChannelPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel associated with this Channel Schedule.
    #   @return [String]
    #
    # @!attribute [rw] duration_minutes
    #   The duration in minutes of the channel schedule.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of channel schedules that you want MediaTailor to
    #   return in response to the current request. If there are more than
    #   `MaxResults` channel schedules, use the value of `NextToken` in the
    #   response to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) If the playback configuration has more than `MaxResults`
    #   channel schedules, use `NextToken` to get the second and subsequent
    #   pages of results.
    #
    #   For the first `GetChannelScheduleRequest` request, omit this value.
    #
    #   For the second and subsequent requests, get the value of `NextToken`
    #   from the previous response and specify that value for `NextToken` in
    #   the request.
    #
    #   If the previous response didn't include a `NextToken` element,
    #   there are no more channel schedules to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetChannelScheduleRequest AWS API Documentation
    #
    class GetChannelScheduleRequest < Struct.new(
      :channel_name,
      :duration_minutes,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of schedule entries for the channel.
    #   @return [Array<Types::ScheduleEntry>]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetChannelScheduleResponse AWS API Documentation
    #
    class GetChannelScheduleResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The identifier for the playback configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPlaybackConfigurationRequest AWS API Documentation
    #
    class GetPlaybackConfigurationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ad_decision_server_url
    #   The URL for the ad decision server (ADS). This includes the
    #   specification of static parameters and placeholders for dynamic
    #   parameters. AWS Elemental MediaTailor substitutes player-specific
    #   and session-specific parameters as needed when calling the ADS.
    #   Alternately, for testing, you can provide a static VAST URL. The
    #   maximum length is 25,000 characters.
    #   @return [String]
    #
    # @!attribute [rw] avail_suppression
    #   The configuration for avail suppression, also known as ad
    #   suppression. For more information about ad suppression, see [Ad
    #   Suppression][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html
    #   @return [Types::AvailSuppression]
    #
    # @!attribute [rw] bumper
    #   The configuration for bumpers. Bumpers are short audio or video
    #   clips that play at the start or before the end of an ad break. To
    #   learn more about bumpers, see [Bumpers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html
    #   @return [Types::Bumper]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] configuration_aliases
    #   The player parameters and aliases used as dynamic variables during
    #   session initialization. For more information, see [Domain
    #   Variables][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] dash_configuration
    #   The configuration for DASH content.
    #   @return [Types::DashConfiguration]
    #
    # @!attribute [rw] hls_configuration
    #   The configuration for HLS content.
    #   @return [Types::HlsConfiguration]
    #
    # @!attribute [rw] live_pre_roll_configuration
    #   The configuration for pre-roll ad insertion.
    #   @return [Types::LivePreRollConfiguration]
    #
    # @!attribute [rw] log_configuration
    #   The Amazon CloudWatch log settings for a playback configuration.
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] manifest_processing_rules
    #   The configuration for manifest processing rules. Manifest processing
    #   rules enable customization of the personalized manifests created by
    #   MediaTailor.
    #   @return [Types::ManifestProcessingRules]
    #
    # @!attribute [rw] name
    #   The identifier for the playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] personalization_threshold_seconds
    #   Defines the maximum duration of underfilled ad time (in seconds)
    #   allowed in an ad break. If the duration of underfilled ad time
    #   exceeds the personalization threshold, then the personalization of
    #   the ad break is abandoned and the underlying content is shown. This
    #   feature applies to *ad replacement* in live and VOD streams, rather
    #   than ad insertion, because it relies on an underlying content
    #   stream. For more information about ad break behavior, including ad
    #   replacement and insertion, see [Ad Behavior in AWS Elemental
    #   MediaTailor][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html
    #   @return [Integer]
    #
    # @!attribute [rw] playback_configuration_arn
    #   The Amazon Resource Name (ARN) for the playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] playback_endpoint_prefix
    #   The URL that the player accesses to get a manifest from AWS
    #   Elemental MediaTailor. This session will use server-side reporting.
    #   @return [String]
    #
    # @!attribute [rw] session_initialization_endpoint_prefix
    #   The URL that the player uses to initialize a session that uses
    #   client-side reporting.
    #   @return [String]
    #
    # @!attribute [rw] slate_ad_url
    #   The URL for a high-quality video asset to transcode and use to fill
    #   in time that's not used by ads. AWS Elemental MediaTailor shows the
    #   slate to fill in gaps in media content. Configuring the slate is
    #   optional for non-VPAID playback configurations. For VPAID, the slate
    #   is required because MediaTailor provides it in the slots designated
    #   for dynamic ad content. The slate must be a high-quality asset that
    #   contains both audio and video.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the playback configuration. Tags are key-value
    #   pairs that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more
    #   information, see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transcode_profile_name
    #   The name that is used to associate this playback configuration with
    #   a custom transcode profile. This overrides the dynamic transcoding
    #   defaults of MediaTailor. Use this only if you have already set up
    #   custom profiles with the help of AWS Support.
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   The URL prefix for the parent manifest for the stream, minus the
    #   asset ID. The maximum length is 512 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPlaybackConfigurationResponse AWS API Documentation
    #
    class GetPlaybackConfigurationResponse < Struct.new(
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :hls_configuration,
      :live_pre_roll_configuration,
      :log_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the prefetch schedule. The name must be unique among all
    #   prefetch schedules that are associated with the specified playback
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] playback_configuration_name
    #   Returns information about the prefetch schedule for a specific
    #   playback configuration. If you call `GetPrefetchSchedule` on an
    #   expired prefetch schedule, MediaTailor returns an HTTP 404 status
    #   code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPrefetchScheduleRequest AWS API Documentation
    #
    class GetPrefetchScheduleRequest < Struct.new(
      :name,
      :playback_configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the prefetch schedule.
    #   @return [String]
    #
    # @!attribute [rw] consumption
    #   Consumption settings determine how, and when, MediaTailor places the
    #   prefetched ads into ad breaks. Ad consumption occurs within a span
    #   of time that you define, called a *consumption window*. You can
    #   designate which ad breaks that MediaTailor fills with prefetch ads
    #   by setting avail matching criteria.
    #   @return [Types::PrefetchConsumption]
    #
    # @!attribute [rw] name
    #   The name of the prefetch schedule. The name must be unique among all
    #   prefetch schedules that are associated with the specified playback
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] playback_configuration_name
    #   The name of the playback configuration to create the prefetch
    #   schedule for.
    #   @return [String]
    #
    # @!attribute [rw] retrieval
    #   A complex type that contains settings for prefetch retrieval from
    #   the ad decision server (ADS).
    #   @return [Types::PrefetchRetrieval]
    #
    # @!attribute [rw] stream_id
    #   An optional stream identifier that you can specify in order to
    #   prefetch for multiple streams that use the same playback
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPrefetchScheduleResponse AWS API Documentation
    #
    class GetPrefetchScheduleResponse < Struct.new(
      :arn,
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for HLS content.
    #
    # @!attribute [rw] manifest_endpoint_prefix
    #   The URL that is used to initiate a playback session for devices that
    #   support Apple HLS. The session uses server-side reporting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/HlsConfiguration AWS API Documentation
    #
    class HlsConfiguration < Struct.new(
      :manifest_endpoint_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # HLS playlist configuration parameters.
    #
    # @!attribute [rw] ad_markup_type
    #   Determines the type of SCTE 35 tags to use in ad markup. Specify
    #   `DATERANGE` to use `DATERANGE` tags (for live or VOD content).
    #   Specify `SCTE35_ENHANCED` to use `EXT-X-CUE-OUT` and `EXT-X-CUE-IN`
    #   tags (for VOD content only).
    #   @return [Array<String>]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of each manifest. Minimum value:
    #   `30` seconds. Maximum value: `3600` seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/HlsPlaylistSettings AWS API Documentation
    #
    class HlsPlaylistSettings < Struct.new(
      :ad_markup_type,
      :manifest_window_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The HTTP configuration for the source location.
    #
    # @!attribute [rw] base_url
    #   The base URL for the source location host server. This string must
    #   include the protocol, such as **https://**.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/HttpConfiguration AWS API Documentation
    #
    class HttpConfiguration < Struct.new(
      :base_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The HTTP package configuration properties for the requested VOD
    # source.
    #
    # @!attribute [rw] path
    #   The relative path to the URL for this VOD source. This is combined
    #   with `SourceLocation::HttpConfiguration::BaseUrl` to form a valid
    #   URL.
    #   @return [String]
    #
    # @!attribute [rw] source_group
    #   The name of the source group. This has to match one of the
    #   `Channel::Outputs::SourceGroup`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The streaming protocol for this package configuration. Supported
    #   values are `HLS` and `DASH`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/HttpPackageConfiguration AWS API Documentation
    #
    class HttpPackageConfiguration < Struct.new(
      :path,
      :source_group,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # For `SCTE35_ENHANCED` output, defines a key and corresponding value.
    # MediaTailor generates these pairs within the `EXT-X-ASSET`tag.
    #
    # @!attribute [rw] key
    #   For `SCTE35_ENHANCED` output, defines a key. MediaTailor takes this
    #   key, and its associated value, and generates the key/value pair
    #   within the `EXT-X-ASSET`tag. If you specify a key, you must also
    #   specify a corresponding value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   For `SCTE35_ENHANCED` output, defines a value. MediaTailor; takes
    #   this value, and its associated key, and generates the key/value pair
    #   within the `EXT-X-ASSET`tag. If you specify a value, you must also
    #   specify a corresponding key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/KeyValuePair AWS API Documentation
    #
    class KeyValuePair < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of alerts that you want MediaTailor to return in
    #   response to the current request. If there are more than `MaxResults`
    #   alerts, use the value of `NextToken` in the response to get the next
    #   page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListAlertsRequest AWS API Documentation
    #
    class ListAlertsRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of alerts that are associated with this resource.
    #   @return [Array<Types::Alert>]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListAlertsResponse AWS API Documentation
    #
    class ListAlertsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of channels that you want MediaTailor to return
    #   in response to the current request. If there are more than
    #   `MaxResults` channels, use the value of `NextToken` in the response
    #   to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListChannelsRequest AWS API Documentation
    #
    class ListChannelsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of channels that are associated with this account.
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListChannelsResponse AWS API Documentation
    #
    class ListChannelsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of live sources that you want MediaTailor to
    #   return in response to the current request. If there are more than
    #   `MaxResults` live sources, use the value of `NextToken` in the
    #   response to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location associated with this Live Sources
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListLiveSourcesRequest AWS API Documentation
    #
    class ListLiveSourcesRequest < Struct.new(
      :max_results,
      :next_token,
      :source_location_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Lists the live sources.
    #   @return [Array<Types::LiveSource>]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListLiveSourcesResponse AWS API Documentation
    #
    class ListLiveSourcesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of playback configurations that you want
    #   MediaTailor to return in response to the current request. If there
    #   are more than `MaxResults` playback configurations, use the value of
    #   `NextToken` in the response to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPlaybackConfigurationsRequest AWS API Documentation
    #
    class ListPlaybackConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Array of playback configurations. This might be all the available
    #   configurations or a subset, depending on the settings that you
    #   provide and the total number of configurations stored.
    #   @return [Array<Types::PlaybackConfiguration>]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the GET list request when results
    #   exceed the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPlaybackConfigurationsResponse AWS API Documentation
    #
    class ListPlaybackConfigurationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of prefetch schedules that you want MediaTailor
    #   to return in response to the current request. If there are more than
    #   `MaxResults` prefetch schedules, use the value of `NextToken` in the
    #   response to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) If the playback configuration has more than `MaxResults`
    #   prefetch schedules, use `NextToken` to get the second and subsequent
    #   pages of results.
    #
    #   For the first `ListPrefetchSchedulesRequest` request, omit this
    #   value.
    #
    #   For the second and subsequent requests, get the value of `NextToken`
    #   from the previous response and specify that value for `NextToken` in
    #   the request.
    #
    #   If the previous response didn't include a `NextToken` element,
    #   there are no more prefetch schedules to get.
    #   @return [String]
    #
    # @!attribute [rw] playback_configuration_name
    #   Retrieves the prefetch schedule(s) for a specific playback
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   An optional filtering parameter whereby MediaTailor filters the
    #   prefetch schedules to include only specific streams.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPrefetchSchedulesRequest AWS API Documentation
    #
    class ListPrefetchSchedulesRequest < Struct.new(
      :max_results,
      :next_token,
      :playback_configuration_name,
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Lists the prefetch schedules. An empty `Items` list doesn't mean
    #   there aren't more items to fetch, just that that page was empty.
    #   @return [Array<Types::PrefetchSchedule>]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPrefetchSchedulesResponse AWS API Documentation
    #
    class ListPrefetchSchedulesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of source locations that you want MediaTailor to
    #   return in response to the current request. If there are more than
    #   `MaxResults` source locations, use the value of `NextToken` in the
    #   response to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListSourceLocationsRequest AWS API Documentation
    #
    class ListSourceLocationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of source locations.
    #   @return [Array<Types::SourceLocation>]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListSourceLocationsResponse AWS API Documentation
    #
    class ListSourceLocationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) associated with this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with this resource. Tags are key-value pairs
    #   that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more
    #   information, see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of VOD sources that you want MediaTailor to
    #   return in response to the current request. If there are more than
    #   `MaxResults` VOD sources, use the value of `NextToken` in the
    #   response to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location associated with this VOD Source
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListVodSourcesRequest AWS API Documentation
    #
    class ListVodSourcesRequest < Struct.new(
      :max_results,
      :next_token,
      :source_location_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Lists the VOD sources.
    #   @return [Array<Types::VodSource>]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the list request when results exceed
    #   the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListVodSourcesResponse AWS API Documentation
    #
    class ListVodSourcesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for pre-roll ad insertion.
    #
    # @!attribute [rw] ad_decision_server_url
    #   The URL for the ad decision server (ADS) for pre-roll ads. This
    #   includes the specification of static parameters and placeholders for
    #   dynamic parameters. AWS Elemental MediaTailor substitutes
    #   player-specific and session-specific parameters as needed when
    #   calling the ADS. Alternately, for testing, you can provide a static
    #   VAST URL. The maximum length is 25,000 characters.
    #   @return [String]
    #
    # @!attribute [rw] max_duration_seconds
    #   The maximum allowed duration for the pre-roll ad avail. AWS
    #   Elemental MediaTailor won't play pre-roll ads to exceed this
    #   duration, regardless of the total duration of ads that the ADS
    #   returns.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/LivePreRollConfiguration AWS API Documentation
    #
    class LivePreRollConfiguration < Struct.new(
      :ad_decision_server_url,
      :max_duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Live source configuration parameters.
    #
    # @!attribute [rw] arn
    #   The ARN for the live source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp that indicates when the live source was created.
    #   @return [Time]
    #
    # @!attribute [rw] http_package_configurations
    #   The HTTP package configurations for the live source.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp that indicates when the live source was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] live_source_name
    #   The name that's used to refer to a live source.
    #   @return [String]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the live source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/LiveSource AWS API Documentation
    #
    class LiveSource < Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns Amazon CloudWatch log settings for a playback configuration.
    #
    # @!attribute [rw] percent_enabled
    #   The percentage of session logs that MediaTailor sends to your
    #   Cloudwatch Logs account. For example, if your playback configuration
    #   has 1000 sessions and `percentEnabled` is set to `60`, MediaTailor
    #   sends logs for 600 of the sessions to CloudWatch Logs. MediaTailor
    #   decides at random which of the playback configuration sessions to
    #   send logs for. If you want to view logs for a specific session, you
    #   can use the [debug log mode][1].
    #
    #   Valid values: `0` - `100`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/LogConfiguration AWS API Documentation
    #
    class LogConfiguration < Struct.new(
      :percent_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log configuration for the channel.
    #
    # @!attribute [rw] log_types
    #   The log types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/LogConfigurationForChannel AWS API Documentation
    #
    class LogConfigurationForChannel < Struct.new(
      :log_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for manifest processing rules. Manifest processing
    # rules enable customization of the personalized manifests created by
    # MediaTailor.
    #
    # @!attribute [rw] ad_marker_passthrough
    #   For HLS, when set to `true`, MediaTailor passes through
    #   `EXT-X-CUE-IN`, `EXT-X-CUE-OUT`, and `EXT-X-SPLICEPOINT-SCTE35` ad
    #   markers from the origin manifest to the MediaTailor personalized
    #   manifest.
    #
    #   No logic is applied to these ad markers. For example, if
    #   `EXT-X-CUE-OUT` has a value of `60`, but no ads are filled for that
    #   ad break, MediaTailor will not set the value to `0`.
    #   @return [Types::AdMarkerPassthrough]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ManifestProcessingRules AWS API Documentation
    #
    class ManifestProcessingRules < Struct.new(
      :ad_marker_passthrough)
      SENSITIVE = []
      include Aws::Structure
    end

    # A playback configuration. For information about MediaTailor
    # configurations, see [Working with configurations in AWS Elemental
    # MediaTailor][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html
    #
    # @!attribute [rw] ad_decision_server_url
    #   The URL for the ad decision server (ADS). This includes the
    #   specification of static parameters and placeholders for dynamic
    #   parameters. AWS Elemental MediaTailor substitutes player-specific
    #   and session-specific parameters as needed when calling the ADS.
    #   Alternately, for testing you can provide a static VAST URL. The
    #   maximum length is 25,000 characters.
    #   @return [String]
    #
    # @!attribute [rw] avail_suppression
    #   The configuration for avail suppression, also known as ad
    #   suppression. For more information about ad suppression, see [Ad
    #   Suppression][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html
    #   @return [Types::AvailSuppression]
    #
    # @!attribute [rw] bumper
    #   The configuration for bumpers. Bumpers are short audio or video
    #   clips that play at the start or before the end of an ad break. To
    #   learn more about bumpers, see [Bumpers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html
    #   @return [Types::Bumper]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] configuration_aliases
    #   The player parameters and aliases used as dynamic variables during
    #   session initialization. For more information, see [Domain
    #   Variables][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] dash_configuration
    #   The configuration for a DASH source.
    #   @return [Types::DashConfiguration]
    #
    # @!attribute [rw] hls_configuration
    #   The configuration for HLS content.
    #   @return [Types::HlsConfiguration]
    #
    # @!attribute [rw] live_pre_roll_configuration
    #   The configuration for pre-roll ad insertion.
    #   @return [Types::LivePreRollConfiguration]
    #
    # @!attribute [rw] log_configuration
    #   The Amazon CloudWatch log settings for a playback configuration.
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] manifest_processing_rules
    #   The configuration for manifest processing rules. Manifest processing
    #   rules enable customization of the personalized manifests created by
    #   MediaTailor.
    #   @return [Types::ManifestProcessingRules]
    #
    # @!attribute [rw] name
    #   The identifier for the playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] personalization_threshold_seconds
    #   Defines the maximum duration of underfilled ad time (in seconds)
    #   allowed in an ad break. If the duration of underfilled ad time
    #   exceeds the personalization threshold, then the personalization of
    #   the ad break is abandoned and the underlying content is shown. This
    #   feature applies to *ad replacement* in live and VOD streams, rather
    #   than ad insertion, because it relies on an underlying content
    #   stream. For more information about ad break behavior, including ad
    #   replacement and insertion, see [Ad Behavior in AWS Elemental
    #   MediaTailor][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html
    #   @return [Integer]
    #
    # @!attribute [rw] playback_configuration_arn
    #   The Amazon Resource Name (ARN) for the playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] playback_endpoint_prefix
    #   The URL that the player accesses to get a manifest from AWS
    #   Elemental MediaTailor.
    #   @return [String]
    #
    # @!attribute [rw] session_initialization_endpoint_prefix
    #   The URL that the player uses to initialize a session that uses
    #   client-side reporting.
    #   @return [String]
    #
    # @!attribute [rw] slate_ad_url
    #   The URL for a video asset to transcode and use to fill in time
    #   that's not used by ads. AWS Elemental MediaTailor shows the slate
    #   to fill in gaps in media content. Configuring the slate is optional
    #   for non-VPAID playback configurations. For VPAID, the slate is
    #   required because MediaTailor provides it in the slots designated for
    #   dynamic ad content. The slate must be a high-quality asset that
    #   contains both audio and video.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the playback configuration. Tags are key-value
    #   pairs that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more
    #   information, see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transcode_profile_name
    #   The name that is used to associate this playback configuration with
    #   a custom transcode profile. This overrides the dynamic transcoding
    #   defaults of MediaTailor. Use this only if you have already set up
    #   custom profiles with the help of AWS Support.
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   The URL prefix for the parent manifest for the stream, minus the
    #   asset ID. The maximum length is 512 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PlaybackConfiguration AWS API Documentation
    #
    class PlaybackConfiguration < Struct.new(
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :hls_configuration,
      :live_pre_roll_configuration,
      :log_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains settings that determine how and when that
    # MediaTailor places prefetched ads into upcoming ad breaks.
    #
    # @!attribute [rw] avail_matching_criteria
    #   If you only want MediaTailor to insert prefetched ads into avails
    #   (ad breaks) that match specific dynamic variables, such as
    #   `scte.event_id`, set the avail matching criteria.
    #   @return [Array<Types::AvailMatchingCriteria>]
    #
    # @!attribute [rw] end_time
    #   The time when MediaTailor no longer considers the prefetched ads for
    #   use in an ad break. MediaTailor automatically deletes prefetch
    #   schedules no less than seven days after the end time. If you'd like
    #   to manually delete the prefetch schedule, you can call
    #   `DeletePrefetchSchedule`.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The time when prefetched ads are considered for use in an ad break.
    #   If you don't specify `StartTime`, the prefetched ads are available
    #   after MediaTailor retrives them from the ad decision server.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PrefetchConsumption AWS API Documentation
    #
    class PrefetchConsumption < Struct.new(
      :avail_matching_criteria,
      :end_time,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains settings governing when MediaTailor
    # prefetches ads, and which dynamic variables that MediaTailor includes
    # in the request to the ad decision server.
    #
    # @!attribute [rw] dynamic_variables
    #   The dynamic variables to use for substitution during prefetch
    #   requests to the ad decision server (ADS).
    #
    #   You initially configure [dynamic variables][1] for the ADS URL when
    #   you set up your playback configuration. When you specify
    #   `DynamicVariables` for prefetch retrieval, MediaTailor includes the
    #   dynamic variables in the request to the ADS.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/variables.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] end_time
    #   The time when prefetch retrieval ends for the ad break. Prefetching
    #   will be attempted for manifest requests that occur at or before this
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The time when prefetch retrievals can start for this break. Ad
    #   prefetching will be attempted for manifest requests that occur at or
    #   after this time. Defaults to the current time. If not specified, the
    #   prefetch retrieval starts as soon as possible.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PrefetchRetrieval AWS API Documentation
    #
    class PrefetchRetrieval < Struct.new(
      :dynamic_variables,
      :end_time,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A prefetch schedule allows you to tell MediaTailor to fetch and
    # prepare certain ads before an ad break happens. For more information
    # about ad prefetching, see [Using ad prefetching][1] in the
    # *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the prefetch schedule.
    #   @return [String]
    #
    # @!attribute [rw] consumption
    #   Consumption settings determine how, and when, MediaTailor places the
    #   prefetched ads into ad breaks. Ad consumption occurs within a span
    #   of time that you define, called a *consumption window*. You can
    #   designate which ad breaks that MediaTailor fills with prefetch ads
    #   by setting avail matching criteria.
    #   @return [Types::PrefetchConsumption]
    #
    # @!attribute [rw] name
    #   The name of the prefetch schedule. The name must be unique among all
    #   prefetch schedules that are associated with the specified playback
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] playback_configuration_name
    #   The name of the playback configuration to create the prefetch
    #   schedule for.
    #   @return [String]
    #
    # @!attribute [rw] retrieval
    #   A complex type that contains settings for prefetch retrieval from
    #   the ad decision server (ADS).
    #   @return [Types::PrefetchRetrieval]
    #
    # @!attribute [rw] stream_id
    #   An optional stream identifier that you can specify in order to
    #   prefetch for multiple streams that use the same playback
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PrefetchSchedule AWS API Documentation
    #
    class PrefetchSchedule < Struct.new(
      :arn,
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The channel name associated with this Channel Policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   Adds an IAM role that determines the permissions of your channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutChannelPolicyRequest AWS API Documentation
    #
    class PutChannelPolicyRequest < Struct.new(
      :channel_name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutChannelPolicyResponse AWS API Documentation
    #
    class PutChannelPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] ad_decision_server_url
    #   The URL for the ad decision server (ADS). This includes the
    #   specification of static parameters and placeholders for dynamic
    #   parameters. AWS Elemental MediaTailor substitutes player-specific
    #   and session-specific parameters as needed when calling the ADS.
    #   Alternately, for testing you can provide a static VAST URL. The
    #   maximum length is 25,000 characters.
    #   @return [String]
    #
    # @!attribute [rw] avail_suppression
    #   The configuration for avail suppression, also known as ad
    #   suppression. For more information about ad suppression, see [Ad
    #   Suppression][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html
    #   @return [Types::AvailSuppression]
    #
    # @!attribute [rw] bumper
    #   The configuration for bumpers. Bumpers are short audio or video
    #   clips that play at the start or before the end of an ad break. To
    #   learn more about bumpers, see [Bumpers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html
    #   @return [Types::Bumper]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] configuration_aliases
    #   The player parameters and aliases used as dynamic variables during
    #   session initialization. For more information, see [Domain
    #   Variables][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] dash_configuration
    #   The configuration for DASH content.
    #   @return [Types::DashConfigurationForPut]
    #
    # @!attribute [rw] live_pre_roll_configuration
    #   The configuration for pre-roll ad insertion.
    #   @return [Types::LivePreRollConfiguration]
    #
    # @!attribute [rw] manifest_processing_rules
    #   The configuration for manifest processing rules. Manifest processing
    #   rules enable customization of the personalized manifests created by
    #   MediaTailor.
    #   @return [Types::ManifestProcessingRules]
    #
    # @!attribute [rw] name
    #   The identifier for the playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] personalization_threshold_seconds
    #   Defines the maximum duration of underfilled ad time (in seconds)
    #   allowed in an ad break. If the duration of underfilled ad time
    #   exceeds the personalization threshold, then the personalization of
    #   the ad break is abandoned and the underlying content is shown. This
    #   feature applies to *ad replacement* in live and VOD streams, rather
    #   than ad insertion, because it relies on an underlying content
    #   stream. For more information about ad break behavior, including ad
    #   replacement and insertion, see [Ad Behavior in AWS Elemental
    #   MediaTailor][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html
    #   @return [Integer]
    #
    # @!attribute [rw] slate_ad_url
    #   The URL for a high-quality video asset to transcode and use to fill
    #   in time that's not used by ads. AWS Elemental MediaTailor shows the
    #   slate to fill in gaps in media content. Configuring the slate is
    #   optional for non-VPAID configurations. For VPAID, the slate is
    #   required because MediaTailor provides it in the slots that are
    #   designated for dynamic ad content. The slate must be a high-quality
    #   asset that contains both audio and video.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the playback configuration. Tags are key-value
    #   pairs that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more
    #   information, see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transcode_profile_name
    #   The name that is used to associate this playback configuration with
    #   a custom transcode profile. This overrides the dynamic transcoding
    #   defaults of MediaTailor. Use this only if you have already set up
    #   custom profiles with the help of AWS Support.
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   The URL prefix for the parent manifest for the stream, minus the
    #   asset ID. The maximum length is 512 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutPlaybackConfigurationRequest AWS API Documentation
    #
    class PutPlaybackConfigurationRequest < Struct.new(
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :live_pre_roll_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ad_decision_server_url
    #   The URL for the ad decision server (ADS). This includes the
    #   specification of static parameters and placeholders for dynamic
    #   parameters. AWS Elemental MediaTailor substitutes player-specific
    #   and session-specific parameters as needed when calling the ADS.
    #   Alternately, for testing you can provide a static VAST URL. The
    #   maximum length is 25,000 characters.
    #   @return [String]
    #
    # @!attribute [rw] avail_suppression
    #   The configuration for avail suppression, also known as ad
    #   suppression. For more information about ad suppression, see [Ad
    #   Suppression][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html
    #   @return [Types::AvailSuppression]
    #
    # @!attribute [rw] bumper
    #   The configuration for bumpers. Bumpers are short audio or video
    #   clips that play at the start or before the end of an ad break. To
    #   learn more about bumpers, see [Bumpers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html
    #   @return [Types::Bumper]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] configuration_aliases
    #   The player parameters and aliases used as dynamic variables during
    #   session initialization. For more information, see [Domain
    #   Variables][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] dash_configuration
    #   The configuration for DASH content.
    #   @return [Types::DashConfiguration]
    #
    # @!attribute [rw] hls_configuration
    #   The configuration for HLS content.
    #   @return [Types::HlsConfiguration]
    #
    # @!attribute [rw] live_pre_roll_configuration
    #   The configuration for pre-roll ad insertion.
    #   @return [Types::LivePreRollConfiguration]
    #
    # @!attribute [rw] log_configuration
    #   The Amazon CloudWatch log settings for a playback configuration.
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] manifest_processing_rules
    #   The configuration for manifest processing rules. Manifest processing
    #   rules enable customization of the personalized manifests created by
    #   MediaTailor.
    #   @return [Types::ManifestProcessingRules]
    #
    # @!attribute [rw] name
    #   The identifier for the playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] personalization_threshold_seconds
    #   Defines the maximum duration of underfilled ad time (in seconds)
    #   allowed in an ad break. If the duration of underfilled ad time
    #   exceeds the personalization threshold, then the personalization of
    #   the ad break is abandoned and the underlying content is shown. This
    #   feature applies to *ad replacement* in live and VOD streams, rather
    #   than ad insertion, because it relies on an underlying content
    #   stream. For more information about ad break behavior, including ad
    #   replacement and insertion, see [Ad Behavior in AWS Elemental
    #   MediaTailor][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html
    #   @return [Integer]
    #
    # @!attribute [rw] playback_configuration_arn
    #   The Amazon Resource Name (ARN) associated with the playback
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] playback_endpoint_prefix
    #   The playback endpoint prefix associated with the playback
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] session_initialization_endpoint_prefix
    #   The session initialization endpoint prefix associated with the
    #   playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] slate_ad_url
    #   The URL for a high-quality video asset to transcode and use to fill
    #   in time that's not used by ads. AWS Elemental MediaTailor shows the
    #   slate to fill in gaps in media content. Configuring the slate is
    #   optional for non-VPAID configurations. For VPAID, the slate is
    #   required because MediaTailor provides it in the slots that are
    #   designated for dynamic ad content. The slate must be a high-quality
    #   asset that contains both audio and video.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the playback configuration. Tags are key-value
    #   pairs that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more
    #   information, see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transcode_profile_name
    #   The name that is used to associate this playback configuration with
    #   a custom transcode profile. This overrides the dynamic transcoding
    #   defaults of MediaTailor. Use this only if you have already set up
    #   custom profiles with the help of AWS Support.
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   The URL prefix for the parent manifest for the stream, minus the
    #   asset ID. The maximum length is 512 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutPlaybackConfigurationResponse AWS API Documentation
    #
    class PutPlaybackConfigurationResponse < Struct.new(
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :hls_configuration,
      :live_pre_roll_configuration,
      :log_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration for this channel.
    #
    # @!attribute [rw] dash_playlist_settings
    #   DASH manifest configuration parameters.
    #   @return [Types::DashPlaylistSettings]
    #
    # @!attribute [rw] hls_playlist_settings
    #   HLS playlist configuration parameters.
    #   @return [Types::HlsPlaylistSettings]
    #
    # @!attribute [rw] manifest_name
    #   The name of the manifest for the channel. The name appears in the
    #   `PlaybackUrl`.
    #   @return [String]
    #
    # @!attribute [rw] source_group
    #   A string used to match which `HttpPackageConfiguration` is used for
    #   each `VodSource`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/RequestOutputItem AWS API Documentation
    #
    class RequestOutputItem < Struct.new(
      :dash_playlist_settings,
      :hls_playlist_settings,
      :manifest_name,
      :source_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output item response.
    #
    # @!attribute [rw] dash_playlist_settings
    #   DASH manifest configuration settings.
    #   @return [Types::DashPlaylistSettings]
    #
    # @!attribute [rw] hls_playlist_settings
    #   HLS manifest configuration settings.
    #   @return [Types::HlsPlaylistSettings]
    #
    # @!attribute [rw] manifest_name
    #   The name of the manifest for the channel that will appear in the
    #   channel output's playback URL.
    #   @return [String]
    #
    # @!attribute [rw] playback_url
    #   The URL used for playback by content players.
    #   @return [String]
    #
    # @!attribute [rw] source_group
    #   A string used to associate a package configuration source group with
    #   a channel output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ResponseOutputItem AWS API Documentation
    #
    class ResponseOutputItem < Struct.new(
      :dash_playlist_settings,
      :hls_playlist_settings,
      :manifest_name,
      :playback_url,
      :source_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The schedule's ad break properties.
    #
    # @!attribute [rw] approximate_duration_seconds
    #   The approximate duration of the ad break, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] approximate_start_time
    #   The approximate time that the ad will start playing.
    #   @return [Time]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location containing the VOD source used for
    #   the ad break.
    #   @return [String]
    #
    # @!attribute [rw] vod_source_name
    #   The name of the VOD source used for the ad break.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ScheduleAdBreak AWS API Documentation
    #
    class ScheduleAdBreak < Struct.new(
      :approximate_duration_seconds,
      :approximate_start_time,
      :source_location_name,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Schedule configuration parameters. A channel must be stopped before
    # changes can be made to the schedule.
    #
    # @!attribute [rw] clip_range
    #   Program clip range configuration.
    #   @return [Types::ClipRange]
    #
    # @!attribute [rw] transition
    #   Program transition configurations.
    #   @return [Types::Transition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ScheduleConfiguration AWS API Documentation
    #
    class ScheduleConfiguration < Struct.new(
      :clip_range,
      :transition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties for a schedule.
    #
    # @!attribute [rw] approximate_duration_seconds
    #   The approximate duration of this program, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] approximate_start_time
    #   The approximate time that the program will start playing.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The ARN of the program.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel that uses this schedule.
    #   @return [String]
    #
    # @!attribute [rw] live_source_name
    #   The name of the live source used for the program.
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   The name of the program.
    #   @return [String]
    #
    # @!attribute [rw] schedule_ad_breaks
    #   The schedule's ad break properties.
    #   @return [Array<Types::ScheduleAdBreak>]
    #
    # @!attribute [rw] schedule_entry_type
    #   The type of schedule entry.
    #   @return [String]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location.
    #   @return [String]
    #
    # @!attribute [rw] vod_source_name
    #   The name of the VOD source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ScheduleEntry AWS API Documentation
    #
    class ScheduleEntry < Struct.new(
      :approximate_duration_seconds,
      :approximate_start_time,
      :arn,
      :channel_name,
      :live_source_name,
      :program_name,
      :schedule_ad_breaks,
      :schedule_entry_type,
      :source_location_name,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Secrets Manager access token configuration parameters. For
    # information about Secrets Manager access token authentication, see
    # [Working with AWS Secrets Manager access token authentication][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-access-configuration-access-token.html
    #
    # @!attribute [rw] header_name
    #   The name of the HTTP header used to supply the access token in
    #   requests to the source location.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the AWS Secrets Manager secret
    #   that contains the access token.
    #   @return [String]
    #
    # @!attribute [rw] secret_string_key
    #   The AWS Secrets Manager [SecretString][1] key associated with the
    #   access token. MediaTailor uses the key to look up SecretString key
    #   and value pair containing the access token.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_CreateSecret.html#SecretsManager-CreateSecret-request-SecretString.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/SecretsManagerAccessTokenConfiguration AWS API Documentation
    #
    class SecretsManagerAccessTokenConfiguration < Struct.new(
      :header_name,
      :secret_arn,
      :secret_string_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The segment delivery configuration settings.
    #
    # @!attribute [rw] base_url
    #   The base URL of the host or path of the segment delivery server that
    #   you're using to serve segments. This is typically a content
    #   delivery network (CDN). The URL can be absolute or relative. To use
    #   an absolute URL include the protocol, such as
    #   `https://example.com/some/path`. To use a relative URL specify the
    #   relative path, such as `/some/path*`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A unique identifier used to distinguish between multiple segment
    #   delivery configurations in a source location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/SegmentDeliveryConfiguration AWS API Documentation
    #
    class SegmentDeliveryConfiguration < Struct.new(
      :base_url,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `segmentation_descriptor` message can contain advanced metadata
    # fields, like content identifiers, to convey a wide range of
    # information about the ad break. MediaTailor writes the ad metadata in
    # the egress manifest as part of the `EXT-X-DATERANGE` or `EventStream`
    # ad marker's SCTE-35 data.
    #
    # `segmentation_descriptor` messages must be sent with the `time_signal`
    # message type.
    #
    # See the `segmentation_descriptor()` table of the 2022 SCTE-35
    # specification for more information.
    #
    # @!attribute [rw] segment_num
    #   The segment number to assign to the
    #   `segmentation_descriptor.segment_num` message, as defined in section
    #   10.3.3.1 of the 2022 SCTE-35 specification Values must be between 0
    #   and 256, inclusive. The default value is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] segmentation_event_id
    #   The Event Identifier to assign to the
    #   `segmentation_descriptor.segmentation_event_id` message, as defined
    #   in section 10.3.3.1 of the 2022 SCTE-35 specification. The default
    #   value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] segmentation_type_id
    #   The Type Identifier to assign to the
    #   `segmentation_descriptor.segmentation_type_id` message, as defined
    #   in section 10.3.3.1 of the 2022 SCTE-35 specification. Values must
    #   be between 0 and 256, inclusive. The default value is 48.
    #   @return [Integer]
    #
    # @!attribute [rw] segmentation_upid
    #   The Upid to assign to the
    #   `segmentation_descriptor.segmentation_upid` message, as defined in
    #   section 10.3.3.1 of the 2022 SCTE-35 specification. The value must
    #   be a hexadecimal string containing only the characters 0 though 9
    #   and A through F. The default value is "" (an empty string).
    #   @return [String]
    #
    # @!attribute [rw] segmentation_upid_type
    #   The Upid Type to assign to the
    #   `segmentation_descriptor.segmentation_upid_type` message, as defined
    #   in section 10.3.3.1 of the 2022 SCTE-35 specification. Values must
    #   be between 0 and 256, inclusive. The default value is 14.
    #   @return [Integer]
    #
    # @!attribute [rw] segments_expected
    #   The number of segments expected, which is assigned to the
    #   `segmentation_descriptor.segments_expectedS` message, as defined in
    #   section 10.3.3.1 of the 2022 SCTE-35 specification Values must be
    #   between 0 and 256, inclusive. The default value is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] sub_segment_num
    #   The sub-segment number to assign to the
    #   `segmentation_descriptor.sub_segment_num` message, as defined in
    #   section 10.3.3.1 of the 2022 SCTE-35 specification. Values must be
    #   between 0 and 256, inclusive. The defualt value is null.
    #   @return [Integer]
    #
    # @!attribute [rw] sub_segments_expected
    #   The number of sub-segments expected, which is assigned to the
    #   `segmentation_descriptor.sub_segments_expected` message, as defined
    #   in section 10.3.3.1 of the 2022 SCTE-35 specification. Values must
    #   be between 0 and 256, inclusive. The default value is null.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/SegmentationDescriptor AWS API Documentation
    #
    class SegmentationDescriptor < Struct.new(
      :segment_num,
      :segmentation_event_id,
      :segmentation_type_id,
      :segmentation_upid,
      :segmentation_upid_type,
      :segments_expected,
      :sub_segment_num,
      :sub_segments_expected)
      SENSITIVE = []
      include Aws::Structure
    end

    # Slate VOD source configuration.
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location where the slate VOD source is
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] vod_source_name
    #   The slate VOD source name. The VOD source must already exist in a
    #   source location before it can be used for slate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/SlateSource AWS API Documentation
    #
    class SlateSource < Struct.new(
      :source_location_name,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A source location is a container for sources. For more information
    # about source locations, see [Working with source locations][1] in the
    # *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html
    #
    # @!attribute [rw] access_configuration
    #   The access configuration for the source location.
    #   @return [Types::AccessConfiguration]
    #
    # @!attribute [rw] arn
    #   The ARN of the SourceLocation.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp that indicates when the source location was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_segment_delivery_configuration
    #   The default segment delivery configuration.
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute [rw] http_configuration
    #   The HTTP configuration for the source location.
    #   @return [Types::HttpConfiguration]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp that indicates when the source location was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] segment_delivery_configurations
    #   The segment delivery configurations for the source location.
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the source location. Tags are key-value pairs
    #   that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more
    #   information, see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/SourceLocation AWS API Documentation
    #
    class SourceLocation < Struct.new(
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Splice insert message configuration.
    #
    # @!attribute [rw] avail_num
    #   This is written to `splice_insert.avail_num`, as defined in section
    #   9.7.3.1 of the SCTE-35 specification. The default value is `0`.
    #   Values must be between `0` and `256`, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] avails_expected
    #   This is written to `splice_insert.avails_expected`, as defined in
    #   section 9.7.3.1 of the SCTE-35 specification. The default value is
    #   `0`. Values must be between `0` and `256`, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] splice_event_id
    #   This is written to `splice_insert.splice_event_id`, as defined in
    #   section 9.7.3.1 of the SCTE-35 specification. The default value is
    #   `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] unique_program_id
    #   This is written to `splice_insert.unique_program_id`, as defined in
    #   section 9.7.3.1 of the SCTE-35 specification. The default value is
    #   `0`. Values must be between `0` and `256`, inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/SpliceInsertMessage AWS API Documentation
    #
    class SpliceInsertMessage < Struct.new(
      :avail_num,
      :avails_expected,
      :splice_event_id,
      :unique_program_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/StartChannelRequest AWS API Documentation
    #
    class StartChannelRequest < Struct.new(
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/StartChannelResponse AWS API Documentation
    #
    class StartChannelResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/StopChannelRequest AWS API Documentation
    #
    class StopChannelRequest < Struct.new(
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/StopChannelResponse AWS API Documentation
    #
    class StopChannelResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the resource. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SCTE-35 `time_signal` message can be sent with one or more
    # `segmentation_descriptor` messages. A `time_signal` message can be
    # sent only if a single `segmentation_descriptor` message is sent.
    #
    # The `time_signal` message contains only the `splice_time` field which
    # is constructed using a given presentation timestamp. When sending a
    # `time_signal` message, the `splice_command_type` field in the
    # `splice_info_section` message is set to 6 (0x06).
    #
    # See the `time_signal()` table of the 2022 SCTE-35 specification for
    # more information.
    #
    # @!attribute [rw] segmentation_descriptors
    #   The configurations for the SCTE-35 `segmentation_descriptor`
    #   message(s) sent with the `time_signal` message.
    #   @return [Array<Types::SegmentationDescriptor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/TimeSignalMessage AWS API Documentation
    #
    class TimeSignalMessage < Struct.new(
      :segmentation_descriptors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Program transition configuration.
    #
    # @!attribute [rw] duration_millis
    #   The duration of the live program in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] relative_position
    #   The position where this program will be inserted relative to the
    #   `RelativePosition`.
    #   @return [String]
    #
    # @!attribute [rw] relative_program
    #   The name of the program that this program will be inserted next to,
    #   as defined by `RelativePosition`.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start_time_millis
    #   The date and time that the program is scheduled to start, in epoch
    #   milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   Defines when the program plays in the schedule. You can set the
    #   value to `ABSOLUTE` or `RELATIVE`.
    #
    #   `ABSOLUTE` - The program plays at a specific wall clock time. This
    #   setting can only be used for channels using the `LINEAR`
    #   `PlaybackMode`.
    #
    #   Note the following considerations when using `ABSOLUTE` transitions:
    #
    #   If the preceding program in the schedule has a duration that extends
    #   past the wall clock time, MediaTailor truncates the preceding
    #   program on a common segment boundary.
    #
    #   If there are gaps in playback, MediaTailor plays the `FillerSlate`
    #   you configured for your linear channel.
    #
    #   `RELATIVE` - The program is inserted into the schedule either before
    #   or after a program that you specify via `RelativePosition`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/Transition AWS API Documentation
    #
    class Transition < Struct.new(
      :duration_millis,
      :relative_position,
      :relative_program,
      :scheduled_start_time_millis,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys associated with the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] filler_slate
    #   The slate used to fill gaps between programs in the schedule. You
    #   must configure filler slate if your channel uses the `LINEAR`
    #   `PlaybackMode`. MediaTailor doesn't support filler slate for
    #   channels using the `LOOP` `PlaybackMode`.
    #   @return [Types::SlateSource]
    #
    # @!attribute [rw] outputs
    #   The channel's output properties.
    #   @return [Array<Types::RequestOutputItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateChannelRequest AWS API Documentation
    #
    class UpdateChannelRequest < Struct.new(
      :channel_name,
      :filler_slate,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_state
    #   Returns the state whether the channel is running or not.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp of when the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] filler_slate
    #   The slate used to fill gaps between programs in the schedule. You
    #   must configure filler slate if your channel uses the `LINEAR`
    #   `PlaybackMode`. MediaTailor doesn't support filler slate for
    #   channels using the `LOOP` `PlaybackMode`.
    #   @return [Types::SlateSource]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp that indicates when the channel was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] outputs
    #   The channel's output properties.
    #   @return [Array<Types::ResponseOutputItem>]
    #
    # @!attribute [rw] playback_mode
    #   The type of playback mode for this channel.
    #
    #   `LINEAR` - Programs play back-to-back only once.
    #
    #   `LOOP` - Programs play back-to-back in an endless loop. When the
    #   last program in the schedule plays, playback loops back to the first
    #   program in the schedule.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the channel. Tags are key-value pairs that you
    #   can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tier
    #   The tier associated with this Channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateChannelResponse AWS API Documentation
    #
    class UpdateChannelResponse < Struct.new(
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :outputs,
      :playback_mode,
      :tags,
      :tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] http_package_configurations
    #   A list of HTTP package configurations for the live source on this
    #   account.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] live_source_name
    #   The name of the live source.
    #   @return [String]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location associated with this Live Source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateLiveSourceRequest AWS API Documentation
    #
    class UpdateLiveSourceRequest < Struct.new(
      :http_package_configurations,
      :live_source_name,
      :source_location_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with this live source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp that indicates when the live source was created.
    #   @return [Time]
    #
    # @!attribute [rw] http_package_configurations
    #   A list of HTTP package configurations for the live source on this
    #   account.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp that indicates when the live source was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] live_source_name
    #   The name of the live source.
    #   @return [String]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location associated with the live source.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the live source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateLiveSourceResponse AWS API Documentation
    #
    class UpdateLiveSourceResponse < Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ad_breaks
    #   The ad break configuration settings.
    #   @return [Array<Types::AdBreak>]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel for this Program.
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   The name of the Program.
    #   @return [String]
    #
    # @!attribute [rw] schedule_configuration
    #   The schedule configuration settings.
    #   @return [Types::UpdateProgramScheduleConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateProgramRequest AWS API Documentation
    #
    class UpdateProgramRequest < Struct.new(
      :ad_breaks,
      :channel_name,
      :program_name,
      :schedule_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ad_breaks
    #   The ad break configuration settings.
    #   @return [Array<Types::AdBreak>]
    #
    # @!attribute [rw] arn
    #   The ARN to assign to the program.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name to assign to the channel for this program.
    #   @return [String]
    #
    # @!attribute [rw] clip_range
    #   The clip range configuration settings.
    #   @return [Types::ClipRange]
    #
    # @!attribute [rw] creation_time
    #   The time the program was created.
    #   @return [Time]
    #
    # @!attribute [rw] duration_millis
    #   The duration of the live program in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] live_source_name
    #   The name of the LiveSource for this Program.
    #   @return [String]
    #
    # @!attribute [rw] program_name
    #   The name to assign to this program.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start_time
    #   The scheduled start time for this Program.
    #   @return [Time]
    #
    # @!attribute [rw] source_location_name
    #   The name to assign to the source location for this program.
    #   @return [String]
    #
    # @!attribute [rw] vod_source_name
    #   The name that's used to refer to a VOD source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateProgramResponse AWS API Documentation
    #
    class UpdateProgramResponse < Struct.new(
      :ad_breaks,
      :arn,
      :channel_name,
      :clip_range,
      :creation_time,
      :duration_millis,
      :live_source_name,
      :program_name,
      :scheduled_start_time,
      :source_location_name,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Schedule configuration parameters.
    #
    # @!attribute [rw] clip_range
    #   Program clip range configuration.
    #   @return [Types::ClipRange]
    #
    # @!attribute [rw] transition
    #   Program transition configuration.
    #   @return [Types::UpdateProgramTransition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateProgramScheduleConfiguration AWS API Documentation
    #
    class UpdateProgramScheduleConfiguration < Struct.new(
      :clip_range,
      :transition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Program transition configuration.
    #
    # @!attribute [rw] duration_millis
    #   The duration of the live program in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] scheduled_start_time_millis
    #   The date and time that the program is scheduled to start, in epoch
    #   milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateProgramTransition AWS API Documentation
    #
    class UpdateProgramTransition < Struct.new(
      :duration_millis,
      :scheduled_start_time_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_configuration
    #   Access configuration parameters. Configures the type of
    #   authentication used to access content from your source location.
    #   @return [Types::AccessConfiguration]
    #
    # @!attribute [rw] default_segment_delivery_configuration
    #   The optional configuration for the host server that serves segments.
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute [rw] http_configuration
    #   The HTTP configuration for the source location.
    #   @return [Types::HttpConfiguration]
    #
    # @!attribute [rw] segment_delivery_configurations
    #   A list of the segment delivery configurations associated with this
    #   resource.
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateSourceLocationRequest AWS API Documentation
    #
    class UpdateSourceLocationRequest < Struct.new(
      :access_configuration,
      :default_segment_delivery_configuration,
      :http_configuration,
      :segment_delivery_configurations,
      :source_location_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_configuration
    #   Access configuration parameters. Configures the type of
    #   authentication used to access content from your source location.
    #   @return [Types::AccessConfiguration]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the source location.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp that indicates when the source location was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_segment_delivery_configuration
    #   The optional configuration for the host server that serves segments.
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute [rw] http_configuration
    #   The HTTP configuration for the source location.
    #   @return [Types::HttpConfiguration]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp that indicates when the source location was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] segment_delivery_configurations
    #   The segment delivery configurations for the source location. For
    #   information about MediaTailor configurations, see [Working with
    #   configurations in AWS Elemental MediaTailor][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the source location. Tags are key-value pairs
    #   that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more
    #   information, see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateSourceLocationResponse AWS API Documentation
    #
    class UpdateSourceLocationResponse < Struct.new(
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] http_package_configurations
    #   A list of HTTP package configurations for the VOD source on this
    #   account.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location associated with this VOD Source.
    #   @return [String]
    #
    # @!attribute [rw] vod_source_name
    #   The name of the VOD source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateVodSourceRequest AWS API Documentation
    #
    class UpdateVodSourceRequest < Struct.new(
      :http_package_configurations,
      :source_location_name,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the VOD source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp that indicates when the VOD source was created.
    #   @return [Time]
    #
    # @!attribute [rw] http_package_configurations
    #   A list of HTTP package configurations for the VOD source on this
    #   account.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp that indicates when the VOD source was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location associated with the VOD source.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the VOD source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vod_source_name
    #   The name of the VOD source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateVodSourceResponse AWS API Documentation
    #
    class UpdateVodSourceResponse < Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # VOD source configuration parameters.
    #
    # @!attribute [rw] arn
    #   The ARN for the VOD source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp that indicates when the VOD source was created.
    #   @return [Time]
    #
    # @!attribute [rw] http_package_configurations
    #   The HTTP package configurations for the VOD source.
    #   @return [Array<Types::HttpPackageConfiguration>]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp that indicates when the VOD source was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] source_location_name
    #   The name of the source location that the VOD source is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the VOD source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see
    #   [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vod_source_name
    #   The name of the VOD source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/VodSource AWS API Documentation
    #
    class VodSource < Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
