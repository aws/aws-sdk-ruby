# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::ManagedBlockchainQuery
  # An API client for Aws::ManagedBlockchainQuery.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::TietonChainQueryService

    add_plugin(::Aws::ManagedBlockchainQuery::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ManagedBlockchainQuery::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Gets the token balance for a batch of tokens by using the <code>BatchGetTokenBalance</code> 
    #          action for every token in the request.</p>
    #          <note>
    #             <p>Only the native tokens BTC and ETH, and the ERC-20, 
    #          ERC-721, and ERC 1155 token standards are supported.</p>
    #          </note>
    # @param [Hash, Types::BatchGetTokenBalanceInput] params
    # @option params [Array<Types::BatchGetTokenBalanceInputItem>] :get_token_balance_inputs
    #   <p>An array of <code>BatchGetTokenBalanceInputItem</code> objects whose balance is being requested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     get_token_balance_inputs: [
    #       {
    #         token_identifier: { # required
    #           network: "QueryNetwork", # required
    #           contract_address: "ChainAddress",
    #           token_id: "QueryTokenId"
    #         },
    #         owner_identifier: { # required
    #           address: "ChainAddress", # required
    #         },
    #         at_blockchain_instant: {
    #           time: Time.now
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_token_balance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token_balances: [ # required
    #       {
    #         owner_identifier: {
    #           address: "ChainAddress", # required
    #         },
    #         token_identifier: {
    #           network: "QueryNetwork", # required
    #           contract_address: "ChainAddress",
    #           token_id: "QueryTokenId"
    #         },
    #         balance: "String", # required
    #         at_blockchain_instant: { # required
    #           time: Time.now
    #         },
    #         last_updated_time: {
    #           time: Time.now
    #         }
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         token_identifier: {
    #           network: "QueryNetwork", # required
    #           contract_address: "ChainAddress",
    #           token_id: "QueryTokenId"
    #         },
    #         owner_identifier: {
    #           address: "ChainAddress", # required
    #         },
    #         at_blockchain_instant: {
    #           time: Time.now
    #         },
    #         error_code: "String", # required
    #         error_message: "String", # required
    #         error_type: "ErrorType", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetTokenBalanceOutput]
    def batch_get_token_balance(params = {}, options = {})
      request = build_request(:batch_get_token_balance, params)
      request.send_request(options)
    end

    # <p>Gets the information about a specific contract deployed on the blockchain.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>The Bitcoin blockchain networks do not support this 
    #              operation.</p>
    #                </li>
    #                <li>
    #                   <p>Metadata is currently only available for some <code>ERC-20</code> contracts. 
    #                 Metadata will be available for additional contracts in the future.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::GetAssetContractInput] params
    # @option params [Types::ContractIdentifier] :contract_identifier
    #   <p>Contains the blockchain address and network information about the contract.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contract_identifier: { # required
    #       network: "QueryNetwork", # required
    #       contract_address: "ChainAddress", # required
    #     }
    #   }
    #   options = {}
    #   response = client.get_asset_contract(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contract_identifier: { # required
    #       network: "QueryNetwork", # required
    #       contract_address: "ChainAddress", # required
    #     },
    #     token_standard: "QueryTokenStandard", # required
    #     deployer_address: "ChainAddress", # required
    #     metadata: {
    #       name: "String",
    #       symbol: "String",
    #       decimals: 1
    #     }
    #   }
    # @return [Types::GetAssetContractOutput]
    def get_asset_contract(params = {}, options = {})
      request = build_request(:get_asset_contract, params)
      request.send_request(options)
    end

    # <p>Gets the balance of a specific token, including native tokens, for a given address (wallet or contract) on the blockchain.</p>
    #          <note>
    #             <p>Only the native tokens BTC and ETH, and the ERC-20, 
    #          ERC-721, and ERC 1155 token standards are supported.</p>
    #          </note>
    # @param [Hash, Types::GetTokenBalanceInput] params
    # @option params [Types::TokenIdentifier] :token_identifier
    #   <p>The container for the identifier for the token, including the unique 
    #            token ID and its blockchain network.</p>
    # @option params [Types::OwnerIdentifier] :owner_identifier
    #   <p>The container for the identifier for the owner.</p>
    # @option params [Types::BlockchainInstant] :at_blockchain_instant
    #   <p>The time for when the TokenBalance is requested or 
    #            the current time if a time is not provided in the request.</p>
    #            <note>
    #               <p>This time will only be recorded up to the second.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     token_identifier: { # required
    #       network: "QueryNetwork", # required
    #       contract_address: "ChainAddress",
    #       token_id: "QueryTokenId"
    #     },
    #     owner_identifier: { # required
    #       address: "ChainAddress", # required
    #     },
    #     at_blockchain_instant: {
    #       time: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.get_token_balance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_identifier: {
    #       address: "ChainAddress", # required
    #     },
    #     token_identifier: {
    #       network: "QueryNetwork", # required
    #       contract_address: "ChainAddress",
    #       token_id: "QueryTokenId"
    #     },
    #     balance: "String", # required
    #     at_blockchain_instant: { # required
    #       time: Time.now
    #     },
    #     last_updated_time: {
    #       time: Time.now
    #     }
    #   }
    # @return [Types::GetTokenBalanceOutput]
    def get_token_balance(params = {}, options = {})
      request = build_request(:get_token_balance, params)
      request.send_request(options)
    end

    # <p>Gets the details of a transaction.</p>
    #          <note>
    #             <p>This action will return transaction details for all transactions 
    #          that are <i>confirmed</i> on the blockchain, even if they have not reached 
    #          <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality">finality</a>.
    #       </p>
    #          </note>
    # @param [Hash, Types::GetTransactionInput] params
    # @option params [String] :transaction_hash
    #   <p>The hash of a transaction. It is generated when a transaction is created.</p>
    # @option params [String] :transaction_id
    #   <p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>
    #            <note>
    #               <p>
    #                  <code>transactionId</code> is only supported on the Bitcoin networks.</p>
    #            </note>
    # @option params [String] :network
    #   <p>The blockchain network where the transaction occurred.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transaction_hash: "QueryTransactionHash",
    #     transaction_id: "QueryTransactionId",
    #     network: "QueryNetwork", # required
    #   }
    #   options = {}
    #   response = client.get_transaction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transaction: { # required
    #       network: "QueryNetwork", # required
    #       block_hash: "BlockHash",
    #       transaction_hash: "QueryTransactionHash", # required
    #       block_number: "String",
    #       transaction_timestamp: Time.now, # required
    #       transaction_index: 1, # required
    #       number_of_transactions: 1, # required
    #       to: "ChainAddress", # required
    #       from: "ChainAddress",
    #       contract_address: "ChainAddress",
    #       gas_used: "String",
    #       cumulative_gas_used: "String",
    #       effective_gas_price: "String",
    #       signature_v: 1,
    #       signature_r: "String",
    #       signature_s: "String",
    #       transaction_fee: "String",
    #       transaction_id: "String",
    #       confirmation_status: "ConfirmationStatus",
    #       execution_status: "ExecutionStatus"
    #     }
    #   }
    # @return [Types::GetTransactionOutput]
    def get_transaction(params = {}, options = {})
      request = build_request(:get_transaction, params)
      request.send_request(options)
    end

    # <p>Lists all the contracts for a given contract type deployed by an address 
    #          (either a contract address or a wallet address).</p>
    #          <p>The Bitcoin blockchain networks do not support this 
    #             operation.</p>
    # @param [Hash, Types::ListAssetContractsInput] params
    # @option params [Types::ContractFilter] :contract_filter
    #   <p>Contains the filter parameter for the request.</p>
    # @option params [String] :next_token
    #   <p> The pagination token that indicates the next set of results to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of contracts to list.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <note>
    #               <p>Even if additional results can be retrieved, the request can return less 
    #          results than <code>maxResults</code> or an empty array of results.</p>
    #               <p>To retrieve the next set of results, make another request with the 
    #            returned <code>nextToken</code> value. The value of <code>nextToken</code> is 
    #            <code>null</code> when there are no more results to return</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     contract_filter: { # required
    #       network: "QueryNetwork", # required
    #       token_standard: "QueryTokenStandard", # required
    #       deployer_address: "ChainAddress", # required
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_asset_contracts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contracts: [ # required
    #       {
    #         contract_identifier: { # required
    #           network: "QueryNetwork", # required
    #           contract_address: "ChainAddress", # required
    #         },
    #         token_standard: "QueryTokenStandard", # required
    #         deployer_address: "ChainAddress", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssetContractsOutput]
    def list_asset_contracts(params = {}, options = {})
      request = build_request(:list_asset_contracts, params)
      request.send_request(options)
    end

    # <p>Lists all the transaction events for an address on the blockchain.</p>
    #          <note>
    #             <p>This operation is only supported on the Bitcoin networks.</p>
    #          </note>
    # @param [Hash, Types::ListFilteredTransactionEventsInput] params
    # @option params [String] :network
    #   <p>The blockchain network where the transaction occurred.</p>
    #            <p>Valid Values: <code>BITCOIN_MAINNET</code> | <code>BITCOIN_TESTNET</code>
    #            </p>
    # @option params [Types::AddressIdentifierFilter] :address_identifier_filter
    #   <p>This is the unique public address on the blockchain for which the transaction events are being requested.</p>
    # @option params [Types::TimeFilter] :time_filter
    #   <p>This container specifies the time frame for the transaction events returned in the response.</p>
    # @option params [Types::VoutFilter] :vout_filter
    #   <p>This container specifies filtering attributes related to BITCOIN_VOUT event types</p>
    # @option params [Types::ConfirmationStatusFilter] :confirmation_status_filter
    #   <p>The container for the <code>ConfirmationStatusFilter</code> that filters for the <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality">
    #                  <i>finality</i>
    #               </a> of the results.</p>
    # @option params [Types::ListFilteredTransactionEventsSort] :sort
    #   <p>The order by which the results will be sorted.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of transaction events to list.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <note>
    #               <p>Even if additional results can be retrieved, the request can return less 
    #          results than <code>maxResults</code> or an empty array of results.</p>
    #               <p>To retrieve the next set of results, make another request with the 
    #            returned <code>nextToken</code> value. The value of <code>nextToken</code> is 
    #            <code>null</code> when there are no more results to return</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     network: "String", # required
    #     address_identifier_filter: { # required
    #       transaction_event_to_address: ["ChainAddress"], # required
    #     },
    #     time_filter: {
    #       from: {
    #         time: Time.now
    #       },
    #       to: {
    #         time: Time.now
    #       }
    #     },
    #     vout_filter: {
    #       vout_spent: false, # required
    #     },
    #     confirmation_status_filter: {
    #       include: ["ConfirmationStatus"], # required
    #     },
    #     sort: {
    #       sort_by: "ListFilteredTransactionEventsSortBy",
    #       sort_order: "SortOrder"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_filtered_transaction_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         network: "QueryNetwork", # required
    #         transaction_hash: "QueryTransactionHash", # required
    #         event_type: "QueryTransactionEventType", # required
    #         from: "ChainAddress",
    #         to: "ChainAddress",
    #         value: "String",
    #         contract_address: "ChainAddress",
    #         token_id: "QueryTokenId",
    #         transaction_id: "String",
    #         vout_index: 1,
    #         vout_spent: false,
    #         spent_vout_transaction_id: "String",
    #         spent_vout_transaction_hash: "String",
    #         spent_vout_index: 1,
    #         blockchain_instant: {
    #           time: Time.now
    #         },
    #         confirmation_status: "ConfirmationStatus"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFilteredTransactionEventsOutput]
    def list_filtered_transaction_events(params = {}, options = {})
      request = build_request(:list_filtered_transaction_events, params)
      request.send_request(options)
    end

    # <p>This action returns the following for a given blockchain network:</p>
    #          <ul>
    #             <li>
    #                <p>Lists all token balances owned by an address (either a contract 
    #           address or a wallet address).</p>
    #             </li>
    #             <li>
    #                <p>Lists all token balances for all tokens created by a contract.</p>
    #             </li>
    #             <li>
    #                <p>Lists all token balances for a given token.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>You must always specify the network property of 
    #                               the <code>tokenFilter</code> when using this operation.</p>
    #          </note>
    # @param [Hash, Types::ListTokenBalancesInput] params
    # @option params [Types::OwnerFilter] :owner_filter
    #   <p>The contract or wallet address on the blockchain network by which to filter the 
    #            request. You must specify the <code>address</code> property of the <code>ownerFilter</code> 
    #            when listing balances of tokens owned by the address.</p>
    # @option params [Types::TokenFilter] :token_filter
    #   <p>The contract address or a token identifier on the 
    #           blockchain network by which to filter the request. You must specify the <code>contractAddress</code> 
    #           property of this container when listing tokens minted by a contract.</p>
    #            <note>
    #               <p>You must always specify the network property of this 
    #                              container when using this operation.</p>
    #            </note>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of token balances to return.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <note>
    #               <p>Even if additional results can be retrieved, the request can return less 
    #          results than <code>maxResults</code> or an empty array of results.</p>
    #               <p>To retrieve the next set of results, make another request with the 
    #            returned <code>nextToken</code> value. The value of <code>nextToken</code> is 
    #            <code>null</code> when there are no more results to return</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     owner_filter: {
    #       address: "ChainAddress", # required
    #     },
    #     token_filter: { # required
    #       network: "QueryNetwork", # required
    #       contract_address: "ChainAddress",
    #       token_id: "QueryTokenId"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_token_balances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token_balances: [ # required
    #       {
    #         owner_identifier: {
    #           address: "ChainAddress", # required
    #         },
    #         token_identifier: {
    #           network: "QueryNetwork", # required
    #           contract_address: "ChainAddress",
    #           token_id: "QueryTokenId"
    #         },
    #         balance: "String", # required
    #         at_blockchain_instant: { # required
    #           time: Time.now
    #         },
    #         last_updated_time: {
    #           time: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTokenBalancesOutput]
    def list_token_balances(params = {}, options = {})
      request = build_request(:list_token_balances, params)
      request.send_request(options)
    end

    # <p>Lists all the transaction events for a transaction </p>
    #          <note>
    #             <p>This action will return transaction details for all transactions 
    #          that are <i>confirmed</i> on the blockchain, even if they have not reached 
    #          <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality">finality</a>.
    #       </p>
    #          </note>
    # @param [Hash, Types::ListTransactionEventsInput] params
    # @option params [String] :transaction_hash
    #   <p>The hash of a transaction. It is generated when a transaction is created.</p>
    # @option params [String] :transaction_id
    #   <p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>
    #            <note>
    #               <p>
    #                  <code>transactionId</code> is only supported on the Bitcoin networks.</p>
    #            </note>
    # @option params [String] :network
    #   <p>The blockchain network where the transaction events occurred.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of transaction events to list.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <note>
    #               <p>Even if additional results can be retrieved, the request can return less 
    #          results than <code>maxResults</code> or an empty array of results.</p>
    #               <p>To retrieve the next set of results, make another request with the 
    #            returned <code>nextToken</code> value. The value of <code>nextToken</code> is 
    #            <code>null</code> when there are no more results to return</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     transaction_hash: "QueryTransactionHash",
    #     transaction_id: "QueryTransactionId",
    #     network: "QueryNetwork", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_transaction_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         network: "QueryNetwork", # required
    #         transaction_hash: "QueryTransactionHash", # required
    #         event_type: "QueryTransactionEventType", # required
    #         from: "ChainAddress",
    #         to: "ChainAddress",
    #         value: "String",
    #         contract_address: "ChainAddress",
    #         token_id: "QueryTokenId",
    #         transaction_id: "String",
    #         vout_index: 1,
    #         vout_spent: false,
    #         spent_vout_transaction_id: "String",
    #         spent_vout_transaction_hash: "String",
    #         spent_vout_index: 1,
    #         blockchain_instant: {
    #           time: Time.now
    #         },
    #         confirmation_status: "ConfirmationStatus"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTransactionEventsOutput]
    def list_transaction_events(params = {}, options = {})
      request = build_request(:list_transaction_events, params)
      request.send_request(options)
    end

    # <p>Lists all the transaction events for a transaction.</p>
    # @param [Hash, Types::ListTransactionsInput] params
    # @option params [String] :address
    #   <p>The address (either a contract or wallet), whose transactions are being requested.</p>
    # @option params [String] :network
    #   <p>The blockchain network where the transactions occurred.</p>
    # @option params [Types::BlockchainInstant] :from_blockchain_instant
    #   <p>The container for time.</p>
    # @option params [Types::BlockchainInstant] :to_blockchain_instant
    #   <p>The container for time.</p>
    # @option params [Types::ListTransactionsSort] :sort
    #   <p>The order by which the results will be sorted. </p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of transactions to list.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <note>
    #               <p>Even if additional results can be retrieved, the request can return less 
    #          results than <code>maxResults</code> or an empty array of results.</p>
    #               <p>To retrieve the next set of results, make another request with the 
    #            returned <code>nextToken</code> value. The value of <code>nextToken</code> is 
    #            <code>null</code> when there are no more results to return</p>
    #            </note>
    # @option params [Types::ConfirmationStatusFilter] :confirmation_status_filter
    #   <p>This filter is used to include transactions in the response that haven't reached <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality">
    #                  <i>finality</i>
    #               </a>. Transactions that have reached finality are always 
    #            part of the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     address: "ChainAddress", # required
    #     network: "QueryNetwork", # required
    #     from_blockchain_instant: {
    #       time: Time.now
    #     },
    #     to_blockchain_instant: {
    #       time: Time.now
    #     },
    #     sort: {
    #       sort_by: "ListTransactionsSortBy",
    #       sort_order: "SortOrder"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     confirmation_status_filter: {
    #       include: ["ConfirmationStatus"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.list_transactions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transactions: [ # required
    #       {
    #         transaction_hash: "QueryTransactionHash", # required
    #         transaction_id: "QueryTransactionId",
    #         network: "QueryNetwork", # required
    #         transaction_timestamp: Time.now, # required
    #         confirmation_status: "ConfirmationStatus"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTransactionsOutput]
    def list_transactions(params = {}, options = {})
      request = build_request(:list_transactions, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-managedblockchainquery'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
