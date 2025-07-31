# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::ConnectCampaignsV2
  # An API client for ConnectCampaignsV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ConnectCampaignsV2::Client.new(
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

    @identifier = :connectcampaignsv2

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
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::ConnectCampaignsV2::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
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
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
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
    #   @option options [String] :account_id
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
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
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
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
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
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
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
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
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
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::ConnectCampaignsV2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ConnectCampaignsV2::EndpointParameters`.
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a campaign for the specified Amazon Connect account. This API
    # is idempotent.
    #
    # @option params [required, String] :name
    #   The name of an Amazon Connect Campaign name.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @option params [required, Types::ChannelSubtypeConfig] :channel_subtype_config
    #   Campaign Channel Subtype config
    #
    # @option params [Types::Source] :source
    #   Source of the campaign
    #
    # @option params [String] :connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    #
    # @option params [Types::Schedule] :schedule
    #   Campaign schedule
    #
    # @option params [Types::CommunicationTimeConfig] :communication_time_config
    #   Campaign communication time config
    #
    # @option params [Types::CommunicationLimitsConfig] :communication_limits_override
    #   Communication limits config
    #
    # @option params [Hash<String,String>] :tags
    #   Tag map with key and value.
    #
    # @return [Types::CreateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCampaignResponse#id #id} => String
    #   * {Types::CreateCampaignResponse#arn #arn} => String
    #   * {Types::CreateCampaignResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_campaign({
    #     name: "CampaignName", # required
    #     connect_instance_id: "InstanceId", # required
    #     channel_subtype_config: { # required
    #       telephony: {
    #         capacity: 1.0,
    #         connect_queue_id: "QueueId",
    #         outbound_mode: { # required
    #           progressive: {
    #             bandwidth_allocation: 1.0, # required
    #           },
    #           predictive: {
    #             bandwidth_allocation: 1.0, # required
    #           },
    #           agentless: {
    #           },
    #         },
    #         default_outbound_config: { # required
    #           connect_contact_flow_id: "ContactFlowId", # required
    #           connect_source_phone_number: "SourcePhoneNumber",
    #           answer_machine_detection_config: {
    #             enable_answer_machine_detection: false, # required
    #             await_answer_machine_prompt: false,
    #           },
    #         },
    #       },
    #       sms: {
    #         capacity: 1.0,
    #         outbound_mode: { # required
    #           agentless: {
    #           },
    #         },
    #         default_outbound_config: { # required
    #           connect_source_phone_number_arn: "Arn", # required
    #           wisdom_template_arn: "Arn", # required
    #         },
    #       },
    #       email: {
    #         capacity: 1.0,
    #         outbound_mode: { # required
    #           agentless: {
    #           },
    #         },
    #         default_outbound_config: { # required
    #           connect_source_email_address: "EmailAddress", # required
    #           source_email_address_display_name: "EmailDisplayName",
    #           wisdom_template_arn: "Arn", # required
    #         },
    #       },
    #     },
    #     source: {
    #       customer_profiles_segment_arn: "Arn",
    #       event_trigger: {
    #         customer_profiles_domain_arn: "Arn",
    #       },
    #     },
    #     connect_campaign_flow_arn: "Arn",
    #     schedule: {
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #       refresh_frequency: "Iso8601Duration",
    #     },
    #     communication_time_config: {
    #       local_time_zone_config: { # required
    #         default_time_zone: "TimeZone",
    #         local_time_zone_detection: ["ZIP_CODE"], # accepts ZIP_CODE, AREA_CODE
    #       },
    #       telephony: {
    #         open_hours: { # required
    #           daily_hours: {
    #             "MONDAY" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               },
    #             ],
    #           },
    #         },
    #         restricted_periods: {
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             },
    #           ],
    #         },
    #       },
    #       sms: {
    #         open_hours: { # required
    #           daily_hours: {
    #             "MONDAY" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               },
    #             ],
    #           },
    #         },
    #         restricted_periods: {
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             },
    #           ],
    #         },
    #       },
    #       email: {
    #         open_hours: { # required
    #           daily_hours: {
    #             "MONDAY" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               },
    #             ],
    #           },
    #         },
    #         restricted_periods: {
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     communication_limits_override: {
    #       all_channel_subtypes: {
    #         communication_limits_list: [
    #           {
    #             max_count_per_recipient: 1, # required
    #             frequency: 1, # required
    #             unit: "DAY", # required, accepts DAY
    #           },
    #         ],
    #       },
    #       instance_limits_handling: "OPT_IN", # accepts OPT_IN, OPT_OUT
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CreateCampaign AWS API Documentation
    #
    # @overload create_campaign(params = {})
    # @param [Hash] params ({})
    def create_campaign(params = {}, options = {})
      req = build_request(:create_campaign, params)
      req.send_request(options)
    end

    # Deletes a campaign from the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteCampaign AWS API Documentation
    #
    # @overload delete_campaign(params = {})
    # @param [Hash] params ({})
    def delete_campaign(params = {}, options = {})
      req = build_request(:delete_campaign, params)
      req.send_request(options)
    end

    # Deletes the channel subtype config of a campaign. This API is
    # idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, String] :channel_subtype
    #   The type of campaign channel subtype.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign_channel_subtype_config({
    #     id: "CampaignId", # required
    #     channel_subtype: "TELEPHONY", # required, accepts TELEPHONY, SMS, EMAIL
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteCampaignChannelSubtypeConfig AWS API Documentation
    #
    # @overload delete_campaign_channel_subtype_config(params = {})
    # @param [Hash] params ({})
    def delete_campaign_channel_subtype_config(params = {}, options = {})
      req = build_request(:delete_campaign_channel_subtype_config, params)
      req.send_request(options)
    end

    # Deletes the communication limits config for a campaign. This API is
    # idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, String] :config
    #   The type of campaign communication limits config.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign_communication_limits({
    #     id: "CampaignId", # required
    #     config: "ALL_CHANNEL_SUBTYPES", # required, accepts ALL_CHANNEL_SUBTYPES
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteCampaignCommunicationLimits AWS API Documentation
    #
    # @overload delete_campaign_communication_limits(params = {})
    # @param [Hash] params ({})
    def delete_campaign_communication_limits(params = {}, options = {})
      req = build_request(:delete_campaign_communication_limits, params)
      req.send_request(options)
    end

    # Deletes the communication time config for a campaign. This API is
    # idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, String] :config
    #   The type of campaign communication time config
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign_communication_time({
    #     id: "CampaignId", # required
    #     config: "TELEPHONY", # required, accepts TELEPHONY, SMS, EMAIL
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteCampaignCommunicationTime AWS API Documentation
    #
    # @overload delete_campaign_communication_time(params = {})
    # @param [Hash] params ({})
    def delete_campaign_communication_time(params = {}, options = {})
      req = build_request(:delete_campaign_communication_time, params)
      req.send_request(options)
    end

    # Deletes a connect instance config from the specified AWS account.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @option params [String] :campaign_deletion_policy
    #   Enumeration of the policies to enact on existing campaigns during
    #   instance config deletion
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connect_instance_config({
    #     connect_instance_id: "InstanceId", # required
    #     campaign_deletion_policy: "RETAIN_ALL", # accepts RETAIN_ALL, DELETE_ALL
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteConnectInstanceConfig AWS API Documentation
    #
    # @overload delete_connect_instance_config(params = {})
    # @param [Hash] params ({})
    def delete_connect_instance_config(params = {}, options = {})
      req = build_request(:delete_connect_instance_config, params)
      req.send_request(options)
    end

    # Delete the integration for the specified Amazon Connect instance.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @option params [required, Types::IntegrationIdentifier] :integration_identifier
    #   Integration identifier for Connect instance
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connect_instance_integration({
    #     connect_instance_id: "InstanceId", # required
    #     integration_identifier: { # required
    #       customer_profiles: {
    #         domain_arn: "Arn", # required
    #       },
    #       q_connect: {
    #         knowledge_base_arn: "Arn", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteConnectInstanceIntegration AWS API Documentation
    #
    # @overload delete_connect_instance_integration(params = {})
    # @param [Hash] params ({})
    def delete_connect_instance_integration(params = {}, options = {})
      req = build_request(:delete_connect_instance_integration, params)
      req.send_request(options)
    end

    # Delete the Connect Campaigns onboarding job for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance_onboarding_job({
    #     connect_instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteInstanceOnboardingJob AWS API Documentation
    #
    # @overload delete_instance_onboarding_job(params = {})
    # @param [Hash] params ({})
    def delete_instance_onboarding_job(params = {}, options = {})
      req = build_request(:delete_instance_onboarding_job, params)
      req.send_request(options)
    end

    # Describes the specific campaign.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Types::DescribeCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCampaignResponse#campaign #campaign} => Types::Campaign
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign.id #=> String
    #   resp.campaign.arn #=> String
    #   resp.campaign.name #=> String
    #   resp.campaign.connect_instance_id #=> String
    #   resp.campaign.channel_subtype_config.telephony.capacity #=> Float
    #   resp.campaign.channel_subtype_config.telephony.connect_queue_id #=> String
    #   resp.campaign.channel_subtype_config.telephony.outbound_mode.progressive.bandwidth_allocation #=> Float
    #   resp.campaign.channel_subtype_config.telephony.outbound_mode.predictive.bandwidth_allocation #=> Float
    #   resp.campaign.channel_subtype_config.telephony.default_outbound_config.connect_contact_flow_id #=> String
    #   resp.campaign.channel_subtype_config.telephony.default_outbound_config.connect_source_phone_number #=> String
    #   resp.campaign.channel_subtype_config.telephony.default_outbound_config.answer_machine_detection_config.enable_answer_machine_detection #=> Boolean
    #   resp.campaign.channel_subtype_config.telephony.default_outbound_config.answer_machine_detection_config.await_answer_machine_prompt #=> Boolean
    #   resp.campaign.channel_subtype_config.sms.capacity #=> Float
    #   resp.campaign.channel_subtype_config.sms.default_outbound_config.connect_source_phone_number_arn #=> String
    #   resp.campaign.channel_subtype_config.sms.default_outbound_config.wisdom_template_arn #=> String
    #   resp.campaign.channel_subtype_config.email.capacity #=> Float
    #   resp.campaign.channel_subtype_config.email.default_outbound_config.connect_source_email_address #=> String
    #   resp.campaign.channel_subtype_config.email.default_outbound_config.source_email_address_display_name #=> String
    #   resp.campaign.channel_subtype_config.email.default_outbound_config.wisdom_template_arn #=> String
    #   resp.campaign.source.customer_profiles_segment_arn #=> String
    #   resp.campaign.source.event_trigger.customer_profiles_domain_arn #=> String
    #   resp.campaign.connect_campaign_flow_arn #=> String
    #   resp.campaign.schedule.start_time #=> Time
    #   resp.campaign.schedule.end_time #=> Time
    #   resp.campaign.schedule.refresh_frequency #=> String
    #   resp.campaign.communication_time_config.local_time_zone_config.default_time_zone #=> String
    #   resp.campaign.communication_time_config.local_time_zone_config.local_time_zone_detection #=> Array
    #   resp.campaign.communication_time_config.local_time_zone_config.local_time_zone_detection[0] #=> String, one of "ZIP_CODE", "AREA_CODE"
    #   resp.campaign.communication_time_config.telephony.open_hours.daily_hours #=> Hash
    #   resp.campaign.communication_time_config.telephony.open_hours.daily_hours["DayOfWeek"] #=> Array
    #   resp.campaign.communication_time_config.telephony.open_hours.daily_hours["DayOfWeek"][0].start_time #=> String
    #   resp.campaign.communication_time_config.telephony.open_hours.daily_hours["DayOfWeek"][0].end_time #=> String
    #   resp.campaign.communication_time_config.telephony.restricted_periods.restricted_period_list #=> Array
    #   resp.campaign.communication_time_config.telephony.restricted_periods.restricted_period_list[0].name #=> String
    #   resp.campaign.communication_time_config.telephony.restricted_periods.restricted_period_list[0].start_date #=> String
    #   resp.campaign.communication_time_config.telephony.restricted_periods.restricted_period_list[0].end_date #=> String
    #   resp.campaign.communication_time_config.sms.open_hours.daily_hours #=> Hash
    #   resp.campaign.communication_time_config.sms.open_hours.daily_hours["DayOfWeek"] #=> Array
    #   resp.campaign.communication_time_config.sms.open_hours.daily_hours["DayOfWeek"][0].start_time #=> String
    #   resp.campaign.communication_time_config.sms.open_hours.daily_hours["DayOfWeek"][0].end_time #=> String
    #   resp.campaign.communication_time_config.sms.restricted_periods.restricted_period_list #=> Array
    #   resp.campaign.communication_time_config.sms.restricted_periods.restricted_period_list[0].name #=> String
    #   resp.campaign.communication_time_config.sms.restricted_periods.restricted_period_list[0].start_date #=> String
    #   resp.campaign.communication_time_config.sms.restricted_periods.restricted_period_list[0].end_date #=> String
    #   resp.campaign.communication_time_config.email.open_hours.daily_hours #=> Hash
    #   resp.campaign.communication_time_config.email.open_hours.daily_hours["DayOfWeek"] #=> Array
    #   resp.campaign.communication_time_config.email.open_hours.daily_hours["DayOfWeek"][0].start_time #=> String
    #   resp.campaign.communication_time_config.email.open_hours.daily_hours["DayOfWeek"][0].end_time #=> String
    #   resp.campaign.communication_time_config.email.restricted_periods.restricted_period_list #=> Array
    #   resp.campaign.communication_time_config.email.restricted_periods.restricted_period_list[0].name #=> String
    #   resp.campaign.communication_time_config.email.restricted_periods.restricted_period_list[0].start_date #=> String
    #   resp.campaign.communication_time_config.email.restricted_periods.restricted_period_list[0].end_date #=> String
    #   resp.campaign.communication_limits_override.all_channel_subtypes.communication_limits_list #=> Array
    #   resp.campaign.communication_limits_override.all_channel_subtypes.communication_limits_list[0].max_count_per_recipient #=> Integer
    #   resp.campaign.communication_limits_override.all_channel_subtypes.communication_limits_list[0].frequency #=> Integer
    #   resp.campaign.communication_limits_override.all_channel_subtypes.communication_limits_list[0].unit #=> String, one of "DAY"
    #   resp.campaign.communication_limits_override.instance_limits_handling #=> String, one of "OPT_IN", "OPT_OUT"
    #   resp.campaign.tags #=> Hash
    #   resp.campaign.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DescribeCampaign AWS API Documentation
    #
    # @overload describe_campaign(params = {})
    # @param [Hash] params ({})
    def describe_campaign(params = {}, options = {})
      req = build_request(:describe_campaign, params)
      req.send_request(options)
    end

    # Get state of a campaign for the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Types::GetCampaignStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignStateResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_state({
    #     id: "CampaignId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String, one of "Initialized", "Running", "Paused", "Stopped", "Failed", "Completed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetCampaignState AWS API Documentation
    #
    # @overload get_campaign_state(params = {})
    # @param [Hash] params ({})
    def get_campaign_state(params = {}, options = {})
      req = build_request(:get_campaign_state, params)
      req.send_request(options)
    end

    # Get state of campaigns for the specified Amazon Connect account.
    #
    # @option params [required, Array<String>] :campaign_ids
    #   List of CampaignId
    #
    # @return [Types::GetCampaignStateBatchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignStateBatchResponse#successful_requests #successful_requests} => Array&lt;Types::SuccessfulCampaignStateResponse&gt;
    #   * {Types::GetCampaignStateBatchResponse#failed_requests #failed_requests} => Array&lt;Types::FailedCampaignStateResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_state_batch({
    #     campaign_ids: ["CampaignId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_requests #=> Array
    #   resp.successful_requests[0].campaign_id #=> String
    #   resp.successful_requests[0].state #=> String, one of "Initialized", "Running", "Paused", "Stopped", "Failed", "Completed"
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].campaign_id #=> String
    #   resp.failed_requests[0].failure_code #=> String, one of "ResourceNotFound", "UnknownError"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetCampaignStateBatch AWS API Documentation
    #
    # @overload get_campaign_state_batch(params = {})
    # @param [Hash] params ({})
    def get_campaign_state_batch(params = {}, options = {})
      req = build_request(:get_campaign_state_batch, params)
      req.send_request(options)
    end

    # Get the specific Connect instance config.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @return [Types::GetConnectInstanceConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectInstanceConfigResponse#connect_instance_config #connect_instance_config} => Types::InstanceConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connect_instance_config({
    #     connect_instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_instance_config.connect_instance_id #=> String
    #   resp.connect_instance_config.service_linked_role_arn #=> String
    #   resp.connect_instance_config.encryption_config.enabled #=> Boolean
    #   resp.connect_instance_config.encryption_config.encryption_type #=> String, one of "KMS"
    #   resp.connect_instance_config.encryption_config.key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetConnectInstanceConfig AWS API Documentation
    #
    # @overload get_connect_instance_config(params = {})
    # @param [Hash] params ({})
    def get_connect_instance_config(params = {}, options = {})
      req = build_request(:get_connect_instance_config, params)
      req.send_request(options)
    end

    # Get the instance communication limits.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @return [Types::GetInstanceCommunicationLimitsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceCommunicationLimitsResponse#communication_limits_config #communication_limits_config} => Types::InstanceCommunicationLimitsConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_communication_limits({
    #     connect_instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.communication_limits_config.all_channel_subtypes.communication_limits_list #=> Array
    #   resp.communication_limits_config.all_channel_subtypes.communication_limits_list[0].max_count_per_recipient #=> Integer
    #   resp.communication_limits_config.all_channel_subtypes.communication_limits_list[0].frequency #=> Integer
    #   resp.communication_limits_config.all_channel_subtypes.communication_limits_list[0].unit #=> String, one of "DAY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetInstanceCommunicationLimits AWS API Documentation
    #
    # @overload get_instance_communication_limits(params = {})
    # @param [Hash] params ({})
    def get_instance_communication_limits(params = {}, options = {})
      req = build_request(:get_instance_communication_limits, params)
      req.send_request(options)
    end

    # Get the specific instance onboarding job status.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @return [Types::GetInstanceOnboardingJobStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceOnboardingJobStatusResponse#connect_instance_onboarding_job_status #connect_instance_onboarding_job_status} => Types::InstanceOnboardingJobStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_onboarding_job_status({
    #     connect_instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_instance_onboarding_job_status.connect_instance_id #=> String
    #   resp.connect_instance_onboarding_job_status.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.connect_instance_onboarding_job_status.failure_code #=> String, one of "EVENT_BRIDGE_ACCESS_DENIED", "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED", "IAM_ACCESS_DENIED", "KMS_ACCESS_DENIED", "KMS_KEY_NOT_FOUND", "INTERNAL_FAILURE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetInstanceOnboardingJobStatus AWS API Documentation
    #
    # @overload get_instance_onboarding_job_status(params = {})
    # @param [Hash] params ({})
    def get_instance_onboarding_job_status(params = {}, options = {})
      req = build_request(:get_instance_onboarding_job_status, params)
      req.send_request(options)
    end

    # Provides summary information about the campaigns under the specified
    # Amazon Connect account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Types::CampaignFilters] :filters
    #   Filter model by type
    #
    # @return [Types::ListCampaignsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCampaignsResponse#next_token #next_token} => String
    #   * {Types::ListCampaignsResponse#campaign_summary_list #campaign_summary_list} => Array&lt;Types::CampaignSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_campaigns({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: {
    #       instance_id_filter: {
    #         value: "InstanceId", # required
    #         operator: "Eq", # required, accepts Eq
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.campaign_summary_list #=> Array
    #   resp.campaign_summary_list[0].id #=> String
    #   resp.campaign_summary_list[0].arn #=> String
    #   resp.campaign_summary_list[0].name #=> String
    #   resp.campaign_summary_list[0].connect_instance_id #=> String
    #   resp.campaign_summary_list[0].channel_subtypes #=> Array
    #   resp.campaign_summary_list[0].channel_subtypes[0] #=> String, one of "TELEPHONY", "SMS", "EMAIL"
    #   resp.campaign_summary_list[0].schedule.start_time #=> Time
    #   resp.campaign_summary_list[0].schedule.end_time #=> Time
    #   resp.campaign_summary_list[0].schedule.refresh_frequency #=> String
    #   resp.campaign_summary_list[0].connect_campaign_flow_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ListCampaigns AWS API Documentation
    #
    # @overload list_campaigns(params = {})
    # @param [Hash] params ({})
    def list_campaigns(params = {}, options = {})
      req = build_request(:list_campaigns, params)
      req.send_request(options)
    end

    # Provides summary information about the integration under the specified
    # Connect instance.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListConnectInstanceIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectInstanceIntegrationsResponse#next_token #next_token} => String
    #   * {Types::ListConnectInstanceIntegrationsResponse#integration_summary_list #integration_summary_list} => Array&lt;Types::IntegrationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connect_instance_integrations({
    #     connect_instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.integration_summary_list #=> Array
    #   resp.integration_summary_list[0].customer_profiles.domain_arn #=> String
    #   resp.integration_summary_list[0].customer_profiles.object_type_names #=> Hash
    #   resp.integration_summary_list[0].customer_profiles.object_type_names["EventType"] #=> String
    #   resp.integration_summary_list[0].q_connect.knowledge_base_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ListConnectInstanceIntegrations AWS API Documentation
    #
    # @overload list_connect_instance_integrations(params = {})
    # @param [Hash] params ({})
    def list_connect_instance_integrations(params = {}, options = {})
      req = build_request(:list_connect_instance_integrations, params)
      req.send_request(options)
    end

    # List tags for a resource.
    #
    # @option params [required, String] :arn
    #   Amazon Resource Names(ARN)
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Pauses a campaign for the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.pause_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PauseCampaign AWS API Documentation
    #
    # @overload pause_campaign(params = {})
    # @param [Hash] params ({})
    def pause_campaign(params = {}, options = {})
      req = build_request(:pause_campaign, params)
      req.send_request(options)
    end

    # Put or update the integration for the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @option params [required, Types::IntegrationConfig] :integration_config
    #   Integration config for Connect Instance
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_connect_instance_integration({
    #     connect_instance_id: "InstanceId", # required
    #     integration_config: { # required
    #       customer_profiles: {
    #         domain_arn: "Arn", # required
    #         object_type_names: { # required
    #           "Campaign-Email" => "ObjectTypeName",
    #         },
    #       },
    #       q_connect: {
    #         knowledge_base_arn: "Arn", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PutConnectInstanceIntegration AWS API Documentation
    #
    # @overload put_connect_instance_integration(params = {})
    # @param [Hash] params ({})
    def put_connect_instance_integration(params = {}, options = {})
      req = build_request(:put_connect_instance_integration, params)
      req.send_request(options)
    end

    # Put the instance communication limits. This API is idempotent.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @option params [required, Types::InstanceCommunicationLimitsConfig] :communication_limits_config
    #   Instance Communication limits config
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_instance_communication_limits({
    #     connect_instance_id: "InstanceId", # required
    #     communication_limits_config: { # required
    #       all_channel_subtypes: {
    #         communication_limits_list: [
    #           {
    #             max_count_per_recipient: 1, # required
    #             frequency: 1, # required
    #             unit: "DAY", # required, accepts DAY
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PutInstanceCommunicationLimits AWS API Documentation
    #
    # @overload put_instance_communication_limits(params = {})
    # @param [Hash] params ({})
    def put_instance_communication_limits(params = {}, options = {})
      req = build_request(:put_instance_communication_limits, params)
      req.send_request(options)
    end

    # Creates outbound requests for the specified campaign Amazon Connect
    # account. This API is idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, Array<Types::OutboundRequest>] :outbound_requests
    #   A list of outbound requests.
    #
    # @return [Types::PutOutboundRequestBatchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutOutboundRequestBatchResponse#successful_requests #successful_requests} => Array&lt;Types::SuccessfulRequest&gt;
    #   * {Types::PutOutboundRequestBatchResponse#failed_requests #failed_requests} => Array&lt;Types::FailedRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_outbound_request_batch({
    #     id: "CampaignId", # required
    #     outbound_requests: [ # required
    #       {
    #         client_token: "ClientToken", # required
    #         expiration_time: Time.now, # required
    #         channel_subtype_parameters: { # required
    #           telephony: {
    #             destination_phone_number: "DestinationPhoneNumber", # required
    #             attributes: { # required
    #               "AttributeName" => "AttributeValue",
    #             },
    #             connect_source_phone_number: "SourcePhoneNumber",
    #             answer_machine_detection_config: {
    #               enable_answer_machine_detection: false, # required
    #               await_answer_machine_prompt: false,
    #             },
    #           },
    #           sms: {
    #             destination_phone_number: "DestinationPhoneNumber", # required
    #             connect_source_phone_number_arn: "Arn",
    #             template_arn: "Arn",
    #             template_parameters: { # required
    #               "AttributeName" => "AttributeValue",
    #             },
    #           },
    #           email: {
    #             destination_email_address: "EmailAddress", # required
    #             connect_source_email_address: "EmailAddress",
    #             template_arn: "Arn",
    #             template_parameters: { # required
    #               "AttributeName" => "AttributeValue",
    #             },
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_requests #=> Array
    #   resp.successful_requests[0].client_token #=> String
    #   resp.successful_requests[0].id #=> String
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].client_token #=> String
    #   resp.failed_requests[0].id #=> String
    #   resp.failed_requests[0].failure_code #=> String, one of "InvalidInput", "RequestThrottled", "UnknownError", "BufferLimitExceeded"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PutOutboundRequestBatch AWS API Documentation
    #
    # @overload put_outbound_request_batch(params = {})
    # @param [Hash] params ({})
    def put_outbound_request_batch(params = {}, options = {})
      req = build_request(:put_outbound_request_batch, params)
      req.send_request(options)
    end

    # Takes in a list of profile outbound requests to be placed as part of
    # an outbound campaign. This API is idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, Array<Types::ProfileOutboundRequest>] :profile_outbound_requests
    #   List of profile outbound requests
    #
    # @return [Types::PutProfileOutboundRequestBatchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutProfileOutboundRequestBatchResponse#successful_requests #successful_requests} => Array&lt;Types::SuccessfulProfileOutboundRequest&gt;
    #   * {Types::PutProfileOutboundRequestBatchResponse#failed_requests #failed_requests} => Array&lt;Types::FailedProfileOutboundRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_profile_outbound_request_batch({
    #     id: "CampaignId", # required
    #     profile_outbound_requests: [ # required
    #       {
    #         client_token: "ClientToken", # required
    #         profile_id: "ProfileId", # required
    #         expiration_time: Time.now,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_requests #=> Array
    #   resp.successful_requests[0].client_token #=> String
    #   resp.successful_requests[0].id #=> String
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].client_token #=> String
    #   resp.failed_requests[0].id #=> String
    #   resp.failed_requests[0].failure_code #=> String, one of "UnknownError", "ResourceNotFound", "Conflict", "RequestThrottled", "InvalidInput"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PutProfileOutboundRequestBatch AWS API Documentation
    #
    # @overload put_profile_outbound_request_batch(params = {})
    # @param [Hash] params ({})
    def put_profile_outbound_request_batch(params = {}, options = {})
      req = build_request(:put_profile_outbound_request_batch, params)
      req.send_request(options)
    end

    # Stops a campaign for the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ResumeCampaign AWS API Documentation
    #
    # @overload resume_campaign(params = {})
    # @param [Hash] params ({})
    def resume_campaign(params = {}, options = {})
      req = build_request(:resume_campaign, params)
      req.send_request(options)
    end

    # Starts a campaign for the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/StartCampaign AWS API Documentation
    #
    # @overload start_campaign(params = {})
    # @param [Hash] params ({})
    def start_campaign(params = {}, options = {})
      req = build_request(:start_campaign, params)
      req.send_request(options)
    end

    # Onboard the specific Amazon Connect instance to Connect Campaigns.
    #
    # @option params [required, String] :connect_instance_id
    #   Amazon Connect Instance Id
    #
    # @option params [required, Types::EncryptionConfig] :encryption_config
    #   Encryption config for Connect Instance. Note that sensitive data will
    #   always be encrypted. If disabled, service will perform encryption with
    #   its own key. If enabled, a KMS key id needs to be provided and KMS
    #   charges will apply. KMS is only type supported
    #
    # @return [Types::StartInstanceOnboardingJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartInstanceOnboardingJobResponse#connect_instance_onboarding_job_status #connect_instance_onboarding_job_status} => Types::InstanceOnboardingJobStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_instance_onboarding_job({
    #     connect_instance_id: "InstanceId", # required
    #     encryption_config: { # required
    #       enabled: false, # required
    #       encryption_type: "KMS", # accepts KMS
    #       key_arn: "EncryptionKey",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_instance_onboarding_job_status.connect_instance_id #=> String
    #   resp.connect_instance_onboarding_job_status.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.connect_instance_onboarding_job_status.failure_code #=> String, one of "EVENT_BRIDGE_ACCESS_DENIED", "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED", "IAM_ACCESS_DENIED", "KMS_ACCESS_DENIED", "KMS_KEY_NOT_FOUND", "INTERNAL_FAILURE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/StartInstanceOnboardingJob AWS API Documentation
    #
    # @overload start_instance_onboarding_job(params = {})
    # @param [Hash] params ({})
    def start_instance_onboarding_job(params = {}, options = {})
      req = build_request(:start_instance_onboarding_job, params)
      req.send_request(options)
    end

    # Stops a campaign for the specified Amazon Connect account.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_campaign({
    #     id: "CampaignId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/StopCampaign AWS API Documentation
    #
    # @overload stop_campaign(params = {})
    # @param [Hash] params ({})
    def stop_campaign(params = {}, options = {})
      req = build_request(:stop_campaign, params)
      req.send_request(options)
    end

    # Tag a resource.
    #
    # @option params [required, String] :arn
    #   Amazon Resource Names(ARN)
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tag map with key and value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untag a resource.
    #
    # @option params [required, String] :arn
    #   Amazon Resource Names(ARN)
    #
    # @option params [required, Array<String>] :tag_keys
    #   List of tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the channel subtype config of a campaign. This API is
    # idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, Types::ChannelSubtypeConfig] :channel_subtype_config
    #   Campaign Channel Subtype config
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign_channel_subtype_config({
    #     id: "CampaignId", # required
    #     channel_subtype_config: { # required
    #       telephony: {
    #         capacity: 1.0,
    #         connect_queue_id: "QueueId",
    #         outbound_mode: { # required
    #           progressive: {
    #             bandwidth_allocation: 1.0, # required
    #           },
    #           predictive: {
    #             bandwidth_allocation: 1.0, # required
    #           },
    #           agentless: {
    #           },
    #         },
    #         default_outbound_config: { # required
    #           connect_contact_flow_id: "ContactFlowId", # required
    #           connect_source_phone_number: "SourcePhoneNumber",
    #           answer_machine_detection_config: {
    #             enable_answer_machine_detection: false, # required
    #             await_answer_machine_prompt: false,
    #           },
    #         },
    #       },
    #       sms: {
    #         capacity: 1.0,
    #         outbound_mode: { # required
    #           agentless: {
    #           },
    #         },
    #         default_outbound_config: { # required
    #           connect_source_phone_number_arn: "Arn", # required
    #           wisdom_template_arn: "Arn", # required
    #         },
    #       },
    #       email: {
    #         capacity: 1.0,
    #         outbound_mode: { # required
    #           agentless: {
    #           },
    #         },
    #         default_outbound_config: { # required
    #           connect_source_email_address: "EmailAddress", # required
    #           source_email_address_display_name: "EmailDisplayName",
    #           wisdom_template_arn: "Arn", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignChannelSubtypeConfig AWS API Documentation
    #
    # @overload update_campaign_channel_subtype_config(params = {})
    # @param [Hash] params ({})
    def update_campaign_channel_subtype_config(params = {}, options = {})
      req = build_request(:update_campaign_channel_subtype_config, params)
      req.send_request(options)
    end

    # Updates the communication limits config for a campaign. This API is
    # idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, Types::CommunicationLimitsConfig] :communication_limits_override
    #   Communication limits config
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign_communication_limits({
    #     id: "CampaignId", # required
    #     communication_limits_override: { # required
    #       all_channel_subtypes: {
    #         communication_limits_list: [
    #           {
    #             max_count_per_recipient: 1, # required
    #             frequency: 1, # required
    #             unit: "DAY", # required, accepts DAY
    #           },
    #         ],
    #       },
    #       instance_limits_handling: "OPT_IN", # accepts OPT_IN, OPT_OUT
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignCommunicationLimits AWS API Documentation
    #
    # @overload update_campaign_communication_limits(params = {})
    # @param [Hash] params ({})
    def update_campaign_communication_limits(params = {}, options = {})
      req = build_request(:update_campaign_communication_limits, params)
      req.send_request(options)
    end

    # Updates the communication time config for a campaign. This API is
    # idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, Types::CommunicationTimeConfig] :communication_time_config
    #   Campaign communication time config
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign_communication_time({
    #     id: "CampaignId", # required
    #     communication_time_config: { # required
    #       local_time_zone_config: { # required
    #         default_time_zone: "TimeZone",
    #         local_time_zone_detection: ["ZIP_CODE"], # accepts ZIP_CODE, AREA_CODE
    #       },
    #       telephony: {
    #         open_hours: { # required
    #           daily_hours: {
    #             "MONDAY" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               },
    #             ],
    #           },
    #         },
    #         restricted_periods: {
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             },
    #           ],
    #         },
    #       },
    #       sms: {
    #         open_hours: { # required
    #           daily_hours: {
    #             "MONDAY" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               },
    #             ],
    #           },
    #         },
    #         restricted_periods: {
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             },
    #           ],
    #         },
    #       },
    #       email: {
    #         open_hours: { # required
    #           daily_hours: {
    #             "MONDAY" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               },
    #             ],
    #           },
    #         },
    #         restricted_periods: {
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignCommunicationTime AWS API Documentation
    #
    # @overload update_campaign_communication_time(params = {})
    # @param [Hash] params ({})
    def update_campaign_communication_time(params = {}, options = {})
      req = build_request(:update_campaign_communication_time, params)
      req.send_request(options)
    end

    # Updates the campaign flow associated with a campaign. This API is
    # idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, String] :connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign_flow_association({
    #     id: "CampaignId", # required
    #     connect_campaign_flow_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignFlowAssociation AWS API Documentation
    #
    # @overload update_campaign_flow_association(params = {})
    # @param [Hash] params ({})
    def update_campaign_flow_association(params = {}, options = {})
      req = build_request(:update_campaign_flow_association, params)
      req.send_request(options)
    end

    # Updates the name of a campaign. This API is idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, String] :name
    #   The name of an Amazon Connect Campaign name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign_name({
    #     id: "CampaignId", # required
    #     name: "CampaignName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignName AWS API Documentation
    #
    # @overload update_campaign_name(params = {})
    # @param [Hash] params ({})
    def update_campaign_name(params = {}, options = {})
      req = build_request(:update_campaign_name, params)
      req.send_request(options)
    end

    # Updates the schedule for a campaign. This API is idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, Types::Schedule] :schedule
    #   Campaign schedule
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign_schedule({
    #     id: "CampaignId", # required
    #     schedule: { # required
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #       refresh_frequency: "Iso8601Duration",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignSchedule AWS API Documentation
    #
    # @overload update_campaign_schedule(params = {})
    # @param [Hash] params ({})
    def update_campaign_schedule(params = {}, options = {})
      req = build_request(:update_campaign_schedule, params)
      req.send_request(options)
    end

    # Updates the campaign source with a campaign. This API is idempotent.
    #
    # @option params [required, String] :id
    #   Identifier representing a Campaign
    #
    # @option params [required, Types::Source] :source
    #   Source of the campaign
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign_source({
    #     id: "CampaignId", # required
    #     source: { # required
    #       customer_profiles_segment_arn: "Arn",
    #       event_trigger: {
    #         customer_profiles_domain_arn: "Arn",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignSource AWS API Documentation
    #
    # @overload update_campaign_source(params = {})
    # @param [Hash] params ({})
    def update_campaign_source(params = {}, options = {})
      req = build_request(:update_campaign_source, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ConnectCampaignsV2')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-connectcampaignsv2'
      context[:gem_version] = '1.10.0'
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
