# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediapackage)

module Aws::MediaPackage
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :mediapackage

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a new Channel.
    #
    # @option params [String] :description
    #
    # @option params [required, String] :id
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#arn #arn} => String
    #   * {Types::CreateChannelResponse#description #description} => String
    #   * {Types::CreateChannelResponse#hls_ingest #hls_ingest} => Types::HlsIngest
    #   * {Types::CreateChannelResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     description: "__string",
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.hls_ingest.ingest_endpoints #=> Array
    #   resp.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Creates a new OriginEndpoint record.
    #
    # @option params [required, String] :channel_id
    #
    # @option params [Types::CmafPackageCreateOrUpdateParameters] :cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    # @option params [Types::DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @option params [String] :description
    #
    # @option params [Types::HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @option params [required, String] :id
    #
    # @option params [String] :manifest_name
    #
    # @option params [Types::MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    # @option params [Integer] :startover_window_seconds
    #
    # @option params [Integer] :time_delay_seconds
    #
    # @option params [Array<String>] :whitelist
    #
    # @return [Types::CreateOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOriginEndpointResponse#arn #arn} => String
    #   * {Types::CreateOriginEndpointResponse#channel_id #channel_id} => String
    #   * {Types::CreateOriginEndpointResponse#cmaf_package #cmaf_package} => Types::CmafPackage
    #   * {Types::CreateOriginEndpointResponse#dash_package #dash_package} => Types::DashPackage
    #   * {Types::CreateOriginEndpointResponse#description #description} => String
    #   * {Types::CreateOriginEndpointResponse#hls_package #hls_package} => Types::HlsPackage
    #   * {Types::CreateOriginEndpointResponse#id #id} => String
    #   * {Types::CreateOriginEndpointResponse#manifest_name #manifest_name} => String
    #   * {Types::CreateOriginEndpointResponse#mss_package #mss_package} => Types::MssPackage
    #   * {Types::CreateOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::CreateOriginEndpointResponse#time_delay_seconds #time_delay_seconds} => Integer
    #   * {Types::CreateOriginEndpointResponse#url #url} => String
    #   * {Types::CreateOriginEndpointResponse#whitelist #whitelist} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_origin_endpoint({
    #     channel_id: "__string", # required
    #     cmaf_package: {
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #           id: "__string", # required
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1,
    #         },
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_prefix: "__string",
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #     },
    #     dash_package: {
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       manifest_window_seconds: 1,
    #       min_buffer_time_seconds: 1,
    #       min_update_period_seconds: 1,
    #       period_triggers: ["ADS"], # accepts ADS
    #       profile: "NONE", # accepts NONE, HBBTV_1_5
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #       suggested_presentation_delay_seconds: 1,
    #     },
    #     description: "__string",
    #     hls_package: {
    #       ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #       encryption: {
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
    #       },
    #       include_iframe_only_stream: false,
    #       playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #       playlist_window_seconds: 1,
    #       program_date_time_interval_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #       use_audio_rendition_group: false,
    #     },
    #     id: "__string", # required
    #     manifest_name: "__string",
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       manifest_window_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #     },
    #     startover_window_seconds: 1,
    #     time_delay_seconds: 1,
    #     whitelist: ["__string"],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_id #=> String
    #   resp.cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.cmaf_package.hls_manifests #=> Array
    #   resp.cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.cmaf_package.hls_manifests[0].id #=> String
    #   resp.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.cmaf_package.hls_manifests[0].playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].url #=> String
    #   resp.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.cmaf_package.segment_prefix #=> String
    #   resp.cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.dash_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.dash_package.encryption.speke_key_provider.url #=> String
    #   resp.dash_package.manifest_window_seconds #=> Integer
    #   resp.dash_package.min_buffer_time_seconds #=> Integer
    #   resp.dash_package.min_update_period_seconds #=> Integer
    #   resp.dash_package.period_triggers #=> Array
    #   resp.dash_package.period_triggers[0] #=> String, one of "ADS"
    #   resp.dash_package.profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.dash_package.segment_duration_seconds #=> Integer
    #   resp.dash_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.description #=> String
    #   resp.hls_package.ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.hls_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.hls_package.encryption.speke_key_provider.url #=> String
    #   resp.hls_package.include_iframe_only_stream #=> Boolean
    #   resp.hls_package.playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.hls_package.playlist_window_seconds #=> Integer
    #   resp.hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.hls_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.id #=> String
    #   resp.manifest_name #=> String
    #   resp.mss_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.mss_package.encryption.speke_key_provider.url #=> String
    #   resp.mss_package.manifest_window_seconds #=> Integer
    #   resp.mss_package.segment_duration_seconds #=> Integer
    #   resp.mss_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.startover_window_seconds #=> Integer
    #   resp.time_delay_seconds #=> Integer
    #   resp.url #=> String
    #   resp.whitelist #=> Array
    #   resp.whitelist[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CreateOriginEndpoint AWS API Documentation
    #
    # @overload create_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def create_origin_endpoint(params = {}, options = {})
      req = build_request(:create_origin_endpoint, params)
      req.send_request(options)
    end

    # Deletes an existing Channel.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DeleteChannel AWS API Documentation
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # Deletes an existing OriginEndpoint.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_origin_endpoint({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DeleteOriginEndpoint AWS API Documentation
    #
    # @overload delete_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_origin_endpoint(params = {}, options = {})
      req = build_request(:delete_origin_endpoint, params)
      req.send_request(options)
    end

    # Gets details about a Channel.
    #
    # @option params [required, String] :id
    #
    # @return [Types::DescribeChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelResponse#arn #arn} => String
    #   * {Types::DescribeChannelResponse#description #description} => String
    #   * {Types::DescribeChannelResponse#hls_ingest #hls_ingest} => Types::HlsIngest
    #   * {Types::DescribeChannelResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.hls_ingest.ingest_endpoints #=> Array
    #   resp.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DescribeChannel AWS API Documentation
    #
    # @overload describe_channel(params = {})
    # @param [Hash] params ({})
    def describe_channel(params = {}, options = {})
      req = build_request(:describe_channel, params)
      req.send_request(options)
    end

    # Gets details about an existing OriginEndpoint.
    #
    # @option params [required, String] :id
    #
    # @return [Types::DescribeOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOriginEndpointResponse#arn #arn} => String
    #   * {Types::DescribeOriginEndpointResponse#channel_id #channel_id} => String
    #   * {Types::DescribeOriginEndpointResponse#cmaf_package #cmaf_package} => Types::CmafPackage
    #   * {Types::DescribeOriginEndpointResponse#dash_package #dash_package} => Types::DashPackage
    #   * {Types::DescribeOriginEndpointResponse#description #description} => String
    #   * {Types::DescribeOriginEndpointResponse#hls_package #hls_package} => Types::HlsPackage
    #   * {Types::DescribeOriginEndpointResponse#id #id} => String
    #   * {Types::DescribeOriginEndpointResponse#manifest_name #manifest_name} => String
    #   * {Types::DescribeOriginEndpointResponse#mss_package #mss_package} => Types::MssPackage
    #   * {Types::DescribeOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::DescribeOriginEndpointResponse#time_delay_seconds #time_delay_seconds} => Integer
    #   * {Types::DescribeOriginEndpointResponse#url #url} => String
    #   * {Types::DescribeOriginEndpointResponse#whitelist #whitelist} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_origin_endpoint({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_id #=> String
    #   resp.cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.cmaf_package.hls_manifests #=> Array
    #   resp.cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.cmaf_package.hls_manifests[0].id #=> String
    #   resp.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.cmaf_package.hls_manifests[0].playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].url #=> String
    #   resp.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.cmaf_package.segment_prefix #=> String
    #   resp.cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.dash_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.dash_package.encryption.speke_key_provider.url #=> String
    #   resp.dash_package.manifest_window_seconds #=> Integer
    #   resp.dash_package.min_buffer_time_seconds #=> Integer
    #   resp.dash_package.min_update_period_seconds #=> Integer
    #   resp.dash_package.period_triggers #=> Array
    #   resp.dash_package.period_triggers[0] #=> String, one of "ADS"
    #   resp.dash_package.profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.dash_package.segment_duration_seconds #=> Integer
    #   resp.dash_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.description #=> String
    #   resp.hls_package.ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.hls_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.hls_package.encryption.speke_key_provider.url #=> String
    #   resp.hls_package.include_iframe_only_stream #=> Boolean
    #   resp.hls_package.playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.hls_package.playlist_window_seconds #=> Integer
    #   resp.hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.hls_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.id #=> String
    #   resp.manifest_name #=> String
    #   resp.mss_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.mss_package.encryption.speke_key_provider.url #=> String
    #   resp.mss_package.manifest_window_seconds #=> Integer
    #   resp.mss_package.segment_duration_seconds #=> Integer
    #   resp.mss_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.startover_window_seconds #=> Integer
    #   resp.time_delay_seconds #=> Integer
    #   resp.url #=> String
    #   resp.whitelist #=> Array
    #   resp.whitelist[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DescribeOriginEndpoint AWS API Documentation
    #
    # @overload describe_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def describe_origin_endpoint(params = {}, options = {})
      req = build_request(:describe_origin_endpoint, params)
      req.send_request(options)
    end

    # Returns a collection of Channels.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#channels #channels} => Array&lt;Types::Channel&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].arn #=> String
    #   resp.channels[0].description #=> String
    #   resp.channels[0].hls_ingest.ingest_endpoints #=> Array
    #   resp.channels[0].hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.channels[0].hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.channels[0].hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.channels[0].hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.channels[0].id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Returns a collection of OriginEndpoint records.
    #
    # @option params [String] :channel_id
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListOriginEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOriginEndpointsResponse#next_token #next_token} => String
    #   * {Types::ListOriginEndpointsResponse#origin_endpoints #origin_endpoints} => Array&lt;Types::OriginEndpoint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_origin_endpoints({
    #     channel_id: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.origin_endpoints #=> Array
    #   resp.origin_endpoints[0].arn #=> String
    #   resp.origin_endpoints[0].channel_id #=> String
    #   resp.origin_endpoints[0].cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests #=> Array
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].id #=> String
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].url #=> String
    #   resp.origin_endpoints[0].cmaf_package.segment_duration_seconds #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.segment_prefix #=> String
    #   resp.origin_endpoints[0].cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.origin_endpoints[0].dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.origin_endpoints[0].dash_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.origin_endpoints[0].dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.origin_endpoints[0].dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.origin_endpoints[0].dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.origin_endpoints[0].dash_package.encryption.speke_key_provider.url #=> String
    #   resp.origin_endpoints[0].dash_package.manifest_window_seconds #=> Integer
    #   resp.origin_endpoints[0].dash_package.min_buffer_time_seconds #=> Integer
    #   resp.origin_endpoints[0].dash_package.min_update_period_seconds #=> Integer
    #   resp.origin_endpoints[0].dash_package.period_triggers #=> Array
    #   resp.origin_endpoints[0].dash_package.period_triggers[0] #=> String, one of "ADS"
    #   resp.origin_endpoints[0].dash_package.profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.origin_endpoints[0].dash_package.segment_duration_seconds #=> Integer
    #   resp.origin_endpoints[0].dash_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].dash_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].dash_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.origin_endpoints[0].dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.origin_endpoints[0].description #=> String
    #   resp.origin_endpoints[0].hls_package.ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.origin_endpoints[0].hls_package.encryption.constant_initialization_vector #=> String
    #   resp.origin_endpoints[0].hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.origin_endpoints[0].hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.origin_endpoints[0].hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.origin_endpoints[0].hls_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.origin_endpoints[0].hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.origin_endpoints[0].hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.origin_endpoints[0].hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.origin_endpoints[0].hls_package.encryption.speke_key_provider.url #=> String
    #   resp.origin_endpoints[0].hls_package.include_iframe_only_stream #=> Boolean
    #   resp.origin_endpoints[0].hls_package.playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.origin_endpoints[0].hls_package.playlist_window_seconds #=> Integer
    #   resp.origin_endpoints[0].hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.origin_endpoints[0].hls_package.segment_duration_seconds #=> Integer
    #   resp.origin_endpoints[0].hls_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].hls_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].hls_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.origin_endpoints[0].hls_package.use_audio_rendition_group #=> Boolean
    #   resp.origin_endpoints[0].id #=> String
    #   resp.origin_endpoints[0].manifest_name #=> String
    #   resp.origin_endpoints[0].mss_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.origin_endpoints[0].mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.origin_endpoints[0].mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.origin_endpoints[0].mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.origin_endpoints[0].mss_package.encryption.speke_key_provider.url #=> String
    #   resp.origin_endpoints[0].mss_package.manifest_window_seconds #=> Integer
    #   resp.origin_endpoints[0].mss_package.segment_duration_seconds #=> Integer
    #   resp.origin_endpoints[0].mss_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].mss_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].mss_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.origin_endpoints[0].startover_window_seconds #=> Integer
    #   resp.origin_endpoints[0].time_delay_seconds #=> Integer
    #   resp.origin_endpoints[0].url #=> String
    #   resp.origin_endpoints[0].whitelist #=> Array
    #   resp.origin_endpoints[0].whitelist[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListOriginEndpoints AWS API Documentation
    #
    # @overload list_origin_endpoints(params = {})
    # @param [Hash] params ({})
    def list_origin_endpoints(params = {}, options = {})
      req = build_request(:list_origin_endpoints, params)
      req.send_request(options)
    end

    # Changes the Channel's first IngestEndpoint's username and password.
    # WARNING - This API is deprecated. Please use
    # RotateIngestEndpointCredentials instead
    #
    # @option params [required, String] :id
    #
    # @return [Types::RotateChannelCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RotateChannelCredentialsResponse#arn #arn} => String
    #   * {Types::RotateChannelCredentialsResponse#description #description} => String
    #   * {Types::RotateChannelCredentialsResponse#hls_ingest #hls_ingest} => Types::HlsIngest
    #   * {Types::RotateChannelCredentialsResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_channel_credentials({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.hls_ingest.ingest_endpoints #=> Array
    #   resp.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/RotateChannelCredentials AWS API Documentation
    #
    # @overload rotate_channel_credentials(params = {})
    # @param [Hash] params ({})
    def rotate_channel_credentials(params = {}, options = {})
      req = build_request(:rotate_channel_credentials, params)
      req.send_request(options)
    end

    # Rotate the IngestEndpoint's username and password, as specified by
    # the IngestEndpoint's id.
    #
    # @option params [required, String] :id
    #
    # @option params [required, String] :ingest_endpoint_id
    #
    # @return [Types::RotateIngestEndpointCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RotateIngestEndpointCredentialsResponse#arn #arn} => String
    #   * {Types::RotateIngestEndpointCredentialsResponse#description #description} => String
    #   * {Types::RotateIngestEndpointCredentialsResponse#hls_ingest #hls_ingest} => Types::HlsIngest
    #   * {Types::RotateIngestEndpointCredentialsResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_ingest_endpoint_credentials({
    #     id: "__string", # required
    #     ingest_endpoint_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.hls_ingest.ingest_endpoints #=> Array
    #   resp.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/RotateIngestEndpointCredentials AWS API Documentation
    #
    # @overload rotate_ingest_endpoint_credentials(params = {})
    # @param [Hash] params ({})
    def rotate_ingest_endpoint_credentials(params = {}, options = {})
      req = build_request(:rotate_ingest_endpoint_credentials, params)
      req.send_request(options)
    end

    # Updates an existing Channel.
    #
    # @option params [String] :description
    #
    # @option params [required, String] :id
    #
    # @return [Types::UpdateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelResponse#arn #arn} => String
    #   * {Types::UpdateChannelResponse#description #description} => String
    #   * {Types::UpdateChannelResponse#hls_ingest #hls_ingest} => Types::HlsIngest
    #   * {Types::UpdateChannelResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     description: "__string",
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.hls_ingest.ingest_endpoints #=> Array
    #   resp.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Updates an existing OriginEndpoint.
    #
    # @option params [Types::CmafPackageCreateOrUpdateParameters] :cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    # @option params [Types::DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @option params [String] :description
    #
    # @option params [Types::HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @option params [required, String] :id
    #
    # @option params [String] :manifest_name
    #
    # @option params [Types::MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    # @option params [Integer] :startover_window_seconds
    #
    # @option params [Integer] :time_delay_seconds
    #
    # @option params [Array<String>] :whitelist
    #
    # @return [Types::UpdateOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOriginEndpointResponse#arn #arn} => String
    #   * {Types::UpdateOriginEndpointResponse#channel_id #channel_id} => String
    #   * {Types::UpdateOriginEndpointResponse#cmaf_package #cmaf_package} => Types::CmafPackage
    #   * {Types::UpdateOriginEndpointResponse#dash_package #dash_package} => Types::DashPackage
    #   * {Types::UpdateOriginEndpointResponse#description #description} => String
    #   * {Types::UpdateOriginEndpointResponse#hls_package #hls_package} => Types::HlsPackage
    #   * {Types::UpdateOriginEndpointResponse#id #id} => String
    #   * {Types::UpdateOriginEndpointResponse#manifest_name #manifest_name} => String
    #   * {Types::UpdateOriginEndpointResponse#mss_package #mss_package} => Types::MssPackage
    #   * {Types::UpdateOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::UpdateOriginEndpointResponse#time_delay_seconds #time_delay_seconds} => Integer
    #   * {Types::UpdateOriginEndpointResponse#url #url} => String
    #   * {Types::UpdateOriginEndpointResponse#whitelist #whitelist} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_origin_endpoint({
    #     cmaf_package: {
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #           id: "__string", # required
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1,
    #         },
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_prefix: "__string",
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #     },
    #     dash_package: {
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       manifest_window_seconds: 1,
    #       min_buffer_time_seconds: 1,
    #       min_update_period_seconds: 1,
    #       period_triggers: ["ADS"], # accepts ADS
    #       profile: "NONE", # accepts NONE, HBBTV_1_5
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #       suggested_presentation_delay_seconds: 1,
    #     },
    #     description: "__string",
    #     hls_package: {
    #       ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #       encryption: {
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
    #       },
    #       include_iframe_only_stream: false,
    #       playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #       playlist_window_seconds: 1,
    #       program_date_time_interval_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #       use_audio_rendition_group: false,
    #     },
    #     id: "__string", # required
    #     manifest_name: "__string",
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       manifest_window_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #     },
    #     startover_window_seconds: 1,
    #     time_delay_seconds: 1,
    #     whitelist: ["__string"],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_id #=> String
    #   resp.cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.cmaf_package.hls_manifests #=> Array
    #   resp.cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.cmaf_package.hls_manifests[0].id #=> String
    #   resp.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.cmaf_package.hls_manifests[0].playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].url #=> String
    #   resp.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.cmaf_package.segment_prefix #=> String
    #   resp.cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.dash_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.dash_package.encryption.speke_key_provider.url #=> String
    #   resp.dash_package.manifest_window_seconds #=> Integer
    #   resp.dash_package.min_buffer_time_seconds #=> Integer
    #   resp.dash_package.min_update_period_seconds #=> Integer
    #   resp.dash_package.period_triggers #=> Array
    #   resp.dash_package.period_triggers[0] #=> String, one of "ADS"
    #   resp.dash_package.profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.dash_package.segment_duration_seconds #=> Integer
    #   resp.dash_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.description #=> String
    #   resp.hls_package.ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.hls_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.hls_package.encryption.speke_key_provider.url #=> String
    #   resp.hls_package.include_iframe_only_stream #=> Boolean
    #   resp.hls_package.playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.hls_package.playlist_window_seconds #=> Integer
    #   resp.hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.hls_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.id #=> String
    #   resp.manifest_name #=> String
    #   resp.mss_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.mss_package.encryption.speke_key_provider.url #=> String
    #   resp.mss_package.manifest_window_seconds #=> Integer
    #   resp.mss_package.segment_duration_seconds #=> Integer
    #   resp.mss_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.startover_window_seconds #=> Integer
    #   resp.time_delay_seconds #=> Integer
    #   resp.url #=> String
    #   resp.whitelist #=> Array
    #   resp.whitelist[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/UpdateOriginEndpoint AWS API Documentation
    #
    # @overload update_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def update_origin_endpoint(params = {}, options = {})
      req = build_request(:update_origin_endpoint, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-mediapackage'
      context[:gem_version] = '1.6.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
