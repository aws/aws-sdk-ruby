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

module Aws::Route53GlobalResolver
  # An API client for Route53GlobalResolver.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Route53GlobalResolver::Client.new(
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

    @identifier = :route53globalresolver

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
    add_plugin(Aws::Route53GlobalResolver::Plugins::Endpoints)

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
    #   @option options [Aws::Route53GlobalResolver::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Route53GlobalResolver::EndpointParameters`.
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

    # Associates a Route 53 private hosted zone with a Route 53 Global
    # Resolver resource. This allows the resolver to resolve DNS queries for
    # the private hosted zone from anywhere globally.
    #
    # @option params [required, String] :hosted_zone_id
    #   The ID of the Route 53 private hosted zone to associate with the Route
    #   53 Global Resolver resource.
    #
    # @option params [required, String] :resource_arn
    #   An Amazon Resource Name (ARN) of the Route 53 Global Resolver the
    #   private hosted zone will be associated to.
    #
    # @option params [required, String] :name
    #   Name for the private hosted zone association.
    #
    # @return [Types::AssociateHostedZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateHostedZoneOutput#id #id} => String
    #   * {Types::AssociateHostedZoneOutput#resource_arn #resource_arn} => String
    #   * {Types::AssociateHostedZoneOutput#hosted_zone_id #hosted_zone_id} => String
    #   * {Types::AssociateHostedZoneOutput#hosted_zone_name #hosted_zone_name} => String
    #   * {Types::AssociateHostedZoneOutput#name #name} => String
    #   * {Types::AssociateHostedZoneOutput#created_at #created_at} => Time
    #   * {Types::AssociateHostedZoneOutput#updated_at #updated_at} => Time
    #   * {Types::AssociateHostedZoneOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_hosted_zone({
    #     hosted_zone_id: "HostedZoneId", # required
    #     resource_arn: "ResourceArn", # required
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.resource_arn #=> String
    #   resp.hosted_zone_id #=> String
    #   resp.hosted_zone_name #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/AssociateHostedZone AWS API Documentation
    #
    # @overload associate_hosted_zone(params = {})
    # @param [Hash] params ({})
    def associate_hosted_zone(params = {}, options = {})
      req = build_request(:associate_hosted_zone, params)
      req.send_request(options)
    end

    # Creates multiple DNS firewall rules in a single operation. This is
    # more efficient than creating rules individually when you need to set
    # up multiple rules at once.
    #
    # @option params [required, Array<Types::BatchCreateFirewallRuleInputItem>] :firewall_rules
    #   The `BatchCreateFirewallRuleInputItem` objects contain the information
    #   for each Firewall rule.
    #
    # @return [Types::BatchCreateFirewallRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateFirewallRuleOutput#failures #failures} => Array&lt;Types::BatchCreateFirewallRuleOutputItem&gt;
    #   * {Types::BatchCreateFirewallRuleOutput#successes #successes} => Array&lt;Types::BatchCreateFirewallRuleOutputItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_firewall_rule({
    #     firewall_rules: [ # required
    #       {
    #         action: "ALLOW", # required, accepts ALLOW, ALERT, BLOCK
    #         block_override_dns_type: "CNAME", # accepts CNAME
    #         block_override_domain: "Domain",
    #         block_override_ttl: 1,
    #         block_response: "NODATA", # accepts NODATA, NXDOMAIN, OVERRIDE
    #         client_token: "ClientToken", # required
    #         confidence_threshold: "LOW", # accepts LOW, MEDIUM, HIGH
    #         description: "ResourceDescription",
    #         dns_advanced_protection: "DGA", # accepts DGA, DNS_TUNNELING
    #         firewall_domain_list_id: "ResourceId",
    #         name: "ResourceName", # required
    #         priority: 1,
    #         dns_view_id: "ResourceId", # required
    #         q_type: "DnsQueryType",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].firewall_rule.action #=> String, one of "ALLOW", "ALERT", "BLOCK"
    #   resp.failures[0].firewall_rule.block_override_dns_type #=> String, one of "CNAME"
    #   resp.failures[0].firewall_rule.block_override_domain #=> String
    #   resp.failures[0].firewall_rule.block_override_ttl #=> Integer
    #   resp.failures[0].firewall_rule.block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.failures[0].firewall_rule.client_token #=> String
    #   resp.failures[0].firewall_rule.confidence_threshold #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.failures[0].firewall_rule.created_at #=> Time
    #   resp.failures[0].firewall_rule.description #=> String
    #   resp.failures[0].firewall_rule.dns_advanced_protection #=> String, one of "DGA", "DNS_TUNNELING"
    #   resp.failures[0].firewall_rule.firewall_domain_list_id #=> String
    #   resp.failures[0].firewall_rule.id #=> String
    #   resp.failures[0].firewall_rule.managed_domain_list_name #=> String
    #   resp.failures[0].firewall_rule.name #=> String
    #   resp.failures[0].firewall_rule.priority #=> Integer
    #   resp.failures[0].firewall_rule.dns_view_id #=> String
    #   resp.failures[0].firewall_rule.query_type #=> String
    #   resp.failures[0].firewall_rule.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.failures[0].firewall_rule.updated_at #=> Time
    #   resp.failures[0].code #=> Integer
    #   resp.failures[0].message #=> String
    #   resp.successes #=> Array
    #   resp.successes[0].firewall_rule.action #=> String, one of "ALLOW", "ALERT", "BLOCK"
    #   resp.successes[0].firewall_rule.block_override_dns_type #=> String, one of "CNAME"
    #   resp.successes[0].firewall_rule.block_override_domain #=> String
    #   resp.successes[0].firewall_rule.block_override_ttl #=> Integer
    #   resp.successes[0].firewall_rule.block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.successes[0].firewall_rule.client_token #=> String
    #   resp.successes[0].firewall_rule.confidence_threshold #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.successes[0].firewall_rule.created_at #=> Time
    #   resp.successes[0].firewall_rule.description #=> String
    #   resp.successes[0].firewall_rule.dns_advanced_protection #=> String, one of "DGA", "DNS_TUNNELING"
    #   resp.successes[0].firewall_rule.firewall_domain_list_id #=> String
    #   resp.successes[0].firewall_rule.id #=> String
    #   resp.successes[0].firewall_rule.managed_domain_list_name #=> String
    #   resp.successes[0].firewall_rule.name #=> String
    #   resp.successes[0].firewall_rule.priority #=> Integer
    #   resp.successes[0].firewall_rule.dns_view_id #=> String
    #   resp.successes[0].firewall_rule.query_type #=> String
    #   resp.successes[0].firewall_rule.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.successes[0].firewall_rule.updated_at #=> Time
    #   resp.successes[0].code #=> Integer
    #   resp.successes[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchCreateFirewallRule AWS API Documentation
    #
    # @overload batch_create_firewall_rule(params = {})
    # @param [Hash] params ({})
    def batch_create_firewall_rule(params = {}, options = {})
      req = build_request(:batch_create_firewall_rule, params)
      req.send_request(options)
    end

    # Deletes multiple DNS firewall rules in a single operation. This is
    # more efficient than deleting rules individually.
    #
    # @option params [required, Array<Types::BatchDeleteFirewallRuleInputItem>] :firewall_rules
    #   An array of the DNS Firewall IDs to be deleted.
    #
    # @return [Types::BatchDeleteFirewallRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteFirewallRuleOutput#failures #failures} => Array&lt;Types::BatchDeleteFirewallRuleOutputItem&gt;
    #   * {Types::BatchDeleteFirewallRuleOutput#successes #successes} => Array&lt;Types::BatchDeleteFirewallRuleOutputItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_firewall_rule({
    #     firewall_rules: [ # required
    #       {
    #         firewall_rule_id: "ResourceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].firewall_rule.client_token #=> String
    #   resp.failures[0].firewall_rule.id #=> String
    #   resp.failures[0].firewall_rule.name #=> String
    #   resp.failures[0].firewall_rule.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.failures[0].code #=> Integer
    #   resp.failures[0].message #=> String
    #   resp.successes #=> Array
    #   resp.successes[0].firewall_rule.client_token #=> String
    #   resp.successes[0].firewall_rule.id #=> String
    #   resp.successes[0].firewall_rule.name #=> String
    #   resp.successes[0].firewall_rule.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.successes[0].code #=> Integer
    #   resp.successes[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchDeleteFirewallRule AWS API Documentation
    #
    # @overload batch_delete_firewall_rule(params = {})
    # @param [Hash] params ({})
    def batch_delete_firewall_rule(params = {}, options = {})
      req = build_request(:batch_delete_firewall_rule, params)
      req.send_request(options)
    end

    # Updates multiple DNS firewall rules in a single operation. This is
    # more efficient than updating rules individually.
    #
    # @option params [required, Array<Types::BatchUpdateFirewallRuleInputItem>] :firewall_rules
    #   The DNS Firewall rule IDs to be updated.
    #
    # @return [Types::BatchUpdateFirewallRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateFirewallRuleOutput#failures #failures} => Array&lt;Types::BatchUpdateFirewallRuleOutputItem&gt;
    #   * {Types::BatchUpdateFirewallRuleOutput#successes #successes} => Array&lt;Types::BatchUpdateFirewallRuleOutputItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_firewall_rule({
    #     firewall_rules: [ # required
    #       {
    #         action: "ALLOW", # accepts ALLOW, ALERT, BLOCK
    #         block_override_dns_type: "CNAME", # accepts CNAME
    #         block_override_domain: "Domain",
    #         block_override_ttl: 1,
    #         block_response: "NODATA", # accepts NODATA, NXDOMAIN, OVERRIDE
    #         confidence_threshold: "LOW", # accepts LOW, MEDIUM, HIGH
    #         description: "ResourceDescription",
    #         dns_advanced_protection: "DGA", # accepts DGA, DNS_TUNNELING
    #         firewall_rule_id: "ResourceId", # required
    #         name: "ResourceName",
    #         priority: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].firewall_rule.action #=> String, one of "ALLOW", "ALERT", "BLOCK"
    #   resp.failures[0].firewall_rule.block_override_dns_type #=> String, one of "CNAME"
    #   resp.failures[0].firewall_rule.block_override_domain #=> String
    #   resp.failures[0].firewall_rule.block_override_ttl #=> Integer
    #   resp.failures[0].firewall_rule.block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.failures[0].firewall_rule.client_token #=> String
    #   resp.failures[0].firewall_rule.confidence_threshold #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.failures[0].firewall_rule.created_at #=> Time
    #   resp.failures[0].firewall_rule.description #=> String
    #   resp.failures[0].firewall_rule.dns_advanced_protection #=> String, one of "DGA", "DNS_TUNNELING"
    #   resp.failures[0].firewall_rule.firewall_domain_list_id #=> String
    #   resp.failures[0].firewall_rule.id #=> String
    #   resp.failures[0].firewall_rule.name #=> String
    #   resp.failures[0].firewall_rule.priority #=> Integer
    #   resp.failures[0].firewall_rule.dns_view_id #=> String
    #   resp.failures[0].firewall_rule.query_type #=> String
    #   resp.failures[0].firewall_rule.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.failures[0].firewall_rule.updated_at #=> Time
    #   resp.failures[0].code #=> Integer
    #   resp.failures[0].message #=> String
    #   resp.successes #=> Array
    #   resp.successes[0].firewall_rule.action #=> String, one of "ALLOW", "ALERT", "BLOCK"
    #   resp.successes[0].firewall_rule.block_override_dns_type #=> String, one of "CNAME"
    #   resp.successes[0].firewall_rule.block_override_domain #=> String
    #   resp.successes[0].firewall_rule.block_override_ttl #=> Integer
    #   resp.successes[0].firewall_rule.block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.successes[0].firewall_rule.client_token #=> String
    #   resp.successes[0].firewall_rule.confidence_threshold #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.successes[0].firewall_rule.created_at #=> Time
    #   resp.successes[0].firewall_rule.description #=> String
    #   resp.successes[0].firewall_rule.dns_advanced_protection #=> String, one of "DGA", "DNS_TUNNELING"
    #   resp.successes[0].firewall_rule.firewall_domain_list_id #=> String
    #   resp.successes[0].firewall_rule.id #=> String
    #   resp.successes[0].firewall_rule.name #=> String
    #   resp.successes[0].firewall_rule.priority #=> Integer
    #   resp.successes[0].firewall_rule.dns_view_id #=> String
    #   resp.successes[0].firewall_rule.query_type #=> String
    #   resp.successes[0].firewall_rule.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.successes[0].firewall_rule.updated_at #=> Time
    #   resp.successes[0].code #=> Integer
    #   resp.successes[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/BatchUpdateFirewallRule AWS API Documentation
    #
    # @overload batch_update_firewall_rule(params = {})
    # @param [Hash] params ({})
    def batch_update_firewall_rule(params = {}, options = {})
      req = build_request(:batch_update_firewall_rule, params)
      req.send_request(options)
    end

    # Creates an access source for a DNS view. Access sources define IP
    # addresses or CIDR ranges that are allowed to send DNS queries to the
    # Route 53 Global Resolver, along with the permitted DNS protocols.
    #
    # @option params [required, String] :cidr
    #   The IP address or CIDR range that is allowed to send DNS queries to
    #   the Route 53 Global Resolver.
    #
    # @option params [String] :client_token
    #   A unique string that identifies the request and ensures idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :ip_address_type
    #   The IP address type for this access source. Valid values are IPv4 and
    #   IPv6 (if the Route 53 Global Resolver supports dual-stack).
    #
    # @option params [String] :name
    #   A descriptive name for the access source.
    #
    # @option params [required, String] :dns_view_id
    #   The ID of the DNS view to associate with this access source.
    #
    # @option params [required, String] :protocol
    #   The DNS protocol that is permitted for this access source. Valid
    #   values are Do53 (DNS over port 53), DoT (DNS over TLS), and DoH (DNS
    #   over HTTPS).
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to associate with the access source.
    #
    # @return [Types::CreateAccessSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessSourceOutput#arn #arn} => String
    #   * {Types::CreateAccessSourceOutput#cidr #cidr} => String
    #   * {Types::CreateAccessSourceOutput#created_at #created_at} => Time
    #   * {Types::CreateAccessSourceOutput#id #id} => String
    #   * {Types::CreateAccessSourceOutput#ip_address_type #ip_address_type} => String
    #   * {Types::CreateAccessSourceOutput#name #name} => String
    #   * {Types::CreateAccessSourceOutput#dns_view_id #dns_view_id} => String
    #   * {Types::CreateAccessSourceOutput#protocol #protocol} => String
    #   * {Types::CreateAccessSourceOutput#status #status} => String
    #   * {Types::CreateAccessSourceOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: CreateAccessSource example
    #
    #   resp = client.create_access_source({
    #     name: "My Access Source", 
    #     cidr: "85.90.183.3/30", 
    #     client_token: "9fas9-9usdfa-xbi8-kco", 
    #     dns_view_id: "dnsv-123456789", 
    #     ip_address_type: "IPV4", 
    #     protocol: "DO53", 
    #     tags: {
    #       "Key1" => "Value1", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "My Access Source", 
    #     arn: "arn:aws:route53globalresolver::123456789012:access-source/as-823as9d9831", 
    #     cidr: "85.90.183.3/30", 
    #     created_at: Time.parse("2025-10-16T14:07:45.934184715Z"), 
    #     dns_view_id: "dnsv-123456789", 
    #     id: "as-123456789", 
    #     ip_address_type: "IPV4", 
    #     protocol: "DO53", 
    #     status: "CREATING", 
    #     updated_at: Time.parse("2025-10-16T14:07:45.934184715Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_source({
    #     cidr: "Cidr", # required
    #     client_token: "ClientToken",
    #     ip_address_type: "IPV4", # accepts IPV4, IPV6
    #     name: "ResourceNameShort",
    #     dns_view_id: "ResourceId", # required
    #     protocol: "DO53", # required, accepts DO53, DOH, DOT
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cidr #=> String
    #   resp.created_at #=> Time
    #   resp.id #=> String
    #   resp.ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.name #=> String
    #   resp.dns_view_id #=> String
    #   resp.protocol #=> String, one of "DO53", "DOH", "DOT"
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateAccessSource AWS API Documentation
    #
    # @overload create_access_source(params = {})
    # @param [Hash] params ({})
    def create_access_source(params = {}, options = {})
      req = build_request(:create_access_source, params)
      req.send_request(options)
    end

    # Creates an access token for a DNS view. Access tokens provide
    # token-based authentication for DNS-over-HTTPS (DoH) and DNS-over-TLS
    # (DoT) connections to the Route 53 Global Resolver.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This means
    #   that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :dns_view_id
    #   The ID of the DNS view to associate with this token.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expires_at
    #   The date and time when the token expires. Tokens can have a minimum
    #   expiration of 30 days and maximum of 365 days from creation.
    #
    # @option params [String] :name
    #   A descriptive name for the access token.
    #
    # @option params [Hash<String,String>] :tags
    #   An array of user-defined keys and optional values. These tags can be
    #   used for categorization and organization.
    #
    # @return [Types::CreateAccessTokenOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessTokenOutput#id #id} => String
    #   * {Types::CreateAccessTokenOutput#arn #arn} => String
    #   * {Types::CreateAccessTokenOutput#client_token #client_token} => String
    #   * {Types::CreateAccessTokenOutput#created_at #created_at} => Time
    #   * {Types::CreateAccessTokenOutput#dns_view_id #dns_view_id} => String
    #   * {Types::CreateAccessTokenOutput#expires_at #expires_at} => Time
    #   * {Types::CreateAccessTokenOutput#name #name} => String
    #   * {Types::CreateAccessTokenOutput#status #status} => String
    #   * {Types::CreateAccessTokenOutput#value #value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_token({
    #     client_token: "ClientToken",
    #     dns_view_id: "ResourceId", # required
    #     expires_at: Time.now,
    #     name: "ResourceNameShort",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.created_at #=> Time
    #   resp.dns_view_id #=> String
    #   resp.expires_at #=> Time
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "DELETING"
    #   resp.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateAccessToken AWS API Documentation
    #
    # @overload create_access_token(params = {})
    # @param [Hash] params ({})
    def create_access_token(params = {}, options = {})
      req = build_request(:create_access_token, params)
      req.send_request(options)
    end

    # Creates a DNS view within a Route 53 Global Resolver. A DNS view
    # models end users, user groups, networks, and devices, and serves as a
    # parent resource that holds configurations controlling access,
    # authorization, DNS firewall rules, and forwarding rules.
    #
    # @option params [required, String] :global_resolver_id
    #   The ID of the Route 53 Global Resolver to associate with this DNS
    #   view.
    #
    # @option params [String] :client_token
    #   A unique string that identifies the request and ensures idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   A descriptive name for the DNS view.
    #
    # @option params [String] :dnssec_validation
    #   Whether to enable DNSSEC validation for DNS queries in this DNS view.
    #   When enabled, the resolver verifies the authenticity and integrity of
    #   DNS responses from public name servers for DNSSEC-signed domains.
    #
    # @option params [String] :edns_client_subnet
    #   Whether to enable EDNS Client Subnet injection for DNS queries in this
    #   DNS view. When enabled, client subnet information is forwarded to
    #   provide more accurate geographic-based DNS responses.
    #
    # @option params [String] :firewall_rules_fail_open
    #   Determines the behavior when Route 53 Global Resolver cannot apply DNS
    #   firewall rules due to service impairment. When enabled, DNS queries
    #   are allowed through; when disabled, queries are blocked.
    #
    # @option params [String] :description
    #   An optional description for the DNS view.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to associate with the DNS view.
    #
    # @return [Types::CreateDNSViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDNSViewOutput#id #id} => String
    #   * {Types::CreateDNSViewOutput#arn #arn} => String
    #   * {Types::CreateDNSViewOutput#client_token #client_token} => String
    #   * {Types::CreateDNSViewOutput#dnssec_validation #dnssec_validation} => String
    #   * {Types::CreateDNSViewOutput#edns_client_subnet #edns_client_subnet} => String
    #   * {Types::CreateDNSViewOutput#firewall_rules_fail_open #firewall_rules_fail_open} => String
    #   * {Types::CreateDNSViewOutput#name #name} => String
    #   * {Types::CreateDNSViewOutput#description #description} => String
    #   * {Types::CreateDNSViewOutput#global_resolver_id #global_resolver_id} => String
    #   * {Types::CreateDNSViewOutput#created_at #created_at} => Time
    #   * {Types::CreateDNSViewOutput#updated_at #updated_at} => Time
    #   * {Types::CreateDNSViewOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dns_view({
    #     global_resolver_id: "ResourceId", # required
    #     client_token: "ClientToken",
    #     name: "ResourceName", # required
    #     dnssec_validation: "ENABLED", # accepts ENABLED, DISABLED
    #     edns_client_subnet: "ENABLED", # accepts ENABLED, DISABLED
    #     firewall_rules_fail_open: "ENABLED", # accepts ENABLED, DISABLED
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.dnssec_validation #=> String, one of "ENABLED", "DISABLED"
    #   resp.edns_client_subnet #=> String, one of "ENABLED", "DISABLED"
    #   resp.firewall_rules_fail_open #=> String, one of "ENABLED", "DISABLED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.global_resolver_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateDNSView AWS API Documentation
    #
    # @overload create_dns_view(params = {})
    # @param [Hash] params ({})
    def create_dns_view(params = {}, options = {})
      req = build_request(:create_dns_view, params)
      req.send_request(options)
    end

    # Creates a firewall domain list. Domain lists are reusable sets of
    # domain specifications that you use in DNS firewall rules to allow,
    # block, or alert on DNS queries to specific domains.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This means
    #   that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :global_resolver_id
    #   The ID of the Route 53 Global Resolver that the domain list will be
    #   associated with.
    #
    # @option params [String] :description
    #   An optional description for the firewall domain list.
    #
    # @option params [required, String] :name
    #   A descriptive name for the firewall domain list.
    #
    # @option params [Hash<String,String>] :tags
    #   An array of user-defined keys and optional values. These tags can be
    #   used for categorization and organization.
    #
    # @return [Types::CreateFirewallDomainListOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFirewallDomainListOutput#arn #arn} => String
    #   * {Types::CreateFirewallDomainListOutput#global_resolver_id #global_resolver_id} => String
    #   * {Types::CreateFirewallDomainListOutput#created_at #created_at} => Time
    #   * {Types::CreateFirewallDomainListOutput#description #description} => String
    #   * {Types::CreateFirewallDomainListOutput#domain_count #domain_count} => Integer
    #   * {Types::CreateFirewallDomainListOutput#id #id} => String
    #   * {Types::CreateFirewallDomainListOutput#name #name} => String
    #   * {Types::CreateFirewallDomainListOutput#status #status} => String
    #   * {Types::CreateFirewallDomainListOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall_domain_list({
    #     client_token: "ClientToken",
    #     global_resolver_id: "ResourceId", # required
    #     description: "ResourceDescription",
    #     name: "ResourceName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.global_resolver_id #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.domain_count #=> Integer
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateFirewallDomainList AWS API Documentation
    #
    # @overload create_firewall_domain_list(params = {})
    # @param [Hash] params ({})
    def create_firewall_domain_list(params = {}, options = {})
      req = build_request(:create_firewall_domain_list, params)
      req.send_request(options)
    end

    # Creates a DNS firewall rule. Firewall rules define actions (ALLOW,
    # BLOCK, or ALERT) to take on DNS queries that match specified domain
    # lists, managed domain lists, or advanced threat protections.
    #
    # @option params [required, String] :action
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list:
    #
    #   * `ALLOW` - Permit the request to go through.
    #
    #   * `ALERT` - Permit the request and send metrics and logs to
    #     CloudWatch.
    #
    #   * `BLOCK` - Disallow the request. This option requires additional
    #     details in the rule's `BlockResponse`.
    #
    # @option params [String] :block_override_dns_type
    #   The DNS record's type. This determines the format of the record value
    #   that you provided in `BlockOverrideDomain`. Used for the rule action
    #   `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is `OVERRIDE`.
    #
    # @option params [String] :block_override_domain
    #   The custom DNS record to send back in response to the query. Used for
    #   the rule action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is `OVERRIDE`.
    #
    # @option params [Integer] :block_override_ttl
    #   The recommended amount of time, in seconds, for the DNS resolver or
    #   web browser to cache the provided override record. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is `OVERRIDE`.
    #
    # @option params [String] :block_response
    #   The response to return when the action is BLOCK. Valid values are
    #   NXDOMAIN (domain does not exist), NODATA (domain exists but no
    #   records), or OVERRIDE (return custom response).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This means
    #   that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :confidence_threshold
    #   The confidence threshold for advanced threat detection. Valid values
    #   are HIGH, MEDIUM, or LOW, indicating the accuracy level required for
    #   threat detection.
    #
    # @option params [String] :description
    #   An optional description for the firewall rule.
    #
    # @option params [String] :dns_advanced_protection
    #   Whether to enable advanced DNS threat protection for this rule.
    #   Advanced protection can detect and block DNS tunneling and Domain
    #   Generation Algorithm (DGA) threats.
    #
    # @option params [String] :firewall_domain_list_id
    #   The ID of the firewall domain list to use in this rule.
    #
    # @option params [required, String] :name
    #   A descriptive name for the firewall rule.
    #
    # @option params [Integer] :priority
    #   The priority of this rule. Rules are evaluated in priority order, with
    #   lower numbers having higher priority. When a DNS query matches
    #   multiple rules, the rule with the highest priority (lowest number) is
    #   applied.
    #
    # @option params [required, String] :dns_view_id
    #   The ID of the DNS view to associate with this firewall rule.
    #
    # @option params [String] :q_type
    #   The DNS query type to match for this rule. Examples include A (IPv4
    #   address), AAAA (IPv6 address), MX (mail exchange), or TXT (text
    #   record).
    #
    # @return [Types::CreateFirewallRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFirewallRuleOutput#action #action} => String
    #   * {Types::CreateFirewallRuleOutput#block_override_dns_type #block_override_dns_type} => String
    #   * {Types::CreateFirewallRuleOutput#block_override_domain #block_override_domain} => String
    #   * {Types::CreateFirewallRuleOutput#block_override_ttl #block_override_ttl} => Integer
    #   * {Types::CreateFirewallRuleOutput#block_response #block_response} => String
    #   * {Types::CreateFirewallRuleOutput#confidence_threshold #confidence_threshold} => String
    #   * {Types::CreateFirewallRuleOutput#created_at #created_at} => Time
    #   * {Types::CreateFirewallRuleOutput#description #description} => String
    #   * {Types::CreateFirewallRuleOutput#dns_advanced_protection #dns_advanced_protection} => String
    #   * {Types::CreateFirewallRuleOutput#firewall_domain_list_id #firewall_domain_list_id} => String
    #   * {Types::CreateFirewallRuleOutput#id #id} => String
    #   * {Types::CreateFirewallRuleOutput#name #name} => String
    #   * {Types::CreateFirewallRuleOutput#priority #priority} => Integer
    #   * {Types::CreateFirewallRuleOutput#dns_view_id #dns_view_id} => String
    #   * {Types::CreateFirewallRuleOutput#query_type #query_type} => String
    #   * {Types::CreateFirewallRuleOutput#status #status} => String
    #   * {Types::CreateFirewallRuleOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall_rule({
    #     action: "ALLOW", # required, accepts ALLOW, ALERT, BLOCK
    #     block_override_dns_type: "CNAME", # accepts CNAME
    #     block_override_domain: "Domain",
    #     block_override_ttl: 1,
    #     block_response: "NODATA", # accepts NODATA, NXDOMAIN, OVERRIDE
    #     client_token: "ClientToken",
    #     confidence_threshold: "LOW", # accepts LOW, MEDIUM, HIGH
    #     description: "ResourceDescription",
    #     dns_advanced_protection: "DGA", # accepts DGA, DNS_TUNNELING
    #     firewall_domain_list_id: "ResourceId",
    #     name: "ResourceName", # required
    #     priority: 1,
    #     dns_view_id: "ResourceId", # required
    #     q_type: "DnsQueryType",
    #   })
    #
    # @example Response structure
    #
    #   resp.action #=> String, one of "ALLOW", "ALERT", "BLOCK"
    #   resp.block_override_dns_type #=> String, one of "CNAME"
    #   resp.block_override_domain #=> String
    #   resp.block_override_ttl #=> Integer
    #   resp.block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.confidence_threshold #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.dns_advanced_protection #=> String, one of "DGA", "DNS_TUNNELING"
    #   resp.firewall_domain_list_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.priority #=> Integer
    #   resp.dns_view_id #=> String
    #   resp.query_type #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateFirewallRule AWS API Documentation
    #
    # @overload create_firewall_rule(params = {})
    # @param [Hash] params ({})
    def create_firewall_rule(params = {}, options = {})
      req = build_request(:create_firewall_rule, params)
      req.send_request(options)
    end

    # Creates a new Route 53 Global Resolver instance. A Route 53 Global
    # Resolver is a global, internet-accessible DNS resolver that provides
    # secure DNS resolution for both public and private domains through
    # global anycast IP addresses.
    #
    # @option params [String] :client_token
    #   A unique string that identifies the request and ensures idempotency.
    #   If you make multiple requests with the same client token, only one
    #   Route 53 Global Resolver is created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   An optional description for the Route 53 Global Resolver instance.
    #   Maximum length of 1024 characters.
    #
    # @option params [required, String] :name
    #   A descriptive name for the Route 53 Global Resolver instance. Maximum
    #   length of 64 characters.
    #
    # @option params [String] :observability_region
    #   The AWS region where query resolution logs and metrics will be
    #   aggregated and delivered. If not specified, logging is not enabled.
    #
    # @option params [required, Array<String>] :regions
    #   List of AWS regions where the Route 53 Global Resolver will operate.
    #   The resolver will be distributed across these regions to provide
    #   global availability and low-latency DNS resolution.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to associate with the Route 53 Global Resolver. Tags are
    #   key-value pairs that help you organize and identify your resources.
    #
    # @return [Types::CreateGlobalResolverOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGlobalResolverOutput#id #id} => String
    #   * {Types::CreateGlobalResolverOutput#arn #arn} => String
    #   * {Types::CreateGlobalResolverOutput#client_token #client_token} => String
    #   * {Types::CreateGlobalResolverOutput#created_at #created_at} => Time
    #   * {Types::CreateGlobalResolverOutput#description #description} => String
    #   * {Types::CreateGlobalResolverOutput#dns_name #dns_name} => String
    #   * {Types::CreateGlobalResolverOutput#ipv4_addresses #ipv4_addresses} => Array&lt;String&gt;
    #   * {Types::CreateGlobalResolverOutput#name #name} => String
    #   * {Types::CreateGlobalResolverOutput#observability_region #observability_region} => String
    #   * {Types::CreateGlobalResolverOutput#regions #regions} => Array&lt;String&gt;
    #   * {Types::CreateGlobalResolverOutput#status #status} => String
    #   * {Types::CreateGlobalResolverOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_global_resolver({
    #     client_token: "ClientToken",
    #     description: "ResourceDescription",
    #     name: "ResourceName", # required
    #     observability_region: "Region",
    #     regions: ["Region"], # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.dns_name #=> String
    #   resp.ipv4_addresses #=> Array
    #   resp.ipv4_addresses[0] #=> String
    #   resp.name #=> String
    #   resp.observability_region #=> String
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/CreateGlobalResolver AWS API Documentation
    #
    # @overload create_global_resolver(params = {})
    # @param [Hash] params ({})
    def create_global_resolver(params = {}, options = {})
      req = build_request(:create_global_resolver, params)
      req.send_request(options)
    end

    # Deletes an access source. This operation cannot be undone.
    #
    # @option params [required, String] :access_source_id
    #   The unique identifier of the access source to delete.
    #
    # @return [Types::DeleteAccessSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccessSourceOutput#arn #arn} => String
    #   * {Types::DeleteAccessSourceOutput#cidr #cidr} => String
    #   * {Types::DeleteAccessSourceOutput#created_at #created_at} => Time
    #   * {Types::DeleteAccessSourceOutput#id #id} => String
    #   * {Types::DeleteAccessSourceOutput#ip_address_type #ip_address_type} => String
    #   * {Types::DeleteAccessSourceOutput#name #name} => String
    #   * {Types::DeleteAccessSourceOutput#dns_view_id #dns_view_id} => String
    #   * {Types::DeleteAccessSourceOutput#protocol #protocol} => String
    #   * {Types::DeleteAccessSourceOutput#status #status} => String
    #   * {Types::DeleteAccessSourceOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_source({
    #     access_source_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cidr #=> String
    #   resp.created_at #=> Time
    #   resp.id #=> String
    #   resp.ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.name #=> String
    #   resp.dns_view_id #=> String
    #   resp.protocol #=> String, one of "DO53", "DOH", "DOT"
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteAccessSource AWS API Documentation
    #
    # @overload delete_access_source(params = {})
    # @param [Hash] params ({})
    def delete_access_source(params = {}, options = {})
      req = build_request(:delete_access_source, params)
      req.send_request(options)
    end

    # Deletes an access token. This operation cannot be undone.
    #
    # @option params [required, String] :access_token_id
    #   The unique identifier of the access token to delete.
    #
    # @return [Types::DeleteAccessTokenOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccessTokenOutput#id #id} => String
    #   * {Types::DeleteAccessTokenOutput#status #status} => String
    #   * {Types::DeleteAccessTokenOutput#deleted_at #deleted_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_token({
    #     access_token_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "DELETING"
    #   resp.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteAccessToken AWS API Documentation
    #
    # @overload delete_access_token(params = {})
    # @param [Hash] params ({})
    def delete_access_token(params = {}, options = {})
      req = build_request(:delete_access_token, params)
      req.send_request(options)
    end

    # Deletes a DNS view. This operation cannot be undone.
    #
    # @option params [required, String] :dns_view_id
    #   The unique identifier of the DNS view to delete.
    #
    # @return [Types::DeleteDNSViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDNSViewOutput#id #id} => String
    #   * {Types::DeleteDNSViewOutput#arn #arn} => String
    #   * {Types::DeleteDNSViewOutput#client_token #client_token} => String
    #   * {Types::DeleteDNSViewOutput#dnssec_validation #dnssec_validation} => String
    #   * {Types::DeleteDNSViewOutput#edns_client_subnet #edns_client_subnet} => String
    #   * {Types::DeleteDNSViewOutput#firewall_rules_fail_open #firewall_rules_fail_open} => String
    #   * {Types::DeleteDNSViewOutput#name #name} => String
    #   * {Types::DeleteDNSViewOutput#description #description} => String
    #   * {Types::DeleteDNSViewOutput#global_resolver_id #global_resolver_id} => String
    #   * {Types::DeleteDNSViewOutput#created_at #created_at} => Time
    #   * {Types::DeleteDNSViewOutput#updated_at #updated_at} => Time
    #   * {Types::DeleteDNSViewOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dns_view({
    #     dns_view_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.dnssec_validation #=> String, one of "ENABLED", "DISABLED"
    #   resp.edns_client_subnet #=> String, one of "ENABLED", "DISABLED"
    #   resp.firewall_rules_fail_open #=> String, one of "ENABLED", "DISABLED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.global_resolver_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteDNSView AWS API Documentation
    #
    # @overload delete_dns_view(params = {})
    # @param [Hash] params ({})
    def delete_dns_view(params = {}, options = {})
      req = build_request(:delete_dns_view, params)
      req.send_request(options)
    end

    # Deletes a firewall domain list. This operation cannot be undone.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   The unique identifier of the firewall domain list to delete.
    #
    # @return [Types::DeleteFirewallDomainListOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFirewallDomainListOutput#arn #arn} => String
    #   * {Types::DeleteFirewallDomainListOutput#id #id} => String
    #   * {Types::DeleteFirewallDomainListOutput#name #name} => String
    #   * {Types::DeleteFirewallDomainListOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_domain_list({
    #     firewall_domain_list_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteFirewallDomainList AWS API Documentation
    #
    # @overload delete_firewall_domain_list(params = {})
    # @param [Hash] params ({})
    def delete_firewall_domain_list(params = {}, options = {})
      req = build_request(:delete_firewall_domain_list, params)
      req.send_request(options)
    end

    # Deletes a DNS firewall rule. This operation cannot be undone.
    #
    # @option params [required, String] :firewall_rule_id
    #   The unique identifier of the firewall rule to delete.
    #
    # @return [Types::DeleteFirewallRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFirewallRuleOutput#action #action} => String
    #   * {Types::DeleteFirewallRuleOutput#block_override_dns_type #block_override_dns_type} => String
    #   * {Types::DeleteFirewallRuleOutput#block_override_domain #block_override_domain} => String
    #   * {Types::DeleteFirewallRuleOutput#block_override_ttl #block_override_ttl} => Integer
    #   * {Types::DeleteFirewallRuleOutput#block_response #block_response} => String
    #   * {Types::DeleteFirewallRuleOutput#confidence_threshold #confidence_threshold} => String
    #   * {Types::DeleteFirewallRuleOutput#created_at #created_at} => Time
    #   * {Types::DeleteFirewallRuleOutput#description #description} => String
    #   * {Types::DeleteFirewallRuleOutput#dns_advanced_protection #dns_advanced_protection} => String
    #   * {Types::DeleteFirewallRuleOutput#firewall_domain_list_id #firewall_domain_list_id} => String
    #   * {Types::DeleteFirewallRuleOutput#id #id} => String
    #   * {Types::DeleteFirewallRuleOutput#name #name} => String
    #   * {Types::DeleteFirewallRuleOutput#priority #priority} => Integer
    #   * {Types::DeleteFirewallRuleOutput#dns_view_id #dns_view_id} => String
    #   * {Types::DeleteFirewallRuleOutput#query_type #query_type} => String
    #   * {Types::DeleteFirewallRuleOutput#status #status} => String
    #   * {Types::DeleteFirewallRuleOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_rule({
    #     firewall_rule_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action #=> String, one of "ALLOW", "ALERT", "BLOCK"
    #   resp.block_override_dns_type #=> String, one of "CNAME"
    #   resp.block_override_domain #=> String
    #   resp.block_override_ttl #=> Integer
    #   resp.block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.confidence_threshold #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.dns_advanced_protection #=> String, one of "DGA", "DNS_TUNNELING"
    #   resp.firewall_domain_list_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.priority #=> Integer
    #   resp.dns_view_id #=> String
    #   resp.query_type #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteFirewallRule AWS API Documentation
    #
    # @overload delete_firewall_rule(params = {})
    # @param [Hash] params ({})
    def delete_firewall_rule(params = {}, options = {})
      req = build_request(:delete_firewall_rule, params)
      req.send_request(options)
    end

    # Deletes a Route 53 Global Resolver instance. This operation cannot be
    # undone. All associated DNS views, access sources, tokens, and firewall
    # rules are also deleted.
    #
    # @option params [required, String] :global_resolver_id
    #   The unique identifier of the Route 53 Global Resolver to delete.
    #
    # @return [Types::DeleteGlobalResolverOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGlobalResolverOutput#id #id} => String
    #   * {Types::DeleteGlobalResolverOutput#arn #arn} => String
    #   * {Types::DeleteGlobalResolverOutput#client_token #client_token} => String
    #   * {Types::DeleteGlobalResolverOutput#dns_name #dns_name} => String
    #   * {Types::DeleteGlobalResolverOutput#observability_region #observability_region} => String
    #   * {Types::DeleteGlobalResolverOutput#name #name} => String
    #   * {Types::DeleteGlobalResolverOutput#description #description} => String
    #   * {Types::DeleteGlobalResolverOutput#regions #regions} => Array&lt;String&gt;
    #   * {Types::DeleteGlobalResolverOutput#created_at #created_at} => Time
    #   * {Types::DeleteGlobalResolverOutput#updated_at #updated_at} => Time
    #   * {Types::DeleteGlobalResolverOutput#status #status} => String
    #   * {Types::DeleteGlobalResolverOutput#ipv4_addresses #ipv4_addresses} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_global_resolver({
    #     global_resolver_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.dns_name #=> String
    #   resp.observability_region #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.ipv4_addresses #=> Array
    #   resp.ipv4_addresses[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DeleteGlobalResolver AWS API Documentation
    #
    # @overload delete_global_resolver(params = {})
    # @param [Hash] params ({})
    def delete_global_resolver(params = {}, options = {})
      req = build_request(:delete_global_resolver, params)
      req.send_request(options)
    end

    # Disables a DNS view, preventing it from serving DNS queries.
    #
    # @option params [required, String] :dns_view_id
    #   The unique identifier of the DNS view to disable.
    #
    # @return [Types::DisableDNSViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableDNSViewOutput#id #id} => String
    #   * {Types::DisableDNSViewOutput#arn #arn} => String
    #   * {Types::DisableDNSViewOutput#client_token #client_token} => String
    #   * {Types::DisableDNSViewOutput#dnssec_validation #dnssec_validation} => String
    #   * {Types::DisableDNSViewOutput#edns_client_subnet #edns_client_subnet} => String
    #   * {Types::DisableDNSViewOutput#firewall_rules_fail_open #firewall_rules_fail_open} => String
    #   * {Types::DisableDNSViewOutput#name #name} => String
    #   * {Types::DisableDNSViewOutput#description #description} => String
    #   * {Types::DisableDNSViewOutput#global_resolver_id #global_resolver_id} => String
    #   * {Types::DisableDNSViewOutput#created_at #created_at} => Time
    #   * {Types::DisableDNSViewOutput#updated_at #updated_at} => Time
    #   * {Types::DisableDNSViewOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_dns_view({
    #     dns_view_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.dnssec_validation #=> String, one of "ENABLED", "DISABLED"
    #   resp.edns_client_subnet #=> String, one of "ENABLED", "DISABLED"
    #   resp.firewall_rules_fail_open #=> String, one of "ENABLED", "DISABLED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.global_resolver_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DisableDNSView AWS API Documentation
    #
    # @overload disable_dns_view(params = {})
    # @param [Hash] params ({})
    def disable_dns_view(params = {}, options = {})
      req = build_request(:disable_dns_view, params)
      req.send_request(options)
    end

    # Disassociates a Route 53 private hosted zone from a Route 53 Global
    # Resolver resource.
    #
    # @option params [required, String] :hosted_zone_id
    #   The ID of the Route 53 private hosted zone to disassociate.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Route 53 Global Resolver
    #   resource to disassociate the hosted zone from.
    #
    # @return [Types::DisassociateHostedZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateHostedZoneOutput#id #id} => String
    #   * {Types::DisassociateHostedZoneOutput#resource_arn #resource_arn} => String
    #   * {Types::DisassociateHostedZoneOutput#hosted_zone_id #hosted_zone_id} => String
    #   * {Types::DisassociateHostedZoneOutput#hosted_zone_name #hosted_zone_name} => String
    #   * {Types::DisassociateHostedZoneOutput#name #name} => String
    #   * {Types::DisassociateHostedZoneOutput#created_at #created_at} => Time
    #   * {Types::DisassociateHostedZoneOutput#updated_at #updated_at} => Time
    #   * {Types::DisassociateHostedZoneOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_hosted_zone({
    #     hosted_zone_id: "HostedZoneId", # required
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.resource_arn #=> String
    #   resp.hosted_zone_id #=> String
    #   resp.hosted_zone_name #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/DisassociateHostedZone AWS API Documentation
    #
    # @overload disassociate_hosted_zone(params = {})
    # @param [Hash] params ({})
    def disassociate_hosted_zone(params = {}, options = {})
      req = build_request(:disassociate_hosted_zone, params)
      req.send_request(options)
    end

    # Enables a disabled DNS view, allowing it to serve DNS queries again.
    #
    # @option params [required, String] :dns_view_id
    #   The unique identifier of the DNS view to enable.
    #
    # @return [Types::EnableDNSViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableDNSViewOutput#id #id} => String
    #   * {Types::EnableDNSViewOutput#arn #arn} => String
    #   * {Types::EnableDNSViewOutput#client_token #client_token} => String
    #   * {Types::EnableDNSViewOutput#dnssec_validation #dnssec_validation} => String
    #   * {Types::EnableDNSViewOutput#edns_client_subnet #edns_client_subnet} => String
    #   * {Types::EnableDNSViewOutput#firewall_rules_fail_open #firewall_rules_fail_open} => String
    #   * {Types::EnableDNSViewOutput#name #name} => String
    #   * {Types::EnableDNSViewOutput#description #description} => String
    #   * {Types::EnableDNSViewOutput#global_resolver_id #global_resolver_id} => String
    #   * {Types::EnableDNSViewOutput#created_at #created_at} => Time
    #   * {Types::EnableDNSViewOutput#updated_at #updated_at} => Time
    #   * {Types::EnableDNSViewOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_dns_view({
    #     dns_view_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.dnssec_validation #=> String, one of "ENABLED", "DISABLED"
    #   resp.edns_client_subnet #=> String, one of "ENABLED", "DISABLED"
    #   resp.firewall_rules_fail_open #=> String, one of "ENABLED", "DISABLED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.global_resolver_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/EnableDNSView AWS API Documentation
    #
    # @overload enable_dns_view(params = {})
    # @param [Hash] params ({})
    def enable_dns_view(params = {}, options = {})
      req = build_request(:enable_dns_view, params)
      req.send_request(options)
    end

    # Retrieves information about an access source.
    #
    # @option params [required, String] :access_source_id
    #   The unique identifier of the access source to retrieve.
    #
    # @return [Types::GetAccessSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessSourceOutput#arn #arn} => String
    #   * {Types::GetAccessSourceOutput#cidr #cidr} => String
    #   * {Types::GetAccessSourceOutput#created_at #created_at} => Time
    #   * {Types::GetAccessSourceOutput#id #id} => String
    #   * {Types::GetAccessSourceOutput#ip_address_type #ip_address_type} => String
    #   * {Types::GetAccessSourceOutput#name #name} => String
    #   * {Types::GetAccessSourceOutput#dns_view_id #dns_view_id} => String
    #   * {Types::GetAccessSourceOutput#protocol #protocol} => String
    #   * {Types::GetAccessSourceOutput#status #status} => String
    #   * {Types::GetAccessSourceOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_source({
    #     access_source_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cidr #=> String
    #   resp.created_at #=> Time
    #   resp.id #=> String
    #   resp.ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.name #=> String
    #   resp.dns_view_id #=> String
    #   resp.protocol #=> String, one of "DO53", "DOH", "DOT"
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetAccessSource AWS API Documentation
    #
    # @overload get_access_source(params = {})
    # @param [Hash] params ({})
    def get_access_source(params = {}, options = {})
      req = build_request(:get_access_source, params)
      req.send_request(options)
    end

    # Retrieves information about an access token.
    #
    # @option params [required, String] :access_token_id
    #   ID of the token.
    #
    # @return [Types::GetAccessTokenOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessTokenOutput#id #id} => String
    #   * {Types::GetAccessTokenOutput#arn #arn} => String
    #   * {Types::GetAccessTokenOutput#client_token #client_token} => String
    #   * {Types::GetAccessTokenOutput#created_at #created_at} => Time
    #   * {Types::GetAccessTokenOutput#dns_view_id #dns_view_id} => String
    #   * {Types::GetAccessTokenOutput#expires_at #expires_at} => Time
    #   * {Types::GetAccessTokenOutput#global_resolver_id #global_resolver_id} => String
    #   * {Types::GetAccessTokenOutput#name #name} => String
    #   * {Types::GetAccessTokenOutput#status #status} => String
    #   * {Types::GetAccessTokenOutput#updated_at #updated_at} => Time
    #   * {Types::GetAccessTokenOutput#value #value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_token({
    #     access_token_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.created_at #=> Time
    #   resp.dns_view_id #=> String
    #   resp.expires_at #=> Time
    #   resp.global_resolver_id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "DELETING"
    #   resp.updated_at #=> Time
    #   resp.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetAccessToken AWS API Documentation
    #
    # @overload get_access_token(params = {})
    # @param [Hash] params ({})
    def get_access_token(params = {}, options = {})
      req = build_request(:get_access_token, params)
      req.send_request(options)
    end

    # Retrieves information about a DNS view.
    #
    # @option params [required, String] :dns_view_id
    #   The ID of the DNS view to retrieve information about.
    #
    # @return [Types::GetDNSViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDNSViewOutput#id #id} => String
    #   * {Types::GetDNSViewOutput#arn #arn} => String
    #   * {Types::GetDNSViewOutput#client_token #client_token} => String
    #   * {Types::GetDNSViewOutput#dnssec_validation #dnssec_validation} => String
    #   * {Types::GetDNSViewOutput#edns_client_subnet #edns_client_subnet} => String
    #   * {Types::GetDNSViewOutput#firewall_rules_fail_open #firewall_rules_fail_open} => String
    #   * {Types::GetDNSViewOutput#name #name} => String
    #   * {Types::GetDNSViewOutput#description #description} => String
    #   * {Types::GetDNSViewOutput#global_resolver_id #global_resolver_id} => String
    #   * {Types::GetDNSViewOutput#created_at #created_at} => Time
    #   * {Types::GetDNSViewOutput#updated_at #updated_at} => Time
    #   * {Types::GetDNSViewOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dns_view({
    #     dns_view_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.dnssec_validation #=> String, one of "ENABLED", "DISABLED"
    #   resp.edns_client_subnet #=> String, one of "ENABLED", "DISABLED"
    #   resp.firewall_rules_fail_open #=> String, one of "ENABLED", "DISABLED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.global_resolver_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetDNSView AWS API Documentation
    #
    # @overload get_dns_view(params = {})
    # @param [Hash] params ({})
    def get_dns_view(params = {}, options = {})
      req = build_request(:get_dns_view, params)
      req.send_request(options)
    end

    # Retrieves information about a firewall domain list.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   ID of the domain list.
    #
    # @return [Types::GetFirewallDomainListOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFirewallDomainListOutput#arn #arn} => String
    #   * {Types::GetFirewallDomainListOutput#global_resolver_id #global_resolver_id} => String
    #   * {Types::GetFirewallDomainListOutput#client_token #client_token} => String
    #   * {Types::GetFirewallDomainListOutput#created_at #created_at} => Time
    #   * {Types::GetFirewallDomainListOutput#description #description} => String
    #   * {Types::GetFirewallDomainListOutput#domain_count #domain_count} => Integer
    #   * {Types::GetFirewallDomainListOutput#id #id} => String
    #   * {Types::GetFirewallDomainListOutput#name #name} => String
    #   * {Types::GetFirewallDomainListOutput#status #status} => String
    #   * {Types::GetFirewallDomainListOutput#status_message #status_message} => String
    #   * {Types::GetFirewallDomainListOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_domain_list({
    #     firewall_domain_list_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.global_resolver_id #=> String
    #   resp.client_token #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.domain_count #=> Integer
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.status_message #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetFirewallDomainList AWS API Documentation
    #
    # @overload get_firewall_domain_list(params = {})
    # @param [Hash] params ({})
    def get_firewall_domain_list(params = {}, options = {})
      req = build_request(:get_firewall_domain_list, params)
      req.send_request(options)
    end

    # Retrieves information about a DNS firewall rule.
    #
    # @option params [required, String] :firewall_rule_id
    #   ID of the DNS Firewall rule.
    #
    # @return [Types::GetFirewallRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFirewallRuleOutput#action #action} => String
    #   * {Types::GetFirewallRuleOutput#block_override_dns_type #block_override_dns_type} => String
    #   * {Types::GetFirewallRuleOutput#block_override_domain #block_override_domain} => String
    #   * {Types::GetFirewallRuleOutput#block_override_ttl #block_override_ttl} => Integer
    #   * {Types::GetFirewallRuleOutput#block_response #block_response} => String
    #   * {Types::GetFirewallRuleOutput#confidence_threshold #confidence_threshold} => String
    #   * {Types::GetFirewallRuleOutput#created_at #created_at} => Time
    #   * {Types::GetFirewallRuleOutput#description #description} => String
    #   * {Types::GetFirewallRuleOutput#dns_advanced_protection #dns_advanced_protection} => String
    #   * {Types::GetFirewallRuleOutput#firewall_domain_list_id #firewall_domain_list_id} => String
    #   * {Types::GetFirewallRuleOutput#id #id} => String
    #   * {Types::GetFirewallRuleOutput#name #name} => String
    #   * {Types::GetFirewallRuleOutput#priority #priority} => Integer
    #   * {Types::GetFirewallRuleOutput#dns_view_id #dns_view_id} => String
    #   * {Types::GetFirewallRuleOutput#query_type #query_type} => String
    #   * {Types::GetFirewallRuleOutput#status #status} => String
    #   * {Types::GetFirewallRuleOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_rule({
    #     firewall_rule_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action #=> String, one of "ALLOW", "ALERT", "BLOCK"
    #   resp.block_override_dns_type #=> String, one of "CNAME"
    #   resp.block_override_domain #=> String
    #   resp.block_override_ttl #=> Integer
    #   resp.block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.confidence_threshold #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.dns_advanced_protection #=> String, one of "DGA", "DNS_TUNNELING"
    #   resp.firewall_domain_list_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.priority #=> Integer
    #   resp.dns_view_id #=> String
    #   resp.query_type #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetFirewallRule AWS API Documentation
    #
    # @overload get_firewall_rule(params = {})
    # @param [Hash] params ({})
    def get_firewall_rule(params = {}, options = {})
      req = build_request(:get_firewall_rule, params)
      req.send_request(options)
    end

    # Retrieves information about a Route 53 Global Resolver instance.
    #
    # @option params [required, String] :global_resolver_id
    #   The ID of the Route 53 Global Resolver to retrieve information about.
    #
    # @return [Types::GetGlobalResolverOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGlobalResolverOutput#id #id} => String
    #   * {Types::GetGlobalResolverOutput#arn #arn} => String
    #   * {Types::GetGlobalResolverOutput#client_token #client_token} => String
    #   * {Types::GetGlobalResolverOutput#dns_name #dns_name} => String
    #   * {Types::GetGlobalResolverOutput#observability_region #observability_region} => String
    #   * {Types::GetGlobalResolverOutput#name #name} => String
    #   * {Types::GetGlobalResolverOutput#description #description} => String
    #   * {Types::GetGlobalResolverOutput#regions #regions} => Array&lt;String&gt;
    #   * {Types::GetGlobalResolverOutput#created_at #created_at} => Time
    #   * {Types::GetGlobalResolverOutput#updated_at #updated_at} => Time
    #   * {Types::GetGlobalResolverOutput#status #status} => String
    #   * {Types::GetGlobalResolverOutput#ipv4_addresses #ipv4_addresses} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_global_resolver({
    #     global_resolver_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.dns_name #=> String
    #   resp.observability_region #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.ipv4_addresses #=> Array
    #   resp.ipv4_addresses[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetGlobalResolver AWS API Documentation
    #
    # @overload get_global_resolver(params = {})
    # @param [Hash] params ({})
    def get_global_resolver(params = {}, options = {})
      req = build_request(:get_global_resolver, params)
      req.send_request(options)
    end

    # Retrieves information about a hosted zone association.
    #
    # @option params [required, String] :hosted_zone_association_id
    #   ID of the private hosted zone association.
    #
    # @return [Types::GetHostedZoneAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHostedZoneAssociationOutput#id #id} => String
    #   * {Types::GetHostedZoneAssociationOutput#resource_arn #resource_arn} => String
    #   * {Types::GetHostedZoneAssociationOutput#hosted_zone_id #hosted_zone_id} => String
    #   * {Types::GetHostedZoneAssociationOutput#hosted_zone_name #hosted_zone_name} => String
    #   * {Types::GetHostedZoneAssociationOutput#name #name} => String
    #   * {Types::GetHostedZoneAssociationOutput#created_at #created_at} => Time
    #   * {Types::GetHostedZoneAssociationOutput#updated_at #updated_at} => Time
    #   * {Types::GetHostedZoneAssociationOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hosted_zone_association({
    #     hosted_zone_association_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.resource_arn #=> String
    #   resp.hosted_zone_id #=> String
    #   resp.hosted_zone_name #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetHostedZoneAssociation AWS API Documentation
    #
    # @overload get_hosted_zone_association(params = {})
    # @param [Hash] params ({})
    def get_hosted_zone_association(params = {}, options = {})
      req = build_request(:get_hosted_zone_association, params)
      req.send_request(options)
    end

    # Retrieves information about an AWS-managed firewall domain list.
    # Managed domain lists contain domains associated with malicious
    # activity, content categories, or specific threats.
    #
    # @option params [required, String] :managed_firewall_domain_list_id
    #   ID of the Managed Domain List.
    #
    # @return [Types::GetManagedFirewallDomainListOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedFirewallDomainListOutput#description #description} => String
    #   * {Types::GetManagedFirewallDomainListOutput#id #id} => String
    #   * {Types::GetManagedFirewallDomainListOutput#name #name} => String
    #   * {Types::GetManagedFirewallDomainListOutput#managed_list_type #managed_list_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_firewall_domain_list({
    #     managed_firewall_domain_list_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.managed_list_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/GetManagedFirewallDomainList AWS API Documentation
    #
    # @overload get_managed_firewall_domain_list(params = {})
    # @param [Hash] params ({})
    def get_managed_firewall_domain_list(params = {}, options = {})
      req = build_request(:get_managed_firewall_domain_list, params)
      req.send_request(options)
    end

    # Imports a list of domains from an Amazon S3 file into a firewall
    # domain list. The file should contain one domain per line.
    #
    # @option params [required, String] :domain_file_url
    #   The fully qualified URL of the file in Amazon S3 that contains the
    #   list of domains to import. The file should contain one domain per
    #   line.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   ID of the DNS Firewall domain list that you want to import the domain
    #   list to.
    #
    # @option params [required, String] :operation
    #   This value is `REPLACE`, and it updates the domain list to match the
    #   list of domains in the imported file.
    #
    # @return [Types::ImportFirewallDomainsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportFirewallDomainsOutput#id #id} => String
    #   * {Types::ImportFirewallDomainsOutput#name #name} => String
    #   * {Types::ImportFirewallDomainsOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_firewall_domains({
    #     domain_file_url: "String", # required
    #     firewall_domain_list_id: "ResourceId", # required
    #     operation: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ImportFirewallDomains AWS API Documentation
    #
    # @overload import_firewall_domains(params = {})
    # @param [Hash] params ({})
    def import_firewall_domains(params = {}, options = {})
      req = build_request(:import_firewall_domains, params)
      req.send_request(options)
    end

    # Lists all access sources with pagination support.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #
    # @option params [Hash<String,Array>] :filters
    #   Values to filter the results.
    #
    # @return [Types::ListAccessSourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessSourcesOutput#next_token #next_token} => String
    #   * {Types::ListAccessSourcesOutput#access_sources #access_sources} => Array&lt;Types::AccessSourcesItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_sources({
    #     max_results: 1,
    #     next_token: "String",
    #     filters: {
    #       "String" => ["String"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.access_sources #=> Array
    #   resp.access_sources[0].arn #=> String
    #   resp.access_sources[0].cidr #=> String
    #   resp.access_sources[0].created_at #=> Time
    #   resp.access_sources[0].id #=> String
    #   resp.access_sources[0].ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.access_sources[0].name #=> String
    #   resp.access_sources[0].dns_view_id #=> String
    #   resp.access_sources[0].protocol #=> String, one of "DO53", "DOH", "DOT"
    #   resp.access_sources[0].status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.access_sources[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListAccessSources AWS API Documentation
    #
    # @overload list_access_sources(params = {})
    # @param [Hash] params ({})
    def list_access_sources(params = {}, options = {})
      req = build_request(:list_access_sources, params)
      req.send_request(options)
    end

    # Lists all access tokens for a DNS view with pagination support.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #
    # @option params [required, String] :dns_view_id
    #   The ID of the DNS view to list the tokens for.
    #
    # @option params [Hash<String,Array>] :filters
    #   Filtering parameters.
    #
    # @return [Types::ListAccessTokensOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessTokensOutput#next_token #next_token} => String
    #   * {Types::ListAccessTokensOutput#access_tokens #access_tokens} => Array&lt;Types::AccessTokenItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_tokens({
    #     max_results: 1,
    #     next_token: "String",
    #     dns_view_id: "ResourceId", # required
    #     filters: {
    #       "String" => ["String"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.access_tokens #=> Array
    #   resp.access_tokens[0].id #=> String
    #   resp.access_tokens[0].arn #=> String
    #   resp.access_tokens[0].created_at #=> Time
    #   resp.access_tokens[0].dns_view_id #=> String
    #   resp.access_tokens[0].expires_at #=> Time
    #   resp.access_tokens[0].global_resolver_id #=> String
    #   resp.access_tokens[0].name #=> String
    #   resp.access_tokens[0].status #=> String, one of "CREATING", "OPERATIONAL", "DELETING"
    #   resp.access_tokens[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListAccessTokens AWS API Documentation
    #
    # @overload list_access_tokens(params = {})
    # @param [Hash] params ({})
    def list_access_tokens(params = {}, options = {})
      req = build_request(:list_access_tokens, params)
      req.send_request(options)
    end

    # Lists all DNS views for a Route 53 Global Resolver with pagination
    # support.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #
    # @option params [required, String] :global_resolver_id
    #   The Global Resolver ID.
    #
    # @return [Types::ListDNSViewsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDNSViewsOutput#next_token #next_token} => String
    #   * {Types::ListDNSViewsOutput#dns_views #dns_views} => Array&lt;Types::DNSViewSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dns_views({
    #     max_results: 1,
    #     next_token: "String",
    #     global_resolver_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.dns_views #=> Array
    #   resp.dns_views[0].id #=> String
    #   resp.dns_views[0].arn #=> String
    #   resp.dns_views[0].client_token #=> String
    #   resp.dns_views[0].dnssec_validation #=> String, one of "ENABLED", "DISABLED"
    #   resp.dns_views[0].edns_client_subnet #=> String, one of "ENABLED", "DISABLED"
    #   resp.dns_views[0].firewall_rules_fail_open #=> String, one of "ENABLED", "DISABLED"
    #   resp.dns_views[0].name #=> String
    #   resp.dns_views[0].description #=> String
    #   resp.dns_views[0].global_resolver_id #=> String
    #   resp.dns_views[0].created_at #=> Time
    #   resp.dns_views[0].updated_at #=> Time
    #   resp.dns_views[0].status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListDNSViews AWS API Documentation
    #
    # @overload list_dns_views(params = {})
    # @param [Hash] params ({})
    def list_dns_views(params = {}, options = {})
      req = build_request(:list_dns_views, params)
      req.send_request(options)
    end

    # Lists all firewall domain lists for a Route 53 Global Resolver with
    # pagination support.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #
    # @option params [String] :global_resolver_id
    #   The ID of the Global Resolver that contains the DNS view the domain
    #   lists are associated to.
    #
    # @return [Types::ListFirewallDomainListsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFirewallDomainListsOutput#next_token #next_token} => String
    #   * {Types::ListFirewallDomainListsOutput#firewall_domain_lists #firewall_domain_lists} => Array&lt;Types::FirewallDomainListsItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_domain_lists({
    #     max_results: 1,
    #     next_token: "String",
    #     global_resolver_id: "ResourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.firewall_domain_lists #=> Array
    #   resp.firewall_domain_lists[0].arn #=> String
    #   resp.firewall_domain_lists[0].global_resolver_id #=> String
    #   resp.firewall_domain_lists[0].created_at #=> Time
    #   resp.firewall_domain_lists[0].description #=> String
    #   resp.firewall_domain_lists[0].id #=> String
    #   resp.firewall_domain_lists[0].name #=> String
    #   resp.firewall_domain_lists[0].status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.firewall_domain_lists[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListFirewallDomainLists AWS API Documentation
    #
    # @overload list_firewall_domain_lists(params = {})
    # @param [Hash] params ({})
    def list_firewall_domain_lists(params = {}, options = {})
      req = build_request(:list_firewall_domain_lists, params)
      req.send_request(options)
    end

    # Lists all the domains in DNS Firewall domain list you have created.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   ID of the DNS Firewall domain list.
    #
    # @return [Types::ListFirewallDomainsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFirewallDomainsOutput#next_token #next_token} => String
    #   * {Types::ListFirewallDomainsOutput#domains #domains} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_domains({
    #     max_results: 1,
    #     next_token: "String",
    #     firewall_domain_list_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.domains #=> Array
    #   resp.domains[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListFirewallDomains AWS API Documentation
    #
    # @overload list_firewall_domains(params = {})
    # @param [Hash] params ({})
    def list_firewall_domains(params = {}, options = {})
      req = build_request(:list_firewall_domains, params)
      req.send_request(options)
    end

    # Lists all DNS firewall rules for a DNS view with pagination support.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #
    # @option params [required, String] :dns_view_id
    #   ID of the DNS view.
    #
    # @option params [Hash<String,Array>] :filters
    #   Values to filter the results.
    #
    # @return [Types::ListFirewallRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFirewallRulesOutput#next_token #next_token} => String
    #   * {Types::ListFirewallRulesOutput#firewall_rules #firewall_rules} => Array&lt;Types::FirewallRulesItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_rules({
    #     max_results: 1,
    #     next_token: "String",
    #     dns_view_id: "ResourceId", # required
    #     filters: {
    #       "String" => ["String"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.firewall_rules #=> Array
    #   resp.firewall_rules[0].action #=> String, one of "ALLOW", "ALERT", "BLOCK"
    #   resp.firewall_rules[0].block_override_dns_type #=> String, one of "CNAME"
    #   resp.firewall_rules[0].block_override_domain #=> String
    #   resp.firewall_rules[0].block_override_ttl #=> Integer
    #   resp.firewall_rules[0].block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.firewall_rules[0].confidence_threshold #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.firewall_rules[0].created_at #=> Time
    #   resp.firewall_rules[0].description #=> String
    #   resp.firewall_rules[0].dns_advanced_protection #=> String, one of "DGA", "DNS_TUNNELING"
    #   resp.firewall_rules[0].firewall_domain_list_id #=> String
    #   resp.firewall_rules[0].id #=> String
    #   resp.firewall_rules[0].name #=> String
    #   resp.firewall_rules[0].priority #=> Integer
    #   resp.firewall_rules[0].dns_view_id #=> String
    #   resp.firewall_rules[0].query_type #=> String
    #   resp.firewall_rules[0].status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.firewall_rules[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListFirewallRules AWS API Documentation
    #
    # @overload list_firewall_rules(params = {})
    # @param [Hash] params ({})
    def list_firewall_rules(params = {}, options = {})
      req = build_request(:list_firewall_rules, params)
      req.send_request(options)
    end

    # Lists all Route 53 Global Resolver instances in your account with
    # pagination support.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Route 53 Global Resolver instances to return in
    #   the response. Valid range is 1-100.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. This value is returned in the
    #   response if there are more results to retrieve.
    #
    # @return [Types::ListGlobalResolversOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGlobalResolversOutput#next_token #next_token} => String
    #   * {Types::ListGlobalResolversOutput#global_resolvers #global_resolvers} => Array&lt;Types::GlobalResolversItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_global_resolvers({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.global_resolvers #=> Array
    #   resp.global_resolvers[0].id #=> String
    #   resp.global_resolvers[0].arn #=> String
    #   resp.global_resolvers[0].client_token #=> String
    #   resp.global_resolvers[0].dns_name #=> String
    #   resp.global_resolvers[0].observability_region #=> String
    #   resp.global_resolvers[0].name #=> String
    #   resp.global_resolvers[0].description #=> String
    #   resp.global_resolvers[0].regions #=> Array
    #   resp.global_resolvers[0].regions[0] #=> String
    #   resp.global_resolvers[0].created_at #=> Time
    #   resp.global_resolvers[0].updated_at #=> Time
    #   resp.global_resolvers[0].status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.global_resolvers[0].ipv4_addresses #=> Array
    #   resp.global_resolvers[0].ipv4_addresses[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListGlobalResolvers AWS API Documentation
    #
    # @overload list_global_resolvers(params = {})
    # @param [Hash] params ({})
    def list_global_resolvers(params = {}, options = {})
      req = build_request(:list_global_resolvers, params)
      req.send_request(options)
    end

    # Lists all hosted zone associations for a Route 53 Global Resolver
    # resource with pagination support.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the DNS view.
    #
    # @return [Types::ListHostedZoneAssociationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHostedZoneAssociationsOutput#next_token #next_token} => String
    #   * {Types::ListHostedZoneAssociationsOutput#hosted_zone_associations #hosted_zone_associations} => Array&lt;Types::HostedZoneAssociationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosted_zone_associations({
    #     max_results: 1,
    #     next_token: "String",
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.hosted_zone_associations #=> Array
    #   resp.hosted_zone_associations[0].id #=> String
    #   resp.hosted_zone_associations[0].resource_arn #=> String
    #   resp.hosted_zone_associations[0].hosted_zone_id #=> String
    #   resp.hosted_zone_associations[0].hosted_zone_name #=> String
    #   resp.hosted_zone_associations[0].name #=> String
    #   resp.hosted_zone_associations[0].created_at #=> Time
    #   resp.hosted_zone_associations[0].updated_at #=> Time
    #   resp.hosted_zone_associations[0].status #=> String, one of "CREATING", "OPERATIONAL", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListHostedZoneAssociations AWS API Documentation
    #
    # @overload list_hosted_zone_associations(params = {})
    # @param [Hash] params ({})
    def list_hosted_zone_associations(params = {}, options = {})
      req = build_request(:list_hosted_zone_associations, params)
      req.send_request(options)
    end

    # Returns a paginated list of the AWS Managed DNS Lists and the
    # categories for DNS Firewall. The categories are either `THREAT` or
    # `CONTENT`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token used for large sets of results that can't be
    #   returned in a single response.
    #
    # @option params [required, String] :managed_firewall_domain_list_type
    #   The category of the Manage DNS list either `THREAT` or `CONTENT`.
    #
    # @return [Types::ListManagedFirewallDomainListsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedFirewallDomainListsOutput#next_token #next_token} => String
    #   * {Types::ListManagedFirewallDomainListsOutput#managed_firewall_domain_lists #managed_firewall_domain_lists} => Array&lt;Types::ManagedFirewallDomainListsItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_firewall_domain_lists({
    #     max_results: 1,
    #     next_token: "String",
    #     managed_firewall_domain_list_type: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.managed_firewall_domain_lists #=> Array
    #   resp.managed_firewall_domain_lists[0].description #=> String
    #   resp.managed_firewall_domain_lists[0].id #=> String
    #   resp.managed_firewall_domain_lists[0].name #=> String
    #   resp.managed_firewall_domain_lists[0].managed_list_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListManagedFirewallDomainLists AWS API Documentation
    #
    # @overload list_managed_firewall_domain_lists(params = {})
    # @param [Hash] params ({})
    def list_managed_firewall_domain_lists(params = {}, options = {})
      req = build_request(:list_managed_firewall_domain_lists, params)
      req.send_request(options)
    end

    # Lists the tags associated with a Route 53 Global Resolver resource.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) for the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds or updates tags for a Route 53 Global Resolver resource. Tags are
    # key-value pairs that help you organize and identify your resources.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the resource to be tagged.
    #
    # @option params [required, Hash<String,String>] :tags
    #   An array of user-defined keys and optional values. These tags can be
    #   used for categorization and organization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a Route 53 Global Resolver resource.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys associated with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of an access source.
    #
    # @option params [required, String] :access_source_id
    #   The unique identifier of the access source to update.
    #
    # @option params [String] :cidr
    #   The CIDR block for the access source.
    #
    # @option params [String] :ip_address_type
    #   The IP address type for the access source.
    #
    # @option params [String] :name
    #   The name of the access source.
    #
    # @option params [String] :protocol
    #   The protocol for the access source.
    #
    # @return [Types::UpdateAccessSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccessSourceOutput#arn #arn} => String
    #   * {Types::UpdateAccessSourceOutput#cidr #cidr} => String
    #   * {Types::UpdateAccessSourceOutput#created_at #created_at} => Time
    #   * {Types::UpdateAccessSourceOutput#id #id} => String
    #   * {Types::UpdateAccessSourceOutput#ip_address_type #ip_address_type} => String
    #   * {Types::UpdateAccessSourceOutput#name #name} => String
    #   * {Types::UpdateAccessSourceOutput#dns_view_id #dns_view_id} => String
    #   * {Types::UpdateAccessSourceOutput#protocol #protocol} => String
    #   * {Types::UpdateAccessSourceOutput#status #status} => String
    #   * {Types::UpdateAccessSourceOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_source({
    #     access_source_id: "ResourceId", # required
    #     cidr: "Cidr",
    #     ip_address_type: "IPV4", # accepts IPV4, IPV6
    #     name: "ResourceNameShort",
    #     protocol: "DO53", # accepts DO53, DOH, DOT
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cidr #=> String
    #   resp.created_at #=> Time
    #   resp.id #=> String
    #   resp.ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.name #=> String
    #   resp.dns_view_id #=> String
    #   resp.protocol #=> String, one of "DO53", "DOH", "DOT"
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateAccessSource AWS API Documentation
    #
    # @overload update_access_source(params = {})
    # @param [Hash] params ({})
    def update_access_source(params = {}, options = {})
      req = build_request(:update_access_source, params)
      req.send_request(options)
    end

    # Updates the configuration of an access token.
    #
    # @option params [required, String] :access_token_id
    #   The ID of the token.
    #
    # @option params [required, String] :name
    #   The new name of the token.
    #
    # @return [Types::UpdateAccessTokenOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccessTokenOutput#id #id} => String
    #   * {Types::UpdateAccessTokenOutput#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_token({
    #     access_token_id: "ResourceId", # required
    #     name: "ResourceNameShort", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateAccessToken AWS API Documentation
    #
    # @overload update_access_token(params = {})
    # @param [Hash] params ({})
    def update_access_token(params = {}, options = {})
      req = build_request(:update_access_token, params)
      req.send_request(options)
    end

    # Updates the configuration of a DNS view.
    #
    # @option params [required, String] :dns_view_id
    #   The unique identifier of the DNS view to update.
    #
    # @option params [String] :name
    #   The name of the DNS view.
    #
    # @option params [String] :description
    #   A description of the DNS view.
    #
    # @option params [String] :dnssec_validation
    #   Whether to enable DNSSEC validation for the DNS view.
    #
    # @option params [String] :edns_client_subnet
    #   Whether to enable EDNS Client Subnet injection for the DNS view.
    #
    # @option params [String] :firewall_rules_fail_open
    #   Whether firewall rules should fail open when they cannot be evaluated.
    #
    # @return [Types::UpdateDNSViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDNSViewOutput#id #id} => String
    #   * {Types::UpdateDNSViewOutput#arn #arn} => String
    #   * {Types::UpdateDNSViewOutput#client_token #client_token} => String
    #   * {Types::UpdateDNSViewOutput#dnssec_validation #dnssec_validation} => String
    #   * {Types::UpdateDNSViewOutput#edns_client_subnet #edns_client_subnet} => String
    #   * {Types::UpdateDNSViewOutput#firewall_rules_fail_open #firewall_rules_fail_open} => String
    #   * {Types::UpdateDNSViewOutput#name #name} => String
    #   * {Types::UpdateDNSViewOutput#description #description} => String
    #   * {Types::UpdateDNSViewOutput#global_resolver_id #global_resolver_id} => String
    #   * {Types::UpdateDNSViewOutput#created_at #created_at} => Time
    #   * {Types::UpdateDNSViewOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateDNSViewOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dns_view({
    #     dns_view_id: "ResourceId", # required
    #     name: "ResourceName",
    #     description: "ResourceDescription",
    #     dnssec_validation: "ENABLED", # accepts ENABLED, DISABLED
    #     edns_client_subnet: "ENABLED", # accepts ENABLED, DISABLED
    #     firewall_rules_fail_open: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.dnssec_validation #=> String, one of "ENABLED", "DISABLED"
    #   resp.edns_client_subnet #=> String, one of "ENABLED", "DISABLED"
    #   resp.firewall_rules_fail_open #=> String, one of "ENABLED", "DISABLED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.global_resolver_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateDNSView AWS API Documentation
    #
    # @overload update_dns_view(params = {})
    # @param [Hash] params ({})
    def update_dns_view(params = {}, options = {})
      req = build_request(:update_dns_view, params)
      req.send_request(options)
    end

    # Updates a DNS Firewall domain list from an array of specified domains.
    #
    # @option params [required, Array<String>] :domains
    #   A list of the domains. You can add up to 1000 domains per request.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   The ID of the DNS Firewall domain list to which you want to add the
    #   domains.
    #
    # @option params [required, String] :operation
    #   The operation for updating the domain list. The allowed values are
    #   ADD, REMOVE, and REPLACE.
    #
    # @return [Types::UpdateFirewallDomainsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFirewallDomainsOutput#id #id} => String
    #   * {Types::UpdateFirewallDomainsOutput#name #name} => String
    #   * {Types::UpdateFirewallDomainsOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_domains({
    #     domains: ["Domain"], # required
    #     firewall_domain_list_id: "ResourceId", # required
    #     operation: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateFirewallDomains AWS API Documentation
    #
    # @overload update_firewall_domains(params = {})
    # @param [Hash] params ({})
    def update_firewall_domains(params = {}, options = {})
      req = build_request(:update_firewall_domains, params)
      req.send_request(options)
    end

    # Updates the configuration of a DNS firewall rule.
    #
    # @option params [String] :action
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list, or a threat in
    #   a DNS Firewall Advanced rule.
    #
    # @option params [String] :block_override_dns_type
    #   The DNS record's type. This determines the format of the record value
    #   that you provided in `BlockOverrideDomain`. Used for the rule action
    #   `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    # @option params [String] :block_override_domain
    #   The custom DNS record to send back in response to the query. Used for
    #   the rule action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    # @option params [Integer] :block_override_ttl
    #   The recommended amount of time, in seconds, for the DNS resolver or
    #   web browser to cache the provided override record. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    # @option params [String] :block_response
    #   The way that you want DNS Firewall to block the request. Used for the
    #   rule action setting `BLOCK`.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency. This means
    #   that making the same request multiple times with the same
    #   `clientToken` has the same result every time.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :confidence_threshold
    #   The confidence threshold for DNS Firewall Advanced. You must provide
    #   this value when you create a DNS Firewall Advanced rule.
    #
    # @option params [String] :description
    #   The description for the Firewall rule.
    #
    # @option params [String] :dns_advanced_protection
    #   The type of the DNS Firewall Advanced rule. Valid values are DGA and
    #   DNS\_TUNNELING.
    #
    # @option params [required, String] :firewall_rule_id
    #   The ID of the DNS Firewall rule.
    #
    # @option params [String] :name
    #   The name of the DNS Firewall rule.
    #
    # @option params [Integer] :priority
    #   The setting that determines the processing order of the rule in the
    #   rule group. DNS Firewall processes the rules in a rule group by order
    #   of priority, starting from the lowest setting.
    #
    # @return [Types::UpdateFirewallRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFirewallRuleOutput#action #action} => String
    #   * {Types::UpdateFirewallRuleOutput#block_override_dns_type #block_override_dns_type} => String
    #   * {Types::UpdateFirewallRuleOutput#block_override_domain #block_override_domain} => String
    #   * {Types::UpdateFirewallRuleOutput#block_override_ttl #block_override_ttl} => Integer
    #   * {Types::UpdateFirewallRuleOutput#block_response #block_response} => String
    #   * {Types::UpdateFirewallRuleOutput#confidence_threshold #confidence_threshold} => String
    #   * {Types::UpdateFirewallRuleOutput#created_at #created_at} => Time
    #   * {Types::UpdateFirewallRuleOutput#description #description} => String
    #   * {Types::UpdateFirewallRuleOutput#dns_advanced_protection #dns_advanced_protection} => String
    #   * {Types::UpdateFirewallRuleOutput#firewall_domain_list_id #firewall_domain_list_id} => String
    #   * {Types::UpdateFirewallRuleOutput#id #id} => String
    #   * {Types::UpdateFirewallRuleOutput#name #name} => String
    #   * {Types::UpdateFirewallRuleOutput#priority #priority} => Integer
    #   * {Types::UpdateFirewallRuleOutput#dns_view_id #dns_view_id} => String
    #   * {Types::UpdateFirewallRuleOutput#query_type #query_type} => String
    #   * {Types::UpdateFirewallRuleOutput#status #status} => String
    #   * {Types::UpdateFirewallRuleOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_rule({
    #     action: "ALLOW", # accepts ALLOW, ALERT, BLOCK
    #     block_override_dns_type: "CNAME", # accepts CNAME
    #     block_override_domain: "Domain",
    #     block_override_ttl: 1,
    #     block_response: "NODATA", # accepts NODATA, NXDOMAIN, OVERRIDE
    #     client_token: "ClientToken", # required
    #     confidence_threshold: "LOW", # accepts LOW, MEDIUM, HIGH
    #     description: "ResourceDescription",
    #     dns_advanced_protection: "DGA", # accepts DGA, DNS_TUNNELING
    #     firewall_rule_id: "ResourceId", # required
    #     name: "ResourceName",
    #     priority: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.action #=> String, one of "ALLOW", "ALERT", "BLOCK"
    #   resp.block_override_dns_type #=> String, one of "CNAME"
    #   resp.block_override_domain #=> String
    #   resp.block_override_ttl #=> Integer
    #   resp.block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.confidence_threshold #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.dns_advanced_protection #=> String, one of "DGA", "DNS_TUNNELING"
    #   resp.firewall_domain_list_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.priority #=> Integer
    #   resp.dns_view_id #=> String
    #   resp.query_type #=> String
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateFirewallRule AWS API Documentation
    #
    # @overload update_firewall_rule(params = {})
    # @param [Hash] params ({})
    def update_firewall_rule(params = {}, options = {})
      req = build_request(:update_firewall_rule, params)
      req.send_request(options)
    end

    # Updates the configuration of a Route 53 Global Resolver instance. You
    # can modify the name, description, and observability region.
    #
    # @option params [required, String] :global_resolver_id
    #   The ID of the Global Resolver.
    #
    # @option params [String] :name
    #   The name of the Global Resolver.
    #
    # @option params [String] :observability_region
    #   The AWS Regions in which the users' Global Resolver query resolution
    #   logs will be propagated.
    #
    # @option params [String] :description
    #   The description of the Global Resolver.
    #
    # @return [Types::UpdateGlobalResolverOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGlobalResolverOutput#id #id} => String
    #   * {Types::UpdateGlobalResolverOutput#arn #arn} => String
    #   * {Types::UpdateGlobalResolverOutput#client_token #client_token} => String
    #   * {Types::UpdateGlobalResolverOutput#dns_name #dns_name} => String
    #   * {Types::UpdateGlobalResolverOutput#observability_region #observability_region} => String
    #   * {Types::UpdateGlobalResolverOutput#name #name} => String
    #   * {Types::UpdateGlobalResolverOutput#description #description} => String
    #   * {Types::UpdateGlobalResolverOutput#regions #regions} => Array&lt;String&gt;
    #   * {Types::UpdateGlobalResolverOutput#created_at #created_at} => Time
    #   * {Types::UpdateGlobalResolverOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateGlobalResolverOutput#status #status} => String
    #   * {Types::UpdateGlobalResolverOutput#ipv4_addresses #ipv4_addresses} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_resolver({
    #     global_resolver_id: "ResourceId", # required
    #     name: "ResourceName",
    #     observability_region: "Region",
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.client_token #=> String
    #   resp.dns_name #=> String
    #   resp.observability_region #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "DELETING"
    #   resp.ipv4_addresses #=> Array
    #   resp.ipv4_addresses[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateGlobalResolver AWS API Documentation
    #
    # @overload update_global_resolver(params = {})
    # @param [Hash] params ({})
    def update_global_resolver(params = {}, options = {})
      req = build_request(:update_global_resolver, params)
      req.send_request(options)
    end

    # Updates the configuration of a hosted zone association.
    #
    # @option params [required, String] :hosted_zone_association_id
    #   The ID of the private hosted zone association.
    #
    # @option params [String] :name
    #   The name you want to update the hosted zone association to.
    #
    # @return [Types::UpdateHostedZoneAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateHostedZoneAssociationOutput#id #id} => String
    #   * {Types::UpdateHostedZoneAssociationOutput#resource_arn #resource_arn} => String
    #   * {Types::UpdateHostedZoneAssociationOutput#hosted_zone_id #hosted_zone_id} => String
    #   * {Types::UpdateHostedZoneAssociationOutput#hosted_zone_name #hosted_zone_name} => String
    #   * {Types::UpdateHostedZoneAssociationOutput#name #name} => String
    #   * {Types::UpdateHostedZoneAssociationOutput#created_at #created_at} => Time
    #   * {Types::UpdateHostedZoneAssociationOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateHostedZoneAssociationOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hosted_zone_association({
    #     hosted_zone_association_id: "ResourceId", # required
    #     name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.resource_arn #=> String
    #   resp.hosted_zone_id #=> String
    #   resp.hosted_zone_name #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "CREATING", "OPERATIONAL", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53globalresolver-2022-09-27/UpdateHostedZoneAssociation AWS API Documentation
    #
    # @overload update_hosted_zone_association(params = {})
    # @param [Hash] params ({})
    def update_hosted_zone_association(params = {}, options = {})
      req = build_request(:update_hosted_zone_association, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Route53GlobalResolver')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-route53globalresolver'
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
