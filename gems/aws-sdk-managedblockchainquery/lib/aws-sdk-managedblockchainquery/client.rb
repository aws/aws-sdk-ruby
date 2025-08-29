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

module Aws::ManagedBlockchainQuery
  # An API client for ManagedBlockchainQuery.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ManagedBlockchainQuery::Client.new(
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

    @identifier = :managedblockchainquery

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
    add_plugin(Aws::ManagedBlockchainQuery::Plugins::Endpoints)

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
    #   @option options [Aws::ManagedBlockchainQuery::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ManagedBlockchainQuery::EndpointParameters`.
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

    # Gets the token balance for a batch of tokens by using the
    # `BatchGetTokenBalance` action for every token in the request.
    #
    # <note markdown="1"> Only the native tokens BTC and ETH, and the ERC-20, ERC-721, and ERC
    # 1155 token standards are supported.
    #
    #  </note>
    #
    # @option params [Array<Types::BatchGetTokenBalanceInputItem>] :get_token_balance_inputs
    #   An array of `BatchGetTokenBalanceInputItem` objects whose balance is
    #   being requested.
    #
    # @return [Types::BatchGetTokenBalanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetTokenBalanceOutput#token_balances #token_balances} => Array&lt;Types::BatchGetTokenBalanceOutputItem&gt;
    #   * {Types::BatchGetTokenBalanceOutput#errors #errors} => Array&lt;Types::BatchGetTokenBalanceErrorItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_token_balance({
    #     get_token_balance_inputs: [
    #       {
    #         token_identifier: { # required
    #           network: "ETHEREUM_MAINNET", # required, accepts ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET
    #           contract_address: "ChainAddress",
    #           token_id: "QueryTokenId",
    #         },
    #         owner_identifier: { # required
    #           address: "ChainAddress", # required
    #         },
    #         at_blockchain_instant: {
    #           time: Time.now,
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.token_balances #=> Array
    #   resp.token_balances[0].owner_identifier.address #=> String
    #   resp.token_balances[0].token_identifier.network #=> String, one of "ETHEREUM_MAINNET", "ETHEREUM_SEPOLIA_TESTNET", "BITCOIN_MAINNET", "BITCOIN_TESTNET"
    #   resp.token_balances[0].token_identifier.contract_address #=> String
    #   resp.token_balances[0].token_identifier.token_id #=> String
    #   resp.token_balances[0].balance #=> String
    #   resp.token_balances[0].at_blockchain_instant.time #=> Time
    #   resp.token_balances[0].last_updated_time.time #=> Time
    #   resp.errors #=> Array
    #   resp.errors[0].token_identifier.network #=> String, one of "ETHEREUM_MAINNET", "ETHEREUM_SEPOLIA_TESTNET", "BITCOIN_MAINNET", "BITCOIN_TESTNET"
    #   resp.errors[0].token_identifier.contract_address #=> String
    #   resp.errors[0].token_identifier.token_id #=> String
    #   resp.errors[0].owner_identifier.address #=> String
    #   resp.errors[0].at_blockchain_instant.time #=> Time
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].error_type #=> String, one of "VALIDATION_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/BatchGetTokenBalance AWS API Documentation
    #
    # @overload batch_get_token_balance(params = {})
    # @param [Hash] params ({})
    def batch_get_token_balance(params = {}, options = {})
      req = build_request(:batch_get_token_balance, params)
      req.send_request(options)
    end

    # Gets the information about a specific contract deployed on the
    # blockchain.
    #
    # <note markdown="1"> * The Bitcoin blockchain networks do not support this operation.
    #
    # * Metadata is currently only available for some `ERC-20` contracts.
    #   Metadata will be available for additional contracts in the future.
    #
    #  </note>
    #
    # @option params [required, Types::ContractIdentifier] :contract_identifier
    #   Contains the blockchain address and network information about the
    #   contract.
    #
    # @return [Types::GetAssetContractOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetContractOutput#contract_identifier #contract_identifier} => Types::ContractIdentifier
    #   * {Types::GetAssetContractOutput#token_standard #token_standard} => String
    #   * {Types::GetAssetContractOutput#deployer_address #deployer_address} => String
    #   * {Types::GetAssetContractOutput#metadata #metadata} => Types::ContractMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_contract({
    #     contract_identifier: { # required
    #       network: "ETHEREUM_MAINNET", # required, accepts ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET
    #       contract_address: "ChainAddress", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.contract_identifier.network #=> String, one of "ETHEREUM_MAINNET", "ETHEREUM_SEPOLIA_TESTNET", "BITCOIN_MAINNET", "BITCOIN_TESTNET"
    #   resp.contract_identifier.contract_address #=> String
    #   resp.token_standard #=> String, one of "ERC20", "ERC721", "ERC1155"
    #   resp.deployer_address #=> String
    #   resp.metadata.name #=> String
    #   resp.metadata.symbol #=> String
    #   resp.metadata.decimals #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/GetAssetContract AWS API Documentation
    #
    # @overload get_asset_contract(params = {})
    # @param [Hash] params ({})
    def get_asset_contract(params = {}, options = {})
      req = build_request(:get_asset_contract, params)
      req.send_request(options)
    end

    # Gets the balance of a specific token, including native tokens, for a
    # given address (wallet or contract) on the blockchain.
    #
    # <note markdown="1"> Only the native tokens BTC and ETH, and the ERC-20, ERC-721, and ERC
    # 1155 token standards are supported.
    #
    #  </note>
    #
    # @option params [required, Types::TokenIdentifier] :token_identifier
    #   The container for the identifier for the token, including the unique
    #   token ID and its blockchain network.
    #
    # @option params [required, Types::OwnerIdentifier] :owner_identifier
    #   The container for the identifier for the owner.
    #
    # @option params [Types::BlockchainInstant] :at_blockchain_instant
    #   The time for when the TokenBalance is requested or the current time if
    #   a time is not provided in the request.
    #
    #   <note markdown="1"> This time will only be recorded up to the second.
    #
    #    </note>
    #
    # @return [Types::GetTokenBalanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTokenBalanceOutput#owner_identifier #owner_identifier} => Types::OwnerIdentifier
    #   * {Types::GetTokenBalanceOutput#token_identifier #token_identifier} => Types::TokenIdentifier
    #   * {Types::GetTokenBalanceOutput#balance #balance} => String
    #   * {Types::GetTokenBalanceOutput#at_blockchain_instant #at_blockchain_instant} => Types::BlockchainInstant
    #   * {Types::GetTokenBalanceOutput#last_updated_time #last_updated_time} => Types::BlockchainInstant
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_token_balance({
    #     token_identifier: { # required
    #       network: "ETHEREUM_MAINNET", # required, accepts ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET
    #       contract_address: "ChainAddress",
    #       token_id: "QueryTokenId",
    #     },
    #     owner_identifier: { # required
    #       address: "ChainAddress", # required
    #     },
    #     at_blockchain_instant: {
    #       time: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_identifier.address #=> String
    #   resp.token_identifier.network #=> String, one of "ETHEREUM_MAINNET", "ETHEREUM_SEPOLIA_TESTNET", "BITCOIN_MAINNET", "BITCOIN_TESTNET"
    #   resp.token_identifier.contract_address #=> String
    #   resp.token_identifier.token_id #=> String
    #   resp.balance #=> String
    #   resp.at_blockchain_instant.time #=> Time
    #   resp.last_updated_time.time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/GetTokenBalance AWS API Documentation
    #
    # @overload get_token_balance(params = {})
    # @param [Hash] params ({})
    def get_token_balance(params = {}, options = {})
      req = build_request(:get_token_balance, params)
      req.send_request(options)
    end

    # Gets the details of a transaction.
    #
    # <note markdown="1"> This action will return transaction details for all transactions that
    # are *confirmed* on the blockchain, even if they have not reached
    # [finality][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality
    #
    # @option params [String] :transaction_hash
    #   The hash of a transaction. It is generated when a transaction is
    #   created.
    #
    # @option params [String] :transaction_id
    #   The identifier of a Bitcoin transaction. It is generated when a
    #   transaction is created.
    #
    #   <note markdown="1"> `transactionId` is only supported on the Bitcoin networks.
    #
    #    </note>
    #
    # @option params [required, String] :network
    #   The blockchain network where the transaction occurred.
    #
    # @return [Types::GetTransactionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTransactionOutput#transaction #transaction} => Types::Transaction
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transaction({
    #     transaction_hash: "QueryTransactionHash",
    #     transaction_id: "QueryTransactionId",
    #     network: "ETHEREUM_MAINNET", # required, accepts ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET
    #   })
    #
    # @example Response structure
    #
    #   resp.transaction.network #=> String, one of "ETHEREUM_MAINNET", "ETHEREUM_SEPOLIA_TESTNET", "BITCOIN_MAINNET", "BITCOIN_TESTNET"
    #   resp.transaction.block_hash #=> String
    #   resp.transaction.transaction_hash #=> String
    #   resp.transaction.block_number #=> String
    #   resp.transaction.transaction_timestamp #=> Time
    #   resp.transaction.transaction_index #=> Integer
    #   resp.transaction.number_of_transactions #=> Integer
    #   resp.transaction.to #=> String
    #   resp.transaction.from #=> String
    #   resp.transaction.contract_address #=> String
    #   resp.transaction.gas_used #=> String
    #   resp.transaction.cumulative_gas_used #=> String
    #   resp.transaction.effective_gas_price #=> String
    #   resp.transaction.signature_v #=> Integer
    #   resp.transaction.signature_r #=> String
    #   resp.transaction.signature_s #=> String
    #   resp.transaction.transaction_fee #=> String
    #   resp.transaction.transaction_id #=> String
    #   resp.transaction.confirmation_status #=> String, one of "FINAL", "NONFINAL"
    #   resp.transaction.execution_status #=> String, one of "FAILED", "SUCCEEDED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/GetTransaction AWS API Documentation
    #
    # @overload get_transaction(params = {})
    # @param [Hash] params ({})
    def get_transaction(params = {}, options = {})
      req = build_request(:get_transaction, params)
      req.send_request(options)
    end

    # Lists all the contracts for a given contract type deployed by an
    # address (either a contract address or a wallet address).
    #
    # The Bitcoin blockchain networks do not support this operation.
    #
    # @option params [required, Types::ContractFilter] :contract_filter
    #   Contains the filter parameter for the request.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of contracts to list.
    #
    #   Default: `100`
    #
    #   <note markdown="1"> Even if additional results can be retrieved, the request can return
    #   less results than `maxResults` or an empty array of results.
    #
    #    To retrieve the next set of results, make another request with the
    #   returned `nextToken` value. The value of `nextToken` is `null` when
    #   there are no more results to return
    #
    #    </note>
    #
    # @return [Types::ListAssetContractsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetContractsOutput#contracts #contracts} => Array&lt;Types::AssetContract&gt;
    #   * {Types::ListAssetContractsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_contracts({
    #     contract_filter: { # required
    #       network: "ETHEREUM_MAINNET", # required, accepts ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET
    #       token_standard: "ERC20", # required, accepts ERC20, ERC721, ERC1155
    #       deployer_address: "ChainAddress", # required
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.contracts #=> Array
    #   resp.contracts[0].contract_identifier.network #=> String, one of "ETHEREUM_MAINNET", "ETHEREUM_SEPOLIA_TESTNET", "BITCOIN_MAINNET", "BITCOIN_TESTNET"
    #   resp.contracts[0].contract_identifier.contract_address #=> String
    #   resp.contracts[0].token_standard #=> String, one of "ERC20", "ERC721", "ERC1155"
    #   resp.contracts[0].deployer_address #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListAssetContracts AWS API Documentation
    #
    # @overload list_asset_contracts(params = {})
    # @param [Hash] params ({})
    def list_asset_contracts(params = {}, options = {})
      req = build_request(:list_asset_contracts, params)
      req.send_request(options)
    end

    # Lists all the transaction events for an address on the blockchain.
    #
    # <note markdown="1"> This operation is only supported on the Bitcoin networks.
    #
    #  </note>
    #
    # @option params [required, String] :network
    #   The blockchain network where the transaction occurred.
    #
    #   Valid Values: `BITCOIN_MAINNET` \| `BITCOIN_TESTNET`
    #
    # @option params [required, Types::AddressIdentifierFilter] :address_identifier_filter
    #   This is the unique public address on the blockchain for which the
    #   transaction events are being requested.
    #
    # @option params [Types::TimeFilter] :time_filter
    #   This container specifies the time frame for the transaction events
    #   returned in the response.
    #
    # @option params [Types::VoutFilter] :vout_filter
    #   This container specifies filtering attributes related to BITCOIN\_VOUT
    #   event types
    #
    # @option params [Types::ConfirmationStatusFilter] :confirmation_status_filter
    #   The container for the `ConfirmationStatusFilter` that filters for the
    #   [ *finality* ][1] of the results.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality
    #
    # @option params [Types::ListFilteredTransactionEventsSort] :sort
    #   The order by which the results will be sorted.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of transaction events to list.
    #
    #   Default: `100`
    #
    #   <note markdown="1"> Even if additional results can be retrieved, the request can return
    #   less results than `maxResults` or an empty array of results.
    #
    #    To retrieve the next set of results, make another request with the
    #   returned `nextToken` value. The value of `nextToken` is `null` when
    #   there are no more results to return
    #
    #    </note>
    #
    # @return [Types::ListFilteredTransactionEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFilteredTransactionEventsOutput#events #events} => Array&lt;Types::TransactionEvent&gt;
    #   * {Types::ListFilteredTransactionEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_filtered_transaction_events({
    #     network: "String", # required
    #     address_identifier_filter: { # required
    #       transaction_event_to_address: ["ChainAddress"], # required
    #     },
    #     time_filter: {
    #       from: {
    #         time: Time.now,
    #       },
    #       to: {
    #         time: Time.now,
    #       },
    #     },
    #     vout_filter: {
    #       vout_spent: false, # required
    #     },
    #     confirmation_status_filter: {
    #       include: ["FINAL"], # required, accepts FINAL, NONFINAL
    #     },
    #     sort: {
    #       sort_by: "blockchainInstant", # accepts blockchainInstant
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].network #=> String, one of "ETHEREUM_MAINNET", "ETHEREUM_SEPOLIA_TESTNET", "BITCOIN_MAINNET", "BITCOIN_TESTNET"
    #   resp.events[0].transaction_hash #=> String
    #   resp.events[0].event_type #=> String, one of "ERC20_TRANSFER", "ERC20_MINT", "ERC20_BURN", "ERC20_DEPOSIT", "ERC20_WITHDRAWAL", "ERC721_TRANSFER", "ERC1155_TRANSFER", "BITCOIN_VIN", "BITCOIN_VOUT", "INTERNAL_ETH_TRANSFER", "ETH_TRANSFER"
    #   resp.events[0].from #=> String
    #   resp.events[0].to #=> String
    #   resp.events[0].value #=> String
    #   resp.events[0].contract_address #=> String
    #   resp.events[0].token_id #=> String
    #   resp.events[0].transaction_id #=> String
    #   resp.events[0].vout_index #=> Integer
    #   resp.events[0].vout_spent #=> Boolean
    #   resp.events[0].spent_vout_transaction_id #=> String
    #   resp.events[0].spent_vout_transaction_hash #=> String
    #   resp.events[0].spent_vout_index #=> Integer
    #   resp.events[0].blockchain_instant.time #=> Time
    #   resp.events[0].confirmation_status #=> String, one of "FINAL", "NONFINAL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListFilteredTransactionEvents AWS API Documentation
    #
    # @overload list_filtered_transaction_events(params = {})
    # @param [Hash] params ({})
    def list_filtered_transaction_events(params = {}, options = {})
      req = build_request(:list_filtered_transaction_events, params)
      req.send_request(options)
    end

    # This action returns the following for a given blockchain network:
    #
    # * Lists all token balances owned by an address (either a contract
    #   address or a wallet address).
    #
    # * Lists all token balances for all tokens created by a contract.
    #
    # * Lists all token balances for a given token.
    #
    # <note markdown="1"> You must always specify the network property of the `tokenFilter` when
    # using this operation.
    #
    #  </note>
    #
    # @option params [Types::OwnerFilter] :owner_filter
    #   The contract or wallet address on the blockchain network by which to
    #   filter the request. You must specify the `address` property of the
    #   `ownerFilter` when listing balances of tokens owned by the address.
    #
    # @option params [required, Types::TokenFilter] :token_filter
    #   The contract address or a token identifier on the blockchain network
    #   by which to filter the request. You must specify the `contractAddress`
    #   property of this container when listing tokens minted by a contract.
    #
    #   <note markdown="1"> You must always specify the network property of this container when
    #   using this operation.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of token balances to return.
    #
    #   Default: `100`
    #
    #   <note markdown="1"> Even if additional results can be retrieved, the request can return
    #   less results than `maxResults` or an empty array of results.
    #
    #    To retrieve the next set of results, make another request with the
    #   returned `nextToken` value. The value of `nextToken` is `null` when
    #   there are no more results to return
    #
    #    </note>
    #
    # @return [Types::ListTokenBalancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTokenBalancesOutput#token_balances #token_balances} => Array&lt;Types::TokenBalance&gt;
    #   * {Types::ListTokenBalancesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_token_balances({
    #     owner_filter: {
    #       address: "ChainAddress", # required
    #     },
    #     token_filter: { # required
    #       network: "ETHEREUM_MAINNET", # required, accepts ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET
    #       contract_address: "ChainAddress",
    #       token_id: "QueryTokenId",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.token_balances #=> Array
    #   resp.token_balances[0].owner_identifier.address #=> String
    #   resp.token_balances[0].token_identifier.network #=> String, one of "ETHEREUM_MAINNET", "ETHEREUM_SEPOLIA_TESTNET", "BITCOIN_MAINNET", "BITCOIN_TESTNET"
    #   resp.token_balances[0].token_identifier.contract_address #=> String
    #   resp.token_balances[0].token_identifier.token_id #=> String
    #   resp.token_balances[0].balance #=> String
    #   resp.token_balances[0].at_blockchain_instant.time #=> Time
    #   resp.token_balances[0].last_updated_time.time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListTokenBalances AWS API Documentation
    #
    # @overload list_token_balances(params = {})
    # @param [Hash] params ({})
    def list_token_balances(params = {}, options = {})
      req = build_request(:list_token_balances, params)
      req.send_request(options)
    end

    # Lists all the transaction events for a transaction
    #
    # <note markdown="1"> This action will return transaction details for all transactions that
    # are *confirmed* on the blockchain, even if they have not reached
    # [finality][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality
    #
    # @option params [String] :transaction_hash
    #   The hash of a transaction. It is generated when a transaction is
    #   created.
    #
    # @option params [String] :transaction_id
    #   The identifier of a Bitcoin transaction. It is generated when a
    #   transaction is created.
    #
    #   <note markdown="1"> `transactionId` is only supported on the Bitcoin networks.
    #
    #    </note>
    #
    # @option params [required, String] :network
    #   The blockchain network where the transaction events occurred.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of transaction events to list.
    #
    #   Default: `100`
    #
    #   <note markdown="1"> Even if additional results can be retrieved, the request can return
    #   less results than `maxResults` or an empty array of results.
    #
    #    To retrieve the next set of results, make another request with the
    #   returned `nextToken` value. The value of `nextToken` is `null` when
    #   there are no more results to return
    #
    #    </note>
    #
    # @return [Types::ListTransactionEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTransactionEventsOutput#events #events} => Array&lt;Types::TransactionEvent&gt;
    #   * {Types::ListTransactionEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_transaction_events({
    #     transaction_hash: "QueryTransactionHash",
    #     transaction_id: "QueryTransactionId",
    #     network: "ETHEREUM_MAINNET", # required, accepts ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].network #=> String, one of "ETHEREUM_MAINNET", "ETHEREUM_SEPOLIA_TESTNET", "BITCOIN_MAINNET", "BITCOIN_TESTNET"
    #   resp.events[0].transaction_hash #=> String
    #   resp.events[0].event_type #=> String, one of "ERC20_TRANSFER", "ERC20_MINT", "ERC20_BURN", "ERC20_DEPOSIT", "ERC20_WITHDRAWAL", "ERC721_TRANSFER", "ERC1155_TRANSFER", "BITCOIN_VIN", "BITCOIN_VOUT", "INTERNAL_ETH_TRANSFER", "ETH_TRANSFER"
    #   resp.events[0].from #=> String
    #   resp.events[0].to #=> String
    #   resp.events[0].value #=> String
    #   resp.events[0].contract_address #=> String
    #   resp.events[0].token_id #=> String
    #   resp.events[0].transaction_id #=> String
    #   resp.events[0].vout_index #=> Integer
    #   resp.events[0].vout_spent #=> Boolean
    #   resp.events[0].spent_vout_transaction_id #=> String
    #   resp.events[0].spent_vout_transaction_hash #=> String
    #   resp.events[0].spent_vout_index #=> Integer
    #   resp.events[0].blockchain_instant.time #=> Time
    #   resp.events[0].confirmation_status #=> String, one of "FINAL", "NONFINAL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListTransactionEvents AWS API Documentation
    #
    # @overload list_transaction_events(params = {})
    # @param [Hash] params ({})
    def list_transaction_events(params = {}, options = {})
      req = build_request(:list_transaction_events, params)
      req.send_request(options)
    end

    # Lists all the transaction events for a transaction.
    #
    # @option params [required, String] :address
    #   The address (either a contract or wallet), whose transactions are
    #   being requested.
    #
    # @option params [required, String] :network
    #   The blockchain network where the transactions occurred.
    #
    # @option params [Types::BlockchainInstant] :from_blockchain_instant
    #   The container for time.
    #
    # @option params [Types::BlockchainInstant] :to_blockchain_instant
    #   The container for time.
    #
    # @option params [Types::ListTransactionsSort] :sort
    #   The order by which the results will be sorted.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of transactions to list.
    #
    #   Default: `100`
    #
    #   <note markdown="1"> Even if additional results can be retrieved, the request can return
    #   less results than `maxResults` or an empty array of results.
    #
    #    To retrieve the next set of results, make another request with the
    #   returned `nextToken` value. The value of `nextToken` is `null` when
    #   there are no more results to return
    #
    #    </note>
    #
    # @option params [Types::ConfirmationStatusFilter] :confirmation_status_filter
    #   This filter is used to include transactions in the response that
    #   haven't reached [ *finality* ][1]. Transactions that have reached
    #   finality are always part of the response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality
    #
    # @return [Types::ListTransactionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTransactionsOutput#transactions #transactions} => Array&lt;Types::TransactionOutputItem&gt;
    #   * {Types::ListTransactionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_transactions({
    #     address: "ChainAddress", # required
    #     network: "ETHEREUM_MAINNET", # required, accepts ETHEREUM_MAINNET, ETHEREUM_SEPOLIA_TESTNET, BITCOIN_MAINNET, BITCOIN_TESTNET
    #     from_blockchain_instant: {
    #       time: Time.now,
    #     },
    #     to_blockchain_instant: {
    #       time: Time.now,
    #     },
    #     sort: {
    #       sort_by: "TRANSACTION_TIMESTAMP", # accepts TRANSACTION_TIMESTAMP
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     confirmation_status_filter: {
    #       include: ["FINAL"], # required, accepts FINAL, NONFINAL
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.transactions #=> Array
    #   resp.transactions[0].transaction_hash #=> String
    #   resp.transactions[0].transaction_id #=> String
    #   resp.transactions[0].network #=> String, one of "ETHEREUM_MAINNET", "ETHEREUM_SEPOLIA_TESTNET", "BITCOIN_MAINNET", "BITCOIN_TESTNET"
    #   resp.transactions[0].transaction_timestamp #=> Time
    #   resp.transactions[0].confirmation_status #=> String, one of "FINAL", "NONFINAL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListTransactions AWS API Documentation
    #
    # @overload list_transactions(params = {})
    # @param [Hash] params ({})
    def list_transactions(params = {}, options = {})
      req = build_request(:list_transactions, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ManagedBlockchainQuery')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-managedblockchainquery'
      context[:gem_version] = '1.34.0'
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
