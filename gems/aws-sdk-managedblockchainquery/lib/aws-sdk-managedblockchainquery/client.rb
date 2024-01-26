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
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:managedblockchainquery)

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
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::ManagedBlockchainQuery::Plugins::Endpoints)

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
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
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
    #   @option options [Aws::ManagedBlockchainQuery::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ManagedBlockchainQuery::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
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
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
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

    # Gets the token balance for a batch of tokens by using the
    # `BatchGetTokenBalance` action for every token in the request.
    #
    # <note markdown="1"> Only the native tokens BTC,ETH, and the ERC-20, ERC-721, and ERC 1155
    # token standards are supported.
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
    # <note markdown="1"> Only the native tokens BTC,ETH, and the ERC-20, ERC-721, and ERC 1155
    # token standards are supported.
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

    # Get the details of a transaction.
    #
    # @option params [required, String] :transaction_hash
    #   The hash of the transaction. It is generated whenever a transaction is
    #   verified and added to the blockchain.
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
    #     transaction_hash: "QueryTransactionHash", # required
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
    #   resp.transaction.status #=> String, one of "FINAL", "FAILED"
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
    #   resp.transaction.confirmation_status #=> String, one of "FINAL"
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

    # An array of `TransactionEvent` objects. Each object contains details
    # about the transaction event.
    #
    # @option params [required, String] :transaction_hash
    #   The hash of the transaction. It is generated whenever a transaction is
    #   verified and added to the blockchain.
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
    #     transaction_hash: "QueryTransactionHash", # required
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

    # Lists all of the transactions on a given wallet address or to a
    # specific contract.
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
    #   Sorts items in an ascending order if the first page starts at
    #   `fromTime`. Sorts items in a descending order if the first page starts
    #   at `toTime`.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of transactions to list.
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
    #   })
    #
    # @example Response structure
    #
    #   resp.transactions #=> Array
    #   resp.transactions[0].transaction_hash #=> String
    #   resp.transactions[0].network #=> String, one of "ETHEREUM_MAINNET", "ETHEREUM_SEPOLIA_TESTNET", "BITCOIN_MAINNET", "BITCOIN_TESTNET"
    #   resp.transactions[0].transaction_timestamp #=> Time
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
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-managedblockchainquery'
      context[:gem_version] = '1.7.0'
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
