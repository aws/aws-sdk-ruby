# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:medialive)

module Aws::MediaLive
  # An API client for MediaLive.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MediaLive::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :medialive

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Accept an incoming input device transfer. The ownership of the device
    # will transfer to your AWS account.
    #
    # @option params [required, String] :input_device_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_input_device_transfer({
    #     input_device_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/AcceptInputDeviceTransfer AWS API Documentation
    #
    # @overload accept_input_device_transfer(params = {})
    # @param [Hash] params ({})
    def accept_input_device_transfer(params = {}, options = {})
      req = build_request(:accept_input_device_transfer, params)
      req.send_request(options)
    end

    # Starts delete of resources.
    #
    # @option params [Array<String>] :channel_ids
    #
    # @option params [Array<String>] :input_ids
    #
    # @option params [Array<String>] :input_security_group_ids
    #
    # @option params [Array<String>] :multiplex_ids
    #
    # @return [Types::BatchDeleteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteResponse#failed #failed} => Array&lt;Types::BatchFailedResultModel&gt;
    #   * {Types::BatchDeleteResponse#successful #successful} => Array&lt;Types::BatchSuccessfulResultModel&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete({
    #     channel_ids: ["__string"],
    #     input_ids: ["__string"],
    #     input_security_group_ids: ["__string"],
    #     multiplex_ids: ["__string"],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed #=> Array
    #   resp.failed[0].arn #=> String
    #   resp.failed[0].code #=> String
    #   resp.failed[0].id #=> String
    #   resp.failed[0].message #=> String
    #   resp.successful #=> Array
    #   resp.successful[0].arn #=> String
    #   resp.successful[0].id #=> String
    #   resp.successful[0].state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchDelete AWS API Documentation
    #
    # @overload batch_delete(params = {})
    # @param [Hash] params ({})
    def batch_delete(params = {}, options = {})
      req = build_request(:batch_delete, params)
      req.send_request(options)
    end

    # Starts existing resources
    #
    # @option params [Array<String>] :channel_ids
    #
    # @option params [Array<String>] :multiplex_ids
    #
    # @return [Types::BatchStartResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchStartResponse#failed #failed} => Array&lt;Types::BatchFailedResultModel&gt;
    #   * {Types::BatchStartResponse#successful #successful} => Array&lt;Types::BatchSuccessfulResultModel&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_start({
    #     channel_ids: ["__string"],
    #     multiplex_ids: ["__string"],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed #=> Array
    #   resp.failed[0].arn #=> String
    #   resp.failed[0].code #=> String
    #   resp.failed[0].id #=> String
    #   resp.failed[0].message #=> String
    #   resp.successful #=> Array
    #   resp.successful[0].arn #=> String
    #   resp.successful[0].id #=> String
    #   resp.successful[0].state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchStart AWS API Documentation
    #
    # @overload batch_start(params = {})
    # @param [Hash] params ({})
    def batch_start(params = {}, options = {})
      req = build_request(:batch_start, params)
      req.send_request(options)
    end

    # Stops running resources
    #
    # @option params [Array<String>] :channel_ids
    #
    # @option params [Array<String>] :multiplex_ids
    #
    # @return [Types::BatchStopResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchStopResponse#failed #failed} => Array&lt;Types::BatchFailedResultModel&gt;
    #   * {Types::BatchStopResponse#successful #successful} => Array&lt;Types::BatchSuccessfulResultModel&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_stop({
    #     channel_ids: ["__string"],
    #     multiplex_ids: ["__string"],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed #=> Array
    #   resp.failed[0].arn #=> String
    #   resp.failed[0].code #=> String
    #   resp.failed[0].id #=> String
    #   resp.failed[0].message #=> String
    #   resp.successful #=> Array
    #   resp.successful[0].arn #=> String
    #   resp.successful[0].id #=> String
    #   resp.successful[0].state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchStop AWS API Documentation
    #
    # @overload batch_stop(params = {})
    # @param [Hash] params ({})
    def batch_stop(params = {}, options = {})
      req = build_request(:batch_stop, params)
      req.send_request(options)
    end

    # Update a channel schedule
    #
    # @option params [required, String] :channel_id
    #
    # @option params [Types::BatchScheduleActionCreateRequest] :creates
    #   Schedule actions to create in the schedule.
    #
    # @option params [Types::BatchScheduleActionDeleteRequest] :deletes
    #   Schedule actions to delete from the schedule.
    #
    # @return [Types::BatchUpdateScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateScheduleResponse#creates #creates} => Types::BatchScheduleActionCreateResult
    #   * {Types::BatchUpdateScheduleResponse#deletes #deletes} => Types::BatchScheduleActionDeleteResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_schedule({
    #     channel_id: "__string", # required
    #     creates: {
    #       schedule_actions: [ # required
    #         {
    #           action_name: "__string", # required
    #           schedule_action_settings: { # required
    #             hls_id_3_segment_tagging_settings: {
    #               tag: "__string", # required
    #             },
    #             hls_timed_metadata_settings: {
    #               id_3: "__string", # required
    #             },
    #             input_prepare_settings: {
    #               input_attachment_name_reference: "__string",
    #               input_clipping_settings: {
    #                 input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #                 start_timecode: {
    #                   timecode: "__string",
    #                 },
    #                 stop_timecode: {
    #                   last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #                   timecode: "__string",
    #                 },
    #               },
    #               url_path: ["__string"],
    #             },
    #             input_switch_settings: {
    #               input_attachment_name_reference: "__string", # required
    #               input_clipping_settings: {
    #                 input_timecode_source: "ZEROBASED", # required, accepts ZEROBASED, EMBEDDED
    #                 start_timecode: {
    #                   timecode: "__string",
    #                 },
    #                 stop_timecode: {
    #                   last_frame_clipping_behavior: "EXCLUDE_LAST_FRAME", # accepts EXCLUDE_LAST_FRAME, INCLUDE_LAST_FRAME
    #                   timecode: "__string",
    #                 },
    #               },
    #               url_path: ["__string"],
    #             },
    #             pause_state_settings: {
    #               pipelines: [
    #                 {
    #                   pipeline_id: "PIPELINE_0", # required, accepts PIPELINE_0, PIPELINE_1
    #                 },
    #               ],
    #             },
    #             scte_35_return_to_network_settings: {
    #               splice_event_id: 1, # required
    #             },
    #             scte_35_splice_insert_settings: {
    #               duration: 1,
    #               splice_event_id: 1, # required
    #             },
    #             scte_35_time_signal_settings: {
    #               scte_35_descriptors: [ # required
    #                 {
    #                   scte_35_descriptor_settings: { # required
    #                     segmentation_descriptor_scte_35_descriptor_settings: { # required
    #                       delivery_restrictions: {
    #                         archive_allowed_flag: "ARCHIVE_NOT_ALLOWED", # required, accepts ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
    #                         device_restrictions: "NONE", # required, accepts NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
    #                         no_regional_blackout_flag: "REGIONAL_BLACKOUT", # required, accepts REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
    #                         web_delivery_allowed_flag: "WEB_DELIVERY_NOT_ALLOWED", # required, accepts WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED
    #                       },
    #                       segment_num: 1,
    #                       segmentation_cancel_indicator: "SEGMENTATION_EVENT_NOT_CANCELED", # required, accepts SEGMENTATION_EVENT_NOT_CANCELED, SEGMENTATION_EVENT_CANCELED
    #                       segmentation_duration: 1,
    #                       segmentation_event_id: 1, # required
    #                       segmentation_type_id: 1,
    #                       segmentation_upid: "__string",
    #                       segmentation_upid_type: 1,
    #                       segments_expected: 1,
    #                       sub_segment_num: 1,
    #                       sub_segments_expected: 1,
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #             static_image_activate_settings: {
    #               duration: 1,
    #               fade_in: 1,
    #               fade_out: 1,
    #               height: 1,
    #               image: { # required
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               image_x: 1,
    #               image_y: 1,
    #               layer: 1,
    #               opacity: 1,
    #               width: 1,
    #             },
    #             static_image_deactivate_settings: {
    #               fade_out: 1,
    #               layer: 1,
    #             },
    #           },
    #           schedule_action_start_settings: { # required
    #             fixed_mode_schedule_action_start_settings: {
    #               time: "__string", # required
    #             },
    #             follow_mode_schedule_action_start_settings: {
    #               follow_point: "END", # required, accepts END, START
    #               reference_action_name: "__string", # required
    #             },
    #             immediate_mode_schedule_action_start_settings: {
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     deletes: {
    #       action_names: ["__string"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.creates.schedule_actions #=> Array
    #   resp.creates.schedule_actions[0].action_name #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.hls_id_3_segment_tagging_settings.tag #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.hls_timed_metadata_settings.id_3 #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_attachment_name_reference #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.input_timecode_source #=> String, one of "ZEROBASED", "EMBEDDED"
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.start_timecode.timecode #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.stop_timecode.last_frame_clipping_behavior #=> String, one of "EXCLUDE_LAST_FRAME", "INCLUDE_LAST_FRAME"
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.stop_timecode.timecode #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_prepare_settings.url_path #=> Array
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_prepare_settings.url_path[0] #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_switch_settings.input_attachment_name_reference #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.input_timecode_source #=> String, one of "ZEROBASED", "EMBEDDED"
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.start_timecode.timecode #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.stop_timecode.last_frame_clipping_behavior #=> String, one of "EXCLUDE_LAST_FRAME", "INCLUDE_LAST_FRAME"
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.stop_timecode.timecode #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_switch_settings.url_path #=> Array
    #   resp.creates.schedule_actions[0].schedule_action_settings.input_switch_settings.url_path[0] #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.pause_state_settings.pipelines #=> Array
    #   resp.creates.schedule_actions[0].schedule_action_settings.pause_state_settings.pipelines[0].pipeline_id #=> String, one of "PIPELINE_0", "PIPELINE_1"
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_return_to_network_settings.splice_event_id #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.duration #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.splice_event_id #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors #=> Array
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.archive_allowed_flag #=> String, one of "ARCHIVE_NOT_ALLOWED", "ARCHIVE_ALLOWED"
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.device_restrictions #=> String, one of "NONE", "RESTRICT_GROUP0", "RESTRICT_GROUP1", "RESTRICT_GROUP2"
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.no_regional_blackout_flag #=> String, one of "REGIONAL_BLACKOUT", "NO_REGIONAL_BLACKOUT"
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.web_delivery_allowed_flag #=> String, one of "WEB_DELIVERY_NOT_ALLOWED", "WEB_DELIVERY_ALLOWED"
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segment_num #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_cancel_indicator #=> String, one of "SEGMENTATION_EVENT_NOT_CANCELED", "SEGMENTATION_EVENT_CANCELED"
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_duration #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_event_id #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_type_id #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid_type #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segments_expected #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segment_num #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segments_expected #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.duration #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_in #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_out #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.height #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.password_param #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.uri #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.username #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_x #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_y #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.layer #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.opacity #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.width #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.fade_out #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.layer #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_start_settings.fixed_mode_schedule_action_start_settings.time #=> String
    #   resp.creates.schedule_actions[0].schedule_action_start_settings.follow_mode_schedule_action_start_settings.follow_point #=> String, one of "END", "START"
    #   resp.creates.schedule_actions[0].schedule_action_start_settings.follow_mode_schedule_action_start_settings.reference_action_name #=> String
    #   resp.deletes.schedule_actions #=> Array
    #   resp.deletes.schedule_actions[0].action_name #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.hls_id_3_segment_tagging_settings.tag #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.hls_timed_metadata_settings.id_3 #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_attachment_name_reference #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.input_timecode_source #=> String, one of "ZEROBASED", "EMBEDDED"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.start_timecode.timecode #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.stop_timecode.last_frame_clipping_behavior #=> String, one of "EXCLUDE_LAST_FRAME", "INCLUDE_LAST_FRAME"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.stop_timecode.timecode #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_prepare_settings.url_path #=> Array
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_prepare_settings.url_path[0] #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_switch_settings.input_attachment_name_reference #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.input_timecode_source #=> String, one of "ZEROBASED", "EMBEDDED"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.start_timecode.timecode #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.stop_timecode.last_frame_clipping_behavior #=> String, one of "EXCLUDE_LAST_FRAME", "INCLUDE_LAST_FRAME"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.stop_timecode.timecode #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_switch_settings.url_path #=> Array
    #   resp.deletes.schedule_actions[0].schedule_action_settings.input_switch_settings.url_path[0] #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.pause_state_settings.pipelines #=> Array
    #   resp.deletes.schedule_actions[0].schedule_action_settings.pause_state_settings.pipelines[0].pipeline_id #=> String, one of "PIPELINE_0", "PIPELINE_1"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_return_to_network_settings.splice_event_id #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.duration #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.splice_event_id #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors #=> Array
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.archive_allowed_flag #=> String, one of "ARCHIVE_NOT_ALLOWED", "ARCHIVE_ALLOWED"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.device_restrictions #=> String, one of "NONE", "RESTRICT_GROUP0", "RESTRICT_GROUP1", "RESTRICT_GROUP2"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.no_regional_blackout_flag #=> String, one of "REGIONAL_BLACKOUT", "NO_REGIONAL_BLACKOUT"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.web_delivery_allowed_flag #=> String, one of "WEB_DELIVERY_NOT_ALLOWED", "WEB_DELIVERY_ALLOWED"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segment_num #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_cancel_indicator #=> String, one of "SEGMENTATION_EVENT_NOT_CANCELED", "SEGMENTATION_EVENT_CANCELED"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_duration #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_event_id #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_type_id #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid_type #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segments_expected #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segment_num #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segments_expected #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.duration #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_in #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_out #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.height #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.password_param #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.uri #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.username #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_x #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_y #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.layer #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.opacity #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.width #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.fade_out #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.layer #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_start_settings.fixed_mode_schedule_action_start_settings.time #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_start_settings.follow_mode_schedule_action_start_settings.follow_point #=> String, one of "END", "START"
    #   resp.deletes.schedule_actions[0].schedule_action_start_settings.follow_mode_schedule_action_start_settings.reference_action_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchUpdateSchedule AWS API Documentation
    #
    # @overload batch_update_schedule(params = {})
    # @param [Hash] params ({})
    def batch_update_schedule(params = {}, options = {})
      req = build_request(:batch_update_schedule, params)
      req.send_request(options)
    end

    # Cancel an input device transfer that you have requested.
    #
    # @option params [required, String] :input_device_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_input_device_transfer({
    #     input_device_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CancelInputDeviceTransfer AWS API Documentation
    #
    # @overload cancel_input_device_transfer(params = {})
    # @param [Hash] params ({})
    def cancel_input_device_transfer(params = {}, options = {})
      req = build_request(:cancel_input_device_transfer, params)
      req.send_request(options)
    end

    # Creates a new channel
    #
    # @option params [Types::CdiInputSpecification] :cdi_input_specification
    #
    # @option params [String] :channel_class
    #   A standard channel has two encoding pipelines and a single pipeline
    #   channel only has one.
    #
    # @option params [Array<Types::OutputDestination>] :destinations
    #
    # @option params [Types::EncoderSettings] :encoder_settings
    #   Encoder Settings
    #
    # @option params [Array<Types::InputAttachment>] :input_attachments
    #
    # @option params [Types::InputSpecification] :input_specification
    #
    # @option params [String] :log_level
    #   The log level the user wants for their channel.
    #
    # @option params [String] :name
    #
    # @option params [String] :request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :reserved
    #
    # @option params [String] :role_arn
    #
    # @option params [Hash<String,String>] :tags
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#channel #channel} => Types::Channel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     cdi_input_specification: {
    #       resolution: "SD", # accepts SD, HD, FHD, UHD
    #     },
    #     channel_class: "STANDARD", # accepts STANDARD, SINGLE_PIPELINE
    #     destinations: [
    #       {
    #         id: "__string",
    #         media_package_settings: [
    #           {
    #             channel_id: "__stringMin1",
    #           },
    #         ],
    #         multiplex_settings: {
    #           multiplex_id: "__stringMin1",
    #           program_name: "__stringMin1",
    #         },
    #         settings: [
    #           {
    #             password_param: "__string",
    #             stream_name: "__string",
    #             url: "__string",
    #             username: "__string",
    #           },
    #         ],
    #       },
    #     ],
    #     encoder_settings: {
    #       audio_descriptions: [ # required
    #         {
    #           audio_normalization_settings: {
    #             algorithm: "ITU_1770_1", # accepts ITU_1770_1, ITU_1770_2
    #             algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO
    #             target_lkfs: 1.0,
    #           },
    #           audio_selector_name: "__string", # required
    #           audio_type: "CLEAN_EFFECTS", # accepts CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY
    #           audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           codec_settings: {
    #             aac_settings: {
    #               bitrate: 1.0,
    #               coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #               input_type: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #               profile: "HEV1", # accepts HEV1, HEV2, LC
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #               sample_rate: 1.0,
    #               spec: "MPEG2", # accepts MPEG2, MPEG4
    #               vbr_quality: "HIGH", # accepts HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW
    #             },
    #             ac_3_settings: {
    #               bitrate: 1.0,
    #               bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #               dialnorm: 1,
    #               drc_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #               lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             },
    #             eac_3_settings: {
    #               attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #               bitrate: 1.0,
    #               bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #               dc_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               dialnorm: 1,
    #               drc_line: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #               drc_rf: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #               lfe_control: "LFE", # accepts LFE, NO_LFE
    #               lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               lo_ro_center_mix_level: 1.0,
    #               lo_ro_surround_mix_level: 1.0,
    #               lt_rt_center_mix_level: 1.0,
    #               lt_rt_surround_mix_level: 1.0,
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               passthrough_control: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, WHEN_POSSIBLE
    #               phase_control: "NO_SHIFT", # accepts NO_SHIFT, SHIFT_90_DEGREES
    #               stereo_downmix: "DPL2", # accepts DPL2, LO_RO, LT_RT, NOT_INDICATED
    #               surround_ex_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #               surround_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #             },
    #             mp_2_settings: {
    #               bitrate: 1.0,
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0
    #               sample_rate: 1.0,
    #             },
    #             pass_through_settings: {
    #             },
    #             wav_settings: {
    #               bit_depth: 1.0,
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_4_0, CODING_MODE_8_0
    #               sample_rate: 1.0,
    #             },
    #           },
    #           language_code: "__stringMin1Max35",
    #           language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           name: "__string", # required
    #           remix_settings: {
    #             channel_mappings: [ # required
    #               {
    #                 input_channel_levels: [ # required
    #                   {
    #                     gain: 1, # required
    #                     input_channel: 1, # required
    #                   },
    #                 ],
    #                 output_channel: 1, # required
    #               },
    #             ],
    #             channels_in: 1,
    #             channels_out: 1,
    #           },
    #           stream_name: "__string",
    #         },
    #       ],
    #       avail_blanking: {
    #         avail_blanking_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         state: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       avail_configuration: {
    #         avail_settings: {
    #           scte_35_splice_insert: {
    #             ad_avail_offset: 1,
    #             no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           },
    #           scte_35_time_signal_apos: {
    #             ad_avail_offset: 1,
    #             no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           },
    #         },
    #       },
    #       blackout_slate: {
    #         blackout_slate_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         network_end_blackout: "DISABLED", # accepts DISABLED, ENABLED
    #         network_end_blackout_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         network_id: "__stringMin34Max34",
    #         state: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       caption_descriptions: [
    #         {
    #           caption_selector_name: "__string", # required
    #           destination_settings: {
    #             arib_destination_settings: {
    #             },
    #             burn_in_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #               background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               background_opacity: 1,
    #               font: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: "__string",
    #               outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               outline_size: 1,
    #               shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             dvb_sub_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #               background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               background_opacity: 1,
    #               font: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: "__string",
    #               outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               outline_size: 1,
    #               shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             ebu_tt_d_destination_settings: {
    #               fill_line_gap: "DISABLED", # accepts DISABLED, ENABLED
    #               font_family: "__string",
    #               style_control: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #             },
    #             embedded_destination_settings: {
    #             },
    #             embedded_plus_scte_20_destination_settings: {
    #             },
    #             rtmp_caption_info_destination_settings: {
    #             },
    #             scte_20_plus_embedded_destination_settings: {
    #             },
    #             scte_27_destination_settings: {
    #             },
    #             smpte_tt_destination_settings: {
    #             },
    #             teletext_destination_settings: {
    #             },
    #             ttml_destination_settings: {
    #               style_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED
    #             },
    #             webvtt_destination_settings: {
    #             },
    #           },
    #           language_code: "__string",
    #           language_description: "__string",
    #           name: "__string", # required
    #         },
    #       ],
    #       feature_activations: {
    #         input_prepare_schedule_actions: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       global_configuration: {
    #         initial_audio_gain: 1,
    #         input_end_action: "NONE", # accepts NONE, SWITCH_AND_LOOP_INPUTS
    #         input_loss_behavior: {
    #           black_frame_msec: 1,
    #           input_loss_image_color: "__stringMin6Max6",
    #           input_loss_image_slate: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           input_loss_image_type: "COLOR", # accepts COLOR, SLATE
    #           repeat_frame_msec: 1,
    #         },
    #         output_locking_mode: "EPOCH_LOCKING", # accepts EPOCH_LOCKING, PIPELINE_LOCKING
    #         output_timing_source: "INPUT_CLOCK", # accepts INPUT_CLOCK, SYSTEM_CLOCK
    #         support_low_framerate_inputs: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       nielsen_configuration: {
    #         distributor_id: "__string",
    #         nielsen_pcm_to_id_3_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       output_groups: [ # required
    #         {
    #           name: "__stringMax32",
    #           output_group_settings: { # required
    #             archive_group_settings: {
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               rollover_interval: 1,
    #             },
    #             frame_capture_group_settings: {
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #             },
    #             hls_group_settings: {
    #               ad_markers: ["ADOBE"], # accepts ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
    #               base_url_content: "__string",
    #               base_url_content_1: "__string",
    #               base_url_manifest: "__string",
    #               base_url_manifest_1: "__string",
    #               caption_language_mappings: [
    #                 {
    #                   caption_channel: 1, # required
    #                   language_code: "__stringMin3Max3", # required
    #                   language_description: "__stringMin1", # required
    #                 },
    #               ],
    #               caption_language_setting: "INSERT", # accepts INSERT, NONE, OMIT
    #               client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #               codec_specification: "RFC_4281", # accepts RFC_4281, RFC_6381
    #               constant_iv: "__stringMin32Max32",
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #               encryption_type: "AES128", # accepts AES128, SAMPLE_AES
    #               hls_cdn_settings: {
    #                 hls_akamai_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                   salt: "__string",
    #                   token: "__string",
    #                 },
    #                 hls_basic_put_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #                 hls_media_store_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #                 hls_webdav_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #               },
    #               hls_id_3_segment_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #               i_frame_only_playlists: "DISABLED", # accepts DISABLED, STANDARD
    #               index_n_segments: 1,
    #               input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #               iv_in_manifest: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               iv_source: "EXPLICIT", # accepts EXPLICIT, FOLLOWS_SEGMENT_NUMBER
    #               keep_segments: 1,
    #               key_format: "__string",
    #               key_format_versions: "__string",
    #               key_provider_settings: {
    #                 static_key_settings: {
    #                   key_provider_server: {
    #                     password_param: "__string",
    #                     uri: "__string", # required
    #                     username: "__string",
    #                   },
    #                   static_key_value: "__stringMin32Max32", # required
    #                 },
    #               },
    #               manifest_compression: "GZIP", # accepts GZIP, NONE
    #               manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #               min_segment_length: 1,
    #               mode: "LIVE", # accepts LIVE, VOD
    #               output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY, VARIANT_MANIFESTS_AND_SEGMENTS
    #               program_date_time: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               program_date_time_period: 1,
    #               redundant_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #               segment_length: 1,
    #               segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #               segments_per_subdirectory: 1,
    #               stream_inf_resolution: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #               timed_metadata_id_3_period: 1,
    #               timestamp_delta_milliseconds: 1,
    #               ts_file_mode: "SEGMENTED_FILES", # accepts SEGMENTED_FILES, SINGLE_FILE
    #             },
    #             media_package_group_settings: {
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #             },
    #             ms_smooth_group_settings: {
    #               acquisition_point_id: "__string",
    #               audio_only_timecode_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED_CLOCK
    #               certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #               connection_retry_interval: 1,
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               event_id: "__string",
    #               event_id_mode: "NO_EVENT_ID", # accepts NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP
    #               event_stop_behavior: "NONE", # accepts NONE, SEND_EOS
    #               filecache_duration: 1,
    #               fragment_length: 1,
    #               input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #               num_retries: 1,
    #               restart_delay: 1,
    #               segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #               send_delay_ms: 1,
    #               sparse_track_type: "NONE", # accepts NONE, SCTE_35, SCTE_35_WITHOUT_SEGMENTATION
    #               stream_manifest_behavior: "DO_NOT_SEND", # accepts DO_NOT_SEND, SEND
    #               timestamp_offset: "__string",
    #               timestamp_offset_mode: "USE_CONFIGURED_OFFSET", # accepts USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE
    #             },
    #             multiplex_group_settings: {
    #             },
    #             rtmp_group_settings: {
    #               authentication_scheme: "AKAMAI", # accepts AKAMAI, COMMON
    #               cache_full_behavior: "DISCONNECT_IMMEDIATELY", # accepts DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER
    #               cache_length: 1,
    #               caption_data: "ALL", # accepts ALL, FIELD1_608, FIELD1_AND_FIELD2_608
    #               input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #               restart_delay: 1,
    #             },
    #             udp_group_settings: {
    #               input_loss_action: "DROP_PROGRAM", # accepts DROP_PROGRAM, DROP_TS, EMIT_PROGRAM
    #               timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #               timed_metadata_id_3_period: 1,
    #             },
    #           },
    #           outputs: [ # required
    #             {
    #               audio_description_names: ["__string"],
    #               caption_description_names: ["__string"],
    #               output_name: "__stringMin1Max255",
    #               output_settings: { # required
    #                 archive_output_settings: {
    #                   container_settings: { # required
    #                     m2ts_settings: {
    #                       absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                       arib: "DISABLED", # accepts DISABLED, ENABLED
    #                       arib_captions_pid: "__string",
    #                       arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                       audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: "__string",
    #                       audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                       bitrate: 1,
    #                       buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                       cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                       dvb_nit_settings: {
    #                         network_id: 1, # required
    #                         network_name: "__stringMin1Max256", # required
    #                         rep_interval: 1,
    #                       },
    #                       dvb_sdt_settings: {
    #                         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                         rep_interval: 1,
    #                         service_name: "__stringMin1Max256",
    #                         service_provider_name: "__stringMin1Max256",
    #                       },
    #                       dvb_sub_pids: "__string",
    #                       dvb_tdt_settings: {
    #                         rep_interval: 1,
    #                       },
    #                       dvb_teletext_pid: "__string",
    #                       ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                       ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                       ebp_lookahead_ms: 1,
    #                       ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                       ecm_pid: "__string",
    #                       es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                       etv_platform_pid: "__string",
    #                       etv_signal_pid: "__string",
    #                       fragment_time: 1.0,
    #                       klv: "NONE", # accepts NONE, PASSTHROUGH
    #                       klv_data_pids: "__string",
    #                       nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       null_packet_bitrate: 1.0,
    #                       pat_interval: 1,
    #                       pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                       pcr_period: 1,
    #                       pcr_pid: "__string",
    #                       pmt_interval: 1,
    #                       pmt_pid: "__string",
    #                       program_num: 1,
    #                       rate_mode: "CBR", # accepts CBR, VBR
    #                       scte_27_pids: "__string",
    #                       scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                       scte_35_pid: "__string",
    #                       segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                       segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                       segmentation_time: 1.0,
    #                       timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       timed_metadata_pid: "__string",
    #                       transport_stream_id: 1,
    #                       video_pid: "__string",
    #                     },
    #                     raw_settings: {
    #                     },
    #                   },
    #                   extension: "__string",
    #                   name_modifier: "__string",
    #                 },
    #                 frame_capture_output_settings: {
    #                   name_modifier: "__string",
    #                 },
    #                 hls_output_settings: {
    #                   h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                   hls_settings: { # required
    #                     audio_only_hls_settings: {
    #                       audio_group_id: "__string",
    #                       audio_only_image: {
    #                         password_param: "__string",
    #                         uri: "__string", # required
    #                         username: "__string",
    #                       },
    #                       audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                       segment_type: "AAC", # accepts AAC, FMP4
    #                     },
    #                     fmp_4_hls_settings: {
    #                       audio_rendition_sets: "__string",
    #                       nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                     },
    #                     standard_hls_settings: {
    #                       audio_rendition_sets: "__string",
    #                       m3u_8_settings: { # required
    #                         audio_frames_per_pes: 1,
    #                         audio_pids: "__string",
    #                         ecm_pid: "__string",
    #                         nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         pat_interval: 1,
    #                         pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                         pcr_period: 1,
    #                         pcr_pid: "__string",
    #                         pmt_interval: 1,
    #                         pmt_pid: "__string",
    #                         program_num: 1,
    #                         scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         scte_35_pid: "__string",
    #                         timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         timed_metadata_pid: "__string",
    #                         transport_stream_id: 1,
    #                         video_pid: "__string",
    #                       },
    #                     },
    #                   },
    #                   name_modifier: "__stringMin1",
    #                   segment_modifier: "__string",
    #                 },
    #                 media_package_output_settings: {
    #                 },
    #                 ms_smooth_output_settings: {
    #                   h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                   name_modifier: "__string",
    #                 },
    #                 multiplex_output_settings: {
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                 },
    #                 rtmp_output_settings: {
    #                   certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #                   connection_retry_interval: 1,
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   num_retries: 1,
    #                 },
    #                 udp_output_settings: {
    #                   buffer_msec: 1,
    #                   container_settings: { # required
    #                     m2ts_settings: {
    #                       absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                       arib: "DISABLED", # accepts DISABLED, ENABLED
    #                       arib_captions_pid: "__string",
    #                       arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                       audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: "__string",
    #                       audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                       bitrate: 1,
    #                       buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                       cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                       dvb_nit_settings: {
    #                         network_id: 1, # required
    #                         network_name: "__stringMin1Max256", # required
    #                         rep_interval: 1,
    #                       },
    #                       dvb_sdt_settings: {
    #                         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                         rep_interval: 1,
    #                         service_name: "__stringMin1Max256",
    #                         service_provider_name: "__stringMin1Max256",
    #                       },
    #                       dvb_sub_pids: "__string",
    #                       dvb_tdt_settings: {
    #                         rep_interval: 1,
    #                       },
    #                       dvb_teletext_pid: "__string",
    #                       ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                       ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                       ebp_lookahead_ms: 1,
    #                       ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                       ecm_pid: "__string",
    #                       es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                       etv_platform_pid: "__string",
    #                       etv_signal_pid: "__string",
    #                       fragment_time: 1.0,
    #                       klv: "NONE", # accepts NONE, PASSTHROUGH
    #                       klv_data_pids: "__string",
    #                       nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       null_packet_bitrate: 1.0,
    #                       pat_interval: 1,
    #                       pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                       pcr_period: 1,
    #                       pcr_pid: "__string",
    #                       pmt_interval: 1,
    #                       pmt_pid: "__string",
    #                       program_num: 1,
    #                       rate_mode: "CBR", # accepts CBR, VBR
    #                       scte_27_pids: "__string",
    #                       scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                       scte_35_pid: "__string",
    #                       segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                       segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                       segmentation_time: 1.0,
    #                       timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       timed_metadata_pid: "__string",
    #                       transport_stream_id: 1,
    #                       video_pid: "__string",
    #                     },
    #                   },
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   fec_output_settings: {
    #                     column_depth: 1,
    #                     include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #                     row_length: 1,
    #                   },
    #                 },
    #               },
    #               video_description_name: "__string",
    #             },
    #           ],
    #         },
    #       ],
    #       timecode_config: { # required
    #         source: "EMBEDDED", # required, accepts EMBEDDED, SYSTEMCLOCK, ZEROBASED
    #         sync_threshold: 1,
    #       },
    #       video_descriptions: [ # required
    #         {
    #           codec_settings: {
    #             frame_capture_settings: {
    #               capture_interval: 1, # required
    #               capture_interval_units: "MILLISECONDS", # accepts MILLISECONDS, SECONDS
    #             },
    #             h264_settings: {
    #               adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #               afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #               bitrate: 1,
    #               buf_fill_pct: 1,
    #               buf_size: 1,
    #               color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #               color_space_settings: {
    #                 color_space_passthrough_settings: {
    #                 },
    #                 rec_601_settings: {
    #                 },
    #                 rec_709_settings: {
    #                 },
    #               },
    #               entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #               filter_settings: {
    #                 temporal_filter_settings: {
    #                   post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                   strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                 },
    #               },
    #               fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #               flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               force_field_pictures: "DISABLED", # accepts DISABLED, ENABLED
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               gop_num_b_frames: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               level: "H264_LEVEL_1", # accepts H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO
    #               look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               num_ref_frames: 1,
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #               quality_level: "ENHANCED_QUALITY", # accepts ENHANCED_QUALITY, STANDARD_QUALITY
    #               qvbr_quality_level: 1,
    #               rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR, VBR
    #               scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slices: 1,
    #               softness: 1,
    #               spatial_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #               syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #               temporal_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #             },
    #             h265_settings: {
    #               adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #               afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #               alternative_transfer_function: "INSERT", # accepts INSERT, OMIT
    #               bitrate: 1,
    #               buf_size: 1,
    #               color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #               color_space_settings: {
    #                 color_space_passthrough_settings: {
    #                 },
    #                 hdr_10_settings: {
    #                   max_cll: 1,
    #                   max_fall: 1,
    #                 },
    #                 rec_601_settings: {
    #                 },
    #                 rec_709_settings: {
    #                 },
    #               },
    #               filter_settings: {
    #                 temporal_filter_settings: {
    #                   post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                   strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                 },
    #               },
    #               fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #               flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               framerate_denominator: 1, # required
    #               framerate_numerator: 1, # required
    #               gop_closed_cadence: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               level: "H265_LEVEL_1", # accepts H265_LEVEL_1, H265_LEVEL_2, H265_LEVEL_2_1, H265_LEVEL_3, H265_LEVEL_3_1, H265_LEVEL_4, H265_LEVEL_4_1, H265_LEVEL_5, H265_LEVEL_5_1, H265_LEVEL_5_2, H265_LEVEL_6, H265_LEVEL_6_1, H265_LEVEL_6_2, H265_LEVEL_AUTO
    #               look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               profile: "MAIN", # accepts MAIN, MAIN_10BIT
    #               qvbr_quality_level: 1,
    #               rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR
    #               scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slices: 1,
    #               tier: "HIGH", # accepts HIGH, MAIN
    #               timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #             },
    #             mpeg_2_settings: {
    #               adaptive_quantization: "AUTO", # accepts AUTO, HIGH, LOW, MEDIUM, OFF
    #               afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #               color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #               color_space: "AUTO", # accepts AUTO, PASSTHROUGH
    #               display_aspect_ratio: "DISPLAYRATIO16X9", # accepts DISPLAYRATIO16X9, DISPLAYRATIO4X3
    #               filter_settings: {
    #                 temporal_filter_settings: {
    #                   post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                   strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                 },
    #               },
    #               fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #               framerate_denominator: 1, # required
    #               framerate_numerator: 1, # required
    #               gop_closed_cadence: 1,
    #               gop_num_b_frames: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #               subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #               timecode_insertion: "DISABLED", # accepts DISABLED, GOP_TIMECODE
    #             },
    #           },
    #           height: 1,
    #           name: "__string", # required
    #           respond_to_afd: "NONE", # accepts NONE, PASSTHROUGH, RESPOND
    #           scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #           sharpness: 1,
    #           width: 1,
    #         },
    #       ],
    #     },
    #     input_attachments: [
    #       {
    #         automatic_input_failover_settings: {
    #           input_preference: "EQUAL_INPUT_PREFERENCE", # accepts EQUAL_INPUT_PREFERENCE, PRIMARY_INPUT_PREFERRED
    #           secondary_input_id: "__string", # required
    #         },
    #         input_attachment_name: "__string",
    #         input_id: "__string",
    #         input_settings: {
    #           audio_selectors: [
    #             {
    #               name: "__stringMin1", # required
    #               selector_settings: {
    #                 audio_language_selection: {
    #                   language_code: "__string", # required
    #                   language_selection_policy: "LOOSE", # accepts LOOSE, STRICT
    #                 },
    #                 audio_pid_selection: {
    #                   pid: 1, # required
    #                 },
    #                 audio_track_selection: {
    #                   tracks: [ # required
    #                     {
    #                       track: 1, # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #           ],
    #           caption_selectors: [
    #             {
    #               language_code: "__string",
    #               name: "__stringMin1", # required
    #               selector_settings: {
    #                 ancillary_source_settings: {
    #                   source_ancillary_channel_number: 1,
    #                 },
    #                 arib_source_settings: {
    #                 },
    #                 dvb_sub_source_settings: {
    #                   pid: 1,
    #                 },
    #                 embedded_source_settings: {
    #                   convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                   scte_20_detection: "AUTO", # accepts AUTO, OFF
    #                   source_608_channel_number: 1,
    #                   source_608_track_number: 1,
    #                 },
    #                 scte_20_source_settings: {
    #                   convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                   source_608_channel_number: 1,
    #                 },
    #                 scte_27_source_settings: {
    #                   pid: 1,
    #                 },
    #                 teletext_source_settings: {
    #                   page_number: "__string",
    #                 },
    #               },
    #             },
    #           ],
    #           deblock_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           denoise_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           filter_strength: 1,
    #           input_filter: "AUTO", # accepts AUTO, DISABLED, FORCED
    #           network_input_settings: {
    #             hls_input_settings: {
    #               bandwidth: 1,
    #               buffer_segments: 1,
    #               retries: 1,
    #               retry_interval: 1,
    #             },
    #             server_validation: "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", # accepts CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY
    #           },
    #           smpte_2038_data_preference: "IGNORE", # accepts IGNORE, PREFER
    #           source_end_behavior: "CONTINUE", # accepts CONTINUE, LOOP
    #           video_selector: {
    #             color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709
    #             color_space_usage: "FALLBACK", # accepts FALLBACK, FORCE
    #             selector_settings: {
    #               video_selector_pid: {
    #                 pid: 1,
    #               },
    #               video_selector_program_id: {
    #                 program_id: 1,
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     input_specification: {
    #       codec: "MPEG2", # accepts MPEG2, AVC, HEVC
    #       maximum_bitrate: "MAX_10_MBPS", # accepts MAX_10_MBPS, MAX_20_MBPS, MAX_50_MBPS
    #       resolution: "SD", # accepts SD, HD, UHD
    #     },
    #     log_level: "ERROR", # accepts ERROR, WARNING, INFO, DEBUG, DISABLED
    #     name: "__string",
    #     request_id: "__string",
    #     reserved: "__string",
    #     role_arn: "__string",
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.arn #=> String
    #   resp.channel.cdi_input_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.channel.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.channel.destinations #=> Array
    #   resp.channel.destinations[0].id #=> String
    #   resp.channel.destinations[0].media_package_settings #=> Array
    #   resp.channel.destinations[0].media_package_settings[0].channel_id #=> String
    #   resp.channel.destinations[0].multiplex_settings.multiplex_id #=> String
    #   resp.channel.destinations[0].multiplex_settings.program_name #=> String
    #   resp.channel.destinations[0].settings #=> Array
    #   resp.channel.destinations[0].settings[0].password_param #=> String
    #   resp.channel.destinations[0].settings[0].stream_name #=> String
    #   resp.channel.destinations[0].settings[0].url #=> String
    #   resp.channel.destinations[0].settings[0].username #=> String
    #   resp.channel.egress_endpoints #=> Array
    #   resp.channel.egress_endpoints[0].source_ip #=> String
    #   resp.channel.encoder_settings.audio_descriptions #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_4_0", "CODING_MODE_8_0"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.channel.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_id #=> String
    #   resp.channel.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.caption_descriptions #=> Array
    #   resp.channel.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.fill_line_gap #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.font_family #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.style_control #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.feature_activations.input_prepare_schedule_actions #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.channel.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.channel.encoder_settings.global_configuration.output_locking_mode #=> String, one of "EPOCH_LOCKING", "PIPELINE_LOCKING"
    #   resp.channel.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.channel.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.nielsen_configuration.distributor_id #=> String
    #   resp.channel.encoder_settings.nielsen_configuration.nielsen_pcm_to_id_3_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups #=> Array
    #   resp.channel.encoder_settings.output_groups[0].name #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.frame_capture_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content_1 #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest_1 #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_id_3_segment_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.i_frame_only_playlists #=> String, one of "DISABLED", "STANDARD"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY", "VARIANT_MANIFESTS_AND_SEGMENTS"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.redundant_manifest #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.media_package_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35", "SCTE_35_WITHOUT_SEGMENTATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.frame_capture_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.segment_type #=> String, one of "AAC", "FMP4"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.audio_rendition_sets #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.multiplex_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.channel.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.channel.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.channel.encoder_settings.video_descriptions #=> Array
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval_units #=> String, one of "MILLISECONDS", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.force_field_pictures #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.quality_level #=> String, one of "ENHANCED_QUALITY", "STANDARD_QUALITY"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.qvbr_quality_level #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR", "VBR"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.alternative_transfer_function #=> String, one of "INSERT", "OMIT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.buf_size #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_cll #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_fall #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size #=> Float
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.level #=> String, one of "H265_LEVEL_1", "H265_LEVEL_2", "H265_LEVEL_2_1", "H265_LEVEL_3", "H265_LEVEL_3_1", "H265_LEVEL_4", "H265_LEVEL_4_1", "H265_LEVEL_5", "H265_LEVEL_5_1", "H265_LEVEL_5_2", "H265_LEVEL_6", "H265_LEVEL_6_1", "H265_LEVEL_6_2", "H265_LEVEL_AUTO"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.profile #=> String, one of "MAIN", "MAIN_10BIT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.qvbr_quality_level #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.slices #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.tier #=> String, one of "HIGH", "MAIN"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "AUTO", "HIGH", "LOW", "MEDIUM", "OFF"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_space #=> String, one of "AUTO", "PASSTHROUGH"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.display_aspect_ratio #=> String, one of "DISPLAYRATIO16X9", "DISPLAYRATIO4X3"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_num_b_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.timecode_insertion #=> String, one of "DISABLED", "GOP_TIMECODE"
    #   resp.channel.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.channel.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.channel.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.channel.id #=> String
    #   resp.channel.input_attachments #=> Array
    #   resp.channel.input_attachments[0].automatic_input_failover_settings.input_preference #=> String, one of "EQUAL_INPUT_PREFERENCE", "PRIMARY_INPUT_PREFERRED"
    #   resp.channel.input_attachments[0].automatic_input_failover_settings.secondary_input_id #=> String
    #   resp.channel.input_attachments[0].input_attachment_name #=> String
    #   resp.channel.input_attachments[0].input_id #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks #=> Array
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks[0].track #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.channel.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.channel.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.channel.input_attachments[0].input_settings.smpte_2038_data_preference #=> String, one of "IGNORE", "PREFER"
    #   resp.channel.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.channel.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.channel.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.channel.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.channel.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.channel.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.channel.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.channel.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.channel.name #=> String
    #   resp.channel.pipeline_details #=> Array
    #   resp.channel.pipeline_details[0].active_input_attachment_name #=> String
    #   resp.channel.pipeline_details[0].active_input_switch_action_name #=> String
    #   resp.channel.pipeline_details[0].pipeline_id #=> String
    #   resp.channel.pipelines_running_count #=> Integer
    #   resp.channel.role_arn #=> String
    #   resp.channel.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"
    #   resp.channel.tags #=> Hash
    #   resp.channel.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Create an input
    #
    # @option params [Array<Types::InputDestinationRequest>] :destinations
    #
    # @option params [Array<Types::InputDeviceSettings>] :input_devices
    #
    # @option params [Array<String>] :input_security_groups
    #
    # @option params [Array<Types::MediaConnectFlowRequest>] :media_connect_flows
    #
    # @option params [String] :name
    #
    # @option params [String] :request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :role_arn
    #
    # @option params [Array<Types::InputSourceRequest>] :sources
    #
    # @option params [Hash<String,String>] :tags
    #
    # @option params [String] :type
    #
    # @option params [Types::InputVpcRequest] :vpc
    #   Settings for a private VPC Input. When this property is specified, the
    #   input destination addresses will be created in a VPC rather than with
    #   public Internet addresses. This property requires setting the roleArn
    #   property on Input creation. Not compatible with the
    #   inputSecurityGroups property.
    #
    # @return [Types::CreateInputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInputResponse#input #input} => Types::Input
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_input({
    #     destinations: [
    #       {
    #         stream_name: "__string",
    #       },
    #     ],
    #     input_devices: [
    #       {
    #         id: "__string",
    #       },
    #     ],
    #     input_security_groups: ["__string"],
    #     media_connect_flows: [
    #       {
    #         flow_arn: "__string",
    #       },
    #     ],
    #     name: "__string",
    #     request_id: "__string",
    #     role_arn: "__string",
    #     sources: [
    #       {
    #         password_param: "__string",
    #         url: "__string",
    #         username: "__string",
    #       },
    #     ],
    #     tags: {
    #       "__string" => "__string",
    #     },
    #     type: "UDP_PUSH", # accepts UDP_PUSH, RTP_PUSH, RTMP_PUSH, RTMP_PULL, URL_PULL, MP4_FILE, MEDIACONNECT, INPUT_DEVICE, AWS_CDI
    #     vpc: {
    #       security_group_ids: ["__string"],
    #       subnet_ids: ["__string"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.input.arn #=> String
    #   resp.input.attached_channels #=> Array
    #   resp.input.attached_channels[0] #=> String
    #   resp.input.destinations #=> Array
    #   resp.input.destinations[0].ip #=> String
    #   resp.input.destinations[0].port #=> String
    #   resp.input.destinations[0].url #=> String
    #   resp.input.destinations[0].vpc.availability_zone #=> String
    #   resp.input.destinations[0].vpc.network_interface_id #=> String
    #   resp.input.id #=> String
    #   resp.input.input_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.input.input_devices #=> Array
    #   resp.input.input_devices[0].id #=> String
    #   resp.input.input_source_type #=> String, one of "STATIC", "DYNAMIC"
    #   resp.input.media_connect_flows #=> Array
    #   resp.input.media_connect_flows[0].flow_arn #=> String
    #   resp.input.name #=> String
    #   resp.input.role_arn #=> String
    #   resp.input.security_groups #=> Array
    #   resp.input.security_groups[0] #=> String
    #   resp.input.sources #=> Array
    #   resp.input.sources[0].password_param #=> String
    #   resp.input.sources[0].url #=> String
    #   resp.input.sources[0].username #=> String
    #   resp.input.state #=> String, one of "CREATING", "DETACHED", "ATTACHED", "DELETING", "DELETED"
    #   resp.input.tags #=> Hash
    #   resp.input.tags["__string"] #=> String
    #   resp.input.type #=> String, one of "UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL", "URL_PULL", "MP4_FILE", "MEDIACONNECT", "INPUT_DEVICE", "AWS_CDI"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInput AWS API Documentation
    #
    # @overload create_input(params = {})
    # @param [Hash] params ({})
    def create_input(params = {}, options = {})
      req = build_request(:create_input, params)
      req.send_request(options)
    end

    # Creates a Input Security Group
    #
    # @option params [Hash<String,String>] :tags
    #
    # @option params [Array<Types::InputWhitelistRuleCidr>] :whitelist_rules
    #
    # @return [Types::CreateInputSecurityGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInputSecurityGroupResponse#security_group #security_group} => Types::InputSecurityGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_input_security_group({
    #     tags: {
    #       "__string" => "__string",
    #     },
    #     whitelist_rules: [
    #       {
    #         cidr: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.security_group.arn #=> String
    #   resp.security_group.id #=> String
    #   resp.security_group.inputs #=> Array
    #   resp.security_group.inputs[0] #=> String
    #   resp.security_group.state #=> String, one of "IDLE", "IN_USE", "UPDATING", "DELETED"
    #   resp.security_group.tags #=> Hash
    #   resp.security_group.tags["__string"] #=> String
    #   resp.security_group.whitelist_rules #=> Array
    #   resp.security_group.whitelist_rules[0].cidr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInputSecurityGroup AWS API Documentation
    #
    # @overload create_input_security_group(params = {})
    # @param [Hash] params ({})
    def create_input_security_group(params = {}, options = {})
      req = build_request(:create_input_security_group, params)
      req.send_request(options)
    end

    # Create a new multiplex.
    #
    # @option params [required, Array<String>] :availability_zones
    #
    # @option params [required, Types::MultiplexSettings] :multiplex_settings
    #   Contains configuration for a Multiplex event
    #
    # @option params [required, String] :name
    #
    # @option params [required, String] :request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #
    # @return [Types::CreateMultiplexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMultiplexResponse#multiplex #multiplex} => Types::Multiplex
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_multiplex({
    #     availability_zones: ["__string"], # required
    #     multiplex_settings: { # required
    #       maximum_video_buffer_delay_milliseconds: 1,
    #       transport_stream_bitrate: 1, # required
    #       transport_stream_id: 1, # required
    #       transport_stream_reserved_bitrate: 1,
    #     },
    #     name: "__string", # required
    #     request_id: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.multiplex.arn #=> String
    #   resp.multiplex.availability_zones #=> Array
    #   resp.multiplex.availability_zones[0] #=> String
    #   resp.multiplex.destinations #=> Array
    #   resp.multiplex.destinations[0].media_connect_settings.entitlement_arn #=> String
    #   resp.multiplex.id #=> String
    #   resp.multiplex.multiplex_settings.maximum_video_buffer_delay_milliseconds #=> Integer
    #   resp.multiplex.multiplex_settings.transport_stream_bitrate #=> Integer
    #   resp.multiplex.multiplex_settings.transport_stream_id #=> Integer
    #   resp.multiplex.multiplex_settings.transport_stream_reserved_bitrate #=> Integer
    #   resp.multiplex.name #=> String
    #   resp.multiplex.pipelines_running_count #=> Integer
    #   resp.multiplex.program_count #=> Integer
    #   resp.multiplex.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #   resp.multiplex.tags #=> Hash
    #   resp.multiplex.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateMultiplex AWS API Documentation
    #
    # @overload create_multiplex(params = {})
    # @param [Hash] params ({})
    def create_multiplex(params = {}, options = {})
      req = build_request(:create_multiplex, params)
      req.send_request(options)
    end

    # Create a new program in the multiplex.
    #
    # @option params [required, String] :multiplex_id
    #
    # @option params [required, Types::MultiplexProgramSettings] :multiplex_program_settings
    #   Multiplex Program settings configuration.
    #
    # @option params [required, String] :program_name
    #
    # @option params [required, String] :request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateMultiplexProgramResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMultiplexProgramResponse#multiplex_program #multiplex_program} => Types::MultiplexProgram
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_multiplex_program({
    #     multiplex_id: "__string", # required
    #     multiplex_program_settings: { # required
    #       preferred_channel_pipeline: "CURRENTLY_ACTIVE", # accepts CURRENTLY_ACTIVE, PIPELINE_0, PIPELINE_1
    #       program_number: 1, # required
    #       service_descriptor: {
    #         provider_name: "__stringMax256", # required
    #         service_name: "__stringMax256", # required
    #       },
    #       video_settings: {
    #         constant_bitrate: 1,
    #         statmux_settings: {
    #           maximum_bitrate: 1,
    #           minimum_bitrate: 1,
    #           priority: 1,
    #         },
    #       },
    #     },
    #     program_name: "__string", # required
    #     request_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.multiplex_program.channel_id #=> String
    #   resp.multiplex_program.multiplex_program_settings.preferred_channel_pipeline #=> String, one of "CURRENTLY_ACTIVE", "PIPELINE_0", "PIPELINE_1"
    #   resp.multiplex_program.multiplex_program_settings.program_number #=> Integer
    #   resp.multiplex_program.multiplex_program_settings.service_descriptor.provider_name #=> String
    #   resp.multiplex_program.multiplex_program_settings.service_descriptor.service_name #=> String
    #   resp.multiplex_program.multiplex_program_settings.video_settings.constant_bitrate #=> Integer
    #   resp.multiplex_program.multiplex_program_settings.video_settings.statmux_settings.maximum_bitrate #=> Integer
    #   resp.multiplex_program.multiplex_program_settings.video_settings.statmux_settings.minimum_bitrate #=> Integer
    #   resp.multiplex_program.multiplex_program_settings.video_settings.statmux_settings.priority #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.audio_pids #=> Array
    #   resp.multiplex_program.packet_identifiers_map.audio_pids[0] #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.dvb_sub_pids #=> Array
    #   resp.multiplex_program.packet_identifiers_map.dvb_sub_pids[0] #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.dvb_teletext_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.etv_platform_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.etv_signal_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.klv_data_pids #=> Array
    #   resp.multiplex_program.packet_identifiers_map.klv_data_pids[0] #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.pcr_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.pmt_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.private_metadata_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.scte_27_pids #=> Array
    #   resp.multiplex_program.packet_identifiers_map.scte_27_pids[0] #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.scte_35_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.timed_metadata_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.video_pid #=> Integer
    #   resp.multiplex_program.pipeline_details #=> Array
    #   resp.multiplex_program.pipeline_details[0].active_channel_pipeline #=> String
    #   resp.multiplex_program.pipeline_details[0].pipeline_id #=> String
    #   resp.multiplex_program.program_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateMultiplexProgram AWS API Documentation
    #
    # @overload create_multiplex_program(params = {})
    # @param [Hash] params ({})
    def create_multiplex_program(params = {}, options = {})
      req = build_request(:create_multiplex_program, params)
      req.send_request(options)
    end

    # Create tags for a resource
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [Hash<String,String>] :tags
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags({
    #     resource_arn: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateTags AWS API Documentation
    #
    # @overload create_tags(params = {})
    # @param [Hash] params ({})
    def create_tags(params = {}, options = {})
      req = build_request(:create_tags, params)
      req.send_request(options)
    end

    # Starts deletion of channel. The associated outputs are also deleted.
    #
    # @option params [required, String] :channel_id
    #
    # @return [Types::DeleteChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteChannelResponse#arn #arn} => String
    #   * {Types::DeleteChannelResponse#cdi_input_specification #cdi_input_specification} => Types::CdiInputSpecification
    #   * {Types::DeleteChannelResponse#channel_class #channel_class} => String
    #   * {Types::DeleteChannelResponse#destinations #destinations} => Array&lt;Types::OutputDestination&gt;
    #   * {Types::DeleteChannelResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::ChannelEgressEndpoint&gt;
    #   * {Types::DeleteChannelResponse#encoder_settings #encoder_settings} => Types::EncoderSettings
    #   * {Types::DeleteChannelResponse#id #id} => String
    #   * {Types::DeleteChannelResponse#input_attachments #input_attachments} => Array&lt;Types::InputAttachment&gt;
    #   * {Types::DeleteChannelResponse#input_specification #input_specification} => Types::InputSpecification
    #   * {Types::DeleteChannelResponse#log_level #log_level} => String
    #   * {Types::DeleteChannelResponse#name #name} => String
    #   * {Types::DeleteChannelResponse#pipeline_details #pipeline_details} => Array&lt;Types::PipelineDetail&gt;
    #   * {Types::DeleteChannelResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::DeleteChannelResponse#role_arn #role_arn} => String
    #   * {Types::DeleteChannelResponse#state #state} => String
    #   * {Types::DeleteChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     channel_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cdi_input_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.destinations #=> Array
    #   resp.destinations[0].id #=> String
    #   resp.destinations[0].media_package_settings #=> Array
    #   resp.destinations[0].media_package_settings[0].channel_id #=> String
    #   resp.destinations[0].multiplex_settings.multiplex_id #=> String
    #   resp.destinations[0].multiplex_settings.program_name #=> String
    #   resp.destinations[0].settings #=> Array
    #   resp.destinations[0].settings[0].password_param #=> String
    #   resp.destinations[0].settings[0].stream_name #=> String
    #   resp.destinations[0].settings[0].url #=> String
    #   resp.destinations[0].settings[0].username #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].source_ip #=> String
    #   resp.encoder_settings.audio_descriptions #=> Array
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_4_0", "CODING_MODE_8_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_id #=> String
    #   resp.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions #=> Array
    #   resp.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.fill_line_gap #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.font_family #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.style_control #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.encoder_settings.feature_activations.input_prepare_schedule_actions #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.output_locking_mode #=> String, one of "EPOCH_LOCKING", "PIPELINE_LOCKING"
    #   resp.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.nielsen_configuration.distributor_id #=> String
    #   resp.encoder_settings.nielsen_configuration.nielsen_pcm_to_id_3_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups #=> Array
    #   resp.encoder_settings.output_groups[0].name #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.frame_capture_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content_1 #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest_1 #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_id_3_segment_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.i_frame_only_playlists #=> String, one of "DISABLED", "STANDARD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY", "VARIANT_MANIFESTS_AND_SEGMENTS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.redundant_manifest #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.media_package_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35", "SCTE_35_WITHOUT_SEGMENTATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.frame_capture_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.segment_type #=> String, one of "AAC", "FMP4"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.multiplex_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.encoder_settings.video_descriptions #=> Array
    #   resp.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval_units #=> String, one of "MILLISECONDS", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.force_field_pictures #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.quality_level #=> String, one of "ENHANCED_QUALITY", "STANDARD_QUALITY"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.qvbr_quality_level #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR", "VBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.alternative_transfer_function #=> String, one of "INSERT", "OMIT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_cll #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_fall #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.level #=> String, one of "H265_LEVEL_1", "H265_LEVEL_2", "H265_LEVEL_2_1", "H265_LEVEL_3", "H265_LEVEL_3_1", "H265_LEVEL_4", "H265_LEVEL_4_1", "H265_LEVEL_5", "H265_LEVEL_5_1", "H265_LEVEL_5_2", "H265_LEVEL_6", "H265_LEVEL_6_1", "H265_LEVEL_6_2", "H265_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.profile #=> String, one of "MAIN", "MAIN_10BIT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.qvbr_quality_level #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.tier #=> String, one of "HIGH", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "AUTO", "HIGH", "LOW", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_space #=> String, one of "AUTO", "PASSTHROUGH"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.display_aspect_ratio #=> String, one of "DISPLAYRATIO16X9", "DISPLAYRATIO4X3"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.timecode_insertion #=> String, one of "DISABLED", "GOP_TIMECODE"
    #   resp.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.encoder_settings.video_descriptions[0].name #=> String
    #   resp.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.id #=> String
    #   resp.input_attachments #=> Array
    #   resp.input_attachments[0].automatic_input_failover_settings.input_preference #=> String, one of "EQUAL_INPUT_PREFERENCE", "PRIMARY_INPUT_PREFERRED"
    #   resp.input_attachments[0].automatic_input_failover_settings.secondary_input_id #=> String
    #   resp.input_attachments[0].input_attachment_name #=> String
    #   resp.input_attachments[0].input_id #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks[0].track #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.input_attachments[0].input_settings.smpte_2038_data_preference #=> String, one of "IGNORE", "PREFER"
    #   resp.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.name #=> String
    #   resp.pipeline_details #=> Array
    #   resp.pipeline_details[0].active_input_attachment_name #=> String
    #   resp.pipeline_details[0].active_input_switch_action_name #=> String
    #   resp.pipeline_details[0].pipeline_id #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.role_arn #=> String
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteChannel AWS API Documentation
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # Deletes the input end point
    #
    # @option params [required, String] :input_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_input({
    #     input_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteInput AWS API Documentation
    #
    # @overload delete_input(params = {})
    # @param [Hash] params ({})
    def delete_input(params = {}, options = {})
      req = build_request(:delete_input, params)
      req.send_request(options)
    end

    # Deletes an Input Security Group
    #
    # @option params [required, String] :input_security_group_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_input_security_group({
    #     input_security_group_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteInputSecurityGroup AWS API Documentation
    #
    # @overload delete_input_security_group(params = {})
    # @param [Hash] params ({})
    def delete_input_security_group(params = {}, options = {})
      req = build_request(:delete_input_security_group, params)
      req.send_request(options)
    end

    # Delete a multiplex. The multiplex must be idle.
    #
    # @option params [required, String] :multiplex_id
    #
    # @return [Types::DeleteMultiplexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMultiplexResponse#arn #arn} => String
    #   * {Types::DeleteMultiplexResponse#availability_zones #availability_zones} => Array&lt;String&gt;
    #   * {Types::DeleteMultiplexResponse#destinations #destinations} => Array&lt;Types::MultiplexOutputDestination&gt;
    #   * {Types::DeleteMultiplexResponse#id #id} => String
    #   * {Types::DeleteMultiplexResponse#multiplex_settings #multiplex_settings} => Types::MultiplexSettings
    #   * {Types::DeleteMultiplexResponse#name #name} => String
    #   * {Types::DeleteMultiplexResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::DeleteMultiplexResponse#program_count #program_count} => Integer
    #   * {Types::DeleteMultiplexResponse#state #state} => String
    #   * {Types::DeleteMultiplexResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_multiplex({
    #     multiplex_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.availability_zones #=> Array
    #   resp.availability_zones[0] #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].media_connect_settings.entitlement_arn #=> String
    #   resp.id #=> String
    #   resp.multiplex_settings.maximum_video_buffer_delay_milliseconds #=> Integer
    #   resp.multiplex_settings.transport_stream_bitrate #=> Integer
    #   resp.multiplex_settings.transport_stream_id #=> Integer
    #   resp.multiplex_settings.transport_stream_reserved_bitrate #=> Integer
    #   resp.name #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.program_count #=> Integer
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteMultiplex AWS API Documentation
    #
    # @overload delete_multiplex(params = {})
    # @param [Hash] params ({})
    def delete_multiplex(params = {}, options = {})
      req = build_request(:delete_multiplex, params)
      req.send_request(options)
    end

    # Delete a program from a multiplex.
    #
    # @option params [required, String] :multiplex_id
    #
    # @option params [required, String] :program_name
    #
    # @return [Types::DeleteMultiplexProgramResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMultiplexProgramResponse#channel_id #channel_id} => String
    #   * {Types::DeleteMultiplexProgramResponse#multiplex_program_settings #multiplex_program_settings} => Types::MultiplexProgramSettings
    #   * {Types::DeleteMultiplexProgramResponse#packet_identifiers_map #packet_identifiers_map} => Types::MultiplexProgramPacketIdentifiersMap
    #   * {Types::DeleteMultiplexProgramResponse#pipeline_details #pipeline_details} => Array&lt;Types::MultiplexProgramPipelineDetail&gt;
    #   * {Types::DeleteMultiplexProgramResponse#program_name #program_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_multiplex_program({
    #     multiplex_id: "__string", # required
    #     program_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_id #=> String
    #   resp.multiplex_program_settings.preferred_channel_pipeline #=> String, one of "CURRENTLY_ACTIVE", "PIPELINE_0", "PIPELINE_1"
    #   resp.multiplex_program_settings.program_number #=> Integer
    #   resp.multiplex_program_settings.service_descriptor.provider_name #=> String
    #   resp.multiplex_program_settings.service_descriptor.service_name #=> String
    #   resp.multiplex_program_settings.video_settings.constant_bitrate #=> Integer
    #   resp.multiplex_program_settings.video_settings.statmux_settings.maximum_bitrate #=> Integer
    #   resp.multiplex_program_settings.video_settings.statmux_settings.minimum_bitrate #=> Integer
    #   resp.multiplex_program_settings.video_settings.statmux_settings.priority #=> Integer
    #   resp.packet_identifiers_map.audio_pids #=> Array
    #   resp.packet_identifiers_map.audio_pids[0] #=> Integer
    #   resp.packet_identifiers_map.dvb_sub_pids #=> Array
    #   resp.packet_identifiers_map.dvb_sub_pids[0] #=> Integer
    #   resp.packet_identifiers_map.dvb_teletext_pid #=> Integer
    #   resp.packet_identifiers_map.etv_platform_pid #=> Integer
    #   resp.packet_identifiers_map.etv_signal_pid #=> Integer
    #   resp.packet_identifiers_map.klv_data_pids #=> Array
    #   resp.packet_identifiers_map.klv_data_pids[0] #=> Integer
    #   resp.packet_identifiers_map.pcr_pid #=> Integer
    #   resp.packet_identifiers_map.pmt_pid #=> Integer
    #   resp.packet_identifiers_map.private_metadata_pid #=> Integer
    #   resp.packet_identifiers_map.scte_27_pids #=> Array
    #   resp.packet_identifiers_map.scte_27_pids[0] #=> Integer
    #   resp.packet_identifiers_map.scte_35_pid #=> Integer
    #   resp.packet_identifiers_map.timed_metadata_pid #=> Integer
    #   resp.packet_identifiers_map.video_pid #=> Integer
    #   resp.pipeline_details #=> Array
    #   resp.pipeline_details[0].active_channel_pipeline #=> String
    #   resp.pipeline_details[0].pipeline_id #=> String
    #   resp.program_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteMultiplexProgram AWS API Documentation
    #
    # @overload delete_multiplex_program(params = {})
    # @param [Hash] params ({})
    def delete_multiplex_program(params = {}, options = {})
      req = build_request(:delete_multiplex_program, params)
      req.send_request(options)
    end

    # Delete an expired reservation.
    #
    # @option params [required, String] :reservation_id
    #
    # @return [Types::DeleteReservationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteReservationResponse#arn #arn} => String
    #   * {Types::DeleteReservationResponse#count #count} => Integer
    #   * {Types::DeleteReservationResponse#currency_code #currency_code} => String
    #   * {Types::DeleteReservationResponse#duration #duration} => Integer
    #   * {Types::DeleteReservationResponse#duration_units #duration_units} => String
    #   * {Types::DeleteReservationResponse#end #end} => String
    #   * {Types::DeleteReservationResponse#fixed_price #fixed_price} => Float
    #   * {Types::DeleteReservationResponse#name #name} => String
    #   * {Types::DeleteReservationResponse#offering_description #offering_description} => String
    #   * {Types::DeleteReservationResponse#offering_id #offering_id} => String
    #   * {Types::DeleteReservationResponse#offering_type #offering_type} => String
    #   * {Types::DeleteReservationResponse#region #region} => String
    #   * {Types::DeleteReservationResponse#reservation_id #reservation_id} => String
    #   * {Types::DeleteReservationResponse#resource_specification #resource_specification} => Types::ReservationResourceSpecification
    #   * {Types::DeleteReservationResponse#start #start} => String
    #   * {Types::DeleteReservationResponse#state #state} => String
    #   * {Types::DeleteReservationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DeleteReservationResponse#usage_price #usage_price} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_reservation({
    #     reservation_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.count #=> Integer
    #   resp.currency_code #=> String
    #   resp.duration #=> Integer
    #   resp.duration_units #=> String, one of "MONTHS"
    #   resp.end #=> String
    #   resp.fixed_price #=> Float
    #   resp.name #=> String
    #   resp.offering_description #=> String
    #   resp.offering_id #=> String
    #   resp.offering_type #=> String, one of "NO_UPFRONT"
    #   resp.region #=> String
    #   resp.reservation_id #=> String
    #   resp.resource_specification.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO", "LINK"
    #   resp.resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.resource_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "MULTIPLEX", "CHANNEL"
    #   resp.resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.start #=> String
    #   resp.state #=> String, one of "ACTIVE", "EXPIRED", "CANCELED", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteReservation AWS API Documentation
    #
    # @overload delete_reservation(params = {})
    # @param [Hash] params ({})
    def delete_reservation(params = {}, options = {})
      req = build_request(:delete_reservation, params)
      req.send_request(options)
    end

    # Delete all schedule actions on a channel.
    #
    # @option params [required, String] :channel_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schedule({
    #     channel_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteSchedule AWS API Documentation
    #
    # @overload delete_schedule(params = {})
    # @param [Hash] params ({})
    def delete_schedule(params = {}, options = {})
      req = build_request(:delete_schedule, params)
      req.send_request(options)
    end

    # Removes tags for a resource
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Gets details about a channel
    #
    # @option params [required, String] :channel_id
    #
    # @return [Types::DescribeChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelResponse#arn #arn} => String
    #   * {Types::DescribeChannelResponse#cdi_input_specification #cdi_input_specification} => Types::CdiInputSpecification
    #   * {Types::DescribeChannelResponse#channel_class #channel_class} => String
    #   * {Types::DescribeChannelResponse#destinations #destinations} => Array&lt;Types::OutputDestination&gt;
    #   * {Types::DescribeChannelResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::ChannelEgressEndpoint&gt;
    #   * {Types::DescribeChannelResponse#encoder_settings #encoder_settings} => Types::EncoderSettings
    #   * {Types::DescribeChannelResponse#id #id} => String
    #   * {Types::DescribeChannelResponse#input_attachments #input_attachments} => Array&lt;Types::InputAttachment&gt;
    #   * {Types::DescribeChannelResponse#input_specification #input_specification} => Types::InputSpecification
    #   * {Types::DescribeChannelResponse#log_level #log_level} => String
    #   * {Types::DescribeChannelResponse#name #name} => String
    #   * {Types::DescribeChannelResponse#pipeline_details #pipeline_details} => Array&lt;Types::PipelineDetail&gt;
    #   * {Types::DescribeChannelResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::DescribeChannelResponse#role_arn #role_arn} => String
    #   * {Types::DescribeChannelResponse#state #state} => String
    #   * {Types::DescribeChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel({
    #     channel_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cdi_input_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.destinations #=> Array
    #   resp.destinations[0].id #=> String
    #   resp.destinations[0].media_package_settings #=> Array
    #   resp.destinations[0].media_package_settings[0].channel_id #=> String
    #   resp.destinations[0].multiplex_settings.multiplex_id #=> String
    #   resp.destinations[0].multiplex_settings.program_name #=> String
    #   resp.destinations[0].settings #=> Array
    #   resp.destinations[0].settings[0].password_param #=> String
    #   resp.destinations[0].settings[0].stream_name #=> String
    #   resp.destinations[0].settings[0].url #=> String
    #   resp.destinations[0].settings[0].username #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].source_ip #=> String
    #   resp.encoder_settings.audio_descriptions #=> Array
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_4_0", "CODING_MODE_8_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_id #=> String
    #   resp.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions #=> Array
    #   resp.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.fill_line_gap #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.font_family #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.style_control #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.encoder_settings.feature_activations.input_prepare_schedule_actions #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.output_locking_mode #=> String, one of "EPOCH_LOCKING", "PIPELINE_LOCKING"
    #   resp.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.nielsen_configuration.distributor_id #=> String
    #   resp.encoder_settings.nielsen_configuration.nielsen_pcm_to_id_3_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups #=> Array
    #   resp.encoder_settings.output_groups[0].name #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.frame_capture_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content_1 #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest_1 #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_id_3_segment_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.i_frame_only_playlists #=> String, one of "DISABLED", "STANDARD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY", "VARIANT_MANIFESTS_AND_SEGMENTS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.redundant_manifest #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.media_package_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35", "SCTE_35_WITHOUT_SEGMENTATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.frame_capture_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.segment_type #=> String, one of "AAC", "FMP4"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.multiplex_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.encoder_settings.video_descriptions #=> Array
    #   resp.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval_units #=> String, one of "MILLISECONDS", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.force_field_pictures #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.quality_level #=> String, one of "ENHANCED_QUALITY", "STANDARD_QUALITY"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.qvbr_quality_level #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR", "VBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.alternative_transfer_function #=> String, one of "INSERT", "OMIT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_cll #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_fall #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.level #=> String, one of "H265_LEVEL_1", "H265_LEVEL_2", "H265_LEVEL_2_1", "H265_LEVEL_3", "H265_LEVEL_3_1", "H265_LEVEL_4", "H265_LEVEL_4_1", "H265_LEVEL_5", "H265_LEVEL_5_1", "H265_LEVEL_5_2", "H265_LEVEL_6", "H265_LEVEL_6_1", "H265_LEVEL_6_2", "H265_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.profile #=> String, one of "MAIN", "MAIN_10BIT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.qvbr_quality_level #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.tier #=> String, one of "HIGH", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "AUTO", "HIGH", "LOW", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_space #=> String, one of "AUTO", "PASSTHROUGH"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.display_aspect_ratio #=> String, one of "DISPLAYRATIO16X9", "DISPLAYRATIO4X3"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.timecode_insertion #=> String, one of "DISABLED", "GOP_TIMECODE"
    #   resp.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.encoder_settings.video_descriptions[0].name #=> String
    #   resp.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.id #=> String
    #   resp.input_attachments #=> Array
    #   resp.input_attachments[0].automatic_input_failover_settings.input_preference #=> String, one of "EQUAL_INPUT_PREFERENCE", "PRIMARY_INPUT_PREFERRED"
    #   resp.input_attachments[0].automatic_input_failover_settings.secondary_input_id #=> String
    #   resp.input_attachments[0].input_attachment_name #=> String
    #   resp.input_attachments[0].input_id #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks[0].track #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.input_attachments[0].input_settings.smpte_2038_data_preference #=> String, one of "IGNORE", "PREFER"
    #   resp.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.name #=> String
    #   resp.pipeline_details #=> Array
    #   resp.pipeline_details[0].active_input_attachment_name #=> String
    #   resp.pipeline_details[0].active_input_switch_action_name #=> String
    #   resp.pipeline_details[0].pipeline_id #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.role_arn #=> String
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * channel_created
    #   * channel_deleted
    #   * channel_running
    #   * channel_stopped
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeChannel AWS API Documentation
    #
    # @overload describe_channel(params = {})
    # @param [Hash] params ({})
    def describe_channel(params = {}, options = {})
      req = build_request(:describe_channel, params)
      req.send_request(options)
    end

    # Produces details about an input
    #
    # @option params [required, String] :input_id
    #
    # @return [Types::DescribeInputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInputResponse#arn #arn} => String
    #   * {Types::DescribeInputResponse#attached_channels #attached_channels} => Array&lt;String&gt;
    #   * {Types::DescribeInputResponse#destinations #destinations} => Array&lt;Types::InputDestination&gt;
    #   * {Types::DescribeInputResponse#id #id} => String
    #   * {Types::DescribeInputResponse#input_class #input_class} => String
    #   * {Types::DescribeInputResponse#input_devices #input_devices} => Array&lt;Types::InputDeviceSettings&gt;
    #   * {Types::DescribeInputResponse#input_source_type #input_source_type} => String
    #   * {Types::DescribeInputResponse#media_connect_flows #media_connect_flows} => Array&lt;Types::MediaConnectFlow&gt;
    #   * {Types::DescribeInputResponse#name #name} => String
    #   * {Types::DescribeInputResponse#role_arn #role_arn} => String
    #   * {Types::DescribeInputResponse#security_groups #security_groups} => Array&lt;String&gt;
    #   * {Types::DescribeInputResponse#sources #sources} => Array&lt;Types::InputSource&gt;
    #   * {Types::DescribeInputResponse#state #state} => String
    #   * {Types::DescribeInputResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeInputResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_input({
    #     input_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.attached_channels #=> Array
    #   resp.attached_channels[0] #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].ip #=> String
    #   resp.destinations[0].port #=> String
    #   resp.destinations[0].url #=> String
    #   resp.destinations[0].vpc.availability_zone #=> String
    #   resp.destinations[0].vpc.network_interface_id #=> String
    #   resp.id #=> String
    #   resp.input_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.input_devices #=> Array
    #   resp.input_devices[0].id #=> String
    #   resp.input_source_type #=> String, one of "STATIC", "DYNAMIC"
    #   resp.media_connect_flows #=> Array
    #   resp.media_connect_flows[0].flow_arn #=> String
    #   resp.name #=> String
    #   resp.role_arn #=> String
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].password_param #=> String
    #   resp.sources[0].url #=> String
    #   resp.sources[0].username #=> String
    #   resp.state #=> String, one of "CREATING", "DETACHED", "ATTACHED", "DELETING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.type #=> String, one of "UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL", "URL_PULL", "MP4_FILE", "MEDIACONNECT", "INPUT_DEVICE", "AWS_CDI"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * input_attached
    #   * input_deleted
    #   * input_detached
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInput AWS API Documentation
    #
    # @overload describe_input(params = {})
    # @param [Hash] params ({})
    def describe_input(params = {}, options = {})
      req = build_request(:describe_input, params)
      req.send_request(options)
    end

    # Gets the details for the input device
    #
    # @option params [required, String] :input_device_id
    #
    # @return [Types::DescribeInputDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInputDeviceResponse#arn #arn} => String
    #   * {Types::DescribeInputDeviceResponse#connection_state #connection_state} => String
    #   * {Types::DescribeInputDeviceResponse#device_settings_sync_state #device_settings_sync_state} => String
    #   * {Types::DescribeInputDeviceResponse#hd_device_settings #hd_device_settings} => Types::InputDeviceHdSettings
    #   * {Types::DescribeInputDeviceResponse#id #id} => String
    #   * {Types::DescribeInputDeviceResponse#mac_address #mac_address} => String
    #   * {Types::DescribeInputDeviceResponse#name #name} => String
    #   * {Types::DescribeInputDeviceResponse#network_settings #network_settings} => Types::InputDeviceNetworkSettings
    #   * {Types::DescribeInputDeviceResponse#serial_number #serial_number} => String
    #   * {Types::DescribeInputDeviceResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_input_device({
    #     input_device_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.connection_state #=> String, one of "DISCONNECTED", "CONNECTED"
    #   resp.device_settings_sync_state #=> String, one of "SYNCED", "SYNCING"
    #   resp.hd_device_settings.active_input #=> String, one of "HDMI", "SDI"
    #   resp.hd_device_settings.configured_input #=> String, one of "AUTO", "HDMI", "SDI"
    #   resp.hd_device_settings.device_state #=> String, one of "IDLE", "STREAMING"
    #   resp.hd_device_settings.framerate #=> Float
    #   resp.hd_device_settings.height #=> Integer
    #   resp.hd_device_settings.max_bitrate #=> Integer
    #   resp.hd_device_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.hd_device_settings.width #=> Integer
    #   resp.id #=> String
    #   resp.mac_address #=> String
    #   resp.name #=> String
    #   resp.network_settings.dns_addresses #=> Array
    #   resp.network_settings.dns_addresses[0] #=> String
    #   resp.network_settings.gateway #=> String
    #   resp.network_settings.ip_address #=> String
    #   resp.network_settings.ip_scheme #=> String, one of "STATIC", "DHCP"
    #   resp.network_settings.subnet_mask #=> String
    #   resp.serial_number #=> String
    #   resp.type #=> String, one of "HD"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputDevice AWS API Documentation
    #
    # @overload describe_input_device(params = {})
    # @param [Hash] params ({})
    def describe_input_device(params = {}, options = {})
      req = build_request(:describe_input_device, params)
      req.send_request(options)
    end

    # Get the latest thumbnail data for the input device.
    #
    # @option params [required, String] :input_device_id
    #
    # @option params [required, String] :accept
    #
    # @return [Types::DescribeInputDeviceThumbnailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInputDeviceThumbnailResponse#body #body} => IO
    #   * {Types::DescribeInputDeviceThumbnailResponse#content_type #content_type} => String
    #   * {Types::DescribeInputDeviceThumbnailResponse#content_length #content_length} => Integer
    #   * {Types::DescribeInputDeviceThumbnailResponse#etag #etag} => String
    #   * {Types::DescribeInputDeviceThumbnailResponse#last_modified #last_modified} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_input_device_thumbnail({
    #     input_device_id: "__string", # required
    #     accept: "image/jpeg", # required, accepts image/jpeg
    #   })
    #
    # @example Response structure
    #
    #   resp.body #=> IO
    #   resp.content_type #=> String, one of "image/jpeg"
    #   resp.content_length #=> Integer
    #   resp.etag #=> String
    #   resp.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputDeviceThumbnail AWS API Documentation
    #
    # @overload describe_input_device_thumbnail(params = {})
    # @param [Hash] params ({})
    def describe_input_device_thumbnail(params = {}, options = {}, &block)
      req = build_request(:describe_input_device_thumbnail, params)
      req.send_request(options, &block)
    end

    # Produces a summary of an Input Security Group
    #
    # @option params [required, String] :input_security_group_id
    #
    # @return [Types::DescribeInputSecurityGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInputSecurityGroupResponse#arn #arn} => String
    #   * {Types::DescribeInputSecurityGroupResponse#id #id} => String
    #   * {Types::DescribeInputSecurityGroupResponse#inputs #inputs} => Array&lt;String&gt;
    #   * {Types::DescribeInputSecurityGroupResponse#state #state} => String
    #   * {Types::DescribeInputSecurityGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeInputSecurityGroupResponse#whitelist_rules #whitelist_rules} => Array&lt;Types::InputWhitelistRule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_input_security_group({
    #     input_security_group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.inputs #=> Array
    #   resp.inputs[0] #=> String
    #   resp.state #=> String, one of "IDLE", "IN_USE", "UPDATING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.whitelist_rules #=> Array
    #   resp.whitelist_rules[0].cidr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputSecurityGroup AWS API Documentation
    #
    # @overload describe_input_security_group(params = {})
    # @param [Hash] params ({})
    def describe_input_security_group(params = {}, options = {})
      req = build_request(:describe_input_security_group, params)
      req.send_request(options)
    end

    # Gets details about a multiplex.
    #
    # @option params [required, String] :multiplex_id
    #
    # @return [Types::DescribeMultiplexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMultiplexResponse#arn #arn} => String
    #   * {Types::DescribeMultiplexResponse#availability_zones #availability_zones} => Array&lt;String&gt;
    #   * {Types::DescribeMultiplexResponse#destinations #destinations} => Array&lt;Types::MultiplexOutputDestination&gt;
    #   * {Types::DescribeMultiplexResponse#id #id} => String
    #   * {Types::DescribeMultiplexResponse#multiplex_settings #multiplex_settings} => Types::MultiplexSettings
    #   * {Types::DescribeMultiplexResponse#name #name} => String
    #   * {Types::DescribeMultiplexResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::DescribeMultiplexResponse#program_count #program_count} => Integer
    #   * {Types::DescribeMultiplexResponse#state #state} => String
    #   * {Types::DescribeMultiplexResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_multiplex({
    #     multiplex_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.availability_zones #=> Array
    #   resp.availability_zones[0] #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].media_connect_settings.entitlement_arn #=> String
    #   resp.id #=> String
    #   resp.multiplex_settings.maximum_video_buffer_delay_milliseconds #=> Integer
    #   resp.multiplex_settings.transport_stream_bitrate #=> Integer
    #   resp.multiplex_settings.transport_stream_id #=> Integer
    #   resp.multiplex_settings.transport_stream_reserved_bitrate #=> Integer
    #   resp.name #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.program_count #=> Integer
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * multiplex_created
    #   * multiplex_deleted
    #   * multiplex_running
    #   * multiplex_stopped
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeMultiplex AWS API Documentation
    #
    # @overload describe_multiplex(params = {})
    # @param [Hash] params ({})
    def describe_multiplex(params = {}, options = {})
      req = build_request(:describe_multiplex, params)
      req.send_request(options)
    end

    # Get the details for a program in a multiplex.
    #
    # @option params [required, String] :multiplex_id
    #
    # @option params [required, String] :program_name
    #
    # @return [Types::DescribeMultiplexProgramResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMultiplexProgramResponse#channel_id #channel_id} => String
    #   * {Types::DescribeMultiplexProgramResponse#multiplex_program_settings #multiplex_program_settings} => Types::MultiplexProgramSettings
    #   * {Types::DescribeMultiplexProgramResponse#packet_identifiers_map #packet_identifiers_map} => Types::MultiplexProgramPacketIdentifiersMap
    #   * {Types::DescribeMultiplexProgramResponse#pipeline_details #pipeline_details} => Array&lt;Types::MultiplexProgramPipelineDetail&gt;
    #   * {Types::DescribeMultiplexProgramResponse#program_name #program_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_multiplex_program({
    #     multiplex_id: "__string", # required
    #     program_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_id #=> String
    #   resp.multiplex_program_settings.preferred_channel_pipeline #=> String, one of "CURRENTLY_ACTIVE", "PIPELINE_0", "PIPELINE_1"
    #   resp.multiplex_program_settings.program_number #=> Integer
    #   resp.multiplex_program_settings.service_descriptor.provider_name #=> String
    #   resp.multiplex_program_settings.service_descriptor.service_name #=> String
    #   resp.multiplex_program_settings.video_settings.constant_bitrate #=> Integer
    #   resp.multiplex_program_settings.video_settings.statmux_settings.maximum_bitrate #=> Integer
    #   resp.multiplex_program_settings.video_settings.statmux_settings.minimum_bitrate #=> Integer
    #   resp.multiplex_program_settings.video_settings.statmux_settings.priority #=> Integer
    #   resp.packet_identifiers_map.audio_pids #=> Array
    #   resp.packet_identifiers_map.audio_pids[0] #=> Integer
    #   resp.packet_identifiers_map.dvb_sub_pids #=> Array
    #   resp.packet_identifiers_map.dvb_sub_pids[0] #=> Integer
    #   resp.packet_identifiers_map.dvb_teletext_pid #=> Integer
    #   resp.packet_identifiers_map.etv_platform_pid #=> Integer
    #   resp.packet_identifiers_map.etv_signal_pid #=> Integer
    #   resp.packet_identifiers_map.klv_data_pids #=> Array
    #   resp.packet_identifiers_map.klv_data_pids[0] #=> Integer
    #   resp.packet_identifiers_map.pcr_pid #=> Integer
    #   resp.packet_identifiers_map.pmt_pid #=> Integer
    #   resp.packet_identifiers_map.private_metadata_pid #=> Integer
    #   resp.packet_identifiers_map.scte_27_pids #=> Array
    #   resp.packet_identifiers_map.scte_27_pids[0] #=> Integer
    #   resp.packet_identifiers_map.scte_35_pid #=> Integer
    #   resp.packet_identifiers_map.timed_metadata_pid #=> Integer
    #   resp.packet_identifiers_map.video_pid #=> Integer
    #   resp.pipeline_details #=> Array
    #   resp.pipeline_details[0].active_channel_pipeline #=> String
    #   resp.pipeline_details[0].pipeline_id #=> String
    #   resp.program_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeMultiplexProgram AWS API Documentation
    #
    # @overload describe_multiplex_program(params = {})
    # @param [Hash] params ({})
    def describe_multiplex_program(params = {}, options = {})
      req = build_request(:describe_multiplex_program, params)
      req.send_request(options)
    end

    # Get details for an offering.
    #
    # @option params [required, String] :offering_id
    #
    # @return [Types::DescribeOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOfferingResponse#arn #arn} => String
    #   * {Types::DescribeOfferingResponse#currency_code #currency_code} => String
    #   * {Types::DescribeOfferingResponse#duration #duration} => Integer
    #   * {Types::DescribeOfferingResponse#duration_units #duration_units} => String
    #   * {Types::DescribeOfferingResponse#fixed_price #fixed_price} => Float
    #   * {Types::DescribeOfferingResponse#offering_description #offering_description} => String
    #   * {Types::DescribeOfferingResponse#offering_id #offering_id} => String
    #   * {Types::DescribeOfferingResponse#offering_type #offering_type} => String
    #   * {Types::DescribeOfferingResponse#region #region} => String
    #   * {Types::DescribeOfferingResponse#resource_specification #resource_specification} => Types::ReservationResourceSpecification
    #   * {Types::DescribeOfferingResponse#usage_price #usage_price} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_offering({
    #     offering_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.currency_code #=> String
    #   resp.duration #=> Integer
    #   resp.duration_units #=> String, one of "MONTHS"
    #   resp.fixed_price #=> Float
    #   resp.offering_description #=> String
    #   resp.offering_id #=> String
    #   resp.offering_type #=> String, one of "NO_UPFRONT"
    #   resp.region #=> String
    #   resp.resource_specification.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO", "LINK"
    #   resp.resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.resource_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "MULTIPLEX", "CHANNEL"
    #   resp.resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeOffering AWS API Documentation
    #
    # @overload describe_offering(params = {})
    # @param [Hash] params ({})
    def describe_offering(params = {}, options = {})
      req = build_request(:describe_offering, params)
      req.send_request(options)
    end

    # Get details for a reservation.
    #
    # @option params [required, String] :reservation_id
    #
    # @return [Types::DescribeReservationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservationResponse#arn #arn} => String
    #   * {Types::DescribeReservationResponse#count #count} => Integer
    #   * {Types::DescribeReservationResponse#currency_code #currency_code} => String
    #   * {Types::DescribeReservationResponse#duration #duration} => Integer
    #   * {Types::DescribeReservationResponse#duration_units #duration_units} => String
    #   * {Types::DescribeReservationResponse#end #end} => String
    #   * {Types::DescribeReservationResponse#fixed_price #fixed_price} => Float
    #   * {Types::DescribeReservationResponse#name #name} => String
    #   * {Types::DescribeReservationResponse#offering_description #offering_description} => String
    #   * {Types::DescribeReservationResponse#offering_id #offering_id} => String
    #   * {Types::DescribeReservationResponse#offering_type #offering_type} => String
    #   * {Types::DescribeReservationResponse#region #region} => String
    #   * {Types::DescribeReservationResponse#reservation_id #reservation_id} => String
    #   * {Types::DescribeReservationResponse#resource_specification #resource_specification} => Types::ReservationResourceSpecification
    #   * {Types::DescribeReservationResponse#start #start} => String
    #   * {Types::DescribeReservationResponse#state #state} => String
    #   * {Types::DescribeReservationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeReservationResponse#usage_price #usage_price} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reservation({
    #     reservation_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.count #=> Integer
    #   resp.currency_code #=> String
    #   resp.duration #=> Integer
    #   resp.duration_units #=> String, one of "MONTHS"
    #   resp.end #=> String
    #   resp.fixed_price #=> Float
    #   resp.name #=> String
    #   resp.offering_description #=> String
    #   resp.offering_id #=> String
    #   resp.offering_type #=> String, one of "NO_UPFRONT"
    #   resp.region #=> String
    #   resp.reservation_id #=> String
    #   resp.resource_specification.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO", "LINK"
    #   resp.resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.resource_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "MULTIPLEX", "CHANNEL"
    #   resp.resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.start #=> String
    #   resp.state #=> String, one of "ACTIVE", "EXPIRED", "CANCELED", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeReservation AWS API Documentation
    #
    # @overload describe_reservation(params = {})
    # @param [Hash] params ({})
    def describe_reservation(params = {}, options = {})
      req = build_request(:describe_reservation, params)
      req.send_request(options)
    end

    # Get a channel schedule
    #
    # @option params [required, String] :channel_id
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::DescribeScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScheduleResponse#next_token #next_token} => String
    #   * {Types::DescribeScheduleResponse#schedule_actions #schedule_actions} => Array&lt;Types::ScheduleAction&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schedule({
    #     channel_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.schedule_actions #=> Array
    #   resp.schedule_actions[0].action_name #=> String
    #   resp.schedule_actions[0].schedule_action_settings.hls_id_3_segment_tagging_settings.tag #=> String
    #   resp.schedule_actions[0].schedule_action_settings.hls_timed_metadata_settings.id_3 #=> String
    #   resp.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_attachment_name_reference #=> String
    #   resp.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.input_timecode_source #=> String, one of "ZEROBASED", "EMBEDDED"
    #   resp.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.start_timecode.timecode #=> String
    #   resp.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.stop_timecode.last_frame_clipping_behavior #=> String, one of "EXCLUDE_LAST_FRAME", "INCLUDE_LAST_FRAME"
    #   resp.schedule_actions[0].schedule_action_settings.input_prepare_settings.input_clipping_settings.stop_timecode.timecode #=> String
    #   resp.schedule_actions[0].schedule_action_settings.input_prepare_settings.url_path #=> Array
    #   resp.schedule_actions[0].schedule_action_settings.input_prepare_settings.url_path[0] #=> String
    #   resp.schedule_actions[0].schedule_action_settings.input_switch_settings.input_attachment_name_reference #=> String
    #   resp.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.input_timecode_source #=> String, one of "ZEROBASED", "EMBEDDED"
    #   resp.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.start_timecode.timecode #=> String
    #   resp.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.stop_timecode.last_frame_clipping_behavior #=> String, one of "EXCLUDE_LAST_FRAME", "INCLUDE_LAST_FRAME"
    #   resp.schedule_actions[0].schedule_action_settings.input_switch_settings.input_clipping_settings.stop_timecode.timecode #=> String
    #   resp.schedule_actions[0].schedule_action_settings.input_switch_settings.url_path #=> Array
    #   resp.schedule_actions[0].schedule_action_settings.input_switch_settings.url_path[0] #=> String
    #   resp.schedule_actions[0].schedule_action_settings.pause_state_settings.pipelines #=> Array
    #   resp.schedule_actions[0].schedule_action_settings.pause_state_settings.pipelines[0].pipeline_id #=> String, one of "PIPELINE_0", "PIPELINE_1"
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_return_to_network_settings.splice_event_id #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.duration #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.splice_event_id #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors #=> Array
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.archive_allowed_flag #=> String, one of "ARCHIVE_NOT_ALLOWED", "ARCHIVE_ALLOWED"
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.device_restrictions #=> String, one of "NONE", "RESTRICT_GROUP0", "RESTRICT_GROUP1", "RESTRICT_GROUP2"
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.no_regional_blackout_flag #=> String, one of "REGIONAL_BLACKOUT", "NO_REGIONAL_BLACKOUT"
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.web_delivery_allowed_flag #=> String, one of "WEB_DELIVERY_NOT_ALLOWED", "WEB_DELIVERY_ALLOWED"
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segment_num #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_cancel_indicator #=> String, one of "SEGMENTATION_EVENT_NOT_CANCELED", "SEGMENTATION_EVENT_CANCELED"
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_duration #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_event_id #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_type_id #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid #=> String
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid_type #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segments_expected #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segment_num #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segments_expected #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.duration #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_in #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_out #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.height #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.password_param #=> String
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.uri #=> String
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.username #=> String
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_x #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_y #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.layer #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.opacity #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.width #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.fade_out #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.layer #=> Integer
    #   resp.schedule_actions[0].schedule_action_start_settings.fixed_mode_schedule_action_start_settings.time #=> String
    #   resp.schedule_actions[0].schedule_action_start_settings.follow_mode_schedule_action_start_settings.follow_point #=> String, one of "END", "START"
    #   resp.schedule_actions[0].schedule_action_start_settings.follow_mode_schedule_action_start_settings.reference_action_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeSchedule AWS API Documentation
    #
    # @overload describe_schedule(params = {})
    # @param [Hash] params ({})
    def describe_schedule(params = {}, options = {})
      req = build_request(:describe_schedule, params)
      req.send_request(options)
    end

    # Produces list of channels that have been created
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#channels #channels} => Array&lt;Types::ChannelSummary&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.channels[0].cdi_input_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.channels[0].channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.channels[0].destinations #=> Array
    #   resp.channels[0].destinations[0].id #=> String
    #   resp.channels[0].destinations[0].media_package_settings #=> Array
    #   resp.channels[0].destinations[0].media_package_settings[0].channel_id #=> String
    #   resp.channels[0].destinations[0].multiplex_settings.multiplex_id #=> String
    #   resp.channels[0].destinations[0].multiplex_settings.program_name #=> String
    #   resp.channels[0].destinations[0].settings #=> Array
    #   resp.channels[0].destinations[0].settings[0].password_param #=> String
    #   resp.channels[0].destinations[0].settings[0].stream_name #=> String
    #   resp.channels[0].destinations[0].settings[0].url #=> String
    #   resp.channels[0].destinations[0].settings[0].username #=> String
    #   resp.channels[0].egress_endpoints #=> Array
    #   resp.channels[0].egress_endpoints[0].source_ip #=> String
    #   resp.channels[0].id #=> String
    #   resp.channels[0].input_attachments #=> Array
    #   resp.channels[0].input_attachments[0].automatic_input_failover_settings.input_preference #=> String, one of "EQUAL_INPUT_PREFERENCE", "PRIMARY_INPUT_PREFERRED"
    #   resp.channels[0].input_attachments[0].automatic_input_failover_settings.secondary_input_id #=> String
    #   resp.channels[0].input_attachments[0].input_attachment_name #=> String
    #   resp.channels[0].input_attachments[0].input_id #=> String
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks #=> Array
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks[0].track #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.channels[0].input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channels[0].input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channels[0].input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.channels[0].input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.channels[0].input_attachments[0].input_settings.smpte_2038_data_preference #=> String, one of "IGNORE", "PREFER"
    #   resp.channels[0].input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.channels[0].input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.channels[0].input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.channels[0].input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.channels[0].input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.channels[0].input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.channels[0].input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.channels[0].log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.channels[0].name #=> String
    #   resp.channels[0].pipelines_running_count #=> Integer
    #   resp.channels[0].role_arn #=> String
    #   resp.channels[0].state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"
    #   resp.channels[0].tags #=> Hash
    #   resp.channels[0].tags["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # List input devices that are currently being transferred. List input
    # devices that you are transferring from your AWS account or input
    # devices that another AWS account is transferring to you.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :transfer_type
    #
    # @return [Types::ListInputDeviceTransfersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInputDeviceTransfersResponse#input_device_transfers #input_device_transfers} => Array&lt;Types::TransferringInputDeviceSummary&gt;
    #   * {Types::ListInputDeviceTransfersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_input_device_transfers({
    #     max_results: 1,
    #     next_token: "__string",
    #     transfer_type: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.input_device_transfers #=> Array
    #   resp.input_device_transfers[0].id #=> String
    #   resp.input_device_transfers[0].message #=> String
    #   resp.input_device_transfers[0].target_customer_id #=> String
    #   resp.input_device_transfers[0].transfer_type #=> String, one of "OUTGOING", "INCOMING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputDeviceTransfers AWS API Documentation
    #
    # @overload list_input_device_transfers(params = {})
    # @param [Hash] params ({})
    def list_input_device_transfers(params = {}, options = {})
      req = build_request(:list_input_device_transfers, params)
      req.send_request(options)
    end

    # List input devices
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListInputDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInputDevicesResponse#input_devices #input_devices} => Array&lt;Types::InputDeviceSummary&gt;
    #   * {Types::ListInputDevicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_input_devices({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.input_devices #=> Array
    #   resp.input_devices[0].arn #=> String
    #   resp.input_devices[0].connection_state #=> String, one of "DISCONNECTED", "CONNECTED"
    #   resp.input_devices[0].device_settings_sync_state #=> String, one of "SYNCED", "SYNCING"
    #   resp.input_devices[0].hd_device_settings.active_input #=> String, one of "HDMI", "SDI"
    #   resp.input_devices[0].hd_device_settings.configured_input #=> String, one of "AUTO", "HDMI", "SDI"
    #   resp.input_devices[0].hd_device_settings.device_state #=> String, one of "IDLE", "STREAMING"
    #   resp.input_devices[0].hd_device_settings.framerate #=> Float
    #   resp.input_devices[0].hd_device_settings.height #=> Integer
    #   resp.input_devices[0].hd_device_settings.max_bitrate #=> Integer
    #   resp.input_devices[0].hd_device_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.input_devices[0].hd_device_settings.width #=> Integer
    #   resp.input_devices[0].id #=> String
    #   resp.input_devices[0].mac_address #=> String
    #   resp.input_devices[0].name #=> String
    #   resp.input_devices[0].network_settings.dns_addresses #=> Array
    #   resp.input_devices[0].network_settings.dns_addresses[0] #=> String
    #   resp.input_devices[0].network_settings.gateway #=> String
    #   resp.input_devices[0].network_settings.ip_address #=> String
    #   resp.input_devices[0].network_settings.ip_scheme #=> String, one of "STATIC", "DHCP"
    #   resp.input_devices[0].network_settings.subnet_mask #=> String
    #   resp.input_devices[0].serial_number #=> String
    #   resp.input_devices[0].type #=> String, one of "HD"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputDevices AWS API Documentation
    #
    # @overload list_input_devices(params = {})
    # @param [Hash] params ({})
    def list_input_devices(params = {}, options = {})
      req = build_request(:list_input_devices, params)
      req.send_request(options)
    end

    # Produces a list of Input Security Groups for an account
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListInputSecurityGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInputSecurityGroupsResponse#input_security_groups #input_security_groups} => Array&lt;Types::InputSecurityGroup&gt;
    #   * {Types::ListInputSecurityGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_input_security_groups({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.input_security_groups #=> Array
    #   resp.input_security_groups[0].arn #=> String
    #   resp.input_security_groups[0].id #=> String
    #   resp.input_security_groups[0].inputs #=> Array
    #   resp.input_security_groups[0].inputs[0] #=> String
    #   resp.input_security_groups[0].state #=> String, one of "IDLE", "IN_USE", "UPDATING", "DELETED"
    #   resp.input_security_groups[0].tags #=> Hash
    #   resp.input_security_groups[0].tags["__string"] #=> String
    #   resp.input_security_groups[0].whitelist_rules #=> Array
    #   resp.input_security_groups[0].whitelist_rules[0].cidr #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputSecurityGroups AWS API Documentation
    #
    # @overload list_input_security_groups(params = {})
    # @param [Hash] params ({})
    def list_input_security_groups(params = {}, options = {})
      req = build_request(:list_input_security_groups, params)
      req.send_request(options)
    end

    # Produces list of inputs that have been created
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListInputsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInputsResponse#inputs #inputs} => Array&lt;Types::Input&gt;
    #   * {Types::ListInputsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inputs({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.inputs #=> Array
    #   resp.inputs[0].arn #=> String
    #   resp.inputs[0].attached_channels #=> Array
    #   resp.inputs[0].attached_channels[0] #=> String
    #   resp.inputs[0].destinations #=> Array
    #   resp.inputs[0].destinations[0].ip #=> String
    #   resp.inputs[0].destinations[0].port #=> String
    #   resp.inputs[0].destinations[0].url #=> String
    #   resp.inputs[0].destinations[0].vpc.availability_zone #=> String
    #   resp.inputs[0].destinations[0].vpc.network_interface_id #=> String
    #   resp.inputs[0].id #=> String
    #   resp.inputs[0].input_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.inputs[0].input_devices #=> Array
    #   resp.inputs[0].input_devices[0].id #=> String
    #   resp.inputs[0].input_source_type #=> String, one of "STATIC", "DYNAMIC"
    #   resp.inputs[0].media_connect_flows #=> Array
    #   resp.inputs[0].media_connect_flows[0].flow_arn #=> String
    #   resp.inputs[0].name #=> String
    #   resp.inputs[0].role_arn #=> String
    #   resp.inputs[0].security_groups #=> Array
    #   resp.inputs[0].security_groups[0] #=> String
    #   resp.inputs[0].sources #=> Array
    #   resp.inputs[0].sources[0].password_param #=> String
    #   resp.inputs[0].sources[0].url #=> String
    #   resp.inputs[0].sources[0].username #=> String
    #   resp.inputs[0].state #=> String, one of "CREATING", "DETACHED", "ATTACHED", "DELETING", "DELETED"
    #   resp.inputs[0].tags #=> Hash
    #   resp.inputs[0].tags["__string"] #=> String
    #   resp.inputs[0].type #=> String, one of "UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL", "URL_PULL", "MP4_FILE", "MEDIACONNECT", "INPUT_DEVICE", "AWS_CDI"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputs AWS API Documentation
    #
    # @overload list_inputs(params = {})
    # @param [Hash] params ({})
    def list_inputs(params = {}, options = {})
      req = build_request(:list_inputs, params)
      req.send_request(options)
    end

    # List the programs that currently exist for a specific multiplex.
    #
    # @option params [Integer] :max_results
    #
    # @option params [required, String] :multiplex_id
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListMultiplexProgramsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMultiplexProgramsResponse#multiplex_programs #multiplex_programs} => Array&lt;Types::MultiplexProgramSummary&gt;
    #   * {Types::ListMultiplexProgramsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multiplex_programs({
    #     max_results: 1,
    #     multiplex_id: "__string", # required
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.multiplex_programs #=> Array
    #   resp.multiplex_programs[0].channel_id #=> String
    #   resp.multiplex_programs[0].program_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListMultiplexPrograms AWS API Documentation
    #
    # @overload list_multiplex_programs(params = {})
    # @param [Hash] params ({})
    def list_multiplex_programs(params = {}, options = {})
      req = build_request(:list_multiplex_programs, params)
      req.send_request(options)
    end

    # Retrieve a list of the existing multiplexes.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListMultiplexesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMultiplexesResponse#multiplexes #multiplexes} => Array&lt;Types::MultiplexSummary&gt;
    #   * {Types::ListMultiplexesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multiplexes({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.multiplexes #=> Array
    #   resp.multiplexes[0].arn #=> String
    #   resp.multiplexes[0].availability_zones #=> Array
    #   resp.multiplexes[0].availability_zones[0] #=> String
    #   resp.multiplexes[0].id #=> String
    #   resp.multiplexes[0].multiplex_settings.transport_stream_bitrate #=> Integer
    #   resp.multiplexes[0].name #=> String
    #   resp.multiplexes[0].pipelines_running_count #=> Integer
    #   resp.multiplexes[0].program_count #=> Integer
    #   resp.multiplexes[0].state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #   resp.multiplexes[0].tags #=> Hash
    #   resp.multiplexes[0].tags["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListMultiplexes AWS API Documentation
    #
    # @overload list_multiplexes(params = {})
    # @param [Hash] params ({})
    def list_multiplexes(params = {}, options = {})
      req = build_request(:list_multiplexes, params)
      req.send_request(options)
    end

    # List offerings available for purchase.
    #
    # @option params [String] :channel_class
    #
    # @option params [String] :channel_configuration
    #
    # @option params [String] :codec
    #
    # @option params [String] :duration
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :maximum_bitrate
    #
    # @option params [String] :maximum_framerate
    #
    # @option params [String] :next_token
    #
    # @option params [String] :resolution
    #
    # @option params [String] :resource_type
    #
    # @option params [String] :special_feature
    #
    # @option params [String] :video_quality
    #
    # @return [Types::ListOfferingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOfferingsResponse#next_token #next_token} => String
    #   * {Types::ListOfferingsResponse#offerings #offerings} => Array&lt;Types::Offering&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_offerings({
    #     channel_class: "__string",
    #     channel_configuration: "__string",
    #     codec: "__string",
    #     duration: "__string",
    #     max_results: 1,
    #     maximum_bitrate: "__string",
    #     maximum_framerate: "__string",
    #     next_token: "__string",
    #     resolution: "__string",
    #     resource_type: "__string",
    #     special_feature: "__string",
    #     video_quality: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.offerings #=> Array
    #   resp.offerings[0].arn #=> String
    #   resp.offerings[0].currency_code #=> String
    #   resp.offerings[0].duration #=> Integer
    #   resp.offerings[0].duration_units #=> String, one of "MONTHS"
    #   resp.offerings[0].fixed_price #=> Float
    #   resp.offerings[0].offering_description #=> String
    #   resp.offerings[0].offering_id #=> String
    #   resp.offerings[0].offering_type #=> String, one of "NO_UPFRONT"
    #   resp.offerings[0].region #=> String
    #   resp.offerings[0].resource_specification.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.offerings[0].resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO", "LINK"
    #   resp.offerings[0].resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.offerings[0].resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.offerings[0].resource_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.offerings[0].resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "MULTIPLEX", "CHANNEL"
    #   resp.offerings[0].resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.offerings[0].resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.offerings[0].usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListOfferings AWS API Documentation
    #
    # @overload list_offerings(params = {})
    # @param [Hash] params ({})
    def list_offerings(params = {}, options = {})
      req = build_request(:list_offerings, params)
      req.send_request(options)
    end

    # List purchased reservations.
    #
    # @option params [String] :channel_class
    #
    # @option params [String] :codec
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :maximum_bitrate
    #
    # @option params [String] :maximum_framerate
    #
    # @option params [String] :next_token
    #
    # @option params [String] :resolution
    #
    # @option params [String] :resource_type
    #
    # @option params [String] :special_feature
    #
    # @option params [String] :video_quality
    #
    # @return [Types::ListReservationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReservationsResponse#next_token #next_token} => String
    #   * {Types::ListReservationsResponse#reservations #reservations} => Array&lt;Types::Reservation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reservations({
    #     channel_class: "__string",
    #     codec: "__string",
    #     max_results: 1,
    #     maximum_bitrate: "__string",
    #     maximum_framerate: "__string",
    #     next_token: "__string",
    #     resolution: "__string",
    #     resource_type: "__string",
    #     special_feature: "__string",
    #     video_quality: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reservations #=> Array
    #   resp.reservations[0].arn #=> String
    #   resp.reservations[0].count #=> Integer
    #   resp.reservations[0].currency_code #=> String
    #   resp.reservations[0].duration #=> Integer
    #   resp.reservations[0].duration_units #=> String, one of "MONTHS"
    #   resp.reservations[0].end #=> String
    #   resp.reservations[0].fixed_price #=> Float
    #   resp.reservations[0].name #=> String
    #   resp.reservations[0].offering_description #=> String
    #   resp.reservations[0].offering_id #=> String
    #   resp.reservations[0].offering_type #=> String, one of "NO_UPFRONT"
    #   resp.reservations[0].region #=> String
    #   resp.reservations[0].reservation_id #=> String
    #   resp.reservations[0].resource_specification.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.reservations[0].resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO", "LINK"
    #   resp.reservations[0].resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.reservations[0].resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.reservations[0].resource_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.reservations[0].resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "MULTIPLEX", "CHANNEL"
    #   resp.reservations[0].resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.reservations[0].resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.reservations[0].start #=> String
    #   resp.reservations[0].state #=> String, one of "ACTIVE", "EXPIRED", "CANCELED", "DELETED"
    #   resp.reservations[0].tags #=> Hash
    #   resp.reservations[0].tags["__string"] #=> String
    #   resp.reservations[0].usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListReservations AWS API Documentation
    #
    # @overload list_reservations(params = {})
    # @param [Hash] params ({})
    def list_reservations(params = {}, options = {})
      req = build_request(:list_reservations, params)
      req.send_request(options)
    end

    # Produces list of tags that have been created for a resource
    #
    # @option params [required, String] :resource_arn
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Purchase an offering and create a reservation.
    #
    # @option params [required, Integer] :count
    #
    # @option params [String] :name
    #
    # @option params [required, String] :offering_id
    #
    # @option params [String] :request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :start
    #
    # @option params [Hash<String,String>] :tags
    #
    # @return [Types::PurchaseOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseOfferingResponse#reservation #reservation} => Types::Reservation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_offering({
    #     count: 1, # required
    #     name: "__string",
    #     offering_id: "__string", # required
    #     request_id: "__string",
    #     start: "__string",
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.reservation.arn #=> String
    #   resp.reservation.count #=> Integer
    #   resp.reservation.currency_code #=> String
    #   resp.reservation.duration #=> Integer
    #   resp.reservation.duration_units #=> String, one of "MONTHS"
    #   resp.reservation.end #=> String
    #   resp.reservation.fixed_price #=> Float
    #   resp.reservation.name #=> String
    #   resp.reservation.offering_description #=> String
    #   resp.reservation.offering_id #=> String
    #   resp.reservation.offering_type #=> String, one of "NO_UPFRONT"
    #   resp.reservation.region #=> String
    #   resp.reservation.reservation_id #=> String
    #   resp.reservation.resource_specification.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.reservation.resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO", "LINK"
    #   resp.reservation.resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.reservation.resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.reservation.resource_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.reservation.resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "MULTIPLEX", "CHANNEL"
    #   resp.reservation.resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.reservation.resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.reservation.start #=> String
    #   resp.reservation.state #=> String, one of "ACTIVE", "EXPIRED", "CANCELED", "DELETED"
    #   resp.reservation.tags #=> Hash
    #   resp.reservation.tags["__string"] #=> String
    #   resp.reservation.usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/PurchaseOffering AWS API Documentation
    #
    # @overload purchase_offering(params = {})
    # @param [Hash] params ({})
    def purchase_offering(params = {}, options = {})
      req = build_request(:purchase_offering, params)
      req.send_request(options)
    end

    # Reject the transfer of the specified input device to your AWS account.
    #
    # @option params [required, String] :input_device_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_input_device_transfer({
    #     input_device_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/RejectInputDeviceTransfer AWS API Documentation
    #
    # @overload reject_input_device_transfer(params = {})
    # @param [Hash] params ({})
    def reject_input_device_transfer(params = {}, options = {})
      req = build_request(:reject_input_device_transfer, params)
      req.send_request(options)
    end

    # Starts an existing channel
    #
    # @option params [required, String] :channel_id
    #
    # @return [Types::StartChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartChannelResponse#arn #arn} => String
    #   * {Types::StartChannelResponse#cdi_input_specification #cdi_input_specification} => Types::CdiInputSpecification
    #   * {Types::StartChannelResponse#channel_class #channel_class} => String
    #   * {Types::StartChannelResponse#destinations #destinations} => Array&lt;Types::OutputDestination&gt;
    #   * {Types::StartChannelResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::ChannelEgressEndpoint&gt;
    #   * {Types::StartChannelResponse#encoder_settings #encoder_settings} => Types::EncoderSettings
    #   * {Types::StartChannelResponse#id #id} => String
    #   * {Types::StartChannelResponse#input_attachments #input_attachments} => Array&lt;Types::InputAttachment&gt;
    #   * {Types::StartChannelResponse#input_specification #input_specification} => Types::InputSpecification
    #   * {Types::StartChannelResponse#log_level #log_level} => String
    #   * {Types::StartChannelResponse#name #name} => String
    #   * {Types::StartChannelResponse#pipeline_details #pipeline_details} => Array&lt;Types::PipelineDetail&gt;
    #   * {Types::StartChannelResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::StartChannelResponse#role_arn #role_arn} => String
    #   * {Types::StartChannelResponse#state #state} => String
    #   * {Types::StartChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_channel({
    #     channel_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cdi_input_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.destinations #=> Array
    #   resp.destinations[0].id #=> String
    #   resp.destinations[0].media_package_settings #=> Array
    #   resp.destinations[0].media_package_settings[0].channel_id #=> String
    #   resp.destinations[0].multiplex_settings.multiplex_id #=> String
    #   resp.destinations[0].multiplex_settings.program_name #=> String
    #   resp.destinations[0].settings #=> Array
    #   resp.destinations[0].settings[0].password_param #=> String
    #   resp.destinations[0].settings[0].stream_name #=> String
    #   resp.destinations[0].settings[0].url #=> String
    #   resp.destinations[0].settings[0].username #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].source_ip #=> String
    #   resp.encoder_settings.audio_descriptions #=> Array
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_4_0", "CODING_MODE_8_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_id #=> String
    #   resp.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions #=> Array
    #   resp.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.fill_line_gap #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.font_family #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.style_control #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.encoder_settings.feature_activations.input_prepare_schedule_actions #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.output_locking_mode #=> String, one of "EPOCH_LOCKING", "PIPELINE_LOCKING"
    #   resp.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.nielsen_configuration.distributor_id #=> String
    #   resp.encoder_settings.nielsen_configuration.nielsen_pcm_to_id_3_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups #=> Array
    #   resp.encoder_settings.output_groups[0].name #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.frame_capture_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content_1 #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest_1 #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_id_3_segment_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.i_frame_only_playlists #=> String, one of "DISABLED", "STANDARD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY", "VARIANT_MANIFESTS_AND_SEGMENTS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.redundant_manifest #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.media_package_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35", "SCTE_35_WITHOUT_SEGMENTATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.frame_capture_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.segment_type #=> String, one of "AAC", "FMP4"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.multiplex_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.encoder_settings.video_descriptions #=> Array
    #   resp.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval_units #=> String, one of "MILLISECONDS", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.force_field_pictures #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.quality_level #=> String, one of "ENHANCED_QUALITY", "STANDARD_QUALITY"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.qvbr_quality_level #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR", "VBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.alternative_transfer_function #=> String, one of "INSERT", "OMIT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_cll #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_fall #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.level #=> String, one of "H265_LEVEL_1", "H265_LEVEL_2", "H265_LEVEL_2_1", "H265_LEVEL_3", "H265_LEVEL_3_1", "H265_LEVEL_4", "H265_LEVEL_4_1", "H265_LEVEL_5", "H265_LEVEL_5_1", "H265_LEVEL_5_2", "H265_LEVEL_6", "H265_LEVEL_6_1", "H265_LEVEL_6_2", "H265_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.profile #=> String, one of "MAIN", "MAIN_10BIT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.qvbr_quality_level #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.tier #=> String, one of "HIGH", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "AUTO", "HIGH", "LOW", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_space #=> String, one of "AUTO", "PASSTHROUGH"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.display_aspect_ratio #=> String, one of "DISPLAYRATIO16X9", "DISPLAYRATIO4X3"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.timecode_insertion #=> String, one of "DISABLED", "GOP_TIMECODE"
    #   resp.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.encoder_settings.video_descriptions[0].name #=> String
    #   resp.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.id #=> String
    #   resp.input_attachments #=> Array
    #   resp.input_attachments[0].automatic_input_failover_settings.input_preference #=> String, one of "EQUAL_INPUT_PREFERENCE", "PRIMARY_INPUT_PREFERRED"
    #   resp.input_attachments[0].automatic_input_failover_settings.secondary_input_id #=> String
    #   resp.input_attachments[0].input_attachment_name #=> String
    #   resp.input_attachments[0].input_id #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks[0].track #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.input_attachments[0].input_settings.smpte_2038_data_preference #=> String, one of "IGNORE", "PREFER"
    #   resp.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.name #=> String
    #   resp.pipeline_details #=> Array
    #   resp.pipeline_details[0].active_input_attachment_name #=> String
    #   resp.pipeline_details[0].active_input_switch_action_name #=> String
    #   resp.pipeline_details[0].pipeline_id #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.role_arn #=> String
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StartChannel AWS API Documentation
    #
    # @overload start_channel(params = {})
    # @param [Hash] params ({})
    def start_channel(params = {}, options = {})
      req = build_request(:start_channel, params)
      req.send_request(options)
    end

    # Start (run) the multiplex. Starting the multiplex does not start the
    # channels. You must explicitly start each channel.
    #
    # @option params [required, String] :multiplex_id
    #
    # @return [Types::StartMultiplexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMultiplexResponse#arn #arn} => String
    #   * {Types::StartMultiplexResponse#availability_zones #availability_zones} => Array&lt;String&gt;
    #   * {Types::StartMultiplexResponse#destinations #destinations} => Array&lt;Types::MultiplexOutputDestination&gt;
    #   * {Types::StartMultiplexResponse#id #id} => String
    #   * {Types::StartMultiplexResponse#multiplex_settings #multiplex_settings} => Types::MultiplexSettings
    #   * {Types::StartMultiplexResponse#name #name} => String
    #   * {Types::StartMultiplexResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::StartMultiplexResponse#program_count #program_count} => Integer
    #   * {Types::StartMultiplexResponse#state #state} => String
    #   * {Types::StartMultiplexResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_multiplex({
    #     multiplex_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.availability_zones #=> Array
    #   resp.availability_zones[0] #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].media_connect_settings.entitlement_arn #=> String
    #   resp.id #=> String
    #   resp.multiplex_settings.maximum_video_buffer_delay_milliseconds #=> Integer
    #   resp.multiplex_settings.transport_stream_bitrate #=> Integer
    #   resp.multiplex_settings.transport_stream_id #=> Integer
    #   resp.multiplex_settings.transport_stream_reserved_bitrate #=> Integer
    #   resp.name #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.program_count #=> Integer
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StartMultiplex AWS API Documentation
    #
    # @overload start_multiplex(params = {})
    # @param [Hash] params ({})
    def start_multiplex(params = {}, options = {})
      req = build_request(:start_multiplex, params)
      req.send_request(options)
    end

    # Stops a running channel
    #
    # @option params [required, String] :channel_id
    #
    # @return [Types::StopChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopChannelResponse#arn #arn} => String
    #   * {Types::StopChannelResponse#cdi_input_specification #cdi_input_specification} => Types::CdiInputSpecification
    #   * {Types::StopChannelResponse#channel_class #channel_class} => String
    #   * {Types::StopChannelResponse#destinations #destinations} => Array&lt;Types::OutputDestination&gt;
    #   * {Types::StopChannelResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::ChannelEgressEndpoint&gt;
    #   * {Types::StopChannelResponse#encoder_settings #encoder_settings} => Types::EncoderSettings
    #   * {Types::StopChannelResponse#id #id} => String
    #   * {Types::StopChannelResponse#input_attachments #input_attachments} => Array&lt;Types::InputAttachment&gt;
    #   * {Types::StopChannelResponse#input_specification #input_specification} => Types::InputSpecification
    #   * {Types::StopChannelResponse#log_level #log_level} => String
    #   * {Types::StopChannelResponse#name #name} => String
    #   * {Types::StopChannelResponse#pipeline_details #pipeline_details} => Array&lt;Types::PipelineDetail&gt;
    #   * {Types::StopChannelResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::StopChannelResponse#role_arn #role_arn} => String
    #   * {Types::StopChannelResponse#state #state} => String
    #   * {Types::StopChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_channel({
    #     channel_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cdi_input_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.destinations #=> Array
    #   resp.destinations[0].id #=> String
    #   resp.destinations[0].media_package_settings #=> Array
    #   resp.destinations[0].media_package_settings[0].channel_id #=> String
    #   resp.destinations[0].multiplex_settings.multiplex_id #=> String
    #   resp.destinations[0].multiplex_settings.program_name #=> String
    #   resp.destinations[0].settings #=> Array
    #   resp.destinations[0].settings[0].password_param #=> String
    #   resp.destinations[0].settings[0].stream_name #=> String
    #   resp.destinations[0].settings[0].url #=> String
    #   resp.destinations[0].settings[0].username #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].source_ip #=> String
    #   resp.encoder_settings.audio_descriptions #=> Array
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_4_0", "CODING_MODE_8_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_id #=> String
    #   resp.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions #=> Array
    #   resp.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.fill_line_gap #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.font_family #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.style_control #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.encoder_settings.feature_activations.input_prepare_schedule_actions #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.output_locking_mode #=> String, one of "EPOCH_LOCKING", "PIPELINE_LOCKING"
    #   resp.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.nielsen_configuration.distributor_id #=> String
    #   resp.encoder_settings.nielsen_configuration.nielsen_pcm_to_id_3_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups #=> Array
    #   resp.encoder_settings.output_groups[0].name #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.frame_capture_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content_1 #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest_1 #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_id_3_segment_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.i_frame_only_playlists #=> String, one of "DISABLED", "STANDARD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY", "VARIANT_MANIFESTS_AND_SEGMENTS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.redundant_manifest #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.media_package_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35", "SCTE_35_WITHOUT_SEGMENTATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.frame_capture_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.segment_type #=> String, one of "AAC", "FMP4"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.multiplex_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.encoder_settings.video_descriptions #=> Array
    #   resp.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval_units #=> String, one of "MILLISECONDS", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.force_field_pictures #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.quality_level #=> String, one of "ENHANCED_QUALITY", "STANDARD_QUALITY"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.qvbr_quality_level #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR", "VBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.alternative_transfer_function #=> String, one of "INSERT", "OMIT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_cll #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_fall #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.level #=> String, one of "H265_LEVEL_1", "H265_LEVEL_2", "H265_LEVEL_2_1", "H265_LEVEL_3", "H265_LEVEL_3_1", "H265_LEVEL_4", "H265_LEVEL_4_1", "H265_LEVEL_5", "H265_LEVEL_5_1", "H265_LEVEL_5_2", "H265_LEVEL_6", "H265_LEVEL_6_1", "H265_LEVEL_6_2", "H265_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.profile #=> String, one of "MAIN", "MAIN_10BIT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.qvbr_quality_level #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.tier #=> String, one of "HIGH", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h265_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "AUTO", "HIGH", "LOW", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_space #=> String, one of "AUTO", "PASSTHROUGH"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.display_aspect_ratio #=> String, one of "DISPLAYRATIO16X9", "DISPLAYRATIO4X3"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.timecode_insertion #=> String, one of "DISABLED", "GOP_TIMECODE"
    #   resp.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.encoder_settings.video_descriptions[0].name #=> String
    #   resp.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.id #=> String
    #   resp.input_attachments #=> Array
    #   resp.input_attachments[0].automatic_input_failover_settings.input_preference #=> String, one of "EQUAL_INPUT_PREFERENCE", "PRIMARY_INPUT_PREFERRED"
    #   resp.input_attachments[0].automatic_input_failover_settings.secondary_input_id #=> String
    #   resp.input_attachments[0].input_attachment_name #=> String
    #   resp.input_attachments[0].input_id #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks[0].track #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.input_attachments[0].input_settings.smpte_2038_data_preference #=> String, one of "IGNORE", "PREFER"
    #   resp.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.name #=> String
    #   resp.pipeline_details #=> Array
    #   resp.pipeline_details[0].active_input_attachment_name #=> String
    #   resp.pipeline_details[0].active_input_switch_action_name #=> String
    #   resp.pipeline_details[0].pipeline_id #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.role_arn #=> String
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StopChannel AWS API Documentation
    #
    # @overload stop_channel(params = {})
    # @param [Hash] params ({})
    def stop_channel(params = {}, options = {})
      req = build_request(:stop_channel, params)
      req.send_request(options)
    end

    # Stops a running multiplex. If the multiplex isn't running, this
    # action has no effect.
    #
    # @option params [required, String] :multiplex_id
    #
    # @return [Types::StopMultiplexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopMultiplexResponse#arn #arn} => String
    #   * {Types::StopMultiplexResponse#availability_zones #availability_zones} => Array&lt;String&gt;
    #   * {Types::StopMultiplexResponse#destinations #destinations} => Array&lt;Types::MultiplexOutputDestination&gt;
    #   * {Types::StopMultiplexResponse#id #id} => String
    #   * {Types::StopMultiplexResponse#multiplex_settings #multiplex_settings} => Types::MultiplexSettings
    #   * {Types::StopMultiplexResponse#name #name} => String
    #   * {Types::StopMultiplexResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::StopMultiplexResponse#program_count #program_count} => Integer
    #   * {Types::StopMultiplexResponse#state #state} => String
    #   * {Types::StopMultiplexResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_multiplex({
    #     multiplex_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.availability_zones #=> Array
    #   resp.availability_zones[0] #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].media_connect_settings.entitlement_arn #=> String
    #   resp.id #=> String
    #   resp.multiplex_settings.maximum_video_buffer_delay_milliseconds #=> Integer
    #   resp.multiplex_settings.transport_stream_bitrate #=> Integer
    #   resp.multiplex_settings.transport_stream_id #=> Integer
    #   resp.multiplex_settings.transport_stream_reserved_bitrate #=> Integer
    #   resp.name #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.program_count #=> Integer
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StopMultiplex AWS API Documentation
    #
    # @overload stop_multiplex(params = {})
    # @param [Hash] params ({})
    def stop_multiplex(params = {}, options = {})
      req = build_request(:stop_multiplex, params)
      req.send_request(options)
    end

    # Start an input device transfer to another AWS account. After you make
    # the request, the other account must accept or reject the transfer.
    #
    # @option params [required, String] :input_device_id
    #
    # @option params [String] :target_customer_id
    #
    # @option params [String] :transfer_message
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transfer_input_device({
    #     input_device_id: "__string", # required
    #     target_customer_id: "__string",
    #     transfer_message: "__string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/TransferInputDevice AWS API Documentation
    #
    # @overload transfer_input_device(params = {})
    # @param [Hash] params ({})
    def transfer_input_device(params = {}, options = {})
      req = build_request(:transfer_input_device, params)
      req.send_request(options)
    end

    # Updates a channel.
    #
    # @option params [Types::CdiInputSpecification] :cdi_input_specification
    #
    # @option params [required, String] :channel_id
    #
    # @option params [Array<Types::OutputDestination>] :destinations
    #
    # @option params [Types::EncoderSettings] :encoder_settings
    #   Encoder Settings
    #
    # @option params [Array<Types::InputAttachment>] :input_attachments
    #
    # @option params [Types::InputSpecification] :input_specification
    #
    # @option params [String] :log_level
    #   The log level the user wants for their channel.
    #
    # @option params [String] :name
    #
    # @option params [String] :role_arn
    #
    # @return [Types::UpdateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelResponse#channel #channel} => Types::Channel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     cdi_input_specification: {
    #       resolution: "SD", # accepts SD, HD, FHD, UHD
    #     },
    #     channel_id: "__string", # required
    #     destinations: [
    #       {
    #         id: "__string",
    #         media_package_settings: [
    #           {
    #             channel_id: "__stringMin1",
    #           },
    #         ],
    #         multiplex_settings: {
    #           multiplex_id: "__stringMin1",
    #           program_name: "__stringMin1",
    #         },
    #         settings: [
    #           {
    #             password_param: "__string",
    #             stream_name: "__string",
    #             url: "__string",
    #             username: "__string",
    #           },
    #         ],
    #       },
    #     ],
    #     encoder_settings: {
    #       audio_descriptions: [ # required
    #         {
    #           audio_normalization_settings: {
    #             algorithm: "ITU_1770_1", # accepts ITU_1770_1, ITU_1770_2
    #             algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO
    #             target_lkfs: 1.0,
    #           },
    #           audio_selector_name: "__string", # required
    #           audio_type: "CLEAN_EFFECTS", # accepts CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY
    #           audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           codec_settings: {
    #             aac_settings: {
    #               bitrate: 1.0,
    #               coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #               input_type: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #               profile: "HEV1", # accepts HEV1, HEV2, LC
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #               sample_rate: 1.0,
    #               spec: "MPEG2", # accepts MPEG2, MPEG4
    #               vbr_quality: "HIGH", # accepts HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW
    #             },
    #             ac_3_settings: {
    #               bitrate: 1.0,
    #               bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #               dialnorm: 1,
    #               drc_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #               lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             },
    #             eac_3_settings: {
    #               attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #               bitrate: 1.0,
    #               bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #               dc_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               dialnorm: 1,
    #               drc_line: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #               drc_rf: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #               lfe_control: "LFE", # accepts LFE, NO_LFE
    #               lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               lo_ro_center_mix_level: 1.0,
    #               lo_ro_surround_mix_level: 1.0,
    #               lt_rt_center_mix_level: 1.0,
    #               lt_rt_surround_mix_level: 1.0,
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               passthrough_control: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, WHEN_POSSIBLE
    #               phase_control: "NO_SHIFT", # accepts NO_SHIFT, SHIFT_90_DEGREES
    #               stereo_downmix: "DPL2", # accepts DPL2, LO_RO, LT_RT, NOT_INDICATED
    #               surround_ex_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #               surround_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #             },
    #             mp_2_settings: {
    #               bitrate: 1.0,
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0
    #               sample_rate: 1.0,
    #             },
    #             pass_through_settings: {
    #             },
    #             wav_settings: {
    #               bit_depth: 1.0,
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_4_0, CODING_MODE_8_0
    #               sample_rate: 1.0,
    #             },
    #           },
    #           language_code: "__stringMin1Max35",
    #           language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           name: "__string", # required
    #           remix_settings: {
    #             channel_mappings: [ # required
    #               {
    #                 input_channel_levels: [ # required
    #                   {
    #                     gain: 1, # required
    #                     input_channel: 1, # required
    #                   },
    #                 ],
    #                 output_channel: 1, # required
    #               },
    #             ],
    #             channels_in: 1,
    #             channels_out: 1,
    #           },
    #           stream_name: "__string",
    #         },
    #       ],
    #       avail_blanking: {
    #         avail_blanking_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         state: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       avail_configuration: {
    #         avail_settings: {
    #           scte_35_splice_insert: {
    #             ad_avail_offset: 1,
    #             no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           },
    #           scte_35_time_signal_apos: {
    #             ad_avail_offset: 1,
    #             no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           },
    #         },
    #       },
    #       blackout_slate: {
    #         blackout_slate_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         network_end_blackout: "DISABLED", # accepts DISABLED, ENABLED
    #         network_end_blackout_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         network_id: "__stringMin34Max34",
    #         state: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       caption_descriptions: [
    #         {
    #           caption_selector_name: "__string", # required
    #           destination_settings: {
    #             arib_destination_settings: {
    #             },
    #             burn_in_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #               background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               background_opacity: 1,
    #               font: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: "__string",
    #               outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               outline_size: 1,
    #               shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             dvb_sub_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #               background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               background_opacity: 1,
    #               font: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: "__string",
    #               outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               outline_size: 1,
    #               shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             ebu_tt_d_destination_settings: {
    #               fill_line_gap: "DISABLED", # accepts DISABLED, ENABLED
    #               font_family: "__string",
    #               style_control: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #             },
    #             embedded_destination_settings: {
    #             },
    #             embedded_plus_scte_20_destination_settings: {
    #             },
    #             rtmp_caption_info_destination_settings: {
    #             },
    #             scte_20_plus_embedded_destination_settings: {
    #             },
    #             scte_27_destination_settings: {
    #             },
    #             smpte_tt_destination_settings: {
    #             },
    #             teletext_destination_settings: {
    #             },
    #             ttml_destination_settings: {
    #               style_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED
    #             },
    #             webvtt_destination_settings: {
    #             },
    #           },
    #           language_code: "__string",
    #           language_description: "__string",
    #           name: "__string", # required
    #         },
    #       ],
    #       feature_activations: {
    #         input_prepare_schedule_actions: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       global_configuration: {
    #         initial_audio_gain: 1,
    #         input_end_action: "NONE", # accepts NONE, SWITCH_AND_LOOP_INPUTS
    #         input_loss_behavior: {
    #           black_frame_msec: 1,
    #           input_loss_image_color: "__stringMin6Max6",
    #           input_loss_image_slate: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           input_loss_image_type: "COLOR", # accepts COLOR, SLATE
    #           repeat_frame_msec: 1,
    #         },
    #         output_locking_mode: "EPOCH_LOCKING", # accepts EPOCH_LOCKING, PIPELINE_LOCKING
    #         output_timing_source: "INPUT_CLOCK", # accepts INPUT_CLOCK, SYSTEM_CLOCK
    #         support_low_framerate_inputs: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       nielsen_configuration: {
    #         distributor_id: "__string",
    #         nielsen_pcm_to_id_3_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       output_groups: [ # required
    #         {
    #           name: "__stringMax32",
    #           output_group_settings: { # required
    #             archive_group_settings: {
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               rollover_interval: 1,
    #             },
    #             frame_capture_group_settings: {
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #             },
    #             hls_group_settings: {
    #               ad_markers: ["ADOBE"], # accepts ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
    #               base_url_content: "__string",
    #               base_url_content_1: "__string",
    #               base_url_manifest: "__string",
    #               base_url_manifest_1: "__string",
    #               caption_language_mappings: [
    #                 {
    #                   caption_channel: 1, # required
    #                   language_code: "__stringMin3Max3", # required
    #                   language_description: "__stringMin1", # required
    #                 },
    #               ],
    #               caption_language_setting: "INSERT", # accepts INSERT, NONE, OMIT
    #               client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #               codec_specification: "RFC_4281", # accepts RFC_4281, RFC_6381
    #               constant_iv: "__stringMin32Max32",
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #               encryption_type: "AES128", # accepts AES128, SAMPLE_AES
    #               hls_cdn_settings: {
    #                 hls_akamai_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                   salt: "__string",
    #                   token: "__string",
    #                 },
    #                 hls_basic_put_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #                 hls_media_store_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #                 hls_webdav_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #               },
    #               hls_id_3_segment_tagging: "DISABLED", # accepts DISABLED, ENABLED
    #               i_frame_only_playlists: "DISABLED", # accepts DISABLED, STANDARD
    #               index_n_segments: 1,
    #               input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #               iv_in_manifest: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               iv_source: "EXPLICIT", # accepts EXPLICIT, FOLLOWS_SEGMENT_NUMBER
    #               keep_segments: 1,
    #               key_format: "__string",
    #               key_format_versions: "__string",
    #               key_provider_settings: {
    #                 static_key_settings: {
    #                   key_provider_server: {
    #                     password_param: "__string",
    #                     uri: "__string", # required
    #                     username: "__string",
    #                   },
    #                   static_key_value: "__stringMin32Max32", # required
    #                 },
    #               },
    #               manifest_compression: "GZIP", # accepts GZIP, NONE
    #               manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #               min_segment_length: 1,
    #               mode: "LIVE", # accepts LIVE, VOD
    #               output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY, VARIANT_MANIFESTS_AND_SEGMENTS
    #               program_date_time: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               program_date_time_period: 1,
    #               redundant_manifest: "DISABLED", # accepts DISABLED, ENABLED
    #               segment_length: 1,
    #               segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #               segments_per_subdirectory: 1,
    #               stream_inf_resolution: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #               timed_metadata_id_3_period: 1,
    #               timestamp_delta_milliseconds: 1,
    #               ts_file_mode: "SEGMENTED_FILES", # accepts SEGMENTED_FILES, SINGLE_FILE
    #             },
    #             media_package_group_settings: {
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #             },
    #             ms_smooth_group_settings: {
    #               acquisition_point_id: "__string",
    #               audio_only_timecode_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED_CLOCK
    #               certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #               connection_retry_interval: 1,
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               event_id: "__string",
    #               event_id_mode: "NO_EVENT_ID", # accepts NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP
    #               event_stop_behavior: "NONE", # accepts NONE, SEND_EOS
    #               filecache_duration: 1,
    #               fragment_length: 1,
    #               input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #               num_retries: 1,
    #               restart_delay: 1,
    #               segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #               send_delay_ms: 1,
    #               sparse_track_type: "NONE", # accepts NONE, SCTE_35, SCTE_35_WITHOUT_SEGMENTATION
    #               stream_manifest_behavior: "DO_NOT_SEND", # accepts DO_NOT_SEND, SEND
    #               timestamp_offset: "__string",
    #               timestamp_offset_mode: "USE_CONFIGURED_OFFSET", # accepts USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE
    #             },
    #             multiplex_group_settings: {
    #             },
    #             rtmp_group_settings: {
    #               authentication_scheme: "AKAMAI", # accepts AKAMAI, COMMON
    #               cache_full_behavior: "DISCONNECT_IMMEDIATELY", # accepts DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER
    #               cache_length: 1,
    #               caption_data: "ALL", # accepts ALL, FIELD1_608, FIELD1_AND_FIELD2_608
    #               input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #               restart_delay: 1,
    #             },
    #             udp_group_settings: {
    #               input_loss_action: "DROP_PROGRAM", # accepts DROP_PROGRAM, DROP_TS, EMIT_PROGRAM
    #               timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #               timed_metadata_id_3_period: 1,
    #             },
    #           },
    #           outputs: [ # required
    #             {
    #               audio_description_names: ["__string"],
    #               caption_description_names: ["__string"],
    #               output_name: "__stringMin1Max255",
    #               output_settings: { # required
    #                 archive_output_settings: {
    #                   container_settings: { # required
    #                     m2ts_settings: {
    #                       absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                       arib: "DISABLED", # accepts DISABLED, ENABLED
    #                       arib_captions_pid: "__string",
    #                       arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                       audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: "__string",
    #                       audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                       bitrate: 1,
    #                       buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                       cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                       dvb_nit_settings: {
    #                         network_id: 1, # required
    #                         network_name: "__stringMin1Max256", # required
    #                         rep_interval: 1,
    #                       },
    #                       dvb_sdt_settings: {
    #                         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                         rep_interval: 1,
    #                         service_name: "__stringMin1Max256",
    #                         service_provider_name: "__stringMin1Max256",
    #                       },
    #                       dvb_sub_pids: "__string",
    #                       dvb_tdt_settings: {
    #                         rep_interval: 1,
    #                       },
    #                       dvb_teletext_pid: "__string",
    #                       ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                       ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                       ebp_lookahead_ms: 1,
    #                       ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                       ecm_pid: "__string",
    #                       es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                       etv_platform_pid: "__string",
    #                       etv_signal_pid: "__string",
    #                       fragment_time: 1.0,
    #                       klv: "NONE", # accepts NONE, PASSTHROUGH
    #                       klv_data_pids: "__string",
    #                       nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       null_packet_bitrate: 1.0,
    #                       pat_interval: 1,
    #                       pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                       pcr_period: 1,
    #                       pcr_pid: "__string",
    #                       pmt_interval: 1,
    #                       pmt_pid: "__string",
    #                       program_num: 1,
    #                       rate_mode: "CBR", # accepts CBR, VBR
    #                       scte_27_pids: "__string",
    #                       scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                       scte_35_pid: "__string",
    #                       segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                       segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                       segmentation_time: 1.0,
    #                       timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       timed_metadata_pid: "__string",
    #                       transport_stream_id: 1,
    #                       video_pid: "__string",
    #                     },
    #                     raw_settings: {
    #                     },
    #                   },
    #                   extension: "__string",
    #                   name_modifier: "__string",
    #                 },
    #                 frame_capture_output_settings: {
    #                   name_modifier: "__string",
    #                 },
    #                 hls_output_settings: {
    #                   h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                   hls_settings: { # required
    #                     audio_only_hls_settings: {
    #                       audio_group_id: "__string",
    #                       audio_only_image: {
    #                         password_param: "__string",
    #                         uri: "__string", # required
    #                         username: "__string",
    #                       },
    #                       audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                       segment_type: "AAC", # accepts AAC, FMP4
    #                     },
    #                     fmp_4_hls_settings: {
    #                       audio_rendition_sets: "__string",
    #                       nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                     },
    #                     standard_hls_settings: {
    #                       audio_rendition_sets: "__string",
    #                       m3u_8_settings: { # required
    #                         audio_frames_per_pes: 1,
    #                         audio_pids: "__string",
    #                         ecm_pid: "__string",
    #                         nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         pat_interval: 1,
    #                         pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                         pcr_period: 1,
    #                         pcr_pid: "__string",
    #                         pmt_interval: 1,
    #                         pmt_pid: "__string",
    #                         program_num: 1,
    #                         scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         scte_35_pid: "__string",
    #                         timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         timed_metadata_pid: "__string",
    #                         transport_stream_id: 1,
    #                         video_pid: "__string",
    #                       },
    #                     },
    #                   },
    #                   name_modifier: "__stringMin1",
    #                   segment_modifier: "__string",
    #                 },
    #                 media_package_output_settings: {
    #                 },
    #                 ms_smooth_output_settings: {
    #                   h265_packaging_type: "HEV1", # accepts HEV1, HVC1
    #                   name_modifier: "__string",
    #                 },
    #                 multiplex_output_settings: {
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                 },
    #                 rtmp_output_settings: {
    #                   certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #                   connection_retry_interval: 1,
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   num_retries: 1,
    #                 },
    #                 udp_output_settings: {
    #                   buffer_msec: 1,
    #                   container_settings: { # required
    #                     m2ts_settings: {
    #                       absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                       arib: "DISABLED", # accepts DISABLED, ENABLED
    #                       arib_captions_pid: "__string",
    #                       arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                       audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: "__string",
    #                       audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                       bitrate: 1,
    #                       buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                       cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                       dvb_nit_settings: {
    #                         network_id: 1, # required
    #                         network_name: "__stringMin1Max256", # required
    #                         rep_interval: 1,
    #                       },
    #                       dvb_sdt_settings: {
    #                         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                         rep_interval: 1,
    #                         service_name: "__stringMin1Max256",
    #                         service_provider_name: "__stringMin1Max256",
    #                       },
    #                       dvb_sub_pids: "__string",
    #                       dvb_tdt_settings: {
    #                         rep_interval: 1,
    #                       },
    #                       dvb_teletext_pid: "__string",
    #                       ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                       ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                       ebp_lookahead_ms: 1,
    #                       ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                       ecm_pid: "__string",
    #                       es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                       etv_platform_pid: "__string",
    #                       etv_signal_pid: "__string",
    #                       fragment_time: 1.0,
    #                       klv: "NONE", # accepts NONE, PASSTHROUGH
    #                       klv_data_pids: "__string",
    #                       nielsen_id_3_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       null_packet_bitrate: 1.0,
    #                       pat_interval: 1,
    #                       pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                       pcr_period: 1,
    #                       pcr_pid: "__string",
    #                       pmt_interval: 1,
    #                       pmt_pid: "__string",
    #                       program_num: 1,
    #                       rate_mode: "CBR", # accepts CBR, VBR
    #                       scte_27_pids: "__string",
    #                       scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                       scte_35_pid: "__string",
    #                       segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                       segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                       segmentation_time: 1.0,
    #                       timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       timed_metadata_pid: "__string",
    #                       transport_stream_id: 1,
    #                       video_pid: "__string",
    #                     },
    #                   },
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   fec_output_settings: {
    #                     column_depth: 1,
    #                     include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #                     row_length: 1,
    #                   },
    #                 },
    #               },
    #               video_description_name: "__string",
    #             },
    #           ],
    #         },
    #       ],
    #       timecode_config: { # required
    #         source: "EMBEDDED", # required, accepts EMBEDDED, SYSTEMCLOCK, ZEROBASED
    #         sync_threshold: 1,
    #       },
    #       video_descriptions: [ # required
    #         {
    #           codec_settings: {
    #             frame_capture_settings: {
    #               capture_interval: 1, # required
    #               capture_interval_units: "MILLISECONDS", # accepts MILLISECONDS, SECONDS
    #             },
    #             h264_settings: {
    #               adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #               afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #               bitrate: 1,
    #               buf_fill_pct: 1,
    #               buf_size: 1,
    #               color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #               color_space_settings: {
    #                 color_space_passthrough_settings: {
    #                 },
    #                 rec_601_settings: {
    #                 },
    #                 rec_709_settings: {
    #                 },
    #               },
    #               entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #               filter_settings: {
    #                 temporal_filter_settings: {
    #                   post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                   strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                 },
    #               },
    #               fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #               flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               force_field_pictures: "DISABLED", # accepts DISABLED, ENABLED
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               gop_num_b_frames: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               level: "H264_LEVEL_1", # accepts H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO
    #               look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               num_ref_frames: 1,
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #               quality_level: "ENHANCED_QUALITY", # accepts ENHANCED_QUALITY, STANDARD_QUALITY
    #               qvbr_quality_level: 1,
    #               rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR, VBR
    #               scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slices: 1,
    #               softness: 1,
    #               spatial_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #               syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #               temporal_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #             },
    #             h265_settings: {
    #               adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #               afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #               alternative_transfer_function: "INSERT", # accepts INSERT, OMIT
    #               bitrate: 1,
    #               buf_size: 1,
    #               color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #               color_space_settings: {
    #                 color_space_passthrough_settings: {
    #                 },
    #                 hdr_10_settings: {
    #                   max_cll: 1,
    #                   max_fall: 1,
    #                 },
    #                 rec_601_settings: {
    #                 },
    #                 rec_709_settings: {
    #                 },
    #               },
    #               filter_settings: {
    #                 temporal_filter_settings: {
    #                   post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                   strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                 },
    #               },
    #               fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #               flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               framerate_denominator: 1, # required
    #               framerate_numerator: 1, # required
    #               gop_closed_cadence: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               level: "H265_LEVEL_1", # accepts H265_LEVEL_1, H265_LEVEL_2, H265_LEVEL_2_1, H265_LEVEL_3, H265_LEVEL_3_1, H265_LEVEL_4, H265_LEVEL_4_1, H265_LEVEL_5, H265_LEVEL_5_1, H265_LEVEL_5_2, H265_LEVEL_6, H265_LEVEL_6_1, H265_LEVEL_6_2, H265_LEVEL_AUTO
    #               look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               profile: "MAIN", # accepts MAIN, MAIN_10BIT
    #               qvbr_quality_level: 1,
    #               rate_control_mode: "CBR", # accepts CBR, MULTIPLEX, QVBR
    #               scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slices: 1,
    #               tier: "HIGH", # accepts HIGH, MAIN
    #               timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #             },
    #             mpeg_2_settings: {
    #               adaptive_quantization: "AUTO", # accepts AUTO, HIGH, LOW, MEDIUM, OFF
    #               afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #               color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #               color_space: "AUTO", # accepts AUTO, PASSTHROUGH
    #               display_aspect_ratio: "DISPLAYRATIO16X9", # accepts DISPLAYRATIO16X9, DISPLAYRATIO4X3
    #               filter_settings: {
    #                 temporal_filter_settings: {
    #                   post_filter_sharpening: "AUTO", # accepts AUTO, DISABLED, ENABLED
    #                   strength: "AUTO", # accepts AUTO, STRENGTH_1, STRENGTH_2, STRENGTH_3, STRENGTH_4, STRENGTH_5, STRENGTH_6, STRENGTH_7, STRENGTH_8, STRENGTH_9, STRENGTH_10, STRENGTH_11, STRENGTH_12, STRENGTH_13, STRENGTH_14, STRENGTH_15, STRENGTH_16
    #                 },
    #               },
    #               fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #               framerate_denominator: 1, # required
    #               framerate_numerator: 1, # required
    #               gop_closed_cadence: 1,
    #               gop_num_b_frames: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #               subgop_length: "DYNAMIC", # accepts DYNAMIC, FIXED
    #               timecode_insertion: "DISABLED", # accepts DISABLED, GOP_TIMECODE
    #             },
    #           },
    #           height: 1,
    #           name: "__string", # required
    #           respond_to_afd: "NONE", # accepts NONE, PASSTHROUGH, RESPOND
    #           scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #           sharpness: 1,
    #           width: 1,
    #         },
    #       ],
    #     },
    #     input_attachments: [
    #       {
    #         automatic_input_failover_settings: {
    #           input_preference: "EQUAL_INPUT_PREFERENCE", # accepts EQUAL_INPUT_PREFERENCE, PRIMARY_INPUT_PREFERRED
    #           secondary_input_id: "__string", # required
    #         },
    #         input_attachment_name: "__string",
    #         input_id: "__string",
    #         input_settings: {
    #           audio_selectors: [
    #             {
    #               name: "__stringMin1", # required
    #               selector_settings: {
    #                 audio_language_selection: {
    #                   language_code: "__string", # required
    #                   language_selection_policy: "LOOSE", # accepts LOOSE, STRICT
    #                 },
    #                 audio_pid_selection: {
    #                   pid: 1, # required
    #                 },
    #                 audio_track_selection: {
    #                   tracks: [ # required
    #                     {
    #                       track: 1, # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #           ],
    #           caption_selectors: [
    #             {
    #               language_code: "__string",
    #               name: "__stringMin1", # required
    #               selector_settings: {
    #                 ancillary_source_settings: {
    #                   source_ancillary_channel_number: 1,
    #                 },
    #                 arib_source_settings: {
    #                 },
    #                 dvb_sub_source_settings: {
    #                   pid: 1,
    #                 },
    #                 embedded_source_settings: {
    #                   convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                   scte_20_detection: "AUTO", # accepts AUTO, OFF
    #                   source_608_channel_number: 1,
    #                   source_608_track_number: 1,
    #                 },
    #                 scte_20_source_settings: {
    #                   convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                   source_608_channel_number: 1,
    #                 },
    #                 scte_27_source_settings: {
    #                   pid: 1,
    #                 },
    #                 teletext_source_settings: {
    #                   page_number: "__string",
    #                 },
    #               },
    #             },
    #           ],
    #           deblock_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           denoise_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           filter_strength: 1,
    #           input_filter: "AUTO", # accepts AUTO, DISABLED, FORCED
    #           network_input_settings: {
    #             hls_input_settings: {
    #               bandwidth: 1,
    #               buffer_segments: 1,
    #               retries: 1,
    #               retry_interval: 1,
    #             },
    #             server_validation: "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", # accepts CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY
    #           },
    #           smpte_2038_data_preference: "IGNORE", # accepts IGNORE, PREFER
    #           source_end_behavior: "CONTINUE", # accepts CONTINUE, LOOP
    #           video_selector: {
    #             color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709
    #             color_space_usage: "FALLBACK", # accepts FALLBACK, FORCE
    #             selector_settings: {
    #               video_selector_pid: {
    #                 pid: 1,
    #               },
    #               video_selector_program_id: {
    #                 program_id: 1,
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     input_specification: {
    #       codec: "MPEG2", # accepts MPEG2, AVC, HEVC
    #       maximum_bitrate: "MAX_10_MBPS", # accepts MAX_10_MBPS, MAX_20_MBPS, MAX_50_MBPS
    #       resolution: "SD", # accepts SD, HD, UHD
    #     },
    #     log_level: "ERROR", # accepts ERROR, WARNING, INFO, DEBUG, DISABLED
    #     name: "__string",
    #     role_arn: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.arn #=> String
    #   resp.channel.cdi_input_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.channel.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.channel.destinations #=> Array
    #   resp.channel.destinations[0].id #=> String
    #   resp.channel.destinations[0].media_package_settings #=> Array
    #   resp.channel.destinations[0].media_package_settings[0].channel_id #=> String
    #   resp.channel.destinations[0].multiplex_settings.multiplex_id #=> String
    #   resp.channel.destinations[0].multiplex_settings.program_name #=> String
    #   resp.channel.destinations[0].settings #=> Array
    #   resp.channel.destinations[0].settings[0].password_param #=> String
    #   resp.channel.destinations[0].settings[0].stream_name #=> String
    #   resp.channel.destinations[0].settings[0].url #=> String
    #   resp.channel.destinations[0].settings[0].username #=> String
    #   resp.channel.egress_endpoints #=> Array
    #   resp.channel.egress_endpoints[0].source_ip #=> String
    #   resp.channel.encoder_settings.audio_descriptions #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_4_0", "CODING_MODE_8_0"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.channel.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_id #=> String
    #   resp.channel.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.caption_descriptions #=> Array
    #   resp.channel.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.fill_line_gap #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.font_family #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.style_control #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.feature_activations.input_prepare_schedule_actions #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.channel.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.channel.encoder_settings.global_configuration.output_locking_mode #=> String, one of "EPOCH_LOCKING", "PIPELINE_LOCKING"
    #   resp.channel.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.channel.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.nielsen_configuration.distributor_id #=> String
    #   resp.channel.encoder_settings.nielsen_configuration.nielsen_pcm_to_id_3_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups #=> Array
    #   resp.channel.encoder_settings.output_groups[0].name #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.frame_capture_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content_1 #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest_1 #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_id_3_segment_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.i_frame_only_playlists #=> String, one of "DISABLED", "STANDARD"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY", "VARIANT_MANIFESTS_AND_SEGMENTS"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.redundant_manifest #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.media_package_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35", "SCTE_35_WITHOUT_SEGMENTATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.frame_capture_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.segment_type #=> String, one of "AAC", "FMP4"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.audio_rendition_sets #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.multiplex_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.channel.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.channel.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.channel.encoder_settings.video_descriptions #=> Array
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval_units #=> String, one of "MILLISECONDS", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.force_field_pictures #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.quality_level #=> String, one of "ENHANCED_QUALITY", "STANDARD_QUALITY"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.qvbr_quality_level #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR", "VBR"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.alternative_transfer_function #=> String, one of "INSERT", "OMIT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.buf_size #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_cll #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_fall #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size #=> Float
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.level #=> String, one of "H265_LEVEL_1", "H265_LEVEL_2", "H265_LEVEL_2_1", "H265_LEVEL_3", "H265_LEVEL_3_1", "H265_LEVEL_4", "H265_LEVEL_4_1", "H265_LEVEL_5", "H265_LEVEL_5_1", "H265_LEVEL_5_2", "H265_LEVEL_6", "H265_LEVEL_6_1", "H265_LEVEL_6_2", "H265_LEVEL_AUTO"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.profile #=> String, one of "MAIN", "MAIN_10BIT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.qvbr_quality_level #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.slices #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.tier #=> String, one of "HIGH", "MAIN"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "AUTO", "HIGH", "LOW", "MEDIUM", "OFF"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_space #=> String, one of "AUTO", "PASSTHROUGH"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.display_aspect_ratio #=> String, one of "DISPLAYRATIO16X9", "DISPLAYRATIO4X3"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_num_b_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.timecode_insertion #=> String, one of "DISABLED", "GOP_TIMECODE"
    #   resp.channel.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.channel.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.channel.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.channel.id #=> String
    #   resp.channel.input_attachments #=> Array
    #   resp.channel.input_attachments[0].automatic_input_failover_settings.input_preference #=> String, one of "EQUAL_INPUT_PREFERENCE", "PRIMARY_INPUT_PREFERRED"
    #   resp.channel.input_attachments[0].automatic_input_failover_settings.secondary_input_id #=> String
    #   resp.channel.input_attachments[0].input_attachment_name #=> String
    #   resp.channel.input_attachments[0].input_id #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks #=> Array
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks[0].track #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.channel.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.channel.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.channel.input_attachments[0].input_settings.smpte_2038_data_preference #=> String, one of "IGNORE", "PREFER"
    #   resp.channel.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.channel.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.channel.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.channel.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.channel.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.channel.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.channel.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.channel.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.channel.name #=> String
    #   resp.channel.pipeline_details #=> Array
    #   resp.channel.pipeline_details[0].active_input_attachment_name #=> String
    #   resp.channel.pipeline_details[0].active_input_switch_action_name #=> String
    #   resp.channel.pipeline_details[0].pipeline_id #=> String
    #   resp.channel.pipelines_running_count #=> Integer
    #   resp.channel.role_arn #=> String
    #   resp.channel.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"
    #   resp.channel.tags #=> Hash
    #   resp.channel.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Changes the class of the channel.
    #
    # @option params [required, String] :channel_class
    #   A standard channel has two encoding pipelines and a single pipeline
    #   channel only has one.
    #
    # @option params [required, String] :channel_id
    #
    # @option params [Array<Types::OutputDestination>] :destinations
    #
    # @return [Types::UpdateChannelClassResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelClassResponse#channel #channel} => Types::Channel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_class({
    #     channel_class: "STANDARD", # required, accepts STANDARD, SINGLE_PIPELINE
    #     channel_id: "__string", # required
    #     destinations: [
    #       {
    #         id: "__string",
    #         media_package_settings: [
    #           {
    #             channel_id: "__stringMin1",
    #           },
    #         ],
    #         multiplex_settings: {
    #           multiplex_id: "__stringMin1",
    #           program_name: "__stringMin1",
    #         },
    #         settings: [
    #           {
    #             password_param: "__string",
    #             stream_name: "__string",
    #             url: "__string",
    #             username: "__string",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.arn #=> String
    #   resp.channel.cdi_input_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.channel.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.channel.destinations #=> Array
    #   resp.channel.destinations[0].id #=> String
    #   resp.channel.destinations[0].media_package_settings #=> Array
    #   resp.channel.destinations[0].media_package_settings[0].channel_id #=> String
    #   resp.channel.destinations[0].multiplex_settings.multiplex_id #=> String
    #   resp.channel.destinations[0].multiplex_settings.program_name #=> String
    #   resp.channel.destinations[0].settings #=> Array
    #   resp.channel.destinations[0].settings[0].password_param #=> String
    #   resp.channel.destinations[0].settings[0].stream_name #=> String
    #   resp.channel.destinations[0].settings[0].url #=> String
    #   resp.channel.destinations[0].settings[0].username #=> String
    #   resp.channel.egress_endpoints #=> Array
    #   resp.channel.egress_endpoints[0].source_ip #=> String
    #   resp.channel.encoder_settings.audio_descriptions #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_4_0", "CODING_MODE_8_0"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.channel.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_id #=> String
    #   resp.channel.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.caption_descriptions #=> Array
    #   resp.channel.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.fill_line_gap #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.font_family #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ebu_tt_d_destination_settings.style_control #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.feature_activations.input_prepare_schedule_actions #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.channel.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.channel.encoder_settings.global_configuration.output_locking_mode #=> String, one of "EPOCH_LOCKING", "PIPELINE_LOCKING"
    #   resp.channel.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.channel.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.nielsen_configuration.distributor_id #=> String
    #   resp.channel.encoder_settings.nielsen_configuration.nielsen_pcm_to_id_3_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups #=> Array
    #   resp.channel.encoder_settings.output_groups[0].name #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.frame_capture_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content_1 #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest_1 #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_id_3_segment_tagging #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.i_frame_only_playlists #=> String, one of "DISABLED", "STANDARD"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY", "VARIANT_MANIFESTS_AND_SEGMENTS"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.redundant_manifest #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.media_package_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35", "SCTE_35_WITHOUT_SEGMENTATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.frame_capture_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.segment_type #=> String, one of "AAC", "FMP4"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.audio_rendition_sets #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.fmp_4_hls_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.h265_packaging_type #=> String, one of "HEV1", "HVC1"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.multiplex_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.nielsen_id_3_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.channel.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.channel.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.channel.encoder_settings.video_descriptions #=> Array
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.frame_capture_settings.capture_interval_units #=> String, one of "MILLISECONDS", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.force_field_pictures #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.quality_level #=> String, one of "ENHANCED_QUALITY", "STANDARD_QUALITY"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.qvbr_quality_level #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR", "VBR"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.alternative_transfer_function #=> String, one of "INSERT", "OMIT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.buf_size #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_cll #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.color_space_settings.hdr_10_settings.max_fall #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size #=> Float
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.level #=> String, one of "H265_LEVEL_1", "H265_LEVEL_2", "H265_LEVEL_2_1", "H265_LEVEL_3", "H265_LEVEL_3_1", "H265_LEVEL_4", "H265_LEVEL_4_1", "H265_LEVEL_5", "H265_LEVEL_5_1", "H265_LEVEL_5_2", "H265_LEVEL_6", "H265_LEVEL_6_1", "H265_LEVEL_6_2", "H265_LEVEL_AUTO"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.profile #=> String, one of "MAIN", "MAIN_10BIT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.qvbr_quality_level #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.rate_control_mode #=> String, one of "CBR", "MULTIPLEX", "QVBR"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.slices #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.tier #=> String, one of "HIGH", "MAIN"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h265_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "AUTO", "HIGH", "LOW", "MEDIUM", "OFF"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.color_space #=> String, one of "AUTO", "PASSTHROUGH"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.display_aspect_ratio #=> String, one of "DISPLAYRATIO16X9", "DISPLAYRATIO4X3"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.post_filter_sharpening #=> String, one of "AUTO", "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.filter_settings.temporal_filter_settings.strength #=> String, one of "AUTO", "STRENGTH_1", "STRENGTH_2", "STRENGTH_3", "STRENGTH_4", "STRENGTH_5", "STRENGTH_6", "STRENGTH_7", "STRENGTH_8", "STRENGTH_9", "STRENGTH_10", "STRENGTH_11", "STRENGTH_12", "STRENGTH_13", "STRENGTH_14", "STRENGTH_15", "STRENGTH_16"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_num_b_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.subgop_length #=> String, one of "DYNAMIC", "FIXED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.mpeg_2_settings.timecode_insertion #=> String, one of "DISABLED", "GOP_TIMECODE"
    #   resp.channel.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.channel.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.channel.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.channel.id #=> String
    #   resp.channel.input_attachments #=> Array
    #   resp.channel.input_attachments[0].automatic_input_failover_settings.input_preference #=> String, one of "EQUAL_INPUT_PREFERENCE", "PRIMARY_INPUT_PREFERRED"
    #   resp.channel.input_attachments[0].automatic_input_failover_settings.secondary_input_id #=> String
    #   resp.channel.input_attachments[0].input_attachment_name #=> String
    #   resp.channel.input_attachments[0].input_id #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks #=> Array
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_track_selection.tracks[0].track #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.channel.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.channel.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.channel.input_attachments[0].input_settings.smpte_2038_data_preference #=> String, one of "IGNORE", "PREFER"
    #   resp.channel.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.channel.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.channel.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.channel.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.channel.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.channel.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.channel.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.channel.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.channel.name #=> String
    #   resp.channel.pipeline_details #=> Array
    #   resp.channel.pipeline_details[0].active_input_attachment_name #=> String
    #   resp.channel.pipeline_details[0].active_input_switch_action_name #=> String
    #   resp.channel.pipeline_details[0].pipeline_id #=> String
    #   resp.channel.pipelines_running_count #=> Integer
    #   resp.channel.role_arn #=> String
    #   resp.channel.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED", "UPDATING", "UPDATE_FAILED"
    #   resp.channel.tags #=> Hash
    #   resp.channel.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateChannelClass AWS API Documentation
    #
    # @overload update_channel_class(params = {})
    # @param [Hash] params ({})
    def update_channel_class(params = {}, options = {})
      req = build_request(:update_channel_class, params)
      req.send_request(options)
    end

    # Updates an input.
    #
    # @option params [Array<Types::InputDestinationRequest>] :destinations
    #
    # @option params [Array<Types::InputDeviceRequest>] :input_devices
    #
    # @option params [required, String] :input_id
    #
    # @option params [Array<String>] :input_security_groups
    #
    # @option params [Array<Types::MediaConnectFlowRequest>] :media_connect_flows
    #
    # @option params [String] :name
    #
    # @option params [String] :role_arn
    #
    # @option params [Array<Types::InputSourceRequest>] :sources
    #
    # @return [Types::UpdateInputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateInputResponse#input #input} => Types::Input
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_input({
    #     destinations: [
    #       {
    #         stream_name: "__string",
    #       },
    #     ],
    #     input_devices: [
    #       {
    #         id: "__string",
    #       },
    #     ],
    #     input_id: "__string", # required
    #     input_security_groups: ["__string"],
    #     media_connect_flows: [
    #       {
    #         flow_arn: "__string",
    #       },
    #     ],
    #     name: "__string",
    #     role_arn: "__string",
    #     sources: [
    #       {
    #         password_param: "__string",
    #         url: "__string",
    #         username: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.input.arn #=> String
    #   resp.input.attached_channels #=> Array
    #   resp.input.attached_channels[0] #=> String
    #   resp.input.destinations #=> Array
    #   resp.input.destinations[0].ip #=> String
    #   resp.input.destinations[0].port #=> String
    #   resp.input.destinations[0].url #=> String
    #   resp.input.destinations[0].vpc.availability_zone #=> String
    #   resp.input.destinations[0].vpc.network_interface_id #=> String
    #   resp.input.id #=> String
    #   resp.input.input_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.input.input_devices #=> Array
    #   resp.input.input_devices[0].id #=> String
    #   resp.input.input_source_type #=> String, one of "STATIC", "DYNAMIC"
    #   resp.input.media_connect_flows #=> Array
    #   resp.input.media_connect_flows[0].flow_arn #=> String
    #   resp.input.name #=> String
    #   resp.input.role_arn #=> String
    #   resp.input.security_groups #=> Array
    #   resp.input.security_groups[0] #=> String
    #   resp.input.sources #=> Array
    #   resp.input.sources[0].password_param #=> String
    #   resp.input.sources[0].url #=> String
    #   resp.input.sources[0].username #=> String
    #   resp.input.state #=> String, one of "CREATING", "DETACHED", "ATTACHED", "DELETING", "DELETED"
    #   resp.input.tags #=> Hash
    #   resp.input.tags["__string"] #=> String
    #   resp.input.type #=> String, one of "UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL", "URL_PULL", "MP4_FILE", "MEDIACONNECT", "INPUT_DEVICE", "AWS_CDI"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInput AWS API Documentation
    #
    # @overload update_input(params = {})
    # @param [Hash] params ({})
    def update_input(params = {}, options = {})
      req = build_request(:update_input, params)
      req.send_request(options)
    end

    # Updates the parameters for the input device.
    #
    # @option params [Types::InputDeviceConfigurableSettings] :hd_device_settings
    #   Configurable settings for the input device.
    #
    # @option params [required, String] :input_device_id
    #
    # @option params [String] :name
    #
    # @return [Types::UpdateInputDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateInputDeviceResponse#arn #arn} => String
    #   * {Types::UpdateInputDeviceResponse#connection_state #connection_state} => String
    #   * {Types::UpdateInputDeviceResponse#device_settings_sync_state #device_settings_sync_state} => String
    #   * {Types::UpdateInputDeviceResponse#hd_device_settings #hd_device_settings} => Types::InputDeviceHdSettings
    #   * {Types::UpdateInputDeviceResponse#id #id} => String
    #   * {Types::UpdateInputDeviceResponse#mac_address #mac_address} => String
    #   * {Types::UpdateInputDeviceResponse#name #name} => String
    #   * {Types::UpdateInputDeviceResponse#network_settings #network_settings} => Types::InputDeviceNetworkSettings
    #   * {Types::UpdateInputDeviceResponse#serial_number #serial_number} => String
    #   * {Types::UpdateInputDeviceResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_input_device({
    #     hd_device_settings: {
    #       configured_input: "AUTO", # accepts AUTO, HDMI, SDI
    #       max_bitrate: 1,
    #     },
    #     input_device_id: "__string", # required
    #     name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.connection_state #=> String, one of "DISCONNECTED", "CONNECTED"
    #   resp.device_settings_sync_state #=> String, one of "SYNCED", "SYNCING"
    #   resp.hd_device_settings.active_input #=> String, one of "HDMI", "SDI"
    #   resp.hd_device_settings.configured_input #=> String, one of "AUTO", "HDMI", "SDI"
    #   resp.hd_device_settings.device_state #=> String, one of "IDLE", "STREAMING"
    #   resp.hd_device_settings.framerate #=> Float
    #   resp.hd_device_settings.height #=> Integer
    #   resp.hd_device_settings.max_bitrate #=> Integer
    #   resp.hd_device_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.hd_device_settings.width #=> Integer
    #   resp.id #=> String
    #   resp.mac_address #=> String
    #   resp.name #=> String
    #   resp.network_settings.dns_addresses #=> Array
    #   resp.network_settings.dns_addresses[0] #=> String
    #   resp.network_settings.gateway #=> String
    #   resp.network_settings.ip_address #=> String
    #   resp.network_settings.ip_scheme #=> String, one of "STATIC", "DHCP"
    #   resp.network_settings.subnet_mask #=> String
    #   resp.serial_number #=> String
    #   resp.type #=> String, one of "HD"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputDevice AWS API Documentation
    #
    # @overload update_input_device(params = {})
    # @param [Hash] params ({})
    def update_input_device(params = {}, options = {})
      req = build_request(:update_input_device, params)
      req.send_request(options)
    end

    # Update an Input Security Group's Whilelists.
    #
    # @option params [required, String] :input_security_group_id
    #
    # @option params [Hash<String,String>] :tags
    #
    # @option params [Array<Types::InputWhitelistRuleCidr>] :whitelist_rules
    #
    # @return [Types::UpdateInputSecurityGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateInputSecurityGroupResponse#security_group #security_group} => Types::InputSecurityGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_input_security_group({
    #     input_security_group_id: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #     whitelist_rules: [
    #       {
    #         cidr: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.security_group.arn #=> String
    #   resp.security_group.id #=> String
    #   resp.security_group.inputs #=> Array
    #   resp.security_group.inputs[0] #=> String
    #   resp.security_group.state #=> String, one of "IDLE", "IN_USE", "UPDATING", "DELETED"
    #   resp.security_group.tags #=> Hash
    #   resp.security_group.tags["__string"] #=> String
    #   resp.security_group.whitelist_rules #=> Array
    #   resp.security_group.whitelist_rules[0].cidr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputSecurityGroup AWS API Documentation
    #
    # @overload update_input_security_group(params = {})
    # @param [Hash] params ({})
    def update_input_security_group(params = {}, options = {})
      req = build_request(:update_input_security_group, params)
      req.send_request(options)
    end

    # Updates a multiplex.
    #
    # @option params [required, String] :multiplex_id
    #
    # @option params [Types::MultiplexSettings] :multiplex_settings
    #   Contains configuration for a Multiplex event
    #
    # @option params [String] :name
    #
    # @return [Types::UpdateMultiplexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMultiplexResponse#multiplex #multiplex} => Types::Multiplex
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_multiplex({
    #     multiplex_id: "__string", # required
    #     multiplex_settings: {
    #       maximum_video_buffer_delay_milliseconds: 1,
    #       transport_stream_bitrate: 1, # required
    #       transport_stream_id: 1, # required
    #       transport_stream_reserved_bitrate: 1,
    #     },
    #     name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.multiplex.arn #=> String
    #   resp.multiplex.availability_zones #=> Array
    #   resp.multiplex.availability_zones[0] #=> String
    #   resp.multiplex.destinations #=> Array
    #   resp.multiplex.destinations[0].media_connect_settings.entitlement_arn #=> String
    #   resp.multiplex.id #=> String
    #   resp.multiplex.multiplex_settings.maximum_video_buffer_delay_milliseconds #=> Integer
    #   resp.multiplex.multiplex_settings.transport_stream_bitrate #=> Integer
    #   resp.multiplex.multiplex_settings.transport_stream_id #=> Integer
    #   resp.multiplex.multiplex_settings.transport_stream_reserved_bitrate #=> Integer
    #   resp.multiplex.name #=> String
    #   resp.multiplex.pipelines_running_count #=> Integer
    #   resp.multiplex.program_count #=> Integer
    #   resp.multiplex.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #   resp.multiplex.tags #=> Hash
    #   resp.multiplex.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateMultiplex AWS API Documentation
    #
    # @overload update_multiplex(params = {})
    # @param [Hash] params ({})
    def update_multiplex(params = {}, options = {})
      req = build_request(:update_multiplex, params)
      req.send_request(options)
    end

    # Update a program in a multiplex.
    #
    # @option params [required, String] :multiplex_id
    #
    # @option params [Types::MultiplexProgramSettings] :multiplex_program_settings
    #   Multiplex Program settings configuration.
    #
    # @option params [required, String] :program_name
    #
    # @return [Types::UpdateMultiplexProgramResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMultiplexProgramResponse#multiplex_program #multiplex_program} => Types::MultiplexProgram
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_multiplex_program({
    #     multiplex_id: "__string", # required
    #     multiplex_program_settings: {
    #       preferred_channel_pipeline: "CURRENTLY_ACTIVE", # accepts CURRENTLY_ACTIVE, PIPELINE_0, PIPELINE_1
    #       program_number: 1, # required
    #       service_descriptor: {
    #         provider_name: "__stringMax256", # required
    #         service_name: "__stringMax256", # required
    #       },
    #       video_settings: {
    #         constant_bitrate: 1,
    #         statmux_settings: {
    #           maximum_bitrate: 1,
    #           minimum_bitrate: 1,
    #           priority: 1,
    #         },
    #       },
    #     },
    #     program_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.multiplex_program.channel_id #=> String
    #   resp.multiplex_program.multiplex_program_settings.preferred_channel_pipeline #=> String, one of "CURRENTLY_ACTIVE", "PIPELINE_0", "PIPELINE_1"
    #   resp.multiplex_program.multiplex_program_settings.program_number #=> Integer
    #   resp.multiplex_program.multiplex_program_settings.service_descriptor.provider_name #=> String
    #   resp.multiplex_program.multiplex_program_settings.service_descriptor.service_name #=> String
    #   resp.multiplex_program.multiplex_program_settings.video_settings.constant_bitrate #=> Integer
    #   resp.multiplex_program.multiplex_program_settings.video_settings.statmux_settings.maximum_bitrate #=> Integer
    #   resp.multiplex_program.multiplex_program_settings.video_settings.statmux_settings.minimum_bitrate #=> Integer
    #   resp.multiplex_program.multiplex_program_settings.video_settings.statmux_settings.priority #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.audio_pids #=> Array
    #   resp.multiplex_program.packet_identifiers_map.audio_pids[0] #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.dvb_sub_pids #=> Array
    #   resp.multiplex_program.packet_identifiers_map.dvb_sub_pids[0] #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.dvb_teletext_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.etv_platform_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.etv_signal_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.klv_data_pids #=> Array
    #   resp.multiplex_program.packet_identifiers_map.klv_data_pids[0] #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.pcr_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.pmt_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.private_metadata_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.scte_27_pids #=> Array
    #   resp.multiplex_program.packet_identifiers_map.scte_27_pids[0] #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.scte_35_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.timed_metadata_pid #=> Integer
    #   resp.multiplex_program.packet_identifiers_map.video_pid #=> Integer
    #   resp.multiplex_program.pipeline_details #=> Array
    #   resp.multiplex_program.pipeline_details[0].active_channel_pipeline #=> String
    #   resp.multiplex_program.pipeline_details[0].pipeline_id #=> String
    #   resp.multiplex_program.program_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateMultiplexProgram AWS API Documentation
    #
    # @overload update_multiplex_program(params = {})
    # @param [Hash] params ({})
    def update_multiplex_program(params = {}, options = {})
      req = build_request(:update_multiplex_program, params)
      req.send_request(options)
    end

    # Update reservation.
    #
    # @option params [String] :name
    #
    # @option params [required, String] :reservation_id
    #
    # @return [Types::UpdateReservationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateReservationResponse#reservation #reservation} => Types::Reservation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_reservation({
    #     name: "__string",
    #     reservation_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reservation.arn #=> String
    #   resp.reservation.count #=> Integer
    #   resp.reservation.currency_code #=> String
    #   resp.reservation.duration #=> Integer
    #   resp.reservation.duration_units #=> String, one of "MONTHS"
    #   resp.reservation.end #=> String
    #   resp.reservation.fixed_price #=> Float
    #   resp.reservation.name #=> String
    #   resp.reservation.offering_description #=> String
    #   resp.reservation.offering_id #=> String
    #   resp.reservation.offering_type #=> String, one of "NO_UPFRONT"
    #   resp.reservation.region #=> String
    #   resp.reservation.reservation_id #=> String
    #   resp.reservation.resource_specification.channel_class #=> String, one of "STANDARD", "SINGLE_PIPELINE"
    #   resp.reservation.resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO", "LINK"
    #   resp.reservation.resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.reservation.resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.reservation.resource_specification.resolution #=> String, one of "SD", "HD", "FHD", "UHD"
    #   resp.reservation.resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "MULTIPLEX", "CHANNEL"
    #   resp.reservation.resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.reservation.resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.reservation.start #=> String
    #   resp.reservation.state #=> String, one of "ACTIVE", "EXPIRED", "CANCELED", "DELETED"
    #   resp.reservation.tags #=> Hash
    #   resp.reservation.tags["__string"] #=> String
    #   resp.reservation.usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateReservation AWS API Documentation
    #
    # @overload update_reservation(params = {})
    # @param [Hash] params ({})
    def update_reservation(params = {}, options = {})
      req = build_request(:update_reservation, params)
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
      context[:gem_name] = 'aws-sdk-medialive'
      context[:gem_version] = '1.57.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name       | params                      | :delay   | :max_attempts |
    # | ----------------- | --------------------------- | -------- | ------------- |
    # | channel_created   | {Client#describe_channel}   | 3        | 5             |
    # | channel_deleted   | {Client#describe_channel}   | 5        | 84            |
    # | channel_running   | {Client#describe_channel}   | 5        | 120           |
    # | channel_stopped   | {Client#describe_channel}   | 5        | 60            |
    # | input_attached    | {Client#describe_input}     | 5        | 20            |
    # | input_deleted     | {Client#describe_input}     | 5        | 20            |
    # | input_detached    | {Client#describe_input}     | 5        | 84            |
    # | multiplex_created | {Client#describe_multiplex} | 3        | 5             |
    # | multiplex_deleted | {Client#describe_multiplex} | 5        | 20            |
    # | multiplex_running | {Client#describe_multiplex} | 5        | 120           |
    # | multiplex_stopped | {Client#describe_multiplex} | 5        | 28            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        channel_created: Waiters::ChannelCreated,
        channel_deleted: Waiters::ChannelDeleted,
        channel_running: Waiters::ChannelRunning,
        channel_stopped: Waiters::ChannelStopped,
        input_attached: Waiters::InputAttached,
        input_deleted: Waiters::InputDeleted,
        input_detached: Waiters::InputDetached,
        multiplex_created: Waiters::MultiplexCreated,
        multiplex_deleted: Waiters::MultiplexDeleted,
        multiplex_running: Waiters::MultiplexRunning,
        multiplex_stopped: Waiters::MultiplexStopped
      }
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
