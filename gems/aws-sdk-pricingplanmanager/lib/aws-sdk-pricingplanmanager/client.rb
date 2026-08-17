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

module Aws::PricingPlanManager
  # An API client for PricingPlanManager.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PricingPlanManager::Client.new(
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

    @identifier = :pricingplanmanager

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
    add_plugin(Aws::PricingPlanManager::Plugins::Endpoints)

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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether to apply
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
    #     * `legacy` - The pre-existing retry behavior. This is the default
    #       value if no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
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
    #   @option options [Aws::PricingPlanManager::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PricingPlanManager::EndpointParameters`.
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

    # Approves a subscription that is in `PENDING_APPROVAL` status,
    # activating it and starting billing.
    #
    # <note markdown="1"> This operation requires the current `ETag` value for concurrency
    # control. Retrieve it from a previous `GetSubscription` or
    # `ListSubscriptions` response.
    #
    #  </note>
    #
    # @option params [required, String] :arn
    #   The ARN of the subscription to approve.
    #
    # @option params [required, String] :if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response. This ensures you are approving the
    #   expected version of the subscription.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ApprovePaidSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApprovePaidSubscriptionOutput#subscription #subscription} => Types::Subscription
    #   * {Types::ApprovePaidSubscriptionOutput#e_tag #e_tag} => String
    #
    #
    # @example Example: Approve a pending paid subscription
    #
    #   resp = client.approve_paid_subscription({
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #     if_match: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     e_tag: "2", 
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #       created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #       plan_family: "CloudFront", 
    #       plan_tier: "PRO", 
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #       ], 
    #       status: "SYNC_IN_PROGRESS", 
    #       updated_at: Time.parse("2025-01-15T10:35:00Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.approve_paid_subscription({
    #     arn: "SubscriptionArn", # required
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.arn #=> String
    #   resp.subscription.plan_family #=> String
    #   resp.subscription.plan_tier #=> String
    #   resp.subscription.usage_level #=> String
    #   resp.subscription.scheduled_change.change_type #=> String, one of "DOWNGRADE", "CANCELLATION"
    #   resp.subscription.scheduled_change.effective_date #=> Time
    #   resp.subscription.scheduled_change.plan_tier #=> String
    #   resp.subscription.scheduled_change.usage_level #=> String
    #   resp.subscription.status #=> String, one of "PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"
    #   resp.subscription.status_reason #=> String
    #   resp.subscription.resource_arns #=> Array
    #   resp.subscription.resource_arns[0] #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.updated_at #=> Time
    #   resp.e_tag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ApprovePaidSubscription AWS API Documentation
    #
    # @overload approve_paid_subscription(params = {})
    # @param [Hash] params ({})
    def approve_paid_subscription(params = {}, options = {})
      req = build_request(:approve_paid_subscription, params)
      req.send_request(options)
    end

    # Adds one or more resources to an existing subscription. The
    # subscription must be in an active state that is not pending other
    # changes.
    #
    # <note markdown="1"> For subscriptions in the CloudFront plan family, the associated
    # resources must include exactly one Amazon CloudFront distribution and
    # one AWS WAF web ACL. You can also include other supported resources,
    # such as Amazon Route 53 hosted zones, and CloudFront KeyValueStores.
    #
    #  </note>
    #
    # @option params [required, String] :arn
    #   The ARN of the subscription to add resources to.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The ARNs of the resources to add to the subscription.
    #
    # @option params [required, String] :if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AssociateResourcesToSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateResourcesToSubscriptionOutput#subscription #subscription} => Types::Subscription
    #   * {Types::AssociateResourcesToSubscriptionOutput#e_tag #e_tag} => String
    #
    #
    # @example Example: Associate additional resources to a subscription
    #
    #   resp = client.associate_resources_to_subscription({
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #     if_match: "1", 
    #     resource_arns: [
    #       "arn:aws:route53:::hostedzone/Z0123456789EXAMPLE", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     e_tag: "2", 
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #       created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #       plan_family: "CloudFront", 
    #       plan_tier: "PRO", 
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #         "arn:aws:route53:::hostedzone/Z0123456789EXAMPLE", 
    #       ], 
    #       status: "SYNC_IN_PROGRESS", 
    #       updated_at: Time.parse("2025-01-18T11:00:00Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resources_to_subscription({
    #     arn: "SubscriptionArn", # required
    #     resource_arns: ["String"], # required
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.arn #=> String
    #   resp.subscription.plan_family #=> String
    #   resp.subscription.plan_tier #=> String
    #   resp.subscription.usage_level #=> String
    #   resp.subscription.scheduled_change.change_type #=> String, one of "DOWNGRADE", "CANCELLATION"
    #   resp.subscription.scheduled_change.effective_date #=> Time
    #   resp.subscription.scheduled_change.plan_tier #=> String
    #   resp.subscription.scheduled_change.usage_level #=> String
    #   resp.subscription.status #=> String, one of "PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"
    #   resp.subscription.status_reason #=> String
    #   resp.subscription.resource_arns #=> Array
    #   resp.subscription.resource_arns[0] #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.updated_at #=> Time
    #   resp.e_tag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/AssociateResourcesToSubscription AWS API Documentation
    #
    # @overload associate_resources_to_subscription(params = {})
    # @param [Hash] params ({})
    def associate_resources_to_subscription(params = {}, options = {})
      req = build_request(:associate_resources_to_subscription, params)
      req.send_request(options)
    end

    # Cancels a flat-rate pricing subscription.
    #
    # <note markdown="1"> For active subscriptions, the cancellation is scheduled to take effect
    # at the end of the current billing period. The subscription remains
    # active until that date. To revert a pending cancellation, use
    # `CancelSubscriptionChange`.
    #
    #  For subscriptions in `PENDING_APPROVAL` status, the subscription is
    # deleted immediately without scheduling.
    #
    #  </note>
    #
    # @option params [required, String] :arn
    #   The ARN of the subscription to cancel.
    #
    # @option params [required, String] :if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CancelSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelSubscriptionOutput#subscription #subscription} => Types::Subscription
    #   * {Types::CancelSubscriptionOutput#e_tag #e_tag} => String
    #
    #
    # @example Example: Cancel a subscription
    #
    #   resp = client.cancel_subscription({
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #     if_match: "2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     e_tag: "3", 
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #       created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #       plan_family: "CloudFront", 
    #       plan_tier: "BUSINESS", 
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #       ], 
    #       scheduled_change: {
    #         change_type: "CANCELLATION", 
    #         effective_date: Time.parse("2025-02-01T00:00:00Z"), 
    #       }, 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2025-01-16T12:00:00Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_subscription({
    #     arn: "SubscriptionArn", # required
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.arn #=> String
    #   resp.subscription.plan_family #=> String
    #   resp.subscription.plan_tier #=> String
    #   resp.subscription.usage_level #=> String
    #   resp.subscription.scheduled_change.change_type #=> String, one of "DOWNGRADE", "CANCELLATION"
    #   resp.subscription.scheduled_change.effective_date #=> Time
    #   resp.subscription.scheduled_change.plan_tier #=> String
    #   resp.subscription.scheduled_change.usage_level #=> String
    #   resp.subscription.status #=> String, one of "PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"
    #   resp.subscription.status_reason #=> String
    #   resp.subscription.resource_arns #=> Array
    #   resp.subscription.resource_arns[0] #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.updated_at #=> Time
    #   resp.e_tag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/CancelSubscription AWS API Documentation
    #
    # @overload cancel_subscription(params = {})
    # @param [Hash] params ({})
    def cancel_subscription(params = {}, options = {})
      req = build_request(:cancel_subscription, params)
      req.send_request(options)
    end

    # Cancels a pending scheduled change on a subscription, such as a
    # pending downgrade or cancellation. The subscription returns to its
    # state before the change was scheduled.
    #
    # <note markdown="1"> You cannot cancel a scheduled change close to its effective date. If
    # the change is within the processing window, this operation returns an
    # error.
    #
    #  </note>
    #
    # @option params [required, String] :arn
    #   The ARN of the subscription whose pending change you want to cancel.
    #
    # @option params [required, String] :if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CancelSubscriptionChangeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelSubscriptionChangeOutput#subscription #subscription} => Types::Subscription
    #   * {Types::CancelSubscriptionChangeOutput#e_tag #e_tag} => String
    #
    #
    # @example Example: Cancel a pending subscription change
    #
    #   resp = client.cancel_subscription_change({
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #     if_match: "3", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     e_tag: "4", 
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #       created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #       plan_family: "CloudFront", 
    #       plan_tier: "BUSINESS", 
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #       ], 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2025-01-17T09:00:00Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_subscription_change({
    #     arn: "SubscriptionArn", # required
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.arn #=> String
    #   resp.subscription.plan_family #=> String
    #   resp.subscription.plan_tier #=> String
    #   resp.subscription.usage_level #=> String
    #   resp.subscription.scheduled_change.change_type #=> String, one of "DOWNGRADE", "CANCELLATION"
    #   resp.subscription.scheduled_change.effective_date #=> Time
    #   resp.subscription.scheduled_change.plan_tier #=> String
    #   resp.subscription.scheduled_change.usage_level #=> String
    #   resp.subscription.status #=> String, one of "PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"
    #   resp.subscription.status_reason #=> String
    #   resp.subscription.resource_arns #=> Array
    #   resp.subscription.resource_arns[0] #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.updated_at #=> Time
    #   resp.e_tag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/CancelSubscriptionChange AWS API Documentation
    #
    # @overload cancel_subscription_change(params = {})
    # @param [Hash] params ({})
    def cancel_subscription_change(params = {}, options = {})
      req = build_request(:cancel_subscription_change, params)
      req.send_request(options)
    end

    # Creates a flat-rate pricing subscription for the specified resources.
    #
    # <note markdown="1"> When `approvalMode` is set to `MANUAL`, paid-tier subscriptions are
    # created in `PENDING_APPROVAL` status and require a separate
    # `ApprovePaidSubscription` call before billing starts. Free-tier
    # subscriptions are always activated immediately regardless of approval
    # mode.
    #
    #  When `approvalMode` is set to `IMMEDIATE` or is not specified, the
    # subscription is activated immediately.
    #
    #  </note>
    #
    # @option params [required, String] :plan_family
    #   The pricing plan family to subscribe to, such as `CloudFront`.
    #
    # @option params [required, String] :plan_tier
    #   The tier level for the subscription, such as `FREE`, `PRO`,
    #   `BUSINESS`, or `PREMIUM`.
    #
    # @option params [String] :usage_level
    #   The usage level within the plan tier. Specify `DEFAULT` for the base
    #   configuration, or a higher level if your plan tier supports it.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The ARNs of the AWS resources to include in the subscription. Specify
    #   one or more supported resources.
    #
    #   <note markdown="1"> For subscriptions in the CloudFront plan family, the resources must
    #   include exactly one Amazon CloudFront distribution and exactly one AWS
    #   WAF web ACL. You can also include other supported resources, such as
    #   Amazon Route 53 hosted zones and CloudFront KeyValueStores.
    #
    #    </note>
    #
    # @option params [String] :approval_mode
    #   Determines whether the subscription requires explicit approval before
    #   billing starts. Set to `MANUAL` to require a separate
    #   `ApprovePaidSubscription` call, or `IMMEDIATE` to activate the
    #   subscription right away. Defaults to `IMMEDIATE` if not specified.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the request is handled only once. If you send the same request with
    #   the same client token, the API returns the original response without
    #   creating a duplicate subscription.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriptionOutput#subscription #subscription} => Types::Subscription
    #   * {Types::CreateSubscriptionOutput#e_tag #e_tag} => String
    #
    #
    # @example Example: Create a flat-rate pricing subscription (deferred approval)
    #
    #   resp = client.create_subscription({
    #     approval_mode: "MANUAL", 
    #     plan_family: "CloudFront", 
    #     plan_tier: "PRO", 
    #     resource_arns: [
    #       "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #       "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     e_tag: "1", 
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #       created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #       plan_family: "CloudFront", 
    #       plan_tier: "PRO", 
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #       ], 
    #       status: "PENDING_APPROVAL", 
    #       updated_at: Time.parse("2025-01-15T10:30:00Z"), 
    #     }, 
    #   }
    #
    # @example Example: Create a subscription with approval mode
    #
    #   resp = client.create_subscription({
    #     approval_mode: "IMMEDIATE", 
    #     plan_family: "CloudFront", 
    #     plan_tier: "PRO", 
    #     resource_arns: [
    #       "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #       "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     e_tag: "1", 
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #       created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #       plan_family: "CloudFront", 
    #       plan_tier: "PRO", 
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #       ], 
    #       status: "SYNC_IN_PROGRESS", 
    #       updated_at: Time.parse("2025-01-15T10:30:00Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription({
    #     plan_family: "String", # required
    #     plan_tier: "String", # required
    #     usage_level: "String",
    #     resource_arns: ["String"], # required
    #     approval_mode: "MANUAL", # accepts MANUAL, IMMEDIATE
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.arn #=> String
    #   resp.subscription.plan_family #=> String
    #   resp.subscription.plan_tier #=> String
    #   resp.subscription.usage_level #=> String
    #   resp.subscription.scheduled_change.change_type #=> String, one of "DOWNGRADE", "CANCELLATION"
    #   resp.subscription.scheduled_change.effective_date #=> Time
    #   resp.subscription.scheduled_change.plan_tier #=> String
    #   resp.subscription.scheduled_change.usage_level #=> String
    #   resp.subscription.status #=> String, one of "PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"
    #   resp.subscription.status_reason #=> String
    #   resp.subscription.resource_arns #=> Array
    #   resp.subscription.resource_arns[0] #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.updated_at #=> Time
    #   resp.e_tag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/CreateSubscription AWS API Documentation
    #
    # @overload create_subscription(params = {})
    # @param [Hash] params ({})
    def create_subscription(params = {}, options = {})
      req = build_request(:create_subscription, params)
      req.send_request(options)
    end

    # Removes one or more resources from an existing subscription.
    #
    # <note markdown="1"> For subscriptions in the CloudFront plan family, the associated
    # resources must always include exactly one Amazon CloudFront
    # distribution and exactly one AWS WAF web ACL. You cannot remove these
    # required resources.
    #
    #  </note>
    #
    # @option params [required, String] :arn
    #   The ARN of the subscription to remove resources from.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The ARNs of the resources to remove from the subscription. For
    #   subscriptions in the CloudFront plan family, you cannot remove the
    #   required CloudFront distribution or WAF web ACL.
    #
    # @option params [required, String] :if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DisassociateResourcesFromSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateResourcesFromSubscriptionOutput#subscription #subscription} => Types::Subscription
    #   * {Types::DisassociateResourcesFromSubscriptionOutput#e_tag #e_tag} => String
    #
    #
    # @example Example: Remove a resource from a subscription
    #
    #   resp = client.disassociate_resources_from_subscription({
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #     if_match: "2", 
    #     resource_arns: [
    #       "arn:aws:route53:::hostedzone/Z0123456789EXAMPLE", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     e_tag: "3", 
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #       created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #       plan_family: "CloudFront", 
    #       plan_tier: "PRO", 
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #       ], 
    #       status: "SYNC_IN_PROGRESS", 
    #       updated_at: Time.parse("2025-01-18T15:00:00Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resources_from_subscription({
    #     arn: "SubscriptionArn", # required
    #     resource_arns: ["String"], # required
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.arn #=> String
    #   resp.subscription.plan_family #=> String
    #   resp.subscription.plan_tier #=> String
    #   resp.subscription.usage_level #=> String
    #   resp.subscription.scheduled_change.change_type #=> String, one of "DOWNGRADE", "CANCELLATION"
    #   resp.subscription.scheduled_change.effective_date #=> Time
    #   resp.subscription.scheduled_change.plan_tier #=> String
    #   resp.subscription.scheduled_change.usage_level #=> String
    #   resp.subscription.status #=> String, one of "PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"
    #   resp.subscription.status_reason #=> String
    #   resp.subscription.resource_arns #=> Array
    #   resp.subscription.resource_arns[0] #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.updated_at #=> Time
    #   resp.e_tag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/DisassociateResourcesFromSubscription AWS API Documentation
    #
    # @overload disassociate_resources_from_subscription(params = {})
    # @param [Hash] params ({})
    def disassociate_resources_from_subscription(params = {}, options = {})
      req = build_request(:disassociate_resources_from_subscription, params)
      req.send_request(options)
    end

    # Returns the details of a flat-rate pricing subscription, including its
    # current status, associated resources, and any pending scheduled
    # changes.
    #
    # @option params [required, String] :arn
    #   The ARN of the subscription to retrieve.
    #
    # @return [Types::GetSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionOutput#subscription #subscription} => Types::Subscription
    #   * {Types::GetSubscriptionOutput#e_tag #e_tag} => String
    #
    #
    # @example Example: Get subscription details
    #
    #   resp = client.get_subscription({
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     e_tag: "1", 
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #       created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #       plan_family: "CloudFront", 
    #       plan_tier: "PRO", 
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #       ], 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse("2025-01-15T10:30:00Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription({
    #     arn: "SubscriptionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.arn #=> String
    #   resp.subscription.plan_family #=> String
    #   resp.subscription.plan_tier #=> String
    #   resp.subscription.usage_level #=> String
    #   resp.subscription.scheduled_change.change_type #=> String, one of "DOWNGRADE", "CANCELLATION"
    #   resp.subscription.scheduled_change.effective_date #=> Time
    #   resp.subscription.scheduled_change.plan_tier #=> String
    #   resp.subscription.scheduled_change.usage_level #=> String
    #   resp.subscription.status #=> String, one of "PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"
    #   resp.subscription.status_reason #=> String
    #   resp.subscription.resource_arns #=> Array
    #   resp.subscription.resource_arns[0] #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.updated_at #=> Time
    #   resp.e_tag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/GetSubscription AWS API Documentation
    #
    # @overload get_subscription(params = {})
    # @param [Hash] params ({})
    def get_subscription(params = {}, options = {})
      req = build_request(:get_subscription, params)
      req.send_request(options)
    end

    # Returns a summary of all flat-rate pricing subscriptions in the
    # calling account.
    #
    # @option params [String] :next_token
    #   A token from a previous `ListSubscriptions` response. If the response
    #   included a `nextToken`, there are more results available. Pass this
    #   value to retrieve the next page of results.
    #
    # @return [Types::ListSubscriptionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscriptionsOutput#subscription_summaries #subscription_summaries} => Array&lt;Types::SubscriptionSummary&gt;
    #   * {Types::ListSubscriptionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List all subscriptions
    #
    #   resp = client.list_subscriptions({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     subscription_summaries: [
    #       {
    #         arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #         created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #         e_tag: "1", 
    #         plan_family: "CloudFront", 
    #         plan_tier: "PRO", 
    #         resource_arns: [
    #           "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #           "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #         ], 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2025-01-15T10:30:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscriptions({
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription_summaries #=> Array
    #   resp.subscription_summaries[0].arn #=> String
    #   resp.subscription_summaries[0].plan_family #=> String
    #   resp.subscription_summaries[0].plan_tier #=> String
    #   resp.subscription_summaries[0].usage_level #=> String
    #   resp.subscription_summaries[0].scheduled_change.change_type #=> String, one of "DOWNGRADE", "CANCELLATION"
    #   resp.subscription_summaries[0].scheduled_change.effective_date #=> Time
    #   resp.subscription_summaries[0].scheduled_change.plan_tier #=> String
    #   resp.subscription_summaries[0].scheduled_change.usage_level #=> String
    #   resp.subscription_summaries[0].status #=> String, one of "PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"
    #   resp.subscription_summaries[0].status_reason #=> String
    #   resp.subscription_summaries[0].resource_arns #=> Array
    #   resp.subscription_summaries[0].resource_arns[0] #=> String
    #   resp.subscription_summaries[0].created_at #=> Time
    #   resp.subscription_summaries[0].updated_at #=> Time
    #   resp.subscription_summaries[0].e_tag #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ListSubscriptions AWS API Documentation
    #
    # @overload list_subscriptions(params = {})
    # @param [Hash] params ({})
    def list_subscriptions(params = {}, options = {})
      req = build_request(:list_subscriptions, params)
      req.send_request(options)
    end

    # Changes the plan tier of an existing subscription.
    #
    # <note markdown="1"> Upgrades take effect immediately. Downgrades are scheduled and the
    # current tier remains unchanged until the end of the billing cycle
    # (calendar month). You cannot update a subscription while a scheduled
    # change is pending. To make a new change, first cancel the pending
    # change using `CancelSubscriptionChange`.
    #
    #  This operation replaces the plan tier value. If you omit the optional
    # `usageLevel` field, it is reset to the default.
    #
    #  </note>
    #
    # @option params [required, String] :arn
    #   The ARN of the subscription to update.
    #
    # @option params [required, String] :plan_tier
    #   The new tier level for the subscription.
    #
    # @option params [String] :usage_level
    #   The usage level within the plan tier. Specify `DEFAULT` for the base
    #   configuration. If omitted, the usage level is reset to the default.
    #
    # @option params [required, String] :if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response. This ensures you are updating the
    #   expected version of the subscription.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubscriptionOutput#subscription #subscription} => Types::Subscription
    #   * {Types::UpdateSubscriptionOutput#e_tag #e_tag} => String
    #
    #
    # @example Example: Update a subscription plan tier
    #
    #   resp = client.update_subscription({
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #     if_match: "1", 
    #     plan_tier: "BUSINESS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     e_tag: "2", 
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890", 
    #       created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #       plan_family: "CloudFront", 
    #       plan_tier: "BUSINESS", 
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4", 
    #       ], 
    #       status: "SYNC_IN_PROGRESS", 
    #       updated_at: Time.parse("2025-01-16T08:00:00Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription({
    #     arn: "SubscriptionArn", # required
    #     plan_tier: "String", # required
    #     usage_level: "String",
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.arn #=> String
    #   resp.subscription.plan_family #=> String
    #   resp.subscription.plan_tier #=> String
    #   resp.subscription.usage_level #=> String
    #   resp.subscription.scheduled_change.change_type #=> String, one of "DOWNGRADE", "CANCELLATION"
    #   resp.subscription.scheduled_change.effective_date #=> Time
    #   resp.subscription.scheduled_change.plan_tier #=> String
    #   resp.subscription.scheduled_change.usage_level #=> String
    #   resp.subscription.status #=> String, one of "PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"
    #   resp.subscription.status_reason #=> String
    #   resp.subscription.resource_arns #=> Array
    #   resp.subscription.resource_arns[0] #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.updated_at #=> Time
    #   resp.e_tag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/UpdateSubscription AWS API Documentation
    #
    # @overload update_subscription(params = {})
    # @param [Hash] params ({})
    def update_subscription(params = {}, options = {})
      req = build_request(:update_subscription, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PricingPlanManager')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-pricingplanmanager'
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
