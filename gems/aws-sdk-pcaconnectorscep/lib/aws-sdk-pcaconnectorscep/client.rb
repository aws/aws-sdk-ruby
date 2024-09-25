# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/invocation_id.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/telemetry.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

module Aws::PcaConnectorScep
  # An API client for PcaConnectorScep.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PcaConnectorScep::Client.new(
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

    @identifier = :pcaconnectorscep

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
    add_plugin(Aws::PcaConnectorScep::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
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
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'],
    #       ENV['AWS_SESSION_TOKEN'], and ENV['AWS_ACCOUNT_ID']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #     A Bearer Token Provider. This can be an instance of any one of the
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
    #   @option options [Aws::PcaConnectorScep::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PcaConnectorScep::EndpointParameters`.
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

    # For general-purpose connectors. Creates a *challenge password* for the
    # specified connector. The SCEP protocol uses a challenge password to
    # authenticate a request before issuing a certificate from a certificate
    # authority (CA). Your SCEP clients include the challenge password as
    # part of their certificate request to Connector for SCEP. To retrieve
    # the connector Amazon Resource Names (ARNs) for the connectors in your
    # account, call [ListConnectors][1].
    #
    # To create additional challenge passwords for the connector, call
    # `CreateChallenge` again. We recommend frequently rotating your
    # challenge passwords.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_ListConnectors.html
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) of the connector that you want to
    #   create a challenge for.
    #
    # @option params [String] :client_token
    #   Custom string that can be used to distinguish between calls to the
    #   [CreateChallenge][1] action. Client tokens for `CreateChallenge` time
    #   out after five minutes. Therefore, if you call `CreateChallenge`
    #   multiple times with the same client token within five minutes,
    #   Connector for SCEP recognizes that you are requesting only one
    #   challenge and will only respond with one. If you change the client
    #   token for each call, Connector for SCEP recognizes that you are
    #   requesting multiple challenge passwords.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_CreateChallenge.html
    #
    # @option params [Hash<String,String>] :tags
    #   The key-value pairs to associate with the resource.
    #
    # @return [Types::CreateChallengeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChallengeResponse#challenge #challenge} => Types::Challenge
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_challenge({
    #     connector_arn: "ConnectorArn", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge.arn #=> String
    #   resp.challenge.connector_arn #=> String
    #   resp.challenge.created_at #=> Time
    #   resp.challenge.updated_at #=> Time
    #   resp.challenge.password #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/CreateChallenge AWS API Documentation
    #
    # @overload create_challenge(params = {})
    # @param [Hash] params ({})
    def create_challenge(params = {}, options = {})
      req = build_request(:create_challenge, params)
      req.send_request(options)
    end

    # Creates a SCEP connector. A SCEP connector links Amazon Web Services
    # Private Certificate Authority to your SCEP-compatible devices and
    # mobile device management (MDM) systems. Before you create a connector,
    # you must complete a set of prerequisites, including creation of a
    # private certificate authority (CA) to use with this connector. For
    # more information, see [Connector for SCEP prerequisites][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-prerequisites.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Private
    #   Certificate Authority certificate authority to use with this
    #   connector. Due to security vulnerabilities present in the SCEP
    #   protocol, we recommend using a private CA that's dedicated for use
    #   with the connector.
    #
    #   To retrieve the private CAs associated with your account, you can call
    #   [ListCertificateAuthorities][1] using the Amazon Web Services Private
    #   CA API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html
    #
    # @option params [Types::MobileDeviceManagement] :mobile_device_management
    #   If you don't supply a value, by default Connector for SCEP creates a
    #   connector for general-purpose use. A general-purpose connector is
    #   designed to work with clients or endpoints that support the SCEP
    #   protocol, except Connector for SCEP for Microsoft Intune. With
    #   connectors for general-purpose use, you manage SCEP challenge
    #   passwords using Connector for SCEP. For information about
    #   considerations and limitations with using Connector for SCEP, see
    #   [Considerations and Limitations][1].
    #
    #   If you provide an `IntuneConfiguration`, Connector for SCEP creates a
    #   connector for use with Microsoft Intune, and you manage the challenge
    #   passwords using Microsoft Intune. For more information, see [Using
    #   Connector for SCEP for Microsoft Intune][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlc4scep-considerations-limitations.html
    #   [2]: https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html
    #
    # @option params [String] :client_token
    #   Custom string that can be used to distinguish between calls to the
    #   [CreateChallenge][1] action. Client tokens for `CreateChallenge` time
    #   out after five minutes. Therefore, if you call `CreateChallenge`
    #   multiple times with the same client token within five minutes,
    #   Connector for SCEP recognizes that you are requesting only one
    #   challenge and will only respond with one. If you change the client
    #   token for each call, Connector for SCEP recognizes that you are
    #   requesting multiple challenge passwords.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_CreateChallenge.html
    #
    # @option params [Hash<String,String>] :tags
    #   The key-value pairs to associate with the resource.
    #
    # @return [Types::CreateConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectorResponse#connector_arn #connector_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connector({
    #     certificate_authority_arn: "CertificateAuthorityArn", # required
    #     mobile_device_management: {
    #       intune: {
    #         azure_application_id: "AzureApplicationId", # required
    #         domain: "AzureDomain", # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/CreateConnector AWS API Documentation
    #
    # @overload create_connector(params = {})
    # @param [Hash] params ({})
    def create_connector(params = {}, options = {})
      req = build_request(:create_connector, params)
      req.send_request(options)
    end

    # Deletes the specified [Challenge][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html
    #
    # @option params [required, String] :challenge_arn
    #   The Amazon Resource Name (ARN) of the challenge password to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_challenge({
    #     challenge_arn: "ChallengeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/DeleteChallenge AWS API Documentation
    #
    # @overload delete_challenge(params = {})
    # @param [Hash] params ({})
    def delete_challenge(params = {}, options = {})
      req = build_request(:delete_challenge, params)
      req.send_request(options)
    end

    # Deletes the specified [Connector][1]. This operation also deletes any
    # challenges associated with the connector.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Connector.html
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) of the connector to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connector({
    #     connector_arn: "ConnectorArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/DeleteConnector AWS API Documentation
    #
    # @overload delete_connector(params = {})
    # @param [Hash] params ({})
    def delete_connector(params = {}, options = {})
      req = build_request(:delete_connector, params)
      req.send_request(options)
    end

    # Retrieves the metadata for the specified [Challenge][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html
    #
    # @option params [required, String] :challenge_arn
    #   The Amazon Resource Name (ARN) of the challenge.
    #
    # @return [Types::GetChallengeMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChallengeMetadataResponse#challenge_metadata #challenge_metadata} => Types::ChallengeMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_challenge_metadata({
    #     challenge_arn: "ChallengeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_metadata.arn #=> String
    #   resp.challenge_metadata.connector_arn #=> String
    #   resp.challenge_metadata.created_at #=> Time
    #   resp.challenge_metadata.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/GetChallengeMetadata AWS API Documentation
    #
    # @overload get_challenge_metadata(params = {})
    # @param [Hash] params ({})
    def get_challenge_metadata(params = {}, options = {})
      req = build_request(:get_challenge_metadata, params)
      req.send_request(options)
    end

    # Retrieves the challenge password for the specified [Challenge][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html
    #
    # @option params [required, String] :challenge_arn
    #   The Amazon Resource Name (ARN) of the challenge.
    #
    # @return [Types::GetChallengePasswordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChallengePasswordResponse#password #password} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_challenge_password({
    #     challenge_arn: "ChallengeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.password #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/GetChallengePassword AWS API Documentation
    #
    # @overload get_challenge_password(params = {})
    # @param [Hash] params ({})
    def get_challenge_password(params = {}, options = {})
      req = build_request(:get_challenge_password, params)
      req.send_request(options)
    end

    # Retrieves details about the specified [Connector][1]. Calling this
    # action returns important details about the connector, such as the
    # public SCEP URL where your clients can request certificates.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Connector.html
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) of the connector.
    #
    # @return [Types::GetConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectorResponse#connector #connector} => Types::Connector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connector({
    #     connector_arn: "ConnectorArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connector.arn #=> String
    #   resp.connector.certificate_authority_arn #=> String
    #   resp.connector.type #=> String, one of "GENERAL_PURPOSE", "INTUNE"
    #   resp.connector.mobile_device_management.intune.azure_application_id #=> String
    #   resp.connector.mobile_device_management.intune.domain #=> String
    #   resp.connector.open_id_configuration.issuer #=> String
    #   resp.connector.open_id_configuration.subject #=> String
    #   resp.connector.open_id_configuration.audience #=> String
    #   resp.connector.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.connector.status_reason #=> String, one of "INTERNAL_FAILURE", "PRIVATECA_ACCESS_DENIED", "PRIVATECA_INVALID_STATE", "PRIVATECA_RESOURCE_NOT_FOUND"
    #   resp.connector.endpoint #=> String
    #   resp.connector.created_at #=> Time
    #   resp.connector.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/GetConnector AWS API Documentation
    #
    # @overload get_connector(params = {})
    # @param [Hash] params ({})
    def get_connector(params = {}, options = {})
      req = build_request(:get_connector, params)
      req.send_request(options)
    end

    # Retrieves the challenge metadata for the specified ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Connector for SCEP to
    #   return for this request. If more objects are available, in the
    #   response, Connector for SCEP provides a `NextToken` value that you can
    #   use in a subsequent call to get the next batch of objects.
    #
    # @option params [String] :next_token
    #   When you request a list of objects with a `MaxResults` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   maximum you requested, Connector for SCEP returns a `NextToken` value
    #   in the response. To retrieve the next batch of objects, use the token
    #   returned from the prior request in your next request.
    #
    # @option params [required, String] :connector_arn
    #   The Amazon Resource Name (ARN) of the connector.
    #
    # @return [Types::ListChallengeMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChallengeMetadataResponse#challenges #challenges} => Array&lt;Types::ChallengeMetadataSummary&gt;
    #   * {Types::ListChallengeMetadataResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_challenge_metadata({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     connector_arn: "ConnectorArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.challenges #=> Array
    #   resp.challenges[0].arn #=> String
    #   resp.challenges[0].connector_arn #=> String
    #   resp.challenges[0].created_at #=> Time
    #   resp.challenges[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ListChallengeMetadata AWS API Documentation
    #
    # @overload list_challenge_metadata(params = {})
    # @param [Hash] params ({})
    def list_challenge_metadata(params = {}, options = {})
      req = build_request(:list_challenge_metadata, params)
      req.send_request(options)
    end

    # Lists the connectors belonging to your Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Connector for SCEP to
    #   return for this request. If more objects are available, in the
    #   response, Connector for SCEP provides a `NextToken` value that you can
    #   use in a subsequent call to get the next batch of objects.
    #
    # @option params [String] :next_token
    #   When you request a list of objects with a `MaxResults` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   maximum you requested, Connector for SCEP returns a `NextToken` value
    #   in the response. To retrieve the next batch of objects, use the token
    #   returned from the prior request in your next request.
    #
    # @return [Types::ListConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectorsResponse#connectors #connectors} => Array&lt;Types::ConnectorSummary&gt;
    #   * {Types::ListConnectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connectors({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connectors #=> Array
    #   resp.connectors[0].arn #=> String
    #   resp.connectors[0].certificate_authority_arn #=> String
    #   resp.connectors[0].type #=> String, one of "GENERAL_PURPOSE", "INTUNE"
    #   resp.connectors[0].mobile_device_management.intune.azure_application_id #=> String
    #   resp.connectors[0].mobile_device_management.intune.domain #=> String
    #   resp.connectors[0].open_id_configuration.issuer #=> String
    #   resp.connectors[0].open_id_configuration.subject #=> String
    #   resp.connectors[0].open_id_configuration.audience #=> String
    #   resp.connectors[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.connectors[0].status_reason #=> String, one of "INTERNAL_FAILURE", "PRIVATECA_ACCESS_DENIED", "PRIVATECA_INVALID_STATE", "PRIVATECA_RESOURCE_NOT_FOUND"
    #   resp.connectors[0].endpoint #=> String
    #   resp.connectors[0].created_at #=> Time
    #   resp.connectors[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ListConnectors AWS API Documentation
    #
    # @overload list_connectors(params = {})
    # @param [Hash] params ({})
    def list_connectors(params = {}, options = {})
      req = build_request(:list_connectors, params)
      req.send_request(options)
    end

    # Retrieves the tags associated with the specified resource. Tags are
    # key-value pairs that you can use to categorize and manage your
    # resources, for purposes like billing. For example, you might set the
    # tag key to "customer" and the value to the customer name or ID. You
    # can specify one or more tags to add to each Amazon Web Services
    # resource, up to 50 tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds one or more tags to your resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The key-value pairs to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from your resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Specifies a list of tag keys that you want to remove from the
    #   specified resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PcaConnectorScep')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-pcaconnectorscep'
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
