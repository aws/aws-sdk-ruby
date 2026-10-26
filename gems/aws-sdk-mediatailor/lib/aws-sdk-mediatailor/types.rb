# frozen_string_literal: true

# This is generated code!

module Aws::MediaTailor
  # This module contains the types returned by client operations.
  module Types

    # <p>Access configuration parameters.</p>
    # @!attribute access_type
    #   <p>The type of authentication used to access content from <code>HttpConfiguration::BaseUrl</code> on your source location.</p> <p> <code>S3_SIGV4</code> - AWS Signature Version 4 authentication for Amazon S3 hosted virtual-style access. If your source location base URL is an Amazon S3 bucket, MediaTailor can use AWS Signature Version 4 (SigV4) authentication to access the bucket where your source content is stored. Your MediaTailor source location baseURL must follow the S3 virtual hosted-style request URL format. For example, https://bucket-name.s3.Region.amazonaws.com/key-name.</p> <p>Before you can use <code>S3_SIGV4</code>, you must meet these requirements:</p> <p>• You must allow MediaTailor to access your S3 bucket by granting mediatailor.amazonaws.com principal access in IAM. For information about configuring access in IAM, see Access management in the IAM User Guide.</p> <p>• The mediatailor.amazonaws.com service principal must have permissions to read all top level manifests referenced by the VodSource packaging configurations.</p> <p>• The caller of the API must have s3:GetObject IAM permissions to read all top level manifests referenced by your MediaTailor VodSource packaging configurations.</p> <p> <code>AUTODETECT_SIGV4</code> - AWS Signature Version 4 authentication for a set of supported services: MediaPackage Version 2 and Amazon S3 hosted virtual-style access. If your source location base URL is a MediaPackage Version 2 endpoint or an Amazon S3 bucket, MediaTailor can use AWS Signature Version 4 (SigV4) authentication to access the resource where your source content is stored.</p> <p>Before you can use <code>AUTODETECT_SIGV4</code> with a MediaPackage Version 2 endpoint, you must meet these requirements:</p> <p>• You must grant MediaTailor access to your MediaPackage endpoint by granting <code>mediatailor.amazonaws.com</code> principal access in an Origin Access policy on the endpoint.</p> <p>• Your MediaTailor source location base URL must be a MediaPackage V2 endpoint.</p> <p>• The caller of the API must have <code>mediapackagev2:GetObject</code> IAM permissions to read all top level manifests referenced by the MediaTailor source packaging configurations.</p> <p>Before you can use <code>AUTODETECT_SIGV4</code> with an Amazon S3 bucket, you must meet these requirements:</p> <p>• You must grant MediaTailor access to your S3 bucket by granting <code>mediatailor.amazonaws.com</code> principal access in IAM. For more information about configuring access in IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access management</a> in the <i>IAM User Guide.</i>.</p> <p>• The <code>mediatailor.amazonaws.com</code> service principal must have permissions to read all top-level manifests referenced by the <code>VodSource</code> packaging configurations.</p> <p>• The caller of the API must have <code>s3:GetObject</code> IAM permissions to read all top level manifests referenced by your MediaTailor <code>VodSource</code> packaging configurations.</p>
    #   @return [String]
    # @!attribute secrets_manager_access_token_configuration
    #   <p>AWS Secrets Manager access token configuration parameters.</p>
    #   @return [Types::SecretsManagerAccessTokenConfiguration]
    class AccessConfiguration < Struct.new(
      nil,
      :access_type,
      :secrets_manager_access_token_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Ad break configuration parameters.</p>
    # @!attribute message_type
    #   <p>The SCTE-35 ad insertion type. Accepted value: <code>SPLICE_INSERT</code>, <code>TIME_SIGNAL</code>.</p>
    #   @return [String]
    # @!attribute offset_millis
    #   <p>How long (in milliseconds) after the beginning of the program that an ad starts. This value must fall within 100ms of a segment boundary, otherwise the ad break will be skipped.</p>
    #   @return [Integer]
    # @!attribute slate
    #   <p>Ad break slate configuration.</p>
    #   @return [Types::SlateSource]
    # @!attribute splice_insert_message
    #   <p>This defines the SCTE-35 <code>splice_insert()</code> message inserted around the ad. For information about using <code>splice_insert()</code>, see the SCTE-35 specficiaiton, section 9.7.3.1.</p>
    #   @return [Types::SpliceInsertMessage]
    # @!attribute time_signal_message
    #   <p>Defines the SCTE-35 <code>time_signal</code> message inserted around the ad.</p> <p>Programs on a channel's schedule can be configured with one or more ad breaks. You can attach a <code>splice_insert</code> SCTE-35 message to the ad break. This message provides basic metadata about the ad break.</p> <p>See section 9.7.4 of the 2022 SCTE-35 specification for more information.</p>
    #   @return [Types::TimeSignalMessage]
    # @!attribute ad_break_metadata
    #   <p>Defines a list of key/value pairs that MediaTailor generates within the <code>EXT-X-ASSET</code>tag for <code>SCTE35_ENHANCED</code> output.</p>
    #   @return [Array<Types::KeyValuePair>]
    class AdBreak < Struct.new(
      nil,
      :message_type,
      :offset_millis,
      :slate,
      :splice_insert_message,
      :time_signal_message,
      :ad_break_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:offset_millis] = 0 unless options.key?(:offset_millis)
        super
      end
    end

    # <p>A location at which a zero-duration ad marker was detected in a VOD source manifest.</p>
    # @!attribute offset_millis
    #   <p>The offset in milliseconds from the start of the VOD source at which an ad marker was detected.</p>
    #   @return [Integer]
    class AdBreakOpportunity < Struct.new(
      nil,
      :offset_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:offset_millis] = 0 unless options.key?(:offset_millis)
        super
      end
    end

    # <p>The setting that indicates what conditioning MediaTailor will perform on ads that the ad decision server (ADS) returns.</p>
    # @!attribute streaming_media_file_conditioning
    #   <p>For ads that have media files with streaming delivery and supported file extensions, indicates what transcoding action MediaTailor takes when it first receives these ads from the ADS. <code>TRANSCODE</code> indicates that MediaTailor must transcode the ads. <code>NONE</code> indicates that you have already transcoded the ads outside of MediaTailor and don't need them transcoded as part of the ad insertion workflow. For more information about ad conditioning see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/precondition-ads.html">Using preconditioned ads</a> in the Elemental MediaTailor user guide.</p>
    #   @return [String]
    class AdConditioningConfiguration < Struct.new(
      nil,
      :streaming_media_file_conditioning,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration parameters for customizing HTTP requests sent to the ad decision server (ADS). This allows you to specify the HTTP method, headers, request body, and compression settings for ADS requests.</p>
    # @!attribute http_request
    #   <p>The HTTP request configuration parameters for the ad decision server.</p>
    #   @return [Types::HttpRequest]
    # @!attribute vast_response
    #   <p>The settings that control how MediaTailor processes VAST responses from the ad decision server.</p>
    #   @return [Types::VastResponse]
    class AdDecisionServerConfiguration < Struct.new(
      nil,
      :http_request,
      :vast_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For HLS, when set to <code>true</code>, MediaTailor passes through <code>EXT-X-CUE-IN</code>, <code>EXT-X-CUE-OUT</code>, and <code>EXT-X-SPLICEPOINT-SCTE35</code> ad markers from the origin manifest to the MediaTailor personalized manifest.</p> <p>No logic is applied to these ad markers. For example, if <code>EXT-X-CUE-OUT</code> has a value of <code>60</code>, but no ads are filled for that ad break, MediaTailor will not set the value to <code>0</code>.</p>
    # @!attribute enabled
    #   <p>Enables ad marker passthrough for your configuration.</p>
    #   @return [Boolean]
    class AdMarkerPassthrough < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Settings for customizing what events are included in logs for interactions with the ad decision server (ADS).</p> <p>For more information about ADS logs, inlcuding descriptions of the event types, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ads-log-format.html">MediaTailor ADS logs description and event types</a> in Elemental MediaTailor User Guide.</p>
    # @!attribute publish_opt_in_event_types
    #   <p>Indicates that MediaTailor will emit the selected events in the logs for playback sessions that are initialized with this configuration. These events are not emitted by default and must be explicitly opted in. For descriptions of each event type, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ads-log-format.html">MediaTailor ADS logs description and event types</a> in Elemental MediaTailor User Guide.</p>
    #   @return [Array<String>]
    # @!attribute exclude_event_types
    #   <p>Indicates that MediaTailor won't emit the selected events in the logs for playback sessions that are initialized with this configuration.</p>
    #   @return [Array<String>]
    class AdsInteractionLog < Struct.new(
      nil,
      :publish_opt_in_event_types,
      :exclude_event_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The concurrency settings for ad decision server interactions during ad personalization.</p>
    # @!attribute max_concurrent_ads_requests
    #   <p>The maximum number of simultaneous requests that MediaTailor makes to the ad decision server per manifest request. The default is 1.</p>
    #   @return [Integer]
    # @!attribute enable_vod_vast_parallelization
    #   <p>Enables parallel processing of ad decision server requests in VOD workflows when the ADS returns VAST responses. The default is false.</p>
    #   @return [Boolean]
    class AdsPersonalizationConcurrency < Struct.new(
      nil,
      :max_concurrent_ads_requests,
      :enable_vod_vast_parallelization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The timeout settings for ad decision server interactions during ad personalization.</p>
    # @!attribute ads_request_timeout_milliseconds
    #   <p>The maximum time, in milliseconds, that MediaTailor waits for a single ad decision server response during live or VOD playback. The default is 3000.</p>
    #   @return [Integer]
    # @!attribute live_maximum_ads_personalization_time_milliseconds
    #   <p>The maximum total time, in milliseconds, that MediaTailor spends on ad decision server activity for live manifests, including making requests, waiting for responses, and following VAST wrapper redirects. The default is 10000.</p>
    #   @return [Integer]
    # @!attribute vod_maximum_ads_personalization_time_milliseconds
    #   <p>The maximum total time, in milliseconds, that MediaTailor spends on ad decision server activity for VOD manifests, including making requests, waiting for responses, and following VAST wrapper redirects. The default is 10000.</p>
    #   @return [Integer]
    # @!attribute prefetch_ads_request_timeout_milliseconds
    #   <p>The maximum time, in milliseconds, that MediaTailor waits for a single ad decision server response during prefetch retrieval. If not set, the value of AdsRequestTimeoutMilliseconds is used.</p>
    #   @return [Integer]
    # @!attribute prefetch_maximum_ads_personalization_time_milliseconds
    #   <p>The maximum total time, in milliseconds, that MediaTailor spends on ad decision server activity during prefetch retrieval, including making requests, waiting for responses, and following VAST wrapper redirects.</p>
    #   @return [Integer]
    class AdsPersonalizationTimeouts < Struct.new(
      nil,
      :ads_request_timeout_milliseconds,
      :live_maximum_ads_personalization_time_milliseconds,
      :vod_maximum_ads_personalization_time_milliseconds,
      :prefetch_ads_request_timeout_milliseconds,
      :prefetch_maximum_ads_personalization_time_milliseconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Alert configuration parameters.</p>
    # @!attribute alert_code
    #   <p>The code for the alert. For example, <code>NOT_PROCESSED</code>.</p>
    #   @return [String]
    # @!attribute alert_message
    #   <p>If an alert is generated for a resource, an explanation of the reason for the alert.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when the alert was last modified.</p>
    #   @return [Time]
    # @!attribute related_resource_arns
    #   <p>The Amazon Resource Names (ARNs) related to this alert.</p>
    #   @return [Array<String>]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category that MediaTailor assigns to the alert.</p>
    #   @return [String]
    class Alert < Struct.new(
      nil,
      :alert_code,
      :alert_message,
      :last_modified_time,
      :related_resource_arns,
      :resource_arn,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A playlist of media (VOD and/or live) to be played instead of the default media on a particular program.</p>
    # @!attribute source_location_name
    #   <p>The name of the source location for alternateMedia.</p>
    #   @return [String]
    # @!attribute live_source_name
    #   <p>The name of the live source for alternateMedia.</p>
    #   @return [String]
    # @!attribute vod_source_name
    #   <p>The name of the VOD source for alternateMedia.</p>
    #   @return [String]
    # @!attribute clip_range
    #   <p>Clip range configuration for the VOD source associated with the program.</p>
    #   @return [Types::ClipRange]
    # @!attribute scheduled_start_time_millis
    #   <p>The date and time that the alternateMedia is scheduled to start, in epoch milliseconds.</p>
    #   @return [Integer]
    # @!attribute ad_breaks
    #   <p>Ad break configuration parameters defined in AlternateMedia.</p>
    #   @return [Array<Types::AdBreak>]
    # @!attribute duration_millis
    #   <p>The duration of the alternateMedia in milliseconds.</p>
    #   @return [Integer]
    class AlternateMedia < Struct.new(
      nil,
      :source_location_name,
      :live_source_name,
      :vod_source_name,
      :clip_range,
      :scheduled_start_time_millis,
      :ad_breaks,
      :duration_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An AudienceMedia object contains an Audience and a list of AlternateMedia.</p>
    # @!attribute audience
    #   <p>The Audience defined in AudienceMedia.</p>
    #   @return [String]
    # @!attribute alternate_media
    #   <p>The list of AlternateMedia defined in AudienceMedia.</p>
    #   @return [Array<Types::AlternateMedia>]
    class AudienceMedia < Struct.new(
      nil,
      :audience,
      :alternate_media,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>MediaTailor only places (consumes) prefetched ads if the ad break meets the criteria defined by the dynamic variables. This gives you granular control over which ad break to place the prefetched ads into.</p> <p>As an example, let's say that you set <code>DynamicVariable</code> to <code>scte.event_id</code> and <code>Operator</code> to <code>EQUALS</code>, and your playback configuration has an ADS URL of <code>https://my.ads.server.com/path?&amp;podId=[scte.avail_num]&amp;event=[scte.event_id]&amp;duration=[session.avail_duration_secs]</code>. And the prefetch request to the ADS contains these values <code>https://my.ads.server.com/path?&amp;podId=3&amp;event=my-awesome-event&amp;duration=30</code>. MediaTailor will only insert the prefetched ads into the ad break if has a SCTE marker with an event id of <code>my-awesome-event</code>, since it must match the event id that MediaTailor uses to query the ADS.</p> <p>You can specify up to five <code>AvailMatchingCriteria</code>. If you specify multiple <code>AvailMatchingCriteria</code>, MediaTailor combines them to match using a logical <code>AND</code>. You can model logical <code>OR</code> combinations by creating multiple prefetch schedules.</p>
    # @!attribute dynamic_variable
    #   <p>The dynamic variable(s) that MediaTailor should use as avail matching criteria. MediaTailor only places the prefetched ads into the avail if the avail matches the criteria defined by the dynamic variable. For information about dynamic variables, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables.html">Using dynamic ad variables</a> in the <i>MediaTailor User Guide</i>.</p> <p>You can include up to 100 dynamic variables.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>For the <code>DynamicVariable</code> specified in <code>AvailMatchingCriteria</code>, the Operator that is used for the comparison.</p>
    #   @return [String]
    class AvailMatchingCriteria < Struct.new(
      nil,
      :dynamic_variable,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    # @!attribute mode
    #   <p>Sets the ad suppression mode. By default, ad suppression is off and all ad breaks are filled with ads or slate. When Mode is set to <code>BEHIND_LIVE_EDGE</code>, ad suppression is active and MediaTailor won't fill ad breaks on or behind the ad suppression Value time in the manifest lookback window. When Mode is set to <code>AFTER_LIVE_EDGE</code>, ad suppression is active and MediaTailor won't fill ad breaks that are within the live edge plus the avail suppression value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A live edge offset time in HH:MM:SS. MediaTailor won't fill ad breaks on or behind this time in the manifest lookback window. If Value is set to 00:00:00, it is in sync with the live edge, and MediaTailor won't fill any ad breaks on or behind the live edge. If you set a Value time, MediaTailor won't fill any ad breaks on or behind this time in the manifest lookback window. For example, if you set 00:45:00, then MediaTailor will fill ad breaks that occur within 45 minutes behind the live edge, but won't fill ad breaks on or behind 45 minutes behind the live edge.</p>
    #   @return [String]
    # @!attribute fill_policy
    #   <p>Defines the policy to apply to the avail suppression mode. <code>BEHIND_LIVE_EDGE</code> will always use the full avail suppression policy. <code>AFTER_LIVE_EDGE</code> mode can be used to invoke partial ad break fills when a session starts mid-break.</p>
    #   @return [String]
    class AvailSuppression < Struct.new(
      nil,
      :mode,
      :value,
      :fill_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an <code>AWS_SERVICE_REQUEST</code> function. Contains the target service, target Region, and request parameters that the function uses to call an AWS service API. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-types-aws-service-request.html">AWS_SERVICE_REQUEST</a> in the <i>MediaTailor User Guide</i>.</p>
    # @!attribute runtime
    #   <p>The expression language used to evaluate expressions in the function configuration. The only supported value is <code>JSONata</code>.</p>
    #   @return [String]
    # @!attribute output
    #   <p>A map of output bindings. Each key is a namespaced output path, such as <code>player_params.device_type</code>. Each value is an expression that MediaTailor evaluates at runtime and can reference the <code>response</code> object from the target service. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-jsonata.html">JSONata expression reference</a> in the <i>MediaTailor User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute method_type
    #   <p>Specifies how the function sends the request to the target service. The value must match what the target service operation requires. Valid values:</p> <ul> <li> <p> <code>GET</code> – Retrieves data from the target service.</p> </li> <li> <p> <code>POST</code> – Submits a request body to the target service.</p> </li> </ul>
    #   @return [String]
    # @!attribute request_timeout_milliseconds
    #   <p>The maximum time, in milliseconds, that MediaTailor waits for a response from the AWS service. If the call exceeds this timeout, MediaTailor sets the response status code to <code>null</code> and proceeds with output expression evaluation. Valid values: <code>100</code> to <code>2000</code>.</p>
    #   @return [Integer]
    # @!attribute url
    #   <p>An expression that evaluates to the endpoint URL for the target AWS service API operation. Use <code>{%...%}</code> delimiters for dynamic expressions. The URL must correspond to a valid endpoint for the service specified in <code>TargetService</code>. The maximum length after evaluation is 2,048 characters.</p>
    #   @return [String]
    # @!attribute body
    #   <p>An expression that evaluates to the request body for the AWS service API call. The body must conform to the input format that the target service operation expects. Applies only when the target operation accepts a request body. The maximum size after evaluation is 64 KB.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>A map of HTTP header names to expression values. MediaTailor evaluates each header value expression at runtime and includes the result in the outbound request to the AWS service. Use this to pass any headers required by the target service operation. You can include a maximum of 50 headers.</p>
    #   @return [Hash<String, String>]
    # @!attribute cache
    #   <p>The optional response-caching configuration for the function. When present, MediaTailor caches the responses that the function receives from the AWS service, within the time-to-live (TTL) bounds that you specify. Omit this configuration to disable response caching.</p>
    #   @return [Types::HttpRequestCacheConfiguration]
    # @!attribute target_service
    #   <p>The AWS service to call. Valid value: <code>elemental-inference</code> (AWS Elemental Inference).</p>
    #   @return [String]
    # @!attribute target_region
    #   <p>The AWS Region for the target service. Specify a static Region code (for example, <code>us-east-1</code>) or a JSONata expression that resolves to a Region code at runtime (for example, <code>{%inference.region%}</code>).</p>
    #   @return [String]
    class AwsServiceRequestConfiguration < Struct.new(
      nil,
      :runtime,
      :output,
      :method_type,
      :request_timeout_milliseconds,
      :url,
      :body,
      :headers,
      :cache,
      :target_service,
      :target_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request contains unexpected data.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The beaconing configuration for a playback configuration. Beaconing controls whether MediaTailor includes its own beacons in the ad tracking response, in addition to the ad server beacons.</p>
    # @!attribute client_side
    #   <p>The beaconing settings for client-side reporting sessions. If you omit this object, MediaTailor uses <code>INSIGHTS</code> reporting mode.</p>
    #   @return [Types::ClientSideBeaconingConfiguration]
    class BeaconingConfiguration < Struct.new(
      nil,
      :client_side,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    # @!attribute end_url
    #   <p>The URL for the end bumper asset.</p>
    #   @return [String]
    # @!attribute start_url
    #   <p>The URL for the start bumper asset.</p>
    #   @return [String]
    class Bumper < Struct.new(
      nil,
      :end_url,
      :start_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    # @!attribute ad_segment_url_prefix
    #   <p>A non-default content delivery network (CDN) to serve ad segments. By default, AWS Elemental MediaTailor uses Amazon CloudFront with default cache settings as its CDN for ad segments. To set up an alternate CDN, create a rule in your CDN for the origin ads.mediatailor.<i>&lt;region&gt;</i>.amazonaws.com. Then specify the rule's name in this <code>AdSegmentUrlPrefix</code>. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for ad segments.</p>
    #   @return [String]
    # @!attribute content_segment_url_prefix
    #   <p>A content delivery network (CDN) to cache content segments, so that content requests don’t always have to go to the origin server. First, create a rule in your CDN for the content segment origin server. Then specify the rule's name in this <code>ContentSegmentUrlPrefix</code>. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for content segments.</p>
    #   @return [String]
    class CdnConfiguration < Struct.new(
      nil,
      :ad_segment_url_prefix,
      :content_segment_url_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration parameters for a channel. For information about MediaTailor channels, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html">Working with channels</a> in the <i>MediaTailor User Guide</i>.</p>
    # @!attribute arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute channel_state
    #   <p>Returns the state whether the channel is running or not.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp of when the channel was created.</p>
    #   @return [Time]
    # @!attribute filler_slate
    #   <p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the <code>LINEAR</code> <code>PlaybackMode</code>. MediaTailor doesn't support filler slate for channels using the <code>LOOP</code> <code>PlaybackMode</code>.</p>
    #   @return [Types::SlateSource]
    # @!attribute last_modified_time
    #   <p>The timestamp of when the channel was last modified.</p>
    #   @return [Time]
    # @!attribute outputs
    #   <p>The channel's output properties.</p>
    #   @return [Array<Types::ResponseOutputItem>]
    # @!attribute playback_mode
    #   <p>The type of playback mode for this channel.</p> <p> <code>LINEAR</code> - Programs play back-to-back only once.</p> <p> <code>LOOP</code> - Programs play back-to-back in an endless loop. When the last program in the schedule plays, playback loops back to the first program in the schedule.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the channel. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute tier
    #   <p>The tier for this channel. STANDARD tier channels can contain live programs.</p>
    #   @return [String]
    # @!attribute log_configuration
    #   <p>The log configuration.</p>
    #   @return [Types::LogConfigurationForChannel]
    # @!attribute audiences
    #   <p>The list of audiences defined in channel.</p>
    #   @return [Array<String>]
    class Channel < Struct.new(
      nil,
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :outputs,
      :playback_mode,
      :tags,
      :tier,
      :log_configuration,
      :audiences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The beaconing settings that apply to client-side reporting sessions: whether MediaTailor includes its beacons in the ad tracking response, and which player operation events it reports on.</p>
    # @!attribute reporting_mode
    #   <p>Specifies whether MediaTailor includes its beacons in the ad tracking response. Valid values, which are case-sensitive:</p> <ul> <li> <p> <code>INSIGHTS</code> – MediaTailor includes its beacons in the ad tracking response.</p> </li> <li> <p> <code>DISABLED</code> – MediaTailor doesn't include its beacons in the ad tracking response.</p> </li> </ul> <p>If you send a <code>ClientSide</code> object, this setting is required. If you omit <code>BeaconingConfiguration</code> or <code>ClientSide</code> entirely, MediaTailor uses <code>INSIGHTS</code>.</p> <p> <code>PutPlaybackConfiguration</code> replaces the whole playback configuration. To keep beaconing off, include <code>DISABLED</code> in every subsequent write.</p>
    #   @return [String]
    # @!attribute additional_event_types
    #   <p>The player operation events to report on, in addition to the ad progress events that MediaTailor always reports on. The default is an empty list. This parameter is valid only when <code>ReportingMode</code> is <code>INSIGHTS</code>. MediaTailor rejects the request if you specify a value while <code>ReportingMode</code> is <code>DISABLED</code>, or if you specify duplicate values.</p>
    #   @return [Array<String>]
    class ClientSideBeaconingConfiguration < Struct.new(
      nil,
      :reporting_mode,
      :additional_event_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Clip range configuration for the VOD source associated with the program.</p>
    # @!attribute end_offset_millis
    #   <p>The end offset of the clip range, in milliseconds, starting from the beginning of the VOD source associated with the program.</p>
    #   @return [Integer]
    # @!attribute start_offset_millis
    #   <p>The start offset of the clip range, in milliseconds. This offset truncates the start at the number of milliseconds into the duration of the VOD source.</p>
    #   @return [Integer]
    class ClipRange < Struct.new(
      nil,
      :end_offset_millis,
      :start_offset_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:end_offset_millis] = 0 unless options.key?(:end_offset_millis)
        super
      end
    end

    # <p>The configuration for a <code>CONCURRENT_EXECUTOR</code> function. A <code>CONCURRENT_EXECUTOR</code> runs a set of child functions in parallel, up to a maximum concurrency, and combines their output when all functions complete. For more information about functions, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions.html">Working with functions</a> in the <i>MediaTailor User Guide</i>.</p>
    # @!attribute runtime
    #   <p>The expression language used to evaluate expressions in the function configuration. Set this to <code>JSONata</code>.</p>
    #   @return [String]
    # @!attribute output
    #   <p>A map of output bindings that controls which bindings the executor commits to the session state after all child functions complete. Each key is a namespaced output path, and each value is an expression that MediaTailor evaluates against the combined results of the child functions.</p>
    #   @return [Hash<String, String>]
    # @!attribute function_list
    #   <p>The list of child functions that MediaTailor runs in parallel. Each entry specifies a child function to execute and an optional run condition expression that controls whether the function runs.</p>
    #   @return [Array<Types::FunctionRef>]
    # @!attribute timeout_milliseconds
    #   <p>The maximum time, in milliseconds, for all child functions to complete. This timeout covers every function in the list, including any HTTP calls the child functions make. If the executor exceeds this timeout, MediaTailor discards all output from the executor and proceeds with default behavior.</p>
    #   @return [Integer]
    # @!attribute max_concurrency
    #   <p>The maximum number of child functions that MediaTailor runs simultaneously. When the list contains more functions than <code>MaxConcurrency</code>, MediaTailor starts additional functions as running ones complete, so that no more than <code>MaxConcurrency</code> functions run at the same time.</p>
    #   @return [Integer]
    class ConcurrentExecutorConfiguration < Struct.new(
      nil,
      :runtime,
      :output,
      :function_list,
      :timeout_milliseconds,
      :max_concurrency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute log_types
    #   <p>The types of logs to collect.</p>
    #   @return [Array<String>]
    class ConfigureLogsForChannelInput < Struct.new(
      nil,
      :channel_name,
      :log_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute log_types
    #   <p>The types of logs collected.</p>
    #   @return [Array<String>]
    class ConfigureLogsForChannelOutput < Struct.new(
      nil,
      :channel_name,
      :log_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures Amazon CloudWatch log settings for a playback configuration.</p>
    # @!attribute percent_enabled
    #   <p>The percentage of session logs that MediaTailor sends to your CloudWatch Logs account. For example, if your playback configuration has 1000 sessions and percentEnabled is set to <code>60</code>, MediaTailor sends logs for 600 of the sessions to CloudWatch Logs. MediaTailor decides at random which of the playback configuration sessions to send logs for. If you want to view logs for a specific session, you can use the <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html">debug log mode</a>.</p> <p>Valid values: <code>0</code> - <code>100</code> </p>
    #   @return [Integer]
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #   @return [String]
    # @!attribute enabled_logging_strategies
    #   <p>The method used for collecting logs from AWS Elemental MediaTailor. To configure MediaTailor to send logs directly to Amazon CloudWatch Logs, choose <code>LEGACY_CLOUDWATCH</code>. To configure MediaTailor to send logs to CloudWatch, which then vends the logs to your destination of choice, choose <code>VENDED_LOGS</code>. Supported destinations are CloudWatch Logs log group, Amazon S3 bucket, and Amazon Data Firehose stream.</p> <p>To use vended logs, you must configure the delivery destination in Amazon CloudWatch, as described in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html#AWS-vended-logs-permissions-V2">Enable logging from AWS services, Logging that requires additional permissions [V2]</a>.</p>
    #   @return [Array<String>]
    # @!attribute ads_interaction_log
    #   <p>The event types that MediaTailor emits in logs for interactions with the ADS.</p>
    #   @return [Types::AdsInteractionLog]
    # @!attribute manifest_service_interaction_log
    #   <p>The event types that MediaTailor emits in logs for interactions with the origin server.</p>
    #   @return [Types::ManifestServiceInteractionLog]
    class ConfigureLogsForPlaybackConfigurationInput < Struct.new(
      nil,
      :percent_enabled,
      :playback_configuration_name,
      :enabled_logging_strategies,
      :ads_interaction_log,
      :manifest_service_interaction_log,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute percent_enabled
    #   <p>The percentage of session logs that MediaTailor sends to your Cloudwatch Logs account.</p>
    #   @return [Integer]
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #   @return [String]
    # @!attribute enabled_logging_strategies
    #   <p>The method used for collecting logs from AWS Elemental MediaTailor. <code>LEGACY_CLOUDWATCH</code> indicates that MediaTailor is sending logs directly to Amazon CloudWatch Logs. <code>VENDED_LOGS</code> indicates that MediaTailor is sending logs to CloudWatch, which then vends the logs to your destination of choice. Supported destinations are CloudWatch Logs log group, Amazon S3 bucket, and Amazon Data Firehose stream. </p>
    #   @return [Array<String>]
    # @!attribute ads_interaction_log
    #   <p>The event types that MediaTailor emits in logs for interactions with the ADS.</p>
    #   @return [Types::AdsInteractionLog]
    # @!attribute manifest_service_interaction_log
    #   <p>The event types that MediaTailor emits in logs for interactions with the origin server.</p>
    #   @return [Types::ManifestServiceInteractionLog]
    class ConfigureLogsForPlaybackConfigurationOutput < Struct.new(
      nil,
      :percent_enabled,
      :playback_configuration_name,
      :enabled_logging_strategies,
      :ads_interaction_log,
      :manifest_service_interaction_log,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:percent_enabled] = 0 unless options.key?(:percent_enabled)
        super
      end
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute filler_slate
    #   <p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the <code>LINEAR</code> <code>PlaybackMode</code>. MediaTailor doesn't support filler slate for channels using the <code>LOOP</code> <code>PlaybackMode</code>.</p>
    #   @return [Types::SlateSource]
    # @!attribute outputs
    #   <p>The channel's output properties.</p>
    #   @return [Array<Types::RequestOutputItem>]
    # @!attribute playback_mode
    #   <p>The type of playback mode to use for this channel.</p> <p> <code>LINEAR</code> - The programs in the schedule play once back-to-back in the schedule.</p> <p> <code>LOOP</code> - The programs in the schedule play back-to-back in an endless loop. When the last program in the schedule stops playing, playback loops back to the first program in the schedule.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the channel. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute tier
    #   <p>The tier of the channel.</p>
    #   @return [String]
    # @!attribute time_shift_configuration
    #   <p> The time-shifted viewing configuration you want to associate to the channel. </p>
    #   @return [Types::TimeShiftConfiguration]
    # @!attribute audiences
    #   <p>The list of audiences defined in channel.</p>
    #   @return [Array<String>]
    class CreateChannelInput < Struct.new(
      nil,
      :channel_name,
      :filler_slate,
      :outputs,
      :playback_mode,
      :tags,
      :tier,
      :time_shift_configuration,
      :audiences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) to assign to the channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name to assign to the channel.</p>
    #   @return [String]
    # @!attribute channel_state
    #   <p>Indicates whether the channel is in a running state or not.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp of when the channel was created.</p>
    #   @return [Time]
    # @!attribute filler_slate
    #   <p>Contains information about the slate used to fill gaps between programs in the schedule.</p>
    #   @return [Types::SlateSource]
    # @!attribute last_modified_time
    #   <p>The timestamp of when the channel was last modified.</p>
    #   @return [Time]
    # @!attribute outputs
    #   <p>The output properties to assign to the channel.</p>
    #   @note This shape is unstable and may change in future releases.
    #   @return [Array<Types::ResponseOutputItem>]
    # @!attribute playback_mode
    #   <p>The playback mode to assign to the channel.</p>
    #   @note This shape is unstable and may change in future releases.
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the channel. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute tier
    #   <p>The tier of the channel.</p>
    #   @note This shape is unstable and may change in future releases.
    #   @return [String]
    # @!attribute time_shift_configuration
    #   <p> The time-shifted viewing configuration assigned to the channel. </p>
    #   @return [Types::TimeShiftConfiguration]
    # @!attribute audiences
    #   <p>The list of audiences defined in channel.</p>
    #   @return [Array<String>]
    class CreateChannelOutput < Struct.new(
      nil,
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :outputs,
      :playback_mode,
      :tags,
      :tier,
      :time_shift_configuration,
      :audiences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configuration parameters for this live source.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute live_source_name
    #   <p>The name of the live source.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the live source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreateLiveSourceInput < Struct.new(
      nil,
      :http_package_configurations,
      :live_source_name,
      :source_location_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN to assign to the live source.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the live source was created.</p>
    #   @return [Time]
    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configuration parameters for this live source.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute last_modified_time
    #   <p>The time the live source was last modified.</p>
    #   @return [Time]
    # @!attribute live_source_name
    #   <p>The name to assign to the live source.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name to assign to the source location of the live source.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the live source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreateLiveSourceOutput < Struct.new(
      nil,
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute consumption
    #   <p>The configuration settings for how and when MediaTailor consumes prefetched ads from the ad decision server for single prefetch schedules. Each consumption configuration contains an end time and an optional start time that define the <i>consumption window</i>. Prefetch schedules automatically expire no earlier than seven days after the end time.</p>
    #   @return [Types::PrefetchConsumption]
    # @!attribute name
    #   <p>The name to assign to the schedule request.</p>
    #   @return [String]
    # @!attribute playback_configuration_name
    #   <p>The name to assign to the playback configuration.</p>
    #   @return [String]
    # @!attribute retrieval
    #   <p>The configuration settings for retrieval of prefetched ads from the ad decision server. Only one set of prefetched ads will be retrieved and subsequently consumed for each ad break.</p>
    #   @return [Types::PrefetchRetrieval]
    # @!attribute recurring_prefetch_configuration
    #   <p>The configuration that defines how and when MediaTailor performs ad prefetching in a live event.</p>
    #   @return [Types::RecurringPrefetchConfiguration]
    # @!attribute schedule_type
    #   <p>The frequency that MediaTailor creates prefetch schedules. <code>SINGLE</code> indicates that this schedule applies to one ad break. <code>RECURRING</code> indicates that MediaTailor automatically creates a schedule for each ad avail in a live event.</p> <p>For more information about the prefetch types and when you might use each, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html">Prefetching ads in Elemental MediaTailor.</a> </p>
    #   @return [String]
    # @!attribute stream_id
    #   <p>An optional stream identifier that MediaTailor uses to prefetch ads for multiple streams that use the same playback configuration. If <code>StreamId</code> is specified, MediaTailor returns all of the prefetch schedules with an exact match on <code>StreamId</code>. If not specified, MediaTailor returns all of the prefetch schedules for the playback configuration, regardless of <code>StreamId</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the prefetch schedule. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreatePrefetchScheduleInput < Struct.new(
      nil,
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :recurring_prefetch_configuration,
      :schedule_type,
      :stream_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN to assign to the prefetch schedule.</p>
    #   @return [String]
    # @!attribute consumption
    #   <p>The configuration settings for how and when MediaTailor consumes prefetched ads from the ad decision server for single prefetch schedules. Each consumption configuration contains an end time and an optional start time that define the <i>consumption window</i>. Prefetch schedules automatically expire no earlier than seven days after the end time.</p>
    #   @return [Types::PrefetchConsumption]
    # @!attribute name
    #   <p>The name to assign to the prefetch schedule.</p>
    #   @return [String]
    # @!attribute playback_configuration_name
    #   <p>The name to assign to the playback configuration.</p>
    #   @return [String]
    # @!attribute retrieval
    #   <p>The configuration settings for retrieval of prefetched ads from the ad decision server. Only one set of prefetched ads will be retrieved and subsequently consumed for each ad break.</p>
    #   @return [Types::PrefetchRetrieval]
    # @!attribute recurring_prefetch_configuration
    #   <p>The configuration that defines how MediaTailor performs recurring prefetch. </p>
    #   @return [Types::RecurringPrefetchConfiguration]
    # @!attribute schedule_type
    #   <p>The frequency that MediaTailor creates prefetch schedules. <code>SINGLE</code> indicates that this schedule applies to one ad break. <code>RECURRING</code> indicates that MediaTailor automatically creates a schedule for each ad avail in a live event.</p>
    #   @return [String]
    # @!attribute stream_id
    #   <p>An optional stream identifier that MediaTailor uses to prefetch ads for multiple streams that use the same playback configuration. If <code>StreamId</code> is specified, MediaTailor returns all of the prefetch schedules with an exact match on <code>StreamId</code>. If not specified, MediaTailor returns all of the prefetch schedules for the playback configuration, regardless of <code>StreamId</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the prefetch schedule. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreatePrefetchScheduleOutput < Struct.new(
      nil,
      :arn,
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :recurring_prefetch_configuration,
      :schedule_type,
      :stream_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ad_breaks
    #   <p>The ad break configuration settings.</p>
    #   @return [Array<Types::AdBreak>]
    # @!attribute channel_name
    #   <p>The name of the channel for this Program.</p>
    #   @return [String]
    # @!attribute live_source_name
    #   <p>The name of the LiveSource for this Program.</p>
    #   @return [String]
    # @!attribute program_name
    #   <p>The name of the Program.</p>
    #   @return [String]
    # @!attribute schedule_configuration
    #   <p>The schedule configuration settings.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #   @return [String]
    # @!attribute vod_source_name
    #   <p>The name that's used to refer to a VOD source.</p>
    #   @return [String]
    # @!attribute audience_media
    #   <p>The list of AudienceMedia defined in program.</p>
    #   @return [Array<Types::AudienceMedia>]
    # @!attribute tags
    #   <p>The tags to assign to the program. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreateProgramInput < Struct.new(
      nil,
      :ad_breaks,
      :channel_name,
      :live_source_name,
      :program_name,
      :schedule_configuration,
      :source_location_name,
      :vod_source_name,
      :audience_media,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ad_breaks
    #   <p>The ad break configuration settings.</p>
    #   @return [Array<Types::AdBreak>]
    # @!attribute arn
    #   <p>The ARN to assign to the program.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name to assign to the channel for this program.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the program was created.</p>
    #   @return [Time]
    # @!attribute live_source_name
    #   <p>The name of the LiveSource for this Program.</p>
    #   @return [String]
    # @!attribute program_name
    #   <p>The name to assign to this program.</p>
    #   @return [String]
    # @!attribute scheduled_start_time
    #   <p>The scheduled start time for this Program.</p>
    #   @return [Time]
    # @!attribute source_location_name
    #   <p>The name to assign to the source location for this program.</p>
    #   @return [String]
    # @!attribute vod_source_name
    #   <p>The name that's used to refer to a VOD source.</p>
    #   @return [String]
    # @!attribute clip_range
    #   <p>The clip range configuration settings.</p>
    #   @return [Types::ClipRange]
    # @!attribute duration_millis
    #   <p>The duration of the live program in milliseconds.</p>
    #   @return [Integer]
    # @!attribute audience_media
    #   <p>The list of AudienceMedia defined in program.</p>
    #   @return [Array<Types::AudienceMedia>]
    # @!attribute tags
    #   <p>The tags assigned to the program. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreateProgramOutput < Struct.new(
      nil,
      :ad_breaks,
      :arn,
      :channel_name,
      :creation_time,
      :live_source_name,
      :program_name,
      :scheduled_start_time,
      :source_location_name,
      :vod_source_name,
      :clip_range,
      :duration_millis,
      :audience_media,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_configuration
    #   <p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>
    #   @return [Types::AccessConfiguration]
    # @!attribute default_segment_delivery_configuration
    #   <p>The optional configuration for the server that serves segments.</p>
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    # @!attribute http_configuration
    #   <p>The source's HTTP package configurations.</p>
    #   @return [Types::HttpConfiguration]
    # @!attribute segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    # @!attribute source_location_name
    #   <p>The name associated with the source location.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the source location. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreateSourceLocationInput < Struct.new(
      nil,
      :access_configuration,
      :default_segment_delivery_configuration,
      :http_configuration,
      :segment_delivery_configurations,
      :source_location_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_configuration
    #   <p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>
    #   @return [Types::AccessConfiguration]
    # @!attribute arn
    #   <p>The ARN to assign to the source location.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the source location was created.</p>
    #   @return [Time]
    # @!attribute default_segment_delivery_configuration
    #   <p>The optional configuration for the server that serves segments.</p>
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    # @!attribute http_configuration
    #   <p>The source's HTTP package configurations.</p>
    #   @return [Types::HttpConfiguration]
    # @!attribute last_modified_time
    #   <p>The time the source location was last modified.</p>
    #   @return [Time]
    # @!attribute segment_delivery_configurations
    #   <p>The segment delivery configurations for the source location. For information about MediaTailor configurations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html">Working with configurations in AWS Elemental MediaTailor</a>.</p>
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    # @!attribute source_location_name
    #   <p>The name to assign to the source location.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the source location. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class CreateSourceLocationOutput < Struct.new(
      nil,
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configuration parameters for this VOD source.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute source_location_name
    #   <p>The name of the source location for this VOD source.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the VOD source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute vod_source_name
    #   <p>The name associated with the VOD source.&gt;</p>
    #   @return [String]
    class CreateVodSourceInput < Struct.new(
      nil,
      :http_package_configurations,
      :source_location_name,
      :tags,
      :vod_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN to assign to this VOD source.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the VOD source was created.</p>
    #   @return [Time]
    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configuration parameters for this VOD source.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute last_modified_time
    #   <p>The time the VOD source was last modified.</p>
    #   @return [Time]
    # @!attribute source_location_name
    #   <p>The name to assign to the source location for this VOD source.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the VOD source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute vod_source_name
    #   <p>The name to assign to the VOD source.</p>
    #   @return [String]
    class CreateVodSourceOutput < Struct.new(
      nil,
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a <code>CUSTOM_OUTPUT</code> function. MediaTailor evaluates the output expressions against the current session state and commits the results as output bindings. <code>CUSTOM_OUTPUT</code> functions do not make external calls. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-types-custom-output.html">CUSTOM_OUTPUT</a> in the <i>MediaTailor User Guide</i>.</p>
    # @!attribute runtime
    #   <p>The expression language used to evaluate expressions in the function configuration. Set this to <code>JSONata</code>.</p>
    #   @return [String]
    # @!attribute output
    #   <p>A map of output bindings. Each key is a namespaced output path (such as <code>player_params.device_type</code> or <code>temp.variant</code>), and each value is an expression that MediaTailor evaluates at runtime against the current session state. For more information about expression syntax, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-jsonata.html">JSONata expression reference</a> in the <i>MediaTailor User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class CustomOutputConfiguration < Struct.new(
      nil,
      :runtime,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for DASH content.</p>
    # @!attribute manifest_endpoint_prefix
    #   <p>The URL that MediaTailor generates to initiate a playback session. The session uses server-side reporting.</p>
    #   @return [String]
    # @!attribute dual_stack_manifest_endpoint_prefix
    #   <p>The dual-stack (IPv4 and IPv6) URL that MediaTailor generates to initiate a playback session. The session uses server-side reporting.</p>
    #   @return [String]
    # @!attribute mpd_location
    #   <p>The setting that controls whether MediaTailor includes the Location tag in DASH manifests. MediaTailor populates the Location tag with the URL for manifest update requests, to be used by players that don't support sticky redirects. Disable this if you have CDN routing rules set up for accessing MediaTailor manifests, and you are either using client-side reporting or your players support sticky HTTP redirects. Valid values are <code>DISABLED</code> and <code>EMT_DEFAULT</code>. The <code>EMT_DEFAULT</code> setting enables the inclusion of the tag and is the default value.</p>
    #   @return [String]
    # @!attribute origin_manifest_type
    #   <p>The setting that controls whether MediaTailor handles manifests from the origin server as multi-period manifests or single-period manifests. If your origin server produces single-period manifests, set this to <code>SINGLE_PERIOD</code>. The default setting is <code>MULTI_PERIOD</code>. For multi-period manifests, omit this setting or set it to <code>MULTI_PERIOD</code>.</p>
    #   @return [String]
    class DashConfiguration < Struct.new(
      nil,
      :manifest_endpoint_prefix,
      :dual_stack_manifest_endpoint_prefix,
      :mpd_location,
      :origin_manifest_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for DASH PUT operations.</p>
    # @!attribute mpd_location
    #   <p>The setting that controls whether MediaTailor includes the Location tag in DASH manifests. MediaTailor populates the Location tag with the URL for manifest update requests, to be used by players that don't support sticky redirects. Disable this if you have CDN routing rules set up for accessing MediaTailor manifests, and you are either using client-side reporting or your players support sticky HTTP redirects. Valid values are <code>DISABLED</code> and <code>EMT_DEFAULT</code>. The <code>EMT_DEFAULT</code> setting enables the inclusion of the tag and is the default value.</p>
    #   @return [String]
    # @!attribute origin_manifest_type
    #   <p>The setting that controls whether MediaTailor handles manifests from the origin server as multi-period manifests or single-period manifests. If your origin server produces single-period manifests, set this to <code>SINGLE_PERIOD</code>. The default setting is <code>MULTI_PERIOD</code>. For multi-period manifests, omit this setting or set it to <code>MULTI_PERIOD</code>.</p>
    #   @return [String]
    class DashConfigurationForPut < Struct.new(
      nil,
      :mpd_location,
      :origin_manifest_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Dash manifest configuration parameters.</p>
    # @!attribute manifest_window_seconds
    #   <p>The total duration (in seconds) of each manifest. Minimum value: <code>30</code> seconds. Maximum value: <code>3600</code> seconds.</p>
    #   @return [Integer]
    # @!attribute min_buffer_time_seconds
    #   <p>Minimum amount of content (measured in seconds) that a player must keep available in the buffer. Minimum value: <code>2</code> seconds. Maximum value: <code>60</code> seconds.</p>
    #   @return [Integer]
    # @!attribute min_update_period_seconds
    #   <p>Minimum amount of time (in seconds) that the player should wait before requesting updates to the manifest. Minimum value: <code>2</code> seconds. Maximum value: <code>60</code> seconds.</p>
    #   @return [Integer]
    # @!attribute suggested_presentation_delay_seconds
    #   <p>Amount of time (in seconds) that the player should be from the live point at the end of the manifest. Minimum value: <code>2</code> seconds. Maximum value: <code>60</code> seconds.</p>
    #   @return [Integer]
    class DashPlaylistSettings < Struct.new(
      nil,
      :manifest_window_seconds,
      :min_buffer_time_seconds,
      :min_update_period_seconds,
      :suggested_presentation_delay_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The optional configuration for a server that serves segments. Use this if you want the segment delivery server to be different from the source location server. For example, you can configure your source location server to be an origination server, such as MediaPackage, and the segment delivery server to be a content delivery network (CDN), such as CloudFront. If you don't specify a segment delivery server, then the source location server is used.</p>
    # @!attribute base_url
    #   <p>The hostname of the server that will be used to serve segments. This string must include the protocol, such as <b>https://</b>.</p>
    #   @return [String]
    class DefaultSegmentDeliveryConfiguration < Struct.new(
      nil,
      :base_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    class DeleteChannelInput < Struct.new(
      nil,
      :channel_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteChannelOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel associated with this channel policy.</p>
    #   @return [String]
    class DeleteChannelPolicyInput < Struct.new(
      nil,
      :channel_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteChannelPolicyOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_id
    #   <p>The identifier of the function to delete.</p>
    #   @return [String]
    class DeleteFunctionRequest < Struct.new(
      nil,
      :function_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteFunctionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute live_source_name
    #   <p>The name of the live source.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name of the source location associated with this Live Source.</p>
    #   @return [String]
    class DeleteLiveSourceInput < Struct.new(
      nil,
      :live_source_name,
      :source_location_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLiveSourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the playback configuration.</p>
    #   @return [String]
    class DeletePlaybackConfigurationInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePlaybackConfigurationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the prefetch schedule. If the action is successful, the service sends back an HTTP 204 response with an empty HTTP body.</p>
    #   @return [String]
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration for this prefetch schedule.</p>
    #   @return [String]
    class DeletePrefetchScheduleInput < Struct.new(
      nil,
      :name,
      :playback_configuration_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePrefetchScheduleOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute program_name
    #   <p>The name of the program.</p>
    #   @return [String]
    class DeleteProgramInput < Struct.new(
      nil,
      :channel_name,
      :program_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteProgramOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #   @return [String]
    class DeleteSourceLocationInput < Struct.new(
      nil,
      :source_location_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSourceLocationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_location_name
    #   <p>The name of the source location associated with this VOD Source.</p>
    #   @return [String]
    # @!attribute vod_source_name
    #   <p>The name of the VOD source.</p>
    #   @return [String]
    class DeleteVodSourceInput < Struct.new(
      nil,
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteVodSourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    class DescribeChannelInput < Struct.new(
      nil,
      :channel_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute channel_state
    #   <p>Indicates whether the channel is in a running state or not.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp of when the channel was created.</p>
    #   @return [Time]
    # @!attribute filler_slate
    #   <p>Contains information about the slate used to fill gaps between programs in the schedule.</p>
    #   @return [Types::SlateSource]
    # @!attribute last_modified_time
    #   <p>The timestamp of when the channel was last modified.</p>
    #   @return [Time]
    # @!attribute outputs
    #   <p>The channel's output properties.</p>
    #   @note This shape is unstable and may change in future releases.
    #   @return [Array<Types::ResponseOutputItem>]
    # @!attribute playback_mode
    #   <p>The channel's playback mode.</p>
    #   @note This shape is unstable and may change in future releases.
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the channel. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute tier
    #   <p>The channel's tier.</p>
    #   @note This shape is unstable and may change in future releases.
    #   @return [String]
    # @!attribute log_configuration
    #   <p>The log configuration for the channel.</p>
    #   @return [Types::LogConfigurationForChannel]
    # @!attribute time_shift_configuration
    #   <p> The time-shifted viewing configuration for the channel. </p>
    #   @return [Types::TimeShiftConfiguration]
    # @!attribute audiences
    #   <p>The list of audiences defined in channel.</p>
    #   @return [Array<String>]
    class DescribeChannelOutput < Struct.new(
      nil,
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :outputs,
      :playback_mode,
      :tags,
      :tier,
      :log_configuration,
      :time_shift_configuration,
      :audiences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute live_source_name
    #   <p>The name of the live source.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name of the source location associated with this Live Source.</p>
    #   @return [String]
    class DescribeLiveSourceInput < Struct.new(
      nil,
      :live_source_name,
      :source_location_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the live source.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the live source was created.</p>
    #   @return [Time]
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the live source was modified.</p>
    #   @return [Time]
    # @!attribute live_source_name
    #   <p>The name of the live source.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name of the source location associated with the live source.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the live source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class DescribeLiveSourceOutput < Struct.new(
      nil,
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel associated with this Program.</p>
    #   @return [String]
    # @!attribute program_name
    #   <p>The name of the program.</p>
    #   @return [String]
    class DescribeProgramInput < Struct.new(
      nil,
      :channel_name,
      :program_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ad_breaks
    #   <p>The ad break configuration settings.</p>
    #   @return [Array<Types::AdBreak>]
    # @!attribute arn
    #   <p>The ARN of the program.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel that the program belongs to.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp of when the program was created.</p>
    #   @return [Time]
    # @!attribute live_source_name
    #   <p>The name of the LiveSource for this Program.</p>
    #   @return [String]
    # @!attribute program_name
    #   <p>The name of the program.</p>
    #   @return [String]
    # @!attribute scheduled_start_time
    #   <p>The date and time that the program is scheduled to start in ISO 8601 format and Coordinated Universal Time (UTC). For example, the value 2021-03-27T17:48:16.751Z represents March 27, 2021 at 17:48:16.751 UTC.</p>
    #   @return [Time]
    # @!attribute source_location_name
    #   <p>The source location name.</p>
    #   @return [String]
    # @!attribute vod_source_name
    #   <p>The name that's used to refer to a VOD source.</p>
    #   @return [String]
    # @!attribute clip_range
    #   <p>The clip range configuration settings.</p>
    #   @return [Types::ClipRange]
    # @!attribute duration_millis
    #   <p>The duration of the live program in milliseconds.</p>
    #   @return [Integer]
    # @!attribute audience_media
    #   <p>The list of AudienceMedia defined in program.</p>
    #   @return [Array<Types::AudienceMedia>]
    # @!attribute tags
    #   <p>The tags assigned to the program. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class DescribeProgramOutput < Struct.new(
      nil,
      :ad_breaks,
      :arn,
      :channel_name,
      :creation_time,
      :live_source_name,
      :program_name,
      :scheduled_start_time,
      :source_location_name,
      :vod_source_name,
      :clip_range,
      :duration_millis,
      :audience_media,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #   @return [String]
    class DescribeSourceLocationInput < Struct.new(
      nil,
      :source_location_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_configuration
    #   <p>The access configuration for the source location.</p>
    #   @return [Types::AccessConfiguration]
    # @!attribute arn
    #   <p>The ARN of the source location.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the source location was created.</p>
    #   @return [Time]
    # @!attribute default_segment_delivery_configuration
    #   <p>The default segment delivery configuration settings.</p>
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    # @!attribute http_configuration
    #   <p>The HTTP package configuration settings for the source location.</p>
    #   @return [Types::HttpConfiguration]
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the source location was last modified.</p>
    #   @return [Time]
    # @!attribute segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the source location. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class DescribeSourceLocationOutput < Struct.new(
      nil,
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_location_name
    #   <p>The name of the source location associated with this VOD Source.</p>
    #   @return [String]
    # @!attribute vod_source_name
    #   <p>The name of the VOD Source.</p>
    #   @return [String]
    class DescribeVodSourceInput < Struct.new(
      nil,
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ad_break_opportunities
    #   <p>The ad break opportunities within the VOD source.</p>
    #   @return [Array<Types::AdBreakOpportunity>]
    # @!attribute arn
    #   <p>The ARN of the VOD source.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the VOD source was created.</p>
    #   @return [Time]
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute last_modified_time
    #   <p>The last modified time of the VOD source.</p>
    #   @return [Time]
    # @!attribute source_location_name
    #   <p>The name of the source location associated with the VOD source.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the VOD source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute vod_source_name
    #   <p>The name of the VOD source.</p>
    #   @return [String]
    class DescribeVodSourceOutput < Struct.new(
      nil,
      :ad_break_opportunities,
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines reusable logic that MediaTailor executes at lifecycle hooks during ad insertion. The <code>FunctionType</code> determines the function's runtime behavior. For more information about functions, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions.html">Working with functions</a> in the <i>MediaTailor User Guide</i>.</p>
    # @!attribute function_id
    #   <p>The identifier of the function.</p>
    #   @return [String]
    # @!attribute function_type
    #   <p>The type of the function.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the function.</p>
    #   @return [String]
    # @!attribute http_request_configuration
    #   <p>The configuration for an <code>HTTP_REQUEST</code> function.</p>
    #   @return [Types::HttpRequestConfiguration]
    # @!attribute aws_service_request_configuration
    #   <p>The configuration for an <code>AWS_SERVICE_REQUEST</code> function. Specifies the target service, target Region, and request parameters.</p>
    #   @return [Types::AwsServiceRequestConfiguration]
    # @!attribute custom_output_configuration
    #   <p>The configuration for a <code>CUSTOM_OUTPUT</code> function.</p>
    #   @return [Types::CustomOutputConfiguration]
    # @!attribute concurrent_executor_configuration
    #   <p>The configuration for a <code>CONCURRENT_EXECUTOR</code> function.</p>
    #   @return [Types::ConcurrentExecutorConfiguration]
    # @!attribute sequential_executor_configuration
    #   <p>The configuration for a <code>SEQUENTIAL_EXECUTOR</code> function.</p>
    #   @return [Types::SequentialExecutorConfiguration]
    # @!attribute vast_request_configuration
    #   <p>The configuration for a <code>VAST_REQUEST</code> function.</p>
    #   @return [Types::VastRequestConfiguration]
    # @!attribute tags
    #   <p>The tags assigned to the function. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #   @return [String]
    class Function < Struct.new(
      nil,
      :function_id,
      :function_type,
      :description,
      :http_request_configuration,
      :aws_service_request_configuration,
      :custom_output_configuration,
      :concurrent_executor_configuration,
      :sequential_executor_configuration,
      :vast_request_configuration,
      :tags,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a child function within a <code>SEQUENTIAL_EXECUTOR</code> function.</p>
    # @!attribute run_condition
    #   <p>An optional expression that evaluates to a boolean. MediaTailor evaluates this expression immediately before running the step, using the accumulated state at that point in the sequence. If the expression evaluates to <code>false</code>, MediaTailor skips the step and moves to the next one. If omitted, the step always runs.</p>
    #   @return [String]
    # @!attribute function_id
    #   <p>The identifier of the child function to execute in this step.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>An optional alternate name for the function within the executor. If omitted, MediaTailor uses the function identifier.</p>
    #   @return [String]
    class FunctionRef < Struct.new(
      nil,
      :run_condition,
      :function_id,
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel associated with this Channel Policy.</p>
    #   @return [String]
    class GetChannelPolicyInput < Struct.new(
      nil,
      :channel_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The IAM policy for the channel. IAM policies are used to control access to your channel.</p>
    #   @return [String]
    class GetChannelPolicyOutput < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel associated with this Channel Schedule.</p>
    #   @return [String]
    # @!attribute duration_minutes
    #   <p>The duration in minutes of the channel schedule.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of channel schedules that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> channel schedules, use the value of <code>NextToken</code> in the response to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>(Optional) If the playback configuration has more than <code>MaxResults</code> channel schedules, use <code>NextToken</code> to get the second and subsequent pages of results.</p> <p>For the first <code>GetChannelScheduleRequest</code> request, omit this value.</p> <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request.</p> <p>If the previous response didn't include a <code>NextToken</code> element, there are no more channel schedules to get.</p>
    #   @return [String]
    # @!attribute audience
    #   <p>The single audience for GetChannelScheduleRequest.</p>
    #   @return [String]
    class GetChannelScheduleInput < Struct.new(
      nil,
      :channel_name,
      :duration_minutes,
      :max_results,
      :next_token,
      :audience,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of schedule entries for the channel.</p>
    #   @return [Array<Types::ScheduleEntry>]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class GetChannelScheduleOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # -- Request/Response DataStructures --
    # @!attribute function_id
    #   <p>The identifier of the function.</p>
    #   @return [String]
    class GetFunctionRequest < Struct.new(
      nil,
      :function_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # -- Define Mixin --
    # @!attribute function_id
    #   <p>The identifier of the function.</p>
    #   @return [String]
    # @!attribute function_type
    #   <p>The type of the function.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the function.</p>
    #   @return [String]
    # @!attribute http_request_configuration
    #   <p>The configuration for an <code>HTTP_REQUEST</code> function.</p>
    #   @return [Types::HttpRequestConfiguration]
    # @!attribute aws_service_request_configuration
    #   <p>The configuration for an <code>AWS_SERVICE_REQUEST</code> function. Specifies the target service, target Region, and request parameters.</p>
    #   @return [Types::AwsServiceRequestConfiguration]
    # @!attribute custom_output_configuration
    #   <p>The configuration for a <code>CUSTOM_OUTPUT</code> function.</p>
    #   @return [Types::CustomOutputConfiguration]
    # @!attribute concurrent_executor_configuration
    #   <p>The configuration for a <code>CONCURRENT_EXECUTOR</code> function.</p>
    #   @return [Types::ConcurrentExecutorConfiguration]
    # @!attribute sequential_executor_configuration
    #   <p>The configuration for a <code>SEQUENTIAL_EXECUTOR</code> function.</p>
    #   @return [Types::SequentialExecutorConfiguration]
    # @!attribute vast_request_configuration
    #   <p>The configuration for a <code>VAST_REQUEST</code> function.</p>
    #   @return [Types::VastRequestConfiguration]
    # @!attribute tags
    #   <p>The tags assigned to the function. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #   @return [String]
    class GetFunctionResponse < Struct.new(
      nil,
      :function_id,
      :function_type,
      :description,
      :http_request_configuration,
      :aws_service_request_configuration,
      :custom_output_configuration,
      :concurrent_executor_configuration,
      :sequential_executor_configuration,
      :vast_request_configuration,
      :tags,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #   @return [String]
    class GetPlaybackConfigurationInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    #   @return [String]
    # @!attribute avail_suppression
    #   <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    #   @return [Types::AvailSuppression]
    # @!attribute bumper
    #   <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    #   @return [Types::Bumper]
    # @!attribute cdn_configuration
    #   <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    #   @return [Types::CdnConfiguration]
    # @!attribute configuration_aliases
    #   <p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domains.html">Domain Variables</a>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute dash_configuration
    #   <p>The configuration for DASH content.</p>
    #   @return [Types::DashConfiguration]
    # @!attribute hls_configuration
    #   <p>The configuration for HLS content.</p>
    #   @return [Types::HlsConfiguration]
    # @!attribute insertion_mode
    #   <p>The setting that controls whether players can use stitched or guided ad insertion. The default, <code>STITCHED_ONLY</code>, forces all player sessions to use stitched (server-side) ad insertion. Choosing <code>PLAYER_SELECT</code> allows players to select either stitched or guided ad insertion at session-initialization time. The default for players that do not specify an insertion mode is stitched.</p>
    #   @return [String]
    # @!attribute live_pre_roll_configuration
    #   <p>The configuration for pre-roll ad insertion.</p>
    #   @return [Types::LivePreRollConfiguration]
    # @!attribute log_configuration
    #   <p>The configuration that defines where AWS Elemental MediaTailor sends logs for the playback configuration.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute manifest_processing_rules
    #   <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    #   @return [Types::ManifestProcessingRules]
    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #   @return [String]
    # @!attribute personalization_threshold_seconds
    #   <p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Behavior in AWS Elemental MediaTailor</a>.</p>
    #   @return [Integer]
    # @!attribute playback_configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the playback configuration.</p>
    #   @return [String]
    # @!attribute playback_endpoint_prefix
    #   <p>The URL that your player accesses to get a manifest from AWS Elemental MediaTailor. The session uses server-side reporting.</p>
    #   @return [String]
    # @!attribute dual_stack_playback_endpoint_prefix
    #   <p>The dual-stack (IPv4 and IPv6) URL that your player accesses to get a manifest from AWS Elemental MediaTailor. The session uses server-side reporting.</p>
    #   @return [String]
    # @!attribute session_initialization_endpoint_prefix
    #   <p>The URL that your player uses to initialize a session that uses client-side reporting.</p>
    #   @return [String]
    # @!attribute dual_stack_session_initialization_endpoint_prefix
    #   <p>The dual-stack (IPv4 and IPv6) URL that your player uses to initialize a session that uses client-side reporting.</p>
    #   @return [String]
    # @!attribute slate_ad_url
    #   <p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the playback configuration. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute transcode_profile_name
    #   <p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>
    #   @return [String]
    # @!attribute video_content_source_url
    #   <p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>
    #   @return [String]
    # @!attribute ad_conditioning_configuration
    #   <p>The setting that indicates what conditioning MediaTailor will perform on ads that the ad decision server (ADS) returns, and what priority MediaTailor uses when inserting ads. </p>
    #   @return [Types::AdConditioningConfiguration]
    # @!attribute ad_decision_server_configuration
    #   <p>The configuration for customizing HTTP requests to the ad decision server (ADS). This includes settings for request method, headers, body content, and compression options.</p>
    #   @return [Types::AdDecisionServerConfiguration]
    # @!attribute yield_optimization_configuration
    #   <p>Configuration for Yield Optimization, which fills unsold ad inventory in ad breaks with programmatic ads from Amazon Publisher Services (APS).</p>
    #   @return [Types::YieldOptimizationConfiguration]
    # @!attribute function_mapping
    #   <p>A map of lifecycle hook event names to function identifiers. The function mapping specifies which function MediaTailor executes at each lifecycle hook during ad insertion. Valid keys are <code>PRE_SESSION_INITIALIZATION</code>, <code>PRE_ADS_REQUEST</code>, <code>POST_ADS_RESPONSE</code>, and <code>PRE_MANIFEST_INSERTION</code>. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-hooks.html">Functions lifecycle hooks</a> in the <i>MediaTailor User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute ads_personalization_timeouts
    #   <p>The timeout settings for ad decision server interactions. These settings control how long MediaTailor waits for ADS responses and the total time budget for ad personalization across live, VOD, and prefetch workflows.</p>
    #   @return [Types::AdsPersonalizationTimeouts]
    # @!attribute ads_personalization_concurrency
    #   <p>The concurrency settings for ad decision server interactions. These settings control how many simultaneous ADS requests MediaTailor makes per manifest request.</p>
    #   @return [Types::AdsPersonalizationConcurrency]
    # @!attribute beaconing_configuration
    #   <p>The beaconing configuration for this playback configuration, which controls whether MediaTailor includes beacons of its own in the ad tracking response. MediaTailor always returns this setting. If you created the playback configuration before this setting existed, MediaTailor reports <code>ReportingMode</code> as <code>INSIGHTS</code>. This is also the value MediaTailor uses for that configuration at playback time.</p>
    #   @return [Types::BeaconingConfiguration]
    class GetPlaybackConfigurationOutput < Struct.new(
      nil,
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :hls_configuration,
      :insertion_mode,
      :live_pre_roll_configuration,
      :log_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :dual_stack_playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :dual_stack_session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url,
      :ad_conditioning_configuration,
      :ad_decision_server_configuration,
      :yield_optimization_configuration,
      :function_mapping,
      :ads_personalization_timeouts,
      :ads_personalization_concurrency,
      :beaconing_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:insertion_mode] = 'STITCHED_ONLY' unless options.key?(:insertion_mode)
        super
      end
    end

    # @!attribute name
    #   <p>The name of the prefetch schedule. The name must be unique among all prefetch schedules that are associated with the specified playback configuration.</p>
    #   @return [String]
    # @!attribute playback_configuration_name
    #   <p>Returns information about the prefetch schedule for a specific playback configuration. If you call <code>GetPrefetchSchedule</code> on an expired prefetch schedule, MediaTailor returns an HTTP 404 status code.</p>
    #   @return [String]
    class GetPrefetchScheduleInput < Struct.new(
      nil,
      :name,
      :playback_configuration_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the prefetch schedule.</p>
    #   @return [String]
    # @!attribute consumption
    #   <p>The configuration settings for how and when MediaTailor consumes prefetched ads from the ad decision server for single prefetch schedules. Each consumption configuration contains an end time and an optional start time that define the <i>consumption window</i>. Prefetch schedules automatically expire no earlier than seven days after the end time.</p>
    #   @return [Types::PrefetchConsumption]
    # @!attribute name
    #   <p>The name of the prefetch schedule. The name must be unique among all prefetch schedules that are associated with the specified playback configuration.</p>
    #   @return [String]
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration to create the prefetch schedule for.</p>
    #   @return [String]
    # @!attribute retrieval
    #   <p>A complex type that contains settings for prefetch retrieval from the ad decision server (ADS).</p>
    #   @return [Types::PrefetchRetrieval]
    # @!attribute schedule_type
    #   <p>The frequency that MediaTailor creates prefetch schedules. <code>SINGLE</code> indicates that this schedule applies to one ad break. <code>RECURRING</code> indicates that MediaTailor automatically creates a schedule for each ad avail in a live event.</p>
    #   @return [String]
    # @!attribute recurring_prefetch_configuration
    #   <p>The configuration that defines how and when MediaTailor performs ad prefetching in a live event.</p>
    #   @return [Types::RecurringPrefetchConfiguration]
    # @!attribute stream_id
    #   <p>An optional stream identifier that you can specify in order to prefetch for multiple streams that use the same playback configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the prefetch schedule. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class GetPrefetchScheduleOutput < Struct.new(
      nil,
      :arn,
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :schedule_type,
      :recurring_prefetch_configuration,
      :stream_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for HLS content.</p>
    # @!attribute manifest_endpoint_prefix
    #   <p>The URL that MediaTailor generates to initiate a playback session for devices that support Apple HLS. The session uses server-side reporting.</p>
    #   @return [String]
    # @!attribute dual_stack_manifest_endpoint_prefix
    #   <p>The dual-stack (IPv4 and IPv6) URL that MediaTailor generates to initiate a playback session for devices that support Apple HLS. The session uses server-side reporting.</p>
    #   @return [String]
    class HlsConfiguration < Struct.new(
      nil,
      :manifest_endpoint_prefix,
      :dual_stack_manifest_endpoint_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>HLS playlist configuration parameters.</p>
    # @!attribute manifest_window_seconds
    #   <p>The total duration (in seconds) of each manifest. Minimum value: <code>30</code> seconds. Maximum value: <code>3600</code> seconds.</p>
    #   @return [Integer]
    # @!attribute ad_markup_type
    #   <p>Determines the type of SCTE 35 tags to use in ad markup. Specify <code>DATERANGE</code> to use <code>DATERANGE</code> tags (for live or VOD content). Specify <code>SCTE35_ENHANCED</code> to use <code>EXT-X-CUE-OUT</code> and <code>EXT-X-CUE-IN</code> tags (for VOD content only).</p>
    #   @return [Array<String>]
    class HlsPlaylistSettings < Struct.new(
      nil,
      :manifest_window_seconds,
      :ad_markup_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The HTTP configuration for the source location.</p>
    # @!attribute base_url
    #   <p>The base URL for the source location host server. This string must include the protocol, such as <b>https://</b>.</p>
    #   @return [String]
    class HttpConfiguration < Struct.new(
      nil,
      :base_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The HTTP package configuration properties for the requested VOD source.</p>
    # @!attribute path
    #   <p>The relative path to the URL for this VOD source. This is combined with <code>SourceLocation::HttpConfiguration::BaseUrl</code> to form a valid URL.</p>
    #   @return [String]
    # @!attribute source_group
    #   <p>The name of the source group. This has to match one of the <code>Channel::Outputs::SourceGroup</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The streaming protocol for this package configuration. Supported values are <code>HLS</code> and <code>DASH</code>.</p>
    #   @return [String]
    class HttpPackageConfiguration < Struct.new(
      nil,
      :path,
      :source_group,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>HTTP request configuration parameters that define how MediaTailor communicates with the ad decision server.</p>
    # @!attribute method
    #   <p>The HTTP method to use when making requests to the ad decision server. Supported values are <code>GET</code> and <code>POST</code>.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The request body content to send with HTTP requests to the ad decision server. This value is only eligible for <code>POST</code> requests.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>Custom HTTP headers to include in requests to the ad decision server. Specify headers as key-value pairs. This value is only eligible for <code>POST</code> requests.</p>
    #   @return [Hash<String, String>]
    # @!attribute compress_request
    #   <p>The compression method to apply to requests sent to the ad decision server. Supported values are <code>NONE</code> and <code>GZIP</code>. This value is only eligible for <code>POST</code> requests.</p>
    #   @return [String]
    class HttpRequest < Struct.new(
      nil,
      :method,
      :body,
      :headers,
      :compress_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The optional response-caching configuration shared by the HTTP-based function types (<code>HTTP_REQUEST</code>, <code>AWS_SERVICE_REQUEST</code>, and <code>VAST_REQUEST</code>). When you provide this configuration, MediaTailor caches the function's responses that have one of the following HTTP status codes: <code>200</code>, <code>203</code>, <code>204</code>, <code>404</code>, <code>405</code>, <code>410</code>, <code>414</code>, and <code>501</code>. For a cacheable response, MediaTailor caches it for the number of seconds given by the response's <code>Cache-Control</code> <code>max-age</code> directive, limited to the range between <code>TtlMinimumSeconds</code> and <code>TtlMaximumSeconds</code>. If the response has no <code>Cache-Control</code> <code>max-age</code> directive, MediaTailor caches it for <code>TtlMinimumSeconds</code> seconds. Cached HTTP responses are scoped per playback configuration, not per function.</p>
    # @!attribute ttl_minimum_seconds
    #   <p>The lower bound, in seconds, on how long MediaTailor caches a response. MediaTailor also uses this value as the cache duration when a response has no <code>Cache-Control</code> <code>max-age</code> directive.</p>
    #   @return [Integer]
    # @!attribute ttl_maximum_seconds
    #   <p>The upper bound, in seconds, on how long MediaTailor caches a response. This value must be greater than or equal to <code>TtlMinimumSeconds</code>.</p>
    #   @return [Integer]
    # @!attribute key
    #   <p>A JSONata expression that MediaTailor evaluates to a custom cache key. By default, the cache key is a hash of the HTTP URL, the request body, and the HTTP method; request headers are not included. You can specify a custom cache key expression to vary caching by request headers and more. The evaluated key must be smaller than 1 KB; otherwise the HTTP function will fail.</p>
    #   @return [String]
    class HttpRequestCacheConfiguration < Struct.new(
      nil,
      :ttl_minimum_seconds,
      :ttl_maximum_seconds,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an <code>HTTP_REQUEST</code> function. Specifies the HTTP method, URL, headers, body, timeout, and output expressions for the request. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-types-http-request.html">HTTP_REQUEST</a> in the <i>MediaTailor User Guide</i>.</p>
    # @!attribute runtime
    #   <p>The expression language used to evaluate expressions in the function configuration. Set this to <code>JSONata</code>.</p>
    #   @return [String]
    # @!attribute output
    #   <p>A map of output bindings. Each key is a namespaced output path (such as <code>player_params.device_type</code> or <code>temp.identity</code>), and each value is an expression that MediaTailor evaluates at runtime. Output expressions in an <code>HTTP_REQUEST</code> function can reference the <code>response</code> object returned by the HTTP call. For more information about expression syntax, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-jsonata.html">JSONata expression reference</a> in the <i>MediaTailor User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute method_type
    #   <p>The HTTP method for the request. Valid values: <code>GET</code> and <code>POST</code>.</p>
    #   @return [String]
    # @!attribute request_timeout_milliseconds
    #   <p>The maximum time, in milliseconds, that MediaTailor waits for a response from the external service. If the call exceeds this timeout, MediaTailor sets the response status code to <code>null</code> and proceeds with output expression evaluation. Valid values: <code>100</code> to <code>2000</code>.</p>
    #   @return [Integer]
    # @!attribute url
    #   <p>An expression that evaluates to the request URL. Use <code>{%...%}</code> delimiters for dynamic expressions. The maximum length after evaluation is 2,048 characters.</p>
    #   @return [String]
    # @!attribute body
    #   <p>An expression that evaluates to the request body. Used with <code>POST</code> requests. The maximum size after evaluation is 64 KB.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>A map of HTTP header names to expression values. MediaTailor evaluates each header value expression at runtime and includes the result in the outbound HTTP request. Maximum 50 headers.</p>
    #   @return [Hash<String, String>]
    # @!attribute cache
    #   <p>The optional response-caching configuration for the function. When present, MediaTailor caches the responses that the function receives from the HTTP endpoint, within the time-to-live (TTL) bounds that you specify. Omit this configuration to disable response caching.</p>
    #   @return [Types::HttpRequestCacheConfiguration]
    class HttpRequestConfiguration < Struct.new(
      nil,
      :runtime,
      :output,
      :method_type,
      :request_timeout_milliseconds,
      :url,
      :body,
      :headers,
      :cache,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For <code>SCTE35_ENHANCED</code> output, defines a key and corresponding value. MediaTailor generates these pairs within the <code>EXT-X-ASSET</code>tag.</p>
    # @!attribute key
    #   <p>For <code>SCTE35_ENHANCED</code> output, defines a key. MediaTailor takes this key, and its associated value, and generates the key/value pair within the <code>EXT-X-ASSET</code>tag. If you specify a key, you must also specify a corresponding value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>For <code>SCTE35_ENHANCED</code> output, defines a value. MediaTailor; takes this value, and its associated key, and generates the key/value pair within the <code>EXT-X-ASSET</code>tag. If you specify a value, you must also specify a corresponding key.</p>
    #   @return [String]
    class KeyValuePair < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of alerts that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> alerts, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListAlerts</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListAlertsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of alerts that are associated with this resource.</p>
    #   @return [Array<Types::Alert>]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListAlertsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of channels that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> channels, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListChannels</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    #   @return [String]
    class ListChannelsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of channels that are associated with this account.</p>
    #   @return [Array<Types::Channel>]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListChannelsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of functions that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> functions, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses token-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListFunctions</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    #   @return [String]
    class ListFunctionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of functions associated with your account in the current Region.</p>
    #   @return [Array<Types::Function>]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListFunctions</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    #   @return [String]
    class ListFunctionsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of live sources that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> live sources, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListLiveSources</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name of the source location associated with this Live Sources list.</p>
    #   @return [String]
    class ListLiveSourcesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :source_location_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Lists the live sources.</p>
    #   @return [Array<Types::LiveSource>]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListLiveSourcesOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of playback configurations that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> playback configurations, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListPlaybackConfigurations</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    #   @return [String]
    class ListPlaybackConfigurationsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Array of playback configurations. This might be all the available configurations or a subset, depending on the settings that you provide and the total number of configurations stored.</p>
    #   @return [Array<Types::PlaybackConfiguration>]
    # @!attribute next_token
    #   <p>Pagination token returned by the GET list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListPlaybackConfigurationsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of prefetch schedules that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> prefetch schedules, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListPrefetchSchedules</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    #   @return [String]
    # @!attribute playback_configuration_name
    #   <p>Retrieves the prefetch schedule(s) for a specific playback configuration.</p>
    #   @return [String]
    # @!attribute schedule_type
    #   <p>The type of prefetch schedules that you want to list. <code>SINGLE</code> indicates that you want to list the configured single prefetch schedules. <code>RECURRING</code> indicates that you want to list the configured recurring prefetch schedules. <code>ALL</code> indicates that you want to list all configured prefetch schedules.</p>
    #   @return [String]
    # @!attribute stream_id
    #   <p>An optional filtering parameter whereby MediaTailor filters the prefetch schedules to include only specific streams.</p>
    #   @return [String]
    class ListPrefetchSchedulesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :playback_configuration_name,
      :schedule_type,
      :stream_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Lists the prefetch schedules. An empty <code>Items</code> list doesn't mean there aren't more items to fetch, just that that page was empty.</p>
    #   @return [Array<Types::PrefetchSchedule>]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListPrefetchSchedulesOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of source locations that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> source locations, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListSourceLocations</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    #   @return [String]
    class ListSourceLocationsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of source locations.</p>
    #   @return [Array<Types::SourceLocation>]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListSourceLocationsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with this resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with this resource. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of VOD sources that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> VOD sources, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListVodSources</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name of the source location associated with this VOD Source list.</p>
    #   @return [String]
    class ListVodSourcesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :source_location_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Lists the VOD sources.</p>
    #   @return [Array<Types::VodSource>]
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #   @return [String]
    class ListVodSourcesOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for pre-roll ad insertion.</p>
    # @!attribute ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS) for pre-roll ads. This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    #   @return [String]
    # @!attribute max_duration_seconds
    #   <p>The maximum allowed duration for the pre-roll ad avail. AWS Elemental MediaTailor won't play pre-roll ads to exceed this duration, regardless of the total duration of ads that the ADS returns.</p>
    #   @return [Integer]
    # @!attribute ad_decision_server_configuration
    #   <p>The configuration for the ad decision server (ADS) for live pre-roll ads. The configuration contains settings that control how MediaTailor processes VAST responses for pre-roll ad breaks.</p>
    #   @return [Types::PreRollAdDecisionServerConfiguration]
    class LivePreRollConfiguration < Struct.new(
      nil,
      :ad_decision_server_url,
      :max_duration_seconds,
      :ad_decision_server_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Live source configuration parameters.</p>
    # @!attribute arn
    #   <p>The ARN for the live source.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the live source was created.</p>
    #   @return [Time]
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations for the live source.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the live source was last modified.</p>
    #   @return [Time]
    # @!attribute live_source_name
    #   <p>The name that's used to refer to a live source.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the live source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class LiveSource < Struct.new(
      nil,
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines where AWS Elemental MediaTailor sends logs for the playback configuration.</p>
    # @!attribute percent_enabled
    #   <p>The percentage of session logs that MediaTailor sends to your configured log destination. For example, if your playback configuration has 1000 sessions and <code>percentEnabled</code> is set to <code>60</code>, MediaTailor sends logs for 600 of the sessions to CloudWatch Logs. MediaTailor decides at random which of the playback configuration sessions to send logs for. If you want to view logs for a specific session, you can use the <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html">debug log mode</a>.</p> <p>Valid values: <code>0</code> - <code>100</code> </p>
    #   @return [Integer]
    # @!attribute enabled_logging_strategies
    #   <p>The method used for collecting logs from AWS Elemental MediaTailor. <code>LEGACY_CLOUDWATCH</code> indicates that MediaTailor is sending logs directly to Amazon CloudWatch Logs. <code>VENDED_LOGS</code> indicates that MediaTailor is sending logs to CloudWatch, which then vends the logs to your destination of choice. Supported destinations are CloudWatch Logs log group, Amazon S3 bucket, and Amazon Data Firehose stream. </p>
    #   @return [Array<String>]
    # @!attribute ads_interaction_log
    #   <p>Settings for customizing what events are included in logs for interactions with the ad decision server (ADS).</p>
    #   @return [Types::AdsInteractionLog]
    # @!attribute manifest_service_interaction_log
    #   <p>Settings for customizing what events are included in logs for interactions with the origin server.</p>
    #   @return [Types::ManifestServiceInteractionLog]
    class LogConfiguration < Struct.new(
      nil,
      :percent_enabled,
      :enabled_logging_strategies,
      :ads_interaction_log,
      :manifest_service_interaction_log,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:percent_enabled] = 0 unless options.key?(:percent_enabled)
        super
      end
    end

    # <p>The log configuration for the channel.</p>
    # @!attribute log_types
    #   <p>The log types.</p>
    #   @return [Array<String>]
    class LogConfigurationForChannel < Struct.new(
      nil,
      :log_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    # @!attribute ad_marker_passthrough
    #   <p>For HLS, when set to <code>true</code>, MediaTailor passes through <code>EXT-X-CUE-IN</code>, <code>EXT-X-CUE-OUT</code>, and <code>EXT-X-SPLICEPOINT-SCTE35</code> ad markers from the origin manifest to the MediaTailor personalized manifest.</p> <p>No logic is applied to these ad markers. For example, if <code>EXT-X-CUE-OUT</code> has a value of <code>60</code>, but no ads are filled for that ad break, MediaTailor will not set the value to <code>0</code>.</p>
    #   @return [Types::AdMarkerPassthrough]
    class ManifestProcessingRules < Struct.new(
      nil,
      :ad_marker_passthrough,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for customizing what events are included in logs for interactions with the origin server.</p> <p>For more information about manifest service logs, including descriptions of the event types, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/log-types.html">MediaTailor manifest logs description and event types</a> in Elemental MediaTailor User Guide.</p>
    # @!attribute publish_opt_in_event_types
    #   <p>Indicates that MediaTailor will emit the selected events in the logs for playback sessions that are initialized with this configuration. These events are not emitted by default and must be explicitly opted in.</p>
    #   @return [Array<String>]
    # @!attribute exclude_event_types
    #   <p>Indicates that MediaTailor won't emit the selected events in the logs for playback sessions that are initialized with this configuration.</p>
    #   @return [Array<String>]
    class ManifestServiceInteractionLog < Struct.new(
      nil,
      :publish_opt_in_event_types,
      :exclude_event_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A playback configuration. For information about MediaTailor configurations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html">Working with configurations in AWS Elemental MediaTailor</a>.</p>
    # @!attribute ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    #   @return [String]
    # @!attribute avail_suppression
    #   <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    #   @return [Types::AvailSuppression]
    # @!attribute bumper
    #   <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    #   @return [Types::Bumper]
    # @!attribute cdn_configuration
    #   <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    #   @return [Types::CdnConfiguration]
    # @!attribute configuration_aliases
    #   <p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domains.html">Domain Variables</a>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute dash_configuration
    #   <p>The configuration for a DASH source.</p>
    #   @return [Types::DashConfiguration]
    # @!attribute hls_configuration
    #   <p>The configuration for HLS content.</p>
    #   @return [Types::HlsConfiguration]
    # @!attribute insertion_mode
    #   <p>The setting that controls whether players can use stitched or guided ad insertion. The default, <code>STITCHED_ONLY</code>, forces all player sessions to use stitched (server-side) ad insertion. Choosing <code>PLAYER_SELECT</code> allows players to select either stitched or guided ad insertion at session-initialization time. The default for players that do not specify an insertion mode is stitched.</p>
    #   @return [String]
    # @!attribute live_pre_roll_configuration
    #   <p>The configuration for pre-roll ad insertion.</p>
    #   @return [Types::LivePreRollConfiguration]
    # @!attribute log_configuration
    #   <p>Defines where AWS Elemental MediaTailor sends logs for the playback configuration.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute manifest_processing_rules
    #   <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    #   @return [Types::ManifestProcessingRules]
    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #   @return [String]
    # @!attribute personalization_threshold_seconds
    #   <p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Behavior in AWS Elemental MediaTailor</a>.</p>
    #   @return [Integer]
    # @!attribute playback_configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the playback configuration.</p>
    #   @return [String]
    # @!attribute playback_endpoint_prefix
    #   <p>The URL that your player accesses to get a manifest from AWS Elemental MediaTailor.</p>
    #   @return [String]
    # @!attribute dual_stack_playback_endpoint_prefix
    #   <p>The dual-stack (IPv4 and IPv6) URL that your player accesses to get a manifest from AWS Elemental MediaTailor.</p>
    #   @return [String]
    # @!attribute session_initialization_endpoint_prefix
    #   <p>The URL that your player uses to initialize a session that uses client-side reporting.</p>
    #   @return [String]
    # @!attribute dual_stack_session_initialization_endpoint_prefix
    #   <p>The dual-stack (IPv4 and IPv6) URL that your player uses to initialize a session that uses client-side reporting.</p>
    #   @return [String]
    # @!attribute slate_ad_url
    #   <p>The URL for a video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the playback configuration. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute transcode_profile_name
    #   <p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>
    #   @return [String]
    # @!attribute video_content_source_url
    #   <p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>
    #   @return [String]
    # @!attribute ad_conditioning_configuration
    #   <p>The setting that indicates what conditioning MediaTailor will perform on ads that the ad decision server (ADS) returns, and what priority MediaTailor uses when inserting ads.</p>
    #   @return [Types::AdConditioningConfiguration]
    # @!attribute ad_decision_server_configuration
    #   <p>Configuration parameters for customizing HTTP requests sent to the ad decision server (ADS). This allows you to specify the HTTP method, headers, request body, and compression settings for ADS requests.</p>
    #   @return [Types::AdDecisionServerConfiguration]
    # @!attribute yield_optimization_configuration
    #   <p>Configuration for Yield Optimization, which fills unsold ad inventory in ad breaks with programmatic ads from Amazon Publisher Services (APS).</p>
    #   @return [Types::YieldOptimizationConfiguration]
    # @!attribute function_mapping
    #   <p>A map of lifecycle hook event names to function identifiers. The function mapping specifies which function MediaTailor executes at each lifecycle hook during ad insertion. Valid keys are <code>PRE_SESSION_INITIALIZATION</code>, <code>PRE_ADS_REQUEST</code>, <code>POST_ADS_RESPONSE</code>, and <code>PRE_MANIFEST_INSERTION</code>. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-hooks.html">Functions lifecycle hooks</a> in the <i>MediaTailor User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute ads_personalization_timeouts
    #   <p>The timeout settings for ad decision server interactions. These settings control how long MediaTailor waits for ADS responses and the total time budget for ad personalization across live, VOD, and prefetch workflows.</p>
    #   @return [Types::AdsPersonalizationTimeouts]
    # @!attribute ads_personalization_concurrency
    #   <p>The concurrency settings for ad decision server interactions. These settings control how many simultaneous ADS requests MediaTailor makes per manifest request.</p>
    #   @return [Types::AdsPersonalizationConcurrency]
    # @!attribute beaconing_configuration
    #   <p>The beaconing configuration for this playback configuration, which controls whether MediaTailor includes beacons of its own in the ad tracking response.</p>
    #   @return [Types::BeaconingConfiguration]
    class PlaybackConfiguration < Struct.new(
      nil,
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :hls_configuration,
      :insertion_mode,
      :live_pre_roll_configuration,
      :log_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :dual_stack_playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :dual_stack_session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url,
      :ad_conditioning_configuration,
      :ad_decision_server_configuration,
      :yield_optimization_configuration,
      :function_mapping,
      :ads_personalization_timeouts,
      :ads_personalization_concurrency,
      :beaconing_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:insertion_mode] = 'STITCHED_ONLY' unless options.key?(:insertion_mode)
        super
      end
    end

    # <p>The ad decision server configuration for live pre-roll ads. It contains settings that control how MediaTailor processes VAST responses for pre-roll ad breaks.</p>
    # @!attribute vast_response
    #   <p>The settings that control how MediaTailor processes VAST responses for live pre-roll ad breaks.</p>
    #   @return [Types::PreRollVastResponse]
    class PreRollAdDecisionServerConfiguration < Struct.new(
      nil,
      :vast_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings that control how MediaTailor processes VAST responses from the ad decision server for live pre-roll ad breaks.</p>
    # @!attribute ad_sequencing_mode
    #   <p>The ad sequencing mode for live pre-roll ads. <code>FOLLOW_AD_SEQUENCE</code> inserts sequenced ads in increasing order and uses standalone ads only as replacements when a sequenced ad fails. <code>IGNORE_AD_SEQUENCE</code> inserts ads in the order they appear in the VAST response, regardless of sequence attributes. The default behavior is <code>IGNORE_AD_SEQUENCE</code>.</p>
    #   @return [String]
    class PreRollVastResponse < Struct.new(
      nil,
      :ad_sequencing_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For single prefetch, describes how and when that MediaTailor places prefetched ads into upcoming ad breaks.</p>
    # @!attribute avail_matching_criteria
    #   <p>If you only want MediaTailor to insert prefetched ads into avails (ad breaks) that match specific dynamic variables, such as <code>scte.event_id</code>, set the avail matching criteria.</p>
    #   @return [Array<Types::AvailMatchingCriteria>]
    # @!attribute end_time
    #   <p>The time when MediaTailor no longer considers the prefetched ads for use in an ad break. MediaTailor automatically deletes prefetch schedules no less than seven days after the end time. If you'd like to manually delete the prefetch schedule, you can call <code>DeletePrefetchSchedule</code>.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>The time when prefetched ads are considered for use in an ad break. If you don't specify <code>StartTime</code>, the prefetched ads are available after MediaTailor retrieves them from the ad decision server.</p>
    #   @return [Time]
    class PrefetchConsumption < Struct.new(
      nil,
      :avail_matching_criteria,
      :end_time,
      :start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains settings governing when MediaTailor prefetches ads, and which dynamic variables that MediaTailor includes in the request to the ad decision server.</p>
    # @!attribute dynamic_variables
    #   <p>The dynamic variables to use for substitution during prefetch requests to the ad decision server (ADS).</p> <p>You initially configure <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables.html">dynamic variables</a> for the ADS URL when you set up your playback configuration. When you specify <code>DynamicVariables</code> for prefetch retrieval, MediaTailor includes the dynamic variables in the request to the ADS.</p>
    #   @return [Hash<String, String>]
    # @!attribute end_time
    #   <p>The time when prefetch retrieval ends for the ad break. Prefetching will be attempted for manifest requests that occur at or before this time.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>The time when prefetch retrievals can start for this break. Ad prefetching will be attempted for manifest requests that occur at or after this time. Defaults to the current time. If not specified, the prefetch retrieval starts as soon as possible.</p>
    #   @return [Time]
    # @!attribute traffic_shaping_type
    #   <p>Indicates the type of traffic shaping used to limit the number of requests to the ADS at one time.</p>
    #   @return [String]
    # @!attribute traffic_shaping_retrieval_window
    #   <p>The configuration that tells Elemental MediaTailor how many seconds to spread out requests to the ad decision server (ADS). Instead of sending ADS requests for all sessions at the same time, MediaTailor spreads the requests across the amount of time specified in the retrieval window.</p>
    #   @return [Types::TrafficShapingRetrievalWindow]
    # @!attribute traffic_shaping_tps_configuration
    #   <p>The configuration for TPS-based traffic shaping. This approach limits requests to the ad decision server (ADS) based on transactions per second and concurrent users.</p>
    #   @return [Types::TrafficShapingTpsConfiguration]
    class PrefetchRetrieval < Struct.new(
      nil,
      :dynamic_variables,
      :end_time,
      :start_time,
      :traffic_shaping_type,
      :traffic_shaping_retrieval_window,
      :traffic_shaping_tps_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain ads before an ad break happens. For more information about ad prefetching, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html">Using ad prefetching</a> in the <i>MediaTailor User Guide</i>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the prefetch schedule.</p>
    #   @return [String]
    # @!attribute consumption
    #   <p>Consumption settings determine how, and when, MediaTailor places the prefetched ads into ad breaks for single prefetch schedules. Ad consumption occurs within a span of time that you define, called a <i>consumption window</i>. You can designate which ad breaks that MediaTailor fills with prefetch ads by setting avail matching criteria.</p>
    #   @return [Types::PrefetchConsumption]
    # @!attribute name
    #   <p>The name of the prefetch schedule. The name must be unique among all prefetch schedules that are associated with the specified playback configuration.</p>
    #   @return [String]
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration to create the prefetch schedule for.</p>
    #   @return [String]
    # @!attribute retrieval
    #   <p>A complex type that contains settings for prefetch retrieval from the ad decision server (ADS).</p>
    #   @return [Types::PrefetchRetrieval]
    # @!attribute schedule_type
    #   <p>The frequency that MediaTailor creates prefetch schedules. <code>SINGLE</code> indicates that this schedule applies to one ad break. <code>RECURRING</code> indicates that MediaTailor automatically creates a schedule for each ad avail in a live event.</p> <p>For more information about the prefetch types and when you might use each, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html">Prefetching ads in Elemental MediaTailor.</a> </p>
    #   @return [String]
    # @!attribute recurring_prefetch_configuration
    #   <p>The settings that determine how and when MediaTailor prefetches ads and inserts them into ad breaks.</p>
    #   @return [Types::RecurringPrefetchConfiguration]
    # @!attribute stream_id
    #   <p>An optional stream identifier that you can specify in order to prefetch for multiple streams that use the same playback configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the prefetch schedule. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class PrefetchSchedule < Struct.new(
      nil,
      :arn,
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :schedule_type,
      :recurring_prefetch_configuration,
      :stream_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The channel name associated with this Channel Policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>Adds an IAM role that determines the permissions of your channel.</p>
    #   @return [String]
    class PutChannelPolicyInput < Struct.new(
      nil,
      :channel_name,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutChannelPolicyOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # -- Define Mixin --
    # @!attribute function_id
    #   <p>The identifier of the function. The identifier must be unique within your account.</p>
    #   @return [String]
    # @!attribute function_type
    #   <p>The type of the function, which determines what the function can do at runtime. Valid values:</p> <ul> <li> <p> <code>CUSTOM_OUTPUT</code> – Evaluates expressions and produces output bindings with no external calls.</p> </li> <li> <p> <code>HTTP_REQUEST</code> – Makes an HTTP call to an external service and evaluates output expressions that can reference the response.</p> </li> <li> <p> <code>AWS_SERVICE_REQUEST</code> – Makes an authenticated request to a supported AWS service API and evaluates output expressions that can reference the response.</p> </li> <li> <p> <code>VAST_REQUEST</code> – Calls a VAST endpoint, parses the response as VAST, and makes the parsed ads available to output expressions.</p> </li> <li> <p> <code>SEQUENTIAL_EXECUTOR</code> – Runs a sequence of child functions in order, passing data between steps through temporary data.</p> </li> <li> <p> <code>CONCURRENT_EXECUTOR</code> – Runs a set of child functions in parallel, up to a maximum concurrency, and combines their output when all functions complete.</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-types.html">Function types and composition</a> in the <i>MediaTailor User Guide</i>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the function.</p>
    #   @return [String]
    # @!attribute http_request_configuration
    #   <p>The configuration for an <code>HTTP_REQUEST</code> function. Specifies the HTTP method, URL, headers, body, timeout, and output expressions. Required when <code>FunctionType</code> is <code>HTTP_REQUEST</code>.</p>
    #   @return [Types::HttpRequestConfiguration]
    # @!attribute aws_service_request_configuration
    #   <p>The configuration for an <code>AWS_SERVICE_REQUEST</code> function. You must specify this parameter when <code>FunctionType</code> is <code>AWS_SERVICE_REQUEST</code>.</p>
    #   @return [Types::AwsServiceRequestConfiguration]
    # @!attribute custom_output_configuration
    #   <p>The configuration for a <code>CUSTOM_OUTPUT</code> function. Specifies the runtime and output expressions. Required when <code>FunctionType</code> is <code>CUSTOM_OUTPUT</code>.</p>
    #   @return [Types::CustomOutputConfiguration]
    # @!attribute concurrent_executor_configuration
    #   <p>The configuration for a <code>CONCURRENT_EXECUTOR</code> function. Specifies the list of child functions to run in parallel, the maximum concurrency, an optional output block, and a timeout. Required when <code>FunctionType</code> is <code>CONCURRENT_EXECUTOR</code>.</p>
    #   @return [Types::ConcurrentExecutorConfiguration]
    # @!attribute sequential_executor_configuration
    #   <p>The configuration for a <code>SEQUENTIAL_EXECUTOR</code> function. Specifies the ordered list of child functions to execute, an optional output block, and a timeout. Required when <code>FunctionType</code> is <code>SEQUENTIAL_EXECUTOR</code>.</p>
    #   @return [Types::SequentialExecutorConfiguration]
    # @!attribute vast_request_configuration
    #   <p>The configuration for a <code>VAST_REQUEST</code> function. Specifies the HTTP method, URL, headers, body, timeout, and output expressions. Required when <code>FunctionType</code> is <code>VAST_REQUEST</code>.</p>
    #   @return [Types::VastRequestConfiguration]
    # @!attribute tags
    #   <p>The tags to assign to the function. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class PutFunctionRequest < Struct.new(
      nil,
      :function_id,
      :function_type,
      :description,
      :http_request_configuration,
      :aws_service_request_configuration,
      :custom_output_configuration,
      :concurrent_executor_configuration,
      :sequential_executor_configuration,
      :vast_request_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # -- Define Mixin --
    # @!attribute function_id
    #   <p>The identifier of the function.</p>
    #   @return [String]
    # @!attribute function_type
    #   <p>The type of the function.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the function.</p>
    #   @return [String]
    # @!attribute http_request_configuration
    #   <p>The configuration for an <code>HTTP_REQUEST</code> function.</p>
    #   @return [Types::HttpRequestConfiguration]
    # @!attribute aws_service_request_configuration
    #   <p>The configuration for an <code>AWS_SERVICE_REQUEST</code> function. Specifies the target service, target Region, and request parameters.</p>
    #   @return [Types::AwsServiceRequestConfiguration]
    # @!attribute custom_output_configuration
    #   <p>The configuration for a <code>CUSTOM_OUTPUT</code> function.</p>
    #   @return [Types::CustomOutputConfiguration]
    # @!attribute concurrent_executor_configuration
    #   <p>The configuration for a <code>CONCURRENT_EXECUTOR</code> function.</p>
    #   @return [Types::ConcurrentExecutorConfiguration]
    # @!attribute sequential_executor_configuration
    #   <p>The configuration for a <code>SEQUENTIAL_EXECUTOR</code> function.</p>
    #   @return [Types::SequentialExecutorConfiguration]
    # @!attribute vast_request_configuration
    #   <p>The configuration for a <code>VAST_REQUEST</code> function.</p>
    #   @return [Types::VastRequestConfiguration]
    # @!attribute tags
    #   <p>The tags assigned to the function. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #   @return [String]
    class PutFunctionResponse < Struct.new(
      nil,
      :function_id,
      :function_type,
      :description,
      :http_request_configuration,
      :aws_service_request_configuration,
      :custom_output_configuration,
      :concurrent_executor_configuration,
      :sequential_executor_configuration,
      :vast_request_configuration,
      :tags,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    #   @return [String]
    # @!attribute avail_suppression
    #   <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    #   @return [Types::AvailSuppression]
    # @!attribute bumper
    #   <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    #   @return [Types::Bumper]
    # @!attribute cdn_configuration
    #   <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    #   @return [Types::CdnConfiguration]
    # @!attribute configuration_aliases
    #   <p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domains.html">Domain Variables</a>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute dash_configuration
    #   <p>The configuration for DASH content.</p>
    #   @return [Types::DashConfigurationForPut]
    # @!attribute insertion_mode
    #   <p>The setting that controls whether players can use stitched or guided ad insertion. The default, <code>STITCHED_ONLY</code>, forces all player sessions to use stitched (server-side) ad insertion. Choosing <code>PLAYER_SELECT</code> allows players to select either stitched or guided ad insertion at session-initialization time. The default for players that do not specify an insertion mode is stitched.</p>
    #   @return [String]
    # @!attribute live_pre_roll_configuration
    #   <p>The configuration for pre-roll ad insertion.</p>
    #   @return [Types::LivePreRollConfiguration]
    # @!attribute manifest_processing_rules
    #   <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    #   @return [Types::ManifestProcessingRules]
    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #   @return [String]
    # @!attribute personalization_threshold_seconds
    #   <p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Behavior in AWS Elemental MediaTailor</a>.</p>
    #   @return [Integer]
    # @!attribute slate_ad_url
    #   <p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the playback configuration. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute transcode_profile_name
    #   <p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>
    #   @return [String]
    # @!attribute video_content_source_url
    #   <p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>
    #   @return [String]
    # @!attribute ad_conditioning_configuration
    #   <p>The setting that indicates what conditioning MediaTailor will perform on ads that the ad decision server (ADS) returns, and what priority MediaTailor uses when inserting ads. </p>
    #   @return [Types::AdConditioningConfiguration]
    # @!attribute ad_decision_server_configuration
    #   <p>The configuration for customizing HTTP requests to the ad decision server (ADS). This includes settings for request method, headers, body content, and compression options.</p>
    #   @return [Types::AdDecisionServerConfiguration]
    # @!attribute yield_optimization_configuration
    #   <p>Configuration for Yield Optimization, which fills unsold ad inventory in ad breaks with programmatic ads from Amazon Publisher Services (APS).</p>
    #   @return [Types::YieldOptimizationConfiguration]
    # @!attribute function_mapping
    #   <p>A map of lifecycle hook event names to function identifiers. The function mapping specifies which function MediaTailor executes at each lifecycle hook during ad insertion. Valid keys are <code>PRE_SESSION_INITIALIZATION</code>, <code>PRE_ADS_REQUEST</code>, <code>POST_ADS_RESPONSE</code>, and <code>PRE_MANIFEST_INSERTION</code>. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-hooks.html">Functions lifecycle hooks</a> in the <i>MediaTailor User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute ads_personalization_timeouts
    #   <p>The timeout settings for ad decision server interactions. These settings control how long MediaTailor waits for ADS responses and the total time budget for ad personalization across live, VOD, and prefetch workflows.</p>
    #   @return [Types::AdsPersonalizationTimeouts]
    # @!attribute ads_personalization_concurrency
    #   <p>The concurrency settings for ad decision server interactions. These settings control how many simultaneous ADS requests MediaTailor makes per manifest request.</p>
    #   @return [Types::AdsPersonalizationConcurrency]
    # @!attribute beaconing_configuration
    #   <p>The beaconing configuration for this playback configuration, which controls whether MediaTailor includes beacons of its own in the ad tracking response. If you omit this setting, MediaTailor uses <code>INSIGHTS</code>.</p>
    #   @return [Types::BeaconingConfiguration]
    class PutPlaybackConfigurationInput < Struct.new(
      nil,
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :insertion_mode,
      :live_pre_roll_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url,
      :ad_conditioning_configuration,
      :ad_decision_server_configuration,
      :yield_optimization_configuration,
      :function_mapping,
      :ads_personalization_timeouts,
      :ads_personalization_concurrency,
      :beaconing_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    #   @return [String]
    # @!attribute avail_suppression
    #   <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    #   @return [Types::AvailSuppression]
    # @!attribute bumper
    #   <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    #   @return [Types::Bumper]
    # @!attribute cdn_configuration
    #   <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    #   @return [Types::CdnConfiguration]
    # @!attribute configuration_aliases
    #   <p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domains.html">Domain Variables</a>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute dash_configuration
    #   <p>The configuration for DASH content.</p>
    #   @return [Types::DashConfiguration]
    # @!attribute hls_configuration
    #   <p>The configuration for HLS content.</p>
    #   @return [Types::HlsConfiguration]
    # @!attribute insertion_mode
    #   <p>The setting that controls whether players can use stitched or guided ad insertion. The default, <code>STITCHED_ONLY</code>, forces all player sessions to use stitched (server-side) ad insertion. Choosing <code>PLAYER_SELECT</code> allows players to select either stitched or guided ad insertion at session-initialization time. The default for players that do not specify an insertion mode is stitched.</p>
    #   @return [String]
    # @!attribute live_pre_roll_configuration
    #   <p>The configuration for pre-roll ad insertion.</p>
    #   @return [Types::LivePreRollConfiguration]
    # @!attribute log_configuration
    #   <p>The configuration that defines where AWS Elemental MediaTailor sends logs for the playback configuration.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute manifest_processing_rules
    #   <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    #   @return [Types::ManifestProcessingRules]
    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #   @return [String]
    # @!attribute personalization_threshold_seconds
    #   <p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Behavior in AWS Elemental MediaTailor</a>.</p>
    #   @return [Integer]
    # @!attribute playback_configuration_arn
    #   <p>The Amazon Resource Name (ARN) associated with the playback configuration.</p>
    #   @return [String]
    # @!attribute playback_endpoint_prefix
    #   <p>The playback endpoint prefix associated with the playback configuration.</p>
    #   @return [String]
    # @!attribute dual_stack_playback_endpoint_prefix
    #   <p>The dual-stack (IPv4 and IPv6) playback endpoint prefix associated with the playback configuration.</p>
    #   @return [String]
    # @!attribute session_initialization_endpoint_prefix
    #   <p>The session initialization endpoint prefix associated with the playback configuration.</p>
    #   @return [String]
    # @!attribute dual_stack_session_initialization_endpoint_prefix
    #   <p>The dual-stack (IPv4 and IPv6) session initialization endpoint prefix associated with the playback configuration.</p>
    #   @return [String]
    # @!attribute slate_ad_url
    #   <p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the playback configuration. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute transcode_profile_name
    #   <p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>
    #   @return [String]
    # @!attribute video_content_source_url
    #   <p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>
    #   @return [String]
    # @!attribute ad_conditioning_configuration
    #   <p>The setting that indicates what conditioning MediaTailor will perform on ads that the ad decision server (ADS) returns, and what priority MediaTailor uses when inserting ads. </p>
    #   @return [Types::AdConditioningConfiguration]
    # @!attribute ad_decision_server_configuration
    #   <p>The configuration for customizing HTTP requests to the ad decision server (ADS). This includes settings for request method, headers, body content, and compression options.</p>
    #   @return [Types::AdDecisionServerConfiguration]
    # @!attribute yield_optimization_configuration
    #   <p>Configuration for Yield Optimization, which fills unsold ad inventory in ad breaks with programmatic ads from Amazon Publisher Services (APS).</p>
    #   @return [Types::YieldOptimizationConfiguration]
    # @!attribute function_mapping
    #   <p>A map of lifecycle hook event names to function identifiers. The function mapping specifies which function MediaTailor executes at each lifecycle hook during ad insertion. Valid keys are <code>PRE_SESSION_INITIALIZATION</code>, <code>PRE_ADS_REQUEST</code>, <code>POST_ADS_RESPONSE</code>, and <code>PRE_MANIFEST_INSERTION</code>. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-hooks.html">Functions lifecycle hooks</a> in the <i>MediaTailor User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute ads_personalization_timeouts
    #   <p>The timeout settings for ad decision server interactions. These settings control how long MediaTailor waits for ADS responses and the total time budget for ad personalization across live, VOD, and prefetch workflows.</p>
    #   @return [Types::AdsPersonalizationTimeouts]
    # @!attribute ads_personalization_concurrency
    #   <p>The concurrency settings for ad decision server interactions. These settings control how many simultaneous ADS requests MediaTailor makes per manifest request.</p>
    #   @return [Types::AdsPersonalizationConcurrency]
    # @!attribute beaconing_configuration
    #   <p>The beaconing configuration for this playback configuration, which controls whether MediaTailor includes beacons of its own in the ad tracking response.</p>
    #   @return [Types::BeaconingConfiguration]
    class PutPlaybackConfigurationOutput < Struct.new(
      nil,
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :hls_configuration,
      :insertion_mode,
      :live_pre_roll_configuration,
      :log_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :dual_stack_playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :dual_stack_session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url,
      :ad_conditioning_configuration,
      :ad_decision_server_configuration,
      :yield_optimization_configuration,
      :function_mapping,
      :ads_personalization_timeouts,
      :ads_personalization_concurrency,
      :beaconing_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:insertion_mode] = 'STITCHED_ONLY' unless options.key?(:insertion_mode)
        super
      end
    end

    # <p>The settings that determine how and when MediaTailor places prefetched ads into upcoming ad breaks for recurring prefetch scedules.</p>
    # @!attribute retrieved_ad_expiration_seconds
    #   <p>The number of seconds that an ad is available for insertion after it was prefetched.</p>
    #   @return [Integer]
    # @!attribute avail_matching_criteria
    #   <p>The configuration for the dynamic variables that determine which ad breaks that MediaTailor inserts prefetched ads in.</p>
    #   @return [Array<Types::AvailMatchingCriteria>]
    class RecurringConsumption < Struct.new(
      nil,
      :retrieved_ad_expiration_seconds,
      :avail_matching_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that defines how MediaTailor performs recurring prefetch. </p>
    # @!attribute start_time
    #   <p>The start time for the window that MediaTailor prefetches and inserts ads in a live event. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the window that MediaTailor prefetches and inserts ads in a live event. </p>
    #   @return [Time]
    # @!attribute recurring_consumption
    #   <p>The settings that determine how and when MediaTailor places prefetched ads into upcoming ad breaks for recurring prefetch scedules.</p>
    #   @return [Types::RecurringConsumption]
    # @!attribute recurring_retrieval
    #   <p>The configuration for prefetch ad retrieval from the ADS.</p>
    #   @return [Types::RecurringRetrieval]
    class RecurringPrefetchConfiguration < Struct.new(
      nil,
      :start_time,
      :end_time,
      :recurring_consumption,
      :recurring_retrieval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>With recurring prefetch, MediaTailor automatically prefetches ads for every avail that occurs during the retrieval window. The following configurations describe the MediaTailor behavior when prefetching ads for a live event.</p>
    # @!attribute dynamic_variables
    #   <p>The dynamic variables to use for substitution during prefetch requests to the ADS.</p>
    #   @return [Hash<String, String>]
    # @!attribute delay_after_avail_end_seconds
    #   <p>The number of seconds that MediaTailor waits after an ad avail before prefetching ads for the next avail. If not set, the default is 0 (no delay).</p>
    #   @return [Integer]
    # @!attribute traffic_shaping_type
    #   <p>Indicates the type of traffic shaping used to limit the number of requests to the ADS at one time.</p>
    #   @return [String]
    # @!attribute traffic_shaping_retrieval_window
    #   <p>The configuration that tells Elemental MediaTailor how many seconds to spread out requests to the ad decision server (ADS). Instead of sending ADS requests for all sessions at the same time, MediaTailor spreads the requests across the amount of time specified in the retrieval window.</p>
    #   @return [Types::TrafficShapingRetrievalWindow]
    # @!attribute traffic_shaping_tps_configuration
    #   <p>The configuration for TPS-based traffic shaping. This approach limits requests to the ad decision server (ADS) based on transactions per second and concurrent users.</p>
    #   @return [Types::TrafficShapingTpsConfiguration]
    class RecurringRetrieval < Struct.new(
      nil,
      :dynamic_variables,
      :delay_after_avail_end_seconds,
      :traffic_shaping_type,
      :traffic_shaping_retrieval_window,
      :traffic_shaping_tps_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output configuration for this channel.</p>
    # @!attribute dash_playlist_settings
    #   <p>DASH manifest configuration parameters.</p>
    #   @return [Types::DashPlaylistSettings]
    # @!attribute hls_playlist_settings
    #   <p>HLS playlist configuration parameters.</p>
    #   @return [Types::HlsPlaylistSettings]
    # @!attribute manifest_name
    #   <p>The name of the manifest for the channel. The name appears in the <code>PlaybackUrl</code>.</p>
    #   @return [String]
    # @!attribute source_group
    #   <p>A string used to match which <code>HttpPackageConfiguration</code> is used for each <code>VodSource</code>.</p>
    #   @return [String]
    class RequestOutputItem < Struct.new(
      nil,
      :dash_playlist_settings,
      :hls_playlist_settings,
      :manifest_name,
      :source_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output item response.</p>
    # @!attribute dash_playlist_settings
    #   <p>DASH manifest configuration settings.</p>
    #   @return [Types::DashPlaylistSettings]
    # @!attribute hls_playlist_settings
    #   <p>HLS manifest configuration settings.</p>
    #   @return [Types::HlsPlaylistSettings]
    # @!attribute manifest_name
    #   <p>The name of the manifest for the channel that will appear in the channel output's playback URL.</p>
    #   @return [String]
    # @!attribute playback_url
    #   <p>The URL that your player uses for playback.</p>
    #   @return [String]
    # @!attribute dual_stack_playback_url
    #   <p>The dual-stack (IPv4 and IPv6) URL that your player uses for playback.</p>
    #   @return [String]
    # @!attribute source_group
    #   <p>A string used to associate a package configuration source group with a channel output.</p>
    #   @return [String]
    class ResponseOutputItem < Struct.new(
      nil,
      :dash_playlist_settings,
      :hls_playlist_settings,
      :manifest_name,
      :playback_url,
      :dual_stack_playback_url,
      :source_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The schedule's ad break properties.</p>
    # @!attribute approximate_duration_seconds
    #   <p>The approximate duration of the ad break, in seconds.</p>
    #   @return [Integer]
    # @!attribute approximate_start_time
    #   <p>The approximate time that the ad will start playing.</p>
    #   @return [Time]
    # @!attribute source_location_name
    #   <p>The name of the source location containing the VOD source used for the ad break.</p>
    #   @return [String]
    # @!attribute vod_source_name
    #   <p>The name of the VOD source used for the ad break.</p>
    #   @return [String]
    class ScheduleAdBreak < Struct.new(
      nil,
      :approximate_duration_seconds,
      :approximate_start_time,
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Schedule configuration parameters. A channel must be stopped before changes can be made to the schedule.</p>
    # @!attribute transition
    #   <p>Program transition configurations.</p>
    #   @return [Types::Transition]
    # @!attribute clip_range
    #   <p>Program clip range configuration.</p>
    #   @return [Types::ClipRange]
    class ScheduleConfiguration < Struct.new(
      nil,
      :transition,
      :clip_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties for a schedule.</p>
    # @!attribute approximate_duration_seconds
    #   <p>The approximate duration of this program, in seconds.</p>
    #   @return [Integer]
    # @!attribute approximate_start_time
    #   <p>The approximate time that the program will start playing.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The ARN of the program.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel that uses this schedule.</p>
    #   @return [String]
    # @!attribute live_source_name
    #   <p>The name of the live source used for the program.</p>
    #   @return [String]
    # @!attribute program_name
    #   <p>The name of the program.</p>
    #   @return [String]
    # @!attribute schedule_ad_breaks
    #   <p>The schedule's ad break properties.</p>
    #   @return [Array<Types::ScheduleAdBreak>]
    # @!attribute schedule_entry_type
    #   <p>The type of schedule entry.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #   @return [String]
    # @!attribute vod_source_name
    #   <p>The name of the VOD source.</p>
    #   @return [String]
    # @!attribute audiences
    #   <p>The list of audiences defined in ScheduleEntry.</p>
    #   @return [Array<String>]
    class ScheduleEntry < Struct.new(
      nil,
      :approximate_duration_seconds,
      :approximate_start_time,
      :arn,
      :channel_name,
      :live_source_name,
      :program_name,
      :schedule_ad_breaks,
      :schedule_entry_type,
      :source_location_name,
      :vod_source_name,
      :audiences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>AWS Secrets Manager access token configuration parameters. For information about Secrets Manager access token authentication, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-access-configuration-access-token.html">Working with AWS Secrets Manager access token authentication</a>.</p>
    # @!attribute header_name
    #   <p>The name of the HTTP header used to supply the access token in requests to the source location.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the access token.</p>
    #   @return [String]
    # @!attribute secret_string_key
    #   <p>The AWS Secrets Manager <a href="https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_CreateSecret.html#SecretsManager-CreateSecret-request-SecretString.html">SecretString</a> key associated with the access token. MediaTailor uses the key to look up SecretString key and value pair containing the access token.</p>
    #   @return [String]
    class SecretsManagerAccessTokenConfiguration < Struct.new(
      nil,
      :header_name,
      :secret_arn,
      :secret_string_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The segment delivery configuration settings.</p>
    # @!attribute base_url
    #   <p>The base URL of the host or path of the segment delivery server that you're using to serve segments. This is typically a content delivery network (CDN). The URL can be absolute or relative. To use an absolute URL include the protocol, such as <code>https://example.com/some/path</code>. To use a relative URL specify the relative path, such as <code>/some/path*</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A unique identifier used to distinguish between multiple segment delivery configurations in a source location.</p>
    #   @return [String]
    class SegmentDeliveryConfiguration < Struct.new(
      nil,
      :base_url,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>segmentation_descriptor</code> message can contain advanced metadata fields, like content identifiers, to convey a wide range of information about the ad break. MediaTailor writes the ad metadata in the egress manifest as part of the <code>EXT-X-DATERANGE</code> or <code>EventStream</code> ad marker's SCTE-35 data.</p> <p> <code>segmentation_descriptor</code> messages must be sent with the <code>time_signal</code> message type.</p> <p>See the <code>segmentation_descriptor()</code> table of the 2022 SCTE-35 specification for more information.</p>
    # @!attribute segmentation_event_id
    #   <p>The Event Identifier to assign to the <code>segmentation_descriptor.segmentation_event_id</code> message, as defined in section 10.3.3.1 of the 2022 SCTE-35 specification. The default value is 1.</p>
    #   @return [Integer]
    # @!attribute segmentation_upid_type
    #   <p>The Upid Type to assign to the <code>segmentation_descriptor.segmentation_upid_type</code> message, as defined in section 10.3.3.1 of the 2022 SCTE-35 specification. Values must be between 0 and 256, inclusive. The default value is 14.</p>
    #   @return [Integer]
    # @!attribute segmentation_upid
    #   <p>The Upid to assign to the <code>segmentation_descriptor.segmentation_upid</code> message, as defined in section 10.3.3.1 of the 2022 SCTE-35 specification. The value must be a hexadecimal string containing only the characters 0 though 9 and A through F. The default value is "" (an empty string).</p>
    #   @return [String]
    # @!attribute segmentation_type_id
    #   <p>The Type Identifier to assign to the <code>segmentation_descriptor.segmentation_type_id</code> message, as defined in section 10.3.3.1 of the 2022 SCTE-35 specification. Values must be between 0 and 256, inclusive. The default value is 48.</p>
    #   @return [Integer]
    # @!attribute segment_num
    #   <p>The segment number to assign to the <code>segmentation_descriptor.segment_num</code> message, as defined in section 10.3.3.1 of the 2022 SCTE-35 specification Values must be between 0 and 256, inclusive. The default value is 0.</p>
    #   @return [Integer]
    # @!attribute segments_expected
    #   <p>The number of segments expected, which is assigned to the <code>segmentation_descriptor.segments_expectedS</code> message, as defined in section 10.3.3.1 of the 2022 SCTE-35 specification Values must be between 0 and 256, inclusive. The default value is 0.</p>
    #   @return [Integer]
    # @!attribute sub_segment_num
    #   <p>The sub-segment number to assign to the <code>segmentation_descriptor.sub_segment_num</code> message, as defined in section 10.3.3.1 of the 2022 SCTE-35 specification. Values must be between 0 and 256, inclusive. The defualt value is null.</p>
    #   @return [Integer]
    # @!attribute sub_segments_expected
    #   <p>The number of sub-segments expected, which is assigned to the <code>segmentation_descriptor.sub_segments_expected</code> message, as defined in section 10.3.3.1 of the 2022 SCTE-35 specification. Values must be between 0 and 256, inclusive. The default value is null.</p>
    #   @return [Integer]
    class SegmentationDescriptor < Struct.new(
      nil,
      :segmentation_event_id,
      :segmentation_upid_type,
      :segmentation_upid,
      :segmentation_type_id,
      :segment_num,
      :segments_expected,
      :sub_segment_num,
      :sub_segments_expected,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a <code>SEQUENTIAL_EXECUTOR</code> function. A <code>SEQUENTIAL_EXECUTOR</code> runs a sequence of child functions in order, passing data between steps through temporary data. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-types-sequential-executor.html">SEQUENTIAL_EXECUTOR</a> in the <i>MediaTailor User Guide</i>.</p>
    # @!attribute runtime
    #   <p>The expression language used to evaluate expressions in the function configuration. Set this to <code>JSONata</code>.</p>
    #   @return [String]
    # @!attribute output
    #   <p>An optional map of output bindings that controls which bindings the sequence commits to the session state after all steps complete. If omitted, MediaTailor commits all accumulated output bindings from all child steps.</p>
    #   @return [Hash<String, String>]
    # @!attribute function_list
    #   <p>An ordered list of 1 to 10 steps. Each step specifies a child function to execute and an optional run condition expression that controls whether the step runs. MediaTailor executes steps in order, passing data between steps through temporary data.</p>
    #   @return [Array<Types::FunctionRef>]
    # @!attribute timeout_milliseconds
    #   <p>The maximum time, in milliseconds, for the entire sequence to complete. This timeout covers all steps, including any HTTP calls made by child functions. If the sequence exceeds this timeout, MediaTailor discards all output from the sequence and proceeds with default behavior.</p>
    #   @return [Integer]
    class SequentialExecutorConfiguration < Struct.new(
      nil,
      :runtime,
      :output,
      :function_list,
      :timeout_milliseconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Slate VOD source configuration.</p>
    # @!attribute source_location_name
    #   <p>The name of the source location where the slate VOD source is stored.</p>
    #   @return [String]
    # @!attribute vod_source_name
    #   <p>The slate VOD source name. The VOD source must already exist in a source location before it can be used for slate.</p>
    #   @return [String]
    class SlateSource < Struct.new(
      nil,
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A source location is a container for sources. For more information about source locations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html">Working with source locations</a> in the <i>MediaTailor User Guide</i>.</p>
    # @!attribute access_configuration
    #   <p>The access configuration for the source location.</p>
    #   @return [Types::AccessConfiguration]
    # @!attribute arn
    #   <p>The ARN of the SourceLocation.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the source location was created.</p>
    #   @return [Time]
    # @!attribute default_segment_delivery_configuration
    #   <p>The default segment delivery configuration.</p>
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    # @!attribute http_configuration
    #   <p>The HTTP configuration for the source location.</p>
    #   @return [Types::HttpConfiguration]
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the source location was last modified.</p>
    #   @return [Time]
    # @!attribute segment_delivery_configurations
    #   <p>The segment delivery configurations for the source location.</p>
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the source location. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class SourceLocation < Struct.new(
      nil,
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Splice insert message configuration.</p>
    # @!attribute avail_num
    #   <p>This is written to <code>splice_insert.avail_num</code>, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is <code>0</code>. Values must be between <code>0</code> and <code>256</code>, inclusive.</p>
    #   @return [Integer]
    # @!attribute avails_expected
    #   <p>This is written to <code>splice_insert.avails_expected</code>, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is <code>0</code>. Values must be between <code>0</code> and <code>256</code>, inclusive.</p>
    #   @return [Integer]
    # @!attribute splice_event_id
    #   <p>This is written to <code>splice_insert.splice_event_id</code>, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute unique_program_id
    #   <p>This is written to <code>splice_insert.unique_program_id</code>, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is <code>0</code>. Values must be between <code>0</code> and <code>256</code>, inclusive.</p>
    #   @return [Integer]
    class SpliceInsertMessage < Struct.new(
      nil,
      :avail_num,
      :avails_expected,
      :splice_event_id,
      :unique_program_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    class StartChannelInput < Struct.new(
      nil,
      :channel_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartChannelOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    class StopChannelInput < Struct.new(
      nil,
      :channel_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopChannelOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the resource. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration for time-shifted viewing. </p>
    # @!attribute max_time_delay_seconds
    #   <p> The maximum time delay for time-shifted viewing. The minimum allowed maximum time delay is 0 seconds, and the maximum allowed maximum time delay is 21600 seconds (6 hours). </p>
    #   @return [Integer]
    class TimeShiftConfiguration < Struct.new(
      nil,
      :max_time_delay_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SCTE-35 <code>time_signal</code> message can be sent with one or more <code>segmentation_descriptor</code> messages. A <code>time_signal</code> message can be sent only if a single <code>segmentation_descriptor</code> message is sent.</p> <p>The <code>time_signal</code> message contains only the <code>splice_time</code> field which is constructed using a given presentation timestamp. When sending a <code>time_signal</code> message, the <code>splice_command_type</code> field in the <code>splice_info_section</code> message is set to 6 (0x06).</p> <p>See the <code>time_signal()</code> table of the 2022 SCTE-35 specification for more information.</p>
    # @!attribute segmentation_descriptors
    #   <p>The configurations for the SCTE-35 <code>segmentation_descriptor</code> message(s) sent with the <code>time_signal</code> message.</p>
    #   @return [Array<Types::SegmentationDescriptor>]
    class TimeSignalMessage < Struct.new(
      nil,
      :segmentation_descriptors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that tells Elemental MediaTailor how many seconds to spread out requests to the ad decision server (ADS). Instead of sending ADS requests for all sessions at the same time, MediaTailor spreads the requests across the amount of time specified in the retrieval window.</p>
    # @!attribute retrieval_window_duration_seconds
    #   <p>The amount of time, in seconds, that MediaTailor spreads prefetch requests to the ADS. </p>
    #   @return [Integer]
    class TrafficShapingRetrievalWindow < Struct.new(
      nil,
      :retrieval_window_duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for TPS-based traffic shaping. This approach limits requests to the ad decision server (ADS) based on transactions per second and concurrent users.</p>
    # @!attribute peak_tps
    #   <p>The maximum number of transactions per second (TPS) that your ad decision server (ADS) can handle. MediaTailor uses this value along with concurrent users and headroom multiplier to calculate optimal traffic distribution and prevent ADS overload.</p>
    #   @return [Integer]
    # @!attribute peak_concurrent_users
    #   <p>The expected peak number of concurrent viewers for your content. MediaTailor uses this value along with peak TPS to determine how to distribute prefetch requests across the available capacity without exceeding your ADS limits.</p>
    #   @return [Integer]
    class TrafficShapingTpsConfiguration < Struct.new(
      nil,
      :peak_tps,
      :peak_concurrent_users,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Program transition configuration.</p>
    # @!attribute duration_millis
    #   <p>The duration of the live program in seconds.</p>
    #   @return [Integer]
    # @!attribute relative_position
    #   <p>The position where this program will be inserted relative to the <code>RelativePosition</code>.</p>
    #   @return [String]
    # @!attribute relative_program
    #   <p>The name of the program that this program will be inserted next to, as defined by <code>RelativePosition</code>.</p>
    #   @return [String]
    # @!attribute scheduled_start_time_millis
    #   <p>The date and time that the program is scheduled to start, in epoch milliseconds.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>Defines when the program plays in the schedule. You can set the value to <code>ABSOLUTE</code> or <code>RELATIVE</code>.</p> <p> <code>ABSOLUTE</code> - The program plays at a specific wall clock time. This setting can only be used for channels using the <code>LINEAR</code> <code>PlaybackMode</code>.</p> <p>Note the following considerations when using <code>ABSOLUTE</code> transitions:</p> <p>If the preceding program in the schedule has a duration that extends past the wall clock time, MediaTailor truncates the preceding program on a common segment boundary.</p> <p>If there are gaps in playback, MediaTailor plays the <code>FillerSlate</code> you configured for your linear channel.</p> <p> <code>RELATIVE</code> - The program is inserted into the schedule either before or after a program that you specify via <code>RelativePosition</code>.</p>
    #   @return [String]
    class Transition < Struct.new(
      nil,
      :duration_millis,
      :relative_position,
      :relative_program,
      :scheduled_start_time_millis,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys associated with the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute filler_slate
    #   <p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the <code>LINEAR</code> <code>PlaybackMode</code>. MediaTailor doesn't support filler slate for channels using the <code>LOOP</code> <code>PlaybackMode</code>.</p>
    #   @return [Types::SlateSource]
    # @!attribute outputs
    #   <p>The channel's output properties.</p>
    #   @return [Array<Types::RequestOutputItem>]
    # @!attribute time_shift_configuration
    #   <p> The time-shifted viewing configuration you want to associate to the channel. </p>
    #   @return [Types::TimeShiftConfiguration]
    # @!attribute audiences
    #   <p>The list of audiences defined in channel.</p>
    #   @return [Array<String>]
    class UpdateChannelInput < Struct.new(
      nil,
      :channel_name,
      :filler_slate,
      :outputs,
      :time_shift_configuration,
      :audiences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute channel_state
    #   <p>Returns the state whether the channel is running or not.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp of when the channel was created.</p>
    #   @return [Time]
    # @!attribute filler_slate
    #   <p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the <code>LINEAR</code> <code>PlaybackMode</code>. MediaTailor doesn't support filler slate for channels using the <code>LOOP</code> <code>PlaybackMode</code>.</p>
    #   @return [Types::SlateSource]
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the channel was last modified.</p>
    #   @return [Time]
    # @!attribute outputs
    #   <p>The channel's output properties.</p>
    #   @note This shape is unstable and may change in future releases.
    #   @return [Array<Types::ResponseOutputItem>]
    # @!attribute playback_mode
    #   <p>The type of playback mode for this channel.</p> <p> <code>LINEAR</code> - Programs play back-to-back only once.</p> <p> <code>LOOP</code> - Programs play back-to-back in an endless loop. When the last program in the schedule plays, playback loops back to the first program in the schedule.</p>
    #   @note This shape is unstable and may change in future releases.
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the channel. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute tier
    #   <p>The tier associated with this Channel.</p>
    #   @note This shape is unstable and may change in future releases.
    #   @return [String]
    # @!attribute time_shift_configuration
    #   <p> The time-shifted viewing configuration for the channel. </p>
    #   @return [Types::TimeShiftConfiguration]
    # @!attribute audiences
    #   <p>The list of audiences defined in channel.</p>
    #   @return [Array<String>]
    class UpdateChannelOutput < Struct.new(
      nil,
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :outputs,
      :playback_mode,
      :tags,
      :tier,
      :time_shift_configuration,
      :audiences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configurations for the live source on this account.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute live_source_name
    #   <p>The name of the live source.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name of the source location associated with this Live Source.</p>
    #   @return [String]
    class UpdateLiveSourceInput < Struct.new(
      nil,
      :http_package_configurations,
      :live_source_name,
      :source_location_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with this live source.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the live source was created.</p>
    #   @return [Time]
    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configurations for the live source on this account.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the live source was last modified.</p>
    #   @return [Time]
    # @!attribute live_source_name
    #   <p>The name of the live source.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name of the source location associated with the live source.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the live source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class UpdateLiveSourceOutput < Struct.new(
      nil,
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ad_breaks
    #   <p>The ad break configuration settings.</p>
    #   @return [Array<Types::AdBreak>]
    # @!attribute channel_name
    #   <p>The name of the channel for this Program.</p>
    #   @return [String]
    # @!attribute program_name
    #   <p>The name of the Program.</p>
    #   @return [String]
    # @!attribute schedule_configuration
    #   <p>The schedule configuration settings.</p>
    #   @return [Types::UpdateProgramScheduleConfiguration]
    # @!attribute audience_media
    #   <p>The list of AudienceMedia defined in program.</p>
    #   @return [Array<Types::AudienceMedia>]
    class UpdateProgramInput < Struct.new(
      nil,
      :ad_breaks,
      :channel_name,
      :program_name,
      :schedule_configuration,
      :audience_media,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ad_breaks
    #   <p>The ad break configuration settings.</p>
    #   @return [Array<Types::AdBreak>]
    # @!attribute arn
    #   <p>The ARN to assign to the program.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name to assign to the channel for this program.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the program was created.</p>
    #   @return [Time]
    # @!attribute program_name
    #   <p>The name to assign to this program.</p>
    #   @return [String]
    # @!attribute source_location_name
    #   <p>The name to assign to the source location for this program.</p>
    #   @return [String]
    # @!attribute vod_source_name
    #   <p>The name that's used to refer to a VOD source.</p>
    #   @return [String]
    # @!attribute live_source_name
    #   <p>The name of the LiveSource for this Program.</p>
    #   @return [String]
    # @!attribute clip_range
    #   <p>The clip range configuration settings.</p>
    #   @return [Types::ClipRange]
    # @!attribute duration_millis
    #   <p>The duration of the live program in milliseconds.</p>
    #   @return [Integer]
    # @!attribute scheduled_start_time
    #   <p>The scheduled start time for this Program.</p>
    #   @return [Time]
    # @!attribute audience_media
    #   <p>The list of AudienceMedia defined in program.</p>
    #   @return [Array<Types::AudienceMedia>]
    # @!attribute tags
    #   <p>The tags assigned to the program. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class UpdateProgramOutput < Struct.new(
      nil,
      :ad_breaks,
      :arn,
      :channel_name,
      :creation_time,
      :program_name,
      :source_location_name,
      :vod_source_name,
      :live_source_name,
      :clip_range,
      :duration_millis,
      :scheduled_start_time,
      :audience_media,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Schedule configuration parameters.</p>
    # @!attribute transition
    #   <p>Program transition configuration.</p>
    #   @return [Types::UpdateProgramTransition]
    # @!attribute clip_range
    #   <p>Program clip range configuration.</p>
    #   @return [Types::ClipRange]
    class UpdateProgramScheduleConfiguration < Struct.new(
      nil,
      :transition,
      :clip_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Program transition configuration.</p>
    # @!attribute scheduled_start_time_millis
    #   <p>The date and time that the program is scheduled to start, in epoch milliseconds.</p>
    #   @return [Integer]
    # @!attribute duration_millis
    #   <p>The duration of the live program in seconds.</p>
    #   @return [Integer]
    class UpdateProgramTransition < Struct.new(
      nil,
      :scheduled_start_time_millis,
      :duration_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_configuration
    #   <p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>
    #   @return [Types::AccessConfiguration]
    # @!attribute default_segment_delivery_configuration
    #   <p>The optional configuration for the host server that serves segments.</p>
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    # @!attribute http_configuration
    #   <p>The HTTP configuration for the source location.</p>
    #   @return [Types::HttpConfiguration]
    # @!attribute segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #   @return [String]
    class UpdateSourceLocationInput < Struct.new(
      nil,
      :access_configuration,
      :default_segment_delivery_configuration,
      :http_configuration,
      :segment_delivery_configurations,
      :source_location_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_configuration
    #   <p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>
    #   @return [Types::AccessConfiguration]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the source location.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the source location was created.</p>
    #   @return [Time]
    # @!attribute default_segment_delivery_configuration
    #   <p>The optional configuration for the host server that serves segments.</p>
    #   @return [Types::DefaultSegmentDeliveryConfiguration]
    # @!attribute http_configuration
    #   <p>The HTTP configuration for the source location.</p>
    #   @return [Types::HttpConfiguration]
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the source location was last modified.</p>
    #   @return [Time]
    # @!attribute segment_delivery_configurations
    #   <p>The segment delivery configurations for the source location. For information about MediaTailor configurations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html">Working with configurations in AWS Elemental MediaTailor</a>.</p>
    #   @return [Array<Types::SegmentDeliveryConfiguration>]
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the source location. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    class UpdateSourceLocationOutput < Struct.new(
      nil,
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configurations for the VOD source on this account.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute source_location_name
    #   <p>The name of the source location associated with this VOD Source.</p>
    #   @return [String]
    # @!attribute vod_source_name
    #   <p>The name of the VOD source.</p>
    #   @return [String]
    class UpdateVodSourceInput < Struct.new(
      nil,
      :http_package_configurations,
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) associated with the VOD source.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the VOD source was created.</p>
    #   @return [Time]
    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configurations for the VOD source on this account.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the VOD source was last modified.</p>
    #   @return [Time]
    # @!attribute source_location_name
    #   <p>The name of the source location associated with the VOD source.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the VOD source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute vod_source_name
    #   <p>The name of the VOD source.</p>
    #   @return [String]
    class UpdateVodSourceOutput < Struct.new(
      nil,
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a <code>VAST_REQUEST</code> function. Specifies the HTTP method, URL, headers, body, timeout, and output expressions for a request to a VAST endpoint. MediaTailor parses the response as VAST and resolves wrapper redirects, then makes the parsed ads available to the function's output expressions. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-types.html">Function types and composition</a> in the <i>MediaTailor User Guide</i>.</p>
    # @!attribute runtime
    #   <p>The expression language used to evaluate expressions in the function configuration. Set this to <code>JSONata</code>.</p>
    #   @return [String]
    # @!attribute output
    #   <p>A map of output bindings. Each key is a namespaced output path (such as <code>temp.wrappedAds</code>), and each value is an expression that MediaTailor evaluates at runtime. Output expressions in a <code>VAST_REQUEST</code> function can reference the <code>response</code> object, which exposes <code>response.parsedAds</code> — the ads parsed from the VAST response after schema validation and wrapper resolution — and <code>response.statusCode</code>. For more information about expression syntax, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/monetization-functions-jsonata.html">JSONata expression reference</a> in the <i>MediaTailor User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute method_type
    #   <p>The HTTP method for the request to the VAST endpoint. Valid values: <code>GET</code> and <code>POST</code>. Use <code>POST</code> to send a bid request body, such as an OpenRTB payload.</p>
    #   @return [String]
    # @!attribute request_timeout_milliseconds
    #   <p>The maximum time, in milliseconds, that MediaTailor waits for a response from the VAST endpoint. The timeout covers the entire response, including any wrapper redirects that MediaTailor follows. If the call exceeds this timeout, MediaTailor proceeds with an empty ad list and continues output expression evaluation. Valid values: <code>100</code> to <code>2000</code>.</p>
    #   @return [Integer]
    # @!attribute url
    #   <p>An expression that evaluates to the VAST endpoint URL. Use <code>{%...%}</code> delimiters for dynamic expressions. A literal value must be an <code>https://</code> URL. The expression can be up to 25,000 characters, and the URL after evaluation can be up to 2,048 characters.</p>
    #   @return [String]
    # @!attribute body
    #   <p>An expression that evaluates to the request body, for example to send an OpenRTB bid request. The expression can be up to 100,000 characters, and the body after evaluation can be up to 64 KB.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>A map of HTTP header names to expression values. MediaTailor evaluates each header value expression at runtime and includes the result in the outbound request. Headers beginning with <code>X-Amz-</code> are reserved by the service, and method override headers are not allowed.</p>
    #   @return [Hash<String, String>]
    # @!attribute cache
    #   <p>The optional response-caching configuration for the function. When present, MediaTailor caches the responses that the function receives from the HTTP endpoint, within the time-to-live (TTL) bounds that you specify. Omit this configuration to disable response caching.</p>
    #   @return [Types::HttpRequestCacheConfiguration]
    class VastRequestConfiguration < Struct.new(
      nil,
      :runtime,
      :output,
      :method_type,
      :request_timeout_milliseconds,
      :url,
      :body,
      :headers,
      :cache,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings that control how MediaTailor processes VAST responses from the ad decision server.</p>
    # @!attribute ad_sequencing_mode
    #   <p>The ad sequencing mode that controls how MediaTailor handles sequenced and standalone ads in VAST responses. <code>FOLLOW_AD_SEQUENCE</code> inserts sequenced ads in increasing order for both live and VOD workflows, using standalone ads only as replacements when a sequenced ad fails. <code>FOLLOW_AD_SEQUENCE_ONLY_LIVE</code> enables ad sequencing for live workflows only. <code>FOLLOW_AD_SEQUENCE_ONLY_VOD</code> enables ad sequencing for VOD workflows only. <code>IGNORE_AD_SEQUENCE</code> inserts ads in the order they appear in the VAST response, regardless of sequence attributes. The default behavior is <code>IGNORE_AD_SEQUENCE</code>.</p>
    #   @return [String]
    class VastResponse < Struct.new(
      nil,
      :ad_sequencing_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>VOD source configuration parameters.</p>
    # @!attribute arn
    #   <p>The ARN for the VOD source.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the VOD source was created.</p>
    #   @return [Time]
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations for the VOD source.</p>
    #   @return [Array<Types::HttpPackageConfiguration>]
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the VOD source was last modified.</p>
    #   @return [Time]
    # @!attribute source_location_name
    #   <p>The name of the source location that the VOD source is associated with.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the VOD source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute vod_source_name
    #   <p>The name of the VOD source.</p>
    #   @return [String]
    class VodSource < Struct.new(
      nil,
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Yield Optimization, which fills unsold ad inventory in ad breaks with programmatic ads from Amazon Publisher Services (APS).</p>
    # @!attribute minimum_unfilled_duration
    #   <p>The minimum unfilled duration, in seconds, that must remain in an ad break before MediaTailor requests additional ads from Amazon Publisher Services (APS). For example, if set to 6 seconds, yield optimization triggers only when at least 6 seconds of unfilled time remains after the primary ad server response.</p>
    #   @return [Integer]
    # @!attribute publisher_id
    #   <p>Publisher ID for an existing Amazon Publisher Services configuration. This ID must be obtained by registering with APS prior to using the Yield Optimization feature. The Publisher ID identifies your account in the APS system and is required for all bid requests.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Publisher Services (APS) region that MediaTailor sends bid requests to. Choose the region closest to your primary audience, because the selection affects both latency and the ad inventory available to you. This setting applies to the entire playback configuration, not to individual viewers. If you serve traffic across multiple regions, create a separate playback configuration for each APS region.</p>
    #   @return [String]
    # @!attribute open_rtb_template
    #   <p>The OpenRTB bid request template, in JSON, that MediaTailor sends to Amazon Publisher Services (APS). The template must include an <code>imp</code> array with one impression specifying <code>bidfloor</code>, an <code>app</code> object specifying <code>bundle</code> and <code>storeurl</code>, and a <code>device</code> object specifying <code>ua</code> and <code>ip</code>. Use double curly braces (for example, <code>{{player_params.user_agent}}</code>) to insert session variables and player parameters.</p>
    #   @return [String]
    class YieldOptimizationConfiguration < Struct.new(
      nil,
      :minimum_unfilled_duration,
      :publisher_id,
      :region,
      :open_rtb_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
