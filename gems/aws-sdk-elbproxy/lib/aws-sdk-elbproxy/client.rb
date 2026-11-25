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
require 'aws-sdk-core/plugins/protocols/rpc_v2'

module Aws::ELBProxy
  # An API client for ELBProxy.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ELBProxy::Client.new(
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

    @identifier = :elbproxy

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
    add_plugin(Aws::Plugins::Protocols::RpcV2)
    add_plugin(Aws::ELBProxy::Plugins::Endpoints)

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
    #   @option options [Aws::ELBProxy::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ELBProxy::EndpointParameters`.
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

    # Associates an ACM certificate with the specified Proxy.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @option params [required, String] :certificate_identifier
    #   The Amazon Resource Name (ARN) of the ACM certificate.
    #
    # @return [Types::AssociateCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateCertificateResponse#certificate_association #certificate_association} => Types::CertificateAssociation
    #
    #
    # @example Example: To associate a certificate with a proxy
    #
    #   # The following example associates the specified ACM certificate with the specified proxy.
    #
    #   resp = client.associate_certificate({
    #     certificate_identifier: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012", 
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     certificate_association: {
    #       certificate_arn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012", 
    #       created_at: Time.parse(1795195800), 
    #       status: {
    #         code: "associate-in-progress", 
    #         reasons: [
    #         ], 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_certificate({
    #     proxy_identifier: "ProxyIdentifier", # required
    #     certificate_identifier: "CertificateIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_association.certificate_arn #=> String
    #   resp.certificate_association.status.code #=> String, one of "associate-in-progress", "active", "associate-failed", "disassociate-in-progress", "disassociated"
    #   resp.certificate_association.status.reasons #=> Array
    #   resp.certificate_association.status.reasons[0].code #=> String
    #   resp.certificate_association.status.reasons[0].message #=> String
    #   resp.certificate_association.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/AssociateCertificate AWS API Documentation
    #
    # @overload associate_certificate(params = {})
    # @param [Hash] params ({})
    def associate_certificate(params = {}, options = {})
      req = build_request(:associate_certificate, params)
      req.send_request(options)
    end

    # Creates a proxy. A proxy is a fully managed, Envoy-based proxy that
    # runs your Envoy configuration on Amazon EC2 instances inside your own
    # virtual private cloud (VPC). AWS provisions and scales the proxy,
    # upgrades the Envoy version, patches the operating system, and monitors
    # its health.
    #
    # @option params [required, String] :name
    #   The name of the proxy. The name must be unique within your account for
    #   the Region. The valid characters are a-z, 0-9, and hyphens (-). You
    #   can't use a hyphen as the first or last character.
    #
    # @option params [required, String] :type
    #   The type of proxy.
    #
    # @option params [required, String] :proxy_version
    #   The version of the proxy software, in `major.minor` format.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions to the code that your Envoy configuration runs on the
    #   proxy, such as filters and extensions. These are the permissions that
    #   this code needs when it calls AWS services.
    #
    # @option params [required, Types::ProxyConfiguration] :configuration
    #   The configuration for the proxy.
    #
    # @option params [required, Types::ProxyNetworkUserConfiguration] :network_configuration
    #   The network configuration for the proxy.
    #
    # @option params [Array<Types::Attribute>] :attributes
    #   The attributes for the proxy. Attributes can be changed after
    #   creation. Attributes that you don't specify are set to their default
    #   values.
    #
    # @option params [String] :customer_kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key used to
    #   encrypt the proxy's configuration content. If you don't specify a
    #   key, the default service-owned key is used.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for the proxy.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateProxyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProxyResponse#arn #arn} => String
    #   * {Types::CreateProxyResponse#name #name} => String
    #   * {Types::CreateProxyResponse#type #type} => String
    #   * {Types::CreateProxyResponse#proxy_version #proxy_version} => String
    #   * {Types::CreateProxyResponse#dns_name #dns_name} => String
    #   * {Types::CreateProxyResponse#role_arn #role_arn} => String
    #   * {Types::CreateProxyResponse#network_configuration #network_configuration} => Types::ProxyNetworkConfiguration
    #   * {Types::CreateProxyResponse#status #status} => Types::ProxyStatus
    #   * {Types::CreateProxyResponse#configuration_metadata #configuration_metadata} => Types::ConfigurationMetadata
    #   * {Types::CreateProxyResponse#created_at #created_at} => Time
    #   * {Types::CreateProxyResponse#customer_kms_key_arn #customer_kms_key_arn} => String
    #
    #
    # @example Example: To create a proxy
    #
    #   # The following example creates a proxy with the specified name, Envoy version, IAM role, and configuration file. The
    #   # proxy is internet-facing over IPv4, runs in the specified subnets with the specified security group, and has deletion
    #   # protection enabled.
    #
    #   resp = client.create_proxy({
    #     name: "my-proxy", 
    #     type: "envoy", 
    #     attributes: [
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "true", 
    #       }, 
    #     ], 
    #     configuration: {
    #       configuration_file: {
    #         configuration_bytes: "c3RhdGljX3Jlc291cmNlczoge30K", 
    #       }, 
    #     }, 
    #     network_configuration: {
    #       ip_configuration: {
    #         ip_addressing_configuration: {
    #           ipv4_addressability: "internet-facing", 
    #           ipv6_addressability: "off", 
    #         }, 
    #       }, 
    #       vpc_configuration: {
    #         security_groups: [
    #           {
    #             security_group_id: "sg-903004f8", 
    #           }, 
    #         ], 
    #         subnets: [
    #           {
    #             subnet_id: "subnet-8360a9e7", 
    #           }, 
    #           {
    #             subnet_id: "subnet-b7d581c0", 
    #           }, 
    #         ], 
    #       }, 
    #     }, 
    #     proxy_version: "1.40", 
    #     role_arn: "arn:aws:iam::123456789012:role/my-proxy-role", 
    #     tags: {
    #       "Environment" => "production", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "my-proxy", 
    #     type: "envoy", 
    #     arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #     configuration_metadata: {
    #       config_file_hash: "6b9dfd96fbb077f7e4cabcb5c1be57761b474afc18499d77b6bd49cfb03b3466", 
    #       config_file_last_updated_at: Time.parse(1795194000), 
    #     }, 
    #     created_at: Time.parse(1795194000), 
    #     dns_name: "my-proxy-1234567890.elb-proxy.us-east-1.on.aws", 
    #     network_configuration: {
    #       ip_configuration: {
    #         ip_addressing_configuration: {
    #           ipv4_addressability: "internet-facing", 
    #           ipv6_addressability: "off", 
    #         }, 
    #       }, 
    #       vpc_configuration: {
    #         availability_zones: [
    #           {
    #             subnet_id: "subnet-8360a9e7", 
    #             zone_id: "use1-az1", 
    #             zone_name: "us-east-1a", 
    #           }, 
    #           {
    #             subnet_id: "subnet-b7d581c0", 
    #             zone_id: "use1-az2", 
    #             zone_name: "us-east-1b", 
    #           }, 
    #         ], 
    #         security_groups: [
    #           {
    #             security_group_id: "sg-903004f8", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-1a2b3c4d", 
    #       }, 
    #     }, 
    #     proxy_version: "1.40", 
    #     role_arn: "arn:aws:iam::123456789012:role/my-proxy-role", 
    #     status: {
    #       code: "create-in-progress", 
    #       reasons: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_proxy({
    #     name: "ProxyName", # required
    #     type: "envoy", # required, accepts envoy
    #     proxy_version: "ProxyVersion", # required
    #     role_arn: "IamRoleArn", # required
    #     configuration: { # required
    #       configuration_file: {
    #         configuration_bytes: "data", # required
    #       },
    #       configuration_archive: {
    #         configuration_bytes: "data", # required
    #       },
    #     },
    #     network_configuration: { # required
    #       ip_configuration: { # required
    #         ip_addressing_configuration: { # required
    #           ipv4_addressability: "off", # required, accepts off, internet-facing, internal
    #           ipv6_addressability: "off", # required, accepts off, internet-facing, internal
    #         },
    #       },
    #       vpc_configuration: { # required
    #         subnets: [ # required
    #           {
    #             subnet_id: "SubnetId", # required
    #           },
    #         ],
    #         security_groups: [ # required
    #           {
    #             security_group_id: "SecurityGroupId", # required
    #           },
    #         ],
    #       },
    #     },
    #     attributes: [
    #       {
    #         key: "ProxyAttributeKey", # required
    #         value: "ProxyAttributeValue", # required
    #       },
    #     ],
    #     customer_kms_key_arn: "CustomerKmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "envoy"
    #   resp.proxy_version #=> String
    #   resp.dns_name #=> String
    #   resp.role_arn #=> String
    #   resp.network_configuration.ip_configuration.ip_addressing_configuration.ipv4_addressability #=> String, one of "off", "internet-facing", "internal"
    #   resp.network_configuration.ip_configuration.ip_addressing_configuration.ipv6_addressability #=> String, one of "off", "internet-facing", "internal"
    #   resp.network_configuration.vpc_configuration.vpc_id #=> String
    #   resp.network_configuration.vpc_configuration.availability_zones #=> Array
    #   resp.network_configuration.vpc_configuration.availability_zones[0].subnet_id #=> String
    #   resp.network_configuration.vpc_configuration.availability_zones[0].zone_id #=> String
    #   resp.network_configuration.vpc_configuration.availability_zones[0].zone_name #=> String
    #   resp.network_configuration.vpc_configuration.security_groups #=> Array
    #   resp.network_configuration.vpc_configuration.security_groups[0].security_group_id #=> String
    #   resp.status.code #=> String, one of "action-required", "active", "create-failed", "create-in-progress", "deleted", "delete-in-progress", "update-in-progress", "cancel-update-in-progress"
    #   resp.status.reasons #=> Array
    #   resp.status.reasons[0].code #=> String
    #   resp.status.reasons[0].target #=> String
    #   resp.status.reasons[0].message #=> String
    #   resp.configuration_metadata.config_file_hash #=> String
    #   resp.configuration_metadata.config_archive_hash #=> String
    #   resp.configuration_metadata.config_file_last_updated_at #=> Time
    #   resp.configuration_metadata.config_archive_last_updated_at #=> Time
    #   resp.created_at #=> Time
    #   resp.customer_kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/CreateProxy AWS API Documentation
    #
    # @overload create_proxy(params = {})
    # @param [Hash] params ({})
    def create_proxy(params = {}, options = {})
      req = build_request(:create_proxy, params)
      req.send_request(options)
    end

    # Deletes a proxy.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @return [Types::DeleteProxyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProxyResponse#arn #arn} => String
    #   * {Types::DeleteProxyResponse#name #name} => String
    #   * {Types::DeleteProxyResponse#status #status} => Types::ProxyStatus
    #
    #
    # @example Example: To delete a proxy
    #
    #   # The following example deletes the specified proxy. You must turn off deletion protection before you can delete a proxy.
    #
    #   resp = client.delete_proxy({
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "my-proxy", 
    #     arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #     status: {
    #       code: "delete-in-progress", 
    #       reasons: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_proxy({
    #     proxy_identifier: "ProxyIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.status.code #=> String, one of "action-required", "active", "create-failed", "create-in-progress", "deleted", "delete-in-progress", "update-in-progress", "cancel-update-in-progress"
    #   resp.status.reasons #=> Array
    #   resp.status.reasons[0].code #=> String
    #   resp.status.reasons[0].target #=> String
    #   resp.status.reasons[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/DeleteProxy AWS API Documentation
    #
    # @overload delete_proxy(params = {})
    # @param [Hash] params ({})
    def delete_proxy(params = {}, options = {})
      req = build_request(:delete_proxy, params)
      req.send_request(options)
    end

    # Disassociates an ACM certificate from the specified proxy.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @option params [required, String] :certificate_identifier
    #   The Amazon Resource Name (ARN) of the ACM certificate.
    #
    # @return [Types::DisassociateCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateCertificateResponse#certificate_association #certificate_association} => Types::CertificateAssociation
    #
    #
    # @example Example: To disassociate a certificate from a proxy
    #
    #   # The following example disassociates the specified ACM certificate from the specified proxy.
    #
    #   resp = client.disassociate_certificate({
    #     certificate_identifier: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012", 
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     certificate_association: {
    #       certificate_arn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012", 
    #       created_at: Time.parse(1795195800), 
    #       status: {
    #         code: "disassociate-in-progress", 
    #         reasons: [
    #         ], 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_certificate({
    #     proxy_identifier: "ProxyIdentifier", # required
    #     certificate_identifier: "CertificateIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_association.certificate_arn #=> String
    #   resp.certificate_association.status.code #=> String, one of "associate-in-progress", "active", "associate-failed", "disassociate-in-progress", "disassociated"
    #   resp.certificate_association.status.reasons #=> Array
    #   resp.certificate_association.status.reasons[0].code #=> String
    #   resp.certificate_association.status.reasons[0].message #=> String
    #   resp.certificate_association.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/DisassociateCertificate AWS API Documentation
    #
    # @overload disassociate_certificate(params = {})
    # @param [Hash] params ({})
    def disassociate_certificate(params = {}, options = {})
      req = build_request(:disassociate_certificate, params)
      req.send_request(options)
    end

    # Retrieves information about the specified proxy.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @return [Types::GetProxyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProxyResponse#arn #arn} => String
    #   * {Types::GetProxyResponse#name #name} => String
    #   * {Types::GetProxyResponse#type #type} => String
    #   * {Types::GetProxyResponse#proxy_version #proxy_version} => String
    #   * {Types::GetProxyResponse#dns_name #dns_name} => String
    #   * {Types::GetProxyResponse#role_arn #role_arn} => String
    #   * {Types::GetProxyResponse#network_configuration #network_configuration} => Types::ProxyNetworkConfiguration
    #   * {Types::GetProxyResponse#status #status} => Types::ProxyStatus
    #   * {Types::GetProxyResponse#configuration_metadata #configuration_metadata} => Types::ConfigurationMetadata
    #   * {Types::GetProxyResponse#created_at #created_at} => Time
    #   * {Types::GetProxyResponse#customer_kms_key_arn #customer_kms_key_arn} => String
    #
    #
    # @example Example: To get information about a proxy
    #
    #   # The following example gets information about the specified proxy.
    #
    #   resp = client.get_proxy({
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "my-proxy", 
    #     type: "envoy", 
    #     arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #     configuration_metadata: {
    #       config_file_hash: "6b9dfd96fbb077f7e4cabcb5c1be57761b474afc18499d77b6bd49cfb03b3466", 
    #       config_file_last_updated_at: Time.parse(1795194000), 
    #     }, 
    #     created_at: Time.parse(1795194000), 
    #     dns_name: "my-proxy-1234567890.elb-proxy.us-east-1.on.aws", 
    #     network_configuration: {
    #       ip_configuration: {
    #         ip_addressing_configuration: {
    #           ipv4_addressability: "internet-facing", 
    #           ipv6_addressability: "off", 
    #         }, 
    #       }, 
    #       vpc_configuration: {
    #         availability_zones: [
    #           {
    #             subnet_id: "subnet-8360a9e7", 
    #             zone_id: "use1-az1", 
    #             zone_name: "us-east-1a", 
    #           }, 
    #           {
    #             subnet_id: "subnet-b7d581c0", 
    #             zone_id: "use1-az2", 
    #             zone_name: "us-east-1b", 
    #           }, 
    #         ], 
    #         security_groups: [
    #           {
    #             security_group_id: "sg-903004f8", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-1a2b3c4d", 
    #       }, 
    #     }, 
    #     proxy_version: "1.40", 
    #     role_arn: "arn:aws:iam::123456789012:role/my-proxy-role", 
    #     status: {
    #       code: "active", 
    #       reasons: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_proxy({
    #     proxy_identifier: "ProxyIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "envoy"
    #   resp.proxy_version #=> String
    #   resp.dns_name #=> String
    #   resp.role_arn #=> String
    #   resp.network_configuration.ip_configuration.ip_addressing_configuration.ipv4_addressability #=> String, one of "off", "internet-facing", "internal"
    #   resp.network_configuration.ip_configuration.ip_addressing_configuration.ipv6_addressability #=> String, one of "off", "internet-facing", "internal"
    #   resp.network_configuration.vpc_configuration.vpc_id #=> String
    #   resp.network_configuration.vpc_configuration.availability_zones #=> Array
    #   resp.network_configuration.vpc_configuration.availability_zones[0].subnet_id #=> String
    #   resp.network_configuration.vpc_configuration.availability_zones[0].zone_id #=> String
    #   resp.network_configuration.vpc_configuration.availability_zones[0].zone_name #=> String
    #   resp.network_configuration.vpc_configuration.security_groups #=> Array
    #   resp.network_configuration.vpc_configuration.security_groups[0].security_group_id #=> String
    #   resp.status.code #=> String, one of "action-required", "active", "create-failed", "create-in-progress", "deleted", "delete-in-progress", "update-in-progress", "cancel-update-in-progress"
    #   resp.status.reasons #=> Array
    #   resp.status.reasons[0].code #=> String
    #   resp.status.reasons[0].target #=> String
    #   resp.status.reasons[0].message #=> String
    #   resp.configuration_metadata.config_file_hash #=> String
    #   resp.configuration_metadata.config_archive_hash #=> String
    #   resp.configuration_metadata.config_file_last_updated_at #=> Time
    #   resp.configuration_metadata.config_archive_last_updated_at #=> Time
    #   resp.created_at #=> Time
    #   resp.customer_kms_key_arn #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * proxy_active
    #   * proxy_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxy AWS API Documentation
    #
    # @overload get_proxy(params = {})
    # @param [Hash] params ({})
    def get_proxy(params = {}, options = {})
      req = build_request(:get_proxy, params)
      req.send_request(options)
    end

    # Retrieves the attributes for the specified proxy.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @return [Types::GetProxyAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProxyAttributesResponse#attributes #attributes} => Array&lt;Types::AttributeDetails&gt;
    #
    #
    # @example Example: To get the attributes for a proxy
    #
    #   # The following example gets the attributes for the specified proxy. The output includes the default value of each
    #   # attribute that you can update.
    #
    #   resp = client.get_proxy_attributes({
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         key: "ddos_protection.syn_cookie.mode", 
    #         value: "reactive", 
    #         default_value: "reactive", 
    #       }, 
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "true", 
    #         default_value: "false", 
    #       }, 
    #       {
    #         key: "envoy.component_log_level", 
    #         value: "", 
    #         default_value: "", 
    #       }, 
    #       {
    #         key: "envoy.log_level", 
    #         value: "warn", 
    #         default_value: "warn", 
    #       }, 
    #       {
    #         key: "waf.fail_open.enabled", 
    #         value: "false", 
    #         default_value: "false", 
    #       }, 
    #       {
    #         key: "waf.web_acl_arn", 
    #         value: "", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_proxy_attributes({
    #     proxy_identifier: "ProxyIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].key #=> String
    #   resp.attributes[0].value #=> String
    #   resp.attributes[0].default_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxyAttributes AWS API Documentation
    #
    # @overload get_proxy_attributes(params = {})
    # @param [Hash] params ({})
    def get_proxy_attributes(params = {}, options = {})
      req = build_request(:get_proxy_attributes, params)
      req.send_request(options)
    end

    # Retrieves the configuration file, the configuration archive, or both
    # for the specified proxy. This operation is separate from GetProxy so
    # that you can grant access to proxy metadata without granting access to
    # the configuration content.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @option params [Boolean] :include_config_file
    #   Indicates whether to include the configuration file contents in the
    #   response. The default is `false`.
    #
    # @option params [Boolean] :include_config_archive
    #   Indicates whether to include the configuration archive contents in the
    #   response. The default is `false`.
    #
    # @return [Types::GetProxyConfigurationContentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProxyConfigurationContentsResponse#configuration_file_contents #configuration_file_contents} => String
    #   * {Types::GetProxyConfigurationContentsResponse#configuration_archive_contents #configuration_archive_contents} => String
    #   * {Types::GetProxyConfigurationContentsResponse#configuration_metadata #configuration_metadata} => Types::ConfigurationMetadata
    #   * {Types::GetProxyConfigurationContentsResponse#customer_kms_key_arn #customer_kms_key_arn} => String
    #
    #
    # @example Example: To get the configuration for a proxy
    #
    #   # The following example gets the configuration file for the specified proxy. The configuration archive isn't included.
    #
    #   resp = client.get_proxy_configuration_contents({
    #     include_config_archive: false, 
    #     include_config_file: true, 
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration_file_contents: "c3RhdGljX3Jlc291cmNlczoKICBsaXN0ZW5lcnM6IFtdCg==", 
    #     configuration_metadata: {
    #       config_file_hash: "29a5eb3bdf714ff29cc52e1a3723894b9f746416e1e541fddfad0a3963aed98c", 
    #       config_file_last_updated_at: Time.parse(1795197600), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_proxy_configuration_contents({
    #     proxy_identifier: "ProxyIdentifier", # required
    #     include_config_file: false,
    #     include_config_archive: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_file_contents #=> String
    #   resp.configuration_archive_contents #=> String
    #   resp.configuration_metadata.config_file_hash #=> String
    #   resp.configuration_metadata.config_archive_hash #=> String
    #   resp.configuration_metadata.config_file_last_updated_at #=> Time
    #   resp.configuration_metadata.config_archive_last_updated_at #=> Time
    #   resp.customer_kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxyConfigurationContents AWS API Documentation
    #
    # @overload get_proxy_configuration_contents(params = {})
    # @param [Hash] params ({})
    def get_proxy_configuration_contents(params = {}, options = {})
      req = build_request(:get_proxy_configuration_contents, params)
      req.send_request(options)
    end

    # Retrieves information about the specified proxy update.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @option params [required, String] :update_identifier
    #   The ID of the update.
    #
    # @return [Types::GetProxyUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProxyUpdateResponse#proxy_arn #proxy_arn} => String
    #   * {Types::GetProxyUpdateResponse#update_id #update_id} => String
    #   * {Types::GetProxyUpdateResponse#state #state} => Types::ProxyUpdateState
    #   * {Types::GetProxyUpdateResponse#details #details} => Types::ProxyUpdateDetails
    #   * {Types::GetProxyUpdateResponse#submitted_at #submitted_at} => Time
    #   * {Types::GetProxyUpdateResponse#validated_at #validated_at} => Time
    #   * {Types::GetProxyUpdateResponse#completed_at #completed_at} => Time
    #
    #
    # @example Example: To get information about a proxy update
    #
    #   # The following example gets information about the specified update for the specified proxy. The configuration is valid
    #   # and was applied to all proxy nodes.
    #
    #   resp = client.get_proxy_update({
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #     update_identifier: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     completed_at: Time.parse(1795197720), 
    #     details: {
    #       configuration: {
    #         new_configuration_metadata: {
    #           config_file_hash: "29a5eb3bdf714ff29cc52e1a3723894b9f746416e1e541fddfad0a3963aed98c", 
    #           config_file_last_updated_at: Time.parse(1795197600), 
    #         }, 
    #       }, 
    #     }, 
    #     proxy_arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #     state: {
    #       propagation_status: "complete", 
    #       validation_status: "valid", 
    #     }, 
    #     submitted_at: Time.parse(1795197600), 
    #     update_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     validated_at: Time.parse(1795197660), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_proxy_update({
    #     proxy_identifier: "ProxyIdentifier", # required
    #     update_identifier: "ProxyUpdateIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.proxy_arn #=> String
    #   resp.update_id #=> String
    #   resp.state.validation_status #=> String, one of "not-validated", "valid", "invalid"
    #   resp.state.propagation_status #=> String, one of "in-progress", "complete", "skipped", "failed", "cancelled"
    #   resp.state.reasons #=> Array
    #   resp.state.reasons[0] #=> String
    #   resp.details.configuration.new_configuration_metadata.config_file_hash #=> String
    #   resp.details.configuration.new_configuration_metadata.config_archive_hash #=> String
    #   resp.details.configuration.new_configuration_metadata.config_file_last_updated_at #=> Time
    #   resp.details.configuration.new_configuration_metadata.config_archive_last_updated_at #=> Time
    #   resp.submitted_at #=> Time
    #   resp.validated_at #=> Time
    #   resp.completed_at #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * proxy_update_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxyUpdate AWS API Documentation
    #
    # @overload get_proxy_update(params = {})
    # @param [Hash] params ({})
    def get_proxy_update(params = {}, options = {})
      req = build_request(:get_proxy_update, params)
      req.send_request(options)
    end

    # Lists the ACM certificate associations for the specified proxy.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @return [Types::ListCertificateAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCertificateAssociationsResponse#items #items} => Array&lt;Types::CertificateAssociation&gt;
    #   * {Types::ListCertificateAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the certificate associations for a proxy
    #
    #   # The following example lists the ACM certificates associated with the specified proxy.
    #
    #   resp = client.list_certificate_associations({
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         certificate_arn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012", 
    #         created_at: Time.parse(1795195800), 
    #         status: {
    #           code: "active", 
    #           reasons: [
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificate_associations({
    #     proxy_identifier: "ProxyIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].certificate_arn #=> String
    #   resp.items[0].status.code #=> String, one of "associate-in-progress", "active", "associate-failed", "disassociate-in-progress", "disassociated"
    #   resp.items[0].status.reasons #=> Array
    #   resp.items[0].status.reasons[0].code #=> String
    #   resp.items[0].status.reasons[0].message #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListCertificateAssociations AWS API Documentation
    #
    # @overload list_certificate_associations(params = {})
    # @param [Hash] params ({})
    def list_certificate_associations(params = {}, options = {})
      req = build_request(:list_certificate_associations, params)
      req.send_request(options)
    end

    # Lists the proxies owned by the caller account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @return [Types::ListProxiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProxiesResponse#items #items} => Array&lt;Types::ProxySummary&gt;
    #   * {Types::ListProxiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list your proxies
    #
    #   # The following example lists the proxies owned by the calling account.
    #
    #   resp = client.list_proxies({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         name: "my-proxy", 
    #         type: "envoy", 
    #         arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #         created_at: Time.parse(1795194000), 
    #         dns_name: "my-proxy-1234567890.elb-proxy.us-east-1.on.aws", 
    #         status: {
    #           code: "active", 
    #           reasons: [
    #           ], 
    #         }, 
    #         vpc_id: "vpc-1a2b3c4d", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_proxies({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].type #=> String, one of "envoy"
    #   resp.items[0].dns_name #=> String
    #   resp.items[0].vpc_id #=> String
    #   resp.items[0].status.code #=> String, one of "action-required", "active", "create-failed", "create-in-progress", "deleted", "delete-in-progress", "update-in-progress", "cancel-update-in-progress"
    #   resp.items[0].status.reasons #=> Array
    #   resp.items[0].status.reasons[0].code #=> String
    #   resp.items[0].status.reasons[0].target #=> String
    #   resp.items[0].status.reasons[0].message #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListProxies AWS API Documentation
    #
    # @overload list_proxies(params = {})
    # @param [Hash] params ({})
    def list_proxies(params = {}, options = {})
      req = build_request(:list_proxies, params)
      req.send_request(options)
    end

    # Lists the updates for the specified proxy, most recently submitted
    # first.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @return [Types::ListProxyUpdatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProxyUpdatesResponse#items #items} => Array&lt;Types::ProxyUpdateSummary&gt;
    #   * {Types::ListProxyUpdatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the updates for a proxy
    #
    #   # The following example lists the updates for the specified proxy.
    #
    #   resp = client.list_proxy_updates({
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         type: "update-proxy-configuration", 
    #         completed_at: Time.parse(1795197720), 
    #         propagation_status: "complete", 
    #         submitted_at: Time.parse(1795197600), 
    #         update_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         validated_at: Time.parse(1795197660), 
    #         validation_status: "valid", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_proxy_updates({
    #     proxy_identifier: "ProxyIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].update_id #=> String
    #   resp.items[0].type #=> String, one of "update-proxy-configuration"
    #   resp.items[0].validation_status #=> String, one of "not-validated", "valid", "invalid"
    #   resp.items[0].propagation_status #=> String, one of "in-progress", "complete", "skipped", "failed", "cancelled"
    #   resp.items[0].submitted_at #=> Time
    #   resp.items[0].validated_at #=> Time
    #   resp.items[0].completed_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListProxyUpdates AWS API Documentation
    #
    # @overload list_proxy_updates(params = {})
    # @param [Hash] params ({})
    def list_proxy_updates(params = {}, options = {})
      req = build_request(:list_proxy_updates, params)
      req.send_request(options)
    end

    # Lists the available proxy versions.
    #
    # @option params [required, String] :type
    #   The type of proxy.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @return [Types::ListProxyVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProxyVersionsResponse#items #items} => Array&lt;Types::ProxyVersionSummary&gt;
    #   * {Types::ListProxyVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the proxy versions
    #
    #   # The following example lists the Envoy versions that you can specify when you create a proxy or update its version.
    #
    #   resp = client.list_proxy_versions({
    #     type: "envoy", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         version: "1.40", 
    #         type: "envoy", 
    #       }, 
    #       {
    #         version: "1.41", 
    #         type: "envoy", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_proxy_versions({
    #     type: "envoy", # required, accepts envoy
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].type #=> String, one of "envoy"
    #   resp.items[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListProxyVersions AWS API Documentation
    #
    # @overload list_proxy_versions(params = {})
    # @param [Hash] params ({})
    def list_proxy_versions(params = {}, options = {})
      req = build_request(:list_proxy_versions, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: To list the tags for a proxy
    #
    #   # The following example lists the tags for the specified proxy.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "Environment" => "production", 
    #       "Team" => "networking", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags for the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add tags to a proxy
    #
    #   # The following example adds the specified tags to the specified proxy.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #     tags: {
    #       "Environment" => "production", 
    #       "Team" => "networking", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys of the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove tags from a proxy
    #
    #   # The following example removes the specified tags from the specified proxy.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #     tag_keys: [
    #       "Team", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the attributes for the specified proxy.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @option params [required, Array<Types::Attribute>] :attributes
    #   The attributes to update. Attributes that you don't specify are
    #   unchanged.
    #
    # @return [Types::UpdateProxyAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProxyAttributesResponse#attributes #attributes} => Array&lt;Types::AttributeDetails&gt;
    #
    #
    # @example Example: To enable deletion protection
    #
    #   # The following example enables deletion protection for the specified proxy.
    #
    #   resp = client.update_proxy_attributes({
    #     attributes: [
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "true", 
    #       }, 
    #     ], 
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         key: "ddos_protection.syn_cookie.mode", 
    #         value: "reactive", 
    #         default_value: "reactive", 
    #       }, 
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "true", 
    #         default_value: "false", 
    #       }, 
    #       {
    #         key: "envoy.component_log_level", 
    #         value: "", 
    #         default_value: "", 
    #       }, 
    #       {
    #         key: "envoy.log_level", 
    #         value: "warn", 
    #         default_value: "warn", 
    #       }, 
    #       {
    #         key: "waf.fail_open.enabled", 
    #         value: "false", 
    #         default_value: "false", 
    #       }, 
    #       {
    #         key: "waf.web_acl_arn", 
    #         value: "", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To change the Envoy log level
    #
    #   # The following example changes the Envoy log level for the specified proxy to debug.
    #
    #   resp = client.update_proxy_attributes({
    #     attributes: [
    #       {
    #         key: "envoy.log_level", 
    #         value: "debug", 
    #       }, 
    #     ], 
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         key: "ddos_protection.syn_cookie.mode", 
    #         value: "reactive", 
    #         default_value: "reactive", 
    #       }, 
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "false", 
    #         default_value: "false", 
    #       }, 
    #       {
    #         key: "envoy.component_log_level", 
    #         value: "", 
    #         default_value: "", 
    #       }, 
    #       {
    #         key: "envoy.log_level", 
    #         value: "debug", 
    #         default_value: "warn", 
    #       }, 
    #       {
    #         key: "waf.fail_open.enabled", 
    #         value: "false", 
    #         default_value: "false", 
    #       }, 
    #       {
    #         key: "waf.web_acl_arn", 
    #         value: "", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To change the log level for specific Envoy components
    #
    #   # The following example changes the log level for the http and router Envoy components on the specified proxy to debug.
    #   # Components that aren't specified use the log level set by envoy.log_level.
    #
    #   resp = client.update_proxy_attributes({
    #     attributes: [
    #       {
    #         key: "envoy.component_log_level", 
    #         value: "http:debug,router:debug", 
    #       }, 
    #     ], 
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         key: "ddos_protection.syn_cookie.mode", 
    #         value: "reactive", 
    #         default_value: "reactive", 
    #       }, 
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "false", 
    #         default_value: "false", 
    #       }, 
    #       {
    #         key: "envoy.component_log_level", 
    #         value: "http:debug,router:debug", 
    #         default_value: "", 
    #       }, 
    #       {
    #         key: "envoy.log_level", 
    #         value: "warn", 
    #         default_value: "warn", 
    #       }, 
    #       {
    #         key: "waf.fail_open.enabled", 
    #         value: "false", 
    #         default_value: "false", 
    #       }, 
    #       {
    #         key: "waf.web_acl_arn", 
    #         value: "", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To enable AWS WAF fail open
    #
    #   # The following example enables AWS WAF fail open for the specified proxy.
    #
    #   resp = client.update_proxy_attributes({
    #     attributes: [
    #       {
    #         key: "waf.fail_open.enabled", 
    #         value: "true", 
    #       }, 
    #     ], 
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         key: "ddos_protection.syn_cookie.mode", 
    #         value: "reactive", 
    #         default_value: "reactive", 
    #       }, 
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "false", 
    #         default_value: "false", 
    #       }, 
    #       {
    #         key: "envoy.component_log_level", 
    #         value: "", 
    #         default_value: "", 
    #       }, 
    #       {
    #         key: "envoy.log_level", 
    #         value: "warn", 
    #         default_value: "warn", 
    #       }, 
    #       {
    #         key: "waf.fail_open.enabled", 
    #         value: "true", 
    #         default_value: "false", 
    #       }, 
    #       {
    #         key: "waf.web_acl_arn", 
    #         value: "", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_proxy_attributes({
    #     proxy_identifier: "ProxyIdentifier", # required
    #     attributes: [ # required
    #       {
    #         key: "ProxyAttributeKey", # required
    #         value: "ProxyAttributeValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].key #=> String
    #   resp.attributes[0].value #=> String
    #   resp.attributes[0].default_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UpdateProxyAttributes AWS API Documentation
    #
    # @overload update_proxy_attributes(params = {})
    # @param [Hash] params ({})
    def update_proxy_attributes(params = {}, options = {})
      req = build_request(:update_proxy_attributes, params)
      req.send_request(options)
    end

    # Updates the configuration for the specified proxy. You can update the
    # configuration file, the configuration archive, or both.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @option params [Types::ConfigurationFile] :configuration_file
    #   The updated configuration file for the proxy. If you don't specify a
    #   value, the existing configuration file is unchanged.
    #
    # @option params [Types::ConfigurationArchive] :configuration_archive
    #   The updated configuration archive for the proxy. If you don't specify
    #   a value, the existing configuration archive is unchanged.
    #
    # @option params [Boolean] :reset_configuration_archive
    #   Indicates whether to remove the configuration archive from the proxy.
    #
    # @option params [String] :customer_kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key used to
    #   encrypt the proxy's configuration content. Specify a new ARN to set
    #   or rotate the key. If you don't specify a value, the existing key is
    #   unchanged.
    #
    # @option params [Boolean] :reset_customer_kms_key_arn
    #   Indicates whether to remove the customer managed KMS key from the
    #   proxy and use the default service-owned key.
    #
    # @return [Types::UpdateProxyConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProxyConfigurationResponse#configuration_metadata #configuration_metadata} => Types::ConfigurationMetadata
    #   * {Types::UpdateProxyConfigurationResponse#update_id #update_id} => String
    #   * {Types::UpdateProxyConfigurationResponse#customer_kms_key_arn #customer_kms_key_arn} => String
    #
    #
    # @example Example: To update the configuration for a proxy
    #
    #   # The following example replaces the configuration file for the specified proxy. You can use the update ID in the output
    #   # to track the progress of the update.
    #
    #   resp = client.update_proxy_configuration({
    #     configuration_file: {
    #       configuration_bytes: "c3RhdGljX3Jlc291cmNlczoKICBsaXN0ZW5lcnM6IFtdCg==", 
    #     }, 
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration_metadata: {
    #       config_file_hash: "29a5eb3bdf714ff29cc52e1a3723894b9f746416e1e541fddfad0a3963aed98c", 
    #       config_file_last_updated_at: Time.parse(1795197600), 
    #     }, 
    #     update_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_proxy_configuration({
    #     proxy_identifier: "ProxyIdentifier", # required
    #     configuration_file: {
    #       configuration_bytes: "data", # required
    #     },
    #     configuration_archive: {
    #       configuration_bytes: "data", # required
    #     },
    #     reset_configuration_archive: false,
    #     customer_kms_key_arn: "CustomerKmsKeyArn",
    #     reset_customer_kms_key_arn: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_metadata.config_file_hash #=> String
    #   resp.configuration_metadata.config_archive_hash #=> String
    #   resp.configuration_metadata.config_file_last_updated_at #=> Time
    #   resp.configuration_metadata.config_archive_last_updated_at #=> Time
    #   resp.update_id #=> String
    #   resp.customer_kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UpdateProxyConfiguration AWS API Documentation
    #
    # @overload update_proxy_configuration(params = {})
    # @param [Hash] params ({})
    def update_proxy_configuration(params = {}, options = {})
      req = build_request(:update_proxy_configuration, params)
      req.send_request(options)
    end

    # Updates the network configuration for the specified proxy.
    #
    # @option params [required, String] :proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #
    # @option params [required, Types::UpdateProxyVpcConfiguration] :vpc_configuration
    #   The updated VPC configuration for the proxy.
    #
    # @return [Types::UpdateProxyNetworkConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProxyNetworkConfigurationResponse#arn #arn} => String
    #   * {Types::UpdateProxyNetworkConfigurationResponse#name #name} => String
    #   * {Types::UpdateProxyNetworkConfigurationResponse#type #type} => String
    #   * {Types::UpdateProxyNetworkConfigurationResponse#proxy_version #proxy_version} => String
    #   * {Types::UpdateProxyNetworkConfigurationResponse#dns_name #dns_name} => String
    #   * {Types::UpdateProxyNetworkConfigurationResponse#role_arn #role_arn} => String
    #   * {Types::UpdateProxyNetworkConfigurationResponse#network_configuration #network_configuration} => Types::ProxyNetworkConfiguration
    #   * {Types::UpdateProxyNetworkConfigurationResponse#status #status} => Types::ProxyStatus
    #   * {Types::UpdateProxyNetworkConfigurationResponse#configuration_metadata #configuration_metadata} => Types::ConfigurationMetadata
    #   * {Types::UpdateProxyNetworkConfigurationResponse#created_at #created_at} => Time
    #   * {Types::UpdateProxyNetworkConfigurationResponse#customer_kms_key_arn #customer_kms_key_arn} => String
    #
    #
    # @example Example: To update the network configuration for a proxy
    #
    #   # The following example replaces the security groups for the specified proxy. The subnets don't change.
    #
    #   resp = client.update_proxy_network_configuration({
    #     proxy_identifier: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #     vpc_configuration: {
    #       security_groups: [
    #         {
    #           security_group_id: "sg-1a2b3c4d", 
    #         }, 
    #       ], 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "my-proxy", 
    #     type: "envoy", 
    #     arn: "arn:aws:elasticloadbalancing:us-east-1:123456789012:proxy/my-proxy:0123456789abcdef", 
    #     created_at: Time.parse(1795194000), 
    #     dns_name: "my-proxy-1234567890.elb-proxy.us-east-1.on.aws", 
    #     network_configuration: {
    #       ip_configuration: {
    #         ip_addressing_configuration: {
    #           ipv4_addressability: "internet-facing", 
    #           ipv6_addressability: "off", 
    #         }, 
    #       }, 
    #       vpc_configuration: {
    #         availability_zones: [
    #           {
    #             subnet_id: "subnet-8360a9e7", 
    #             zone_id: "use1-az1", 
    #             zone_name: "us-east-1a", 
    #           }, 
    #           {
    #             subnet_id: "subnet-b7d581c0", 
    #             zone_id: "use1-az2", 
    #             zone_name: "us-east-1b", 
    #           }, 
    #         ], 
    #         security_groups: [
    #           {
    #             security_group_id: "sg-1a2b3c4d", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-1a2b3c4d", 
    #       }, 
    #     }, 
    #     proxy_version: "1.40", 
    #     role_arn: "arn:aws:iam::123456789012:role/my-proxy-role", 
    #     status: {
    #       code: "active", 
    #       reasons: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_proxy_network_configuration({
    #     proxy_identifier: "ProxyIdentifier", # required
    #     vpc_configuration: { # required
    #       subnets: [
    #         {
    #           subnet_id: "SubnetId", # required
    #         },
    #       ],
    #       security_groups: [
    #         {
    #           security_group_id: "SecurityGroupId", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "envoy"
    #   resp.proxy_version #=> String
    #   resp.dns_name #=> String
    #   resp.role_arn #=> String
    #   resp.network_configuration.ip_configuration.ip_addressing_configuration.ipv4_addressability #=> String, one of "off", "internet-facing", "internal"
    #   resp.network_configuration.ip_configuration.ip_addressing_configuration.ipv6_addressability #=> String, one of "off", "internet-facing", "internal"
    #   resp.network_configuration.vpc_configuration.vpc_id #=> String
    #   resp.network_configuration.vpc_configuration.availability_zones #=> Array
    #   resp.network_configuration.vpc_configuration.availability_zones[0].subnet_id #=> String
    #   resp.network_configuration.vpc_configuration.availability_zones[0].zone_id #=> String
    #   resp.network_configuration.vpc_configuration.availability_zones[0].zone_name #=> String
    #   resp.network_configuration.vpc_configuration.security_groups #=> Array
    #   resp.network_configuration.vpc_configuration.security_groups[0].security_group_id #=> String
    #   resp.status.code #=> String, one of "action-required", "active", "create-failed", "create-in-progress", "deleted", "delete-in-progress", "update-in-progress", "cancel-update-in-progress"
    #   resp.status.reasons #=> Array
    #   resp.status.reasons[0].code #=> String
    #   resp.status.reasons[0].target #=> String
    #   resp.status.reasons[0].message #=> String
    #   resp.configuration_metadata.config_file_hash #=> String
    #   resp.configuration_metadata.config_archive_hash #=> String
    #   resp.configuration_metadata.config_file_last_updated_at #=> Time
    #   resp.configuration_metadata.config_archive_last_updated_at #=> Time
    #   resp.created_at #=> Time
    #   resp.customer_kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UpdateProxyNetworkConfiguration AWS API Documentation
    #
    # @overload update_proxy_network_configuration(params = {})
    # @param [Hash] params ({})
    def update_proxy_network_configuration(params = {}, options = {})
      req = build_request(:update_proxy_network_configuration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ELBProxy')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-elbproxy'
      context[:gem_version] = '1.0.0'
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
    # | waiter_name           | params                    | :delay   | :max_attempts |
    # | --------------------- | ------------------------- | -------- | ------------- |
    # | proxy_active          | {Client#get_proxy}        | 15       | 40            |
    # | proxy_deleted         | {Client#get_proxy}        | 15       | 40            |
    # | proxy_update_complete | {Client#get_proxy_update} | 5        | 24            |
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
        proxy_active: Waiters::ProxyActive,
        proxy_deleted: Waiters::ProxyDeleted,
        proxy_update_complete: Waiters::ProxyUpdateComplete
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
