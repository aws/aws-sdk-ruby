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

module Aws::ConnectScheduling
  # An API client for ConnectScheduling.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ConnectScheduling::Client.new(
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

    @identifier = :connectscheduling

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
    add_plugin(Aws::ConnectScheduling::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
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
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
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
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether
    #     to apply a clock skew correction and retry requests with skewed client
    #     clocks. Takes effect only when `disable_clock_skew_correction` is not set.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_clock_skew_correction
    #     Used only in `standard` and `adaptive` retry modes. When `true`, the
    #     SDK does not apply a clock skew correction, does not update its stored
    #     skew from responses, and does not retry clock skew errors. Clock skew
    #     correction is enabled by default.
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
    #     4 times. Used in `standard` and `adaptive` retry modes. Defaults to 3,
    #     except for DynamoDB and DynamoDB Streams, which default to 4.
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
    #   @option options [String] :retry_mode ("standard")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make. This is the default value
    #       if no retry mode is provided.
    #
    #     * `adaptive` - A retry mode that includes all the functionality of
    #       `standard` mode along with automatic client side throttling.
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
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
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
    #   @option options [Aws::ConnectScheduling::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ConnectScheduling::EndpointParameters`.
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

    # Approves a time off request. Evaluates agent time off balances and
    # group time off allowances before approving. `RuleFailureAction`
    # controls what happens when these evaluations fail. The request is
    # rejected with `CONFLICTING_TIME_OFF_REQUEST` if it overlaps another
    # time off request for the user that is `APPROVED` or being approved.
    #
    # The time off request is processed asynchronously, so a successful call
    # doesn't indicate the final status. Read the resulting status with
    # `GetTimeOff` or from the time off state-change events.
    #
    # Approving an `APPROVED` request succeeds without a change. Approving a
    # `REJECTED` request evaluates the rules again, so it can end `APPROVED`
    # or `REJECTED`, and repeating the call can give a different result.
    # Check the status with `GetTimeOff` before you retry.
    #
    # Returns `ConflictException` if the request is `PENDING` or
    # `CANCELLED`. `PENDING` means Connect Customer is still processing the
    # request asynchronously. Wait until `GetTimeOff` returns a status other
    # than `PENDING`, and then retry.
    #
    # When the approval succeeds, Connect Customer cancels any overtime or
    # voluntary time off activity that overlaps the approved window.
    #
    # <note markdown="1"> Connect Customer doesn't check whether the principal that calls this
    # operation supervises the user. The staffing group's approval settings
    # also don't apply. IAM permissions are the only control. If you allow
    # a principal to call this operation, that principal can send
    # `RuleFailureAction` `OVERRIDE` and approve a request past failed
    # rules. Grant permission for this operation only to principals that you
    # trust to override time off rules.
    #
    #  </note>
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Connect Customer instance. This can be the ID or
    #   the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user who the time off request belongs to. This
    #   can be the ID or the ARN of the user.
    #
    # @option params [required, String] :time_off_id
    #   The unique identifier of the time off request to approve. If the time
    #   off request doesn't belong to `UserId`, the operation returns
    #   `ResourceNotFoundException`.
    #
    # @option params [String] :description
    #   A description recorded with the approval. `GetTimeOff` doesn't return
    #   it.
    #
    # @option params [String] :rule_failure_action
    #   Controls what happens when a configured rule fails. `REJECT`, the
    #   default, records an `ERROR` and leaves the request `REJECTED`.
    #   `OVERRIDE` records a `WARNING` and approves the request, like the
    #   *Override time off rules* option in the Connect Customer admin
    #   website. `OVERRIDE` never waives `CONFLICTING_TIME_OFF_REQUEST`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To approve a time off request past a failed rule
    #
    #   # The following example approves a time off request with RuleFailureAction OVERRIDE, so a failed rule is recorded as a
    #   # WARNING instead of rejecting the request.
    #
    #   resp = client.approve_time_off({
    #     description: "Approved with coverage from the evening shift", 
    #     instance_id: "12345678-1234-1234-1234-123456789012", 
    #     rule_failure_action: "OVERRIDE", 
    #     time_off_id: "abcdef12-3456-7890-abcd-ef1234567890", 
    #     user_id: "87654321-4321-4321-4321-210987654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.approve_time_off({
    #     instance_id: "InstanceIdOrArn", # required
    #     user_id: "UserIdOrArn", # required
    #     time_off_id: "TimeOffId", # required
    #     description: "Description",
    #     rule_failure_action: "REJECT", # accepts REJECT, OVERRIDE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/ApproveTimeOff AWS API Documentation
    #
    # @overload approve_time_off(params = {})
    # @param [Hash] params ({})
    def approve_time_off(params = {}, options = {})
      req = build_request(:approve_time_off, params)
      req.send_request(options)
    end

    # Cancels a time off request.
    #
    # Cancelling a `CANCELLED` request succeeds without a change. Returns
    # `ConflictException` if the request is `PENDING`, which means Connect
    # Customer is still processing the request asynchronously. Wait until
    # `GetTimeOff` returns a status other than `PENDING`, and then retry.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Connect Customer instance. This can be the ID or
    #   the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user who the time off request belongs to. This
    #   can be the ID or the ARN of the user.
    #
    # @option params [required, String] :time_off_id
    #   The unique identifier of the time off request to cancel. If the time
    #   off request doesn't belong to `UserId`, the operation returns
    #   `ResourceNotFoundException`.
    #
    # @option params [String] :description
    #   A description recorded with the cancellation. It replaces the
    #   description of the time off request. If you omit it, the request's
    #   description is removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To cancel a time off request
    #
    #   # The following example cancels a time off request and records the reason on the cancellation.
    #
    #   resp = client.cancel_time_off({
    #     description: "Plans changed", 
    #     instance_id: "12345678-1234-1234-1234-123456789012", 
    #     time_off_id: "abcdef12-3456-7890-abcd-ef1234567890", 
    #     user_id: "87654321-4321-4321-4321-210987654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_time_off({
    #     instance_id: "InstanceIdOrArn", # required
    #     user_id: "UserIdOrArn", # required
    #     time_off_id: "TimeOffId", # required
    #     description: "Description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/CancelTimeOff AWS API Documentation
    #
    # @overload cancel_time_off(params = {})
    # @param [Hash] params ({})
    def cancel_time_off(params = {}, options = {})
      req = build_request(:cancel_time_off, params)
      req.send_request(options)
    end

    # Creates a time off request for a user. You don't provide a status,
    # because Connect Customer owns the request lifecycle. To get the
    # decided status, call `GetTimeOff` or use the time off state-change
    # events.
    #
    # `ApprovalType` controls who approves the request. You can specify one
    # of the following values:
    #
    # * `AWAIT_APPROVAL`: the request waits in `AWAITING_APPROVAL` until you
    #   call `ApproveTimeOff` or `RejectTimeOff`. Rule evaluation and the
    #   overlap check run at approval, not at creation. A waiting request
    #   doesn't reserve its window, so another request for the same window
    #   can be approved first.
    #
    # * `AUTOMATIC`: Connect Customer evaluates the rules (time off balances
    #   and group allowances) and decides the request. The request can be
    #   `PENDING` while Connect Customer decides, and then ends `APPROVED`
    #   or `REJECTED`. If it overlaps another time off request for the user,
    #   the requested time off ends `REJECTED` with
    #   `CONFLICTING_TIME_OFF_REQUEST`. It also ends `REJECTED` if it
    #   overlaps overtime or voluntary time off. If the whole window is in
    #   the past, Connect Customer records failed rules as `WARNING` and
    #   doesn't reject the request, whatever the `RuleFailureAction`.
    #
    # The staffing group's *Supervisor approval needed* setting doesn't
    # apply to this operation. `ApprovalType` alone decides whether the
    # request waits for approval. The operation fails with
    # `ValidationException` on `UserId` in the following cases:
    #
    # * The user isn't in a staffing group, or the staffing group isn't
    #   associated with a forecast group.
    #
    # * Time off isn't [enabled][1] for the user's staffing group, or the
    #   user's staff rules don't allow time off.
    #
    # To change the dates of a request, cancel it with `CancelTimeOff` and
    # create a new request. The new request has a new `TimeOffId`.
    #
    # <note markdown="1"> Connect Customer doesn't check whether the principal that calls this
    # operation supervises the user. The staffing group's approval settings
    # also don't apply. IAM permissions are the only control. If you allow
    # a principal to call this operation, that principal can send
    # `ApprovalType` `AUTOMATIC` with `RuleFailureAction` `OVERRIDE` and
    # approve a request past failed rules. Grant permission for this
    # operation only to principals that you trust to override time off
    # rules.
    #
    #  </note>
    #
    # For information about time off in the Connect Customer admin website,
    # see [Time off management][2] in the *Connect Customer Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-to.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/scheduling-time-off.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Connect Customer instance. This can be the ID or
    #   the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user who the time off request is for. This can
    #   be the ID or the ARN of the user.
    #
    # @option params [required, String] :shift_activity_id
    #   The identifier of the shift activity that defines the type of time off
    #   being requested. This can be the ID or the ARN of the shift activity.
    #   It must be a time off activity. Activities that aren't set as
    #   *Requestable* are accepted.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_at
    #   The start of the time off window, inclusive. It must be no earlier
    #   than one year before the current date. Connect Customer stores the
    #   value as sent, to the millisecond.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_at
    #   The end of the time off window, exclusive. It must be after `StartAt`
    #   and no later than 24 months after the current date. Connect Customer
    #   stores the value as sent, to the millisecond.
    #
    # @option params [String] :description
    #   A description recorded on the time off request. If you omit it, the
    #   request has no description.
    #
    # @option params [required, String] :approval_type
    #   Controls who approves the request. `AWAIT_APPROVAL` waits for an
    #   `ApproveTimeOff` or `RejectTimeOff` call. `AUTOMATIC` has Connect
    #   Customer decide the request. For details, see `CreateTimeOff`.
    #
    # @option params [String] :rule_failure_action
    #   Controls what happens when a configured rule fails. `REJECT`, the
    #   default, records an `ERROR` and ends the request `REJECTED`, unless
    #   the whole window is in the past. `OVERRIDE` records a `WARNING` and
    #   ends the request `APPROVED`, like the *Override time off rules* option
    #   in the Connect Customer admin website. `OVERRIDE` requires
    #   `AUTOMATIC`. With `AWAIT_APPROVAL`, `OVERRIDE` fails with
    #   `ValidationException`. Set it on `ApproveTimeOff` instead. `OVERRIDE`
    #   never waives `CONFLICTING_TIME_OFF_REQUEST`.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the operation completes no more than one time. If this token matches a
    #   previous request, Connect Customer returns the result of that request
    #   and doesn't create another time off request. If you don't provide a
    #   token, the AWS SDK populates this field. If you reuse a client token
    #   with a different request body, the request fails with
    #   `ValidationException`. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::CreateTimeOffResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTimeOffResponse#time_off_id #time_off_id} => String
    #
    #
    # @example Example: To create a time off request that waits for approval
    #
    #   # The following example creates a time off request for one day. The request is created in AWAITING_APPROVAL until an
    #   # ApproveTimeOff or RejectTimeOff call decides it.
    #
    #   resp = client.create_time_off({
    #     approval_type: "AWAIT_APPROVAL", 
    #     description: "Family event", 
    #     end_at: Time.parse(1795453200), 
    #     instance_id: "12345678-1234-1234-1234-123456789012", 
    #     shift_activity_id: "11112222-3333-4444-5555-666677778888", 
    #     start_at: Time.parse(1795424400), 
    #     user_id: "87654321-4321-4321-4321-210987654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     time_off_id: "abcdef12-3456-7890-abcd-ef1234567890", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_time_off({
    #     instance_id: "InstanceIdOrArn", # required
    #     user_id: "UserIdOrArn", # required
    #     shift_activity_id: "ShiftActivityIdOrArn", # required
    #     start_at: Time.now, # required
    #     end_at: Time.now, # required
    #     description: "Description",
    #     approval_type: "AWAIT_APPROVAL", # required, accepts AWAIT_APPROVAL, AUTOMATIC
    #     rule_failure_action: "REJECT", # accepts REJECT, OVERRIDE
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.time_off_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/CreateTimeOff AWS API Documentation
    #
    # @overload create_time_off(params = {})
    # @param [Hash] params ({})
    def create_time_off(params = {}, options = {})
      req = build_request(:create_time_off, params)
      req.send_request(options)
    end

    # Returns a time off request, including its current status and
    # validation results.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Connect Customer instance. This can be the ID or
    #   the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user who the time off request belongs to. This
    #   can be the ID or the ARN of the user.
    #
    # @option params [required, String] :time_off_id
    #   The identifier of the time off request. If the time off request
    #   doesn't belong to `UserId`, the operation returns
    #   `ResourceNotFoundException`.
    #
    # @return [Types::GetTimeOffResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTimeOffResponse#time_off_id #time_off_id} => String
    #   * {Types::GetTimeOffResponse#user_id #user_id} => String
    #   * {Types::GetTimeOffResponse#shift_activity_id #shift_activity_id} => String
    #   * {Types::GetTimeOffResponse#start_at #start_at} => Time
    #   * {Types::GetTimeOffResponse#end_at #end_at} => Time
    #   * {Types::GetTimeOffResponse#status #status} => String
    #   * {Types::GetTimeOffResponse#description #description} => String
    #   * {Types::GetTimeOffResponse#validation_results #validation_results} => Array&lt;Types::TimeOffValidationResult&gt;
    #   * {Types::GetTimeOffResponse#created_by #created_by} => Types::ActorInfo
    #   * {Types::GetTimeOffResponse#created_at #created_at} => Time
    #   * {Types::GetTimeOffResponse#updated_by #updated_by} => Types::ActorInfo
    #   * {Types::GetTimeOffResponse#updated_at #updated_at} => Time
    #
    #
    # @example Example: To get a time off request
    #
    #   # The following example gets a time off request that was approved past a failed group allowance rule, which is reported as
    #   # a WARNING.
    #
    #   resp = client.get_time_off({
    #     instance_id: "12345678-1234-1234-1234-123456789012", 
    #     time_off_id: "abcdef12-3456-7890-abcd-ef1234567890", 
    #     user_id: "87654321-4321-4321-4321-210987654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_at: Time.parse(1793644200), 
    #     created_by: {
    #       connect_user_arn: "arn:aws:connect:us-west-2:123456789012:instance/12345678-1234-1234-1234-123456789012/agent/87654321-4321-4321-4321-210987654321", 
    #     }, 
    #     description: "Family event", 
    #     end_at: Time.parse(1795453200), 
    #     shift_activity_id: "11112222-3333-4444-5555-666677778888", 
    #     start_at: Time.parse(1795424400), 
    #     status: "APPROVED", 
    #     time_off_id: "abcdef12-3456-7890-abcd-ef1234567890", 
    #     updated_at: Time.parse(1793721900), 
    #     updated_by: {
    #       connect_user_arn: "arn:aws:connect:us-west-2:123456789012:instance/12345678-1234-1234-1234-123456789012/agent/99998888-7777-6666-5555-444433332222", 
    #     }, 
    #     user_id: "87654321-4321-4321-4321-210987654321", 
    #     validation_results: [
    #       {
    #         code: "INSUFFICIENT_GROUP_TIME_OFF_ALLOWANCE", 
    #         severity: "WARNING", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_time_off({
    #     instance_id: "InstanceIdOrArn", # required
    #     user_id: "UserIdOrArn", # required
    #     time_off_id: "TimeOffId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.time_off_id #=> String
    #   resp.user_id #=> String
    #   resp.shift_activity_id #=> String
    #   resp.start_at #=> Time
    #   resp.end_at #=> Time
    #   resp.status #=> String, one of "PENDING", "APPROVED", "REJECTED", "CANCELLED", "AWAITING_APPROVAL"
    #   resp.description #=> String
    #   resp.validation_results #=> Array
    #   resp.validation_results[0].severity #=> String, one of "WARNING", "ERROR"
    #   resp.validation_results[0].code #=> String, one of "INSUFFICIENT_USER_TIME_OFF_BALANCE", "INSUFFICIENT_GROUP_TIME_OFF_ALLOWANCE", "INSUFFICIENT_STAFFING_GROUP_TIME_OFF_ALLOWANCE", "CONFLICTING_TIME_OFF_REQUEST"
    #   resp.created_by.connect_user_arn #=> String
    #   resp.created_by.aws_identity_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_by.connect_user_arn #=> String
    #   resp.updated_by.aws_identity_arn #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/GetTimeOff AWS API Documentation
    #
    # @overload get_time_off(params = {})
    # @param [Hash] params ({})
    def get_time_off(params = {}, options = {})
      req = build_request(:get_time_off, params)
      req.send_request(options)
    end

    # Sets the time off balance for one user and shift activity. The value
    # replaces the existing balance rather than adjusting it, so you can
    # safely retry the call. This operation can't remove a balance. To
    # remove one, upload a blank balance in the Connect Customer admin
    # website. For more information, see [Import an agent's time off
    # balance][1] in the *Connect Customer Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/upload-timeoff-balance.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Connect Customer instance. This can be the ID or
    #   the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user whose balance is being updated. This can be
    #   the ID or the ARN of the user.
    #
    # @option params [required, String] :shift_activity_id
    #   The identifier of the shift activity that the balance applies to. This
    #   can be the ID or the ARN of the shift activity.
    #
    # @option params [required, Types::Duration] :balance
    #   The new time off balance for the user and activity. It replaces the
    #   existing balance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To set a user's time off balance
    #
    #   # The following example sets a user's balance for one time off activity to 80 hours, replacing any existing balance.
    #
    #   resp = client.put_time_off_balance({
    #     balance: {
    #       unit: "HOURS", 
    #       value: 80, 
    #     }, 
    #     instance_id: "12345678-1234-1234-1234-123456789012", 
    #     shift_activity_id: "11112222-3333-4444-5555-666677778888", 
    #     user_id: "87654321-4321-4321-4321-210987654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_time_off_balance({
    #     instance_id: "InstanceIdOrArn", # required
    #     user_id: "UserIdOrArn", # required
    #     shift_activity_id: "ShiftActivityIdOrArn", # required
    #     balance: { # required
    #       value: 1, # required
    #       unit: "MINUTES", # required, accepts MINUTES, HOURS, DAYS
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/PutTimeOffBalance AWS API Documentation
    #
    # @overload put_time_off_balance(params = {})
    # @param [Hash] params ({})
    def put_time_off_balance(params = {}, options = {})
      req = build_request(:put_time_off_balance, params)
      req.send_request(options)
    end

    # Rejects a time off request.
    #
    # Rejecting a `REJECTED` request succeeds without a change. Returns
    # `ConflictException` if the request is `PENDING` or `CANCELLED`.
    # `PENDING` means Connect Customer is still processing the request
    # asynchronously. Wait until `GetTimeOff` returns a status other than
    # `PENDING`, and then retry.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Connect Customer instance. This can be the ID or
    #   the ARN of the instance. You can [find the instance ID][1] in the
    #   Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user who the time off request belongs to. This
    #   can be the ID or the ARN of the user.
    #
    # @option params [required, String] :time_off_id
    #   The unique identifier of the time off request to reject. If the time
    #   off request doesn't belong to `UserId`, the operation returns
    #   `ResourceNotFoundException`.
    #
    # @option params [String] :description
    #   A description recorded with the rejection, such as the reason.
    #   `GetTimeOff` doesn't return it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To reject a time off request
    #
    #   # The following example rejects a time off request and records the reason on the rejection.
    #
    #   resp = client.reject_time_off({
    #     description: "Not enough coverage for this shift", 
    #     instance_id: "12345678-1234-1234-1234-123456789012", 
    #     time_off_id: "abcdef12-3456-7890-abcd-ef1234567890", 
    #     user_id: "87654321-4321-4321-4321-210987654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_time_off({
    #     instance_id: "InstanceIdOrArn", # required
    #     user_id: "UserIdOrArn", # required
    #     time_off_id: "TimeOffId", # required
    #     description: "Description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectscheduling-2026-07-16/RejectTimeOff AWS API Documentation
    #
    # @overload reject_time_off(params = {})
    # @param [Hash] params ({})
    def reject_time_off(params = {}, options = {})
      req = build_request(:reject_time_off, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ConnectScheduling')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-connectscheduling'
      context[:gem_version] = '1.0.0'
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
