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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:pinpoint)

module Aws::Pinpoint
  # An API client for Pinpoint.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Pinpoint::Client.new(
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

    @identifier = :pinpoint

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
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
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
    #     to test endpoints. This should be a valid HTTP(S) URI.
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

    # Creates an application.
    #
    # @option params [required, Types::CreateApplicationRequest] :create_application_request
    #   Specifies the display name of an application and the tags to associate
    #   with the application.
    #
    # @return [Types::CreateAppResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppResponse#application_response #application_response} => Types::ApplicationResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app({
    #     create_application_request: { # required
    #       name: "__string", # required
    #       tags: {
    #         "__string" => "__string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_response.arn #=> String
    #   resp.application_response.id #=> String
    #   resp.application_response.name #=> String
    #   resp.application_response.tags #=> Hash
    #   resp.application_response.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateApp AWS API Documentation
    #
    # @overload create_app(params = {})
    # @param [Hash] params ({})
    def create_app(params = {}, options = {})
      req = build_request(:create_app, params)
      req.send_request(options)
    end

    # Creates a new campaign for an application or updates the settings of
    # an existing campaign for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::WriteCampaignRequest] :write_campaign_request
    #   Specifies the configuration and other settings for a campaign.
    #
    # @return [Types::CreateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCampaignResponse#campaign_response #campaign_response} => Types::CampaignResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_campaign({
    #     application_id: "__string", # required
    #     write_campaign_request: { # required
    #       additional_treatments: [
    #         {
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             apns_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             custom_message: {
    #               data: "__string",
    #             },
    #             default_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               html_body: "__string",
    #               title: "__string",
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               sender_id: "__string",
    #             },
    #           },
    #           schedule: {
    #             end_time: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   },
    #                 },
    #               },
    #               filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #             },
    #             frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string",
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string",
    #           },
    #           size_percent: 1, # required
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string",
    #         },
    #       ],
    #       custom_delivery_configuration: {
    #         delivery_uri: "__string", # required
    #         endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #       },
    #       description: "__string",
    #       holdout_percent: 1,
    #       hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY", # accepts DELIVERY, FILTER
    #         web_url: "__string",
    #       },
    #       is_paused: false,
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #       },
    #       message_configuration: {
    #         adm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         apns_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         custom_message: {
    #           data: "__string",
    #         },
    #         default_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         email_message: {
    #           body: "__string",
    #           from_address: "__string",
    #           html_body: "__string",
    #           title: "__string",
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #           sender_id: "__string",
    #         },
    #       },
    #       name: "__string",
    #       schedule: {
    #         end_time: "__string",
    #         event_filter: {
    #           dimensions: { # required
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #             },
    #             event_type: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               },
    #             },
    #           },
    #           filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #         },
    #         frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string",
    #         },
    #         start_time: "__string", # required
    #         timezone: "__string",
    #       },
    #       segment_id: "__string",
    #       segment_version: 1,
    #       tags: {
    #         "__string" => "__string",
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #       },
    #       treatment_description: "__string",
    #       treatment_name: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_response.additional_treatments #=> Array
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaign_response.additional_treatments[0].id #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.push_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.push_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.sms_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.sms_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.voice_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.voice_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.campaign_response.application_id #=> String
    #   resp.campaign_response.arn #=> String
    #   resp.campaign_response.creation_date #=> String
    #   resp.campaign_response.custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaign_response.custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaign_response.custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaign_response.default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.description #=> String
    #   resp.campaign_response.holdout_percent #=> Integer
    #   resp.campaign_response.hook.lambda_function_name #=> String
    #   resp.campaign_response.hook.mode #=> String, one of "DELIVERY", "FILTER"
    #   resp.campaign_response.hook.web_url #=> String
    #   resp.campaign_response.id #=> String
    #   resp.campaign_response.is_paused #=> Boolean
    #   resp.campaign_response.last_modified_date #=> String
    #   resp.campaign_response.limits.daily #=> Integer
    #   resp.campaign_response.limits.maximum_duration #=> Integer
    #   resp.campaign_response.limits.messages_per_second #=> Integer
    #   resp.campaign_response.limits.total #=> Integer
    #   resp.campaign_response.message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.adm_message.body #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.adm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.adm_message.title #=> String
    #   resp.campaign_response.message_configuration.adm_message.url #=> String
    #   resp.campaign_response.message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.apns_message.body #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.apns_message.title #=> String
    #   resp.campaign_response.message_configuration.apns_message.url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.baidu_message.body #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.json_body #=> String
    #   resp.campaign_response.message_configuration.baidu_message.media_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.baidu_message.title #=> String
    #   resp.campaign_response.message_configuration.baidu_message.url #=> String
    #   resp.campaign_response.message_configuration.custom_message.data #=> String
    #   resp.campaign_response.message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.default_message.body #=> String
    #   resp.campaign_response.message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.message_configuration.default_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.default_message.title #=> String
    #   resp.campaign_response.message_configuration.default_message.url #=> String
    #   resp.campaign_response.message_configuration.email_message.body #=> String
    #   resp.campaign_response.message_configuration.email_message.from_address #=> String
    #   resp.campaign_response.message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.message_configuration.email_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.message_configuration.sms_message.body #=> String
    #   resp.campaign_response.message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.name #=> String
    #   resp.campaign_response.schedule.end_time #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaign_response.schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaign_response.schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaign_response.schedule.is_local_time #=> Boolean
    #   resp.campaign_response.schedule.quiet_time.end #=> String
    #   resp.campaign_response.schedule.quiet_time.start #=> String
    #   resp.campaign_response.schedule.start_time #=> String
    #   resp.campaign_response.schedule.timezone #=> String
    #   resp.campaign_response.segment_id #=> String
    #   resp.campaign_response.segment_version #=> Integer
    #   resp.campaign_response.state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.tags #=> Hash
    #   resp.campaign_response.tags["__string"] #=> String
    #   resp.campaign_response.template_configuration.email_template.name #=> String
    #   resp.campaign_response.template_configuration.email_template.version #=> String
    #   resp.campaign_response.template_configuration.push_template.name #=> String
    #   resp.campaign_response.template_configuration.push_template.version #=> String
    #   resp.campaign_response.template_configuration.sms_template.name #=> String
    #   resp.campaign_response.template_configuration.sms_template.version #=> String
    #   resp.campaign_response.template_configuration.voice_template.name #=> String
    #   resp.campaign_response.template_configuration.voice_template.version #=> String
    #   resp.campaign_response.treatment_description #=> String
    #   resp.campaign_response.treatment_name #=> String
    #   resp.campaign_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateCampaign AWS API Documentation
    #
    # @overload create_campaign(params = {})
    # @param [Hash] params ({})
    def create_campaign(params = {}, options = {})
      req = build_request(:create_campaign, params)
      req.send_request(options)
    end

    # Creates a message template for messages that are sent through the
    # email channel.
    #
    # @option params [required, Types::EmailTemplateRequest] :email_template_request
    #   Specifies the content and settings for a message template that can be
    #   used in messages that are sent through the email channel.
    #
    # @option params [required, String] :template_name
    #
    # @return [Types::CreateEmailTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEmailTemplateResponse#create_template_message_body #create_template_message_body} => Types::CreateTemplateMessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_email_template({
    #     email_template_request: { # required
    #       default_substitutions: "__string",
    #       html_part: "__string",
    #       recommender_id: "__string",
    #       subject: "__string",
    #       tags: {
    #         "__string" => "__string",
    #       },
    #       template_description: "__string",
    #       text_part: "__string",
    #     },
    #     template_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_template_message_body.arn #=> String
    #   resp.create_template_message_body.message #=> String
    #   resp.create_template_message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateEmailTemplate AWS API Documentation
    #
    # @overload create_email_template(params = {})
    # @param [Hash] params ({})
    def create_email_template(params = {}, options = {})
      req = build_request(:create_email_template, params)
      req.send_request(options)
    end

    # Creates an export job for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::ExportJobRequest] :export_job_request
    #   Specifies the settings for a job that exports endpoint definitions to
    #   an Amazon Simple Storage Service (Amazon S3) bucket.
    #
    # @return [Types::CreateExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateExportJobResponse#export_job_response #export_job_response} => Types::ExportJobResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_export_job({
    #     application_id: "__string", # required
    #     export_job_request: { # required
    #       role_arn: "__string", # required
    #       s3_url_prefix: "__string", # required
    #       segment_id: "__string",
    #       segment_version: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.export_job_response.application_id #=> String
    #   resp.export_job_response.completed_pieces #=> Integer
    #   resp.export_job_response.completion_date #=> String
    #   resp.export_job_response.creation_date #=> String
    #   resp.export_job_response.definition.role_arn #=> String
    #   resp.export_job_response.definition.s3_url_prefix #=> String
    #   resp.export_job_response.definition.segment_id #=> String
    #   resp.export_job_response.definition.segment_version #=> Integer
    #   resp.export_job_response.failed_pieces #=> Integer
    #   resp.export_job_response.failures #=> Array
    #   resp.export_job_response.failures[0] #=> String
    #   resp.export_job_response.id #=> String
    #   resp.export_job_response.job_status #=> String, one of "CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.export_job_response.total_failures #=> Integer
    #   resp.export_job_response.total_pieces #=> Integer
    #   resp.export_job_response.total_processed #=> Integer
    #   resp.export_job_response.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateExportJob AWS API Documentation
    #
    # @overload create_export_job(params = {})
    # @param [Hash] params ({})
    def create_export_job(params = {}, options = {})
      req = build_request(:create_export_job, params)
      req.send_request(options)
    end

    # Creates an import job for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::ImportJobRequest] :import_job_request
    #   Specifies the settings for a job that imports endpoint definitions
    #   from an Amazon Simple Storage Service (Amazon S3) bucket.
    #
    # @return [Types::CreateImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImportJobResponse#import_job_response #import_job_response} => Types::ImportJobResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_import_job({
    #     application_id: "__string", # required
    #     import_job_request: { # required
    #       define_segment: false,
    #       external_id: "__string",
    #       format: "CSV", # required, accepts CSV, JSON
    #       register_endpoints: false,
    #       role_arn: "__string", # required
    #       s3_url: "__string", # required
    #       segment_id: "__string",
    #       segment_name: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job_response.application_id #=> String
    #   resp.import_job_response.completed_pieces #=> Integer
    #   resp.import_job_response.completion_date #=> String
    #   resp.import_job_response.creation_date #=> String
    #   resp.import_job_response.definition.define_segment #=> Boolean
    #   resp.import_job_response.definition.external_id #=> String
    #   resp.import_job_response.definition.format #=> String, one of "CSV", "JSON"
    #   resp.import_job_response.definition.register_endpoints #=> Boolean
    #   resp.import_job_response.definition.role_arn #=> String
    #   resp.import_job_response.definition.s3_url #=> String
    #   resp.import_job_response.definition.segment_id #=> String
    #   resp.import_job_response.definition.segment_name #=> String
    #   resp.import_job_response.failed_pieces #=> Integer
    #   resp.import_job_response.failures #=> Array
    #   resp.import_job_response.failures[0] #=> String
    #   resp.import_job_response.id #=> String
    #   resp.import_job_response.job_status #=> String, one of "CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.import_job_response.total_failures #=> Integer
    #   resp.import_job_response.total_pieces #=> Integer
    #   resp.import_job_response.total_processed #=> Integer
    #   resp.import_job_response.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateImportJob AWS API Documentation
    #
    # @overload create_import_job(params = {})
    # @param [Hash] params ({})
    def create_import_job(params = {}, options = {})
      req = build_request(:create_import_job, params)
      req.send_request(options)
    end

    # Creates a journey for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::WriteJourneyRequest] :write_journey_request
    #   Specifies the configuration and other settings for a journey.
    #
    # @return [Types::CreateJourneyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJourneyResponse#journey_response #journey_response} => Types::JourneyResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_journey({
    #     application_id: "__string", # required
    #     write_journey_request: { # required
    #       activities: {
    #         "__string" => {
    #           custom: {
    #             delivery_uri: "__string",
    #             endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #             message_config: {
    #               data: "__string",
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string",
    #           },
    #           conditional_split: {
    #             condition: {
    #               conditions: [
    #                 {
    #                   event_condition: {
    #                     dimensions: { # required
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         },
    #                       },
    #                     },
    #                     message_activity: "__string",
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                         recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                       },
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0,
    #                       },
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       },
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                   },
    #                 },
    #               ],
    #               operator: "ALL", # accepts ALL, ANY
    #             },
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string",
    #             },
    #             false_activity: "__string",
    #             true_activity: "__string",
    #           },
    #           description: "__string",
    #           email: {
    #             message_config: {
    #               from_address: "__string",
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string",
    #           },
    #           holdout: {
    #             next_activity: "__string",
    #             percentage: 1, # required
    #           },
    #           multi_condition: {
    #             branches: [
    #               {
    #                 condition: {
    #                   event_condition: {
    #                     dimensions: { # required
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         },
    #                       },
    #                     },
    #                     message_activity: "__string",
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                         recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                       },
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0,
    #                       },
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       },
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                   },
    #                 },
    #                 next_activity: "__string",
    #               },
    #             ],
    #             default_activity: "__string",
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string",
    #             },
    #           },
    #           push: {
    #             message_config: {
    #               time_to_live: "__string",
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string",
    #           },
    #           random_split: {
    #             branches: [
    #               {
    #                 next_activity: "__string",
    #                 percentage: 1,
    #               },
    #             ],
    #           },
    #           sms: {
    #             message_config: {
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               sender_id: "__string",
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string",
    #           },
    #           wait: {
    #             next_activity: "__string",
    #             wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string",
    #             },
    #           },
    #         },
    #       },
    #       creation_date: "__string",
    #       last_modified_date: "__string",
    #       limits: {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #       },
    #       local_time: false,
    #       name: "__string", # required
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string",
    #       },
    #       refresh_frequency: "__string",
    #       schedule: {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: "__string",
    #       },
    #       start_activity: "__string",
    #       start_condition: {
    #         description: "__string",
    #         segment_start_condition: {
    #           segment_id: "__string", # required
    #         },
    #       },
    #       state: "DRAFT", # accepts DRAFT, ACTIVE, COMPLETED, CANCELLED, CLOSED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.journey_response.activities #=> Hash
    #   resp.journey_response.activities["__string"].custom.delivery_uri #=> String
    #   resp.journey_response.activities["__string"].custom.endpoint_types #=> Array
    #   resp.journey_response.activities["__string"].custom.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.journey_response.activities["__string"].custom.message_config.data #=> String
    #   resp.journey_response.activities["__string"].custom.next_activity #=> String
    #   resp.journey_response.activities["__string"].custom.template_name #=> String
    #   resp.journey_response.activities["__string"].custom.template_version #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.operator #=> String, one of "ALL", "ANY"
    #   resp.journey_response.activities["__string"].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.journey_response.activities["__string"].conditional_split.false_activity #=> String
    #   resp.journey_response.activities["__string"].conditional_split.true_activity #=> String
    #   resp.journey_response.activities["__string"].description #=> String
    #   resp.journey_response.activities["__string"].email.message_config.from_address #=> String
    #   resp.journey_response.activities["__string"].email.next_activity #=> String
    #   resp.journey_response.activities["__string"].email.template_name #=> String
    #   resp.journey_response.activities["__string"].email.template_version #=> String
    #   resp.journey_response.activities["__string"].holdout.next_activity #=> String
    #   resp.journey_response.activities["__string"].holdout.percentage #=> Integer
    #   resp.journey_response.activities["__string"].multi_condition.branches #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.message_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_condition.segment_id #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].next_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.default_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.evaluation_wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].multi_condition.evaluation_wait_time.wait_until #=> String
    #   resp.journey_response.activities["__string"].push.message_config.time_to_live #=> String
    #   resp.journey_response.activities["__string"].push.next_activity #=> String
    #   resp.journey_response.activities["__string"].push.template_name #=> String
    #   resp.journey_response.activities["__string"].push.template_version #=> String
    #   resp.journey_response.activities["__string"].random_split.branches #=> Array
    #   resp.journey_response.activities["__string"].random_split.branches[0].next_activity #=> String
    #   resp.journey_response.activities["__string"].random_split.branches[0].percentage #=> Integer
    #   resp.journey_response.activities["__string"].sms.message_config.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.journey_response.activities["__string"].sms.message_config.sender_id #=> String
    #   resp.journey_response.activities["__string"].sms.next_activity #=> String
    #   resp.journey_response.activities["__string"].sms.template_name #=> String
    #   resp.journey_response.activities["__string"].sms.template_version #=> String
    #   resp.journey_response.activities["__string"].wait.next_activity #=> String
    #   resp.journey_response.activities["__string"].wait.wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].wait.wait_time.wait_until #=> String
    #   resp.journey_response.application_id #=> String
    #   resp.journey_response.creation_date #=> String
    #   resp.journey_response.id #=> String
    #   resp.journey_response.last_modified_date #=> String
    #   resp.journey_response.limits.daily_cap #=> Integer
    #   resp.journey_response.limits.endpoint_reentry_cap #=> Integer
    #   resp.journey_response.limits.messages_per_second #=> Integer
    #   resp.journey_response.local_time #=> Boolean
    #   resp.journey_response.name #=> String
    #   resp.journey_response.quiet_time.end #=> String
    #   resp.journey_response.quiet_time.start #=> String
    #   resp.journey_response.refresh_frequency #=> String
    #   resp.journey_response.schedule.end_time #=> Time
    #   resp.journey_response.schedule.start_time #=> Time
    #   resp.journey_response.schedule.timezone #=> String
    #   resp.journey_response.start_activity #=> String
    #   resp.journey_response.start_condition.description #=> String
    #   resp.journey_response.start_condition.segment_start_condition.segment_id #=> String
    #   resp.journey_response.state #=> String, one of "DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED"
    #   resp.journey_response.tags #=> Hash
    #   resp.journey_response.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateJourney AWS API Documentation
    #
    # @overload create_journey(params = {})
    # @param [Hash] params ({})
    def create_journey(params = {}, options = {})
      req = build_request(:create_journey, params)
      req.send_request(options)
    end

    # Creates a message template for messages that are sent through a push
    # notification channel.
    #
    # @option params [required, Types::PushNotificationTemplateRequest] :push_notification_template_request
    #   Specifies the content and settings for a message template that can be
    #   used in messages that are sent through a push notification channel.
    #
    # @option params [required, String] :template_name
    #
    # @return [Types::CreatePushTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePushTemplateResponse#create_template_message_body #create_template_message_body} => Types::CreateTemplateMessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_push_template({
    #     push_notification_template_request: { # required
    #       adm: {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       },
    #       apns: {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         media_url: "__string",
    #         raw_content: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       },
    #       baidu: {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       },
    #       default: {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       },
    #       default_substitutions: "__string",
    #       gcm: {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       },
    #       recommender_id: "__string",
    #       tags: {
    #         "__string" => "__string",
    #       },
    #       template_description: "__string",
    #     },
    #     template_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_template_message_body.arn #=> String
    #   resp.create_template_message_body.message #=> String
    #   resp.create_template_message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreatePushTemplate AWS API Documentation
    #
    # @overload create_push_template(params = {})
    # @param [Hash] params ({})
    def create_push_template(params = {}, options = {})
      req = build_request(:create_push_template, params)
      req.send_request(options)
    end

    # Creates an Amazon Pinpoint configuration for a recommender model.
    #
    # @option params [required, Types::CreateRecommenderConfiguration] :create_recommender_configuration
    #   Specifies Amazon Pinpoint configuration settings for retrieving and
    #   processing recommendation data from a recommender model.
    #
    # @return [Types::CreateRecommenderConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRecommenderConfigurationResponse#recommender_configuration_response #recommender_configuration_response} => Types::RecommenderConfigurationResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recommender_configuration({
    #     create_recommender_configuration: { # required
    #       attributes: {
    #         "__string" => "__string",
    #       },
    #       description: "__string",
    #       name: "__string",
    #       recommendation_provider_id_type: "__string",
    #       recommendation_provider_role_arn: "__string", # required
    #       recommendation_provider_uri: "__string", # required
    #       recommendation_transformer_uri: "__string",
    #       recommendations_display_name: "__string",
    #       recommendations_per_message: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.recommender_configuration_response.attributes #=> Hash
    #   resp.recommender_configuration_response.attributes["__string"] #=> String
    #   resp.recommender_configuration_response.creation_date #=> String
    #   resp.recommender_configuration_response.description #=> String
    #   resp.recommender_configuration_response.id #=> String
    #   resp.recommender_configuration_response.last_modified_date #=> String
    #   resp.recommender_configuration_response.name #=> String
    #   resp.recommender_configuration_response.recommendation_provider_id_type #=> String
    #   resp.recommender_configuration_response.recommendation_provider_role_arn #=> String
    #   resp.recommender_configuration_response.recommendation_provider_uri #=> String
    #   resp.recommender_configuration_response.recommendation_transformer_uri #=> String
    #   resp.recommender_configuration_response.recommendations_display_name #=> String
    #   resp.recommender_configuration_response.recommendations_per_message #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateRecommenderConfiguration AWS API Documentation
    #
    # @overload create_recommender_configuration(params = {})
    # @param [Hash] params ({})
    def create_recommender_configuration(params = {}, options = {})
      req = build_request(:create_recommender_configuration, params)
      req.send_request(options)
    end

    # Creates a new segment for an application or updates the configuration,
    # dimension, and other settings for an existing segment that's
    # associated with an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::WriteSegmentRequest] :write_segment_request
    #   Specifies the configuration, dimension, and other settings for a
    #   segment. A WriteSegmentRequest object can include a Dimensions object
    #   or a SegmentGroups object, but not both.
    #
    # @return [Types::CreateSegmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSegmentResponse#segment_response #segment_response} => Types::SegmentResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_segment({
    #     application_id: "__string", # required
    #     write_segment_request: { # required
    #       dimensions: {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #             recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #           },
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           gps_point: {
    #             coordinates: { # required
    #               latitude: 1.0, # required
    #               longitude: 1.0, # required
    #             },
    #             range_in_kilometers: 1.0,
    #           },
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string", # required
    #             value: 1.0, # required
    #           },
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #         },
    #       },
    #       name: "__string",
    #       segment_groups: {
    #         groups: [
    #           {
    #             dimensions: [
    #               {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                     recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                   },
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0,
    #                   },
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   },
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #               },
    #             ],
    #             source_segments: [
    #               {
    #                 id: "__string", # required
    #                 version: 1,
    #               },
    #             ],
    #             source_type: "ALL", # accepts ALL, ANY, NONE
    #             type: "ALL", # accepts ALL, ANY, NONE
    #           },
    #         ],
    #         include: "ALL", # accepts ALL, ANY, NONE
    #       },
    #       tags: {
    #         "__string" => "__string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_response.application_id #=> String
    #   resp.segment_response.arn #=> String
    #   resp.segment_response.creation_date #=> String
    #   resp.segment_response.dimensions.attributes #=> Hash
    #   resp.segment_response.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.attributes["__string"].values[0] #=> String
    #   resp.segment_response.dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.app_version.values #=> Array
    #   resp.segment_response.dimensions.demographic.app_version.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.channel.values #=> Array
    #   resp.segment_response.dimensions.demographic.channel.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.device_type.values #=> Array
    #   resp.segment_response.dimensions.demographic.device_type.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.make.values #=> Array
    #   resp.segment_response.dimensions.demographic.make.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.model.values #=> Array
    #   resp.segment_response.dimensions.demographic.model.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.platform.values #=> Array
    #   resp.segment_response.dimensions.demographic.platform.values[0] #=> String
    #   resp.segment_response.dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.location.country.values #=> Array
    #   resp.segment_response.dimensions.location.country.values[0] #=> String
    #   resp.segment_response.dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.segment_response.dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.segment_response.dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.segment_response.dimensions.metrics #=> Hash
    #   resp.segment_response.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.segment_response.dimensions.metrics["__string"].value #=> Float
    #   resp.segment_response.dimensions.user_attributes #=> Hash
    #   resp.segment_response.dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.user_attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.id #=> String
    #   resp.segment_response.import_definition.channel_counts #=> Hash
    #   resp.segment_response.import_definition.channel_counts["__string"] #=> Integer
    #   resp.segment_response.import_definition.external_id #=> String
    #   resp.segment_response.import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segment_response.import_definition.role_arn #=> String
    #   resp.segment_response.import_definition.s3_url #=> String
    #   resp.segment_response.import_definition.size #=> Integer
    #   resp.segment_response.last_modified_date #=> String
    #   resp.segment_response.name #=> String
    #   resp.segment_response.segment_groups.groups #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.latitude #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.longitude #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.range_in_kilometers #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics["__string"].comparison_operator #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics["__string"].value #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].source_segments #=> Array
    #   resp.segment_response.segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.segment_response.segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.segment_response.segment_groups.groups[0].source_type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_groups.groups[0].type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_groups.include #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segment_response.tags #=> Hash
    #   resp.segment_response.tags["__string"] #=> String
    #   resp.segment_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateSegment AWS API Documentation
    #
    # @overload create_segment(params = {})
    # @param [Hash] params ({})
    def create_segment(params = {}, options = {})
      req = build_request(:create_segment, params)
      req.send_request(options)
    end

    # Creates a message template for messages that are sent through the SMS
    # channel.
    #
    # @option params [required, Types::SMSTemplateRequest] :sms_template_request
    #   Specifies the content and settings for a message template that can be
    #   used in text messages that are sent through the SMS channel.
    #
    # @option params [required, String] :template_name
    #
    # @return [Types::CreateSmsTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSmsTemplateResponse#create_template_message_body #create_template_message_body} => Types::CreateTemplateMessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sms_template({
    #     sms_template_request: { # required
    #       body: "__string",
    #       default_substitutions: "__string",
    #       recommender_id: "__string",
    #       tags: {
    #         "__string" => "__string",
    #       },
    #       template_description: "__string",
    #     },
    #     template_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_template_message_body.arn #=> String
    #   resp.create_template_message_body.message #=> String
    #   resp.create_template_message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateSmsTemplate AWS API Documentation
    #
    # @overload create_sms_template(params = {})
    # @param [Hash] params ({})
    def create_sms_template(params = {}, options = {})
      req = build_request(:create_sms_template, params)
      req.send_request(options)
    end

    # Creates a message template for messages that are sent through the
    # voice channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [required, Types::VoiceTemplateRequest] :voice_template_request
    #   Specifies the content and settings for a message template that can be
    #   used in messages that are sent through the voice channel.
    #
    # @return [Types::CreateVoiceTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVoiceTemplateResponse#create_template_message_body #create_template_message_body} => Types::CreateTemplateMessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_voice_template({
    #     template_name: "__string", # required
    #     voice_template_request: { # required
    #       body: "__string",
    #       default_substitutions: "__string",
    #       language_code: "__string",
    #       tags: {
    #         "__string" => "__string",
    #       },
    #       template_description: "__string",
    #       voice_id: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.create_template_message_body.arn #=> String
    #   resp.create_template_message_body.message #=> String
    #   resp.create_template_message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateVoiceTemplate AWS API Documentation
    #
    # @overload create_voice_template(params = {})
    # @param [Hash] params ({})
    def create_voice_template(params = {}, options = {})
      req = build_request(:create_voice_template, params)
      req.send_request(options)
    end

    # Disables the ADM channel for an application and deletes any existing
    # settings for the channel.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteAdmChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAdmChannelResponse#adm_channel_response #adm_channel_response} => Types::ADMChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_adm_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.adm_channel_response.application_id #=> String
    #   resp.adm_channel_response.creation_date #=> String
    #   resp.adm_channel_response.enabled #=> Boolean
    #   resp.adm_channel_response.has_credential #=> Boolean
    #   resp.adm_channel_response.id #=> String
    #   resp.adm_channel_response.is_archived #=> Boolean
    #   resp.adm_channel_response.last_modified_by #=> String
    #   resp.adm_channel_response.last_modified_date #=> String
    #   resp.adm_channel_response.platform #=> String
    #   resp.adm_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteAdmChannel AWS API Documentation
    #
    # @overload delete_adm_channel(params = {})
    # @param [Hash] params ({})
    def delete_adm_channel(params = {}, options = {})
      req = build_request(:delete_adm_channel, params)
      req.send_request(options)
    end

    # Disables the APNs channel for an application and deletes any existing
    # settings for the channel.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteApnsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApnsChannelResponse#apns_channel_response #apns_channel_response} => Types::APNSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apns_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_channel_response.application_id #=> String
    #   resp.apns_channel_response.creation_date #=> String
    #   resp.apns_channel_response.default_authentication_method #=> String
    #   resp.apns_channel_response.enabled #=> Boolean
    #   resp.apns_channel_response.has_credential #=> Boolean
    #   resp.apns_channel_response.has_token_key #=> Boolean
    #   resp.apns_channel_response.id #=> String
    #   resp.apns_channel_response.is_archived #=> Boolean
    #   resp.apns_channel_response.last_modified_by #=> String
    #   resp.apns_channel_response.last_modified_date #=> String
    #   resp.apns_channel_response.platform #=> String
    #   resp.apns_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsChannel AWS API Documentation
    #
    # @overload delete_apns_channel(params = {})
    # @param [Hash] params ({})
    def delete_apns_channel(params = {}, options = {})
      req = build_request(:delete_apns_channel, params)
      req.send_request(options)
    end

    # Disables the APNs sandbox channel for an application and deletes any
    # existing settings for the channel.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteApnsSandboxChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApnsSandboxChannelResponse#apns_sandbox_channel_response #apns_sandbox_channel_response} => Types::APNSSandboxChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apns_sandbox_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_sandbox_channel_response.application_id #=> String
    #   resp.apns_sandbox_channel_response.creation_date #=> String
    #   resp.apns_sandbox_channel_response.default_authentication_method #=> String
    #   resp.apns_sandbox_channel_response.enabled #=> Boolean
    #   resp.apns_sandbox_channel_response.has_credential #=> Boolean
    #   resp.apns_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.apns_sandbox_channel_response.id #=> String
    #   resp.apns_sandbox_channel_response.is_archived #=> Boolean
    #   resp.apns_sandbox_channel_response.last_modified_by #=> String
    #   resp.apns_sandbox_channel_response.last_modified_date #=> String
    #   resp.apns_sandbox_channel_response.platform #=> String
    #   resp.apns_sandbox_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsSandboxChannel AWS API Documentation
    #
    # @overload delete_apns_sandbox_channel(params = {})
    # @param [Hash] params ({})
    def delete_apns_sandbox_channel(params = {}, options = {})
      req = build_request(:delete_apns_sandbox_channel, params)
      req.send_request(options)
    end

    # Disables the APNs VoIP channel for an application and deletes any
    # existing settings for the channel.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteApnsVoipChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApnsVoipChannelResponse#apns_voip_channel_response #apns_voip_channel_response} => Types::APNSVoipChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apns_voip_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_voip_channel_response.application_id #=> String
    #   resp.apns_voip_channel_response.creation_date #=> String
    #   resp.apns_voip_channel_response.default_authentication_method #=> String
    #   resp.apns_voip_channel_response.enabled #=> Boolean
    #   resp.apns_voip_channel_response.has_credential #=> Boolean
    #   resp.apns_voip_channel_response.has_token_key #=> Boolean
    #   resp.apns_voip_channel_response.id #=> String
    #   resp.apns_voip_channel_response.is_archived #=> Boolean
    #   resp.apns_voip_channel_response.last_modified_by #=> String
    #   resp.apns_voip_channel_response.last_modified_date #=> String
    #   resp.apns_voip_channel_response.platform #=> String
    #   resp.apns_voip_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsVoipChannel AWS API Documentation
    #
    # @overload delete_apns_voip_channel(params = {})
    # @param [Hash] params ({})
    def delete_apns_voip_channel(params = {}, options = {})
      req = build_request(:delete_apns_voip_channel, params)
      req.send_request(options)
    end

    # Disables the APNs VoIP sandbox channel for an application and deletes
    # any existing settings for the channel.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteApnsVoipSandboxChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApnsVoipSandboxChannelResponse#apns_voip_sandbox_channel_response #apns_voip_sandbox_channel_response} => Types::APNSVoipSandboxChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apns_voip_sandbox_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_voip_sandbox_channel_response.application_id #=> String
    #   resp.apns_voip_sandbox_channel_response.creation_date #=> String
    #   resp.apns_voip_sandbox_channel_response.default_authentication_method #=> String
    #   resp.apns_voip_sandbox_channel_response.enabled #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.has_credential #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.id #=> String
    #   resp.apns_voip_sandbox_channel_response.is_archived #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.last_modified_by #=> String
    #   resp.apns_voip_sandbox_channel_response.last_modified_date #=> String
    #   resp.apns_voip_sandbox_channel_response.platform #=> String
    #   resp.apns_voip_sandbox_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsVoipSandboxChannel AWS API Documentation
    #
    # @overload delete_apns_voip_sandbox_channel(params = {})
    # @param [Hash] params ({})
    def delete_apns_voip_sandbox_channel(params = {}, options = {})
      req = build_request(:delete_apns_voip_sandbox_channel, params)
      req.send_request(options)
    end

    # Deletes an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteAppResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAppResponse#application_response #application_response} => Types::ApplicationResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_response.arn #=> String
    #   resp.application_response.id #=> String
    #   resp.application_response.name #=> String
    #   resp.application_response.tags #=> Hash
    #   resp.application_response.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApp AWS API Documentation
    #
    # @overload delete_app(params = {})
    # @param [Hash] params ({})
    def delete_app(params = {}, options = {})
      req = build_request(:delete_app, params)
      req.send_request(options)
    end

    # Disables the Baidu channel for an application and deletes any existing
    # settings for the channel.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteBaiduChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBaiduChannelResponse#baidu_channel_response #baidu_channel_response} => Types::BaiduChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_baidu_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baidu_channel_response.application_id #=> String
    #   resp.baidu_channel_response.creation_date #=> String
    #   resp.baidu_channel_response.credential #=> String
    #   resp.baidu_channel_response.enabled #=> Boolean
    #   resp.baidu_channel_response.has_credential #=> Boolean
    #   resp.baidu_channel_response.id #=> String
    #   resp.baidu_channel_response.is_archived #=> Boolean
    #   resp.baidu_channel_response.last_modified_by #=> String
    #   resp.baidu_channel_response.last_modified_date #=> String
    #   resp.baidu_channel_response.platform #=> String
    #   resp.baidu_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteBaiduChannel AWS API Documentation
    #
    # @overload delete_baidu_channel(params = {})
    # @param [Hash] params ({})
    def delete_baidu_channel(params = {}, options = {})
      req = build_request(:delete_baidu_channel, params)
      req.send_request(options)
    end

    # Deletes a campaign from an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @return [Types::DeleteCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCampaignResponse#campaign_response #campaign_response} => Types::CampaignResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_response.additional_treatments #=> Array
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaign_response.additional_treatments[0].id #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.push_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.push_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.sms_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.sms_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.voice_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.voice_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.campaign_response.application_id #=> String
    #   resp.campaign_response.arn #=> String
    #   resp.campaign_response.creation_date #=> String
    #   resp.campaign_response.custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaign_response.custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaign_response.custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaign_response.default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.description #=> String
    #   resp.campaign_response.holdout_percent #=> Integer
    #   resp.campaign_response.hook.lambda_function_name #=> String
    #   resp.campaign_response.hook.mode #=> String, one of "DELIVERY", "FILTER"
    #   resp.campaign_response.hook.web_url #=> String
    #   resp.campaign_response.id #=> String
    #   resp.campaign_response.is_paused #=> Boolean
    #   resp.campaign_response.last_modified_date #=> String
    #   resp.campaign_response.limits.daily #=> Integer
    #   resp.campaign_response.limits.maximum_duration #=> Integer
    #   resp.campaign_response.limits.messages_per_second #=> Integer
    #   resp.campaign_response.limits.total #=> Integer
    #   resp.campaign_response.message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.adm_message.body #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.adm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.adm_message.title #=> String
    #   resp.campaign_response.message_configuration.adm_message.url #=> String
    #   resp.campaign_response.message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.apns_message.body #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.apns_message.title #=> String
    #   resp.campaign_response.message_configuration.apns_message.url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.baidu_message.body #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.json_body #=> String
    #   resp.campaign_response.message_configuration.baidu_message.media_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.baidu_message.title #=> String
    #   resp.campaign_response.message_configuration.baidu_message.url #=> String
    #   resp.campaign_response.message_configuration.custom_message.data #=> String
    #   resp.campaign_response.message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.default_message.body #=> String
    #   resp.campaign_response.message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.message_configuration.default_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.default_message.title #=> String
    #   resp.campaign_response.message_configuration.default_message.url #=> String
    #   resp.campaign_response.message_configuration.email_message.body #=> String
    #   resp.campaign_response.message_configuration.email_message.from_address #=> String
    #   resp.campaign_response.message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.message_configuration.email_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.message_configuration.sms_message.body #=> String
    #   resp.campaign_response.message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.name #=> String
    #   resp.campaign_response.schedule.end_time #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaign_response.schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaign_response.schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaign_response.schedule.is_local_time #=> Boolean
    #   resp.campaign_response.schedule.quiet_time.end #=> String
    #   resp.campaign_response.schedule.quiet_time.start #=> String
    #   resp.campaign_response.schedule.start_time #=> String
    #   resp.campaign_response.schedule.timezone #=> String
    #   resp.campaign_response.segment_id #=> String
    #   resp.campaign_response.segment_version #=> Integer
    #   resp.campaign_response.state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.tags #=> Hash
    #   resp.campaign_response.tags["__string"] #=> String
    #   resp.campaign_response.template_configuration.email_template.name #=> String
    #   resp.campaign_response.template_configuration.email_template.version #=> String
    #   resp.campaign_response.template_configuration.push_template.name #=> String
    #   resp.campaign_response.template_configuration.push_template.version #=> String
    #   resp.campaign_response.template_configuration.sms_template.name #=> String
    #   resp.campaign_response.template_configuration.sms_template.version #=> String
    #   resp.campaign_response.template_configuration.voice_template.name #=> String
    #   resp.campaign_response.template_configuration.voice_template.version #=> String
    #   resp.campaign_response.treatment_description #=> String
    #   resp.campaign_response.treatment_name #=> String
    #   resp.campaign_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteCampaign AWS API Documentation
    #
    # @overload delete_campaign(params = {})
    # @param [Hash] params ({})
    def delete_campaign(params = {}, options = {})
      req = build_request(:delete_campaign, params)
      req.send_request(options)
    end

    # Disables the email channel for an application and deletes any existing
    # settings for the channel.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteEmailChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEmailChannelResponse#email_channel_response #email_channel_response} => Types::EmailChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.email_channel_response.application_id #=> String
    #   resp.email_channel_response.configuration_set #=> String
    #   resp.email_channel_response.creation_date #=> String
    #   resp.email_channel_response.enabled #=> Boolean
    #   resp.email_channel_response.from_address #=> String
    #   resp.email_channel_response.has_credential #=> Boolean
    #   resp.email_channel_response.id #=> String
    #   resp.email_channel_response.identity #=> String
    #   resp.email_channel_response.is_archived #=> Boolean
    #   resp.email_channel_response.last_modified_by #=> String
    #   resp.email_channel_response.last_modified_date #=> String
    #   resp.email_channel_response.messages_per_second #=> Integer
    #   resp.email_channel_response.platform #=> String
    #   resp.email_channel_response.role_arn #=> String
    #   resp.email_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEmailChannel AWS API Documentation
    #
    # @overload delete_email_channel(params = {})
    # @param [Hash] params ({})
    def delete_email_channel(params = {}, options = {})
      req = build_request(:delete_email_channel, params)
      req.send_request(options)
    end

    # Deletes a message template for messages that were sent through the
    # email channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @return [Types::DeleteEmailTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEmailTemplateResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_template({
    #     template_name: "__string", # required
    #     version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEmailTemplate AWS API Documentation
    #
    # @overload delete_email_template(params = {})
    # @param [Hash] params ({})
    def delete_email_template(params = {}, options = {})
      req = build_request(:delete_email_template, params)
      req.send_request(options)
    end

    # Deletes an endpoint from an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :endpoint_id
    #
    # @return [Types::DeleteEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEndpointResponse#endpoint_response #endpoint_response} => Types::EndpointResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint({
    #     application_id: "__string", # required
    #     endpoint_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_response.address #=> String
    #   resp.endpoint_response.application_id #=> String
    #   resp.endpoint_response.attributes #=> Hash
    #   resp.endpoint_response.attributes["__string"] #=> Array
    #   resp.endpoint_response.attributes["__string"][0] #=> String
    #   resp.endpoint_response.channel_type #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.endpoint_response.cohort_id #=> String
    #   resp.endpoint_response.creation_date #=> String
    #   resp.endpoint_response.demographic.app_version #=> String
    #   resp.endpoint_response.demographic.locale #=> String
    #   resp.endpoint_response.demographic.make #=> String
    #   resp.endpoint_response.demographic.model #=> String
    #   resp.endpoint_response.demographic.model_version #=> String
    #   resp.endpoint_response.demographic.platform #=> String
    #   resp.endpoint_response.demographic.platform_version #=> String
    #   resp.endpoint_response.demographic.timezone #=> String
    #   resp.endpoint_response.effective_date #=> String
    #   resp.endpoint_response.endpoint_status #=> String
    #   resp.endpoint_response.id #=> String
    #   resp.endpoint_response.location.city #=> String
    #   resp.endpoint_response.location.country #=> String
    #   resp.endpoint_response.location.latitude #=> Float
    #   resp.endpoint_response.location.longitude #=> Float
    #   resp.endpoint_response.location.postal_code #=> String
    #   resp.endpoint_response.location.region #=> String
    #   resp.endpoint_response.metrics #=> Hash
    #   resp.endpoint_response.metrics["__string"] #=> Float
    #   resp.endpoint_response.opt_out #=> String
    #   resp.endpoint_response.request_id #=> String
    #   resp.endpoint_response.user.user_attributes #=> Hash
    #   resp.endpoint_response.user.user_attributes["__string"] #=> Array
    #   resp.endpoint_response.user.user_attributes["__string"][0] #=> String
    #   resp.endpoint_response.user.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEndpoint AWS API Documentation
    #
    # @overload delete_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_endpoint(params = {}, options = {})
      req = build_request(:delete_endpoint, params)
      req.send_request(options)
    end

    # Deletes the event stream for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteEventStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEventStreamResponse#event_stream #event_stream} => Types::EventStream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_stream({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_stream.application_id #=> String
    #   resp.event_stream.destination_stream_arn #=> String
    #   resp.event_stream.external_id #=> String
    #   resp.event_stream.last_modified_date #=> String
    #   resp.event_stream.last_updated_by #=> String
    #   resp.event_stream.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEventStream AWS API Documentation
    #
    # @overload delete_event_stream(params = {})
    # @param [Hash] params ({})
    def delete_event_stream(params = {}, options = {})
      req = build_request(:delete_event_stream, params)
      req.send_request(options)
    end

    # Disables the GCM channel for an application and deletes any existing
    # settings for the channel.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteGcmChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGcmChannelResponse#gcm_channel_response #gcm_channel_response} => Types::GCMChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gcm_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gcm_channel_response.application_id #=> String
    #   resp.gcm_channel_response.creation_date #=> String
    #   resp.gcm_channel_response.credential #=> String
    #   resp.gcm_channel_response.enabled #=> Boolean
    #   resp.gcm_channel_response.has_credential #=> Boolean
    #   resp.gcm_channel_response.id #=> String
    #   resp.gcm_channel_response.is_archived #=> Boolean
    #   resp.gcm_channel_response.last_modified_by #=> String
    #   resp.gcm_channel_response.last_modified_date #=> String
    #   resp.gcm_channel_response.platform #=> String
    #   resp.gcm_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteGcmChannel AWS API Documentation
    #
    # @overload delete_gcm_channel(params = {})
    # @param [Hash] params ({})
    def delete_gcm_channel(params = {}, options = {})
      req = build_request(:delete_gcm_channel, params)
      req.send_request(options)
    end

    # Deletes a journey from an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :journey_id
    #
    # @return [Types::DeleteJourneyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteJourneyResponse#journey_response #journey_response} => Types::JourneyResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_journey({
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.journey_response.activities #=> Hash
    #   resp.journey_response.activities["__string"].custom.delivery_uri #=> String
    #   resp.journey_response.activities["__string"].custom.endpoint_types #=> Array
    #   resp.journey_response.activities["__string"].custom.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.journey_response.activities["__string"].custom.message_config.data #=> String
    #   resp.journey_response.activities["__string"].custom.next_activity #=> String
    #   resp.journey_response.activities["__string"].custom.template_name #=> String
    #   resp.journey_response.activities["__string"].custom.template_version #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.operator #=> String, one of "ALL", "ANY"
    #   resp.journey_response.activities["__string"].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.journey_response.activities["__string"].conditional_split.false_activity #=> String
    #   resp.journey_response.activities["__string"].conditional_split.true_activity #=> String
    #   resp.journey_response.activities["__string"].description #=> String
    #   resp.journey_response.activities["__string"].email.message_config.from_address #=> String
    #   resp.journey_response.activities["__string"].email.next_activity #=> String
    #   resp.journey_response.activities["__string"].email.template_name #=> String
    #   resp.journey_response.activities["__string"].email.template_version #=> String
    #   resp.journey_response.activities["__string"].holdout.next_activity #=> String
    #   resp.journey_response.activities["__string"].holdout.percentage #=> Integer
    #   resp.journey_response.activities["__string"].multi_condition.branches #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.message_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_condition.segment_id #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].next_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.default_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.evaluation_wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].multi_condition.evaluation_wait_time.wait_until #=> String
    #   resp.journey_response.activities["__string"].push.message_config.time_to_live #=> String
    #   resp.journey_response.activities["__string"].push.next_activity #=> String
    #   resp.journey_response.activities["__string"].push.template_name #=> String
    #   resp.journey_response.activities["__string"].push.template_version #=> String
    #   resp.journey_response.activities["__string"].random_split.branches #=> Array
    #   resp.journey_response.activities["__string"].random_split.branches[0].next_activity #=> String
    #   resp.journey_response.activities["__string"].random_split.branches[0].percentage #=> Integer
    #   resp.journey_response.activities["__string"].sms.message_config.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.journey_response.activities["__string"].sms.message_config.sender_id #=> String
    #   resp.journey_response.activities["__string"].sms.next_activity #=> String
    #   resp.journey_response.activities["__string"].sms.template_name #=> String
    #   resp.journey_response.activities["__string"].sms.template_version #=> String
    #   resp.journey_response.activities["__string"].wait.next_activity #=> String
    #   resp.journey_response.activities["__string"].wait.wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].wait.wait_time.wait_until #=> String
    #   resp.journey_response.application_id #=> String
    #   resp.journey_response.creation_date #=> String
    #   resp.journey_response.id #=> String
    #   resp.journey_response.last_modified_date #=> String
    #   resp.journey_response.limits.daily_cap #=> Integer
    #   resp.journey_response.limits.endpoint_reentry_cap #=> Integer
    #   resp.journey_response.limits.messages_per_second #=> Integer
    #   resp.journey_response.local_time #=> Boolean
    #   resp.journey_response.name #=> String
    #   resp.journey_response.quiet_time.end #=> String
    #   resp.journey_response.quiet_time.start #=> String
    #   resp.journey_response.refresh_frequency #=> String
    #   resp.journey_response.schedule.end_time #=> Time
    #   resp.journey_response.schedule.start_time #=> Time
    #   resp.journey_response.schedule.timezone #=> String
    #   resp.journey_response.start_activity #=> String
    #   resp.journey_response.start_condition.description #=> String
    #   resp.journey_response.start_condition.segment_start_condition.segment_id #=> String
    #   resp.journey_response.state #=> String, one of "DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED"
    #   resp.journey_response.tags #=> Hash
    #   resp.journey_response.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteJourney AWS API Documentation
    #
    # @overload delete_journey(params = {})
    # @param [Hash] params ({})
    def delete_journey(params = {}, options = {})
      req = build_request(:delete_journey, params)
      req.send_request(options)
    end

    # Deletes a message template for messages that were sent through a push
    # notification channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @return [Types::DeletePushTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePushTemplateResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_push_template({
    #     template_name: "__string", # required
    #     version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeletePushTemplate AWS API Documentation
    #
    # @overload delete_push_template(params = {})
    # @param [Hash] params ({})
    def delete_push_template(params = {}, options = {})
      req = build_request(:delete_push_template, params)
      req.send_request(options)
    end

    # Deletes an Amazon Pinpoint configuration for a recommender model.
    #
    # @option params [required, String] :recommender_id
    #
    # @return [Types::DeleteRecommenderConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRecommenderConfigurationResponse#recommender_configuration_response #recommender_configuration_response} => Types::RecommenderConfigurationResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recommender_configuration({
    #     recommender_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommender_configuration_response.attributes #=> Hash
    #   resp.recommender_configuration_response.attributes["__string"] #=> String
    #   resp.recommender_configuration_response.creation_date #=> String
    #   resp.recommender_configuration_response.description #=> String
    #   resp.recommender_configuration_response.id #=> String
    #   resp.recommender_configuration_response.last_modified_date #=> String
    #   resp.recommender_configuration_response.name #=> String
    #   resp.recommender_configuration_response.recommendation_provider_id_type #=> String
    #   resp.recommender_configuration_response.recommendation_provider_role_arn #=> String
    #   resp.recommender_configuration_response.recommendation_provider_uri #=> String
    #   resp.recommender_configuration_response.recommendation_transformer_uri #=> String
    #   resp.recommender_configuration_response.recommendations_display_name #=> String
    #   resp.recommender_configuration_response.recommendations_per_message #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteRecommenderConfiguration AWS API Documentation
    #
    # @overload delete_recommender_configuration(params = {})
    # @param [Hash] params ({})
    def delete_recommender_configuration(params = {}, options = {})
      req = build_request(:delete_recommender_configuration, params)
      req.send_request(options)
    end

    # Deletes a segment from an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :segment_id
    #
    # @return [Types::DeleteSegmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSegmentResponse#segment_response #segment_response} => Types::SegmentResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_segment({
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_response.application_id #=> String
    #   resp.segment_response.arn #=> String
    #   resp.segment_response.creation_date #=> String
    #   resp.segment_response.dimensions.attributes #=> Hash
    #   resp.segment_response.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.attributes["__string"].values[0] #=> String
    #   resp.segment_response.dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.app_version.values #=> Array
    #   resp.segment_response.dimensions.demographic.app_version.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.channel.values #=> Array
    #   resp.segment_response.dimensions.demographic.channel.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.device_type.values #=> Array
    #   resp.segment_response.dimensions.demographic.device_type.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.make.values #=> Array
    #   resp.segment_response.dimensions.demographic.make.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.model.values #=> Array
    #   resp.segment_response.dimensions.demographic.model.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.platform.values #=> Array
    #   resp.segment_response.dimensions.demographic.platform.values[0] #=> String
    #   resp.segment_response.dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.location.country.values #=> Array
    #   resp.segment_response.dimensions.location.country.values[0] #=> String
    #   resp.segment_response.dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.segment_response.dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.segment_response.dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.segment_response.dimensions.metrics #=> Hash
    #   resp.segment_response.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.segment_response.dimensions.metrics["__string"].value #=> Float
    #   resp.segment_response.dimensions.user_attributes #=> Hash
    #   resp.segment_response.dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.user_attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.id #=> String
    #   resp.segment_response.import_definition.channel_counts #=> Hash
    #   resp.segment_response.import_definition.channel_counts["__string"] #=> Integer
    #   resp.segment_response.import_definition.external_id #=> String
    #   resp.segment_response.import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segment_response.import_definition.role_arn #=> String
    #   resp.segment_response.import_definition.s3_url #=> String
    #   resp.segment_response.import_definition.size #=> Integer
    #   resp.segment_response.last_modified_date #=> String
    #   resp.segment_response.name #=> String
    #   resp.segment_response.segment_groups.groups #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.latitude #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.longitude #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.range_in_kilometers #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics["__string"].comparison_operator #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics["__string"].value #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].source_segments #=> Array
    #   resp.segment_response.segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.segment_response.segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.segment_response.segment_groups.groups[0].source_type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_groups.groups[0].type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_groups.include #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segment_response.tags #=> Hash
    #   resp.segment_response.tags["__string"] #=> String
    #   resp.segment_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSegment AWS API Documentation
    #
    # @overload delete_segment(params = {})
    # @param [Hash] params ({})
    def delete_segment(params = {}, options = {})
      req = build_request(:delete_segment, params)
      req.send_request(options)
    end

    # Disables the SMS channel for an application and deletes any existing
    # settings for the channel.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteSmsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSmsChannelResponse#sms_channel_response #sms_channel_response} => Types::SMSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sms_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sms_channel_response.application_id #=> String
    #   resp.sms_channel_response.creation_date #=> String
    #   resp.sms_channel_response.enabled #=> Boolean
    #   resp.sms_channel_response.has_credential #=> Boolean
    #   resp.sms_channel_response.id #=> String
    #   resp.sms_channel_response.is_archived #=> Boolean
    #   resp.sms_channel_response.last_modified_by #=> String
    #   resp.sms_channel_response.last_modified_date #=> String
    #   resp.sms_channel_response.platform #=> String
    #   resp.sms_channel_response.promotional_messages_per_second #=> Integer
    #   resp.sms_channel_response.sender_id #=> String
    #   resp.sms_channel_response.short_code #=> String
    #   resp.sms_channel_response.transactional_messages_per_second #=> Integer
    #   resp.sms_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSmsChannel AWS API Documentation
    #
    # @overload delete_sms_channel(params = {})
    # @param [Hash] params ({})
    def delete_sms_channel(params = {}, options = {})
      req = build_request(:delete_sms_channel, params)
      req.send_request(options)
    end

    # Deletes a message template for messages that were sent through the SMS
    # channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @return [Types::DeleteSmsTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSmsTemplateResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sms_template({
    #     template_name: "__string", # required
    #     version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSmsTemplate AWS API Documentation
    #
    # @overload delete_sms_template(params = {})
    # @param [Hash] params ({})
    def delete_sms_template(params = {}, options = {})
      req = build_request(:delete_sms_template, params)
      req.send_request(options)
    end

    # Deletes all the endpoints that are associated with a specific user ID.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :user_id
    #
    # @return [Types::DeleteUserEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserEndpointsResponse#endpoints_response #endpoints_response} => Types::EndpointsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_endpoints({
    #     application_id: "__string", # required
    #     user_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints_response.item #=> Array
    #   resp.endpoints_response.item[0].address #=> String
    #   resp.endpoints_response.item[0].application_id #=> String
    #   resp.endpoints_response.item[0].attributes #=> Hash
    #   resp.endpoints_response.item[0].attributes["__string"] #=> Array
    #   resp.endpoints_response.item[0].attributes["__string"][0] #=> String
    #   resp.endpoints_response.item[0].channel_type #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.endpoints_response.item[0].cohort_id #=> String
    #   resp.endpoints_response.item[0].creation_date #=> String
    #   resp.endpoints_response.item[0].demographic.app_version #=> String
    #   resp.endpoints_response.item[0].demographic.locale #=> String
    #   resp.endpoints_response.item[0].demographic.make #=> String
    #   resp.endpoints_response.item[0].demographic.model #=> String
    #   resp.endpoints_response.item[0].demographic.model_version #=> String
    #   resp.endpoints_response.item[0].demographic.platform #=> String
    #   resp.endpoints_response.item[0].demographic.platform_version #=> String
    #   resp.endpoints_response.item[0].demographic.timezone #=> String
    #   resp.endpoints_response.item[0].effective_date #=> String
    #   resp.endpoints_response.item[0].endpoint_status #=> String
    #   resp.endpoints_response.item[0].id #=> String
    #   resp.endpoints_response.item[0].location.city #=> String
    #   resp.endpoints_response.item[0].location.country #=> String
    #   resp.endpoints_response.item[0].location.latitude #=> Float
    #   resp.endpoints_response.item[0].location.longitude #=> Float
    #   resp.endpoints_response.item[0].location.postal_code #=> String
    #   resp.endpoints_response.item[0].location.region #=> String
    #   resp.endpoints_response.item[0].metrics #=> Hash
    #   resp.endpoints_response.item[0].metrics["__string"] #=> Float
    #   resp.endpoints_response.item[0].opt_out #=> String
    #   resp.endpoints_response.item[0].request_id #=> String
    #   resp.endpoints_response.item[0].user.user_attributes #=> Hash
    #   resp.endpoints_response.item[0].user.user_attributes["__string"] #=> Array
    #   resp.endpoints_response.item[0].user.user_attributes["__string"][0] #=> String
    #   resp.endpoints_response.item[0].user.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteUserEndpoints AWS API Documentation
    #
    # @overload delete_user_endpoints(params = {})
    # @param [Hash] params ({})
    def delete_user_endpoints(params = {}, options = {})
      req = build_request(:delete_user_endpoints, params)
      req.send_request(options)
    end

    # Disables the voice channel for an application and deletes any existing
    # settings for the channel.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteVoiceChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVoiceChannelResponse#voice_channel_response #voice_channel_response} => Types::VoiceChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_channel_response.application_id #=> String
    #   resp.voice_channel_response.creation_date #=> String
    #   resp.voice_channel_response.enabled #=> Boolean
    #   resp.voice_channel_response.has_credential #=> Boolean
    #   resp.voice_channel_response.id #=> String
    #   resp.voice_channel_response.is_archived #=> Boolean
    #   resp.voice_channel_response.last_modified_by #=> String
    #   resp.voice_channel_response.last_modified_date #=> String
    #   resp.voice_channel_response.platform #=> String
    #   resp.voice_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteVoiceChannel AWS API Documentation
    #
    # @overload delete_voice_channel(params = {})
    # @param [Hash] params ({})
    def delete_voice_channel(params = {}, options = {})
      req = build_request(:delete_voice_channel, params)
      req.send_request(options)
    end

    # Deletes a message template for messages that were sent through the
    # voice channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @return [Types::DeleteVoiceTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVoiceTemplateResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_template({
    #     template_name: "__string", # required
    #     version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteVoiceTemplate AWS API Documentation
    #
    # @overload delete_voice_template(params = {})
    # @param [Hash] params ({})
    def delete_voice_template(params = {}, options = {})
      req = build_request(:delete_voice_template, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the ADM channel
    # for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetAdmChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAdmChannelResponse#adm_channel_response #adm_channel_response} => Types::ADMChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_adm_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.adm_channel_response.application_id #=> String
    #   resp.adm_channel_response.creation_date #=> String
    #   resp.adm_channel_response.enabled #=> Boolean
    #   resp.adm_channel_response.has_credential #=> Boolean
    #   resp.adm_channel_response.id #=> String
    #   resp.adm_channel_response.is_archived #=> Boolean
    #   resp.adm_channel_response.last_modified_by #=> String
    #   resp.adm_channel_response.last_modified_date #=> String
    #   resp.adm_channel_response.platform #=> String
    #   resp.adm_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetAdmChannel AWS API Documentation
    #
    # @overload get_adm_channel(params = {})
    # @param [Hash] params ({})
    def get_adm_channel(params = {}, options = {})
      req = build_request(:get_adm_channel, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the APNs
    # channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetApnsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApnsChannelResponse#apns_channel_response #apns_channel_response} => Types::APNSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apns_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_channel_response.application_id #=> String
    #   resp.apns_channel_response.creation_date #=> String
    #   resp.apns_channel_response.default_authentication_method #=> String
    #   resp.apns_channel_response.enabled #=> Boolean
    #   resp.apns_channel_response.has_credential #=> Boolean
    #   resp.apns_channel_response.has_token_key #=> Boolean
    #   resp.apns_channel_response.id #=> String
    #   resp.apns_channel_response.is_archived #=> Boolean
    #   resp.apns_channel_response.last_modified_by #=> String
    #   resp.apns_channel_response.last_modified_date #=> String
    #   resp.apns_channel_response.platform #=> String
    #   resp.apns_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsChannel AWS API Documentation
    #
    # @overload get_apns_channel(params = {})
    # @param [Hash] params ({})
    def get_apns_channel(params = {}, options = {})
      req = build_request(:get_apns_channel, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the APNs
    # sandbox channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetApnsSandboxChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApnsSandboxChannelResponse#apns_sandbox_channel_response #apns_sandbox_channel_response} => Types::APNSSandboxChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apns_sandbox_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_sandbox_channel_response.application_id #=> String
    #   resp.apns_sandbox_channel_response.creation_date #=> String
    #   resp.apns_sandbox_channel_response.default_authentication_method #=> String
    #   resp.apns_sandbox_channel_response.enabled #=> Boolean
    #   resp.apns_sandbox_channel_response.has_credential #=> Boolean
    #   resp.apns_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.apns_sandbox_channel_response.id #=> String
    #   resp.apns_sandbox_channel_response.is_archived #=> Boolean
    #   resp.apns_sandbox_channel_response.last_modified_by #=> String
    #   resp.apns_sandbox_channel_response.last_modified_date #=> String
    #   resp.apns_sandbox_channel_response.platform #=> String
    #   resp.apns_sandbox_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsSandboxChannel AWS API Documentation
    #
    # @overload get_apns_sandbox_channel(params = {})
    # @param [Hash] params ({})
    def get_apns_sandbox_channel(params = {}, options = {})
      req = build_request(:get_apns_sandbox_channel, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the APNs VoIP
    # channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetApnsVoipChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApnsVoipChannelResponse#apns_voip_channel_response #apns_voip_channel_response} => Types::APNSVoipChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apns_voip_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_voip_channel_response.application_id #=> String
    #   resp.apns_voip_channel_response.creation_date #=> String
    #   resp.apns_voip_channel_response.default_authentication_method #=> String
    #   resp.apns_voip_channel_response.enabled #=> Boolean
    #   resp.apns_voip_channel_response.has_credential #=> Boolean
    #   resp.apns_voip_channel_response.has_token_key #=> Boolean
    #   resp.apns_voip_channel_response.id #=> String
    #   resp.apns_voip_channel_response.is_archived #=> Boolean
    #   resp.apns_voip_channel_response.last_modified_by #=> String
    #   resp.apns_voip_channel_response.last_modified_date #=> String
    #   resp.apns_voip_channel_response.platform #=> String
    #   resp.apns_voip_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsVoipChannel AWS API Documentation
    #
    # @overload get_apns_voip_channel(params = {})
    # @param [Hash] params ({})
    def get_apns_voip_channel(params = {}, options = {})
      req = build_request(:get_apns_voip_channel, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the APNs VoIP
    # sandbox channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetApnsVoipSandboxChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApnsVoipSandboxChannelResponse#apns_voip_sandbox_channel_response #apns_voip_sandbox_channel_response} => Types::APNSVoipSandboxChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apns_voip_sandbox_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_voip_sandbox_channel_response.application_id #=> String
    #   resp.apns_voip_sandbox_channel_response.creation_date #=> String
    #   resp.apns_voip_sandbox_channel_response.default_authentication_method #=> String
    #   resp.apns_voip_sandbox_channel_response.enabled #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.has_credential #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.id #=> String
    #   resp.apns_voip_sandbox_channel_response.is_archived #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.last_modified_by #=> String
    #   resp.apns_voip_sandbox_channel_response.last_modified_date #=> String
    #   resp.apns_voip_sandbox_channel_response.platform #=> String
    #   resp.apns_voip_sandbox_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsVoipSandboxChannel AWS API Documentation
    #
    # @overload get_apns_voip_sandbox_channel(params = {})
    # @param [Hash] params ({})
    def get_apns_voip_sandbox_channel(params = {}, options = {})
      req = build_request(:get_apns_voip_sandbox_channel, params)
      req.send_request(options)
    end

    # Retrieves information about an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetAppResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppResponse#application_response #application_response} => Types::ApplicationResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_response.arn #=> String
    #   resp.application_response.id #=> String
    #   resp.application_response.name #=> String
    #   resp.application_response.tags #=> Hash
    #   resp.application_response.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApp AWS API Documentation
    #
    # @overload get_app(params = {})
    # @param [Hash] params ({})
    def get_app(params = {}, options = {})
      req = build_request(:get_app, params)
      req.send_request(options)
    end

    # Retrieves (queries) pre-aggregated data for a standard metric that
    # applies to an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #
    # @option params [required, String] :kpi_name
    #
    # @option params [String] :next_token
    #
    # @option params [String] :page_size
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #
    # @return [Types::GetApplicationDateRangeKpiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationDateRangeKpiResponse#application_date_range_kpi_response #application_date_range_kpi_response} => Types::ApplicationDateRangeKpiResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_date_range_kpi({
    #     application_id: "__string", # required
    #     end_time: Time.now,
    #     kpi_name: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string",
    #     start_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.application_date_range_kpi_response.application_id #=> String
    #   resp.application_date_range_kpi_response.end_time #=> Time
    #   resp.application_date_range_kpi_response.kpi_name #=> String
    #   resp.application_date_range_kpi_response.kpi_result.rows #=> Array
    #   resp.application_date_range_kpi_response.kpi_result.rows[0].grouped_bys #=> Array
    #   resp.application_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].key #=> String
    #   resp.application_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].type #=> String
    #   resp.application_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].value #=> String
    #   resp.application_date_range_kpi_response.kpi_result.rows[0].values #=> Array
    #   resp.application_date_range_kpi_response.kpi_result.rows[0].values[0].key #=> String
    #   resp.application_date_range_kpi_response.kpi_result.rows[0].values[0].type #=> String
    #   resp.application_date_range_kpi_response.kpi_result.rows[0].values[0].value #=> String
    #   resp.application_date_range_kpi_response.next_token #=> String
    #   resp.application_date_range_kpi_response.start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApplicationDateRangeKpi AWS API Documentation
    #
    # @overload get_application_date_range_kpi(params = {})
    # @param [Hash] params ({})
    def get_application_date_range_kpi(params = {}, options = {})
      req = build_request(:get_application_date_range_kpi, params)
      req.send_request(options)
    end

    # Retrieves information about the settings for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetApplicationSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationSettingsResponse#application_settings_resource #application_settings_resource} => Types::ApplicationSettingsResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_settings({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_settings_resource.application_id #=> String
    #   resp.application_settings_resource.campaign_hook.lambda_function_name #=> String
    #   resp.application_settings_resource.campaign_hook.mode #=> String, one of "DELIVERY", "FILTER"
    #   resp.application_settings_resource.campaign_hook.web_url #=> String
    #   resp.application_settings_resource.last_modified_date #=> String
    #   resp.application_settings_resource.limits.daily #=> Integer
    #   resp.application_settings_resource.limits.maximum_duration #=> Integer
    #   resp.application_settings_resource.limits.messages_per_second #=> Integer
    #   resp.application_settings_resource.limits.total #=> Integer
    #   resp.application_settings_resource.quiet_time.end #=> String
    #   resp.application_settings_resource.quiet_time.start #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApplicationSettings AWS API Documentation
    #
    # @overload get_application_settings(params = {})
    # @param [Hash] params ({})
    def get_application_settings(params = {}, options = {})
      req = build_request(:get_application_settings, params)
      req.send_request(options)
    end

    # Retrieves information about all the applications that are associated
    # with your Amazon Pinpoint account.
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetAppsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppsResponse#applications_response #applications_response} => Types::ApplicationsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apps({
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.applications_response.item #=> Array
    #   resp.applications_response.item[0].arn #=> String
    #   resp.applications_response.item[0].id #=> String
    #   resp.applications_response.item[0].name #=> String
    #   resp.applications_response.item[0].tags #=> Hash
    #   resp.applications_response.item[0].tags["__string"] #=> String
    #   resp.applications_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApps AWS API Documentation
    #
    # @overload get_apps(params = {})
    # @param [Hash] params ({})
    def get_apps(params = {}, options = {})
      req = build_request(:get_apps, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the Baidu
    # channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetBaiduChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBaiduChannelResponse#baidu_channel_response #baidu_channel_response} => Types::BaiduChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_baidu_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baidu_channel_response.application_id #=> String
    #   resp.baidu_channel_response.creation_date #=> String
    #   resp.baidu_channel_response.credential #=> String
    #   resp.baidu_channel_response.enabled #=> Boolean
    #   resp.baidu_channel_response.has_credential #=> Boolean
    #   resp.baidu_channel_response.id #=> String
    #   resp.baidu_channel_response.is_archived #=> Boolean
    #   resp.baidu_channel_response.last_modified_by #=> String
    #   resp.baidu_channel_response.last_modified_date #=> String
    #   resp.baidu_channel_response.platform #=> String
    #   resp.baidu_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetBaiduChannel AWS API Documentation
    #
    # @overload get_baidu_channel(params = {})
    # @param [Hash] params ({})
    def get_baidu_channel(params = {}, options = {})
      req = build_request(:get_baidu_channel, params)
      req.send_request(options)
    end

    # Retrieves information about the status, configuration, and other
    # settings for a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @return [Types::GetCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignResponse#campaign_response #campaign_response} => Types::CampaignResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_response.additional_treatments #=> Array
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaign_response.additional_treatments[0].id #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.push_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.push_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.sms_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.sms_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.voice_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.voice_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.campaign_response.application_id #=> String
    #   resp.campaign_response.arn #=> String
    #   resp.campaign_response.creation_date #=> String
    #   resp.campaign_response.custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaign_response.custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaign_response.custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaign_response.default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.description #=> String
    #   resp.campaign_response.holdout_percent #=> Integer
    #   resp.campaign_response.hook.lambda_function_name #=> String
    #   resp.campaign_response.hook.mode #=> String, one of "DELIVERY", "FILTER"
    #   resp.campaign_response.hook.web_url #=> String
    #   resp.campaign_response.id #=> String
    #   resp.campaign_response.is_paused #=> Boolean
    #   resp.campaign_response.last_modified_date #=> String
    #   resp.campaign_response.limits.daily #=> Integer
    #   resp.campaign_response.limits.maximum_duration #=> Integer
    #   resp.campaign_response.limits.messages_per_second #=> Integer
    #   resp.campaign_response.limits.total #=> Integer
    #   resp.campaign_response.message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.adm_message.body #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.adm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.adm_message.title #=> String
    #   resp.campaign_response.message_configuration.adm_message.url #=> String
    #   resp.campaign_response.message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.apns_message.body #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.apns_message.title #=> String
    #   resp.campaign_response.message_configuration.apns_message.url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.baidu_message.body #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.json_body #=> String
    #   resp.campaign_response.message_configuration.baidu_message.media_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.baidu_message.title #=> String
    #   resp.campaign_response.message_configuration.baidu_message.url #=> String
    #   resp.campaign_response.message_configuration.custom_message.data #=> String
    #   resp.campaign_response.message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.default_message.body #=> String
    #   resp.campaign_response.message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.message_configuration.default_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.default_message.title #=> String
    #   resp.campaign_response.message_configuration.default_message.url #=> String
    #   resp.campaign_response.message_configuration.email_message.body #=> String
    #   resp.campaign_response.message_configuration.email_message.from_address #=> String
    #   resp.campaign_response.message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.message_configuration.email_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.message_configuration.sms_message.body #=> String
    #   resp.campaign_response.message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.name #=> String
    #   resp.campaign_response.schedule.end_time #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaign_response.schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaign_response.schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaign_response.schedule.is_local_time #=> Boolean
    #   resp.campaign_response.schedule.quiet_time.end #=> String
    #   resp.campaign_response.schedule.quiet_time.start #=> String
    #   resp.campaign_response.schedule.start_time #=> String
    #   resp.campaign_response.schedule.timezone #=> String
    #   resp.campaign_response.segment_id #=> String
    #   resp.campaign_response.segment_version #=> Integer
    #   resp.campaign_response.state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.tags #=> Hash
    #   resp.campaign_response.tags["__string"] #=> String
    #   resp.campaign_response.template_configuration.email_template.name #=> String
    #   resp.campaign_response.template_configuration.email_template.version #=> String
    #   resp.campaign_response.template_configuration.push_template.name #=> String
    #   resp.campaign_response.template_configuration.push_template.version #=> String
    #   resp.campaign_response.template_configuration.sms_template.name #=> String
    #   resp.campaign_response.template_configuration.sms_template.version #=> String
    #   resp.campaign_response.template_configuration.voice_template.name #=> String
    #   resp.campaign_response.template_configuration.voice_template.version #=> String
    #   resp.campaign_response.treatment_description #=> String
    #   resp.campaign_response.treatment_name #=> String
    #   resp.campaign_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaign AWS API Documentation
    #
    # @overload get_campaign(params = {})
    # @param [Hash] params ({})
    def get_campaign(params = {}, options = {})
      req = build_request(:get_campaign, params)
      req.send_request(options)
    end

    # Retrieves information about all the activities for a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetCampaignActivitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignActivitiesResponse#activities_response #activities_response} => Types::ActivitiesResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_activities({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.activities_response.item #=> Array
    #   resp.activities_response.item[0].application_id #=> String
    #   resp.activities_response.item[0].campaign_id #=> String
    #   resp.activities_response.item[0].end #=> String
    #   resp.activities_response.item[0].id #=> String
    #   resp.activities_response.item[0].result #=> String
    #   resp.activities_response.item[0].scheduled_start #=> String
    #   resp.activities_response.item[0].start #=> String
    #   resp.activities_response.item[0].state #=> String
    #   resp.activities_response.item[0].successful_endpoint_count #=> Integer
    #   resp.activities_response.item[0].timezones_completed_count #=> Integer
    #   resp.activities_response.item[0].timezones_total_count #=> Integer
    #   resp.activities_response.item[0].total_endpoint_count #=> Integer
    #   resp.activities_response.item[0].treatment_id #=> String
    #   resp.activities_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignActivities AWS API Documentation
    #
    # @overload get_campaign_activities(params = {})
    # @param [Hash] params ({})
    def get_campaign_activities(params = {}, options = {})
      req = build_request(:get_campaign_activities, params)
      req.send_request(options)
    end

    # Retrieves (queries) pre-aggregated data for a standard metric that
    # applies to a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #
    # @option params [required, String] :kpi_name
    #
    # @option params [String] :next_token
    #
    # @option params [String] :page_size
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #
    # @return [Types::GetCampaignDateRangeKpiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignDateRangeKpiResponse#campaign_date_range_kpi_response #campaign_date_range_kpi_response} => Types::CampaignDateRangeKpiResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_date_range_kpi({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     end_time: Time.now,
    #     kpi_name: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string",
    #     start_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_date_range_kpi_response.application_id #=> String
    #   resp.campaign_date_range_kpi_response.campaign_id #=> String
    #   resp.campaign_date_range_kpi_response.end_time #=> Time
    #   resp.campaign_date_range_kpi_response.kpi_name #=> String
    #   resp.campaign_date_range_kpi_response.kpi_result.rows #=> Array
    #   resp.campaign_date_range_kpi_response.kpi_result.rows[0].grouped_bys #=> Array
    #   resp.campaign_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].key #=> String
    #   resp.campaign_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].type #=> String
    #   resp.campaign_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].value #=> String
    #   resp.campaign_date_range_kpi_response.kpi_result.rows[0].values #=> Array
    #   resp.campaign_date_range_kpi_response.kpi_result.rows[0].values[0].key #=> String
    #   resp.campaign_date_range_kpi_response.kpi_result.rows[0].values[0].type #=> String
    #   resp.campaign_date_range_kpi_response.kpi_result.rows[0].values[0].value #=> String
    #   resp.campaign_date_range_kpi_response.next_token #=> String
    #   resp.campaign_date_range_kpi_response.start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignDateRangeKpi AWS API Documentation
    #
    # @overload get_campaign_date_range_kpi(params = {})
    # @param [Hash] params ({})
    def get_campaign_date_range_kpi(params = {}, options = {})
      req = build_request(:get_campaign_date_range_kpi, params)
      req.send_request(options)
    end

    # Retrieves information about the status, configuration, and other
    # settings for a specific version of a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @option params [required, String] :version
    #
    # @return [Types::GetCampaignVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignVersionResponse#campaign_response #campaign_response} => Types::CampaignResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_version({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     version: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_response.additional_treatments #=> Array
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaign_response.additional_treatments[0].id #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.push_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.push_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.sms_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.sms_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.voice_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.voice_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.campaign_response.application_id #=> String
    #   resp.campaign_response.arn #=> String
    #   resp.campaign_response.creation_date #=> String
    #   resp.campaign_response.custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaign_response.custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaign_response.custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaign_response.default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.description #=> String
    #   resp.campaign_response.holdout_percent #=> Integer
    #   resp.campaign_response.hook.lambda_function_name #=> String
    #   resp.campaign_response.hook.mode #=> String, one of "DELIVERY", "FILTER"
    #   resp.campaign_response.hook.web_url #=> String
    #   resp.campaign_response.id #=> String
    #   resp.campaign_response.is_paused #=> Boolean
    #   resp.campaign_response.last_modified_date #=> String
    #   resp.campaign_response.limits.daily #=> Integer
    #   resp.campaign_response.limits.maximum_duration #=> Integer
    #   resp.campaign_response.limits.messages_per_second #=> Integer
    #   resp.campaign_response.limits.total #=> Integer
    #   resp.campaign_response.message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.adm_message.body #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.adm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.adm_message.title #=> String
    #   resp.campaign_response.message_configuration.adm_message.url #=> String
    #   resp.campaign_response.message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.apns_message.body #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.apns_message.title #=> String
    #   resp.campaign_response.message_configuration.apns_message.url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.baidu_message.body #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.json_body #=> String
    #   resp.campaign_response.message_configuration.baidu_message.media_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.baidu_message.title #=> String
    #   resp.campaign_response.message_configuration.baidu_message.url #=> String
    #   resp.campaign_response.message_configuration.custom_message.data #=> String
    #   resp.campaign_response.message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.default_message.body #=> String
    #   resp.campaign_response.message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.message_configuration.default_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.default_message.title #=> String
    #   resp.campaign_response.message_configuration.default_message.url #=> String
    #   resp.campaign_response.message_configuration.email_message.body #=> String
    #   resp.campaign_response.message_configuration.email_message.from_address #=> String
    #   resp.campaign_response.message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.message_configuration.email_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.message_configuration.sms_message.body #=> String
    #   resp.campaign_response.message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.name #=> String
    #   resp.campaign_response.schedule.end_time #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaign_response.schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaign_response.schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaign_response.schedule.is_local_time #=> Boolean
    #   resp.campaign_response.schedule.quiet_time.end #=> String
    #   resp.campaign_response.schedule.quiet_time.start #=> String
    #   resp.campaign_response.schedule.start_time #=> String
    #   resp.campaign_response.schedule.timezone #=> String
    #   resp.campaign_response.segment_id #=> String
    #   resp.campaign_response.segment_version #=> Integer
    #   resp.campaign_response.state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.tags #=> Hash
    #   resp.campaign_response.tags["__string"] #=> String
    #   resp.campaign_response.template_configuration.email_template.name #=> String
    #   resp.campaign_response.template_configuration.email_template.version #=> String
    #   resp.campaign_response.template_configuration.push_template.name #=> String
    #   resp.campaign_response.template_configuration.push_template.version #=> String
    #   resp.campaign_response.template_configuration.sms_template.name #=> String
    #   resp.campaign_response.template_configuration.sms_template.version #=> String
    #   resp.campaign_response.template_configuration.voice_template.name #=> String
    #   resp.campaign_response.template_configuration.voice_template.version #=> String
    #   resp.campaign_response.treatment_description #=> String
    #   resp.campaign_response.treatment_name #=> String
    #   resp.campaign_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignVersion AWS API Documentation
    #
    # @overload get_campaign_version(params = {})
    # @param [Hash] params ({})
    def get_campaign_version(params = {}, options = {})
      req = build_request(:get_campaign_version, params)
      req.send_request(options)
    end

    # Retrieves information about the status, configuration, and other
    # settings for all versions of a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetCampaignVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignVersionsResponse#campaigns_response #campaigns_response} => Types::CampaignsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_versions({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.campaigns_response.item #=> Array
    #   resp.campaigns_response.item[0].additional_treatments #=> Array
    #   resp.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaigns_response.item[0].additional_treatments[0].id #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.raw_content #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.raw_content #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.raw_content #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.raw_content #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.end_time #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.start_time #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.timezone #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].size_percent #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.push_template.name #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.push_template.version #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.sms_template.name #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.sms_template.version #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.voice_template.name #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.voice_template.version #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].treatment_description #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].treatment_name #=> String
    #   resp.campaigns_response.item[0].application_id #=> String
    #   resp.campaigns_response.item[0].arn #=> String
    #   resp.campaigns_response.item[0].creation_date #=> String
    #   resp.campaigns_response.item[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaigns_response.item[0].custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaigns_response.item[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaigns_response.item[0].default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaigns_response.item[0].description #=> String
    #   resp.campaigns_response.item[0].holdout_percent #=> Integer
    #   resp.campaigns_response.item[0].hook.lambda_function_name #=> String
    #   resp.campaigns_response.item[0].hook.mode #=> String, one of "DELIVERY", "FILTER"
    #   resp.campaigns_response.item[0].hook.web_url #=> String
    #   resp.campaigns_response.item[0].id #=> String
    #   resp.campaigns_response.item[0].is_paused #=> Boolean
    #   resp.campaigns_response.item[0].last_modified_date #=> String
    #   resp.campaigns_response.item[0].limits.daily #=> Integer
    #   resp.campaigns_response.item[0].limits.maximum_duration #=> Integer
    #   resp.campaigns_response.item[0].limits.messages_per_second #=> Integer
    #   resp.campaigns_response.item[0].limits.total #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.adm_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.raw_content #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.adm_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.apns_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.raw_content #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.apns_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.raw_content #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.custom_message.data #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.default_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.raw_content #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.default_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.from_address #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.html_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.raw_content #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.sms_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaigns_response.item[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaigns_response.item[0].name #=> String
    #   resp.campaigns_response.item[0].schedule.end_time #=> String
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaigns_response.item[0].schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaigns_response.item[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaigns_response.item[0].schedule.is_local_time #=> Boolean
    #   resp.campaigns_response.item[0].schedule.quiet_time.end #=> String
    #   resp.campaigns_response.item[0].schedule.quiet_time.start #=> String
    #   resp.campaigns_response.item[0].schedule.start_time #=> String
    #   resp.campaigns_response.item[0].schedule.timezone #=> String
    #   resp.campaigns_response.item[0].segment_id #=> String
    #   resp.campaigns_response.item[0].segment_version #=> Integer
    #   resp.campaigns_response.item[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaigns_response.item[0].tags #=> Hash
    #   resp.campaigns_response.item[0].tags["__string"] #=> String
    #   resp.campaigns_response.item[0].template_configuration.email_template.name #=> String
    #   resp.campaigns_response.item[0].template_configuration.email_template.version #=> String
    #   resp.campaigns_response.item[0].template_configuration.push_template.name #=> String
    #   resp.campaigns_response.item[0].template_configuration.push_template.version #=> String
    #   resp.campaigns_response.item[0].template_configuration.sms_template.name #=> String
    #   resp.campaigns_response.item[0].template_configuration.sms_template.version #=> String
    #   resp.campaigns_response.item[0].template_configuration.voice_template.name #=> String
    #   resp.campaigns_response.item[0].template_configuration.voice_template.version #=> String
    #   resp.campaigns_response.item[0].treatment_description #=> String
    #   resp.campaigns_response.item[0].treatment_name #=> String
    #   resp.campaigns_response.item[0].version #=> Integer
    #   resp.campaigns_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignVersions AWS API Documentation
    #
    # @overload get_campaign_versions(params = {})
    # @param [Hash] params ({})
    def get_campaign_versions(params = {}, options = {})
      req = build_request(:get_campaign_versions, params)
      req.send_request(options)
    end

    # Retrieves information about the status, configuration, and other
    # settings for all the campaigns that are associated with an
    # application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetCampaignsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignsResponse#campaigns_response #campaigns_response} => Types::CampaignsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaigns({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.campaigns_response.item #=> Array
    #   resp.campaigns_response.item[0].additional_treatments #=> Array
    #   resp.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaigns_response.item[0].additional_treatments[0].id #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.raw_content #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.raw_content #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.raw_content #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.raw_content #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.end_time #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.start_time #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.timezone #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].size_percent #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.push_template.name #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.push_template.version #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.sms_template.name #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.sms_template.version #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.voice_template.name #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].template_configuration.voice_template.version #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].treatment_description #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].treatment_name #=> String
    #   resp.campaigns_response.item[0].application_id #=> String
    #   resp.campaigns_response.item[0].arn #=> String
    #   resp.campaigns_response.item[0].creation_date #=> String
    #   resp.campaigns_response.item[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaigns_response.item[0].custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaigns_response.item[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaigns_response.item[0].default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaigns_response.item[0].description #=> String
    #   resp.campaigns_response.item[0].holdout_percent #=> Integer
    #   resp.campaigns_response.item[0].hook.lambda_function_name #=> String
    #   resp.campaigns_response.item[0].hook.mode #=> String, one of "DELIVERY", "FILTER"
    #   resp.campaigns_response.item[0].hook.web_url #=> String
    #   resp.campaigns_response.item[0].id #=> String
    #   resp.campaigns_response.item[0].is_paused #=> Boolean
    #   resp.campaigns_response.item[0].last_modified_date #=> String
    #   resp.campaigns_response.item[0].limits.daily #=> Integer
    #   resp.campaigns_response.item[0].limits.maximum_duration #=> Integer
    #   resp.campaigns_response.item[0].limits.messages_per_second #=> Integer
    #   resp.campaigns_response.item[0].limits.total #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.adm_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.raw_content #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.adm_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.adm_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.apns_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.raw_content #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.apns_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.raw_content #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.baidu_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.custom_message.data #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.default_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.raw_content #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.default_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.from_address #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.html_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.raw_content #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.sms_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaigns_response.item[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaigns_response.item[0].name #=> String
    #   resp.campaigns_response.item[0].schedule.end_time #=> String
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaigns_response.item[0].schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaigns_response.item[0].schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaigns_response.item[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaigns_response.item[0].schedule.is_local_time #=> Boolean
    #   resp.campaigns_response.item[0].schedule.quiet_time.end #=> String
    #   resp.campaigns_response.item[0].schedule.quiet_time.start #=> String
    #   resp.campaigns_response.item[0].schedule.start_time #=> String
    #   resp.campaigns_response.item[0].schedule.timezone #=> String
    #   resp.campaigns_response.item[0].segment_id #=> String
    #   resp.campaigns_response.item[0].segment_version #=> Integer
    #   resp.campaigns_response.item[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaigns_response.item[0].tags #=> Hash
    #   resp.campaigns_response.item[0].tags["__string"] #=> String
    #   resp.campaigns_response.item[0].template_configuration.email_template.name #=> String
    #   resp.campaigns_response.item[0].template_configuration.email_template.version #=> String
    #   resp.campaigns_response.item[0].template_configuration.push_template.name #=> String
    #   resp.campaigns_response.item[0].template_configuration.push_template.version #=> String
    #   resp.campaigns_response.item[0].template_configuration.sms_template.name #=> String
    #   resp.campaigns_response.item[0].template_configuration.sms_template.version #=> String
    #   resp.campaigns_response.item[0].template_configuration.voice_template.name #=> String
    #   resp.campaigns_response.item[0].template_configuration.voice_template.version #=> String
    #   resp.campaigns_response.item[0].treatment_description #=> String
    #   resp.campaigns_response.item[0].treatment_name #=> String
    #   resp.campaigns_response.item[0].version #=> Integer
    #   resp.campaigns_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaigns AWS API Documentation
    #
    # @overload get_campaigns(params = {})
    # @param [Hash] params ({})
    def get_campaigns(params = {}, options = {})
      req = build_request(:get_campaigns, params)
      req.send_request(options)
    end

    # Retrieves information about the history and status of each channel for
    # an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelsResponse#channels_response #channels_response} => Types::ChannelsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channels({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channels_response.channels #=> Hash
    #   resp.channels_response.channels["__string"].application_id #=> String
    #   resp.channels_response.channels["__string"].creation_date #=> String
    #   resp.channels_response.channels["__string"].enabled #=> Boolean
    #   resp.channels_response.channels["__string"].has_credential #=> Boolean
    #   resp.channels_response.channels["__string"].id #=> String
    #   resp.channels_response.channels["__string"].is_archived #=> Boolean
    #   resp.channels_response.channels["__string"].last_modified_by #=> String
    #   resp.channels_response.channels["__string"].last_modified_date #=> String
    #   resp.channels_response.channels["__string"].version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetChannels AWS API Documentation
    #
    # @overload get_channels(params = {})
    # @param [Hash] params ({})
    def get_channels(params = {}, options = {})
      req = build_request(:get_channels, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the email
    # channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetEmailChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEmailChannelResponse#email_channel_response #email_channel_response} => Types::EmailChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.email_channel_response.application_id #=> String
    #   resp.email_channel_response.configuration_set #=> String
    #   resp.email_channel_response.creation_date #=> String
    #   resp.email_channel_response.enabled #=> Boolean
    #   resp.email_channel_response.from_address #=> String
    #   resp.email_channel_response.has_credential #=> Boolean
    #   resp.email_channel_response.id #=> String
    #   resp.email_channel_response.identity #=> String
    #   resp.email_channel_response.is_archived #=> Boolean
    #   resp.email_channel_response.last_modified_by #=> String
    #   resp.email_channel_response.last_modified_date #=> String
    #   resp.email_channel_response.messages_per_second #=> Integer
    #   resp.email_channel_response.platform #=> String
    #   resp.email_channel_response.role_arn #=> String
    #   resp.email_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEmailChannel AWS API Documentation
    #
    # @overload get_email_channel(params = {})
    # @param [Hash] params ({})
    def get_email_channel(params = {}, options = {})
      req = build_request(:get_email_channel, params)
      req.send_request(options)
    end

    # Retrieves the content and settings of a message template for messages
    # that are sent through the email channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @return [Types::GetEmailTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEmailTemplateResponse#email_template_response #email_template_response} => Types::EmailTemplateResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_template({
    #     template_name: "__string", # required
    #     version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.email_template_response.arn #=> String
    #   resp.email_template_response.creation_date #=> String
    #   resp.email_template_response.default_substitutions #=> String
    #   resp.email_template_response.html_part #=> String
    #   resp.email_template_response.last_modified_date #=> String
    #   resp.email_template_response.recommender_id #=> String
    #   resp.email_template_response.subject #=> String
    #   resp.email_template_response.tags #=> Hash
    #   resp.email_template_response.tags["__string"] #=> String
    #   resp.email_template_response.template_description #=> String
    #   resp.email_template_response.template_name #=> String
    #   resp.email_template_response.template_type #=> String, one of "EMAIL", "SMS", "VOICE", "PUSH"
    #   resp.email_template_response.text_part #=> String
    #   resp.email_template_response.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEmailTemplate AWS API Documentation
    #
    # @overload get_email_template(params = {})
    # @param [Hash] params ({})
    def get_email_template(params = {}, options = {})
      req = build_request(:get_email_template, params)
      req.send_request(options)
    end

    # Retrieves information about the settings and attributes of a specific
    # endpoint for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :endpoint_id
    #
    # @return [Types::GetEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEndpointResponse#endpoint_response #endpoint_response} => Types::EndpointResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_endpoint({
    #     application_id: "__string", # required
    #     endpoint_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_response.address #=> String
    #   resp.endpoint_response.application_id #=> String
    #   resp.endpoint_response.attributes #=> Hash
    #   resp.endpoint_response.attributes["__string"] #=> Array
    #   resp.endpoint_response.attributes["__string"][0] #=> String
    #   resp.endpoint_response.channel_type #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.endpoint_response.cohort_id #=> String
    #   resp.endpoint_response.creation_date #=> String
    #   resp.endpoint_response.demographic.app_version #=> String
    #   resp.endpoint_response.demographic.locale #=> String
    #   resp.endpoint_response.demographic.make #=> String
    #   resp.endpoint_response.demographic.model #=> String
    #   resp.endpoint_response.demographic.model_version #=> String
    #   resp.endpoint_response.demographic.platform #=> String
    #   resp.endpoint_response.demographic.platform_version #=> String
    #   resp.endpoint_response.demographic.timezone #=> String
    #   resp.endpoint_response.effective_date #=> String
    #   resp.endpoint_response.endpoint_status #=> String
    #   resp.endpoint_response.id #=> String
    #   resp.endpoint_response.location.city #=> String
    #   resp.endpoint_response.location.country #=> String
    #   resp.endpoint_response.location.latitude #=> Float
    #   resp.endpoint_response.location.longitude #=> Float
    #   resp.endpoint_response.location.postal_code #=> String
    #   resp.endpoint_response.location.region #=> String
    #   resp.endpoint_response.metrics #=> Hash
    #   resp.endpoint_response.metrics["__string"] #=> Float
    #   resp.endpoint_response.opt_out #=> String
    #   resp.endpoint_response.request_id #=> String
    #   resp.endpoint_response.user.user_attributes #=> Hash
    #   resp.endpoint_response.user.user_attributes["__string"] #=> Array
    #   resp.endpoint_response.user.user_attributes["__string"][0] #=> String
    #   resp.endpoint_response.user.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEndpoint AWS API Documentation
    #
    # @overload get_endpoint(params = {})
    # @param [Hash] params ({})
    def get_endpoint(params = {}, options = {})
      req = build_request(:get_endpoint, params)
      req.send_request(options)
    end

    # Retrieves information about the event stream settings for an
    # application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetEventStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventStreamResponse#event_stream #event_stream} => Types::EventStream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_stream({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_stream.application_id #=> String
    #   resp.event_stream.destination_stream_arn #=> String
    #   resp.event_stream.external_id #=> String
    #   resp.event_stream.last_modified_date #=> String
    #   resp.event_stream.last_updated_by #=> String
    #   resp.event_stream.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEventStream AWS API Documentation
    #
    # @overload get_event_stream(params = {})
    # @param [Hash] params ({})
    def get_event_stream(params = {}, options = {})
      req = build_request(:get_event_stream, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of a specific
    # export job for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :job_id
    #
    # @return [Types::GetExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExportJobResponse#export_job_response #export_job_response} => Types::ExportJobResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_export_job({
    #     application_id: "__string", # required
    #     job_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.export_job_response.application_id #=> String
    #   resp.export_job_response.completed_pieces #=> Integer
    #   resp.export_job_response.completion_date #=> String
    #   resp.export_job_response.creation_date #=> String
    #   resp.export_job_response.definition.role_arn #=> String
    #   resp.export_job_response.definition.s3_url_prefix #=> String
    #   resp.export_job_response.definition.segment_id #=> String
    #   resp.export_job_response.definition.segment_version #=> Integer
    #   resp.export_job_response.failed_pieces #=> Integer
    #   resp.export_job_response.failures #=> Array
    #   resp.export_job_response.failures[0] #=> String
    #   resp.export_job_response.id #=> String
    #   resp.export_job_response.job_status #=> String, one of "CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.export_job_response.total_failures #=> Integer
    #   resp.export_job_response.total_pieces #=> Integer
    #   resp.export_job_response.total_processed #=> Integer
    #   resp.export_job_response.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetExportJob AWS API Documentation
    #
    # @overload get_export_job(params = {})
    # @param [Hash] params ({})
    def get_export_job(params = {}, options = {})
      req = build_request(:get_export_job, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of all the export
    # jobs for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExportJobsResponse#export_jobs_response #export_jobs_response} => Types::ExportJobsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_export_jobs({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.export_jobs_response.item #=> Array
    #   resp.export_jobs_response.item[0].application_id #=> String
    #   resp.export_jobs_response.item[0].completed_pieces #=> Integer
    #   resp.export_jobs_response.item[0].completion_date #=> String
    #   resp.export_jobs_response.item[0].creation_date #=> String
    #   resp.export_jobs_response.item[0].definition.role_arn #=> String
    #   resp.export_jobs_response.item[0].definition.s3_url_prefix #=> String
    #   resp.export_jobs_response.item[0].definition.segment_id #=> String
    #   resp.export_jobs_response.item[0].definition.segment_version #=> Integer
    #   resp.export_jobs_response.item[0].failed_pieces #=> Integer
    #   resp.export_jobs_response.item[0].failures #=> Array
    #   resp.export_jobs_response.item[0].failures[0] #=> String
    #   resp.export_jobs_response.item[0].id #=> String
    #   resp.export_jobs_response.item[0].job_status #=> String, one of "CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.export_jobs_response.item[0].total_failures #=> Integer
    #   resp.export_jobs_response.item[0].total_pieces #=> Integer
    #   resp.export_jobs_response.item[0].total_processed #=> Integer
    #   resp.export_jobs_response.item[0].type #=> String
    #   resp.export_jobs_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetExportJobs AWS API Documentation
    #
    # @overload get_export_jobs(params = {})
    # @param [Hash] params ({})
    def get_export_jobs(params = {}, options = {})
      req = build_request(:get_export_jobs, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the GCM channel
    # for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetGcmChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGcmChannelResponse#gcm_channel_response #gcm_channel_response} => Types::GCMChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gcm_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gcm_channel_response.application_id #=> String
    #   resp.gcm_channel_response.creation_date #=> String
    #   resp.gcm_channel_response.credential #=> String
    #   resp.gcm_channel_response.enabled #=> Boolean
    #   resp.gcm_channel_response.has_credential #=> Boolean
    #   resp.gcm_channel_response.id #=> String
    #   resp.gcm_channel_response.is_archived #=> Boolean
    #   resp.gcm_channel_response.last_modified_by #=> String
    #   resp.gcm_channel_response.last_modified_date #=> String
    #   resp.gcm_channel_response.platform #=> String
    #   resp.gcm_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetGcmChannel AWS API Documentation
    #
    # @overload get_gcm_channel(params = {})
    # @param [Hash] params ({})
    def get_gcm_channel(params = {}, options = {})
      req = build_request(:get_gcm_channel, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of a specific
    # import job for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :job_id
    #
    # @return [Types::GetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportJobResponse#import_job_response #import_job_response} => Types::ImportJobResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_job({
    #     application_id: "__string", # required
    #     job_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job_response.application_id #=> String
    #   resp.import_job_response.completed_pieces #=> Integer
    #   resp.import_job_response.completion_date #=> String
    #   resp.import_job_response.creation_date #=> String
    #   resp.import_job_response.definition.define_segment #=> Boolean
    #   resp.import_job_response.definition.external_id #=> String
    #   resp.import_job_response.definition.format #=> String, one of "CSV", "JSON"
    #   resp.import_job_response.definition.register_endpoints #=> Boolean
    #   resp.import_job_response.definition.role_arn #=> String
    #   resp.import_job_response.definition.s3_url #=> String
    #   resp.import_job_response.definition.segment_id #=> String
    #   resp.import_job_response.definition.segment_name #=> String
    #   resp.import_job_response.failed_pieces #=> Integer
    #   resp.import_job_response.failures #=> Array
    #   resp.import_job_response.failures[0] #=> String
    #   resp.import_job_response.id #=> String
    #   resp.import_job_response.job_status #=> String, one of "CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.import_job_response.total_failures #=> Integer
    #   resp.import_job_response.total_pieces #=> Integer
    #   resp.import_job_response.total_processed #=> Integer
    #   resp.import_job_response.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetImportJob AWS API Documentation
    #
    # @overload get_import_job(params = {})
    # @param [Hash] params ({})
    def get_import_job(params = {}, options = {})
      req = build_request(:get_import_job, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of all the import
    # jobs for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportJobsResponse#import_jobs_response #import_jobs_response} => Types::ImportJobsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_jobs({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_jobs_response.item #=> Array
    #   resp.import_jobs_response.item[0].application_id #=> String
    #   resp.import_jobs_response.item[0].completed_pieces #=> Integer
    #   resp.import_jobs_response.item[0].completion_date #=> String
    #   resp.import_jobs_response.item[0].creation_date #=> String
    #   resp.import_jobs_response.item[0].definition.define_segment #=> Boolean
    #   resp.import_jobs_response.item[0].definition.external_id #=> String
    #   resp.import_jobs_response.item[0].definition.format #=> String, one of "CSV", "JSON"
    #   resp.import_jobs_response.item[0].definition.register_endpoints #=> Boolean
    #   resp.import_jobs_response.item[0].definition.role_arn #=> String
    #   resp.import_jobs_response.item[0].definition.s3_url #=> String
    #   resp.import_jobs_response.item[0].definition.segment_id #=> String
    #   resp.import_jobs_response.item[0].definition.segment_name #=> String
    #   resp.import_jobs_response.item[0].failed_pieces #=> Integer
    #   resp.import_jobs_response.item[0].failures #=> Array
    #   resp.import_jobs_response.item[0].failures[0] #=> String
    #   resp.import_jobs_response.item[0].id #=> String
    #   resp.import_jobs_response.item[0].job_status #=> String, one of "CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.import_jobs_response.item[0].total_failures #=> Integer
    #   resp.import_jobs_response.item[0].total_pieces #=> Integer
    #   resp.import_jobs_response.item[0].total_processed #=> Integer
    #   resp.import_jobs_response.item[0].type #=> String
    #   resp.import_jobs_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetImportJobs AWS API Documentation
    #
    # @overload get_import_jobs(params = {})
    # @param [Hash] params ({})
    def get_import_jobs(params = {}, options = {})
      req = build_request(:get_import_jobs, params)
      req.send_request(options)
    end

    # Retrieves information about the status, configuration, and other
    # settings for a journey.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :journey_id
    #
    # @return [Types::GetJourneyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJourneyResponse#journey_response #journey_response} => Types::JourneyResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_journey({
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.journey_response.activities #=> Hash
    #   resp.journey_response.activities["__string"].custom.delivery_uri #=> String
    #   resp.journey_response.activities["__string"].custom.endpoint_types #=> Array
    #   resp.journey_response.activities["__string"].custom.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.journey_response.activities["__string"].custom.message_config.data #=> String
    #   resp.journey_response.activities["__string"].custom.next_activity #=> String
    #   resp.journey_response.activities["__string"].custom.template_name #=> String
    #   resp.journey_response.activities["__string"].custom.template_version #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.operator #=> String, one of "ALL", "ANY"
    #   resp.journey_response.activities["__string"].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.journey_response.activities["__string"].conditional_split.false_activity #=> String
    #   resp.journey_response.activities["__string"].conditional_split.true_activity #=> String
    #   resp.journey_response.activities["__string"].description #=> String
    #   resp.journey_response.activities["__string"].email.message_config.from_address #=> String
    #   resp.journey_response.activities["__string"].email.next_activity #=> String
    #   resp.journey_response.activities["__string"].email.template_name #=> String
    #   resp.journey_response.activities["__string"].email.template_version #=> String
    #   resp.journey_response.activities["__string"].holdout.next_activity #=> String
    #   resp.journey_response.activities["__string"].holdout.percentage #=> Integer
    #   resp.journey_response.activities["__string"].multi_condition.branches #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.message_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_condition.segment_id #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].next_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.default_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.evaluation_wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].multi_condition.evaluation_wait_time.wait_until #=> String
    #   resp.journey_response.activities["__string"].push.message_config.time_to_live #=> String
    #   resp.journey_response.activities["__string"].push.next_activity #=> String
    #   resp.journey_response.activities["__string"].push.template_name #=> String
    #   resp.journey_response.activities["__string"].push.template_version #=> String
    #   resp.journey_response.activities["__string"].random_split.branches #=> Array
    #   resp.journey_response.activities["__string"].random_split.branches[0].next_activity #=> String
    #   resp.journey_response.activities["__string"].random_split.branches[0].percentage #=> Integer
    #   resp.journey_response.activities["__string"].sms.message_config.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.journey_response.activities["__string"].sms.message_config.sender_id #=> String
    #   resp.journey_response.activities["__string"].sms.next_activity #=> String
    #   resp.journey_response.activities["__string"].sms.template_name #=> String
    #   resp.journey_response.activities["__string"].sms.template_version #=> String
    #   resp.journey_response.activities["__string"].wait.next_activity #=> String
    #   resp.journey_response.activities["__string"].wait.wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].wait.wait_time.wait_until #=> String
    #   resp.journey_response.application_id #=> String
    #   resp.journey_response.creation_date #=> String
    #   resp.journey_response.id #=> String
    #   resp.journey_response.last_modified_date #=> String
    #   resp.journey_response.limits.daily_cap #=> Integer
    #   resp.journey_response.limits.endpoint_reentry_cap #=> Integer
    #   resp.journey_response.limits.messages_per_second #=> Integer
    #   resp.journey_response.local_time #=> Boolean
    #   resp.journey_response.name #=> String
    #   resp.journey_response.quiet_time.end #=> String
    #   resp.journey_response.quiet_time.start #=> String
    #   resp.journey_response.refresh_frequency #=> String
    #   resp.journey_response.schedule.end_time #=> Time
    #   resp.journey_response.schedule.start_time #=> Time
    #   resp.journey_response.schedule.timezone #=> String
    #   resp.journey_response.start_activity #=> String
    #   resp.journey_response.start_condition.description #=> String
    #   resp.journey_response.start_condition.segment_start_condition.segment_id #=> String
    #   resp.journey_response.state #=> String, one of "DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED"
    #   resp.journey_response.tags #=> Hash
    #   resp.journey_response.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourney AWS API Documentation
    #
    # @overload get_journey(params = {})
    # @param [Hash] params ({})
    def get_journey(params = {}, options = {})
      req = build_request(:get_journey, params)
      req.send_request(options)
    end

    # Retrieves (queries) pre-aggregated data for a standard engagement
    # metric that applies to a journey.
    #
    # @option params [required, String] :application_id
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #
    # @option params [required, String] :journey_id
    #
    # @option params [required, String] :kpi_name
    #
    # @option params [String] :next_token
    #
    # @option params [String] :page_size
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #
    # @return [Types::GetJourneyDateRangeKpiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJourneyDateRangeKpiResponse#journey_date_range_kpi_response #journey_date_range_kpi_response} => Types::JourneyDateRangeKpiResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_journey_date_range_kpi({
    #     application_id: "__string", # required
    #     end_time: Time.now,
    #     journey_id: "__string", # required
    #     kpi_name: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string",
    #     start_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.journey_date_range_kpi_response.application_id #=> String
    #   resp.journey_date_range_kpi_response.end_time #=> Time
    #   resp.journey_date_range_kpi_response.journey_id #=> String
    #   resp.journey_date_range_kpi_response.kpi_name #=> String
    #   resp.journey_date_range_kpi_response.kpi_result.rows #=> Array
    #   resp.journey_date_range_kpi_response.kpi_result.rows[0].grouped_bys #=> Array
    #   resp.journey_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].key #=> String
    #   resp.journey_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].type #=> String
    #   resp.journey_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].value #=> String
    #   resp.journey_date_range_kpi_response.kpi_result.rows[0].values #=> Array
    #   resp.journey_date_range_kpi_response.kpi_result.rows[0].values[0].key #=> String
    #   resp.journey_date_range_kpi_response.kpi_result.rows[0].values[0].type #=> String
    #   resp.journey_date_range_kpi_response.kpi_result.rows[0].values[0].value #=> String
    #   resp.journey_date_range_kpi_response.next_token #=> String
    #   resp.journey_date_range_kpi_response.start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourneyDateRangeKpi AWS API Documentation
    #
    # @overload get_journey_date_range_kpi(params = {})
    # @param [Hash] params ({})
    def get_journey_date_range_kpi(params = {}, options = {})
      req = build_request(:get_journey_date_range_kpi, params)
      req.send_request(options)
    end

    # Retrieves (queries) pre-aggregated data for a standard execution
    # metric that applies to a journey activity.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :journey_activity_id
    #
    # @option params [required, String] :journey_id
    #
    # @option params [String] :next_token
    #
    # @option params [String] :page_size
    #
    # @return [Types::GetJourneyExecutionActivityMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJourneyExecutionActivityMetricsResponse#journey_execution_activity_metrics_response #journey_execution_activity_metrics_response} => Types::JourneyExecutionActivityMetricsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_journey_execution_activity_metrics({
    #     application_id: "__string", # required
    #     journey_activity_id: "__string", # required
    #     journey_id: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.journey_execution_activity_metrics_response.activity_type #=> String
    #   resp.journey_execution_activity_metrics_response.application_id #=> String
    #   resp.journey_execution_activity_metrics_response.journey_activity_id #=> String
    #   resp.journey_execution_activity_metrics_response.journey_id #=> String
    #   resp.journey_execution_activity_metrics_response.last_evaluated_time #=> String
    #   resp.journey_execution_activity_metrics_response.metrics #=> Hash
    #   resp.journey_execution_activity_metrics_response.metrics["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourneyExecutionActivityMetrics AWS API Documentation
    #
    # @overload get_journey_execution_activity_metrics(params = {})
    # @param [Hash] params ({})
    def get_journey_execution_activity_metrics(params = {}, options = {})
      req = build_request(:get_journey_execution_activity_metrics, params)
      req.send_request(options)
    end

    # Retrieves (queries) pre-aggregated data for a standard execution
    # metric that applies to a journey.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :journey_id
    #
    # @option params [String] :next_token
    #
    # @option params [String] :page_size
    #
    # @return [Types::GetJourneyExecutionMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJourneyExecutionMetricsResponse#journey_execution_metrics_response #journey_execution_metrics_response} => Types::JourneyExecutionMetricsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_journey_execution_metrics({
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #     next_token: "__string",
    #     page_size: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.journey_execution_metrics_response.application_id #=> String
    #   resp.journey_execution_metrics_response.journey_id #=> String
    #   resp.journey_execution_metrics_response.last_evaluated_time #=> String
    #   resp.journey_execution_metrics_response.metrics #=> Hash
    #   resp.journey_execution_metrics_response.metrics["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourneyExecutionMetrics AWS API Documentation
    #
    # @overload get_journey_execution_metrics(params = {})
    # @param [Hash] params ({})
    def get_journey_execution_metrics(params = {}, options = {})
      req = build_request(:get_journey_execution_metrics, params)
      req.send_request(options)
    end

    # Retrieves the content and settings of a message template for messages
    # that are sent through a push notification channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @return [Types::GetPushTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPushTemplateResponse#push_notification_template_response #push_notification_template_response} => Types::PushNotificationTemplateResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_push_template({
    #     template_name: "__string", # required
    #     version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.push_notification_template_response.adm.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.push_notification_template_response.adm.body #=> String
    #   resp.push_notification_template_response.adm.image_icon_url #=> String
    #   resp.push_notification_template_response.adm.image_url #=> String
    #   resp.push_notification_template_response.adm.raw_content #=> String
    #   resp.push_notification_template_response.adm.small_image_icon_url #=> String
    #   resp.push_notification_template_response.adm.sound #=> String
    #   resp.push_notification_template_response.adm.title #=> String
    #   resp.push_notification_template_response.adm.url #=> String
    #   resp.push_notification_template_response.apns.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.push_notification_template_response.apns.body #=> String
    #   resp.push_notification_template_response.apns.media_url #=> String
    #   resp.push_notification_template_response.apns.raw_content #=> String
    #   resp.push_notification_template_response.apns.sound #=> String
    #   resp.push_notification_template_response.apns.title #=> String
    #   resp.push_notification_template_response.apns.url #=> String
    #   resp.push_notification_template_response.arn #=> String
    #   resp.push_notification_template_response.baidu.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.push_notification_template_response.baidu.body #=> String
    #   resp.push_notification_template_response.baidu.image_icon_url #=> String
    #   resp.push_notification_template_response.baidu.image_url #=> String
    #   resp.push_notification_template_response.baidu.raw_content #=> String
    #   resp.push_notification_template_response.baidu.small_image_icon_url #=> String
    #   resp.push_notification_template_response.baidu.sound #=> String
    #   resp.push_notification_template_response.baidu.title #=> String
    #   resp.push_notification_template_response.baidu.url #=> String
    #   resp.push_notification_template_response.creation_date #=> String
    #   resp.push_notification_template_response.default.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.push_notification_template_response.default.body #=> String
    #   resp.push_notification_template_response.default.sound #=> String
    #   resp.push_notification_template_response.default.title #=> String
    #   resp.push_notification_template_response.default.url #=> String
    #   resp.push_notification_template_response.default_substitutions #=> String
    #   resp.push_notification_template_response.gcm.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.push_notification_template_response.gcm.body #=> String
    #   resp.push_notification_template_response.gcm.image_icon_url #=> String
    #   resp.push_notification_template_response.gcm.image_url #=> String
    #   resp.push_notification_template_response.gcm.raw_content #=> String
    #   resp.push_notification_template_response.gcm.small_image_icon_url #=> String
    #   resp.push_notification_template_response.gcm.sound #=> String
    #   resp.push_notification_template_response.gcm.title #=> String
    #   resp.push_notification_template_response.gcm.url #=> String
    #   resp.push_notification_template_response.last_modified_date #=> String
    #   resp.push_notification_template_response.recommender_id #=> String
    #   resp.push_notification_template_response.tags #=> Hash
    #   resp.push_notification_template_response.tags["__string"] #=> String
    #   resp.push_notification_template_response.template_description #=> String
    #   resp.push_notification_template_response.template_name #=> String
    #   resp.push_notification_template_response.template_type #=> String, one of "EMAIL", "SMS", "VOICE", "PUSH"
    #   resp.push_notification_template_response.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetPushTemplate AWS API Documentation
    #
    # @overload get_push_template(params = {})
    # @param [Hash] params ({})
    def get_push_template(params = {}, options = {})
      req = build_request(:get_push_template, params)
      req.send_request(options)
    end

    # Retrieves information about an Amazon Pinpoint configuration for a
    # recommender model.
    #
    # @option params [required, String] :recommender_id
    #
    # @return [Types::GetRecommenderConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommenderConfigurationResponse#recommender_configuration_response #recommender_configuration_response} => Types::RecommenderConfigurationResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommender_configuration({
    #     recommender_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommender_configuration_response.attributes #=> Hash
    #   resp.recommender_configuration_response.attributes["__string"] #=> String
    #   resp.recommender_configuration_response.creation_date #=> String
    #   resp.recommender_configuration_response.description #=> String
    #   resp.recommender_configuration_response.id #=> String
    #   resp.recommender_configuration_response.last_modified_date #=> String
    #   resp.recommender_configuration_response.name #=> String
    #   resp.recommender_configuration_response.recommendation_provider_id_type #=> String
    #   resp.recommender_configuration_response.recommendation_provider_role_arn #=> String
    #   resp.recommender_configuration_response.recommendation_provider_uri #=> String
    #   resp.recommender_configuration_response.recommendation_transformer_uri #=> String
    #   resp.recommender_configuration_response.recommendations_display_name #=> String
    #   resp.recommender_configuration_response.recommendations_per_message #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetRecommenderConfiguration AWS API Documentation
    #
    # @overload get_recommender_configuration(params = {})
    # @param [Hash] params ({})
    def get_recommender_configuration(params = {}, options = {})
      req = build_request(:get_recommender_configuration, params)
      req.send_request(options)
    end

    # Retrieves information about all the recommender model configurations
    # that are associated with your Amazon Pinpoint account.
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetRecommenderConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommenderConfigurationsResponse#list_recommender_configurations_response #list_recommender_configurations_response} => Types::ListRecommenderConfigurationsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommender_configurations({
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.list_recommender_configurations_response.item #=> Array
    #   resp.list_recommender_configurations_response.item[0].attributes #=> Hash
    #   resp.list_recommender_configurations_response.item[0].attributes["__string"] #=> String
    #   resp.list_recommender_configurations_response.item[0].creation_date #=> String
    #   resp.list_recommender_configurations_response.item[0].description #=> String
    #   resp.list_recommender_configurations_response.item[0].id #=> String
    #   resp.list_recommender_configurations_response.item[0].last_modified_date #=> String
    #   resp.list_recommender_configurations_response.item[0].name #=> String
    #   resp.list_recommender_configurations_response.item[0].recommendation_provider_id_type #=> String
    #   resp.list_recommender_configurations_response.item[0].recommendation_provider_role_arn #=> String
    #   resp.list_recommender_configurations_response.item[0].recommendation_provider_uri #=> String
    #   resp.list_recommender_configurations_response.item[0].recommendation_transformer_uri #=> String
    #   resp.list_recommender_configurations_response.item[0].recommendations_display_name #=> String
    #   resp.list_recommender_configurations_response.item[0].recommendations_per_message #=> Integer
    #   resp.list_recommender_configurations_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetRecommenderConfigurations AWS API Documentation
    #
    # @overload get_recommender_configurations(params = {})
    # @param [Hash] params ({})
    def get_recommender_configurations(params = {}, options = {})
      req = build_request(:get_recommender_configurations, params)
      req.send_request(options)
    end

    # Retrieves information about the configuration, dimension, and other
    # settings for a specific segment that's associated with an
    # application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :segment_id
    #
    # @return [Types::GetSegmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentResponse#segment_response #segment_response} => Types::SegmentResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment({
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_response.application_id #=> String
    #   resp.segment_response.arn #=> String
    #   resp.segment_response.creation_date #=> String
    #   resp.segment_response.dimensions.attributes #=> Hash
    #   resp.segment_response.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.attributes["__string"].values[0] #=> String
    #   resp.segment_response.dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.app_version.values #=> Array
    #   resp.segment_response.dimensions.demographic.app_version.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.channel.values #=> Array
    #   resp.segment_response.dimensions.demographic.channel.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.device_type.values #=> Array
    #   resp.segment_response.dimensions.demographic.device_type.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.make.values #=> Array
    #   resp.segment_response.dimensions.demographic.make.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.model.values #=> Array
    #   resp.segment_response.dimensions.demographic.model.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.platform.values #=> Array
    #   resp.segment_response.dimensions.demographic.platform.values[0] #=> String
    #   resp.segment_response.dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.location.country.values #=> Array
    #   resp.segment_response.dimensions.location.country.values[0] #=> String
    #   resp.segment_response.dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.segment_response.dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.segment_response.dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.segment_response.dimensions.metrics #=> Hash
    #   resp.segment_response.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.segment_response.dimensions.metrics["__string"].value #=> Float
    #   resp.segment_response.dimensions.user_attributes #=> Hash
    #   resp.segment_response.dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.user_attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.id #=> String
    #   resp.segment_response.import_definition.channel_counts #=> Hash
    #   resp.segment_response.import_definition.channel_counts["__string"] #=> Integer
    #   resp.segment_response.import_definition.external_id #=> String
    #   resp.segment_response.import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segment_response.import_definition.role_arn #=> String
    #   resp.segment_response.import_definition.s3_url #=> String
    #   resp.segment_response.import_definition.size #=> Integer
    #   resp.segment_response.last_modified_date #=> String
    #   resp.segment_response.name #=> String
    #   resp.segment_response.segment_groups.groups #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.latitude #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.longitude #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.range_in_kilometers #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics["__string"].comparison_operator #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics["__string"].value #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].source_segments #=> Array
    #   resp.segment_response.segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.segment_response.segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.segment_response.segment_groups.groups[0].source_type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_groups.groups[0].type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_groups.include #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segment_response.tags #=> Hash
    #   resp.segment_response.tags["__string"] #=> String
    #   resp.segment_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegment AWS API Documentation
    #
    # @overload get_segment(params = {})
    # @param [Hash] params ({})
    def get_segment(params = {}, options = {})
      req = build_request(:get_segment, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the export jobs
    # for a segment.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [required, String] :segment_id
    #
    # @option params [String] :token
    #
    # @return [Types::GetSegmentExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentExportJobsResponse#export_jobs_response #export_jobs_response} => Types::ExportJobsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_export_jobs({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     segment_id: "__string", # required
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.export_jobs_response.item #=> Array
    #   resp.export_jobs_response.item[0].application_id #=> String
    #   resp.export_jobs_response.item[0].completed_pieces #=> Integer
    #   resp.export_jobs_response.item[0].completion_date #=> String
    #   resp.export_jobs_response.item[0].creation_date #=> String
    #   resp.export_jobs_response.item[0].definition.role_arn #=> String
    #   resp.export_jobs_response.item[0].definition.s3_url_prefix #=> String
    #   resp.export_jobs_response.item[0].definition.segment_id #=> String
    #   resp.export_jobs_response.item[0].definition.segment_version #=> Integer
    #   resp.export_jobs_response.item[0].failed_pieces #=> Integer
    #   resp.export_jobs_response.item[0].failures #=> Array
    #   resp.export_jobs_response.item[0].failures[0] #=> String
    #   resp.export_jobs_response.item[0].id #=> String
    #   resp.export_jobs_response.item[0].job_status #=> String, one of "CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.export_jobs_response.item[0].total_failures #=> Integer
    #   resp.export_jobs_response.item[0].total_pieces #=> Integer
    #   resp.export_jobs_response.item[0].total_processed #=> Integer
    #   resp.export_jobs_response.item[0].type #=> String
    #   resp.export_jobs_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentExportJobs AWS API Documentation
    #
    # @overload get_segment_export_jobs(params = {})
    # @param [Hash] params ({})
    def get_segment_export_jobs(params = {}, options = {})
      req = build_request(:get_segment_export_jobs, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the import jobs
    # for a segment.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [required, String] :segment_id
    #
    # @option params [String] :token
    #
    # @return [Types::GetSegmentImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentImportJobsResponse#import_jobs_response #import_jobs_response} => Types::ImportJobsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_import_jobs({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     segment_id: "__string", # required
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_jobs_response.item #=> Array
    #   resp.import_jobs_response.item[0].application_id #=> String
    #   resp.import_jobs_response.item[0].completed_pieces #=> Integer
    #   resp.import_jobs_response.item[0].completion_date #=> String
    #   resp.import_jobs_response.item[0].creation_date #=> String
    #   resp.import_jobs_response.item[0].definition.define_segment #=> Boolean
    #   resp.import_jobs_response.item[0].definition.external_id #=> String
    #   resp.import_jobs_response.item[0].definition.format #=> String, one of "CSV", "JSON"
    #   resp.import_jobs_response.item[0].definition.register_endpoints #=> Boolean
    #   resp.import_jobs_response.item[0].definition.role_arn #=> String
    #   resp.import_jobs_response.item[0].definition.s3_url #=> String
    #   resp.import_jobs_response.item[0].definition.segment_id #=> String
    #   resp.import_jobs_response.item[0].definition.segment_name #=> String
    #   resp.import_jobs_response.item[0].failed_pieces #=> Integer
    #   resp.import_jobs_response.item[0].failures #=> Array
    #   resp.import_jobs_response.item[0].failures[0] #=> String
    #   resp.import_jobs_response.item[0].id #=> String
    #   resp.import_jobs_response.item[0].job_status #=> String, one of "CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.import_jobs_response.item[0].total_failures #=> Integer
    #   resp.import_jobs_response.item[0].total_pieces #=> Integer
    #   resp.import_jobs_response.item[0].total_processed #=> Integer
    #   resp.import_jobs_response.item[0].type #=> String
    #   resp.import_jobs_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentImportJobs AWS API Documentation
    #
    # @overload get_segment_import_jobs(params = {})
    # @param [Hash] params ({})
    def get_segment_import_jobs(params = {}, options = {})
      req = build_request(:get_segment_import_jobs, params)
      req.send_request(options)
    end

    # Retrieves information about the configuration, dimension, and other
    # settings for a specific version of a segment that's associated with
    # an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :segment_id
    #
    # @option params [required, String] :version
    #
    # @return [Types::GetSegmentVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentVersionResponse#segment_response #segment_response} => Types::SegmentResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_version({
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #     version: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_response.application_id #=> String
    #   resp.segment_response.arn #=> String
    #   resp.segment_response.creation_date #=> String
    #   resp.segment_response.dimensions.attributes #=> Hash
    #   resp.segment_response.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.attributes["__string"].values[0] #=> String
    #   resp.segment_response.dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.app_version.values #=> Array
    #   resp.segment_response.dimensions.demographic.app_version.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.channel.values #=> Array
    #   resp.segment_response.dimensions.demographic.channel.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.device_type.values #=> Array
    #   resp.segment_response.dimensions.demographic.device_type.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.make.values #=> Array
    #   resp.segment_response.dimensions.demographic.make.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.model.values #=> Array
    #   resp.segment_response.dimensions.demographic.model.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.platform.values #=> Array
    #   resp.segment_response.dimensions.demographic.platform.values[0] #=> String
    #   resp.segment_response.dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.location.country.values #=> Array
    #   resp.segment_response.dimensions.location.country.values[0] #=> String
    #   resp.segment_response.dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.segment_response.dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.segment_response.dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.segment_response.dimensions.metrics #=> Hash
    #   resp.segment_response.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.segment_response.dimensions.metrics["__string"].value #=> Float
    #   resp.segment_response.dimensions.user_attributes #=> Hash
    #   resp.segment_response.dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.user_attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.id #=> String
    #   resp.segment_response.import_definition.channel_counts #=> Hash
    #   resp.segment_response.import_definition.channel_counts["__string"] #=> Integer
    #   resp.segment_response.import_definition.external_id #=> String
    #   resp.segment_response.import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segment_response.import_definition.role_arn #=> String
    #   resp.segment_response.import_definition.s3_url #=> String
    #   resp.segment_response.import_definition.size #=> Integer
    #   resp.segment_response.last_modified_date #=> String
    #   resp.segment_response.name #=> String
    #   resp.segment_response.segment_groups.groups #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.latitude #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.longitude #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.range_in_kilometers #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics["__string"].comparison_operator #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics["__string"].value #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].source_segments #=> Array
    #   resp.segment_response.segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.segment_response.segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.segment_response.segment_groups.groups[0].source_type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_groups.groups[0].type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_groups.include #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segment_response.tags #=> Hash
    #   resp.segment_response.tags["__string"] #=> String
    #   resp.segment_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentVersion AWS API Documentation
    #
    # @overload get_segment_version(params = {})
    # @param [Hash] params ({})
    def get_segment_version(params = {}, options = {})
      req = build_request(:get_segment_version, params)
      req.send_request(options)
    end

    # Retrieves information about the configuration, dimension, and other
    # settings for all the versions of a specific segment that's associated
    # with an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [required, String] :segment_id
    #
    # @option params [String] :token
    #
    # @return [Types::GetSegmentVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentVersionsResponse#segments_response #segments_response} => Types::SegmentsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_versions({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     segment_id: "__string", # required
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.segments_response.item #=> Array
    #   resp.segments_response.item[0].application_id #=> String
    #   resp.segments_response.item[0].arn #=> String
    #   resp.segments_response.item[0].creation_date #=> String
    #   resp.segments_response.item[0].dimensions.attributes #=> Hash
    #   resp.segments_response.item[0].dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].dimensions.attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segments_response.item[0].dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segments_response.item[0].dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.app_version.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.app_version.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.channel.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.channel.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.device_type.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.device_type.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.make.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.make.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.model.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.model.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.platform.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.platform.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.location.country.values #=> Array
    #   resp.segments_response.item[0].dimensions.location.country.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.segments_response.item[0].dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.segments_response.item[0].dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.segments_response.item[0].dimensions.metrics #=> Hash
    #   resp.segments_response.item[0].dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.segments_response.item[0].dimensions.metrics["__string"].value #=> Float
    #   resp.segments_response.item[0].dimensions.user_attributes #=> Hash
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].id #=> String
    #   resp.segments_response.item[0].import_definition.channel_counts #=> Hash
    #   resp.segments_response.item[0].import_definition.channel_counts["__string"] #=> Integer
    #   resp.segments_response.item[0].import_definition.external_id #=> String
    #   resp.segments_response.item[0].import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segments_response.item[0].import_definition.role_arn #=> String
    #   resp.segments_response.item[0].import_definition.s3_url #=> String
    #   resp.segments_response.item[0].import_definition.size #=> Integer
    #   resp.segments_response.item[0].last_modified_date #=> String
    #   resp.segments_response.item[0].name #=> String
    #   resp.segments_response.item[0].segment_groups.groups #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].attributes #=> Hash
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.app_version.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.app_version.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.channel.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.channel.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.device_type.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.device_type.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.make.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.make.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.model.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.model.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.platform.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.platform.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.country.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.country.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.latitude #=> Float
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.longitude #=> Float
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.gps_point.range_in_kilometers #=> Float
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].metrics #=> Hash
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].metrics["__string"].comparison_operator #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].metrics["__string"].value #=> Float
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].user_attributes #=> Hash
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].user_attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].user_attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].source_segments #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.segments_response.item[0].segment_groups.groups[0].source_type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segments_response.item[0].segment_groups.groups[0].type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segments_response.item[0].segment_groups.include #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segments_response.item[0].segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segments_response.item[0].tags #=> Hash
    #   resp.segments_response.item[0].tags["__string"] #=> String
    #   resp.segments_response.item[0].version #=> Integer
    #   resp.segments_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentVersions AWS API Documentation
    #
    # @overload get_segment_versions(params = {})
    # @param [Hash] params ({})
    def get_segment_versions(params = {}, options = {})
      req = build_request(:get_segment_versions, params)
      req.send_request(options)
    end

    # Retrieves information about the configuration, dimension, and other
    # settings for all the segments that are associated with an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetSegmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentsResponse#segments_response #segments_response} => Types::SegmentsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segments({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.segments_response.item #=> Array
    #   resp.segments_response.item[0].application_id #=> String
    #   resp.segments_response.item[0].arn #=> String
    #   resp.segments_response.item[0].creation_date #=> String
    #   resp.segments_response.item[0].dimensions.attributes #=> Hash
    #   resp.segments_response.item[0].dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].dimensions.attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segments_response.item[0].dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segments_response.item[0].dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.app_version.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.app_version.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.channel.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.channel.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.device_type.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.device_type.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.make.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.make.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.model.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.model.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.platform.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.platform.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.location.country.values #=> Array
    #   resp.segments_response.item[0].dimensions.location.country.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.segments_response.item[0].dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.segments_response.item[0].dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.segments_response.item[0].dimensions.metrics #=> Hash
    #   resp.segments_response.item[0].dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.segments_response.item[0].dimensions.metrics["__string"].value #=> Float
    #   resp.segments_response.item[0].dimensions.user_attributes #=> Hash
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].id #=> String
    #   resp.segments_response.item[0].import_definition.channel_counts #=> Hash
    #   resp.segments_response.item[0].import_definition.channel_counts["__string"] #=> Integer
    #   resp.segments_response.item[0].import_definition.external_id #=> String
    #   resp.segments_response.item[0].import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segments_response.item[0].import_definition.role_arn #=> String
    #   resp.segments_response.item[0].import_definition.s3_url #=> String
    #   resp.segments_response.item[0].import_definition.size #=> Integer
    #   resp.segments_response.item[0].last_modified_date #=> String
    #   resp.segments_response.item[0].name #=> String
    #   resp.segments_response.item[0].segment_groups.groups #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].attributes #=> Hash
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.app_version.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.app_version.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.channel.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.channel.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.device_type.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.device_type.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.make.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.make.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.model.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.model.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.platform.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].demographic.platform.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.country.values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.country.values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.latitude #=> Float
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.longitude #=> Float
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].location.gps_point.range_in_kilometers #=> Float
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].metrics #=> Hash
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].metrics["__string"].comparison_operator #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].metrics["__string"].value #=> Float
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].user_attributes #=> Hash
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].user_attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].dimensions[0].user_attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].source_segments #=> Array
    #   resp.segments_response.item[0].segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.segments_response.item[0].segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.segments_response.item[0].segment_groups.groups[0].source_type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segments_response.item[0].segment_groups.groups[0].type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segments_response.item[0].segment_groups.include #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segments_response.item[0].segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segments_response.item[0].tags #=> Hash
    #   resp.segments_response.item[0].tags["__string"] #=> String
    #   resp.segments_response.item[0].version #=> Integer
    #   resp.segments_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegments AWS API Documentation
    #
    # @overload get_segments(params = {})
    # @param [Hash] params ({})
    def get_segments(params = {}, options = {})
      req = build_request(:get_segments, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the SMS channel
    # for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetSmsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSmsChannelResponse#sms_channel_response #sms_channel_response} => Types::SMSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sms_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sms_channel_response.application_id #=> String
    #   resp.sms_channel_response.creation_date #=> String
    #   resp.sms_channel_response.enabled #=> Boolean
    #   resp.sms_channel_response.has_credential #=> Boolean
    #   resp.sms_channel_response.id #=> String
    #   resp.sms_channel_response.is_archived #=> Boolean
    #   resp.sms_channel_response.last_modified_by #=> String
    #   resp.sms_channel_response.last_modified_date #=> String
    #   resp.sms_channel_response.platform #=> String
    #   resp.sms_channel_response.promotional_messages_per_second #=> Integer
    #   resp.sms_channel_response.sender_id #=> String
    #   resp.sms_channel_response.short_code #=> String
    #   resp.sms_channel_response.transactional_messages_per_second #=> Integer
    #   resp.sms_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSmsChannel AWS API Documentation
    #
    # @overload get_sms_channel(params = {})
    # @param [Hash] params ({})
    def get_sms_channel(params = {}, options = {})
      req = build_request(:get_sms_channel, params)
      req.send_request(options)
    end

    # Retrieves the content and settings of a message template for messages
    # that are sent through the SMS channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @return [Types::GetSmsTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSmsTemplateResponse#sms_template_response #sms_template_response} => Types::SMSTemplateResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sms_template({
    #     template_name: "__string", # required
    #     version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.sms_template_response.arn #=> String
    #   resp.sms_template_response.body #=> String
    #   resp.sms_template_response.creation_date #=> String
    #   resp.sms_template_response.default_substitutions #=> String
    #   resp.sms_template_response.last_modified_date #=> String
    #   resp.sms_template_response.recommender_id #=> String
    #   resp.sms_template_response.tags #=> Hash
    #   resp.sms_template_response.tags["__string"] #=> String
    #   resp.sms_template_response.template_description #=> String
    #   resp.sms_template_response.template_name #=> String
    #   resp.sms_template_response.template_type #=> String, one of "EMAIL", "SMS", "VOICE", "PUSH"
    #   resp.sms_template_response.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSmsTemplate AWS API Documentation
    #
    # @overload get_sms_template(params = {})
    # @param [Hash] params ({})
    def get_sms_template(params = {}, options = {})
      req = build_request(:get_sms_template, params)
      req.send_request(options)
    end

    # Retrieves information about all the endpoints that are associated with
    # a specific user ID.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :user_id
    #
    # @return [Types::GetUserEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserEndpointsResponse#endpoints_response #endpoints_response} => Types::EndpointsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_endpoints({
    #     application_id: "__string", # required
    #     user_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints_response.item #=> Array
    #   resp.endpoints_response.item[0].address #=> String
    #   resp.endpoints_response.item[0].application_id #=> String
    #   resp.endpoints_response.item[0].attributes #=> Hash
    #   resp.endpoints_response.item[0].attributes["__string"] #=> Array
    #   resp.endpoints_response.item[0].attributes["__string"][0] #=> String
    #   resp.endpoints_response.item[0].channel_type #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.endpoints_response.item[0].cohort_id #=> String
    #   resp.endpoints_response.item[0].creation_date #=> String
    #   resp.endpoints_response.item[0].demographic.app_version #=> String
    #   resp.endpoints_response.item[0].demographic.locale #=> String
    #   resp.endpoints_response.item[0].demographic.make #=> String
    #   resp.endpoints_response.item[0].demographic.model #=> String
    #   resp.endpoints_response.item[0].demographic.model_version #=> String
    #   resp.endpoints_response.item[0].demographic.platform #=> String
    #   resp.endpoints_response.item[0].demographic.platform_version #=> String
    #   resp.endpoints_response.item[0].demographic.timezone #=> String
    #   resp.endpoints_response.item[0].effective_date #=> String
    #   resp.endpoints_response.item[0].endpoint_status #=> String
    #   resp.endpoints_response.item[0].id #=> String
    #   resp.endpoints_response.item[0].location.city #=> String
    #   resp.endpoints_response.item[0].location.country #=> String
    #   resp.endpoints_response.item[0].location.latitude #=> Float
    #   resp.endpoints_response.item[0].location.longitude #=> Float
    #   resp.endpoints_response.item[0].location.postal_code #=> String
    #   resp.endpoints_response.item[0].location.region #=> String
    #   resp.endpoints_response.item[0].metrics #=> Hash
    #   resp.endpoints_response.item[0].metrics["__string"] #=> Float
    #   resp.endpoints_response.item[0].opt_out #=> String
    #   resp.endpoints_response.item[0].request_id #=> String
    #   resp.endpoints_response.item[0].user.user_attributes #=> Hash
    #   resp.endpoints_response.item[0].user.user_attributes["__string"] #=> Array
    #   resp.endpoints_response.item[0].user.user_attributes["__string"][0] #=> String
    #   resp.endpoints_response.item[0].user.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetUserEndpoints AWS API Documentation
    #
    # @overload get_user_endpoints(params = {})
    # @param [Hash] params ({})
    def get_user_endpoints(params = {}, options = {})
      req = build_request(:get_user_endpoints, params)
      req.send_request(options)
    end

    # Retrieves information about the status and settings of the voice
    # channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetVoiceChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceChannelResponse#voice_channel_response #voice_channel_response} => Types::VoiceChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_channel_response.application_id #=> String
    #   resp.voice_channel_response.creation_date #=> String
    #   resp.voice_channel_response.enabled #=> Boolean
    #   resp.voice_channel_response.has_credential #=> Boolean
    #   resp.voice_channel_response.id #=> String
    #   resp.voice_channel_response.is_archived #=> Boolean
    #   resp.voice_channel_response.last_modified_by #=> String
    #   resp.voice_channel_response.last_modified_date #=> String
    #   resp.voice_channel_response.platform #=> String
    #   resp.voice_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetVoiceChannel AWS API Documentation
    #
    # @overload get_voice_channel(params = {})
    # @param [Hash] params ({})
    def get_voice_channel(params = {}, options = {})
      req = build_request(:get_voice_channel, params)
      req.send_request(options)
    end

    # Retrieves the content and settings of a message template for messages
    # that are sent through the voice channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @return [Types::GetVoiceTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceTemplateResponse#voice_template_response #voice_template_response} => Types::VoiceTemplateResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_template({
    #     template_name: "__string", # required
    #     version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_template_response.arn #=> String
    #   resp.voice_template_response.body #=> String
    #   resp.voice_template_response.creation_date #=> String
    #   resp.voice_template_response.default_substitutions #=> String
    #   resp.voice_template_response.language_code #=> String
    #   resp.voice_template_response.last_modified_date #=> String
    #   resp.voice_template_response.tags #=> Hash
    #   resp.voice_template_response.tags["__string"] #=> String
    #   resp.voice_template_response.template_description #=> String
    #   resp.voice_template_response.template_name #=> String
    #   resp.voice_template_response.template_type #=> String, one of "EMAIL", "SMS", "VOICE", "PUSH"
    #   resp.voice_template_response.version #=> String
    #   resp.voice_template_response.voice_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetVoiceTemplate AWS API Documentation
    #
    # @overload get_voice_template(params = {})
    # @param [Hash] params ({})
    def get_voice_template(params = {}, options = {})
      req = build_request(:get_voice_template, params)
      req.send_request(options)
    end

    # Retrieves information about the status, configuration, and other
    # settings for all the journeys that are associated with an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::ListJourneysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJourneysResponse#journeys_response #journeys_response} => Types::JourneysResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_journeys({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.journeys_response.item #=> Array
    #   resp.journeys_response.item[0].activities #=> Hash
    #   resp.journeys_response.item[0].activities["__string"].custom.delivery_uri #=> String
    #   resp.journeys_response.item[0].activities["__string"].custom.endpoint_types #=> Array
    #   resp.journeys_response.item[0].activities["__string"].custom.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.journeys_response.item[0].activities["__string"].custom.message_config.data #=> String
    #   resp.journeys_response.item[0].activities["__string"].custom.next_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].custom.template_name #=> String
    #   resp.journeys_response.item[0].activities["__string"].custom.template_version #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.condition.operator #=> String, one of "ALL", "ANY"
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.false_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].conditional_split.true_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].description #=> String
    #   resp.journeys_response.item[0].activities["__string"].email.message_config.from_address #=> String
    #   resp.journeys_response.item[0].activities["__string"].email.next_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].email.template_name #=> String
    #   resp.journeys_response.item[0].activities["__string"].email.template_version #=> String
    #   resp.journeys_response.item[0].activities["__string"].holdout.next_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].holdout.percentage #=> Integer
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes #=> Hash
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics #=> Hash
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.event_condition.message_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_condition.segment_id #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes #=> Hash
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics #=> Hash
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes #=> Hash
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.branches[0].next_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.default_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.evaluation_wait_time.wait_for #=> String
    #   resp.journeys_response.item[0].activities["__string"].multi_condition.evaluation_wait_time.wait_until #=> String
    #   resp.journeys_response.item[0].activities["__string"].push.message_config.time_to_live #=> String
    #   resp.journeys_response.item[0].activities["__string"].push.next_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].push.template_name #=> String
    #   resp.journeys_response.item[0].activities["__string"].push.template_version #=> String
    #   resp.journeys_response.item[0].activities["__string"].random_split.branches #=> Array
    #   resp.journeys_response.item[0].activities["__string"].random_split.branches[0].next_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].random_split.branches[0].percentage #=> Integer
    #   resp.journeys_response.item[0].activities["__string"].sms.message_config.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.journeys_response.item[0].activities["__string"].sms.message_config.sender_id #=> String
    #   resp.journeys_response.item[0].activities["__string"].sms.next_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].sms.template_name #=> String
    #   resp.journeys_response.item[0].activities["__string"].sms.template_version #=> String
    #   resp.journeys_response.item[0].activities["__string"].wait.next_activity #=> String
    #   resp.journeys_response.item[0].activities["__string"].wait.wait_time.wait_for #=> String
    #   resp.journeys_response.item[0].activities["__string"].wait.wait_time.wait_until #=> String
    #   resp.journeys_response.item[0].application_id #=> String
    #   resp.journeys_response.item[0].creation_date #=> String
    #   resp.journeys_response.item[0].id #=> String
    #   resp.journeys_response.item[0].last_modified_date #=> String
    #   resp.journeys_response.item[0].limits.daily_cap #=> Integer
    #   resp.journeys_response.item[0].limits.endpoint_reentry_cap #=> Integer
    #   resp.journeys_response.item[0].limits.messages_per_second #=> Integer
    #   resp.journeys_response.item[0].local_time #=> Boolean
    #   resp.journeys_response.item[0].name #=> String
    #   resp.journeys_response.item[0].quiet_time.end #=> String
    #   resp.journeys_response.item[0].quiet_time.start #=> String
    #   resp.journeys_response.item[0].refresh_frequency #=> String
    #   resp.journeys_response.item[0].schedule.end_time #=> Time
    #   resp.journeys_response.item[0].schedule.start_time #=> Time
    #   resp.journeys_response.item[0].schedule.timezone #=> String
    #   resp.journeys_response.item[0].start_activity #=> String
    #   resp.journeys_response.item[0].start_condition.description #=> String
    #   resp.journeys_response.item[0].start_condition.segment_start_condition.segment_id #=> String
    #   resp.journeys_response.item[0].state #=> String, one of "DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED"
    #   resp.journeys_response.item[0].tags #=> Hash
    #   resp.journeys_response.item[0].tags["__string"] #=> String
    #   resp.journeys_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListJourneys AWS API Documentation
    #
    # @overload list_journeys(params = {})
    # @param [Hash] params ({})
    def list_journeys(params = {}, options = {})
      req = build_request(:list_journeys, params)
      req.send_request(options)
    end

    # Retrieves all the tags (keys and values) that are associated with an
    # application, campaign, message template, or segment.
    #
    # @option params [required, String] :resource_arn
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags_model #tags_model} => Types::TagsModel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags_model.tags #=> Hash
    #   resp.tags_model.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves information about all the versions of a specific message
    # template.
    #
    # @option params [String] :next_token
    #
    # @option params [String] :page_size
    #
    # @option params [required, String] :template_name
    #
    # @option params [required, String] :template_type
    #
    # @return [Types::ListTemplateVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateVersionsResponse#template_versions_response #template_versions_response} => Types::TemplateVersionsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_versions({
    #     next_token: "__string",
    #     page_size: "__string",
    #     template_name: "__string", # required
    #     template_type: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_versions_response.item #=> Array
    #   resp.template_versions_response.item[0].creation_date #=> String
    #   resp.template_versions_response.item[0].default_substitutions #=> String
    #   resp.template_versions_response.item[0].last_modified_date #=> String
    #   resp.template_versions_response.item[0].template_description #=> String
    #   resp.template_versions_response.item[0].template_name #=> String
    #   resp.template_versions_response.item[0].template_type #=> String
    #   resp.template_versions_response.item[0].version #=> String
    #   resp.template_versions_response.message #=> String
    #   resp.template_versions_response.next_token #=> String
    #   resp.template_versions_response.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListTemplateVersions AWS API Documentation
    #
    # @overload list_template_versions(params = {})
    # @param [Hash] params ({})
    def list_template_versions(params = {}, options = {})
      req = build_request(:list_template_versions, params)
      req.send_request(options)
    end

    # Retrieves information about all the message templates that are
    # associated with your Amazon Pinpoint account.
    #
    # @option params [String] :next_token
    #
    # @option params [String] :page_size
    #
    # @option params [String] :prefix
    #
    # @option params [String] :template_type
    #
    # @return [Types::ListTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplatesResponse#templates_response #templates_response} => Types::TemplatesResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates({
    #     next_token: "__string",
    #     page_size: "__string",
    #     prefix: "__string",
    #     template_type: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.templates_response.item #=> Array
    #   resp.templates_response.item[0].arn #=> String
    #   resp.templates_response.item[0].creation_date #=> String
    #   resp.templates_response.item[0].default_substitutions #=> String
    #   resp.templates_response.item[0].last_modified_date #=> String
    #   resp.templates_response.item[0].tags #=> Hash
    #   resp.templates_response.item[0].tags["__string"] #=> String
    #   resp.templates_response.item[0].template_description #=> String
    #   resp.templates_response.item[0].template_name #=> String
    #   resp.templates_response.item[0].template_type #=> String, one of "EMAIL", "SMS", "VOICE", "PUSH"
    #   resp.templates_response.item[0].version #=> String
    #   resp.templates_response.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListTemplates AWS API Documentation
    #
    # @overload list_templates(params = {})
    # @param [Hash] params ({})
    def list_templates(params = {}, options = {})
      req = build_request(:list_templates, params)
      req.send_request(options)
    end

    # Retrieves information about a phone number.
    #
    # @option params [required, Types::NumberValidateRequest] :number_validate_request
    #   Specifies a phone number to validate and retrieve information about.
    #
    # @return [Types::PhoneNumberValidateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PhoneNumberValidateResponse#number_validate_response #number_validate_response} => Types::NumberValidateResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.phone_number_validate({
    #     number_validate_request: { # required
    #       iso_country_code: "__string",
    #       phone_number: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.number_validate_response.carrier #=> String
    #   resp.number_validate_response.city #=> String
    #   resp.number_validate_response.cleansed_phone_number_e164 #=> String
    #   resp.number_validate_response.cleansed_phone_number_national #=> String
    #   resp.number_validate_response.country #=> String
    #   resp.number_validate_response.country_code_iso_2 #=> String
    #   resp.number_validate_response.country_code_numeric #=> String
    #   resp.number_validate_response.county #=> String
    #   resp.number_validate_response.original_country_code_iso_2 #=> String
    #   resp.number_validate_response.original_phone_number #=> String
    #   resp.number_validate_response.phone_type #=> String
    #   resp.number_validate_response.phone_type_code #=> Integer
    #   resp.number_validate_response.timezone #=> String
    #   resp.number_validate_response.zip_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PhoneNumberValidate AWS API Documentation
    #
    # @overload phone_number_validate(params = {})
    # @param [Hash] params ({})
    def phone_number_validate(params = {}, options = {})
      req = build_request(:phone_number_validate, params)
      req.send_request(options)
    end

    # Creates a new event stream for an application or updates the settings
    # of an existing event stream for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::WriteEventStream] :write_event_stream
    #   Specifies the Amazon Resource Name (ARN) of an event stream to publish
    #   events to and the AWS Identity and Access Management (IAM) role to use
    #   when publishing those events.
    #
    # @return [Types::PutEventStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventStreamResponse#event_stream #event_stream} => Types::EventStream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_event_stream({
    #     application_id: "__string", # required
    #     write_event_stream: { # required
    #       destination_stream_arn: "__string", # required
    #       role_arn: "__string", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.event_stream.application_id #=> String
    #   resp.event_stream.destination_stream_arn #=> String
    #   resp.event_stream.external_id #=> String
    #   resp.event_stream.last_modified_date #=> String
    #   resp.event_stream.last_updated_by #=> String
    #   resp.event_stream.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PutEventStream AWS API Documentation
    #
    # @overload put_event_stream(params = {})
    # @param [Hash] params ({})
    def put_event_stream(params = {}, options = {})
      req = build_request(:put_event_stream, params)
      req.send_request(options)
    end

    # Creates a new event to record for endpoints, or creates or updates
    # endpoint data that existing events are associated with.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::EventsRequest] :events_request
    #   Specifies a batch of events to process.
    #
    # @return [Types::PutEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventsResponse#events_response #events_response} => Types::EventsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_events({
    #     application_id: "__string", # required
    #     events_request: { # required
    #       batch_item: { # required
    #         "__string" => {
    #           endpoint: { # required
    #             address: "__string",
    #             attributes: {
    #               "__string" => ["__string"],
    #             },
    #             channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #             demographic: {
    #               app_version: "__string",
    #               locale: "__string",
    #               make: "__string",
    #               model: "__string",
    #               model_version: "__string",
    #               platform: "__string",
    #               platform_version: "__string",
    #               timezone: "__string",
    #             },
    #             effective_date: "__string",
    #             endpoint_status: "__string",
    #             location: {
    #               city: "__string",
    #               country: "__string",
    #               latitude: 1.0,
    #               longitude: 1.0,
    #               postal_code: "__string",
    #               region: "__string",
    #             },
    #             metrics: {
    #               "__string" => 1.0,
    #             },
    #             opt_out: "__string",
    #             request_id: "__string",
    #             user: {
    #               user_attributes: {
    #                 "__string" => ["__string"],
    #               },
    #               user_id: "__string",
    #             },
    #           },
    #           events: { # required
    #             "__string" => {
    #               app_package_name: "__string",
    #               app_title: "__string",
    #               app_version_code: "__string",
    #               attributes: {
    #                 "__string" => "__string",
    #               },
    #               client_sdk_version: "__string",
    #               event_type: "__string", # required
    #               metrics: {
    #                 "__string" => 1.0,
    #               },
    #               sdk_name: "__string",
    #               session: {
    #                 duration: 1,
    #                 id: "__string", # required
    #                 start_timestamp: "__string", # required
    #                 stop_timestamp: "__string",
    #               },
    #               timestamp: "__string", # required
    #             },
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.events_response.results #=> Hash
    #   resp.events_response.results["__string"].endpoint_item_response.message #=> String
    #   resp.events_response.results["__string"].endpoint_item_response.status_code #=> Integer
    #   resp.events_response.results["__string"].events_item_response #=> Hash
    #   resp.events_response.results["__string"].events_item_response["__string"].message #=> String
    #   resp.events_response.results["__string"].events_item_response["__string"].status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PutEvents AWS API Documentation
    #
    # @overload put_events(params = {})
    # @param [Hash] params ({})
    def put_events(params = {}, options = {})
      req = build_request(:put_events, params)
      req.send_request(options)
    end

    # Removes one or more attributes, of the same attribute type, from all
    # the endpoints that are associated with an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :attribute_type
    #
    # @option params [required, Types::UpdateAttributesRequest] :update_attributes_request
    #   Specifies one or more attributes to remove from all the endpoints that
    #   are associated with an application.
    #
    # @return [Types::RemoveAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveAttributesResponse#attributes_resource #attributes_resource} => Types::AttributesResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_attributes({
    #     application_id: "__string", # required
    #     attribute_type: "__string", # required
    #     update_attributes_request: { # required
    #       blacklist: ["__string"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes_resource.application_id #=> String
    #   resp.attributes_resource.attribute_type #=> String
    #   resp.attributes_resource.attributes #=> Array
    #   resp.attributes_resource.attributes[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/RemoveAttributes AWS API Documentation
    #
    # @overload remove_attributes(params = {})
    # @param [Hash] params ({})
    def remove_attributes(params = {}, options = {})
      req = build_request(:remove_attributes, params)
      req.send_request(options)
    end

    # Creates and sends a direct message.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::MessageRequest] :message_request
    #   Specifies the configuration and other settings for a message.
    #
    # @return [Types::SendMessagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendMessagesResponse#message_response #message_response} => Types::MessageResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_messages({
    #     application_id: "__string", # required
    #     message_request: { # required
    #       addresses: {
    #         "__string" => {
    #           body_override: "__string",
    #           channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #           context: {
    #             "__string" => "__string",
    #           },
    #           raw_content: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title_override: "__string",
    #         },
    #       },
    #       context: {
    #         "__string" => "__string",
    #       },
    #       endpoints: {
    #         "__string" => {
    #           body_override: "__string",
    #           context: {
    #             "__string" => "__string",
    #           },
    #           raw_content: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title_override: "__string",
    #         },
    #       },
    #       message_configuration: { # required
    #         adm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           consolidation_key: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           expires_after: "__string",
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           md5: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title: "__string",
    #           url: "__string",
    #         },
    #         apns_message: {
    #           apns_push_type: "__string",
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           badge: 1,
    #           body: "__string",
    #           category: "__string",
    #           collapse_id: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           media_url: "__string",
    #           preferred_authentication_method: "__string",
    #           priority: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           thread_id: "__string",
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         default_message: {
    #           body: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #         },
    #         default_push_notification_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           silent_push: false,
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title: "__string",
    #           url: "__string",
    #         },
    #         email_message: {
    #           body: "__string",
    #           feedback_forwarding_address: "__string",
    #           from_address: "__string",
    #           raw_email: {
    #             data: "data",
    #           },
    #           reply_to_addresses: ["__string"],
    #           simple_email: {
    #             html_part: {
    #               charset: "__string",
    #               data: "__string",
    #             },
    #             subject: {
    #               charset: "__string",
    #               data: "__string",
    #             },
    #             text_part: {
    #               charset: "__string",
    #               data: "__string",
    #             },
    #           },
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           collapse_key: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           priority: "__string",
    #           raw_content: "__string",
    #           restricted_package_name: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         sms_message: {
    #           body: "__string",
    #           keyword: "__string",
    #           media_url: "__string",
    #           message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #         },
    #         voice_message: {
    #           body: "__string",
    #           language_code: "__string",
    #           origination_number: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           voice_id: "__string",
    #         },
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #       },
    #       trace_id: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_response.application_id #=> String
    #   resp.message_response.endpoint_result #=> Hash
    #   resp.message_response.endpoint_result["__string"].address #=> String
    #   resp.message_response.endpoint_result["__string"].delivery_status #=> String, one of "SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"
    #   resp.message_response.endpoint_result["__string"].message_id #=> String
    #   resp.message_response.endpoint_result["__string"].status_code #=> Integer
    #   resp.message_response.endpoint_result["__string"].status_message #=> String
    #   resp.message_response.endpoint_result["__string"].updated_token #=> String
    #   resp.message_response.request_id #=> String
    #   resp.message_response.result #=> Hash
    #   resp.message_response.result["__string"].delivery_status #=> String, one of "SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"
    #   resp.message_response.result["__string"].message_id #=> String
    #   resp.message_response.result["__string"].status_code #=> Integer
    #   resp.message_response.result["__string"].status_message #=> String
    #   resp.message_response.result["__string"].updated_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendMessages AWS API Documentation
    #
    # @overload send_messages(params = {})
    # @param [Hash] params ({})
    def send_messages(params = {}, options = {})
      req = build_request(:send_messages, params)
      req.send_request(options)
    end

    # Creates and sends a message to a list of users.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::SendUsersMessageRequest] :send_users_message_request
    #   Specifies the configuration and other settings for a message to send
    #   to all the endpoints that are associated with a list of users.
    #
    # @return [Types::SendUsersMessagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendUsersMessagesResponse#send_users_message_response #send_users_message_response} => Types::SendUsersMessageResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_users_messages({
    #     application_id: "__string", # required
    #     send_users_message_request: { # required
    #       context: {
    #         "__string" => "__string",
    #       },
    #       message_configuration: { # required
    #         adm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           consolidation_key: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           expires_after: "__string",
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           md5: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title: "__string",
    #           url: "__string",
    #         },
    #         apns_message: {
    #           apns_push_type: "__string",
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           badge: 1,
    #           body: "__string",
    #           category: "__string",
    #           collapse_id: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           media_url: "__string",
    #           preferred_authentication_method: "__string",
    #           priority: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           thread_id: "__string",
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         default_message: {
    #           body: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #         },
    #         default_push_notification_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           silent_push: false,
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title: "__string",
    #           url: "__string",
    #         },
    #         email_message: {
    #           body: "__string",
    #           feedback_forwarding_address: "__string",
    #           from_address: "__string",
    #           raw_email: {
    #             data: "data",
    #           },
    #           reply_to_addresses: ["__string"],
    #           simple_email: {
    #             html_part: {
    #               charset: "__string",
    #               data: "__string",
    #             },
    #             subject: {
    #               charset: "__string",
    #               data: "__string",
    #             },
    #             text_part: {
    #               charset: "__string",
    #               data: "__string",
    #             },
    #           },
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           collapse_key: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           priority: "__string",
    #           raw_content: "__string",
    #           restricted_package_name: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         sms_message: {
    #           body: "__string",
    #           keyword: "__string",
    #           media_url: "__string",
    #           message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #         },
    #         voice_message: {
    #           body: "__string",
    #           language_code: "__string",
    #           origination_number: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           voice_id: "__string",
    #         },
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #       },
    #       trace_id: "__string",
    #       users: { # required
    #         "__string" => {
    #           body_override: "__string",
    #           context: {
    #             "__string" => "__string",
    #           },
    #           raw_content: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title_override: "__string",
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.send_users_message_response.application_id #=> String
    #   resp.send_users_message_response.request_id #=> String
    #   resp.send_users_message_response.result #=> Hash
    #   resp.send_users_message_response.result["__string"] #=> Hash
    #   resp.send_users_message_response.result["__string"]["__string"].address #=> String
    #   resp.send_users_message_response.result["__string"]["__string"].delivery_status #=> String, one of "SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"
    #   resp.send_users_message_response.result["__string"]["__string"].message_id #=> String
    #   resp.send_users_message_response.result["__string"]["__string"].status_code #=> Integer
    #   resp.send_users_message_response.result["__string"]["__string"].status_message #=> String
    #   resp.send_users_message_response.result["__string"]["__string"].updated_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendUsersMessages AWS API Documentation
    #
    # @overload send_users_messages(params = {})
    # @param [Hash] params ({})
    def send_users_messages(params = {}, options = {})
      req = build_request(:send_users_messages, params)
      req.send_request(options)
    end

    # Adds one or more tags (keys and values) to an application, campaign,
    # message template, or segment.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Types::TagsModel] :tags_model
    #   Specifies the tags (keys and values) for an application, campaign,
    #   message template, or segment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags_model: { # required
    #       tags: { # required
    #         "__string" => "__string",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags (keys and values) from an application,
    # campaign, message template, or segment.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Enables the ADM channel for an application or updates the status and
    # settings of the ADM channel for an application.
    #
    # @option params [required, Types::ADMChannelRequest] :adm_channel_request
    #   Specifies the status and settings of the ADM (Amazon Device Messaging)
    #   channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::UpdateAdmChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAdmChannelResponse#adm_channel_response #adm_channel_response} => Types::ADMChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_adm_channel({
    #     adm_channel_request: { # required
    #       client_id: "__string", # required
    #       client_secret: "__string", # required
    #       enabled: false,
    #     },
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.adm_channel_response.application_id #=> String
    #   resp.adm_channel_response.creation_date #=> String
    #   resp.adm_channel_response.enabled #=> Boolean
    #   resp.adm_channel_response.has_credential #=> Boolean
    #   resp.adm_channel_response.id #=> String
    #   resp.adm_channel_response.is_archived #=> Boolean
    #   resp.adm_channel_response.last_modified_by #=> String
    #   resp.adm_channel_response.last_modified_date #=> String
    #   resp.adm_channel_response.platform #=> String
    #   resp.adm_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateAdmChannel AWS API Documentation
    #
    # @overload update_adm_channel(params = {})
    # @param [Hash] params ({})
    def update_adm_channel(params = {}, options = {})
      req = build_request(:update_adm_channel, params)
      req.send_request(options)
    end

    # Enables the APNs channel for an application or updates the status and
    # settings of the APNs channel for an application.
    #
    # @option params [required, Types::APNSChannelRequest] :apns_channel_request
    #   Specifies the status and settings of the APNs (Apple Push Notification
    #   service) channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::UpdateApnsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApnsChannelResponse#apns_channel_response #apns_channel_response} => Types::APNSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_apns_channel({
    #     apns_channel_request: { # required
    #       bundle_id: "__string",
    #       certificate: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       private_key: "__string",
    #       team_id: "__string",
    #       token_key: "__string",
    #       token_key_id: "__string",
    #     },
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_channel_response.application_id #=> String
    #   resp.apns_channel_response.creation_date #=> String
    #   resp.apns_channel_response.default_authentication_method #=> String
    #   resp.apns_channel_response.enabled #=> Boolean
    #   resp.apns_channel_response.has_credential #=> Boolean
    #   resp.apns_channel_response.has_token_key #=> Boolean
    #   resp.apns_channel_response.id #=> String
    #   resp.apns_channel_response.is_archived #=> Boolean
    #   resp.apns_channel_response.last_modified_by #=> String
    #   resp.apns_channel_response.last_modified_date #=> String
    #   resp.apns_channel_response.platform #=> String
    #   resp.apns_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsChannel AWS API Documentation
    #
    # @overload update_apns_channel(params = {})
    # @param [Hash] params ({})
    def update_apns_channel(params = {}, options = {})
      req = build_request(:update_apns_channel, params)
      req.send_request(options)
    end

    # Enables the APNs sandbox channel for an application or updates the
    # status and settings of the APNs sandbox channel for an application.
    #
    # @option params [required, Types::APNSSandboxChannelRequest] :apns_sandbox_channel_request
    #   Specifies the status and settings of the APNs (Apple Push Notification
    #   service) sandbox channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::UpdateApnsSandboxChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApnsSandboxChannelResponse#apns_sandbox_channel_response #apns_sandbox_channel_response} => Types::APNSSandboxChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_apns_sandbox_channel({
    #     apns_sandbox_channel_request: { # required
    #       bundle_id: "__string",
    #       certificate: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       private_key: "__string",
    #       team_id: "__string",
    #       token_key: "__string",
    #       token_key_id: "__string",
    #     },
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_sandbox_channel_response.application_id #=> String
    #   resp.apns_sandbox_channel_response.creation_date #=> String
    #   resp.apns_sandbox_channel_response.default_authentication_method #=> String
    #   resp.apns_sandbox_channel_response.enabled #=> Boolean
    #   resp.apns_sandbox_channel_response.has_credential #=> Boolean
    #   resp.apns_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.apns_sandbox_channel_response.id #=> String
    #   resp.apns_sandbox_channel_response.is_archived #=> Boolean
    #   resp.apns_sandbox_channel_response.last_modified_by #=> String
    #   resp.apns_sandbox_channel_response.last_modified_date #=> String
    #   resp.apns_sandbox_channel_response.platform #=> String
    #   resp.apns_sandbox_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsSandboxChannel AWS API Documentation
    #
    # @overload update_apns_sandbox_channel(params = {})
    # @param [Hash] params ({})
    def update_apns_sandbox_channel(params = {}, options = {})
      req = build_request(:update_apns_sandbox_channel, params)
      req.send_request(options)
    end

    # Enables the APNs VoIP channel for an application or updates the status
    # and settings of the APNs VoIP channel for an application.
    #
    # @option params [required, Types::APNSVoipChannelRequest] :apns_voip_channel_request
    #   Specifies the status and settings of the APNs (Apple Push Notification
    #   service) VoIP channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::UpdateApnsVoipChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApnsVoipChannelResponse#apns_voip_channel_response #apns_voip_channel_response} => Types::APNSVoipChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_apns_voip_channel({
    #     apns_voip_channel_request: { # required
    #       bundle_id: "__string",
    #       certificate: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       private_key: "__string",
    #       team_id: "__string",
    #       token_key: "__string",
    #       token_key_id: "__string",
    #     },
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_voip_channel_response.application_id #=> String
    #   resp.apns_voip_channel_response.creation_date #=> String
    #   resp.apns_voip_channel_response.default_authentication_method #=> String
    #   resp.apns_voip_channel_response.enabled #=> Boolean
    #   resp.apns_voip_channel_response.has_credential #=> Boolean
    #   resp.apns_voip_channel_response.has_token_key #=> Boolean
    #   resp.apns_voip_channel_response.id #=> String
    #   resp.apns_voip_channel_response.is_archived #=> Boolean
    #   resp.apns_voip_channel_response.last_modified_by #=> String
    #   resp.apns_voip_channel_response.last_modified_date #=> String
    #   resp.apns_voip_channel_response.platform #=> String
    #   resp.apns_voip_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsVoipChannel AWS API Documentation
    #
    # @overload update_apns_voip_channel(params = {})
    # @param [Hash] params ({})
    def update_apns_voip_channel(params = {}, options = {})
      req = build_request(:update_apns_voip_channel, params)
      req.send_request(options)
    end

    # Enables the APNs VoIP sandbox channel for an application or updates
    # the status and settings of the APNs VoIP sandbox channel for an
    # application.
    #
    # @option params [required, Types::APNSVoipSandboxChannelRequest] :apns_voip_sandbox_channel_request
    #   Specifies the status and settings of the APNs (Apple Push Notification
    #   service) VoIP sandbox channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::UpdateApnsVoipSandboxChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApnsVoipSandboxChannelResponse#apns_voip_sandbox_channel_response #apns_voip_sandbox_channel_response} => Types::APNSVoipSandboxChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_apns_voip_sandbox_channel({
    #     apns_voip_sandbox_channel_request: { # required
    #       bundle_id: "__string",
    #       certificate: "__string",
    #       default_authentication_method: "__string",
    #       enabled: false,
    #       private_key: "__string",
    #       team_id: "__string",
    #       token_key: "__string",
    #       token_key_id: "__string",
    #     },
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_voip_sandbox_channel_response.application_id #=> String
    #   resp.apns_voip_sandbox_channel_response.creation_date #=> String
    #   resp.apns_voip_sandbox_channel_response.default_authentication_method #=> String
    #   resp.apns_voip_sandbox_channel_response.enabled #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.has_credential #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.id #=> String
    #   resp.apns_voip_sandbox_channel_response.is_archived #=> Boolean
    #   resp.apns_voip_sandbox_channel_response.last_modified_by #=> String
    #   resp.apns_voip_sandbox_channel_response.last_modified_date #=> String
    #   resp.apns_voip_sandbox_channel_response.platform #=> String
    #   resp.apns_voip_sandbox_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsVoipSandboxChannel AWS API Documentation
    #
    # @overload update_apns_voip_sandbox_channel(params = {})
    # @param [Hash] params ({})
    def update_apns_voip_sandbox_channel(params = {}, options = {})
      req = build_request(:update_apns_voip_sandbox_channel, params)
      req.send_request(options)
    end

    # Updates the settings for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::WriteApplicationSettingsRequest] :write_application_settings_request
    #   Specifies the default settings for an application.
    #
    # @return [Types::UpdateApplicationSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationSettingsResponse#application_settings_resource #application_settings_resource} => Types::ApplicationSettingsResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_settings({
    #     application_id: "__string", # required
    #     write_application_settings_request: { # required
    #       campaign_hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY", # accepts DELIVERY, FILTER
    #         web_url: "__string",
    #       },
    #       cloud_watch_metrics_enabled: false,
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #       },
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_settings_resource.application_id #=> String
    #   resp.application_settings_resource.campaign_hook.lambda_function_name #=> String
    #   resp.application_settings_resource.campaign_hook.mode #=> String, one of "DELIVERY", "FILTER"
    #   resp.application_settings_resource.campaign_hook.web_url #=> String
    #   resp.application_settings_resource.last_modified_date #=> String
    #   resp.application_settings_resource.limits.daily #=> Integer
    #   resp.application_settings_resource.limits.maximum_duration #=> Integer
    #   resp.application_settings_resource.limits.messages_per_second #=> Integer
    #   resp.application_settings_resource.limits.total #=> Integer
    #   resp.application_settings_resource.quiet_time.end #=> String
    #   resp.application_settings_resource.quiet_time.start #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApplicationSettings AWS API Documentation
    #
    # @overload update_application_settings(params = {})
    # @param [Hash] params ({})
    def update_application_settings(params = {}, options = {})
      req = build_request(:update_application_settings, params)
      req.send_request(options)
    end

    # Enables the Baidu channel for an application or updates the status and
    # settings of the Baidu channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::BaiduChannelRequest] :baidu_channel_request
    #   Specifies the status and settings of the Baidu (Baidu Cloud Push)
    #   channel for an application.
    #
    # @return [Types::UpdateBaiduChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBaiduChannelResponse#baidu_channel_response #baidu_channel_response} => Types::BaiduChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_baidu_channel({
    #     application_id: "__string", # required
    #     baidu_channel_request: { # required
    #       api_key: "__string", # required
    #       enabled: false,
    #       secret_key: "__string", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.baidu_channel_response.application_id #=> String
    #   resp.baidu_channel_response.creation_date #=> String
    #   resp.baidu_channel_response.credential #=> String
    #   resp.baidu_channel_response.enabled #=> Boolean
    #   resp.baidu_channel_response.has_credential #=> Boolean
    #   resp.baidu_channel_response.id #=> String
    #   resp.baidu_channel_response.is_archived #=> Boolean
    #   resp.baidu_channel_response.last_modified_by #=> String
    #   resp.baidu_channel_response.last_modified_date #=> String
    #   resp.baidu_channel_response.platform #=> String
    #   resp.baidu_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateBaiduChannel AWS API Documentation
    #
    # @overload update_baidu_channel(params = {})
    # @param [Hash] params ({})
    def update_baidu_channel(params = {}, options = {})
      req = build_request(:update_baidu_channel, params)
      req.send_request(options)
    end

    # Updates the configuration and other settings for a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @option params [required, Types::WriteCampaignRequest] :write_campaign_request
    #   Specifies the configuration and other settings for a campaign.
    #
    # @return [Types::UpdateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCampaignResponse#campaign_response #campaign_response} => Types::CampaignResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     write_campaign_request: { # required
    #       additional_treatments: [
    #         {
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             apns_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             custom_message: {
    #               data: "__string",
    #             },
    #             default_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               html_body: "__string",
    #               title: "__string",
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               sender_id: "__string",
    #             },
    #           },
    #           schedule: {
    #             end_time: "__string",
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   },
    #                 },
    #               },
    #               filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #             },
    #             frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string",
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string",
    #           },
    #           size_percent: 1, # required
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string",
    #         },
    #       ],
    #       custom_delivery_configuration: {
    #         delivery_uri: "__string", # required
    #         endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #       },
    #       description: "__string",
    #       holdout_percent: 1,
    #       hook: {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY", # accepts DELIVERY, FILTER
    #         web_url: "__string",
    #       },
    #       is_paused: false,
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #       },
    #       message_configuration: {
    #         adm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         apns_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         custom_message: {
    #           data: "__string",
    #         },
    #         default_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         email_message: {
    #           body: "__string",
    #           from_address: "__string",
    #           html_body: "__string",
    #           title: "__string",
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #           sender_id: "__string",
    #         },
    #       },
    #       name: "__string",
    #       schedule: {
    #         end_time: "__string",
    #         event_filter: {
    #           dimensions: { # required
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #             },
    #             event_type: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               },
    #             },
    #           },
    #           filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #         },
    #         frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string",
    #         },
    #         start_time: "__string", # required
    #         timezone: "__string",
    #       },
    #       segment_id: "__string",
    #       segment_version: 1,
    #       tags: {
    #         "__string" => "__string",
    #       },
    #       template_configuration: {
    #         email_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #       },
    #       treatment_description: "__string",
    #       treatment_name: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_response.additional_treatments #=> Array
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaign_response.additional_treatments[0].id #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.baidu_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.raw_content #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaign_response.additional_treatments[0].schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.push_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.push_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.sms_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.sms_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.voice_template.name #=> String
    #   resp.campaign_response.additional_treatments[0].template_configuration.voice_template.version #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.campaign_response.application_id #=> String
    #   resp.campaign_response.arn #=> String
    #   resp.campaign_response.creation_date #=> String
    #   resp.campaign_response.custom_delivery_configuration.delivery_uri #=> String
    #   resp.campaign_response.custom_delivery_configuration.endpoint_types #=> Array
    #   resp.campaign_response.custom_delivery_configuration.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.campaign_response.default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.description #=> String
    #   resp.campaign_response.holdout_percent #=> Integer
    #   resp.campaign_response.hook.lambda_function_name #=> String
    #   resp.campaign_response.hook.mode #=> String, one of "DELIVERY", "FILTER"
    #   resp.campaign_response.hook.web_url #=> String
    #   resp.campaign_response.id #=> String
    #   resp.campaign_response.is_paused #=> Boolean
    #   resp.campaign_response.last_modified_date #=> String
    #   resp.campaign_response.limits.daily #=> Integer
    #   resp.campaign_response.limits.maximum_duration #=> Integer
    #   resp.campaign_response.limits.messages_per_second #=> Integer
    #   resp.campaign_response.limits.total #=> Integer
    #   resp.campaign_response.message_configuration.adm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.adm_message.body #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.adm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.adm_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.adm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.adm_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.adm_message.title #=> String
    #   resp.campaign_response.message_configuration.adm_message.url #=> String
    #   resp.campaign_response.message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.apns_message.body #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.apns_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.apns_message.title #=> String
    #   resp.campaign_response.message_configuration.apns_message.url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.baidu_message.body #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.image_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.json_body #=> String
    #   resp.campaign_response.message_configuration.baidu_message.media_url #=> String
    #   resp.campaign_response.message_configuration.baidu_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.baidu_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.baidu_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.baidu_message.title #=> String
    #   resp.campaign_response.message_configuration.baidu_message.url #=> String
    #   resp.campaign_response.message_configuration.custom_message.data #=> String
    #   resp.campaign_response.message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.default_message.body #=> String
    #   resp.campaign_response.message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.message_configuration.default_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.default_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.default_message.title #=> String
    #   resp.campaign_response.message_configuration.default_message.url #=> String
    #   resp.campaign_response.message_configuration.email_message.body #=> String
    #   resp.campaign_response.message_configuration.email_message.from_address #=> String
    #   resp.campaign_response.message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.message_configuration.email_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.raw_content #=> String
    #   resp.campaign_response.message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.gcm_message.time_to_live #=> Integer
    #   resp.campaign_response.message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.message_configuration.sms_message.body #=> String
    #   resp.campaign_response.message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.name #=> String
    #   resp.campaign_response.schedule.end_time #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes #=> Hash
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].values #=> Array
    #   resp.campaign_response.schedule.event_filter.dimensions.attributes["__string"].values[0] #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.values #=> Array
    #   resp.campaign_response.schedule.event_filter.dimensions.event_type.values[0] #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics #=> Hash
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.campaign_response.schedule.event_filter.dimensions.metrics["__string"].value #=> Float
    #   resp.campaign_response.schedule.event_filter.filter_type #=> String, one of "SYSTEM", "ENDPOINT"
    #   resp.campaign_response.schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT"
    #   resp.campaign_response.schedule.is_local_time #=> Boolean
    #   resp.campaign_response.schedule.quiet_time.end #=> String
    #   resp.campaign_response.schedule.quiet_time.start #=> String
    #   resp.campaign_response.schedule.start_time #=> String
    #   resp.campaign_response.schedule.timezone #=> String
    #   resp.campaign_response.segment_id #=> String
    #   resp.campaign_response.segment_version #=> Integer
    #   resp.campaign_response.state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED"
    #   resp.campaign_response.tags #=> Hash
    #   resp.campaign_response.tags["__string"] #=> String
    #   resp.campaign_response.template_configuration.email_template.name #=> String
    #   resp.campaign_response.template_configuration.email_template.version #=> String
    #   resp.campaign_response.template_configuration.push_template.name #=> String
    #   resp.campaign_response.template_configuration.push_template.version #=> String
    #   resp.campaign_response.template_configuration.sms_template.name #=> String
    #   resp.campaign_response.template_configuration.sms_template.version #=> String
    #   resp.campaign_response.template_configuration.voice_template.name #=> String
    #   resp.campaign_response.template_configuration.voice_template.version #=> String
    #   resp.campaign_response.treatment_description #=> String
    #   resp.campaign_response.treatment_name #=> String
    #   resp.campaign_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateCampaign AWS API Documentation
    #
    # @overload update_campaign(params = {})
    # @param [Hash] params ({})
    def update_campaign(params = {}, options = {})
      req = build_request(:update_campaign, params)
      req.send_request(options)
    end

    # Enables the email channel for an application or updates the status and
    # settings of the email channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::EmailChannelRequest] :email_channel_request
    #   Specifies the status and settings of the email channel for an
    #   application.
    #
    # @return [Types::UpdateEmailChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEmailChannelResponse#email_channel_response #email_channel_response} => Types::EmailChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_email_channel({
    #     application_id: "__string", # required
    #     email_channel_request: { # required
    #       configuration_set: "__string",
    #       enabled: false,
    #       from_address: "__string", # required
    #       identity: "__string", # required
    #       role_arn: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.email_channel_response.application_id #=> String
    #   resp.email_channel_response.configuration_set #=> String
    #   resp.email_channel_response.creation_date #=> String
    #   resp.email_channel_response.enabled #=> Boolean
    #   resp.email_channel_response.from_address #=> String
    #   resp.email_channel_response.has_credential #=> Boolean
    #   resp.email_channel_response.id #=> String
    #   resp.email_channel_response.identity #=> String
    #   resp.email_channel_response.is_archived #=> Boolean
    #   resp.email_channel_response.last_modified_by #=> String
    #   resp.email_channel_response.last_modified_date #=> String
    #   resp.email_channel_response.messages_per_second #=> Integer
    #   resp.email_channel_response.platform #=> String
    #   resp.email_channel_response.role_arn #=> String
    #   resp.email_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEmailChannel AWS API Documentation
    #
    # @overload update_email_channel(params = {})
    # @param [Hash] params ({})
    def update_email_channel(params = {}, options = {})
      req = build_request(:update_email_channel, params)
      req.send_request(options)
    end

    # Updates an existing message template for messages that are sent
    # through the email channel.
    #
    # @option params [Boolean] :create_new_version
    #
    # @option params [required, Types::EmailTemplateRequest] :email_template_request
    #   Specifies the content and settings for a message template that can be
    #   used in messages that are sent through the email channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @return [Types::UpdateEmailTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEmailTemplateResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_email_template({
    #     create_new_version: false,
    #     email_template_request: { # required
    #       default_substitutions: "__string",
    #       html_part: "__string",
    #       recommender_id: "__string",
    #       subject: "__string",
    #       tags: {
    #         "__string" => "__string",
    #       },
    #       template_description: "__string",
    #       text_part: "__string",
    #     },
    #     template_name: "__string", # required
    #     version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEmailTemplate AWS API Documentation
    #
    # @overload update_email_template(params = {})
    # @param [Hash] params ({})
    def update_email_template(params = {}, options = {})
      req = build_request(:update_email_template, params)
      req.send_request(options)
    end

    # Creates a new endpoint for an application or updates the settings and
    # attributes of an existing endpoint for an application. You can also
    # use this operation to define custom attributes for an endpoint. If an
    # update includes one or more values for a custom attribute, Amazon
    # Pinpoint replaces (overwrites) any existing values with the new
    # values.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :endpoint_id
    #
    # @option params [required, Types::EndpointRequest] :endpoint_request
    #   Specifies the channel type and other settings for an endpoint.
    #
    # @return [Types::UpdateEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint({
    #     application_id: "__string", # required
    #     endpoint_id: "__string", # required
    #     endpoint_request: { # required
    #       address: "__string",
    #       attributes: {
    #         "__string" => ["__string"],
    #       },
    #       channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #       demographic: {
    #         app_version: "__string",
    #         locale: "__string",
    #         make: "__string",
    #         model: "__string",
    #         model_version: "__string",
    #         platform: "__string",
    #         platform_version: "__string",
    #         timezone: "__string",
    #       },
    #       effective_date: "__string",
    #       endpoint_status: "__string",
    #       location: {
    #         city: "__string",
    #         country: "__string",
    #         latitude: 1.0,
    #         longitude: 1.0,
    #         postal_code: "__string",
    #         region: "__string",
    #       },
    #       metrics: {
    #         "__string" => 1.0,
    #       },
    #       opt_out: "__string",
    #       request_id: "__string",
    #       user: {
    #         user_attributes: {
    #           "__string" => ["__string"],
    #         },
    #         user_id: "__string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEndpoint AWS API Documentation
    #
    # @overload update_endpoint(params = {})
    # @param [Hash] params ({})
    def update_endpoint(params = {}, options = {})
      req = build_request(:update_endpoint, params)
      req.send_request(options)
    end

    # Creates a new batch of endpoints for an application or updates the
    # settings and attributes of a batch of existing endpoints for an
    # application. You can also use this operation to define custom
    # attributes for a batch of endpoints. If an update includes one or more
    # values for a custom attribute, Amazon Pinpoint replaces (overwrites)
    # any existing values with the new values.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::EndpointBatchRequest] :endpoint_batch_request
    #   Specifies a batch of endpoints to create or update and the settings
    #   and attributes to set or change for each endpoint.
    #
    # @return [Types::UpdateEndpointsBatchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointsBatchResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoints_batch({
    #     application_id: "__string", # required
    #     endpoint_batch_request: { # required
    #       item: [ # required
    #         {
    #           address: "__string",
    #           attributes: {
    #             "__string" => ["__string"],
    #           },
    #           channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #           demographic: {
    #             app_version: "__string",
    #             locale: "__string",
    #             make: "__string",
    #             model: "__string",
    #             model_version: "__string",
    #             platform: "__string",
    #             platform_version: "__string",
    #             timezone: "__string",
    #           },
    #           effective_date: "__string",
    #           endpoint_status: "__string",
    #           id: "__string",
    #           location: {
    #             city: "__string",
    #             country: "__string",
    #             latitude: 1.0,
    #             longitude: 1.0,
    #             postal_code: "__string",
    #             region: "__string",
    #           },
    #           metrics: {
    #             "__string" => 1.0,
    #           },
    #           opt_out: "__string",
    #           request_id: "__string",
    #           user: {
    #             user_attributes: {
    #               "__string" => ["__string"],
    #             },
    #             user_id: "__string",
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEndpointsBatch AWS API Documentation
    #
    # @overload update_endpoints_batch(params = {})
    # @param [Hash] params ({})
    def update_endpoints_batch(params = {}, options = {})
      req = build_request(:update_endpoints_batch, params)
      req.send_request(options)
    end

    # Enables the GCM channel for an application or updates the status and
    # settings of the GCM channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::GCMChannelRequest] :gcm_channel_request
    #   Specifies the status and settings of the GCM channel for an
    #   application. This channel enables Amazon Pinpoint to send push
    #   notifications through the Firebase Cloud Messaging (FCM), formerly
    #   Google Cloud Messaging (GCM), service.
    #
    # @return [Types::UpdateGcmChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGcmChannelResponse#gcm_channel_response #gcm_channel_response} => Types::GCMChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gcm_channel({
    #     application_id: "__string", # required
    #     gcm_channel_request: { # required
    #       api_key: "__string", # required
    #       enabled: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gcm_channel_response.application_id #=> String
    #   resp.gcm_channel_response.creation_date #=> String
    #   resp.gcm_channel_response.credential #=> String
    #   resp.gcm_channel_response.enabled #=> Boolean
    #   resp.gcm_channel_response.has_credential #=> Boolean
    #   resp.gcm_channel_response.id #=> String
    #   resp.gcm_channel_response.is_archived #=> Boolean
    #   resp.gcm_channel_response.last_modified_by #=> String
    #   resp.gcm_channel_response.last_modified_date #=> String
    #   resp.gcm_channel_response.platform #=> String
    #   resp.gcm_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateGcmChannel AWS API Documentation
    #
    # @overload update_gcm_channel(params = {})
    # @param [Hash] params ({})
    def update_gcm_channel(params = {}, options = {})
      req = build_request(:update_gcm_channel, params)
      req.send_request(options)
    end

    # Updates the configuration and other settings for a journey.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :journey_id
    #
    # @option params [required, Types::WriteJourneyRequest] :write_journey_request
    #   Specifies the configuration and other settings for a journey.
    #
    # @return [Types::UpdateJourneyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJourneyResponse#journey_response #journey_response} => Types::JourneyResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_journey({
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #     write_journey_request: { # required
    #       activities: {
    #         "__string" => {
    #           custom: {
    #             delivery_uri: "__string",
    #             endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #             message_config: {
    #               data: "__string",
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string",
    #           },
    #           conditional_split: {
    #             condition: {
    #               conditions: [
    #                 {
    #                   event_condition: {
    #                     dimensions: { # required
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         },
    #                       },
    #                     },
    #                     message_activity: "__string",
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                         recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                       },
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0,
    #                       },
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       },
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                   },
    #                 },
    #               ],
    #               operator: "ALL", # accepts ALL, ANY
    #             },
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string",
    #             },
    #             false_activity: "__string",
    #             true_activity: "__string",
    #           },
    #           description: "__string",
    #           email: {
    #             message_config: {
    #               from_address: "__string",
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string",
    #           },
    #           holdout: {
    #             next_activity: "__string",
    #             percentage: 1, # required
    #           },
    #           multi_condition: {
    #             branches: [
    #               {
    #                 condition: {
    #                   event_condition: {
    #                     dimensions: { # required
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                       },
    #                       event_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         },
    #                       },
    #                     },
    #                     message_activity: "__string",
    #                   },
    #                   segment_condition: {
    #                     segment_id: "__string", # required
    #                   },
    #                   segment_dimensions: {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                         recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                       },
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0,
    #                       },
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       },
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                   },
    #                 },
    #                 next_activity: "__string",
    #               },
    #             ],
    #             default_activity: "__string",
    #             evaluation_wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string",
    #             },
    #           },
    #           push: {
    #             message_config: {
    #               time_to_live: "__string",
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string",
    #           },
    #           random_split: {
    #             branches: [
    #               {
    #                 next_activity: "__string",
    #                 percentage: 1,
    #               },
    #             ],
    #           },
    #           sms: {
    #             message_config: {
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               sender_id: "__string",
    #             },
    #             next_activity: "__string",
    #             template_name: "__string",
    #             template_version: "__string",
    #           },
    #           wait: {
    #             next_activity: "__string",
    #             wait_time: {
    #               wait_for: "__string",
    #               wait_until: "__string",
    #             },
    #           },
    #         },
    #       },
    #       creation_date: "__string",
    #       last_modified_date: "__string",
    #       limits: {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #       },
    #       local_time: false,
    #       name: "__string", # required
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string",
    #       },
    #       refresh_frequency: "__string",
    #       schedule: {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: "__string",
    #       },
    #       start_activity: "__string",
    #       start_condition: {
    #         description: "__string",
    #         segment_start_condition: {
    #           segment_id: "__string", # required
    #         },
    #       },
    #       state: "DRAFT", # accepts DRAFT, ACTIVE, COMPLETED, CANCELLED, CLOSED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.journey_response.activities #=> Hash
    #   resp.journey_response.activities["__string"].custom.delivery_uri #=> String
    #   resp.journey_response.activities["__string"].custom.endpoint_types #=> Array
    #   resp.journey_response.activities["__string"].custom.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.journey_response.activities["__string"].custom.message_config.data #=> String
    #   resp.journey_response.activities["__string"].custom.next_activity #=> String
    #   resp.journey_response.activities["__string"].custom.template_name #=> String
    #   resp.journey_response.activities["__string"].custom.template_version #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.operator #=> String, one of "ALL", "ANY"
    #   resp.journey_response.activities["__string"].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.journey_response.activities["__string"].conditional_split.false_activity #=> String
    #   resp.journey_response.activities["__string"].conditional_split.true_activity #=> String
    #   resp.journey_response.activities["__string"].description #=> String
    #   resp.journey_response.activities["__string"].email.message_config.from_address #=> String
    #   resp.journey_response.activities["__string"].email.next_activity #=> String
    #   resp.journey_response.activities["__string"].email.template_name #=> String
    #   resp.journey_response.activities["__string"].email.template_version #=> String
    #   resp.journey_response.activities["__string"].holdout.next_activity #=> String
    #   resp.journey_response.activities["__string"].holdout.percentage #=> Integer
    #   resp.journey_response.activities["__string"].multi_condition.branches #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.message_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_condition.segment_id #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].next_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.default_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.evaluation_wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].multi_condition.evaluation_wait_time.wait_until #=> String
    #   resp.journey_response.activities["__string"].push.message_config.time_to_live #=> String
    #   resp.journey_response.activities["__string"].push.next_activity #=> String
    #   resp.journey_response.activities["__string"].push.template_name #=> String
    #   resp.journey_response.activities["__string"].push.template_version #=> String
    #   resp.journey_response.activities["__string"].random_split.branches #=> Array
    #   resp.journey_response.activities["__string"].random_split.branches[0].next_activity #=> String
    #   resp.journey_response.activities["__string"].random_split.branches[0].percentage #=> Integer
    #   resp.journey_response.activities["__string"].sms.message_config.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.journey_response.activities["__string"].sms.message_config.sender_id #=> String
    #   resp.journey_response.activities["__string"].sms.next_activity #=> String
    #   resp.journey_response.activities["__string"].sms.template_name #=> String
    #   resp.journey_response.activities["__string"].sms.template_version #=> String
    #   resp.journey_response.activities["__string"].wait.next_activity #=> String
    #   resp.journey_response.activities["__string"].wait.wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].wait.wait_time.wait_until #=> String
    #   resp.journey_response.application_id #=> String
    #   resp.journey_response.creation_date #=> String
    #   resp.journey_response.id #=> String
    #   resp.journey_response.last_modified_date #=> String
    #   resp.journey_response.limits.daily_cap #=> Integer
    #   resp.journey_response.limits.endpoint_reentry_cap #=> Integer
    #   resp.journey_response.limits.messages_per_second #=> Integer
    #   resp.journey_response.local_time #=> Boolean
    #   resp.journey_response.name #=> String
    #   resp.journey_response.quiet_time.end #=> String
    #   resp.journey_response.quiet_time.start #=> String
    #   resp.journey_response.refresh_frequency #=> String
    #   resp.journey_response.schedule.end_time #=> Time
    #   resp.journey_response.schedule.start_time #=> Time
    #   resp.journey_response.schedule.timezone #=> String
    #   resp.journey_response.start_activity #=> String
    #   resp.journey_response.start_condition.description #=> String
    #   resp.journey_response.start_condition.segment_start_condition.segment_id #=> String
    #   resp.journey_response.state #=> String, one of "DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED"
    #   resp.journey_response.tags #=> Hash
    #   resp.journey_response.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateJourney AWS API Documentation
    #
    # @overload update_journey(params = {})
    # @param [Hash] params ({})
    def update_journey(params = {}, options = {})
      req = build_request(:update_journey, params)
      req.send_request(options)
    end

    # Cancels (stops) an active journey.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :journey_id
    #
    # @option params [required, Types::JourneyStateRequest] :journey_state_request
    #   Changes the status of a journey.
    #
    # @return [Types::UpdateJourneyStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJourneyStateResponse#journey_response #journey_response} => Types::JourneyResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_journey_state({
    #     application_id: "__string", # required
    #     journey_id: "__string", # required
    #     journey_state_request: { # required
    #       state: "DRAFT", # accepts DRAFT, ACTIVE, COMPLETED, CANCELLED, CLOSED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.journey_response.activities #=> Hash
    #   resp.journey_response.activities["__string"].custom.delivery_uri #=> String
    #   resp.journey_response.activities["__string"].custom.endpoint_types #=> Array
    #   resp.journey_response.activities["__string"].custom.endpoint_types[0] #=> String, one of "PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM"
    #   resp.journey_response.activities["__string"].custom.message_config.data #=> String
    #   resp.journey_response.activities["__string"].custom.next_activity #=> String
    #   resp.journey_response.activities["__string"].custom.template_name #=> String
    #   resp.journey_response.activities["__string"].custom.template_version #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.country.values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].conditional_split.condition.conditions[0].segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].conditional_split.condition.operator #=> String, one of "ALL", "ANY"
    #   resp.journey_response.activities["__string"].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.journey_response.activities["__string"].conditional_split.false_activity #=> String
    #   resp.journey_response.activities["__string"].conditional_split.true_activity #=> String
    #   resp.journey_response.activities["__string"].description #=> String
    #   resp.journey_response.activities["__string"].email.message_config.from_address #=> String
    #   resp.journey_response.activities["__string"].email.next_activity #=> String
    #   resp.journey_response.activities["__string"].email.template_name #=> String
    #   resp.journey_response.activities["__string"].email.template_version #=> String
    #   resp.journey_response.activities["__string"].holdout.next_activity #=> String
    #   resp.journey_response.activities["__string"].holdout.percentage #=> Integer
    #   resp.journey_response.activities["__string"].multi_condition.branches #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.event_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.event_condition.message_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_condition.segment_id #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.app_version.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.channel.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.device_type.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.make.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.model.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.demographic.platform.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.country.values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.metrics["__string"].value #=> Float
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes #=> Hash
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values #=> Array
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].condition.segment_dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.journey_response.activities["__string"].multi_condition.branches[0].next_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.default_activity #=> String
    #   resp.journey_response.activities["__string"].multi_condition.evaluation_wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].multi_condition.evaluation_wait_time.wait_until #=> String
    #   resp.journey_response.activities["__string"].push.message_config.time_to_live #=> String
    #   resp.journey_response.activities["__string"].push.next_activity #=> String
    #   resp.journey_response.activities["__string"].push.template_name #=> String
    #   resp.journey_response.activities["__string"].push.template_version #=> String
    #   resp.journey_response.activities["__string"].random_split.branches #=> Array
    #   resp.journey_response.activities["__string"].random_split.branches[0].next_activity #=> String
    #   resp.journey_response.activities["__string"].random_split.branches[0].percentage #=> Integer
    #   resp.journey_response.activities["__string"].sms.message_config.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.journey_response.activities["__string"].sms.message_config.sender_id #=> String
    #   resp.journey_response.activities["__string"].sms.next_activity #=> String
    #   resp.journey_response.activities["__string"].sms.template_name #=> String
    #   resp.journey_response.activities["__string"].sms.template_version #=> String
    #   resp.journey_response.activities["__string"].wait.next_activity #=> String
    #   resp.journey_response.activities["__string"].wait.wait_time.wait_for #=> String
    #   resp.journey_response.activities["__string"].wait.wait_time.wait_until #=> String
    #   resp.journey_response.application_id #=> String
    #   resp.journey_response.creation_date #=> String
    #   resp.journey_response.id #=> String
    #   resp.journey_response.last_modified_date #=> String
    #   resp.journey_response.limits.daily_cap #=> Integer
    #   resp.journey_response.limits.endpoint_reentry_cap #=> Integer
    #   resp.journey_response.limits.messages_per_second #=> Integer
    #   resp.journey_response.local_time #=> Boolean
    #   resp.journey_response.name #=> String
    #   resp.journey_response.quiet_time.end #=> String
    #   resp.journey_response.quiet_time.start #=> String
    #   resp.journey_response.refresh_frequency #=> String
    #   resp.journey_response.schedule.end_time #=> Time
    #   resp.journey_response.schedule.start_time #=> Time
    #   resp.journey_response.schedule.timezone #=> String
    #   resp.journey_response.start_activity #=> String
    #   resp.journey_response.start_condition.description #=> String
    #   resp.journey_response.start_condition.segment_start_condition.segment_id #=> String
    #   resp.journey_response.state #=> String, one of "DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED"
    #   resp.journey_response.tags #=> Hash
    #   resp.journey_response.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateJourneyState AWS API Documentation
    #
    # @overload update_journey_state(params = {})
    # @param [Hash] params ({})
    def update_journey_state(params = {}, options = {})
      req = build_request(:update_journey_state, params)
      req.send_request(options)
    end

    # Updates an existing message template for messages that are sent
    # through a push notification channel.
    #
    # @option params [Boolean] :create_new_version
    #
    # @option params [required, Types::PushNotificationTemplateRequest] :push_notification_template_request
    #   Specifies the content and settings for a message template that can be
    #   used in messages that are sent through a push notification channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @return [Types::UpdatePushTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePushTemplateResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_push_template({
    #     create_new_version: false,
    #     push_notification_template_request: { # required
    #       adm: {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       },
    #       apns: {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         media_url: "__string",
    #         raw_content: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       },
    #       baidu: {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       },
    #       default: {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       },
    #       default_substitutions: "__string",
    #       gcm: {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       },
    #       recommender_id: "__string",
    #       tags: {
    #         "__string" => "__string",
    #       },
    #       template_description: "__string",
    #     },
    #     template_name: "__string", # required
    #     version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdatePushTemplate AWS API Documentation
    #
    # @overload update_push_template(params = {})
    # @param [Hash] params ({})
    def update_push_template(params = {}, options = {})
      req = build_request(:update_push_template, params)
      req.send_request(options)
    end

    # Updates an Amazon Pinpoint configuration for a recommender model.
    #
    # @option params [required, String] :recommender_id
    #
    # @option params [required, Types::UpdateRecommenderConfiguration] :update_recommender_configuration
    #   Specifies Amazon Pinpoint configuration settings for retrieving and
    #   processing recommendation data from a recommender model.
    #
    # @return [Types::UpdateRecommenderConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRecommenderConfigurationResponse#recommender_configuration_response #recommender_configuration_response} => Types::RecommenderConfigurationResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recommender_configuration({
    #     recommender_id: "__string", # required
    #     update_recommender_configuration: { # required
    #       attributes: {
    #         "__string" => "__string",
    #       },
    #       description: "__string",
    #       name: "__string",
    #       recommendation_provider_id_type: "__string",
    #       recommendation_provider_role_arn: "__string", # required
    #       recommendation_provider_uri: "__string", # required
    #       recommendation_transformer_uri: "__string",
    #       recommendations_display_name: "__string",
    #       recommendations_per_message: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.recommender_configuration_response.attributes #=> Hash
    #   resp.recommender_configuration_response.attributes["__string"] #=> String
    #   resp.recommender_configuration_response.creation_date #=> String
    #   resp.recommender_configuration_response.description #=> String
    #   resp.recommender_configuration_response.id #=> String
    #   resp.recommender_configuration_response.last_modified_date #=> String
    #   resp.recommender_configuration_response.name #=> String
    #   resp.recommender_configuration_response.recommendation_provider_id_type #=> String
    #   resp.recommender_configuration_response.recommendation_provider_role_arn #=> String
    #   resp.recommender_configuration_response.recommendation_provider_uri #=> String
    #   resp.recommender_configuration_response.recommendation_transformer_uri #=> String
    #   resp.recommender_configuration_response.recommendations_display_name #=> String
    #   resp.recommender_configuration_response.recommendations_per_message #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateRecommenderConfiguration AWS API Documentation
    #
    # @overload update_recommender_configuration(params = {})
    # @param [Hash] params ({})
    def update_recommender_configuration(params = {}, options = {})
      req = build_request(:update_recommender_configuration, params)
      req.send_request(options)
    end

    # Creates a new segment for an application or updates the configuration,
    # dimension, and other settings for an existing segment that's
    # associated with an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :segment_id
    #
    # @option params [required, Types::WriteSegmentRequest] :write_segment_request
    #   Specifies the configuration, dimension, and other settings for a
    #   segment. A WriteSegmentRequest object can include a Dimensions object
    #   or a SegmentGroups object, but not both.
    #
    # @return [Types::UpdateSegmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSegmentResponse#segment_response #segment_response} => Types::SegmentResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_segment({
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #     write_segment_request: { # required
    #       dimensions: {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #             recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #           },
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           gps_point: {
    #             coordinates: { # required
    #               latitude: 1.0, # required
    #               longitude: 1.0, # required
    #             },
    #             range_in_kilometers: 1.0,
    #           },
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string", # required
    #             value: 1.0, # required
    #           },
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #         },
    #       },
    #       name: "__string",
    #       segment_groups: {
    #         groups: [
    #           {
    #             dimensions: [
    #               {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                     recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                   },
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0,
    #                   },
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   },
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #               },
    #             ],
    #             source_segments: [
    #               {
    #                 id: "__string", # required
    #                 version: 1,
    #               },
    #             ],
    #             source_type: "ALL", # accepts ALL, ANY, NONE
    #             type: "ALL", # accepts ALL, ANY, NONE
    #           },
    #         ],
    #         include: "ALL", # accepts ALL, ANY, NONE
    #       },
    #       tags: {
    #         "__string" => "__string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_response.application_id #=> String
    #   resp.segment_response.arn #=> String
    #   resp.segment_response.creation_date #=> String
    #   resp.segment_response.dimensions.attributes #=> Hash
    #   resp.segment_response.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.attributes["__string"].values[0] #=> String
    #   resp.segment_response.dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.app_version.values #=> Array
    #   resp.segment_response.dimensions.demographic.app_version.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.channel.values #=> Array
    #   resp.segment_response.dimensions.demographic.channel.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.device_type.values #=> Array
    #   resp.segment_response.dimensions.demographic.device_type.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.make.values #=> Array
    #   resp.segment_response.dimensions.demographic.make.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.model.values #=> Array
    #   resp.segment_response.dimensions.demographic.model.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.platform.values #=> Array
    #   resp.segment_response.dimensions.demographic.platform.values[0] #=> String
    #   resp.segment_response.dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.location.country.values #=> Array
    #   resp.segment_response.dimensions.location.country.values[0] #=> String
    #   resp.segment_response.dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.segment_response.dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.segment_response.dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.segment_response.dimensions.metrics #=> Hash
    #   resp.segment_response.dimensions.metrics["__string"].comparison_operator #=> String
    #   resp.segment_response.dimensions.metrics["__string"].value #=> Float
    #   resp.segment_response.dimensions.user_attributes #=> Hash
    #   resp.segment_response.dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.user_attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.id #=> String
    #   resp.segment_response.import_definition.channel_counts #=> Hash
    #   resp.segment_response.import_definition.channel_counts["__string"] #=> Integer
    #   resp.segment_response.import_definition.external_id #=> String
    #   resp.segment_response.import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segment_response.import_definition.role_arn #=> String
    #   resp.segment_response.import_definition.s3_url #=> String
    #   resp.segment_response.import_definition.size #=> Integer
    #   resp.segment_response.last_modified_date #=> String
    #   resp.segment_response.name #=> String
    #   resp.segment_response.segment_groups.groups #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].attributes["__string"].values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.app_version.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.channel.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.device_type.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.make.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.model.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].demographic.platform.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.country.values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.latitude #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.coordinates.longitude #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].location.gps_point.range_in_kilometers #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics["__string"].comparison_operator #=> String
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].metrics["__string"].value #=> Float
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes #=> Hash
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].values #=> Array
    #   resp.segment_response.segment_groups.groups[0].dimensions[0].user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.segment_groups.groups[0].source_segments #=> Array
    #   resp.segment_response.segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.segment_response.segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.segment_response.segment_groups.groups[0].source_type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_groups.groups[0].type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_groups.include #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_response.segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segment_response.tags #=> Hash
    #   resp.segment_response.tags["__string"] #=> String
    #   resp.segment_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSegment AWS API Documentation
    #
    # @overload update_segment(params = {})
    # @param [Hash] params ({})
    def update_segment(params = {}, options = {})
      req = build_request(:update_segment, params)
      req.send_request(options)
    end

    # Enables the SMS channel for an application or updates the status and
    # settings of the SMS channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::SMSChannelRequest] :sms_channel_request
    #   Specifies the status and settings of the SMS channel for an
    #   application.
    #
    # @return [Types::UpdateSmsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSmsChannelResponse#sms_channel_response #sms_channel_response} => Types::SMSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sms_channel({
    #     application_id: "__string", # required
    #     sms_channel_request: { # required
    #       enabled: false,
    #       sender_id: "__string",
    #       short_code: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.sms_channel_response.application_id #=> String
    #   resp.sms_channel_response.creation_date #=> String
    #   resp.sms_channel_response.enabled #=> Boolean
    #   resp.sms_channel_response.has_credential #=> Boolean
    #   resp.sms_channel_response.id #=> String
    #   resp.sms_channel_response.is_archived #=> Boolean
    #   resp.sms_channel_response.last_modified_by #=> String
    #   resp.sms_channel_response.last_modified_date #=> String
    #   resp.sms_channel_response.platform #=> String
    #   resp.sms_channel_response.promotional_messages_per_second #=> Integer
    #   resp.sms_channel_response.sender_id #=> String
    #   resp.sms_channel_response.short_code #=> String
    #   resp.sms_channel_response.transactional_messages_per_second #=> Integer
    #   resp.sms_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSmsChannel AWS API Documentation
    #
    # @overload update_sms_channel(params = {})
    # @param [Hash] params ({})
    def update_sms_channel(params = {}, options = {})
      req = build_request(:update_sms_channel, params)
      req.send_request(options)
    end

    # Updates an existing message template for messages that are sent
    # through the SMS channel.
    #
    # @option params [Boolean] :create_new_version
    #
    # @option params [required, Types::SMSTemplateRequest] :sms_template_request
    #   Specifies the content and settings for a message template that can be
    #   used in text messages that are sent through the SMS channel.
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @return [Types::UpdateSmsTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSmsTemplateResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sms_template({
    #     create_new_version: false,
    #     sms_template_request: { # required
    #       body: "__string",
    #       default_substitutions: "__string",
    #       recommender_id: "__string",
    #       tags: {
    #         "__string" => "__string",
    #       },
    #       template_description: "__string",
    #     },
    #     template_name: "__string", # required
    #     version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSmsTemplate AWS API Documentation
    #
    # @overload update_sms_template(params = {})
    # @param [Hash] params ({})
    def update_sms_template(params = {}, options = {})
      req = build_request(:update_sms_template, params)
      req.send_request(options)
    end

    # Changes the status of a specific version of a message template to
    # *active*.
    #
    # @option params [required, Types::TemplateActiveVersionRequest] :template_active_version_request
    #   Specifies which version of a message template to use as the active
    #   version of the template.
    #
    # @option params [required, String] :template_name
    #
    # @option params [required, String] :template_type
    #
    # @return [Types::UpdateTemplateActiveVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplateActiveVersionResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_active_version({
    #     template_active_version_request: { # required
    #       version: "__string",
    #     },
    #     template_name: "__string", # required
    #     template_type: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateTemplateActiveVersion AWS API Documentation
    #
    # @overload update_template_active_version(params = {})
    # @param [Hash] params ({})
    def update_template_active_version(params = {}, options = {})
      req = build_request(:update_template_active_version, params)
      req.send_request(options)
    end

    # Enables the voice channel for an application or updates the status and
    # settings of the voice channel for an application.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::VoiceChannelRequest] :voice_channel_request
    #   Specifies the status and settings of the voice channel for an
    #   application.
    #
    # @return [Types::UpdateVoiceChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVoiceChannelResponse#voice_channel_response #voice_channel_response} => Types::VoiceChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_voice_channel({
    #     application_id: "__string", # required
    #     voice_channel_request: { # required
    #       enabled: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_channel_response.application_id #=> String
    #   resp.voice_channel_response.creation_date #=> String
    #   resp.voice_channel_response.enabled #=> Boolean
    #   resp.voice_channel_response.has_credential #=> Boolean
    #   resp.voice_channel_response.id #=> String
    #   resp.voice_channel_response.is_archived #=> Boolean
    #   resp.voice_channel_response.last_modified_by #=> String
    #   resp.voice_channel_response.last_modified_date #=> String
    #   resp.voice_channel_response.platform #=> String
    #   resp.voice_channel_response.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateVoiceChannel AWS API Documentation
    #
    # @overload update_voice_channel(params = {})
    # @param [Hash] params ({})
    def update_voice_channel(params = {}, options = {})
      req = build_request(:update_voice_channel, params)
      req.send_request(options)
    end

    # Updates an existing message template for messages that are sent
    # through the voice channel.
    #
    # @option params [Boolean] :create_new_version
    #
    # @option params [required, String] :template_name
    #
    # @option params [String] :version
    #
    # @option params [required, Types::VoiceTemplateRequest] :voice_template_request
    #   Specifies the content and settings for a message template that can be
    #   used in messages that are sent through the voice channel.
    #
    # @return [Types::UpdateVoiceTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVoiceTemplateResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_voice_template({
    #     create_new_version: false,
    #     template_name: "__string", # required
    #     version: "__string",
    #     voice_template_request: { # required
    #       body: "__string",
    #       default_substitutions: "__string",
    #       language_code: "__string",
    #       tags: {
    #         "__string" => "__string",
    #       },
    #       template_description: "__string",
    #       voice_id: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateVoiceTemplate AWS API Documentation
    #
    # @overload update_voice_template(params = {})
    # @param [Hash] params ({})
    def update_voice_template(params = {}, options = {})
      req = build_request(:update_voice_template, params)
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
      context[:gem_name] = 'aws-sdk-pinpoint'
      context[:gem_version] = '1.41.0'
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
