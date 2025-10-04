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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::KMS
  # An API client for Aws::KMS.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::TrentService

    add_plugin(::Aws::KMS::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::KMS::EndpointProvider)
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

    # <p>Cancels the deletion of a KMS key. When this operation succeeds, the key state of the KMS
    #       key is <code>Disabled</code>. To enable the KMS key, use <a>EnableKey</a>. </p>
    #          <p>For more information about scheduling and canceling deletion of a KMS key, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting KMS keys</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CancelKeyDeletion</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>ScheduleKeyDeletion</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::CancelKeyDeletionRequest] params
    # @option params [String] :key_id
    #   <p>Identifies the KMS key whose deletion is being canceled.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @example To cancel deletion of a KMS key
    #   # The following example cancels deletion of the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.cancel_key_deletion(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #   }
    #   options = {}
    #   response = client.cancel_key_deletion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType"
    #   }
    # @return [Types::CancelKeyDeletionResponse]
    def cancel_key_deletion(params = {}, options = {})
      request = build_request(:cancel_key_deletion, params)
      request.send_request(options)
    end

    # <p>Connects or reconnects a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a> to its backing key store. For an CloudHSM key
    #       store, <code>ConnectCustomKeyStore</code> connects the key store to its associated CloudHSM
    #       cluster. For an external key store, <code>ConnectCustomKeyStore</code> connects the key store
    #       to the external key store proxy that communicates with your external key manager.</p>
    #          <p>The custom key store must be connected before you can create KMS keys in the key store or
    #       use the KMS keys it contains. You can disconnect and reconnect a custom key store at any
    #       time.</p>
    #          <p>The connection process for a custom key store can take an extended amount of time to
    #       complete. This operation starts the connection process, but it does not wait for it to
    #       complete. When it succeeds, this operation quickly returns an HTTP 200 response and a JSON
    #       object with no properties. However, this response does not indicate that the custom key store
    #       is connected. To get the connection state of the custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #          <p> This operation is part of the custom key stores feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <p>The <code>ConnectCustomKeyStore</code> operation might fail for various reasons. To find
    #       the reason, use the <a>DescribeCustomKeyStores</a> operation and see the
    #         <code>ConnectionErrorCode</code> in the response. For help interpreting the
    #         <code>ConnectionErrorCode</code>, see <a>CustomKeyStoresListEntry</a>.</p>
    #          <p>To fix the failure, use the <a>DisconnectCustomKeyStore</a> operation to
    #       disconnect the custom key store, correct the error, use the <a>UpdateCustomKeyStore</a> operation if necessary, and then use
    #         <code>ConnectCustomKeyStore</code> again.</p>
    #          <p>
    #             <b>CloudHSM key store</b>
    #          </p>
    #          <p>During the connection process for an CloudHSM key store, KMS finds the CloudHSM cluster that
    #       is associated with the custom key store, creates the connection infrastructure, connects to
    #       the cluster, logs into the CloudHSM client as the <code>kmsuser</code> CU, and rotates its
    #       password.</p>
    #          <p>To connect an CloudHSM key store, its associated CloudHSM cluster must have at least one active
    #       HSM. To get the number of active HSMs in a cluster, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a> operation. To add HSMs
    #       to the cluster, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html">CreateHsm</a> operation. Also, the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html#concept-kmsuser">
    #                <code>kmsuser</code> crypto
    #         user</a> (CU) must not be logged into the cluster. This prevents KMS from using this
    #       account to log in.</p>
    #          <p>If you are having trouble connecting or disconnecting a CloudHSM key store, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting an CloudHSM key
    #         store</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>External key store</b>
    #          </p>
    #          <p>When you connect an external key store that uses public endpoint connectivity, KMS tests
    #       its ability to communicate with your external key manager by sending a request via the
    #       external key store proxy.</p>
    #          <p>When you connect to an external key store that uses VPC endpoint service connectivity,
    #       KMS establishes the networking elements that it needs to communicate with your external key
    #       manager via the external key store proxy. This includes creating an interface endpoint to the
    #       VPC endpoint service and a private hosted zone for traffic between KMS and the VPC endpoint
    #       service.</p>
    #          <p>To connect an external key store, KMS must be able to connect to the external key store
    #       proxy, the external key store proxy must be able to communicate with your external key
    #       manager, and the external key manager must be available for cryptographic operations.</p>
    #          <p>If you are having trouble connecting or disconnecting an external key store, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html">Troubleshooting an external
    #         key store</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ConnectCustomKeyStore</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeCustomKeyStores</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisconnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ConnectCustomKeyStoreRequest] params
    # @option params [String] :custom_key_store_id
    #   <p>Enter the key store ID of the custom key store that you want to connect.
    #         To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    # @example To connect a custom key store
    #   # This example connects an AWS KMS custom key store to its backing key store. For an AWS CloudHSM key store, it connects the key store to its AWS CloudHSM cluster. For an external key store, it connects the key store to the external key store proxy that communicates with your external key manager. This operation does not return any data. To verify that the custom key store is connected, use the <code>DescribeCustomKeyStores</code> operation.
    #   params = {
    #     custom_key_store_id: "cks-1234567890abcdef0"
    #   }
    #   options = {}
    #   response = client.connect_custom_key_store(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_key_store_id: "CustomKeyStoreIdType", # required
    #   }
    #   options = {}
    #   response = client.connect_custom_key_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ConnectCustomKeyStoreResponse]
    def connect_custom_key_store(params = {}, options = {})
      request = build_request(:connect_custom_key_store, params)
      request.send_request(options)
    end

    # <p>Creates a friendly name for a KMS key. </p>
    #          <note>
    #             <p>Adding, deleting, or updating an alias can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          </note>
    #          <p>You can use an alias to identify a KMS key in the KMS console, in the <a>DescribeKey</a> operation and in <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-cryptography.html#cryptographic-operations">cryptographic operations</a>, such as <a>Encrypt</a> and
    #         <a>GenerateDataKey</a>. You can also change the KMS key that's associated with
    #       the alias (<a>UpdateAlias</a>) or delete the alias (<a>DeleteAlias</a>)
    #       at any time. These operations don't affect the underlying KMS key. </p>
    #          <p>You can associate the alias with any customer managed key in the same Amazon Web Services Region. Each
    #       alias is associated with only one KMS key at a time, but a KMS key can have multiple aliases.
    #       A valid KMS key is required. You can't create an alias without a KMS key.</p>
    #          <p>The alias must be unique in the account and Region, but you can have aliases with the same
    #       name in different Regions. For detailed information about aliases, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html">Aliases in KMS</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>This operation does not return a response. To get the alias that you created, use the
    #         <a>ListAliases</a> operation.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on an alias in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CreateAlias</a> on
    #           the alias (IAM policy).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CreateAlias</a> on
    #           the KMS key (key policy).</p>
    #             </li>
    #          </ul>
    #          <p>For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/alias-access.html">Controlling access to aliases</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DeleteAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateAlias</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::CreateAliasRequest] params
    # @option params [String] :alias_name
    #   <p>Specifies the alias name. This value must begin with <code>alias/</code> followed by a
    #         name, such as <code>alias/ExampleAlias</code>. </p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>The <code>AliasName</code> value must be string of 1-256 characters. It can contain only
    #         alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). The alias name
    #         cannot begin with <code>alias/aws/</code>. The <code>alias/aws/</code> prefix is reserved for
    #           <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-key">Amazon Web Services managed
    #           keys</a>.</p>
    # @option params [String] :target_key_id
    #   <p>Associates the alias with the specified <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-mgn-key">customer managed key</a>. The KMS key
    #         must be in the same Amazon Web Services Region. </p>
    #            <p>A valid key ID is required. If you supply a null or empty string value, this operation
    #         returns an error.</p>
    #            <p>For help finding the key ID and ARN, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/find-cmk-id-arn.html">Find the key ID and key ARN</a> in
    #         the <i>
    #                  <i>Key Management Service Developer Guide</i>
    #               </i>.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @example To create an alias
    #   # The following example creates an alias for the specified KMS key.
    #   params = {
    #     alias_name: "alias/ExampleAlias",
    #     target_key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.create_alias(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_name: "AliasNameType", # required
    #     target_key_id: "KeyIdType", # required
    #   }
    #   options = {}
    #   response = client.create_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_alias(params = {}, options = {})
      request = build_request(:create_alias, params)
      request.send_request(options)
    end

    # <p>Creates a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a> backed by a key store that you own and manage. When you use a
    #       KMS key in a custom key store for a cryptographic operation, the cryptographic operation is
    #       actually performed in your key store using your keys. KMS supports <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html">CloudHSM key stores</a>
    #       backed by an <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html">CloudHSM cluster</a>
    #       and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html">external key
    #         stores</a> backed by an external key store proxy and external key manager outside of
    #       Amazon Web Services.</p>
    #          <p> This operation is part of the custom key stores feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <p>Before you create the custom key store, the required elements must be in place and
    #       operational. We recommend that you use the test tools that KMS provides to verify the
    #       configuration your external key store proxy. For details about the required elements and
    #       verification tests, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore">Assemble the prerequisites (for
    #         CloudHSM key stores)</a> or <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keystore.html#xks-requirements">Assemble the prerequisites (for
    #         external key stores)</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>To create a custom key store, use the following parameters.</p>
    #          <ul>
    #             <li>
    #                <p>To create an CloudHSM key store, specify the <code>CustomKeyStoreName</code>,
    #             <code>CloudHsmClusterId</code>, <code>KeyStorePassword</code>, and
    #             <code>TrustAnchorCertificate</code>. The <code>CustomKeyStoreType</code> parameter is
    #           optional for CloudHSM key stores. If you include it, set it to the default value,
    #             <code>AWS_CLOUDHSM</code>. For help with failures, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting an CloudHSM key store</a> in the
    #           <i>Key Management Service Developer Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>To create an external key store, specify the <code>CustomKeyStoreName</code> and a
    #             <code>CustomKeyStoreType</code> of <code>EXTERNAL_KEY_STORE</code>. Also, specify values
    #           for <code>XksProxyConnectivity</code>, <code>XksProxyAuthenticationCredential</code>,
    #             <code>XksProxyUriEndpoint</code>, and <code>XksProxyUriPath</code>. If your
    #             <code>XksProxyConnectivity</code> value is <code>VPC_ENDPOINT_SERVICE</code>, specify
    #           the <code>XksProxyVpcEndpointServiceName</code> parameter. For help with failures, see
    #             <a href="https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html">Troubleshooting
    #             an external key store</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>For external key stores:</p>
    #             <p>Some external key managers provide a simpler method for creating an external key store.
    #         For details, see your external key manager documentation.</p>
    #             <p>When creating an external key store in the KMS console, you can upload a JSON-based
    #         proxy configuration file with the desired values. You cannot use a proxy configuration with
    #         the <code>CreateCustomKeyStore</code> operation. However, you can use the values in the file
    #         to help you determine the correct values for the <code>CreateCustomKeyStore</code>
    #         parameters.</p>
    #          </note>
    #          <p>When the operation completes successfully, it returns the ID of the new custom key store.
    #       Before you can use your new custom key store, you need to use the <a>ConnectCustomKeyStore</a> operation to connect a new CloudHSM key store to its CloudHSM
    #       cluster, or to connect a new external key store to the external key store proxy for your
    #       external key manager. Even if you are not going to use your custom key store immediately, you
    #       might want to connect it to verify that all settings are correct and then disconnect it until
    #       you are ready to use it.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CreateCustomKeyStore</a> (IAM policy).</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ConnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeCustomKeyStores</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisconnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::CreateCustomKeyStoreRequest] params
    # @option params [String] :custom_key_store_name
    #   <p>Specifies a friendly name for the custom key store. The name must be unique in your
    #         Amazon Web Services account and Region. This parameter is required for all custom key stores.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    # @option params [String] :cloud_hsm_cluster_id
    #   <p>Identifies the CloudHSM cluster for an CloudHSM key store. This parameter is required for custom
    #         key stores with <code>CustomKeyStoreType</code> of <code>AWS_CLOUDHSM</code>.</p>
    #            <p>Enter the cluster ID of any active CloudHSM cluster that is not already associated with a
    #         custom key store. To find the cluster ID, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a> operation.</p>
    # @option params [String] :trust_anchor_certificate
    #   <p>Specifies the certificate for an CloudHSM key store. This parameter is required for custom
    #         key stores with a <code>CustomKeyStoreType</code> of <code>AWS_CLOUDHSM</code>.</p>
    #            <p>Enter the content of the trust anchor certificate for the CloudHSM cluster. This is the
    #         content of the <code>customerCA.crt</code> file that you created when you <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html">initialized the
    #           cluster</a>.</p>
    # @option params [String] :key_store_password
    #   <p>Specifies the <code>kmsuser</code> password for an CloudHSM key store. This parameter is
    #         required for custom key stores with a <code>CustomKeyStoreType</code> of
    #           <code>AWS_CLOUDHSM</code>.</p>
    #            <p>Enter the password of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html#concept-kmsuser">
    #                  <code>kmsuser</code> crypto user
    #           (CU) account</a> in the specified CloudHSM cluster. KMS logs into the cluster as this
    #         user to manage key material on your behalf.</p>
    #            <p>The password must be a string of 7 to 32 characters. Its value is case sensitive.</p>
    #            <p>This parameter tells KMS the <code>kmsuser</code> account password; it does not change
    #         the password in the CloudHSM cluster.</p>
    # @option params [String] :custom_key_store_type
    #   <p>Specifies the type of custom key store. The default value is
    #         <code>AWS_CLOUDHSM</code>.</p>
    #            <p>For a custom key store backed by an CloudHSM cluster, omit the parameter or enter
    #           <code>AWS_CLOUDHSM</code>. For a custom key store backed by an external key manager outside
    #         of Amazon Web Services, enter <code>EXTERNAL_KEY_STORE</code>. You cannot change this property after the key
    #         store is created.</p>
    # @option params [String] :xks_proxy_uri_endpoint
    #   <p>Specifies the endpoint that KMS uses to send requests to the external key store proxy
    #         (XKS proxy). This parameter is required for custom key stores with a
    #           <code>CustomKeyStoreType</code> of <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>The protocol must be HTTPS. KMS communicates on port 443. Do not specify the port in the
    #           <code>XksProxyUriEndpoint</code> value.</p>
    #            <p>For external key stores with <code>XksProxyConnectivity</code> value of
    #           <code>VPC_ENDPOINT_SERVICE</code>, specify <code>https://</code> followed by the private DNS
    #         name of the VPC endpoint service.</p>
    #            <p>For external key stores with <code>PUBLIC_ENDPOINT</code> connectivity, this endpoint must
    #         be reachable before you create the custom key store. KMS connects to the external key store
    #         proxy while creating the custom key store. For external key stores with
    #           <code>VPC_ENDPOINT_SERVICE</code> connectivity, KMS connects when you call the <a>ConnectCustomKeyStore</a> operation.</p>
    #            <p>The value of this parameter must begin with <code>https://</code>. The remainder can
    #         contain upper and lower case letters (A-Z and a-z), numbers (0-9), dots (<code>.</code>), and
    #         hyphens (<code>-</code>). Additional slashes (<code>/</code> and <code>\</code>) are not
    #         permitted.</p>
    #            <p>
    #               <b>Uniqueness requirements: </b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>The combined <code>XksProxyUriEndpoint</code> and <code>XksProxyUriPath</code> values
    #             must be unique in the Amazon Web Services account and Region.</p>
    #               </li>
    #               <li>
    #                  <p>An external key store with <code>PUBLIC_ENDPOINT</code> connectivity cannot use the
    #             same <code>XksProxyUriEndpoint</code> value as an external key store with
    #               <code>VPC_ENDPOINT_SERVICE</code> connectivity in this Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>Each external key store with <code>VPC_ENDPOINT_SERVICE</code> connectivity must have
    #             its own private DNS name. The <code>XksProxyUriEndpoint</code> value for external key
    #             stores with <code>VPC_ENDPOINT_SERVICE</code> connectivity (private DNS name) must be
    #             unique in the Amazon Web Services account and Region.</p>
    #               </li>
    #            </ul>
    # @option params [String] :xks_proxy_uri_path
    #   <p>Specifies the base path to the proxy APIs for this external key store. To find this value,
    #         see the documentation for your external key store proxy. This parameter is required for all
    #         custom key stores with a <code>CustomKeyStoreType</code> of
    #         <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>The value must start with <code>/</code> and must end with <code>/kms/xks/v1</code> where
    #           <code>v1</code> represents the version of the KMS external key store proxy API. This path
    #         can include an optional prefix between the required elements such as
    #             <code>/<i>prefix</i>/kms/xks/v1</code>.</p>
    #            <p>
    #               <b>Uniqueness requirements: </b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>The combined <code>XksProxyUriEndpoint</code> and <code>XksProxyUriPath</code> values
    #             must be unique in the Amazon Web Services account and Region.</p>
    #               </li>
    #            </ul>
    # @option params [String] :xks_proxy_vpc_endpoint_service_name
    #   <p>Specifies the name of the Amazon VPC endpoint service for interface endpoints that is used to
    #         communicate with your external key store proxy (XKS proxy). This parameter is required when
    #         the value of <code>CustomKeyStoreType</code> is <code>EXTERNAL_KEY_STORE</code> and the value
    #         of <code>XksProxyConnectivity</code> is <code>VPC_ENDPOINT_SERVICE</code>.</p>
    #            <p>The Amazon VPC endpoint service must <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keystore.html#xks-requirements">fulfill all
    #           requirements</a> for use with an external key store. </p>
    #            <p>
    #               <b>Uniqueness requirements:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>External key stores with <code>VPC_ENDPOINT_SERVICE</code> connectivity can share an
    #             Amazon VPC, but each external key store must have its own VPC endpoint service and private DNS
    #             name.</p>
    #               </li>
    #            </ul>
    # @option params [Types::XksProxyAuthenticationCredentialType] :xks_proxy_authentication_credential
    #   <p>Specifies an authentication credential for the external key store proxy (XKS proxy). This
    #         parameter is required for all custom key stores with a <code>CustomKeyStoreType</code> of
    #           <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>The <code>XksProxyAuthenticationCredential</code> has two required elements:
    #           <code>RawSecretAccessKey</code>, a secret key, and <code>AccessKeyId</code>, a unique
    #         identifier for the <code>RawSecretAccessKey</code>. For character requirements, see <a href="API_XksProxyAuthenticationCredentialType.html">XksProxyAuthenticationCredentialType</a>.</p>
    #            <p>KMS uses this authentication credential to sign requests to the external key store proxy
    #         on your behalf. This credential is unrelated to Identity and Access Management (IAM) and Amazon Web Services credentials.</p>
    #            <p>This parameter doesn't set or change the authentication credentials on the XKS proxy. It
    #         just tells KMS the credential that you established on your external key store proxy. If you
    #         rotate your proxy authentication credential, use the <a>UpdateCustomKeyStore</a>
    #         operation to provide the new credential to KMS.</p>
    # @option params [String] :xks_proxy_connectivity
    #   <p>Indicates how KMS communicates with the external key store proxy. This parameter is
    #         required for custom key stores with a <code>CustomKeyStoreType</code> of
    #           <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>If the external key store proxy uses a public endpoint, specify
    #           <code>PUBLIC_ENDPOINT</code>. If the external key store proxy uses a Amazon VPC
    #         endpoint service for communication with KMS, specify <code>VPC_ENDPOINT_SERVICE</code>. For
    #         help making this choice, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/choose-xks-connectivity.html">Choosing a connectivity option</a> in
    #         the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>An Amazon VPC endpoint service keeps your communication with KMS in a private address space
    #         entirely within Amazon Web Services, but it requires more configuration, including establishing a Amazon VPC with multiple subnets, a VPC endpoint service, a network load balancer, and a
    #         verified private DNS name. A public endpoint is simpler to set up, but it might be slower and
    #         might not fulfill your security requirements. You might consider testing with a public
    #         endpoint, and then establishing a VPC endpoint service for production tasks. Note that this
    #         choice does not determine the location of the external key store proxy. Even if you choose a
    #         VPC endpoint service, the proxy can be hosted within the VPC or outside of Amazon Web Services such as in
    #         your corporate data center.</p>
    # @example To create an AWS CloudHSM key store
    #   # This example creates a custom key store that is associated with an AWS CloudHSM cluster.
    #   params = {
    #     custom_key_store_name: "ExampleKeyStore",
    #     cloud_hsm_cluster_id: "cluster-234abcdefABC",
    #     trust_anchor_certificate: "<certificate-goes-here>",
    #     key_store_password: "kmsPswd"
    #   }
    #   options = {}
    #   response = client.create_custom_key_store(params, options)
    #   response.to_h #=>
    #   {
    #     custom_key_store_id: "cks-1234567890abcdef0"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_key_store_name: "CustomKeyStoreNameType", # required
    #     cloud_hsm_cluster_id: "CloudHsmClusterIdType",
    #     trust_anchor_certificate: "TrustAnchorCertificateType",
    #     key_store_password: "KeyStorePasswordType",
    #     custom_key_store_type: "AWS_CLOUDHSM" # One of: ["AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"],
    #     xks_proxy_uri_endpoint: "XksProxyUriEndpointType",
    #     xks_proxy_uri_path: "XksProxyUriPathType",
    #     xks_proxy_vpc_endpoint_service_name: "XksProxyVpcEndpointServiceNameType",
    #     xks_proxy_authentication_credential: {
    #       access_key_id: "XksProxyAuthenticationAccessKeyIdType", # required
    #       raw_secret_access_key: "XksProxyAuthenticationRawSecretAccessKeyType", # required
    #     },
    #     xks_proxy_connectivity: "PUBLIC_ENDPOINT" # One of: ["PUBLIC_ENDPOINT", "VPC_ENDPOINT_SERVICE"]
    #   }
    #   options = {}
    #   response = client.create_custom_key_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_key_store_id: "CustomKeyStoreIdType"
    #   }
    # @return [Types::CreateCustomKeyStoreResponse]
    def create_custom_key_store(params = {}, options = {})
      request = build_request(:create_custom_key_store, params)
      request.send_request(options)
    end

    # <p>Adds a grant to a KMS key. </p>
    #          <p>A <i>grant</i> is a policy instrument that allows Amazon Web Services principals to use
    #       KMS keys in cryptographic operations. It also can allow them to view a KMS key (<a>DescribeKey</a>) and create and manage grants. When authorizing access to a KMS key,
    #       grants are considered along with key policies and IAM policies. Grants are often used for
    #       temporary permissions because you can create one, use its permissions, and delete it without
    #       changing your key policies or IAM policies. </p>
    #          <p>For detailed information about grants, including grant terminology, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants in KMS</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. For examples of creating grants in several
    #       programming languages, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/example_kms_CreateGrant_section.html">Use CreateGrant with an Amazon Web Services SDK or CLI</a>. </p>
    #          <p>The <code>CreateGrant</code> operation returns a <code>GrantToken</code> and a
    #         <code>GrantId</code>.</p>
    #          <ul>
    #             <li>
    #                <p>When you create, retire, or revoke a grant, there might be a brief delay, usually less than five minutes, until the grant is available throughout KMS. This state is known as <i>eventual consistency</i>. Once the grant has achieved eventual consistency, the grantee
    #           principal can use the permissions in the grant without identifying the grant. </p>
    #                <p>However, to use the permissions in the grant immediately, use the
    #             <code>GrantToken</code> that <code>CreateGrant</code> returns. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant
    #             token</a> in the <i>
    #                      <i>Key Management Service Developer Guide</i>
    #                   </i>.</p>
    #             </li>
    #             <li>
    #                <p>The <code>CreateGrant</code> operation also returns a <code>GrantId</code>. You can
    #           use the <code>GrantId</code> and a key identifier to identify the grant in the <a>RetireGrant</a> and <a>RevokeGrant</a> operations. To find the grant
    #           ID, use the <a>ListGrants</a> or <a>ListRetirableGrants</a>
    #           operations.</p>
    #             </li>
    #          </ul>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation on a KMS key in a different Amazon Web Services account, specify the key
    #   ARN in the value of the <code>KeyId</code> parameter. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CreateGrant</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ListGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListRetirableGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RetireGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RevokeGrant</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::CreateGrantRequest] params
    # @option params [String] :key_id
    #   <p>Identifies the KMS key for the grant. The grant gives principals permission to use this
    #         KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key. To specify a KMS key in a
    #   different Amazon Web Services account, you must use the key ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :grantee_principal
    #   <p>The identity that gets the permissions specified in the grant.</p>
    #            <p>To specify the grantee principal, use the Amazon Resource Name (ARN) of an Amazon Web Services
    #         principal. Valid principals include Amazon Web Services accounts, IAM users, IAM roles,
    #         federated users, and assumed role users. For help with the ARN syntax for a principal, see
    #           <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM ARNs</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    # @option params [String] :retiring_principal
    #   <p>The principal that has permission to use the <a>RetireGrant</a> operation to
    #         retire the grant. </p>
    #            <p>To specify the principal, use the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an
    #         Amazon Web Services principal. Valid principals include Amazon Web Services accounts, IAM users, IAM roles,
    #         federated users, and assumed role users. For help with the ARN syntax for a principal, see
    #           <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM ARNs</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    #            <p>The grant determines the retiring principal. Other principals might have permission to
    #         retire the grant or revoke the grant. For details, see <a>RevokeGrant</a> and
    #           <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-delete.html">Retiring and revoking
    #           grants</a> in the <i>Key Management Service Developer Guide</i>. </p>
    # @option params [Array<String>] :operations
    #   <p>A list of operations that the grant permits. </p>
    #            <p>This list must include only operations that are permitted in a grant. Also, the operation
    #         must be supported on the KMS key. For example, you cannot create a grant for a symmetric
    #         encryption KMS key that allows the <a>Sign</a> operation, or a grant for an
    #         asymmetric KMS key that allows the <a>GenerateDataKey</a> operation. If you try,
    #         KMS returns a <code>ValidationError</code> exception. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-grant-operations">Grant
    #           operations</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Types::GrantConstraints] :constraints
    #   <p>Specifies a grant constraint.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>KMS supports the <code>EncryptionContextEquals</code> and
    #           <code>EncryptionContextSubset</code> grant constraints, which allow the permissions in the
    #         grant only when the encryption context in the request matches
    #           (<code>EncryptionContextEquals</code>) or includes (<code>EncryptionContextSubset</code>)
    #         the encryption context specified in the constraint. </p>
    #            <p>The encryption context grant constraints are supported only on <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-grant-operations">grant operations</a> that include
    #         an <code>EncryptionContext</code> parameter, such as cryptographic operations on symmetric
    #         encryption KMS keys. Grants with grant constraints can include the <a>DescribeKey</a> and <a>RetireGrant</a> operations, but the constraint doesn't apply to these
    #         operations. If a grant with a grant constraint includes the <code>CreateGrant</code>
    #         operation, the constraint requires that any grants created with the <code>CreateGrant</code>
    #         permission have an equally strict or stricter encryption context constraint.</p>
    #            <p>You cannot use an encryption context grant constraint for cryptographic operations with
    #         asymmetric KMS keys or HMAC KMS keys. Operations with these keys don't support an encryption
    #         context.</p>
    #            <p>Each constraint value can include up to 8 encryption context pairs. The encryption context
    #         value in each constraint cannot exceed 384 characters. For information about grant
    #         constraints, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-grant-overview.html#grant-constraints">Using grant
    #           constraints</a> in the <i>Key Management Service Developer Guide</i>. For more information about encryption context,
    #         see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption
    #           context</a> in the <i>
    #                  <i>Key Management Service Developer Guide</i>
    #               </i>. </p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens. </p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :name
    #   <p>A friendly name for the grant. Use this value to prevent the unintended creation of
    #         duplicate grants when retrying this request.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>When this value is absent, all <code>CreateGrant</code> requests result in a new grant
    #         with a unique <code>GrantId</code> even if all the supplied parameters are identical. This can
    #         result in unintended duplicates when you retry the <code>CreateGrant</code> request.</p>
    #            <p>When this value is present, you can retry a <code>CreateGrant</code> request with
    #         identical parameters; if the grant already exists, the original <code>GrantId</code> is
    #         returned without creating a new grant. Note that the returned grant token is unique with every
    #           <code>CreateGrant</code> request, even when a duplicate <code>GrantId</code> is returned.
    #         All grant tokens for the same grant ID can be used interchangeably.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To create a grant
    #   # The following example creates a grant that allows the specified IAM role to encrypt data with the specified KMS key.
    #   params = {
    #     key_id: "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     grantee_principal: "arn:aws:iam::111122223333:role/ExampleRole",
    #     operations: [
    #       Encrypt,
    #       Decrypt
    #     ]
    #   }
    #   options = {}
    #   response = client.create_grant(params, options)
    #   response.to_h #=>
    #   {
    #     grant_token: "AQpAM2RhZTk1MGMyNTk2ZmZmMzEyYWVhOWViN2I1MWM4Mzc0MWFiYjc0ZDE1ODkyNGFlNTIzODZhMzgyZjBlNGY3NiKIAgEBAgB4Pa6VDCWW__MSrqnre1HIN0Grt00ViSSuUjhqOC8OT3YAAADfMIHcBgkqhkiG9w0BBwaggc4wgcsCAQAwgcUGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMmqLyBTAegIn9XlK5AgEQgIGXZQjkBcl1dykDdqZBUQ6L1OfUivQy7JVYO2-ZJP7m6f1g8GzV47HX5phdtONAP7K_HQIflcgpkoCqd_fUnE114mSmiagWkbQ5sqAVV3ov-VeqgrvMe5ZFEWLMSluvBAqdjHEdMIkHMlhlj4ENZbzBfo9Wxk8b8SnwP4kc4gGivedzFXo-dwN8fxjjq_ZZ9JFOj2ijIbj5FyogDCN0drOfi8RORSEuCEmPvjFRMFAwcmwFkN2NPp89amA",
    #     grant_id: "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     grantee_principal: "PrincipalIdType", # required
    #     retiring_principal: "PrincipalIdType",
    #     operations: ["Decrypt" # One of: ["Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "Sign", "Verify", "GetPublicKey", "CreateGrant", "RetireGrant", "DescribeKey", "GenerateDataKeyPair", "GenerateDataKeyPairWithoutPlaintext", "GenerateMac", "VerifyMac", "DeriveSharedSecret"]], # required
    #     constraints: {
    #       encryption_context_subset: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       },
    #       encryption_context_equals: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       }
    #     },
    #     grant_tokens: ["GrantTokenType"],
    #     name: "GrantNameType",
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grant_token: "GrantTokenType",
    #     grant_id: "GrantIdType"
    #   }
    # @return [Types::CreateGrantResponse]
    def create_grant(params = {}, options = {})
      request = build_request(:create_grant, params)
      request.send_request(options)
    end

    # <p>Creates a unique customer managed <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms-keys">KMS key</a> in your Amazon Web Services account and Region.
    #       You can use a KMS key in cryptographic operations, such as encryption and signing. Some Amazon Web Services
    #       services let you use KMS keys that you create and manage to protect your service
    #       resources.</p>
    #          <p>A KMS key is a logical representation of a cryptographic key. In addition to the key
    #       material used in cryptographic operations, a KMS key includes metadata, such as the key ID,
    #       key policy, creation date, description, and key state. </p>
    #          <p>Use the parameters of <code>CreateKey</code> to specify the type of KMS key, the source of
    #       its key material, its key policy, description, tags, and other properties.</p>
    #          <note>
    #             <p>KMS has replaced the term <i>customer master key (CMK)</i> with <i>Key Management Service key</i> 
    #   and <i>KMS key</i>. The concept has not changed. To prevent breaking changes, KMS is keeping some variations of this term.</p>
    #          </note>
    #          <p>To create different types of KMS keys, use the following guidance:</p>
    #          <dl>
    #             <dt>Symmetric encryption KMS key</dt>
    #             <dd>
    #                <p>By default, <code>CreateKey</code> creates a symmetric encryption KMS key with key
    #             material that KMS generates. This is the basic and most widely used type of KMS key, and
    #             provides the best performance.</p>
    #                <p>To create a symmetric encryption KMS key, you don't need to specify any parameters.
    #             The default value for <code>KeySpec</code>, <code>SYMMETRIC_DEFAULT</code>, the default
    #             value for <code>KeyUsage</code>, <code>ENCRYPT_DECRYPT</code>, and the default value for
    #               <code>Origin</code>, <code>AWS_KMS</code>, create a symmetric encryption KMS key with
    #             KMS key material.</p>
    #                <p>If you need a key for basic encryption and decryption or you are creating a KMS key
    #             to protect your resources in an Amazon Web Services service, create a symmetric encryption KMS key.
    #             The key material in a symmetric encryption key never leaves KMS unencrypted. You can
    #             use a symmetric encryption KMS key to encrypt and decrypt data up to 4,096 bytes, but
    #             they are typically used to generate data keys and data keys pairs. For details, see
    #               <a>GenerateDataKey</a> and <a>GenerateDataKeyPair</a>.</p>
    #                <p> </p>
    #             </dd>
    #             <dt>Asymmetric KMS keys</dt>
    #             <dd>
    #                <p>To create an asymmetric KMS key, use the <code>KeySpec</code> parameter to specify
    #             the type of key material in the KMS key. Then, use the <code>KeyUsage</code> parameter
    #             to determine whether the KMS key will be used to encrypt and decrypt or sign and verify.
    #             You can't change these properties after the KMS key is created.</p>
    #                <p>Asymmetric KMS keys contain an RSA key pair, Elliptic Curve (ECC) key pair, ML-DSA
    #             key pair or an SM2 key pair (China Regions only). The private key in an asymmetric KMS
    #             key never leaves KMS unencrypted. However, you can use the <a>GetPublicKey</a> operation to download the public key so it can be used
    #             outside of KMS. Each KMS key can have only one key usage. KMS keys with RSA key pairs
    #             can be used to encrypt and decrypt data or sign and verify messages (but not both). KMS
    #             keys with NIST-recommended ECC key pairs can be used to sign and verify messages or
    #             derive shared secrets (but not both). KMS keys with <code>ECC_SECG_P256K1</code> can be
    #             used only to sign and verify messages. KMS keys with ML-DSA key pairs can be used to
    #             sign and verify messages. KMS keys with SM2 key pairs (China Regions only) can be used
    #             to either encrypt and decrypt data, sign and verify messages, or derive shared secrets
    #             (you must choose one key usage type). For information about asymmetric KMS keys, see
    #               <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric
    #               KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #                <p> </p>
    #             </dd>
    #             <dt>HMAC KMS key</dt>
    #             <dd>
    #                <p>To create an HMAC KMS key, set the <code>KeySpec</code> parameter to a key spec
    #             value for HMAC KMS keys. Then set the <code>KeyUsage</code> parameter to
    #               <code>GENERATE_VERIFY_MAC</code>. You must set the key usage even though
    #               <code>GENERATE_VERIFY_MAC</code> is the only valid key usage value for HMAC KMS keys.
    #             You can't change these properties after the KMS key is created.</p>
    #                <p>HMAC KMS keys are symmetric keys that never leave KMS unencrypted. You can use
    #             HMAC keys to generate (<a>GenerateMac</a>) and verify (<a>VerifyMac</a>) HMAC codes for messages up to 4096 bytes.</p>
    #                <p> </p>
    #             </dd>
    #             <dt>Multi-Region primary keys</dt>
    #             <dt>Imported key material</dt>
    #             <dd>
    #                <p>To create a multi-Region <i>primary key</i> in the local Amazon Web Services Region,
    #             use the <code>MultiRegion</code> parameter with a value of <code>True</code>. To create
    #             a multi-Region <i>replica key</i>, that is, a KMS key with the same key ID
    #             and key material as a primary key, but in a different Amazon Web Services Region, use the <a>ReplicateKey</a> operation. To change a replica key to a primary key, and its
    #             primary key to a replica key, use the <a>UpdatePrimaryRegion</a>
    #             operation.</p>
    #                <p>You can create multi-Region KMS keys for all supported KMS key types: symmetric
    #             encryption KMS keys, HMAC KMS keys, asymmetric encryption KMS keys, and asymmetric
    #             signing KMS keys. You can also create multi-Region keys with imported key material.
    #             However, you can't create multi-Region keys in a custom key store.</p>
    #                <p>This operation supports <i>multi-Region keys</i>, an KMS feature that lets you create multiple
    #       interoperable KMS keys in different Amazon Web Services Regions. Because these KMS keys have the same key ID, key
    #       material, and other metadata, you can use them interchangeably to encrypt data in one Amazon Web Services Region and decrypt
    #       it in a different Amazon Web Services Region without re-encrypting the data or making a cross-Region call. For more information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #                <p> </p>
    #             </dd>
    #             <dd>
    #                <p>To import your own key material into a KMS key, begin by creating a KMS key with no
    #             key material. To do this, use the <code>Origin</code> parameter of
    #               <code>CreateKey</code> with a value of <code>EXTERNAL</code>. Next, use <a>GetParametersForImport</a> operation to get a public key and import token. Use
    #             the wrapping public key to encrypt your key material. Then, use <a>ImportKeyMaterial</a> with your import token to import the key material. For
    #             step-by-step instructions, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>
    #                      <i>Key Management Service Developer Guide</i>
    #                   </i>.</p>
    #                <p>You can import key material into KMS keys of all supported KMS key types: symmetric
    #             encryption KMS keys, HMAC KMS keys, asymmetric encryption KMS keys, and asymmetric
    #             signing KMS keys. You can also create multi-Region keys with imported key material.
    #             However, you can't import key material into a KMS key in a custom key store.</p>
    #                <p>To create a multi-Region primary key with imported key material, use the
    #               <code>Origin</code> parameter of <code>CreateKey</code> with a value of
    #               <code>EXTERNAL</code> and the <code>MultiRegion</code> parameter with a value of
    #               <code>True</code>. To create replicas of the multi-Region primary key, use the <a>ReplicateKey</a> operation. For instructions, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-create-cmk.html ">Importing key material step
    #               1</a>. For more information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #                <p> </p>
    #             </dd>
    #             <dt>Custom key store</dt>
    #             <dd>
    #                <p>A <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a> lets you protect your Amazon Web Services resources using keys in a backing key
    #             store that you own and manage. When you request a cryptographic operation with a KMS key
    #             in a custom key store, the operation is performed in the backing key store using its
    #             cryptographic keys.</p>
    #                <p>KMS supports <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html">CloudHSM key stores</a> backed by an CloudHSM cluster and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html">external key stores</a> backed by an
    #             external key manager outside of Amazon Web Services. When you create a KMS key in an CloudHSM key store,
    #             KMS generates an encryption key in the CloudHSM cluster and associates it with the KMS
    #             key. When you create a KMS key in an external key store, you specify an existing
    #             encryption key in the external key manager.</p>
    #                <note>
    #                   <p>Some external key managers provide a simpler method for creating a KMS key in an
    #               external key store. For details, see your external key manager documentation.</p>
    #                </note>
    #                <p>Before you create a KMS key in a custom key store, the <code>ConnectionState</code>
    #             of the key store must be <code>CONNECTED</code>. To connect the custom key store, use
    #             the <a>ConnectCustomKeyStore</a> operation. To find the
    #               <code>ConnectionState</code>, use the <a>DescribeCustomKeyStores</a>
    #             operation.</p>
    #                <p>To create a KMS key in a custom key store, use the <code>CustomKeyStoreId</code>.
    #             Use the default <code>KeySpec</code> value, <code>SYMMETRIC_DEFAULT</code>, and the
    #             default <code>KeyUsage</code> value, <code>ENCRYPT_DECRYPT</code> to create a symmetric
    #             encryption key. No other key type is supported in a custom key store.</p>
    #                <p>To create a KMS key in an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-cmk-keystore.html">CloudHSM key store</a>, use the
    #               <code>Origin</code> parameter with a value of <code>AWS_CLOUDHSM</code>. The CloudHSM
    #             cluster that is associated with the custom key store must have at least two active HSMs
    #             in different Availability Zones in the Amazon Web Services Region.</p>
    #                <p>To create a KMS key in an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keys.html">external key store</a>, use the
    #               <code>Origin</code> parameter with a value of <code>EXTERNAL_KEY_STORE</code> and an
    #               <code>XksKeyId</code> parameter that identifies an existing external key.</p>
    #                <note>
    #                   <p>Some external key managers provide a simpler method for creating a KMS key in an
    #               external key store. For details, see your external key manager documentation.</p>
    #                </note>
    #             </dd>
    #          </dl>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot use this operation to
    #       create a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CreateKey</a> (IAM policy). To use the
    #         <code>Tags</code> parameter, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:TagResource</a> (IAM policy). For examples and information about related
    #       permissions, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/customer-managed-policies.html#iam-policy-example-create-key">Allow a user
    #         to create KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DescribeKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListKeys</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ScheduleKeyDeletion</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::CreateKeyRequest] params
    # @option params [String] :policy
    #   <p>The key policy to attach to the KMS key.</p>
    #            <p>If you provide a key policy, it must meet the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>The key policy must allow the calling principal to make a
    #             subsequent <code>PutKeyPolicy</code> request on the KMS key.  This reduces the risk that
    #             the KMS key becomes unmanageable. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>. (To omit
    #             this condition, set <code>BypassPolicyLockoutSafetyCheck</code> to true.)</p>
    #               </li>
    #               <li>
    #                  <p>Each statement in the key policy must contain one or more principals. The principals
    #             in the key policy must exist and be visible to KMS. When you create a new Amazon Web Services
    #             principal, you might need to enforce a delay before including the new principal in a key
    #             policy because the new principal might not be immediately visible to KMS. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes that I make are not always immediately visible</a> in the <i>Amazon Web Services
    #               Identity and Access Management User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If either of the required <code>Resource</code> or <code>Action</code> elements are
    #           missing from a key policy statement, the policy statement has no effect. When a key policy
    #           statement is missing one of these elements, the KMS console correctly reports an error,
    #           but the <code>CreateKey</code> and <code>PutKeyPolicy</code> API requests succeed, even
    #           though the policy statement is ineffective.</p>
    #               <p>For more information on required key policy elements, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-overview.html#key-policy-elements">Elements in a key
    #             policy</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </note>
    #            <p>If you do not provide a key policy, KMS attaches a default key policy to the KMS key.
    #         For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html">Default key policy</a> in the
    #         <i>Key Management Service Developer Guide</i>. </p>
    #            <note>
    #               <p>If the key policy exceeds the length constraint, KMS returns a
    #             <code>LimitExceededException</code>.</p>
    #            </note>
    #            <p>For help writing and formatting a JSON policy document, see the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM JSON Policy Reference</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    # @option params [String] :description
    #   <p>A description of the KMS key. Use a description that helps you decide whether the KMS key
    #         is appropriate for a task. The default value is an empty string (no description).</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>To set or change the description after the key is created, use <a>UpdateKeyDescription</a>.</p>
    # @option params [String] :key_usage
    #   <p>Determines the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-cryptography.html#cryptographic-operations">cryptographic operations</a> for which you can use the KMS key. The default value is
    #           <code>ENCRYPT_DECRYPT</code>. This parameter is optional when you are creating a symmetric
    #         encryption KMS key; otherwise, it is required. You can't change the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html#key-usage">
    #                  <code>KeyUsage</code>
    #               </a> value after the KMS key is created. Each KMS key can have
    #         only one key usage. This follows key usage best practices according to <a href="https://csrc.nist.gov/pubs/sp/800/57/pt1/r5/final">NIST SP 800-57 Recommendations for
    #           Key Management</a>, section 5.2, Key usage.</p>
    #            <p>Select only one valid value.</p>
    #            <ul>
    #               <li>
    #                  <p>For symmetric encryption KMS keys, omit the parameter or specify
    #               <code>ENCRYPT_DECRYPT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For HMAC KMS keys (symmetric), specify <code>GENERATE_VERIFY_MAC</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For asymmetric KMS keys with RSA key pairs, specify <code>ENCRYPT_DECRYPT</code> or
    #               <code>SIGN_VERIFY</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For asymmetric KMS keys with NIST-recommended elliptic curve key pairs, specify
    #               <code>SIGN_VERIFY</code> or <code>KEY_AGREEMENT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For asymmetric KMS keys with <code>ECC_SECG_P256K1</code> key pairs, specify
    #               <code>SIGN_VERIFY</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For asymmetric KMS keys with ML-DSA key pairs, specify
    #             <code>SIGN_VERIFY</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For asymmetric KMS keys with SM2 key pairs (China Regions only), specify
    #               <code>ENCRYPT_DECRYPT</code>, <code>SIGN_VERIFY</code>, or
    #             <code>KEY_AGREEMENT</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :customer_master_key_spec
    #   <p>Instead, use the <code>KeySpec</code> parameter.</p>
    #            <p>The <code>KeySpec</code> and <code>CustomerMasterKeySpec</code> parameters work the same
    #         way. Only the names differ. We recommend that you use <code>KeySpec</code> parameter in your
    #         code. However, to avoid breaking changes, KMS supports both parameters.</p>
    # @option params [String] :key_spec
    #   <p>Specifies the type of KMS key to create. The default value,
    #         <code>SYMMETRIC_DEFAULT</code>, creates a KMS key with a 256-bit AES-GCM key that is used for
    #         encryption and decryption, except in China Regions, where it creates a 128-bit symmetric key
    #         that uses SM4 encryption. For a detailed description of all supported key specs, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose-key-spec.html">Key spec
    #           reference</a> in the <i>
    #                  <i>Key Management Service Developer Guide</i>
    #               </i>.</p>
    #            <p>The <code>KeySpec</code> determines whether the KMS key contains a symmetric key or an
    #         asymmetric key pair. It also determines the algorithms that the KMS key supports. You can't
    #         change the <code>KeySpec</code> after the KMS key is created. To further restrict the
    #         algorithms that can be used with the KMS key, use a condition key in its key policy or IAM
    #         policy. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/conditions-kms.html#conditions-kms-encryption-algorithm">kms:EncryptionAlgorithm</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/conditions-kms.html#conditions-kms-mac-algorithm">kms:MacAlgorithm</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/conditions-kms.html#conditions-kms-key-agreement-algorithm">kms:KeyAgreementAlgorithm</a>, or <a href="https://docs.aws.amazon.com/kms/latest/developerguide/conditions-kms.html#conditions-kms-signing-algorithm">kms:SigningAlgorithm</a> in the <i>
    #                  <i>Key Management Service Developer Guide</i>
    #               </i>.</p>
    #            <important>
    #               <p>
    #                  <a href="http://aws.amazon.com/kms/features/#AWS_Service_Integration">Amazon Web Services services that
    #             are integrated with KMS</a> use symmetric encryption KMS keys to protect your data.
    #           These services do not support asymmetric KMS keys or HMAC KMS keys.</p>
    #            </important>
    #            <p>KMS supports the following key specs for KMS keys:</p>
    #            <ul>
    #               <li>
    #                  <p>Symmetric encryption key (default)</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>SYMMETRIC_DEFAULT</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>HMAC keys (symmetric)</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>HMAC_224</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HMAC_256</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HMAC_384</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HMAC_512</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Asymmetric RSA key pairs (encryption and decryption -or- signing and
    #             verification)</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>RSA_2048</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RSA_3072</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RSA_4096</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Asymmetric NIST-recommended elliptic curve key pairs (signing and verification -or-
    #             deriving shared secrets)</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ECC_NIST_P256</code> (secp256r1)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ECC_NIST_P384</code> (secp384r1)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ECC_NIST_P521</code> (secp521r1)</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Other asymmetric elliptic curve key pairs (signing and verification)</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ECC_SECG_P256K1</code> (secp256k1), commonly used for
    #                 cryptocurrencies.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Asymmetric ML-DSA key pairs (signing and verification)</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ML_DSA_44</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ML_DSA_65</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ML_DSA_87</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>SM2 key pairs (encryption and decryption -or- signing and verification -or- deriving
    #             shared secrets)</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>SM2</code> (China Regions only)</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :origin
    #   <p>The source of the key material for the KMS key. You cannot change the origin after you
    #         create the KMS key. The default is <code>AWS_KMS</code>, which means that KMS creates the
    #         key material.</p>
    #            <p>To <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-create-cmk.html">create a
    #           KMS key with no key material</a> (for imported key material), set this value to
    #           <code>EXTERNAL</code>. For more information about importing key material into KMS, see
    #           <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key
    #           Material</a> in the <i>Key Management Service Developer Guide</i>. The <code>EXTERNAL</code> origin value is valid
    #         only for symmetric KMS keys.</p>
    #            <p>To <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-cmk-keystore.html">create a KMS
    #           key in an CloudHSM key store</a> and create its key material in the associated CloudHSM
    #         cluster, set this value to <code>AWS_CLOUDHSM</code>. You must also use the
    #           <code>CustomKeyStoreId</code> parameter to identify the CloudHSM key store. The
    #           <code>KeySpec</code> value must be <code>SYMMETRIC_DEFAULT</code>.</p>
    #            <p>To <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keys.html">create a KMS key in
    #           an external key store</a>, set this value to <code>EXTERNAL_KEY_STORE</code>. You must
    #         also use the <code>CustomKeyStoreId</code> parameter to identify the external key store and
    #         the <code>XksKeyId</code> parameter to identify the associated external key. The
    #           <code>KeySpec</code> value must be <code>SYMMETRIC_DEFAULT</code>.</p>
    # @option params [String] :custom_key_store_id
    #   <p>Creates the KMS key in the specified <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>. The <code>ConnectionState</code> of
    #         the custom key store must be <code>CONNECTED</code>. To find the CustomKeyStoreID and
    #         ConnectionState use the <a>DescribeCustomKeyStores</a> operation.</p>
    #            <p>This parameter is valid only for symmetric encryption KMS keys in a single Region. You
    #         cannot create any other type of KMS key in a custom key store.</p>
    #            <p>When you create a KMS key in an CloudHSM key store, KMS generates a non-exportable 256-bit
    #         symmetric key in its associated CloudHSM cluster and associates it with the KMS key. When you
    #         create a KMS key in an external key store, you must use the <code>XksKeyId</code> parameter to
    #         specify an external key that serves as key material for the KMS key.</p>
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   <p>Skips ("bypasses") the key policy lockout safety check. The default value is false.</p>
    #            <important>
    #               <p>Setting this value to true increases the risk that the KMS key becomes unmanageable. Do
    #           not set this value to true indiscriminately.</p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </important>
    #            <p>Use this parameter only when you intend to prevent the principal that is making the
    #         request from making a subsequent <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html">PutKeyPolicy</a>
    #         request on the KMS key.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Assigns one or more tags to the KMS key. Use this parameter to tag the KMS key when it is
    #         created. To tag an existing KMS key, use the <a>TagResource</a> operation.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <note>
    #               <p>Tagging or untagging a KMS key can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </note>
    #            <p>To use this parameter, you must have <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:TagResource</a> permission in an IAM policy.</p>
    #            <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are
    #         required, but the tag value can be an empty (null) string. You cannot have more than one tag
    #         on a KMS key with the same tag key. If you specify an existing tag key with a different tag
    #         value, KMS replaces the current tag value with the specified one.</p>
    #            <p>When you add tags to an Amazon Web Services resource, Amazon Web Services generates a cost allocation
    #                 report with usage and costs aggregated by tags. Tags can also be used to control access to a KMS key. For details,
    #                 see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">Tags in KMS</a>.</p>
    # @option params [Boolean] :multi_region
    #   <p>Creates a multi-Region primary key that you can replicate into other Amazon Web Services Regions. You
    #         cannot change this value after you create the KMS key. </p>
    #            <p>For a multi-Region key, set this parameter to <code>True</code>. For a single-Region KMS
    #         key, omit this parameter or set it to <code>False</code>. The default value is
    #           <code>False</code>.</p>
    #            <p>This operation supports <i>multi-Region keys</i>, an KMS feature that lets you create multiple
    #         interoperable KMS keys in different Amazon Web Services Regions. Because these KMS keys have the same key ID, key
    #         material, and other metadata, you can use them interchangeably to encrypt data in one Amazon Web Services Region and decrypt
    #         it in a different Amazon Web Services Region without re-encrypting the data or making a cross-Region call. For more information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>This value creates a <i>primary key</i>, not a replica. To create a
    #           <i>replica key</i>, use the <a>ReplicateKey</a> operation. </p>
    #            <p>You can create a symmetric or asymmetric multi-Region key, and you can create a
    #         multi-Region key with imported key material. However, you cannot create a multi-Region key in
    #         a custom key store.</p>
    # @option params [String] :xks_key_id
    #   <p>Identifies the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-external-key">external key</a> that
    #         serves as key material for the KMS key in an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html">external key store</a>. Specify the ID that
    #         the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-xks-proxy">external key store proxy</a> uses to refer to the external key. For help, see the
    #         documentation for your external key store proxy.</p>
    #            <p>This parameter is required for a KMS key with an <code>Origin</code> value of
    #           <code>EXTERNAL_KEY_STORE</code>. It is not valid for KMS keys with any other
    #           <code>Origin</code> value.</p>
    #            <p>The external key must be an existing 256-bit AES symmetric encryption key hosted outside
    #         of Amazon Web Services in an external key manager associated with the external key store specified by the
    #           <code>CustomKeyStoreId</code> parameter. This key must be enabled and configured to perform
    #         encryption and decryption. Each KMS key in an external key store must use a different external
    #         key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keys.html#xks-key-requirements">Requirements for a KMS key in
    #           an external key store</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Each KMS key in an external key store is associated two backing keys. One is key material
    #         that KMS generates. The other is the external key specified by this parameter. When you use
    #         the KMS key in an external key store to encrypt data, the encryption operation is performed
    #         first by KMS using the KMS key material, and then by the external key manager using the
    #         specified external key, a process known as <i>double encryption</i>. For
    #         details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-double-encryption">Double
    #           encryption</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy: "PolicyType",
    #     description: "DescriptionType",
    #     key_usage: "SIGN_VERIFY" # One of: ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC", "KEY_AGREEMENT"],
    #     customer_master_key_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"],
    #     key_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2", "ML_DSA_44", "ML_DSA_65", "ML_DSA_87"],
    #     origin: "AWS_KMS" # One of: ["AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"],
    #     custom_key_store_id: "CustomKeyStoreIdType",
    #     bypass_policy_lockout_safety_check: false,
    #     tags: [
    #       {
    #         tag_key: "TagKeyType", # required
    #         tag_value: "TagValueType", # required
    #       }
    #     ],
    #     multi_region: false,
    #     xks_key_id: "XksKeyIdType"
    #   }
    #   options = {}
    #   response = client.create_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_metadata: {
    #       aws_account_id: "AWSAccountIdType",
    #       key_id: "KeyIdType", # required
    #       arn: "ArnType",
    #       creation_date: Time.now,
    #       enabled: false,
    #       description: "DescriptionType",
    #       key_usage: "SIGN_VERIFY" # One of: ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC", "KEY_AGREEMENT"],
    #       key_state: "Creating" # One of: ["Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"],
    #       deletion_date: Time.now,
    #       valid_to: Time.now,
    #       origin: "AWS_KMS" # One of: ["AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"],
    #       custom_key_store_id: "CustomKeyStoreIdType",
    #       cloud_hsm_cluster_id: "CloudHsmClusterIdType",
    #       expiration_model: "KEY_MATERIAL_EXPIRES" # One of: ["KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"],
    #       key_manager: "AWS" # One of: ["AWS", "CUSTOMER"],
    #       customer_master_key_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"],
    #       key_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2", "ML_DSA_44", "ML_DSA_65", "ML_DSA_87"],
    #       encryption_algorithms: ["SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]],
    #       signing_algorithms: ["RSASSA_PSS_SHA_256" # One of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA", "ML_DSA_SHAKE_256"]],
    #       key_agreement_algorithms: ["ECDH" # One of: ["ECDH"]],
    #       multi_region: false,
    #       multi_region_configuration: {
    #         multi_region_key_type: "PRIMARY" # One of: ["PRIMARY", "REPLICA"],
    #         primary_key: {
    #           arn: "ArnType",
    #           region: "RegionType"
    #         },
    #         replica_keys: [
    #           {
    #             arn: "ArnType",
    #             region: "RegionType"
    #           }
    #         ]
    #       },
    #       pending_deletion_window_in_days: 1,
    #       mac_algorithms: ["HMAC_SHA_224" # One of: ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]],
    #       xks_key_configuration: {
    #         id: "XksKeyIdType"
    #       },
    #       current_key_material_id: "BackingKeyIdType"
    #     }
    #   }
    # @return [Types::CreateKeyResponse]
    def create_key(params = {}, options = {})
      request = build_request(:create_key, params)
      request.send_request(options)
    end

    # <p>Decrypts ciphertext that was encrypted by a KMS key using any of the following
    #       operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyWithoutPlaintext</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPairWithoutPlaintext</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>You can use this operation to decrypt ciphertext that was encrypted under a symmetric
    #       encryption KMS key or an asymmetric encryption KMS key. When the KMS key is asymmetric, you
    #       must specify the KMS key and the encryption algorithm that was used to encrypt the ciphertext.
    #       For information about asymmetric KMS keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The <code>Decrypt</code> operation also decrypts ciphertext that was encrypted outside of
    #       KMS by the public key in an KMS asymmetric KMS key. However, it cannot decrypt symmetric
    #       ciphertext produced by other libraries, such as the <a href="https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/">Amazon Web Services Encryption SDK</a> or <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon S3 client-side encryption</a>.
    #       These libraries return a ciphertext format that is incompatible with KMS.</p>
    #          <p>If the ciphertext was encrypted under a symmetric encryption KMS key, the
    #         <code>KeyId</code> parameter is optional. KMS can get this information from metadata that
    #       it adds to the symmetric ciphertext blob. This feature adds durability to your implementation
    #       by ensuring that authorized users can decrypt ciphertext decades after it was encrypted, even
    #       if they've lost track of the key ID. However, specifying the KMS key is always recommended as
    #       a best practice. When you use the <code>KeyId</code> parameter to specify a KMS key, KMS
    #       only uses the KMS key you specify. If the ciphertext was encrypted under a different KMS key,
    #       the <code>Decrypt</code> operation fails. This practice ensures that you use the KMS key that
    #       you intend.</p>
    #          <p>Whenever possible, use key policies to give users permission to call the
    #         <code>Decrypt</code> operation on a particular KMS key, instead of using IAM policies.
    #       Otherwise, you might create an IAM policy that gives the user <code>Decrypt</code>
    #       permission on all KMS keys. This user could decrypt ciphertext that was encrypted by KMS keys
    #       in other accounts if the key policy for the cross-account KMS key permits it. If you must use
    #       an IAM policy for <code>Decrypt</code> permissions, limit the user to particular KMS keys or
    #       particular trusted accounts. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policies-best-practices">Best practices for IAM
    #         policies</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <code>Decrypt</code> also supports <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html">Amazon Web Services Nitro Enclaves</a> and NitroTPM, which provide 
    #       attested environments in Amazon EC2. To call <code>Decrypt</code> for a Nitro enclave or NitroTPM, use
    #       the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK. Use the <code>Recipient</code> parameter to provide the
    #       attestation document for the attested environment. Instead of the plaintext data, the response 
    #       includes the plaintext data encrypted with the public key from the attestation document
    #         (<code>CiphertextForRecipient</code>). For information about the interaction between KMS and Amazon Web Services Nitro Enclaves or Amazon Web Services NitroTPM, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/cryptographic-attestation.html">Cryptographic attestation support in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. If you use the <code>KeyId</code>
    #       parameter to identify a KMS key in a different Amazon Web Services account, specify the key ARN or the alias
    #       ARN of the KMS key.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:Decrypt</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ReEncrypt</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::DecryptRequest] params
    # @option params [String] :ciphertext_blob
    #   <p>Ciphertext to be decrypted. The blob includes metadata.</p>
    # @option params [Hash<String, String>] :encryption_context
    #   <p>Specifies the encryption context to use when decrypting the data.
    #         An encryption context is valid only for <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-cryptography.html#cryptographic-operations">cryptographic operations</a> with a symmetric encryption KMS key. The standard asymmetric encryption algorithms and HMAC algorithms that KMS uses do not support an encryption context.</p>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data. 
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens. </p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :key_id
    #   <p>Specifies the KMS key that KMS uses to decrypt the ciphertext.</p>
    #            <p>Enter a key ID of the KMS key that was used to encrypt the ciphertext. If you identify a
    #         different KMS key, the <code>Decrypt</code> operation throws an
    #           <code>IncorrectKeyException</code>.</p>
    #            <p>This parameter is required only when the ciphertext was encrypted under an asymmetric KMS
    #         key. If you used a symmetric encryption KMS key, KMS can get the KMS key from metadata that
    #         it adds to the symmetric ciphertext blob. However, it is always recommended as a best
    #         practice. This practice ensures that you use the KMS key that you intend.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [String] :encryption_algorithm
    #   <p>Specifies the encryption algorithm that will be used to decrypt the ciphertext. Specify
    #         the same algorithm that was used to encrypt the data. If you specify a different algorithm,
    #         the <code>Decrypt</code> operation fails.</p>
    #            <p>This parameter is required only when the ciphertext was encrypted under an asymmetric KMS
    #         key. The default value, <code>SYMMETRIC_DEFAULT</code>, represents the only supported
    #         algorithm that is valid for symmetric encryption KMS keys.</p>
    # @option params [Types::RecipientInfo] :recipient
    #   <p>A signed <a href="https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-concepts.html#term-attestdoc">attestation
    #           document</a> from an Amazon Web Services Nitro enclave or NitroTPM, and the encryption algorithm to use with the
    #         public key in the attestation document. The only valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>. </p>
    #            <p>This parameter supports the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK for Amazon Web Services Nitro Enclaves. It supports 
    #         any Amazon Web Services SDK for Amazon Web Services NitroTPM.
    #       </p>
    #            <p>When you use this parameter, instead of returning the plaintext data, KMS encrypts the
    #         plaintext data with the public key in the attestation document, and returns the resulting
    #         ciphertext in the <code>CiphertextForRecipient</code> field in the response. This ciphertext
    #         can be decrypted only with the private key in the attested environment. The <code>Plaintext</code> field in
    #         the response is null or empty.</p>
    #            <p>For information about the interaction between KMS and Amazon Web Services Nitro Enclaves or Amazon Web Services NitroTPM, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/cryptographic-attestation.html">Cryptographic attestation support in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To decrypt data with an asymmetric encryption KMS key
    #   # The following example decrypts data that was encrypted with an asymmetric encryption KMS key. When the KMS encryption key is asymmetric, you must specify the KMS key ID and the encryption algorithm that was used to encrypt the data.
    #   params = {
    #     ciphertext_blob: "<binary data>",
    #     key_id: "0987dcba-09fe-87dc-65ba-ab0987654321",
    #     encryption_algorithm: RSAES_OAEP_SHA_256
    #   }
    #   options = {}
    #   response = client.decrypt(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     plaintext: "<binary data>",
    #     encryption_algorithm: RSAES_OAEP_SHA_256
    #   }
    # @example To decrypt data with a symmetric encryption KMS key
    #   # The following example decrypts data that was encrypted with a symmetric encryption KMS key. The KeyId is not required when decrypting with a symmetric encryption key, but it is a best practice.
    #   params = {
    #     ciphertext_blob: "<binary data>",
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.decrypt(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     plaintext: "<binary data>",
    #     encryption_algorithm: SYMMETRIC_DEFAULT,
    #     key_material_id: "0b7fd7ddbac6eef27907413567cad8c810e2883dc8a7534067a82ee1142fc1e6"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ciphertext_blob: "data", # required
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue"
    #     },
    #     grant_tokens: ["GrantTokenType"],
    #     key_id: "KeyIdType",
    #     encryption_algorithm: "SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"],
    #     recipient: {
    #       key_encryption_algorithm: "RSAES_OAEP_SHA_256" # One of: ["RSAES_OAEP_SHA_256"],
    #       attestation_document: "data"
    #     },
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.decrypt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType",
    #     plaintext: "data",
    #     encryption_algorithm: "SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"],
    #     ciphertext_for_recipient: "data",
    #     key_material_id: "BackingKeyIdType"
    #   }
    # @return [Types::DecryptResponse]
    def decrypt(params = {}, options = {})
      request = build_request(:decrypt, params)
      request.send_request(options)
    end

    # <p>Deletes the specified alias. </p>
    #          <note>
    #             <p>Adding, deleting, or updating an alias can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          </note>
    #          <p>Because an alias is not a property of a KMS key, you can delete and change the aliases of
    #       a KMS key without affecting the KMS key. Also, aliases do not appear in the response from the
    #         <a>DescribeKey</a> operation. To get the aliases of all KMS keys, use the <a>ListAliases</a> operation. </p>
    #          <p>Each KMS key can have multiple aliases. To change the alias of a KMS key, use <a>DeleteAlias</a> to delete the current alias and <a>CreateAlias</a> to
    #       create a new alias. To associate an existing alias with a different KMS key, call <a>UpdateAlias</a>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on an alias in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DeleteAlias</a> on
    #           the alias (IAM policy).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DeleteAlias</a> on
    #           the KMS key (key policy).</p>
    #             </li>
    #          </ul>
    #          <p>For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access">Controlling access to aliases</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateAlias</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::DeleteAliasRequest] params
    # @option params [String] :alias_name
    #   <p>The alias to be deleted. The alias name must begin with <code>alias/</code> followed by
    #         the alias name, such as <code>alias/ExampleAlias</code>.</p>
    # @example To delete an alias
    #   # The following example deletes the specified alias.
    #   params = {
    #     alias_name: "alias/ExampleAlias"
    #   }
    #   options = {}
    #   response = client.delete_alias(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_name: "AliasNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_alias(params = {}, options = {})
      request = build_request(:delete_alias, params)
      request.send_request(options)
    end

    # <p>Deletes a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>. This operation does not affect any backing elements of the
    #       custom key store. It does not delete the CloudHSM cluster that is associated with an CloudHSM key
    #       store, or affect any users or keys in the cluster. For an external key store, it does not
    #       affect the external key store proxy, external key manager, or any external keys.</p>
    #          <p> This operation is part of the custom key stores feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <p>The custom key store that you delete cannot contain any <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys">KMS keys</a>. Before deleting the key store,
    #       verify that you will never need to use any of the KMS keys in the key store for any
    #       <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-cryptography.html#cryptographic-operations">cryptographic operations</a>. Then, use <a>ScheduleKeyDeletion</a> to delete the KMS keys from the
    #       key store. After the required waiting period expires and all KMS keys are deleted from the
    #       custom key store, use <a>DisconnectCustomKeyStore</a> to disconnect the key store
    #       from KMS. Then, you can delete the custom key store.</p>
    #          <p>For keys in an CloudHSM key store, the <code>ScheduleKeyDeletion</code> operation makes a
    #       best effort to delete the key material from the associated cluster. However, you might need to
    #       manually <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key">delete the orphaned key
    #         material</a> from the cluster and its backups. KMS never creates, manages, or deletes
    #       cryptographic keys in the external key manager associated with an external key store. You must
    #       manage them using your external key manager tools.</p>
    #          <p>Instead of deleting the custom key store, consider using the <a>DisconnectCustomKeyStore</a> operation to disconnect the custom key store from its
    #       backing key store. While the key store is disconnected, you cannot create or use the KMS keys
    #       in the key store. But, you do not need to delete KMS keys and you can reconnect a disconnected
    #       custom key store at any time.</p>
    #          <p>If the operation succeeds, it returns a JSON object with no
    # properties.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DeleteCustomKeyStore</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ConnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeCustomKeyStores</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisconnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::DeleteCustomKeyStoreRequest] params
    # @option params [String] :custom_key_store_id
    #   <p>Enter the ID of the custom key store you want to delete. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    # @example To delete a custom key store from AWS KMS
    #   # This example deletes a custom key store from AWS KMS. This operation does not affect the backing key store, such as a CloudHSM cluster, external key store proxy, or your external key manager. This operation doesn't return any data. To verify that the operation was successful, use the DescribeCustomKeyStores operation.
    #   params = {
    #     custom_key_store_id: "cks-1234567890abcdef0"
    #   }
    #   options = {}
    #   response = client.delete_custom_key_store(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_key_store_id: "CustomKeyStoreIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_key_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomKeyStoreResponse]
    def delete_custom_key_store(params = {}, options = {})
      request = build_request(:delete_custom_key_store, params)
      request.send_request(options)
    end

    # <p>Deletes key material that was previously imported. This operation makes the specified KMS
    #       key temporarily unusable. To restore the usability of the KMS key, reimport the same key
    #       material. For more information about importing key material into KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a>
    #       in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>When the specified KMS key is in the <code>PendingDeletion</code> state, this operation
    #       does not change the KMS key's state. Otherwise, it changes the KMS key's state to
    #         <code>PendingImport</code>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DeleteImportedKeyMaterial</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>GetParametersForImport</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListKeyRotations</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ImportKeyMaterial</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::DeleteImportedKeyMaterialRequest] params
    # @option params [String] :key_id
    #   <p>Identifies the KMS key from which you are deleting imported key material. The
    #           <code>Origin</code> of the KMS key must be <code>EXTERNAL</code>.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :key_material_id
    #   <p>Identifies the imported key material you are deleting. </p>
    #            <important>
    #               <p>If no KeyMaterialId is specified, KMS deletes the current key material.</p>
    #            </important>
    #            <p>To get the list of key material IDs associated with a KMS key, use <a>ListKeyRotations</a>.</p>
    # @example To delete imported key material
    #   # The following example deletes the imported key material from the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_material_id: "0b7fd7ddbac6eef27907413567cad8c810e2883dc8a7534067a82ee1142fc1e6"
    #   }
    #   options = {}
    #   response = client.delete_imported_key_material(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     key_material_id: "BackingKeyIdType"
    #   }
    #   options = {}
    #   response = client.delete_imported_key_material(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType",
    #     key_material_id: "BackingKeyIdResponseType"
    #   }
    # @return [Types::DeleteImportedKeyMaterialResponse]
    def delete_imported_key_material(params = {}, options = {})
      request = build_request(:delete_imported_key_material, params)
      request.send_request(options)
    end

    # <p>Derives a shared secret using a key agreement algorithm.</p>
    #          <note>
    #             <p>You must use an asymmetric NIST-recommended elliptic curve (ECC) or SM2 (China Regions
    #         only) KMS key pair with a <code>KeyUsage</code>
    #         value of <code>KEY_AGREEMENT</code> to call DeriveSharedSecret.</p>
    #          </note>
    #          <p>DeriveSharedSecret uses the <a href="https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-56Ar3.pdf#page=60">Elliptic Curve Cryptography Cofactor Diffie-Hellman Primitive</a> (ECDH) to establish a
    #       key agreement between two peers by deriving a shared secret from their elliptic curve
    #       public-private key pairs. You can use the raw shared secret that DeriveSharedSecret returns to
    #       derive a symmetric key that can encrypt and decrypt data that is sent between the two peers,
    #       or that can generate and verify HMACs. KMS recommends that you follow <a href="https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-56Cr2.pdf">NIST
    #         recommendations for key derivation</a> when using the raw shared secret to derive a
    #       symmetric key.</p>
    #          <p>The following workflow demonstrates how to establish key agreement over an insecure
    #       communication channel using DeriveSharedSecret.</p>
    #          <ol>
    #             <li>
    #                <p>
    #                   <b>Alice</b> calls <a>CreateKey</a> to create an
    #           asymmetric KMS key pair with a <code>KeyUsage</code> value of
    #           <code>KEY_AGREEMENT</code>.</p>
    #                <p>The asymmetric KMS key must use a NIST-recommended elliptic curve (ECC) or SM2 (China
    #           Regions only) key spec.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Bob</b> creates an elliptic curve key pair.</p>
    #                <p>Bob can call <a>CreateKey</a> to create an asymmetric KMS key pair or
    #           generate a key pair outside of KMS. Bob's key pair must use the same NIST-recommended
    #           elliptic curve (ECC) or SM2 (China Regions ony) curve as Alice.</p>
    #             </li>
    #             <li>
    #                <p>Alice and Bob <b>exchange their public keys</b> through an
    #           insecure communication channel (like the internet).</p>
    #                <p>Use <a>GetPublicKey</a> to download the public key of your asymmetric KMS
    #           key pair.</p>
    #                <note>
    #                   <p>KMS strongly recommends verifying that the public key you receive came from the
    #             expected party before using it to derive a shared secret.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Alice</b> calls DeriveSharedSecret.</p>
    #                <p>KMS uses the private key from the KMS key pair generated in <b>Step 1</b>, Bob's public key, and the Elliptic Curve Cryptography Cofactor
    #           Diffie-Hellman Primitive to derive the shared secret. The private key in your KMS key pair
    #           never leaves KMS unencrypted. DeriveSharedSecret returns the raw shared secret.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Bob</b> uses the Elliptic Curve Cryptography Cofactor
    #           Diffie-Hellman Primitive to calculate the same raw secret using his private key and
    #           Alice's public key.</p>
    #             </li>
    #          </ol>
    #          <p>To derive a shared secret you must provide a key agreement algorithm, the private key of
    #       the caller's asymmetric NIST-recommended elliptic curve or SM2 (China Regions only) KMS key
    #       pair, and the public key from your peer's NIST-recommended elliptic curve or SM2 (China
    #       Regions only) key pair. The public key can be from another asymmetric KMS key pair or from a
    #       key pair generated outside of KMS, but both key pairs must be on the same elliptic
    #       curve.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DeriveSharedSecret</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GetPublicKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeKey</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::DeriveSharedSecretRequest] params
    # @option params [String] :key_id
    #   <p>Identifies an asymmetric NIST-recommended ECC or SM2 (China Regions only) KMS key. KMS
    #         uses the private key in the specified key pair to derive the shared secret. The key usage of
    #         the KMS key must be <code>KEY_AGREEMENT</code>. To find the <code>KeyUsage</code> of a KMS
    #         key, use the <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [String] :key_agreement_algorithm
    #   <p>Specifies the key agreement algorithm used to derive the shared secret. The only valid
    #         value is <code>ECDH</code>.</p>
    # @option params [String] :public_key
    #   <p>Specifies the public key in your peer's NIST-recommended elliptic curve (ECC) or SM2
    #         (China Regions only) key pair.</p>
    #            <p>The public key must be a DER-encoded X.509 public key, also known as
    #           <code>SubjectPublicKeyInfo</code> (SPKI), as defined in <a href="https://tools.ietf.org/html/rfc5280">RFC 5280</a>.</p>
    #            <p>
    #               <a>GetPublicKey</a> returns the public key of an asymmetric KMS key pair in the
    #         required DER-encoded format.</p>
    #            <note>
    #               <p>If you use <a href="https://docs.aws.amazon.com/cli/v1/userguide/cli-chap-welcome.html">Amazon Web Services CLI version 1</a>, you must provide the DER-encoded X.509 public key in a file.
    #           Otherwise, the Amazon Web Services CLI Base64-encodes the public key a second time, resulting in a
    #             <code>ValidationException</code>.</p>
    #            </note>
    #            <p>You can specify the public key as binary data in a file using fileb
    #           (<code>fileb://<path-to-file></code>) or in-line using a Base64 encoded string.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Types::RecipientInfo] :recipient
    #   <p>A signed <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave-how.html#term-attestdoc">attestation document</a> from
    #         an Amazon Web Services Nitro enclave or NitroTPM, and the encryption algorithm to use with the public key in the attestation document. The
    #         only valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>. </p>
    #            <p>This parameter only supports attestation documents for Amazon Web Services Nitro Enclaves or Amazon Web Services NitroTPM. To call
    #         DeriveSharedSecret generate an attestation document use either <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> for an Amazon Web Services Nitro Enclaves or
    #         <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/attestation-get-doc.html">Amazon Web Services NitroTPM tools</a> for Amazon Web Services NitroTPM. Then use the Recipient parameter from any Amazon Web Services SDK to provide the
    #         attestation document for the attested environment.</p>
    #            <p>When you use this parameter, instead of returning a plaintext copy of the shared secret,
    #         KMS encrypts the plaintext shared secret under the public key in the attestation document,
    #         and returns the resulting ciphertext in the <code>CiphertextForRecipient</code> field in the
    #         response. This ciphertext can be decrypted only with the private key in the attested environment. The
    #           <code>CiphertextBlob</code> field in the response contains the encrypted shared secret
    #         derived from the KMS key specified by the <code>KeyId</code> parameter and public key
    #         specified by the <code>PublicKey</code> parameter. The <code>SharedSecret</code> field in the
    #         response is null or empty.</p>
    #            <p>For information about the interaction between KMS and Amazon Web Services Nitro Enclaves or Amazon Web Services NitroTPM, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/cryptographic-attestation.html">Cryptographic attestation support in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To derive a shared secret
    #   # The following example derives a shared secret using a key agreement algorithm.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_agreement_algorithm: ECDH,
    #     public_key: "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvH3Yj0wbkLEpUl95Cv1cJVjsVNSjwGq3tCLnzXfhVwVvmzGN8pYj3U8nKwgouaHbBWNJYjP5VutbbkKS4Kv4GojwZBJyHN17kmxo8yTjRmjR15SKIQ8cqRA2uaERMLnpztIXdZp232PQPbWGxDyXYJ0aJ5EFSag"
    #   }
    #   options = {}
    #   response = client.derive_shared_secret(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     shared_secret: "MEYCIQCKZLWyTk5runarx6XiAkU9gv3lbwPO/pHa+DXFehzdDwIhANwpsIV2g/9SPWLLsF6p/hiSskuIXMTRwqrMdVKWTMHG",
    #     key_agreement_algorithm: ECDH,
    #     key_origin: AWS_KMS
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     key_agreement_algorithm: "ECDH" # One of: ["ECDH"], # required
    #     public_key: "data", # required
    #     grant_tokens: ["GrantTokenType"],
    #     dry_run: false,
    #     recipient: {
    #       key_encryption_algorithm: "RSAES_OAEP_SHA_256" # One of: ["RSAES_OAEP_SHA_256"],
    #       attestation_document: "data"
    #     }
    #   }
    #   options = {}
    #   response = client.derive_shared_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType",
    #     shared_secret: "data",
    #     ciphertext_for_recipient: "data",
    #     key_agreement_algorithm: "ECDH" # One of: ["ECDH"],
    #     key_origin: "AWS_KMS" # One of: ["AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"]
    #   }
    # @return [Types::DeriveSharedSecretResponse]
    def derive_shared_secret(params = {}, options = {})
      request = build_request(:derive_shared_secret, params)
      request.send_request(options)
    end

    # <p>Gets information about <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key stores</a> in the account and Region.</p>
    #          <p> This operation is part of the custom key stores feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <p>By default, this operation returns information about all custom key stores in the account
    #       and Region. To get only information about a particular custom key store, use either the
    #         <code>CustomKeyStoreName</code> or <code>CustomKeyStoreId</code> parameter (but not
    #       both).</p>
    #          <p>To determine whether the custom key store is connected to its CloudHSM cluster or external
    #       key store proxy, use the <code>ConnectionState</code> element in the response. If an attempt
    #       to connect the custom key store failed, the <code>ConnectionState</code> value is
    #         <code>FAILED</code> and the <code>ConnectionErrorCode</code> element in the response
    #       indicates the cause of the failure. For help interpreting the
    #       <code>ConnectionErrorCode</code>, see <a>CustomKeyStoresListEntry</a>.</p>
    #          <p>Custom key stores have a <code>DISCONNECTED</code> connection state if the key store has
    #       never been connected or you used the <a>DisconnectCustomKeyStore</a> operation to
    #       disconnect it. Otherwise, the connection state is CONNECTED. If your custom key store
    #       connection state is <code>CONNECTED</code> but you are having trouble using it, verify that
    #       the backing store is active and available. For an CloudHSM key store, verify that the associated
    #       CloudHSM cluster is active and contains the minimum number of HSMs required for the operation, if
    #       any. For an external key store, verify that the external key store proxy and its associated
    #       external key manager are reachable and enabled.</p>
    #          <p> For help repairing your CloudHSM key store, see the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting CloudHSM key stores</a>. For help
    #       repairing your external key store, see the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html">Troubleshooting external key stores</a>.
    #       Both topics are in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DescribeCustomKeyStores</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ConnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisconnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::DescribeCustomKeyStoresRequest] params
    # @option params [String] :custom_key_store_id
    #   <p>Gets only information about the specified custom key store. Enter the key store ID.</p>
    #            <p>By default, this operation gets information about all custom key stores in the account and
    #         Region. To limit the output to a particular custom key store, provide either the
    #           <code>CustomKeyStoreId</code> or <code>CustomKeyStoreName</code> parameter, but not
    #         both.</p>
    # @option params [String] :custom_key_store_name
    #   <p>Gets only information about the specified custom key store. Enter the friendly name of the
    #         custom key store.</p>
    #            <p>By default, this operation gets information about all custom key stores in the account and
    #         Region. To limit the output to a particular custom key store, provide either the
    #           <code>CustomKeyStoreId</code> or <code>CustomKeyStoreName</code> parameter, but not
    #         both.</p>
    # @option params [Integer] :limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    # @option params [String] :marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    # @example To get detailed information about custom key stores in the account and Region
    #   # This example gets detailed information about all AWS KMS custom key stores in an AWS account and Region. To get all key stores, do not enter a custom key store name or ID.
    #   params = {}
    #   options = {}
    #   response = client.describe_custom_key_stores(params, options)
    #   response.to_h #=>
    #   {
    #     custom_key_stores: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_key_store_id: "CustomKeyStoreIdType",
    #     custom_key_store_name: "CustomKeyStoreNameType",
    #     limit: 1,
    #     marker: "MarkerType"
    #   }
    #   options = {}
    #   response = client.describe_custom_key_stores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_key_stores: [
    #       {
    #         custom_key_store_id: "CustomKeyStoreIdType",
    #         custom_key_store_name: "CustomKeyStoreNameType",
    #         cloud_hsm_cluster_id: "CloudHsmClusterIdType",
    #         trust_anchor_certificate: "TrustAnchorCertificateType",
    #         connection_state: "CONNECTED" # One of: ["CONNECTED", "CONNECTING", "FAILED", "DISCONNECTED", "DISCONNECTING"],
    #         connection_error_code: "INVALID_CREDENTIALS" # One of: ["INVALID_CREDENTIALS", "CLUSTER_NOT_FOUND", "NETWORK_ERRORS", "INTERNAL_ERROR", "INSUFFICIENT_CLOUDHSM_HSMS", "USER_LOCKED_OUT", "USER_NOT_FOUND", "USER_LOGGED_IN", "SUBNET_NOT_FOUND", "INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET", "XKS_PROXY_ACCESS_DENIED", "XKS_PROXY_NOT_REACHABLE", "XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND", "XKS_PROXY_INVALID_RESPONSE", "XKS_PROXY_INVALID_CONFIGURATION", "XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION", "XKS_PROXY_TIMED_OUT", "XKS_PROXY_INVALID_TLS_CONFIGURATION"],
    #         creation_date: Time.now,
    #         custom_key_store_type: "AWS_CLOUDHSM" # One of: ["AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"],
    #         xks_proxy_configuration: {
    #           connectivity: "PUBLIC_ENDPOINT" # One of: ["PUBLIC_ENDPOINT", "VPC_ENDPOINT_SERVICE"],
    #           access_key_id: "XksProxyAuthenticationAccessKeyIdType",
    #           uri_endpoint: "XksProxyUriEndpointType",
    #           uri_path: "XksProxyUriPathType",
    #           vpc_endpoint_service_name: "XksProxyVpcEndpointServiceNameType"
    #         }
    #       }
    #     ],
    #     next_marker: "MarkerType",
    #     truncated: false
    #   }
    # @return [Types::DescribeCustomKeyStoresResponse]
    def describe_custom_key_stores(params = {}, options = {})
      request = build_request(:describe_custom_key_stores, params)
      request.send_request(options)
    end

    # <p>Provides detailed information about a KMS key. You can run <code>DescribeKey</code> on a
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-mgn-key">customer
    #         managed key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-key">Amazon Web Services managed key</a>.</p>
    #          <p>This detailed information includes the key ARN, creation date (and deletion date, if
    #       applicable), the key state, and the origin and expiration date (if any) of the key material.
    #       It includes fields, like <code>KeySpec</code>, that help you distinguish different types of
    #       KMS keys. It also displays the key usage (encryption, signing, or generating and verifying
    #       MACs) and the algorithms that the KMS key supports. </p>
    #          <p>For <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">multi-Region keys</a>, <code>DescribeKey</code> displays the primary key and all
    #       related replica keys. For KMS keys in <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html">CloudHSM key stores</a>, it includes information
    #       about the key store, such as the key store ID and the CloudHSM cluster ID. For KMS keys in <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html">external key stores</a>,
    #       it includes the custom key store ID and the ID of the external key.</p>
    #          <p>
    #             <code>DescribeKey</code> does not return the following information:</p>
    #          <ul>
    #             <li>
    #                <p>Aliases associated with the KMS key. To get this information, use <a>ListAliases</a>.</p>
    #             </li>
    #             <li>
    #                <p>Whether automatic key rotation is enabled on the KMS key. To get this information, use
    #             <a>GetKeyRotationStatus</a>. Also, some key states prevent a KMS key from
    #           being automatically rotated. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-how-it-works">How key rotation
    #             works</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>Tags on the KMS key. To get this information, use <a>ListResourceTags</a>.</p>
    #             </li>
    #             <li>
    #                <p>Key policies and grants on the KMS key. To get this information, use <a>GetKeyPolicy</a> and <a>ListGrants</a>.</p>
    #             </li>
    #          </ul>
    #          <p>In general, <code>DescribeKey</code> is a non-mutating operation. It returns data about
    #       KMS keys, but doesn't change them. However, Amazon Web Services services use <code>DescribeKey</code> to
    #       create <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-key">Amazon Web Services
    #         managed keys</a> from a <i>predefined Amazon Web Services alias</i> with no key
    #       ID.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DescribeKey</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>GetKeyPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GetKeyRotationStatus</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListKeys</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListResourceTags</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListRetirableGrants</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::DescribeKeyRequest] params
    # @option params [String] :key_id
    #   <p>Describes the specified KMS key. </p>
    #            <p>If you specify a predefined Amazon Web Services alias (an Amazon Web Services alias with no key ID), KMS associates
    #         the alias with an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-key">Amazon Web Services managed key</a> and returns its <code>KeyId</code> and <code>Arn</code> in the
    #         response.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @example To get details about a KMS key in an AWS CloudHSM key store
    #   # The following example gets the metadata of a KMS key in an AWS CloudHSM key store.
    #   params = {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.describe_key(params, options)
    #   response.to_h #=>
    #   {
    #     key_metadata: {
    #       aws_account_id: "123456789012",
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #       arn: "arn:aws:kms:us-west-2:123456789012:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #       creation_date: Time.parse(1646160362.664),
    #       description: "CloudHSM key store test key",
    #       enabled: true,
    #       multi_region: false,
    #       key_manager: CUSTOMER,
    #       key_state: Enabled,
    #       key_usage: ENCRYPT_DECRYPT,
    #       origin: AWS_CLOUDHSM,
    #       cloud_hsm_cluster_id: "cluster-234abcdefABC",
    #       custom_key_store_id: "cks-1234567890abcdef0",
    #       key_spec: SYMMETRIC_DEFAULT,
    #       customer_master_key_spec: SYMMETRIC_DEFAULT,
    #       encryption_algorithms: [
    #         SYMMETRIC_DEFAULT
    #       ]
    #     }
    #   }
    # @example To get details about a KMS key in an external key store
    #   # The following example gets the metadata of a KMS key in an external key store.
    #   params = {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.describe_key(params, options)
    #   response.to_h #=>
    #   {
    #     key_metadata: {
    #       arn: "arn:aws:kms:us-west-2:123456789012:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #       aws_account_id: "123456789012",
    #       creation_date: Time.parse(1646160362.664),
    #       customer_master_key_spec: SYMMETRIC_DEFAULT,
    #       custom_key_store_id: "cks-1234567890abcdef0",
    #       description: "External key store test key",
    #       enabled: true,
    #       encryption_algorithms: [
    #         SYMMETRIC_DEFAULT
    #       ],
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #       key_manager: CUSTOMER,
    #       key_spec: SYMMETRIC_DEFAULT,
    #       key_state: Enabled,
    #       key_usage: ENCRYPT_DECRYPT,
    #       multi_region: false,
    #       origin: EXTERNAL_KEY_STORE,
    #       xks_key_configuration: {
    #         id: "bb8562717f809024"
    #       }
    #     }
    #   }
    # @example To get details about a multi-Region key
    #   # The following example gets metadata for a multi-Region replica key. This multi-Region key is a symmetric encryption key. DescribeKey returns information about the primary key and all of its replicas.
    #   params = {
    #     key_id: "arn:aws:kms:ap-northeast-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab"
    #   }
    #   options = {}
    #   response = client.describe_key(params, options)
    #   response.to_h #=>
    #   {
    #     key_metadata: {
    #       multi_region: true,
    #       aws_account_id: "111122223333",
    #       arn: "arn:aws:kms:ap-northeast-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #       creation_date: Time.parse(1586329200.918),
    #       description: "",
    #       enabled: true,
    #       key_id: "mrk-1234abcd12ab34cd56ef1234567890ab",
    #       key_manager: CUSTOMER,
    #       key_state: Enabled,
    #       key_usage: ENCRYPT_DECRYPT,
    #       origin: AWS_KMS,
    #       customer_master_key_spec: SYMMETRIC_DEFAULT,
    #       current_key_material_id: "0b7fd7ddbac6eef27907413567cad8c810e2883dc8a7534067a82ee1142fc1e6",
    #       encryption_algorithms: [
    #         SYMMETRIC_DEFAULT
    #       ],
    #       multi_region_configuration: {
    #         multi_region_key_type: PRIMARY,
    #         primary_key: {
    #           arn: "arn:aws:kms:us-west-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #           region: "us-west-2"
    #         },
    #         replica_keys: [
    #           {
    #             arn: "arn:aws:kms:eu-west-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #             region: "eu-west-1"
    #           },
    #           {
    #             arn: "arn:aws:kms:ap-northeast-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #             region: "ap-northeast-1"
    #           },
    #           {
    #             arn: "arn:aws:kms:sa-east-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #             region: "sa-east-1"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @example To get details about an HMAC KMS key
    #   # The following example gets the metadata of an HMAC KMS key.
    #   params = {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.describe_key(params, options)
    #   response.to_h #=>
    #   {
    #     key_metadata: {
    #       aws_account_id: "123456789012",
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #       arn: "arn:aws:kms:us-west-2:123456789012:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #       creation_date: Time.parse(1566160362.664),
    #       enabled: true,
    #       description: "Development test key",
    #       key_usage: GENERATE_VERIFY_MAC,
    #       key_state: Enabled,
    #       origin: AWS_KMS,
    #       key_manager: CUSTOMER,
    #       customer_master_key_spec: HMAC_256,
    #       mac_algorithms: [
    #         HMAC_SHA_256
    #       ],
    #       multi_region: false
    #     }
    #   }
    # @example To get details about an RSA asymmetric KMS key
    #   # The following example gets metadata for an asymmetric RSA KMS key used for signing and verification.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.describe_key(params, options)
    #   response.to_h #=>
    #   {
    #     key_metadata: {
    #       aws_account_id: "111122223333",
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #       arn: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #       creation_date: Time.parse(1571767572.317),
    #       customer_master_key_spec: RSA_2048,
    #       enabled: false,
    #       description: "",
    #       key_state: Disabled,
    #       origin: AWS_KMS,
    #       multi_region: false,
    #       key_manager: CUSTOMER,
    #       key_spec: RSA_2048,
    #       key_usage: SIGN_VERIFY,
    #       signing_algorithms: [
    #         RSASSA_PKCS1_V1_5_SHA_256,
    #         RSASSA_PKCS1_V1_5_SHA_384,
    #         RSASSA_PKCS1_V1_5_SHA_512,
    #         RSASSA_PSS_SHA_256,
    #         RSASSA_PSS_SHA_384,
    #         RSASSA_PSS_SHA_512
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     grant_tokens: ["GrantTokenType"]
    #   }
    #   options = {}
    #   response = client.describe_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_metadata: {
    #       aws_account_id: "AWSAccountIdType",
    #       key_id: "KeyIdType", # required
    #       arn: "ArnType",
    #       creation_date: Time.now,
    #       enabled: false,
    #       description: "DescriptionType",
    #       key_usage: "SIGN_VERIFY" # One of: ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC", "KEY_AGREEMENT"],
    #       key_state: "Creating" # One of: ["Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"],
    #       deletion_date: Time.now,
    #       valid_to: Time.now,
    #       origin: "AWS_KMS" # One of: ["AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"],
    #       custom_key_store_id: "CustomKeyStoreIdType",
    #       cloud_hsm_cluster_id: "CloudHsmClusterIdType",
    #       expiration_model: "KEY_MATERIAL_EXPIRES" # One of: ["KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"],
    #       key_manager: "AWS" # One of: ["AWS", "CUSTOMER"],
    #       customer_master_key_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"],
    #       key_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2", "ML_DSA_44", "ML_DSA_65", "ML_DSA_87"],
    #       encryption_algorithms: ["SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]],
    #       signing_algorithms: ["RSASSA_PSS_SHA_256" # One of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA", "ML_DSA_SHAKE_256"]],
    #       key_agreement_algorithms: ["ECDH" # One of: ["ECDH"]],
    #       multi_region: false,
    #       multi_region_configuration: {
    #         multi_region_key_type: "PRIMARY" # One of: ["PRIMARY", "REPLICA"],
    #         primary_key: {
    #           arn: "ArnType",
    #           region: "RegionType"
    #         },
    #         replica_keys: [
    #           {
    #             arn: "ArnType",
    #             region: "RegionType"
    #           }
    #         ]
    #       },
    #       pending_deletion_window_in_days: 1,
    #       mac_algorithms: ["HMAC_SHA_224" # One of: ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]],
    #       xks_key_configuration: {
    #         id: "XksKeyIdType"
    #       },
    #       current_key_material_id: "BackingKeyIdType"
    #     }
    #   }
    # @return [Types::DescribeKeyResponse]
    def describe_key(params = {}, options = {})
      request = build_request(:describe_key, params)
      request.send_request(options)
    end

    # <p>Sets the state of a KMS key to disabled. This change temporarily prevents use of the KMS
    #       key for <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-cryptography.html#cryptographic-operations">cryptographic operations</a>. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For more
    #       information about how key state affects the use of a KMS key, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DisableKey</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>EnableKey</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::DisableKeyRequest] params
    # @option params [String] :key_id
    #   <p>Identifies the KMS key to disable.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @example To disable a KMS key
    #   # The following example disables the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.disable_key(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #   }
    #   options = {}
    #   response = client.disable_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disable_key(params = {}, options = {})
      request = build_request(:disable_key, params)
      request.send_request(options)
    end

    # <p>Disables <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotating-keys-enable-disable.html">automatic rotation of the key material</a> of the specified symmetric encryption KMS
    #       key.</p>
    #          <p>Automatic key rotation is supported only on symmetric encryption KMS keys.
    #       You cannot enable automatic rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric KMS keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC KMS keys</a>, KMS keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key material</a>, or KMS keys in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>. To enable or disable automatic rotation of a set of related <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#multi-region-rotate">multi-Region keys</a>, set the property on the primary key.</p>
    #          <p>You can enable (<a>EnableKeyRotation</a>) and disable automatic rotation of the
    #       key material in <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-mgn-key">customer managed KMS keys</a>. Key material rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-key">Amazon Web Services managed KMS keys</a> is not
    #       configurable. KMS always rotates the key material for every year. Rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-key">Amazon Web Services owned KMS
    #         keys</a> varies.</p>
    #          <note>
    #             <p>In May 2022, KMS changed the rotation schedule for Amazon Web Services managed keys from every three
    #         years to every year. For details, see <a>EnableKeyRotation</a>.</p>
    #          </note>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DisableKeyRotation</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>EnableKeyRotation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GetKeyRotationStatus</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListKeyRotations</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RotateKeyOnDemand</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::DisableKeyRotationRequest] params
    # @option params [String] :key_id
    #   <p>Identifies a symmetric encryption KMS key. You cannot enable or disable automatic rotation
    #         of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html#asymmetric-cmks">asymmetric KMS keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC
    #           KMS keys</a>, KMS keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key material</a>, or KMS keys in a
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @example To disable automatic rotation of key material
    #   # The following example disables automatic annual rotation of the key material for the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.disable_key_rotation(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #   }
    #   options = {}
    #   response = client.disable_key_rotation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disable_key_rotation(params = {}, options = {})
      request = build_request(:disable_key_rotation, params)
      request.send_request(options)
    end

    # <p>Disconnects the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a> from its backing key store. This operation disconnects an
    #       CloudHSM key store from its associated CloudHSM cluster or disconnects an external key store from
    #       the external key store proxy that communicates with your external key manager.</p>
    #          <p> This operation is part of the custom key stores feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <p>While a custom key store is disconnected, you can manage the custom key store and its KMS
    #       keys, but you cannot create or use its KMS keys. You can reconnect the custom key store at any
    #       time.</p>
    #          <note>
    #             <p>While a custom key store is disconnected, all attempts to create KMS keys in the custom key store or to use existing KMS keys in <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-cryptography.html#cryptographic-operations">cryptographic operations</a> will
    #         fail. This action can prevent users from storing and accessing sensitive data.</p>
    #          </note>
    #          <p>When you disconnect a custom key store, its <code>ConnectionState</code> changes to
    #         <code>Disconnected</code>. To find the connection state of a custom key store, use the <a>DescribeCustomKeyStores</a> operation. To reconnect a custom key store, use the
    #         <a>ConnectCustomKeyStore</a> operation.</p>
    #          <p>If the operation succeeds, it returns a JSON object with no
    # properties.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DisconnectCustomKeyStore</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ConnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeCustomKeyStores</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::DisconnectCustomKeyStoreRequest] params
    # @option params [String] :custom_key_store_id
    #   <p>Enter the ID of the custom key store you want to disconnect. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    # @example To disconnect a custom key store from its CloudHSM cluster
    #   # This example disconnects an AWS KMS custom key store from its backing key store. For an AWS CloudHSM key store, it disconnects the key store from its AWS CloudHSM cluster. For an external key store, it disconnects the key store from the external key store proxy that communicates with your external key manager. This operation doesn't return any data. To verify that the custom key store is disconnected, use the <code>DescribeCustomKeyStores</code> operation.
    #   params = {
    #     custom_key_store_id: "cks-1234567890abcdef0"
    #   }
    #   options = {}
    #   response = client.disconnect_custom_key_store(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_key_store_id: "CustomKeyStoreIdType", # required
    #   }
    #   options = {}
    #   response = client.disconnect_custom_key_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisconnectCustomKeyStoreResponse]
    def disconnect_custom_key_store(params = {}, options = {})
      request = build_request(:disconnect_custom_key_store, params)
      request.send_request(options)
    end

    # <p>Sets the key state of a KMS key to enabled. This allows you to use the KMS key for
    #       <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-cryptography.html#cryptographic-operations">cryptographic operations</a>. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:EnableKey</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>DisableKey</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::EnableKeyRequest] params
    # @option params [String] :key_id
    #   <p>Identifies the KMS key to enable.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @example To enable a KMS key
    #   # The following example enables the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.enable_key(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #   }
    #   options = {}
    #   response = client.enable_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def enable_key(params = {}, options = {})
      request = build_request(:enable_key, params)
      request.send_request(options)
    end

    # <p>Enables <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotating-keys-enable-disable.html">automatic rotation of the key material</a> of the specified symmetric encryption KMS
    #       key. </p>
    #          <p>By default, when you enable automatic rotation of a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-mgn-key">customer managed KMS key</a>, KMS
    #       rotates the key material of the KMS key one year (approximately 365 days) from the enable date
    #       and every year thereafter. You can use the optional <code>RotationPeriodInDays</code>
    #       parameter to specify a custom rotation period when you enable key rotation, or you can use
    #         <code>RotationPeriodInDays</code> to modify the rotation period of a key that you previously
    #       enabled automatic key rotation on.</p>
    #          <p>You can monitor rotation of the key material for your KMS keys in CloudTrail and Amazon CloudWatch. To disable rotation of the key material in a customer managed KMS key, use
    #       the <a>DisableKeyRotation</a> operation. You can use the <a>GetKeyRotationStatus</a> operation to identify any in progress rotations. You can
    #       use the <a>ListKeyRotations</a> operation to view the details of completed
    #       rotations.</p>
    #          <p>Automatic key rotation is supported only on symmetric encryption KMS keys. You cannot enable automatic rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric KMS keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC KMS keys</a>, KMS keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key material</a>, or KMS keys in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>. To enable or disable automatic rotation of a set of related <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#multi-region-rotate">multi-Region keys</a>, set the property on the primary key. </p>
    #          <p>You cannot enable or disable automatic rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-key">Amazon Web Services managed KMS keys</a>. KMS
    #       always rotates the key material of Amazon Web Services managed keys every year. Rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-key">Amazon Web Services owned KMS
    #         keys</a> is managed by the Amazon Web Services service that owns the key.</p>
    #          <note>
    #             <p>In May 2022, KMS changed the rotation schedule for Amazon Web Services managed keys from every three
    #         years (approximately 1,095 days) to every year (approximately 365 days).</p>
    #             <p>New Amazon Web Services managed keys are automatically rotated one year after they are created, and
    #         approximately every year thereafter. </p>
    #             <p>Existing Amazon Web Services managed keys are automatically rotated one year after their most recent
    #         rotation, and every year thereafter.</p>
    #          </note>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:EnableKeyRotation</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DisableKeyRotation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GetKeyRotationStatus</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListKeyRotations</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RotateKeyOnDemand</a>
    #                </p>
    #                <note>
    #                   <p>You can perform on-demand (<a>RotateKeyOnDemand</a>) rotation of the key
    #             material in customer managed KMS keys, regardless of whether or not automatic key
    #             rotation is enabled.</p>
    #                </note>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::EnableKeyRotationRequest] params
    # @option params [String] :key_id
    #   <p>Identifies a symmetric encryption KMS key. You cannot enable automatic rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric KMS keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC KMS keys</a>, KMS keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key material</a>, or KMS keys in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>. To enable or disable automatic rotation of a set of related <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#multi-region-rotate">multi-Region keys</a>, set the property on the primary key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [Integer] :rotation_period_in_days
    #   <p>Use this parameter to specify a custom period of time between each rotation date. If no
    #         value is specified, the default value is 365 days.</p>
    #            <p>The rotation period defines the number of days after you enable automatic key rotation
    #         that KMS will rotate your key material, and the number of days between each automatic
    #         rotation thereafter.</p>
    #            <p>You can use the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/conditions-kms.html#conditions-kms-rotation-period-in-days">
    #                  <code>kms:RotationPeriodInDays</code>
    #               </a> condition key to further constrain the
    #         values that principals can specify in the <code>RotationPeriodInDays</code> parameter.</p>
    #            <p> </p>
    # @example To enable automatic rotation of key material
    #   # The following example enables automatic rotation with a rotation period of 365 days for the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     rotation_period_in_days: 365
    #   }
    #   options = {}
    #   response = client.enable_key_rotation(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     rotation_period_in_days: 1
    #   }
    #   options = {}
    #   response = client.enable_key_rotation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def enable_key_rotation(params = {}, options = {})
      request = build_request(:enable_key_rotation, params)
      request.send_request(options)
    end

    # <p>Encrypts plaintext of up to 4,096 bytes using a KMS key. You can use a symmetric or
    #       asymmetric KMS key with a <code>KeyUsage</code> of <code>ENCRYPT_DECRYPT</code>.</p>
    #          <p>You can use this operation to encrypt small amounts of arbitrary data, such as a personal
    #       identifier or database password, or other sensitive information. You don't need to use the
    #         <code>Encrypt</code> operation to encrypt a data key. The <a>GenerateDataKey</a>
    #       and <a>GenerateDataKeyPair</a> operations return a plaintext data key and an
    #       encrypted copy of that data key.</p>
    #          <p>If you use a symmetric encryption KMS key, you can use an encryption context to add
    #       additional security to your encryption operation. If you specify an
    #         <code>EncryptionContext</code> when encrypting data, you must specify the same encryption
    #       context (a case-sensitive exact match) when decrypting the data. Otherwise, the request to
    #       decrypt fails with an <code>InvalidCiphertextException</code>. For more information, see
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption
    #         Context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>If you specify an asymmetric KMS key, you must also specify the encryption algorithm. The
    #       algorithm must be compatible with the KMS key spec.</p>
    #          <important>
    #             <p>When you use an asymmetric KMS key to encrypt or reencrypt data, be sure to record the KMS key and encryption algorithm that you choose. You will be required to provide the same KMS key and encryption algorithm when you decrypt the data. If the KMS key and algorithm do not match the values used to encrypt the data, the decrypt operation fails.</p>
    #             <p>You are not required to supply the key ID and encryption algorithm when you decrypt with symmetric encryption KMS keys because KMS stores this information in the ciphertext blob. KMS cannot store metadata in ciphertext generated with asymmetric keys. The standard format for asymmetric key ciphertext does not include configurable fields.</p>
    #          </important>
    #          <p>The maximum size of the data that you can encrypt varies with the type of KMS key and the
    #       encryption algorithm that you choose.</p>
    #          <ul>
    #             <li>
    #                <p>Symmetric encryption KMS keys</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>SYMMETRIC_DEFAULT</code>: 4096 bytes</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RSA_2048</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_1</code>: 214 bytes</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_256</code>: 190 bytes</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RSA_3072</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_1</code>: 342 bytes</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_256</code>: 318 bytes</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RSA_4096</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_1</code>: 470 bytes</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_256</code>: 446 bytes</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SM2PKE</code>: 1024 bytes (China Regions only)</p>
    #             </li>
    #          </ul>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:Encrypt</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::EncryptRequest] params
    # @option params [String] :key_id
    #   <p>Identifies the KMS key to use in the encryption operation. The KMS key must have a
    #           <code>KeyUsage</code> of <code>ENCRYPT_DECRYPT</code>. To find the <code>KeyUsage</code> of
    #         a KMS key, use the <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [String] :plaintext
    #   <p>Data to be encrypted.</p>
    # @option params [Hash<String, String>] :encryption_context
    #   <p>Specifies the encryption context that will be used to encrypt the data.
    #         An encryption context is valid only for <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-cryptography.html#cryptographic-operations">cryptographic operations</a> with a symmetric encryption KMS key. The standard asymmetric encryption algorithms and HMAC algorithms that KMS uses do not support an encryption context. </p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data. 
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :encryption_algorithm
    #   <p>Specifies the encryption algorithm that KMS will use to encrypt the plaintext message.
    #         The algorithm must be compatible with the KMS key that you specify.</p>
    #            <p>This parameter is required only for asymmetric KMS keys. The default value,
    #           <code>SYMMETRIC_DEFAULT</code>, is the algorithm used for symmetric encryption KMS keys. If
    #         you are using an asymmetric KMS key, we recommend RSAES_OAEP_SHA_256.</p>
    #            <p>The SM2PKE algorithm is only available in China Regions.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To encrypt data with a symmetric encryption KMS key
    #   # The following example encrypts data with the specified symmetric encryption KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     plaintext: "<binary data>"
    #   }
    #   options = {}
    #   response = client.encrypt(params, options)
    #   response.to_h #=>
    #   {
    #     ciphertext_blob: "<binary data>",
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     encryption_algorithm: SYMMETRIC_DEFAULT
    #   }
    # @example To encrypt data with an asymmetric encryption KMS key
    #   # The following example encrypts data with the specified RSA asymmetric KMS key. When you encrypt with an asymmetric key, you must specify the encryption algorithm.
    #   params = {
    #     key_id: "0987dcba-09fe-87dc-65ba-ab0987654321",
    #     plaintext: "<binary data>",
    #     encryption_algorithm: RSAES_OAEP_SHA_256
    #   }
    #   options = {}
    #   response = client.encrypt(params, options)
    #   response.to_h #=>
    #   {
    #     ciphertext_blob: "<binary data>",
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     encryption_algorithm: RSAES_OAEP_SHA_256
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     plaintext: "data", # required
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue"
    #     },
    #     grant_tokens: ["GrantTokenType"],
    #     encryption_algorithm: "SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"],
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.encrypt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ciphertext_blob: "data",
    #     key_id: "KeyIdType",
    #     encryption_algorithm: "SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   }
    # @return [Types::EncryptResponse]
    def encrypt(params = {}, options = {})
      request = build_request(:encrypt, params)
      request.send_request(options)
    end

    # <p>Returns a unique symmetric data key for use outside of KMS. This operation returns a
    #       plaintext copy of the data key and a copy that is encrypted under a symmetric encryption KMS
    #       key that you specify. The bytes in the plaintext key are random; they are not related to the
    #       caller or the KMS key. You can use the plaintext key to encrypt your data outside of KMS and
    #       store the encrypted data key with the encrypted data.</p>
    #          <p>To generate a data key, specify the symmetric encryption KMS key that will be used to
    #       encrypt the data key. You cannot use an asymmetric KMS key to encrypt data keys. To get the
    #       type of your KMS key, use the <a>DescribeKey</a> operation.</p>
    #          <p>You must also specify the length of the data key. Use either the <code>KeySpec</code> or
    #         <code>NumberOfBytes</code> parameters (but not both). For 128-bit and 256-bit data keys, use
    #       the <code>KeySpec</code> parameter.</p>
    #          <p>To generate a 128-bit SM4 data key (China Regions only), specify a <code>KeySpec</code>
    #       value of <code>AES_128</code> or a <code>NumberOfBytes</code> value of <code>16</code>. The
    #       symmetric encryption key used in China Regions to encrypt your data key is an SM4 encryption
    #       key.</p>
    #          <p>To get only an encrypted copy of the data key, use <a>GenerateDataKeyWithoutPlaintext</a>. To generate an asymmetric data key pair, use
    #       the <a>GenerateDataKeyPair</a> or <a>GenerateDataKeyPairWithoutPlaintext</a> operation. To get a cryptographically secure
    #       random byte string, use <a>GenerateRandom</a>.</p>
    #          <p>You can use an optional encryption context to add additional security to the encryption
    #       operation. If you specify an <code>EncryptionContext</code>, you must specify the same
    #       encryption context (a case-sensitive exact match) when decrypting the encrypted data key.
    #       Otherwise, the request to decrypt fails with an <code>InvalidCiphertextException</code>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption Context</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <code>GenerateDataKey</code> also supports <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html">Amazon Web Services Nitro Enclaves</a>, which provide an
    #       isolated compute environment in Amazon EC2. To call <code>GenerateDataKey</code> for an Amazon Web Services Nitro
    #       enclave or NitroTPM, use the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK. Use the <code>Recipient</code> parameter
    #       to provide the attestation document for the attested environment. <code>GenerateDataKey</code> returns a
    #       copy of the data key encrypted under the specified KMS key, as usual. But instead of a
    #       plaintext copy of the data key, the response includes a copy of the data key encrypted under
    #       the public key from the attestation document (<code>CiphertextForRecipient</code>).
    #       For information about the interaction between KMS and Amazon Web Services Nitro Enclaves or Amazon Web Services NitroTPM, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/cryptographic-attestation.html">Cryptographic attestation support in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>How to use your data key</b>
    #          </p>
    #          <p>We recommend that you use the following pattern to encrypt data locally in your
    #       application. You can write your own code or use a client-side encryption library, such as the
    #         <a href="https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/">Amazon Web Services Encryption SDK</a>, the
    #         <a href="https://docs.aws.amazon.com/dynamodb-encryption-client/latest/devguide/">Amazon DynamoDB Encryption Client</a>,
    #       or <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon S3
    #         client-side encryption</a> to do these tasks for you.</p>
    #          <p>To encrypt data outside of KMS:</p>
    #          <ol>
    #             <li>
    #                <p>Use the <code>GenerateDataKey</code> operation to get a data key.</p>
    #             </li>
    #             <li>
    #                <p>Use the plaintext data key (in the <code>Plaintext</code> field of the response) to
    #           encrypt your data outside of KMS. Then erase the plaintext data key from memory.</p>
    #             </li>
    #             <li>
    #                <p>Store the encrypted data key (in the <code>CiphertextBlob</code> field of the
    #           response) with the encrypted data.</p>
    #             </li>
    #          </ol>
    #          <p>To decrypt data outside of KMS:</p>
    #          <ol>
    #             <li>
    #                <p>Use the <a>Decrypt</a> operation to decrypt the encrypted data key. The
    #           operation returns a plaintext copy of the data key.</p>
    #             </li>
    #             <li>
    #                <p>Use the plaintext data key to decrypt data outside of KMS, then erase the plaintext
    #           data key from memory.</p>
    #             </li>
    #          </ol>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateDataKey</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPairWithoutPlaintext</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyWithoutPlaintext</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::GenerateDataKeyRequest] params
    # @option params [String] :key_id
    #   <p>Specifies the symmetric encryption KMS key that encrypts the data key. You cannot specify
    #         an asymmetric KMS key or a KMS key in a custom key store. To get the type and origin of your
    #         KMS key, use the <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [Hash<String, String>] :encryption_context
    #   <p>Specifies the encryption context that will be used when encrypting the data key.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data. 
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Integer] :number_of_bytes
    #   <p>Specifies the length of the data key in bytes. For example, use the value 64 to generate a
    #         512-bit data key (64 bytes is 512 bits). For 128-bit (16-byte) and 256-bit (32-byte) data
    #         keys, use the <code>KeySpec</code> parameter.</p>
    #            <p>You must specify either the <code>KeySpec</code> or the <code>NumberOfBytes</code>
    #         parameter (but not both) in every <code>GenerateDataKey</code> request.</p>
    # @option params [String] :key_spec
    #   <p>Specifies the length of the data key. Use <code>AES_128</code> to generate a 128-bit
    #         symmetric key, or <code>AES_256</code> to generate a 256-bit symmetric key.</p>
    #            <p>You must specify either the <code>KeySpec</code> or the <code>NumberOfBytes</code>
    #         parameter (but not both) in every <code>GenerateDataKey</code> request.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Types::RecipientInfo] :recipient
    #   <p>A signed <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave-how.html#term-attestdoc">attestation document</a> from
    #         an Amazon Web Services Nitro enclave or NitroTPM, and the encryption algorithm to use with the public key in the attestation document. The
    #         only valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>. </p>
    #            <p>This parameter supports the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK for Amazon Web Services Nitro Enclaves. It supports 
    #         any Amazon Web Services SDK for Amazon Web Services NitroTPM.
    #       </p>
    #            <p>When you use this parameter, instead of returning the plaintext data key, KMS encrypts
    #         the plaintext data key under the public key in the attestation document, and returns the
    #         resulting ciphertext in the <code>CiphertextForRecipient</code> field in the response. This
    #         ciphertext can be decrypted only with the private key in the enclave. The
    #           <code>CiphertextBlob</code> field in the response contains a copy of the data key encrypted
    #         under the KMS key specified by the <code>KeyId</code> parameter. The <code>Plaintext</code>
    #         field in the response is null or empty.</p>
    #            <p>For information about the interaction between KMS and Amazon Web Services Nitro Enclaves or Amazon Web Services NitroTPM, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/cryptographic-attestation.html">Cryptographic attestation support in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To generate a data key
    #   # The following example generates a 256-bit symmetric data encryption key (data key) in two formats. One is the unencrypted (plainext) data key, and the other is the data key encrypted with the specified KMS key.
    #   params = {
    #     key_id: "alias/ExampleAlias",
    #     key_spec: AES_256
    #   }
    #   options = {}
    #   response = client.generate_data_key(params, options)
    #   response.to_h #=>
    #   {
    #     ciphertext_blob: "<binary data>",
    #     plaintext: "<binary data>",
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_material_id: "0b7fd7ddbac6eef27907413567cad8c810e2883dc8a7534067a82ee1142fc1e6"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue"
    #     },
    #     number_of_bytes: 1,
    #     key_spec: "AES_256" # One of: ["AES_256", "AES_128"],
    #     grant_tokens: ["GrantTokenType"],
    #     recipient: {
    #       key_encryption_algorithm: "RSAES_OAEP_SHA_256" # One of: ["RSAES_OAEP_SHA_256"],
    #       attestation_document: "data"
    #     },
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.generate_data_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ciphertext_blob: "data",
    #     plaintext: "data",
    #     key_id: "KeyIdType",
    #     ciphertext_for_recipient: "data",
    #     key_material_id: "BackingKeyIdType"
    #   }
    # @return [Types::GenerateDataKeyResponse]
    def generate_data_key(params = {}, options = {})
      request = build_request(:generate_data_key, params)
      request.send_request(options)
    end

    # <p>Returns a unique asymmetric data key pair for use outside of KMS. This operation returns
    #       a plaintext public key, a plaintext private key, and a copy of the private key that is
    #       encrypted under the symmetric encryption KMS key you specify. You can use the data key pair to
    #       perform asymmetric cryptography and implement digital signatures outside of KMS. The bytes
    #       in the keys are random; they are not related to the caller or to the KMS key that is used to
    #       encrypt the private key. </p>
    #          <p>You can use the public key that <code>GenerateDataKeyPair</code> returns to encrypt data
    #       or verify a signature outside of KMS. Then, store the encrypted private key with the data.
    #       When you are ready to decrypt data or sign a message, you can use the <a>Decrypt</a> operation to decrypt the encrypted private key.</p>
    #          <p>To generate a data key pair, you must specify a symmetric encryption KMS key to encrypt
    #       the private key in a data key pair. You cannot use an asymmetric KMS key or a KMS key in a
    #       custom key store. To get the type and origin of your KMS key, use the <a>DescribeKey</a> operation. </p>
    #          <p>Use the <code>KeyPairSpec</code> parameter to choose an RSA or Elliptic Curve (ECC) data
    #       key pair. In China Regions, you can also choose an SM2 data key pair. KMS recommends that
    #       you use ECC key pairs for signing, and use RSA and SM2 key pairs for either encryption or
    #       signing, but not both. However, KMS cannot enforce any restrictions on the use of data key
    #       pairs outside of KMS.</p>
    #          <p>If you are using the data key pair to encrypt data, or for any operation where you don't
    #       immediately need a private key, consider using the <a>GenerateDataKeyPairWithoutPlaintext</a> operation.
    #         <code>GenerateDataKeyPairWithoutPlaintext</code> returns a plaintext public key and an
    #       encrypted private key, but omits the plaintext private key that you need only to decrypt
    #       ciphertext or sign a message. Later, when you need to decrypt the data or sign a message, use
    #       the <a>Decrypt</a> operation to decrypt the encrypted private key in the data key
    #       pair.</p>
    #          <p>
    #             <code>GenerateDataKeyPair</code> returns a unique data key pair for each request. The
    #       bytes in the keys are random; they are not related to the caller or the KMS key that is used
    #       to encrypt the private key. The public key is a DER-encoded X.509 SubjectPublicKeyInfo, as
    #       specified in <a href="https://tools.ietf.org/html/rfc5280">RFC 5280</a>. The private
    #       key is a DER-encoded PKCS8 PrivateKeyInfo, as specified in <a href="https://tools.ietf.org/html/rfc5958">RFC 5958</a>.</p>
    #          <p>
    #             <code>GenerateDataKeyPair</code> also supports <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html">Amazon Web Services Nitro Enclaves</a>, which provide an
    #       isolated compute environment in Amazon EC2. To call <code>GenerateDataKeyPair</code> for an Amazon Web Services
    #       Nitro enclave or NitroTPM, use the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK. Use the <code>Recipient</code>
    #       parameter to provide the attestation document for the attested environment.
    #         <code>GenerateDataKeyPair</code> returns the public data key and a copy of the private data
    #       key encrypted under the specified KMS key, as usual. But instead of a plaintext copy of the
    #       private data key (<code>PrivateKeyPlaintext</code>), the response includes a copy of the
    #       private data key encrypted under the public key from the attestation document
    #         (<code>CiphertextForRecipient</code>). For information about the interaction between KMS and Amazon Web Services Nitro Enclaves or Amazon Web Services NitroTPM, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/cryptographic-attestation.html">Cryptographic attestation support in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>You can use an optional encryption context to add additional security to the encryption
    #       operation. If you specify an <code>EncryptionContext</code>, you must specify the same
    #       encryption context (a case-sensitive exact match) when decrypting the encrypted data key.
    #       Otherwise, the request to decrypt fails with an <code>InvalidCiphertextException</code>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption Context</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateDataKeyPair</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPairWithoutPlaintext</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyWithoutPlaintext</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::GenerateDataKeyPairRequest] params
    # @option params [Hash<String, String>] :encryption_context
    #   <p>Specifies the encryption context that will be used when encrypting the private key in the
    #         data key pair.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data. 
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :key_id
    #   <p>Specifies the symmetric encryption KMS key that encrypts the private key in the data key
    #         pair. You cannot specify an asymmetric KMS key or a KMS key in a custom key store. To get the
    #         type and origin of your KMS key, use the <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [String] :key_pair_spec
    #   <p>Determines the type of data key pair that is generated. </p>
    #            <p>The KMS rule that restricts the use of asymmetric RSA and SM2 KMS keys to encrypt and decrypt or to sign and verify (but not both), the rule that permits you to use ECC KMS keys only to sign and verify, and the rule that permits you to use ML-DSA key pairs to sign and verify only are not effective on data key pairs, which are used outside of KMS. The SM2 key spec is only available in China Regions.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Types::RecipientInfo] :recipient
    #   <p>A signed <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave-how.html#term-attestdoc">attestation document</a> from
    #         an Amazon Web Services Nitro enclave or NitroTPM, and the encryption algorithm to use with the public key in the attestation document. The
    #         only valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>. </p>
    #            <p>This parameter only supports attestation documents for Amazon Web Services Nitro Enclaves or Amazon Web Services NitroTPM. To call
    #         GenerateDataKeyPair generate an attestation document use either <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> for an Amazon Web Services Nitro Enclaves or
    #         <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/attestation-get-doc.html">Amazon Web Services NitroTPM tools</a> for Amazon Web Services NitroTPM. Then use the Recipient parameter from any Amazon Web Services SDK to provide the
    #         attestation document for the attested environment.</p>
    #            <p>When you use this parameter, instead of returning a plaintext copy of the private data
    #         key, KMS encrypts the plaintext private data key under the public key in the attestation
    #         document, and returns the resulting ciphertext in the <code>CiphertextForRecipient</code>
    #         field in the response. This ciphertext can be decrypted only with the private key in the
    #         attested environment. The <code>CiphertextBlob</code> field in the response contains a copy of the private
    #         data key encrypted under the KMS key specified by the <code>KeyId</code> parameter. The
    #           <code>PrivateKeyPlaintext</code> field in the response is null or empty.</p>
    #            <p>For information about the interaction between KMS and Amazon Web Services Nitro Enclaves or Amazon Web Services NitroTPM, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/cryptographic-attestation.html">Cryptographic attestation support in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To generate an RSA key pair for encryption and decryption
    #   # This example generates an RSA data key pair for encryption and decryption. The operation returns a plaintext public key and private key, and a copy of the private key that is encrypted under a symmetric encryption KMS key that you specify.
    #   params = {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_pair_spec: RSA_3072
    #   }
    #   options = {}
    #   response = client.generate_data_key_pair(params, options)
    #   response.to_h #=>
    #   {
    #     private_key_ciphertext_blob: "<binary data>",
    #     private_key_plaintext: "<binary data>",
    #     public_key: "<binary data>",
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_material_id: "0b7fd7ddbac6eef27907413567cad8c810e2883dc8a7534067a82ee1142fc1e6",
    #     key_pair_spec: RSA_3072
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue"
    #     },
    #     key_id: "KeyIdType", # required
    #     key_pair_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"], # required
    #     grant_tokens: ["GrantTokenType"],
    #     recipient: {
    #       key_encryption_algorithm: "RSAES_OAEP_SHA_256" # One of: ["RSAES_OAEP_SHA_256"],
    #       attestation_document: "data"
    #     },
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.generate_data_key_pair(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     private_key_ciphertext_blob: "data",
    #     private_key_plaintext: "data",
    #     public_key: "data",
    #     key_id: "KeyIdType",
    #     key_pair_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"],
    #     ciphertext_for_recipient: "data",
    #     key_material_id: "BackingKeyIdType"
    #   }
    # @return [Types::GenerateDataKeyPairResponse]
    def generate_data_key_pair(params = {}, options = {})
      request = build_request(:generate_data_key_pair, params)
      request.send_request(options)
    end

    # <p>Returns a unique asymmetric data key pair for use outside of KMS. This operation returns
    #       a plaintext public key and a copy of the private key that is encrypted under the symmetric
    #       encryption KMS key you specify. Unlike <a>GenerateDataKeyPair</a>, this operation
    #       does not return a plaintext private key. The bytes in the keys are random; they are not
    #       related to the caller or to the KMS key that is used to encrypt the private key. </p>
    #          <p>You can use the public key that <code>GenerateDataKeyPairWithoutPlaintext</code> returns
    #       to encrypt data or verify a signature outside of KMS. Then, store the encrypted private key
    #       with the data. When you are ready to decrypt data or sign a message, you can use the <a>Decrypt</a> operation to decrypt the encrypted private key.</p>
    #          <p>To generate a data key pair, you must specify a symmetric encryption KMS key to encrypt
    #       the private key in a data key pair. You cannot use an asymmetric KMS key or a KMS key in a
    #       custom key store. To get the type and origin of your KMS key, use the <a>DescribeKey</a> operation. </p>
    #          <p>Use the <code>KeyPairSpec</code> parameter to choose an RSA or Elliptic Curve (ECC) data
    #       key pair. In China Regions, you can also choose an SM2 data key pair. KMS recommends that
    #       you use ECC key pairs for signing, and use RSA and SM2 key pairs for either encryption or
    #       signing, but not both. However, KMS cannot enforce any restrictions on the use of data key
    #       pairs outside of KMS.</p>
    #          <p>
    #             <code>GenerateDataKeyPairWithoutPlaintext</code> returns a unique data key pair for each
    #       request. The bytes in the key are not related to the caller or KMS key that is used to encrypt
    #       the private key. The public key is a DER-encoded X.509 SubjectPublicKeyInfo, as specified in
    #         <a href="https://tools.ietf.org/html/rfc5280">RFC 5280</a>.</p>
    #          <p>You can use an optional encryption context to add additional security to the encryption
    #       operation. If you specify an <code>EncryptionContext</code>, you must specify the same
    #       encryption context (a case-sensitive exact match) when decrypting the encrypted data key.
    #       Otherwise, the request to decrypt fails with an <code>InvalidCiphertextException</code>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption Context</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateDataKeyPairWithoutPlaintext</a> (key
    #       policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyWithoutPlaintext</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::GenerateDataKeyPairWithoutPlaintextRequest] params
    # @option params [Hash<String, String>] :encryption_context
    #   <p>Specifies the encryption context that will be used when encrypting the private key in the
    #         data key pair.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data. 
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :key_id
    #   <p>Specifies the symmetric encryption KMS key that encrypts the private key in the data key
    #         pair. You cannot specify an asymmetric KMS key or a KMS key in a custom key store. To get the
    #         type and origin of your KMS key, use the <a>DescribeKey</a> operation. </p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [String] :key_pair_spec
    #   <p>Determines the type of data key pair that is generated.</p>
    #            <p>The KMS rule that restricts the use of asymmetric RSA and SM2 KMS keys to encrypt and decrypt or to sign and verify (but not both), the rule that permits you to use ECC KMS keys only to sign and verify, and the rule that permits you to use ML-DSA key pairs to sign and verify only are not effective on data key pairs, which are used outside of KMS. The SM2 key spec is only available in China Regions.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To generate an asymmetric data key pair without a plaintext key
    #   # This example returns an asymmetric elliptic curve (ECC) data key pair. The private key is encrypted under the symmetric encryption KMS key that you specify. This operation doesn't return a plaintext (unencrypted) private key.
    #   params = {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_pair_spec: ECC_NIST_P521
    #   }
    #   options = {}
    #   response = client.generate_data_key_pair_without_plaintext(params, options)
    #   response.to_h #=>
    #   {
    #     private_key_ciphertext_blob: "<binary data>",
    #     public_key: "<binary data>",
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_material_id: "0b7fd7ddbac6eef27907413567cad8c810e2883dc8a7534067a82ee1142fc1e6",
    #     key_pair_spec: ECC_NIST_P521
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue"
    #     },
    #     key_id: "KeyIdType", # required
    #     key_pair_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"], # required
    #     grant_tokens: ["GrantTokenType"],
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.generate_data_key_pair_without_plaintext(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     private_key_ciphertext_blob: "data",
    #     public_key: "data",
    #     key_id: "KeyIdType",
    #     key_pair_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"],
    #     key_material_id: "BackingKeyIdType"
    #   }
    # @return [Types::GenerateDataKeyPairWithoutPlaintextResponse]
    def generate_data_key_pair_without_plaintext(params = {}, options = {})
      request = build_request(:generate_data_key_pair_without_plaintext, params)
      request.send_request(options)
    end

    # <p>Returns a unique symmetric data key for use outside of KMS. This operation returns a
    #       data key that is encrypted under a symmetric encryption KMS key that you specify. The bytes in
    #       the key are random; they are not related to the caller or to the KMS key.</p>
    #          <p>
    #             <code>GenerateDataKeyWithoutPlaintext</code> is identical to the <a>GenerateDataKey</a> operation except that it does not return a plaintext copy of the
    #       data key. </p>
    #          <p>This operation is useful for systems that need to encrypt data at some point, but not
    #       immediately. When you need to encrypt the data, you call the <a>Decrypt</a>
    #       operation on the encrypted copy of the key.</p>
    #          <p>It's also useful in distributed systems with different levels of trust. For example, you
    #       might store encrypted data in containers. One component of your system creates new containers
    #       and stores an encrypted data key with each container. Then, a different component puts the
    #       data into the containers. That component first decrypts the data key, uses the plaintext data
    #       key to encrypt data, puts the encrypted data into the container, and then destroys the
    #       plaintext data key. In this system, the component that creates the containers never sees the
    #       plaintext data key.</p>
    #          <p>To request an asymmetric data key pair, use the <a>GenerateDataKeyPair</a> or
    #         <a>GenerateDataKeyPairWithoutPlaintext</a> operations.</p>
    #          <p>To generate a data key, you must specify the symmetric encryption KMS key that is used to
    #       encrypt the data key. You cannot use an asymmetric KMS key or a key in a custom key store to
    #       generate a data key. To get the type of your KMS key, use the <a>DescribeKey</a>
    #       operation.</p>
    #          <p>You must also specify the length of the data key. Use either the <code>KeySpec</code> or
    #         <code>NumberOfBytes</code> parameters (but not both). For 128-bit and 256-bit data keys, use
    #       the <code>KeySpec</code> parameter.</p>
    #          <p>To generate an SM4 data key (China Regions only), specify a <code>KeySpec</code> value of
    #         <code>AES_128</code> or <code>NumberOfBytes</code> value of <code>16</code>. The symmetric
    #       encryption key used in China Regions to encrypt your data key is an SM4 encryption key.</p>
    #          <p>If the operation succeeds, you will find the encrypted copy of the data key in the
    #         <code>CiphertextBlob</code> field.</p>
    #          <p>You can use an optional encryption context to add additional security to the encryption
    #       operation. If you specify an <code>EncryptionContext</code>, you must specify the same
    #       encryption context (a case-sensitive exact match) when decrypting the encrypted data key.
    #       Otherwise, the request to decrypt fails with an <code>InvalidCiphertextException</code>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption Context</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateDataKeyWithoutPlaintext</a> (key
    #       policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPairWithoutPlaintext</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::GenerateDataKeyWithoutPlaintextRequest] params
    # @option params [String] :key_id
    #   <p>Specifies the symmetric encryption KMS key that encrypts the data key. You cannot specify
    #         an asymmetric KMS key or a KMS key in a custom key store. To get the type and origin of your
    #         KMS key, use the <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [Hash<String, String>] :encryption_context
    #   <p>Specifies the encryption context that will be used when encrypting the data key.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data. 
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :key_spec
    #   <p>The length of the data key. Use <code>AES_128</code> to generate a 128-bit symmetric key,
    #         or <code>AES_256</code> to generate a 256-bit symmetric key.</p>
    # @option params [Integer] :number_of_bytes
    #   <p>The length of the data key in bytes. For example, use the value 64 to generate a 512-bit
    #         data key (64 bytes is 512 bits). For common key lengths (128-bit and 256-bit symmetric keys),
    #         we recommend that you use the <code>KeySpec</code> field instead of this one.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To generate an encrypted data key
    #   # The following example generates an encrypted copy of a 256-bit symmetric data encryption key (data key). The data key is encrypted with the specified KMS key.
    #   params = {
    #     key_id: "alias/ExampleAlias",
    #     key_spec: AES_256
    #   }
    #   options = {}
    #   response = client.generate_data_key_without_plaintext(params, options)
    #   response.to_h #=>
    #   {
    #     ciphertext_blob: "<binary data>",
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_material_id: "0b7fd7ddbac6eef27907413567cad8c810e2883dc8a7534067a82ee1142fc1e6"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue"
    #     },
    #     key_spec: "AES_256" # One of: ["AES_256", "AES_128"],
    #     number_of_bytes: 1,
    #     grant_tokens: ["GrantTokenType"],
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.generate_data_key_without_plaintext(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ciphertext_blob: "data",
    #     key_id: "KeyIdType",
    #     key_material_id: "BackingKeyIdType"
    #   }
    # @return [Types::GenerateDataKeyWithoutPlaintextResponse]
    def generate_data_key_without_plaintext(params = {}, options = {})
      request = build_request(:generate_data_key_without_plaintext, params)
      request.send_request(options)
    end

    # <p>Generates a hash-based message authentication code (HMAC) for a message using an HMAC KMS
    #       key and a MAC algorithm that the key supports. HMAC KMS keys and the HMAC algorithms that
    #       KMS uses conform to industry standards defined in <a href="https://datatracker.ietf.org/doc/html/rfc2104">RFC 2104</a>.</p>
    #          <p>You can use value that GenerateMac returns in the <a>VerifyMac</a> operation to
    #       demonstrate that the original message has not changed. Also, because a secret key is used to
    #       create the hash, you can verify that the party that generated the hash has the required secret
    #       key. You can also use the raw result to implement HMAC-based algorithms such as key derivation
    #       functions. This operation is part of KMS support for HMAC KMS keys. For
    #       details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC keys in
    #         KMS</a> in the <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>.</p>
    #          <note>
    #             <p>Best practices recommend that you limit the time during which any signing mechanism,
    #         including an HMAC, is effective. This deters an attack where the actor uses a signed message
    #         to establish validity repeatedly or long after the message is superseded. HMAC tags do not
    #         include a timestamp, but you can include a timestamp in the token or message to help you
    #         detect when its time to refresh the HMAC. </p>
    #          </note>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateMac</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>VerifyMac</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::GenerateMacRequest] params
    # @option params [String] :message
    #   <p>The message to be hashed. Specify a message of up to 4,096 bytes. </p>
    #            <p>
    #               <code>GenerateMac</code> and <a>VerifyMac</a> do not provide special handling
    #         for message digests. If you generate an HMAC for a hash digest of a message, you must verify
    #         the HMAC of the same hash digest.</p>
    # @option params [String] :key_id
    #   <p>The HMAC KMS key to use in the operation. The MAC algorithm computes the HMAC for the
    #         message and the key as described in <a href="https://datatracker.ietf.org/doc/html/rfc2104">RFC 2104</a>.</p>
    #            <p>To identify an HMAC KMS key, use the <a>DescribeKey</a> operation and see the
    #           <code>KeySpec</code> field in the response.</p>
    # @option params [String] :mac_algorithm
    #   <p>The MAC algorithm used in the operation.</p>
    #            <p> The algorithm must be compatible with the HMAC KMS key that you specify. To find the MAC
    #         algorithms that your HMAC KMS key supports, use the <a>DescribeKey</a> operation
    #         and see the <code>MacAlgorithms</code> field in the <code>DescribeKey</code> response.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To generate an HMAC for a message
    #   # This example generates an HMAC for a message, an HMAC KMS key, and a MAC algorithm. The algorithm must be supported by the specified HMAC KMS key.
    #   params = {
    #     message: "Hello World",
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     mac_algorithm: HMAC_SHA_384
    #   }
    #   options = {}
    #   response = client.generate_mac(params, options)
    #   response.to_h #=>
    #   {
    #     mac: "<HMAC_TAG>",
    #     mac_algorithm: HMAC_SHA_384,
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     message: "data", # required
    #     key_id: "KeyIdType", # required
    #     mac_algorithm: "HMAC_SHA_224" # One of: ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"], # required
    #     grant_tokens: ["GrantTokenType"],
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.generate_mac(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mac: "data",
    #     mac_algorithm: "HMAC_SHA_224" # One of: ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"],
    #     key_id: "KeyIdType"
    #   }
    # @return [Types::GenerateMacResponse]
    def generate_mac(params = {}, options = {})
      request = build_request(:generate_mac, params)
      request.send_request(options)
    end

    # <p>Returns a random byte string that is cryptographically secure.</p>
    #          <p>You must use the <code>NumberOfBytes</code> parameter to specify the length of the random
    #       byte string. There is no default value for string length.</p>
    #          <p>By default, the random byte string is generated in KMS. To generate the byte string in
    #       the CloudHSM cluster associated with an CloudHSM key store, use the <code>CustomKeyStoreId</code>
    #       parameter.</p>
    #          <p>
    #             <code>GenerateRandom</code> also supports <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html">Amazon Web Services Nitro Enclaves</a>, which provide an
    #       isolated compute environment in Amazon EC2. To call <code>GenerateRandom</code> for a Nitro
    #       enclave or NitroTPM, use the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK. Use the <code>Recipient</code> parameter
    #       to provide the attestation document for the attested environment. Instead of plaintext bytes, the response
    #       includes the plaintext bytes encrypted under the public key from the attestation document
    #         (<code>CiphertextForRecipient</code>). For information about the interaction between KMS and Amazon Web Services Nitro Enclaves or Amazon Web Services NitroTPM, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/cryptographic-attestation.html">Cryptographic attestation support in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>For more information about entropy and random number generation, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-cryptography.html#entropy-and-random-numbers">Entropy and random number generation</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Not applicable.
    #         <code>GenerateRandom</code> does not use any account-specific resources, such as KMS
    #       keys.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateRandom</a> (IAM policy)</p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::GenerateRandomRequest] params
    # @option params [Integer] :number_of_bytes
    #   <p>The length of the random byte string. This parameter is required.</p>
    # @option params [String] :custom_key_store_id
    #   <p>Generates the random byte string in the CloudHSM cluster that is associated with the
    #         specified CloudHSM key store. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #            <p>External key store IDs are not valid for this parameter. If you specify the ID of an
    #         external key store, <code>GenerateRandom</code> throws an
    #           <code>UnsupportedOperationException</code>.</p>
    # @option params [Types::RecipientInfo] :recipient
    #   <p>A signed <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave-how.html#term-attestdoc">attestation document</a> from
    #         an Amazon Web Services Nitro enclave or NitroTPM, and the encryption algorithm to use with the public key in the attestation document. The
    #         only valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>. </p>
    #            <p>This parameter supports the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK for Amazon Web Services Nitro Enclaves. It supports 
    #         any Amazon Web Services SDK for Amazon Web Services NitroTPM.
    #       </p>
    #            <p>When you use this parameter, instead of returning plaintext bytes, KMS encrypts the
    #         plaintext bytes under the public key in the attestation document, and returns the resulting
    #         ciphertext in the <code>CiphertextForRecipient</code> field in the response. This ciphertext
    #         can be decrypted only with the private key in the attested environment. The <code>Plaintext</code> field in
    #         the response is null or empty.</p>
    #            <p>For information about the interaction between KMS and Amazon Web Services Nitro Enclaves or Amazon Web Services NitroTPM, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/cryptographic-attestation.html">Cryptographic attestation support in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To generate random data
    #   # The following example generates 32 bytes of random data.
    #   params = {
    #     number_of_bytes: 32
    #   }
    #   options = {}
    #   response = client.generate_random(params, options)
    #   response.to_h #=>
    #   {
    #     plaintext: "<binary data>"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     number_of_bytes: 1,
    #     custom_key_store_id: "CustomKeyStoreIdType",
    #     recipient: {
    #       key_encryption_algorithm: "RSAES_OAEP_SHA_256" # One of: ["RSAES_OAEP_SHA_256"],
    #       attestation_document: "data"
    #     }
    #   }
    #   options = {}
    #   response = client.generate_random(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     plaintext: "data",
    #     ciphertext_for_recipient: "data"
    #   }
    # @return [Types::GenerateRandomResponse]
    def generate_random(params = {}, options = {})
      request = build_request(:generate_random, params)
      request.send_request(options)
    end

    # <p>Gets a key policy attached to the specified KMS key.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GetKeyPolicy</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html">PutKeyPolicy</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::GetKeyPolicyRequest] params
    # @option params [String] :key_id
    #   <p>Gets the key policy for the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :policy_name
    #   <p>Specifies the name of the key policy. If no policy name is specified, the default value is
    #           <code>default</code>. The only valid name is <code>default</code>. To get the names of key
    #         policies, use <a>ListKeyPolicies</a>.</p>
    # @example To retrieve a key policy
    #   # The following example retrieves the key policy for the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     policy_name: "default"
    #   }
    #   options = {}
    #   response = client.get_key_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy: "{\n  \"Version\" : \"2012-10-17\",\n  \"Id\" : \"key-default-1\",\n  \"Statement\" : [ {\n    \"Sid\" : \"Enable IAM User Permissions\",\n    \"Effect\" : \"Allow\",\n    \"Principal\" : {\n      \"AWS\" : \"arn:aws:iam::111122223333:root\"\n    },\n    \"Action\" : \"kms:*\",\n    \"Resource\" : \"*\"\n  } ]\n}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     policy_name: "PolicyNameType"
    #   }
    #   options = {}
    #   response = client.get_key_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "PolicyType",
    #     policy_name: "PolicyNameType"
    #   }
    # @return [Types::GetKeyPolicyResponse]
    def get_key_policy(params = {}, options = {})
      request = build_request(:get_key_policy, params)
      request.send_request(options)
    end

    # <p>Provides detailed information about the rotation status for a KMS key, including whether
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotating-keys-enable-disable.html">automatic
    #         rotation of the key material</a> is enabled for the specified KMS key, the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotation-period">rotation
    #         period</a>, and the next scheduled rotation date.</p>
    #          <p>Automatic key rotation is supported only on symmetric encryption KMS keys.
    #       You cannot enable automatic rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric KMS keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC KMS keys</a>, KMS keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key material</a>, or KMS keys in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>. To enable or disable automatic rotation of a set of related <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#multi-region-rotate">multi-Region keys</a>, set the property on the primary key.</p>
    #          <p>You can enable (<a>EnableKeyRotation</a>) and disable automatic rotation (<a>DisableKeyRotation</a>) of the key material in customer managed KMS keys. Key
    #       material rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-key">Amazon Web Services managed KMS keys</a> is not
    #       configurable. KMS always rotates the key material in Amazon Web Services managed KMS keys every year. The
    #       key rotation status for Amazon Web Services managed KMS keys is always <code>true</code>.</p>
    #          <p>You can perform on-demand (<a>RotateKeyOnDemand</a>) rotation of the key
    #       material in customer managed KMS keys, regardless of whether or not automatic key rotation is
    #       enabled. You can use GetKeyRotationStatus to identify the date and time that an in progress
    #       on-demand rotation was initiated. You can use <a>ListKeyRotations</a> to view the
    #       details of completed rotations.</p>
    #          <note>
    #             <p>In May 2022, KMS changed the rotation schedule for Amazon Web Services managed keys from every three
    #         years to every year. For details, see <a>EnableKeyRotation</a>.</p>
    #          </note>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <ul>
    #             <li>
    #                <p>Disabled: The key rotation status does not change when you disable a KMS key. However,
    #           while the KMS key is disabled, KMS does not rotate the key material. When you re-enable
    #           the KMS key, rotation resumes. If the key material in the re-enabled KMS key hasn't been
    #           rotated in one year, KMS rotates it immediately, and every year thereafter. If it's been
    #           less than a year since the key material in the re-enabled KMS key was rotated, the KMS key
    #           resumes its prior rotation schedule.</p>
    #             </li>
    #             <li>
    #                <p>Pending deletion: While a KMS key is pending deletion, its key rotation status is
    #             <code>false</code> and KMS does not rotate the key material. If you cancel the
    #           deletion, the original key rotation status returns to <code>true</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation on a KMS key in a different Amazon Web Services account, specify the key
    #   ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GetKeyRotationStatus</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DisableKeyRotation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>EnableKeyRotation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListKeyRotations</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RotateKeyOnDemand</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::GetKeyRotationStatusRequest] params
    # @option params [String] :key_id
    #   <p>Gets the rotation status for the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key. To specify a KMS key in a
    #   different Amazon Web Services account, you must use the key ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #   }
    #   options = {}
    #   response = client.get_key_rotation_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_rotation_enabled: false,
    #     key_id: "KeyIdType",
    #     rotation_period_in_days: 1,
    #     next_rotation_date: Time.now,
    #     on_demand_rotation_start_date: Time.now
    #   }
    # @return [Types::GetKeyRotationStatusResponse]
    def get_key_rotation_status(params = {}, options = {})
      request = build_request(:get_key_rotation_status, params)
      request.send_request(options)
    end

    # <p>Returns the public key and an import token you need to import or reimport key material for
    #       a KMS key. </p>
    #          <p>By default, KMS keys are created with key material that KMS generates. This operation
    #       supports <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing key
    #         material</a>, an advanced feature that lets you generate and import the cryptographic
    #       key material for a KMS key.</p>
    #          <p>Before calling <code>GetParametersForImport</code>, use the <a>CreateKey</a>
    #       operation with an <code>Origin</code> value of <code>EXTERNAL</code> to create a KMS key with
    #       no key material. You can import key material for a symmetric encryption KMS key, HMAC KMS key,
    #       asymmetric encryption KMS key, or asymmetric signing KMS key. You can also import key material
    #       into a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">multi-Region key</a> of any supported type. However, you can't import key material into
    #       a KMS key in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom
    #         key store</a>. You can also use <code>GetParametersForImport</code> to get a public key
    #       and import token to <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-import-key-material.html#reimport-key-material">reimport
    #         the original key material</a> into a KMS key whose key material expired or was
    #       deleted.</p>
    #          <p>
    #             <code>GetParametersForImport</code> returns the items that you need to import your key
    #       material.</p>
    #          <ul>
    #             <li>
    #                <p>The public key (or "wrapping key") of an RSA key pair that KMS generates.</p>
    #                <p>You will use this public key to encrypt ("wrap") your key material while it's in
    #           transit to KMS. </p>
    #             </li>
    #             <li>
    #                <p>A import token that ensures that KMS can decrypt your key material and associate it
    #           with the correct KMS key.</p>
    #             </li>
    #          </ul>
    #          <p>The public key and its import token are permanently linked and must be used together. Each
    #       public key and import token set is valid for 24 hours. The expiration date and time appear in
    #       the <code>ParametersValidTo</code> field in the <code>GetParametersForImport</code> response.
    #       You cannot use an expired public key or import token in an <a>ImportKeyMaterial</a>
    #       request. If your key and token expire, send another <code>GetParametersForImport</code>
    #       request.</p>
    #          <p>
    #             <code>GetParametersForImport</code> requires the following information:</p>
    #          <ul>
    #             <li>
    #                <p>The key ID of the KMS key for which you are importing the key material.</p>
    #             </li>
    #             <li>
    #                <p>The key spec of the public key ("wrapping key") that you will use to encrypt your key
    #           material during import.</p>
    #             </li>
    #             <li>
    #                <p>The wrapping algorithm that you will use with the public key to encrypt your key
    #           material.</p>
    #             </li>
    #          </ul>
    #          <p>You can use the same or a different public key spec and wrapping algorithm each time you
    #       import or reimport the same key material. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GetParametersForImport</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ImportKeyMaterial</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteImportedKeyMaterial</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::GetParametersForImportRequest] params
    # @option params [String] :key_id
    #   <p>The identifier of the KMS key that will be associated with the imported key material. The
    #           <code>Origin</code> of the KMS key must be <code>EXTERNAL</code>.</p>
    #            <p>All KMS key types are supported, including multi-Region keys. However, you cannot import
    #         key material into a KMS key in a custom key store.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :wrapping_algorithm
    #   <p>The algorithm you will use with the RSA public key (<code>PublicKey</code>) in the
    #         response to protect your key material during import. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-get-public-key-and-token.html#select-wrapping-algorithm">Select a wrapping algorithm</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>For RSA_AES wrapping algorithms, you encrypt your key material with an AES key that you
    #         generate, then encrypt your AES key with the RSA public key from KMS. For RSAES wrapping
    #         algorithms, you encrypt your key material directly with the RSA public key from KMS.</p>
    #            <p>The wrapping algorithms that you can use depend on the type of key material that you are
    #         importing. To import an RSA private key, you must use an RSA_AES wrapping algorithm.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RSA_AES_KEY_WRAP_SHA_256</b> — Supported for
    #             wrapping RSA and ECC key material.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RSA_AES_KEY_WRAP_SHA_1</b> — Supported for
    #             wrapping RSA and ECC key material.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RSAES_OAEP_SHA_256</b> — Supported for all types
    #             of key material, except RSA key material (private key).</p>
    #                  <p>You cannot use the RSAES_OAEP_SHA_256 wrapping algorithm with the RSA_2048 wrapping
    #             key spec to wrap ECC_NIST_P521 key material.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RSAES_OAEP_SHA_1</b> — Supported for all types of
    #             key material, except RSA key material (private key).</p>
    #                  <p>You cannot use the RSAES_OAEP_SHA_1 wrapping algorithm with the RSA_2048 wrapping key
    #             spec to wrap ECC_NIST_P521 key material.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RSAES_PKCS1_V1_5</b> (Deprecated) — As of October
    #             10, 2023, KMS does not support the RSAES_PKCS1_V1_5 wrapping algorithm.</p>
    #               </li>
    #            </ul>
    # @option params [String] :wrapping_key_spec
    #   <p>The type of RSA public key to return in the response. You will use this wrapping key with
    #         the specified wrapping algorithm to protect your key material during import. </p>
    #            <p>Use the longest RSA wrapping key that is practical. </p>
    #            <p>You cannot use an RSA_2048 public key to directly wrap an ECC_NIST_P521 private key.
    #         Instead, use an RSA_AES wrapping algorithm or choose a longer RSA public key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     wrapping_algorithm: "RSAES_PKCS1_V1_5" # One of: ["RSAES_PKCS1_V1_5", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "RSA_AES_KEY_WRAP_SHA_1", "RSA_AES_KEY_WRAP_SHA_256", "SM2PKE"], # required
    #     wrapping_key_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "SM2"], # required
    #   }
    #   options = {}
    #   response = client.get_parameters_for_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType",
    #     import_token: "data",
    #     public_key: "data",
    #     parameters_valid_to: Time.now
    #   }
    # @return [Types::GetParametersForImportResponse]
    def get_parameters_for_import(params = {}, options = {})
      request = build_request(:get_parameters_for_import, params)
      request.send_request(options)
    end

    # <p>Returns the public key of an asymmetric KMS key. Unlike the private key of a asymmetric
    #       KMS key, which never leaves KMS unencrypted, callers with <code>kms:GetPublicKey</code>
    #       permission can download the public key of an asymmetric KMS key. You can share the public key
    #       to allow others to encrypt messages and verify signatures outside of KMS.
    #       For information about asymmetric KMS keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>You do not need to download the public key. Instead, you can use the public key within
    #       KMS by calling the <a>Encrypt</a>, <a>ReEncrypt</a>, or <a>Verify</a> operations with the identifier of an asymmetric KMS key. When you use the
    #       public key within KMS, you benefit from the authentication, authorization, and logging that
    #       are part of every KMS operation. You also reduce of risk of encrypting data that cannot be
    #       decrypted. These features are not effective outside of KMS.</p>
    #          <p>To help you use the public key safely outside of KMS, <code>GetPublicKey</code> returns
    #       important information about the public key in the response, including:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeySpec">KeySpec</a>: The type of key material in the public key, such as
    #             <code>RSA_4096</code> or <code>ECC_NIST_P521</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeyUsage">KeyUsage</a>: Whether the key is used for encryption, signing, or deriving a shared
    #           secret.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-EncryptionAlgorithms">EncryptionAlgorithms</a>, <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeyAgreementAlgorithms">KeyAgreementAlgorithms</a>, or <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-SigningAlgorithms">SigningAlgorithms</a>: A list of the encryption algorithms, key agreement
    #           algorithms, or signing algorithms for the key.</p>
    #             </li>
    #          </ul>
    #          <p>Although KMS cannot enforce these restrictions on external operations, it is crucial
    #       that you use this information to prevent the public key from being used improperly. For
    #       example, you can prevent a public signing key from being used encrypt data, or prevent a
    #       public key from being used with an encryption algorithm that is not supported by KMS. You
    #       can also avoid errors, such as using the wrong signing algorithm in a verification
    #       operation.</p>
    #          <p>To verify a signature outside of KMS with an SM2 public key (China Regions only), you
    #       must specify the distinguishing ID. By default, KMS uses <code>1234567812345678</code> as
    #       the distinguishing ID. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/offline-operations.html#key-spec-sm-offline-verification">Offline
    #         verification with SM2 key pairs</a>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GetPublicKey</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>CreateKey</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::GetPublicKeyRequest] params
    # @option params [String] :key_id
    #   <p>Identifies the asymmetric KMS key that includes the public key.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @example To download the public key of an asymmetric KMS key
    #   # This example gets the public key of an asymmetric RSA KMS key used for encryption and decryption. The operation returns the key spec, key usage, and encryption or signing algorithms to help you use the public key correctly outside of AWS KMS.
    #   params = {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321"
    #   }
    #   options = {}
    #   response = client.get_public_key(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     public_key: "<binary data>",
    #     customer_master_key_spec: RSA_4096,
    #     key_usage: ENCRYPT_DECRYPT,
    #     encryption_algorithms: [
    #       RSAES_OAEP_SHA_1,
    #       RSAES_OAEP_SHA_256
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     grant_tokens: ["GrantTokenType"]
    #   }
    #   options = {}
    #   response = client.get_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType",
    #     public_key: "data",
    #     customer_master_key_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"],
    #     key_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2", "ML_DSA_44", "ML_DSA_65", "ML_DSA_87"],
    #     key_usage: "SIGN_VERIFY" # One of: ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC", "KEY_AGREEMENT"],
    #     encryption_algorithms: ["SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]],
    #     signing_algorithms: ["RSASSA_PSS_SHA_256" # One of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA", "ML_DSA_SHAKE_256"]],
    #     key_agreement_algorithms: ["ECDH" # One of: ["ECDH"]]
    #   }
    # @return [Types::GetPublicKeyResponse]
    def get_public_key(params = {}, options = {})
      request = build_request(:get_public_key, params)
      request.send_request(options)
    end

    # <p>Imports or reimports key material into an existing KMS key that was created without key
    #       material. You can also use this operation to set or update the expiration model and expiration
    #       date of the imported key material.</p>
    #          <p>By default, KMS creates KMS keys with key material that it generates. You can also
    #       generate and import your own key material. For more information about importing key material,
    #       see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing key
    #         material</a>.</p>
    #          <p>For asymmetric, HMAC and multi-Region keys, you cannot change the key material after the
    #       initial import. You can import multiple key materials into single-Region, symmetric encryption
    #       keys and rotate the key material on demand using <code>RotateKeyOnDemand</code>.</p>
    #          <p>After you import key material, you can <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-import-key-material.html#reimport-key-material">reimport
    #         the same key material</a> into that KMS key or, if the key supports on-demand rotation,
    #       import new key material. You can use the <code>ImportType</code> parameter to indicate whether
    #       you are importing new key material or re-importing previously imported key material. You might
    #       reimport key material to replace key material that expired or key material that you deleted.
    #       You might also reimport key material to change the expiration model or expiration date of the
    #       key material.</p>
    #          <p>Each time you import key material into KMS, you can determine whether
    #         (<code>ExpirationModel</code>) and when (<code>ValidTo</code>) the key material expires. To
    #       change the expiration of your key material, you must import it again, either by calling
    #         <code>ImportKeyMaterial</code> or using the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-import-key-material.html#importing-keys-import-key-material-console">import features</a> of the KMS console.</p>
    #          <p>Before you call <code>ImportKeyMaterial</code>, complete these steps:</p>
    #          <ul>
    #             <li>
    #                <p>Create or identify a KMS key with <code>EXTERNAL</code> origin, which indicates that
    #           the KMS key is designed for imported key material. </p>
    #                <p>To create a new KMS key for imported key material, call the <a>CreateKey</a> operation with an <code>Origin</code> value of <code>EXTERNAL</code>. You can create a
    #           symmetric encryption KMS key, HMAC KMS key, asymmetric encryption KMS key, asymmetric key
    #           agreement key, or asymmetric signing KMS key. You can also import key material into a
    #             <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">multi-Region key</a> of any supported type. However, you can't import key material
    #           into a KMS key in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>.</p>
    #             </li>
    #             <li>
    #                <p>Call the <a>GetParametersForImport</a> operation to get a public key and
    #           import token set for importing key material. </p>
    #             </li>
    #             <li>
    #                <p>Use the public key in the <a>GetParametersForImport</a> response to encrypt
    #           your key material.</p>
    #             </li>
    #          </ul>
    #          <p> Then, in an <code>ImportKeyMaterial</code> request, you submit your encrypted key
    #       material and import token. When calling this operation, you must specify the following
    #       values:</p>
    #          <ul>
    #             <li>
    #                <p>The key ID or key ARN of the KMS key to associate with the imported key material. Its
    #             <code>Origin</code> must be <code>EXTERNAL</code> and its <code>KeyState</code> must be
    #             <code>PendingImport</code>. You cannot perform this operation on a KMS key in a
    #           <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>, or on a KMS key in a different Amazon Web Services account. To get the
    #             <code>Origin</code> and <code>KeyState</code> of a KMS key, call <a>DescribeKey</a>.</p>
    #             </li>
    #             <li>
    #                <p>The encrypted key material. </p>
    #             </li>
    #             <li>
    #                <p>The import token that <a>GetParametersForImport</a> returned. You must use
    #           a public key and token from the same <code>GetParametersForImport</code> response.</p>
    #             </li>
    #             <li>
    #                <p>Whether the key material expires (<code>ExpirationModel</code>) and, if so, when
    #             (<code>ValidTo</code>). For help with this choice, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-import-key-material.html#importing-keys-expiration">Setting an expiration time</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #                <p>If you set an expiration date, KMS deletes the key material from the KMS key on the
    #           specified date, making the KMS key unusable. To use the KMS key in cryptographic
    #           operations again, you must reimport the same key material. However, you can delete and
    #           reimport the key material at any time, including before the key material expires. Each
    #           time you reimport, you can eliminate or reset the expiration time.</p>
    #             </li>
    #          </ul>
    #          <p>When this operation is successful, the key state of the KMS key changes from
    #         <code>PendingImport</code> to <code>Enabled</code>, and you can use the KMS key in
    #       cryptographic operations. For single-Region, symmetric encryption keys, you will need to
    #       import all of the key materials associated with the KMS key to change its state to
    #         <code>Enabled</code>. Use the <code>ListKeyRotations</code> operation to list the ID and
    #       import state of each key material associated with a KMS key.</p>
    #          <p>If this operation fails, use the exception to help determine the problem. If the error is
    #       related to the key material, the import token, or wrapping key, use <a>GetParametersForImport</a> to get a new public key and import token for the KMS key
    #       and repeat the import procedure. For help, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-conceptual.html">Create a KMS key with imported key
    #         material</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ImportKeyMaterial</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DeleteImportedKeyMaterial</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GetParametersForImport</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListKeyRotations</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RotateKeyOnDemand</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ImportKeyMaterialRequest] params
    # @option params [String] :key_id
    #   <p>The identifier of the KMS key that will be associated with the imported key material. This
    #         must be the same KMS key specified in the <code>KeyID</code> parameter of the corresponding
    #           <a>GetParametersForImport</a> request. The <code>Origin</code> of the KMS key
    #         must be <code>EXTERNAL</code> and its <code>KeyState</code> must be
    #         <code>PendingImport</code>. </p>
    #            <p>The KMS key can be a symmetric encryption KMS key, HMAC KMS key, asymmetric encryption KMS
    #         key, or asymmetric signing KMS key, including a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">multi-Region key</a> of any supported
    #         type. You cannot perform this operation on a KMS key in a custom key store, or on a KMS key in
    #         a different Amazon Web Services account.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :import_token
    #   <p>The import token that you received in the response to a previous <a>GetParametersForImport</a> request. It must be from the same response that contained
    #         the public key that you used to encrypt the key material.</p>
    # @option params [String] :encrypted_key_material
    #   <p>The encrypted key material to import. The key material must be encrypted under the public
    #         wrapping key that <a>GetParametersForImport</a> returned, using the wrapping
    #         algorithm that you specified in the same <code>GetParametersForImport</code> request.</p>
    # @option params [Time] :valid_to
    #   <p>The date and time when the imported key material expires. This parameter is required when
    #         the value of the <code>ExpirationModel</code> parameter is <code>KEY_MATERIAL_EXPIRES</code>.
    #         Otherwise it is not valid.</p>
    #            <p>The value of this parameter must be a future date and time. The maximum value is 365 days
    #         from the request date.</p>
    #            <p>When the key material expires, KMS deletes the key material from the KMS key. Without
    #         its key material, the KMS key is unusable. To use the KMS key in cryptographic operations, you
    #         must reimport the same key material.</p>
    #            <p>You cannot change the <code>ExpirationModel</code> or <code>ValidTo</code> values for the
    #         current import after the request completes. To change either value, you must delete (<a>DeleteImportedKeyMaterial</a>) and reimport the key material.</p>
    # @option params [String] :expiration_model
    #   <p>Specifies whether the key material expires. The default is
    #           <code>KEY_MATERIAL_EXPIRES</code>. For help with this choice, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-import-key-material.html#importing-keys-expiration">Setting
    #           an expiration time</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>When the value of <code>ExpirationModel</code> is <code>KEY_MATERIAL_EXPIRES</code>, you
    #         must specify a value for the <code>ValidTo</code> parameter. When value is
    #           <code>KEY_MATERIAL_DOES_NOT_EXPIRE</code>, you must omit the <code>ValidTo</code>
    #         parameter.</p>
    #            <p>You cannot change the <code>ExpirationModel</code> or <code>ValidTo</code> values for the
    #         current import after the request completes. To change either value, you must reimport the key
    #         material.</p>
    # @option params [String] :import_type
    #   <p>Indicates whether the key material being imported is previously associated with this KMS
    #         key or not. This parameter is optional and only usable with symmetric encryption keys. If no
    #         key material has ever been imported into the KMS key, and this parameter is omitted, the
    #         parameter defaults to <code>NEW_KEY_MATERIAL</code>. After the first key material is imported,
    #         if this parameter is omitted then the parameter defaults to
    #         <code>EXISTING_KEY_MATERIAL</code>.</p>
    # @option params [String] :key_material_description
    #   <p>Description for the key material being imported. This parameter is optional and only
    #         usable with symmetric encryption keys. If you do not specify a key material description, KMS
    #         retains the value you specified when you last imported the same key material into this KMS
    #         key.</p>
    # @option params [String] :key_material_id
    #   <p>Identifies the key material being imported. This parameter is optional and only usable
    #         with symmetric encryption keys. You cannot specify a key material ID with
    #           <code>ImportType</code> set to <code>NEW_KEY_MATERIAL</code>. Whenever you import key
    #         material into a symmetric encryption key, KMS assigns a unique identifier to the key
    #         material based on the KMS key ID and the imported key material. When you re-import key
    #         material with a specified key material ID, KMS:</p>
    #            <ul>
    #               <li>
    #                  <p>Computes the identifier for the key material</p>
    #               </li>
    #               <li>
    #                  <p>Matches the computed identifier against the specified key material ID</p>
    #               </li>
    #               <li>
    #                  <p>Verifies that the key material ID is already associated with the KMS key</p>
    #               </li>
    #            </ul>
    #            <p>To get the list of key material IDs associated with a KMS key, use <a>ListKeyRotations</a>.</p>
    # @example To import key material into a KMS key
    #   # The following example imports key material into the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     import_token: "<binary data>",
    #     encrypted_key_material: "<binary data>",
    #     expiration_model: KEY_MATERIAL_DOES_NOT_EXPIRE
    #   }
    #   options = {}
    #   response = client.import_key_material(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_material_id: "0b7fd7ddbac6eef27907413567cad8c810e2883dc8a7534067a82ee1142fc1e6"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     import_token: "data", # required
    #     encrypted_key_material: "data", # required
    #     valid_to: Time.now,
    #     expiration_model: "KEY_MATERIAL_EXPIRES" # One of: ["KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"],
    #     import_type: "NEW_KEY_MATERIAL" # One of: ["NEW_KEY_MATERIAL", "EXISTING_KEY_MATERIAL"],
    #     key_material_description: "KeyMaterialDescriptionType",
    #     key_material_id: "BackingKeyIdType"
    #   }
    #   options = {}
    #   response = client.import_key_material(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType",
    #     key_material_id: "BackingKeyIdType"
    #   }
    # @return [Types::ImportKeyMaterialResponse]
    def import_key_material(params = {}, options = {})
      request = build_request(:import_key_material, params)
      request.send_request(options)
    end

    # <p>Gets a list of aliases in the caller's Amazon Web Services account and region. For more information
    #       about aliases, see <a>CreateAlias</a>.</p>
    #          <p>By default, the <code>ListAliases</code> operation returns all aliases in the account and
    #       region. To get only the aliases associated with a particular KMS key, use the
    #         <code>KeyId</code> parameter.</p>
    #          <p>The <code>ListAliases</code> response can include aliases that you created and associated
    #       with your customer managed keys, and aliases that Amazon Web Services created and associated with Amazon Web Services
    #       managed keys in your account. You can recognize Amazon Web Services aliases because their names have the
    #       format <code>aws/<service-name></code>, such as <code>aws/dynamodb</code>.</p>
    #          <p>The response might also include aliases that have no <code>TargetKeyId</code> field. These
    #       are predefined aliases that Amazon Web Services has created but has not yet associated with a KMS key.
    #       Aliases that Amazon Web Services creates in your account, including predefined aliases, do not count against
    #       your <a href="https://docs.aws.amazon.com/kms/latest/developerguide/resource-limits.html#aliases-per-key">KMS
    #         aliases quota</a>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. <code>ListAliases</code> does not
    #       return aliases in other Amazon Web Services accounts.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListAliases</a> (IAM policy)</p>
    #          <p>For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/alias-access.html">Controlling access to aliases</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateAlias</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ListAliasesRequest] params
    # @option params [String] :key_id
    #   <p>Lists only aliases that are associated with the specified KMS key. Enter a KMS key in your
    #         Amazon Web Services account. </p>
    #            <p>This parameter is optional. If you omit it, <code>ListAliases</code> returns all aliases
    #         in the account and Region.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [Integer] :limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between 1
    #       and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    # @option params [String] :marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    # @example To list aliases
    #   # The following example lists aliases.
    #   params = {}
    #   options = {}
    #   response = client.list_aliases(params, options)
    #   response.to_h #=>
    #   {
    #     aliases: [
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/acm",
    #         alias_name: "alias/aws/acm",
    #         target_key_id: "da03f6f7-d279-427a-9cae-de48d07e5b66"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/ebs",
    #         alias_name: "alias/aws/ebs",
    #         target_key_id: "25a217e7-7170-4b8c-8bf6-045ea5f70e5b"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/rds",
    #         alias_name: "alias/aws/rds",
    #         target_key_id: "7ec3104e-c3f2-4b5c-bf42-bfc4772c6685"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/redshift",
    #         alias_name: "alias/aws/redshift",
    #         target_key_id: "08f7a25a-69e2-4fb5-8f10-393db27326fa"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/s3",
    #         alias_name: "alias/aws/s3",
    #         target_key_id: "d2b0f1a3-580d-4f79-b836-bc983be8cfa5"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/example1",
    #         alias_name: "alias/example1",
    #         target_key_id: "4da1e216-62d0-46c5-a7c0-5f3a3d2f8046"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/example2",
    #         alias_name: "alias/example2",
    #         target_key_id: "f32fef59-2cc2-445b-8573-2d73328acbee"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/example3",
    #         alias_name: "alias/example3",
    #         target_key_id: "1374ef38-d34e-4d5f-b2c9-4e0daee38855"
    #       }
    #     ],
    #     truncated: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType",
    #     limit: 1,
    #     marker: "MarkerType"
    #   }
    #   options = {}
    #   response = client.list_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aliases: [
    #       {
    #         alias_name: "AliasNameType",
    #         alias_arn: "ArnType",
    #         target_key_id: "KeyIdType",
    #         creation_date: Time.now,
    #         last_updated_date: Time.now
    #       }
    #     ],
    #     next_marker: "MarkerType",
    #     truncated: false
    #   }
    # @return [Types::ListAliasesResponse]
    def list_aliases(params = {}, options = {})
      request = build_request(:list_aliases, params)
      request.send_request(options)
    end

    # <p>Gets a list of all grants for the specified KMS key. </p>
    #          <p>You must specify the KMS key in all requests. You can filter the grant list by grant ID or
    #       grantee principal.</p>
    #          <p>For detailed information about grants, including grant terminology, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants in KMS</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. For examples of creating grants in several
    #       programming languages, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/example_kms_CreateGrant_section.html">Use CreateGrant with an Amazon Web Services SDK or CLI</a>. </p>
    #          <note>
    #             <p>The <code>GranteePrincipal</code> field in the <code>ListGrants</code> response usually contains the
    #         user or role designated as the grantee principal in the grant. However, when the grantee
    #         principal in the grant is an Amazon Web Services service, the <code>GranteePrincipal</code> field contains
    #         the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services">service
    #           principal</a>, which might represent several different grantee principals.</p>
    #          </note>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation on a KMS key in a different Amazon Web Services account, specify the key
    #   ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListGrants</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListRetirableGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RetireGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RevokeGrant</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ListGrantsRequest] params
    # @option params [Integer] :limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between 1
    #       and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    # @option params [String] :marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    # @option params [String] :key_id
    #   <p>Returns only grants for the specified KMS key. This parameter is required.</p>
    #            <p>Specify the key ID or key ARN of the KMS key. To specify a KMS key in a
    #   different Amazon Web Services account, you must use the key ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :grant_id
    #   <p>Returns only the grant with the specified grant ID. The grant ID uniquely identifies the
    #         grant. </p>
    # @option params [String] :grantee_principal
    #   <p>Returns only grants where the specified principal is the grantee principal for the
    #         grant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     marker: "MarkerType",
    #     key_id: "KeyIdType", # required
    #     grant_id: "GrantIdType",
    #     grantee_principal: "PrincipalIdType"
    #   }
    #   options = {}
    #   response = client.list_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grants: [
    #       {
    #         key_id: "KeyIdType",
    #         grant_id: "GrantIdType",
    #         name: "GrantNameType",
    #         creation_date: Time.now,
    #         grantee_principal: "PrincipalIdType",
    #         retiring_principal: "PrincipalIdType",
    #         issuing_account: "PrincipalIdType",
    #         operations: ["Decrypt" # One of: ["Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "Sign", "Verify", "GetPublicKey", "CreateGrant", "RetireGrant", "DescribeKey", "GenerateDataKeyPair", "GenerateDataKeyPairWithoutPlaintext", "GenerateMac", "VerifyMac", "DeriveSharedSecret"]],
    #         constraints: {
    #           encryption_context_subset: {
    #             "EncryptionContextKey" => "EncryptionContextValue"
    #           },
    #           encryption_context_equals: {
    #             "EncryptionContextKey" => "EncryptionContextValue"
    #           }
    #         }
    #       }
    #     ],
    #     next_marker: "MarkerType",
    #     truncated: false
    #   }
    # @return [Types::ListGrantsOutput]
    def list_grants(params = {}, options = {})
      request = build_request(:list_grants, params)
      request.send_request(options)
    end

    # <p>Gets the names of the key policies that are attached to a KMS key. This operation is
    #       designed to get policy names that you can use in a <a>GetKeyPolicy</a> operation.
    #       However, the only valid policy name is <code>default</code>. </p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListKeyPolicies</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>GetKeyPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html">PutKeyPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ListKeyPoliciesRequest] params
    # @option params [String] :key_id
    #   <p>Gets the names of key policies for the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [Integer] :limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between
    #       1 and 1000, inclusive. If you do not include a value, it defaults to 100.</p>
    #            <p>Only one policy can be attached to a key.</p>
    # @option params [String] :marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    # @example To list key policies for a KMS key
    #   # The following example lists key policies for the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.list_key_policies(params, options)
    #   response.to_h #=>
    #   {
    #     policy_names: [
    #       "default"
    #     ],
    #     truncated: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     limit: 1,
    #     marker: "MarkerType"
    #   }
    #   options = {}
    #   response = client.list_key_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_names: ["PolicyNameType"],
    #     next_marker: "MarkerType",
    #     truncated: false
    #   }
    # @return [Types::ListKeyPoliciesResponse]
    def list_key_policies(params = {}, options = {})
      request = build_request(:list_key_policies, params)
      request.send_request(options)
    end

    # <p>Returns information about the key materials associated with the specified KMS key. You can
    #       use the optional <code>IncludeKeyMaterial</code> parameter to control which key materials are
    #       included in the response.</p>
    #          <p>You must specify the KMS key in all requests. You can refine the key rotations list by
    #       limiting the number of rotations returned.</p>
    #          <p>For detailed information about automatic and on-demand key rotations, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">Rotate KMS keys</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListKeyRotations</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>EnableKeyRotation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteImportedKeyMaterial</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisableKeyRotation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GetKeyRotationStatus</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ImportKeyMaterial</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RotateKeyOnDemand</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ListKeyRotationsRequest] params
    # @option params [String] :key_id
    #   <p>Gets the key rotations for the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :include_key_material
    #   <p>Use this optional parameter to control which key materials associated with this key are
    #         listed in the response. The default value of this parameter is <code>ROTATIONS_ONLY</code>. If
    #         you omit this parameter, KMS returns information on the key materials created by automatic
    #         or on-demand key rotation. When you specify a value of <code>ALL_KEY_MATERIAL</code>, KMS
    #         adds the first key material and any imported key material pending rotation to the response.
    #         This parameter can only be used with KMS keys that support automatic or on-demand key
    #         rotation. </p>
    # @option params [Integer] :limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between
    #       1 and 1000, inclusive. If you do not include a value, it defaults to 100.</p>
    # @option params [String] :marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     include_key_material: "ALL_KEY_MATERIAL" # One of: ["ALL_KEY_MATERIAL", "ROTATIONS_ONLY"],
    #     limit: 1,
    #     marker: "MarkerType"
    #   }
    #   options = {}
    #   response = client.list_key_rotations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rotations: [
    #       {
    #         key_id: "KeyIdType",
    #         key_material_id: "BackingKeyIdType",
    #         key_material_description: "KeyMaterialDescriptionType",
    #         import_state: "IMPORTED" # One of: ["IMPORTED", "PENDING_IMPORT"],
    #         key_material_state: "NON_CURRENT" # One of: ["NON_CURRENT", "CURRENT", "PENDING_ROTATION"],
    #         expiration_model: "KEY_MATERIAL_EXPIRES" # One of: ["KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"],
    #         valid_to: Time.now,
    #         rotation_date: Time.now,
    #         rotation_type: "AUTOMATIC" # One of: ["AUTOMATIC", "ON_DEMAND"]
    #       }
    #     ],
    #     next_marker: "MarkerType",
    #     truncated: false
    #   }
    # @return [Types::ListKeyRotationsResponse]
    def list_key_rotations(params = {}, options = {})
      request = build_request(:list_key_rotations, params)
      request.send_request(options)
    end

    # <p>Gets a list of all KMS keys in the caller's Amazon Web Services account and Region.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListKeys</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListResourceTags</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ListKeysRequest] params
    # @option params [Integer] :limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between
    #       1 and 1000, inclusive. If you do not include a value, it defaults to 100.</p>
    # @option params [String] :marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    # @example To list KMS keys
    #   # The following example lists KMS keys.
    #   params = {}
    #   options = {}
    #   response = client.list_keys(params, options)
    #   response.to_h #=>
    #   {
    #     keys: [
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/0d990263-018e-4e65-a703-eff731de951e",
    #         key_id: "0d990263-018e-4e65-a703-eff731de951e"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/144be297-0ae1-44ac-9c8f-93cd8c82f841",
    #         key_id: "144be297-0ae1-44ac-9c8f-93cd8c82f841"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/21184251-b765-428e-b852-2c7353e72571",
    #         key_id: "21184251-b765-428e-b852-2c7353e72571"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/214fe92f-5b03-4ae1-b350-db2a45dbe10c",
    #         key_id: "214fe92f-5b03-4ae1-b350-db2a45dbe10c"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/339963f2-e523-49d3-af24-a0fe752aa458",
    #         key_id: "339963f2-e523-49d3-af24-a0fe752aa458"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/b776a44b-df37-4438-9be4-a27494e4271a",
    #         key_id: "b776a44b-df37-4438-9be4-a27494e4271a"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/deaf6c9e-cf2c-46a6-bf6d-0b6d487cffbb",
    #         key_id: "deaf6c9e-cf2c-46a6-bf6d-0b6d487cffbb"
    #       }
    #     ],
    #     truncated: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     marker: "MarkerType"
    #   }
    #   options = {}
    #   response = client.list_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     keys: [
    #       {
    #         key_id: "KeyIdType",
    #         key_arn: "ArnType"
    #       }
    #     ],
    #     next_marker: "MarkerType",
    #     truncated: false
    #   }
    # @return [Types::ListKeysResponse]
    def list_keys(params = {}, options = {})
      request = build_request(:list_keys, params)
      request.send_request(options)
    end

    # <p>Returns all tags on the specified KMS key.</p>
    #          <p>For general information about tags, including the format and syntax, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in
    #       the <i>Amazon Web Services General Reference</i>. For information about using
    #       tags in KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">Tags in
    #         KMS</a>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListResourceTags</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ReplicateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>TagResource</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UntagResource</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ListResourceTagsRequest] params
    # @option params [String] :key_id
    #   <p>Gets tags on the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [Integer] :limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between 1 and 50, inclusive. If
    #         you do not include a value, it defaults to 50.</p>
    # @option params [String] :marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    #            <p>Do not attempt to construct this value. Use only the value of <code>NextMarker</code> from
    #         the truncated response you just received.</p>
    # @example To list tags for a KMS key
    #   # The following example lists tags for a KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.list_resource_tags(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         tag_key: "CostCenter",
    #         tag_value: "87654"
    #       },
    #       {
    #         tag_key: "CreatedBy",
    #         tag_value: "ExampleUser"
    #       },
    #       {
    #         tag_key: "Purpose",
    #         tag_value: "Test"
    #       }
    #     ],
    #     truncated: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     limit: 1,
    #     marker: "MarkerType"
    #   }
    #   options = {}
    #   response = client.list_resource_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         tag_key: "TagKeyType", # required
    #         tag_value: "TagValueType", # required
    #       }
    #     ],
    #     next_marker: "MarkerType",
    #     truncated: false
    #   }
    # @return [Types::ListResourceTagsResponse]
    def list_resource_tags(params = {}, options = {})
      request = build_request(:list_resource_tags, params)
      request.send_request(options)
    end

    # <p>Returns information about all grants in the Amazon Web Services account and Region that have the
    #       specified retiring principal. </p>
    #          <p>You can specify any principal in your Amazon Web Services account. The grants that are returned include
    #       grants for KMS keys in your Amazon Web Services account and other Amazon Web Services accounts. You might use this
    #       operation to determine which grants you may retire. To retire a grant, use the <a>RetireGrant</a> operation.</p>
    #          <p>For detailed information about grants, including grant terminology, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants in KMS</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. For examples of creating grants in several
    #       programming languages, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/example_kms_CreateGrant_section.html">Use CreateGrant with an Amazon Web Services SDK or CLI</a>. </p>
    #          <p>
    #             <b>Cross-account use</b>: You must specify a principal in your
    #       Amazon Web Services account. This operation returns a list of grants where the retiring principal specified
    #       in the <code>ListRetirableGrants</code> request is the same retiring principal on the grant.
    #       This can include grants on KMS keys owned by other Amazon Web Services accounts, but you do not need
    #         <code>kms:ListRetirableGrants</code> permission (or any other additional permission) in any
    #       Amazon Web Services account other than your own.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListRetirableGrants</a> (IAM policy) in your
    #       Amazon Web Services account.</p>
    #          <note>
    #             <p>KMS authorizes <code>ListRetirableGrants</code> requests by evaluating the caller
    #         account's kms:ListRetirableGrants permissions. The authorized resource in
    #           <code>ListRetirableGrants</code> calls is the retiring principal specified in the request.
    #         KMS does not evaluate the caller's permissions to verify their access to any KMS keys or
    #         grants that might be returned by the <code>ListRetirableGrants</code> call.</p>
    #          </note>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RetireGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RevokeGrant</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ListRetirableGrantsRequest] params
    # @option params [Integer] :limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between 1
    #       and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    # @option params [String] :marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    # @option params [String] :retiring_principal
    #   <p>The retiring principal for which to list grants. Enter a principal in your
    #         Amazon Web Services account.</p>
    #            <p>To specify the retiring principal, use the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an
    #         Amazon Web Services principal. Valid principals include Amazon Web Services accounts, IAM users, IAM roles,
    #         federated users, and assumed role users. For help with the ARN syntax for a principal, see
    #           <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM ARNs</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     marker: "MarkerType",
    #     retiring_principal: "PrincipalIdType", # required
    #   }
    #   options = {}
    #   response = client.list_retirable_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grants: [
    #       {
    #         key_id: "KeyIdType",
    #         grant_id: "GrantIdType",
    #         name: "GrantNameType",
    #         creation_date: Time.now,
    #         grantee_principal: "PrincipalIdType",
    #         retiring_principal: "PrincipalIdType",
    #         issuing_account: "PrincipalIdType",
    #         operations: ["Decrypt" # One of: ["Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "Sign", "Verify", "GetPublicKey", "CreateGrant", "RetireGrant", "DescribeKey", "GenerateDataKeyPair", "GenerateDataKeyPairWithoutPlaintext", "GenerateMac", "VerifyMac", "DeriveSharedSecret"]],
    #         constraints: {
    #           encryption_context_subset: {
    #             "EncryptionContextKey" => "EncryptionContextValue"
    #           },
    #           encryption_context_equals: {
    #             "EncryptionContextKey" => "EncryptionContextValue"
    #           }
    #         }
    #       }
    #     ],
    #     next_marker: "MarkerType",
    #     truncated: false
    #   }
    # @return [Types::ListRetirableGrantsOutput]
    def list_retirable_grants(params = {}, options = {})
      request = build_request(:list_retirable_grants, params)
      request.send_request(options)
    end

    # <p>Attaches a key policy to the specified KMS key. </p>
    #          <p>For more information about key policies, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key Policies</a> in the <i>Key Management Service Developer Guide</i>.
    #       For help writing and formatting a JSON policy document, see the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM JSON Policy Reference</a> in the <i>
    #                <i>Identity and Access Management User Guide</i>
    #             </i>. For examples of adding a key policy in multiple programming languages,
    #       see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/example_kms_PutKeyPolicy_section.html">Use
    #         PutKeyPolicy with an Amazon Web Services SDK or CLI</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:PutKeyPolicy</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>GetKeyPolicy</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::PutKeyPolicyRequest] params
    # @option params [String] :key_id
    #   <p>Sets the key policy on the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :policy_name
    #   <p>The name of the key policy. If no policy name is specified, the default value is
    #           <code>default</code>. The only valid value is <code>default</code>.</p>
    # @option params [String] :policy
    #   <p>The key policy to attach to the KMS key.</p>
    #            <p>The key policy must meet the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>The key policy must allow the calling principal to make a
    #             subsequent <code>PutKeyPolicy</code> request on the KMS key.  This reduces the risk that
    #             the KMS key becomes unmanageable. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>. (To omit
    #             this condition, set <code>BypassPolicyLockoutSafetyCheck</code> to true.)</p>
    #               </li>
    #               <li>
    #                  <p>Each statement in the key policy must contain one or more principals. The principals
    #             in the key policy must exist and be visible to KMS. When you create a new Amazon Web Services
    #             principal, you might need to enforce a delay before including the new principal in a key
    #             policy because the new principal might not be immediately visible to KMS. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes that I make are not always immediately visible</a> in the <i>Amazon Web Services
    #               Identity and Access Management User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If either of the required <code>Resource</code> or <code>Action</code> elements are
    #           missing from a key policy statement, the policy statement has no effect. When a key policy
    #           statement is missing one of these elements, the KMS console correctly reports an error,
    #           but the <code>PutKeyPolicy</code> API request succeeds, even though the policy statement is
    #           ineffective.</p>
    #               <p>For more information on required key policy elements, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-overview.html#key-policy-elements">Elements in a key
    #             policy</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </note>
    #            <p>A key policy document can include only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Printable ASCII characters from the space character (<code>\u0020</code>) through the end of the ASCII character range.</p>
    #               </li>
    #               <li>
    #                  <p>Printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\u00FF</code>).</p>
    #               </li>
    #               <li>
    #                  <p>The tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and carriage return (<code>\u000D</code>) special characters</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If the key policy exceeds the length constraint, KMS returns a
    #             <code>LimitExceededException</code>.</p>
    #            </note>
    #            <p>For information about key policies, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key policies in KMS</a> in the
    #         <i>Key Management Service Developer Guide</i>.For help writing and formatting a JSON policy document, see the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM JSON Policy Reference</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   <p>Skips ("bypasses") the key policy lockout safety check. The default value is false.</p>
    #            <important>
    #               <p>Setting this value to true increases the risk that the KMS key becomes unmanageable. Do
    #           not set this value to true indiscriminately.</p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </important>
    #            <p>Use this parameter only when you intend to prevent the principal that is making the
    #         request from making a subsequent <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html">PutKeyPolicy</a>
    #         request on the KMS key.</p>
    # @example To attach a key policy to a KMS key
    #   # The following example attaches a key policy to the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     policy_name: "default",
    #     policy: "{\n    \"Version\": \"2012-10-17\",\n    \"Id\": \"custom-policy-2016-12-07\",\n    \"Statement\": [\n        {\n            \"Sid\": \"Enable IAM User Permissions\",\n            \"Effect\": \"Allow\",\n            \"Principal\": {\n                \"AWS\": \"arn:aws:iam::111122223333:root\"\n            },\n            \"Action\": \"kms:*\",\n            \"Resource\": \"*\"\n        },\n        {\n            \"Sid\": \"Allow access for Key Administrators\",\n            \"Effect\": \"Allow\",\n            \"Principal\": {\n                \"AWS\": [\n                    \"arn:aws:iam::111122223333:user/ExampleAdminUser\",\n                    \"arn:aws:iam::111122223333:role/ExampleAdminRole\"\n                ]\n            },\n            \"Action\": [\n                \"kms:Create*\",\n                \"kms:Describe*\",\n                \"kms:Enable*\",\n                \"kms:List*\",\n                \"kms:Put*\",\n                \"kms:Update*\",\n                \"kms:Revoke*\",\n                \"kms:Disable*\",\n                \"kms:Get*\",\n                \"kms:Delete*\",\n                \"kms:ScheduleKeyDeletion\",\n                \"kms:CancelKeyDeletion\"\n            ],\n            \"Resource\": \"*\"\n        },\n        {\n            \"Sid\": \"Allow use of the key\",\n            \"Effect\": \"Allow\",\n            \"Principal\": {\n                \"AWS\": \"arn:aws:iam::111122223333:role/ExamplePowerUserRole\"\n            },\n            \"Action\": [\n                \"kms:Encrypt\",\n                \"kms:Decrypt\",\n                \"kms:ReEncrypt*\",\n                \"kms:GenerateDataKey*\",\n                \"kms:DescribeKey\"\n            ],\n            \"Resource\": \"*\"\n        },\n        {\n            \"Sid\": \"Allow attachment of persistent resources\",\n            \"Effect\": \"Allow\",\n            \"Principal\": {\n                \"AWS\": \"arn:aws:iam::111122223333:role/ExamplePowerUserRole\"\n            },\n            \"Action\": [\n                \"kms:CreateGrant\",\n                \"kms:ListGrants\",\n                \"kms:RevokeGrant\"\n            ],\n            \"Resource\": \"*\",\n            \"Condition\": {\n                \"Bool\": {\n                    \"kms:GrantIsForAWSResource\": \"true\"\n                }\n            }\n        }\n    ]\n}\n"
    #   }
    #   options = {}
    #   response = client.put_key_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     policy_name: "PolicyNameType",
    #     policy: "PolicyType", # required
    #     bypass_policy_lockout_safety_check: false
    #   }
    #   options = {}
    #   response = client.put_key_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_key_policy(params = {}, options = {})
      request = build_request(:put_key_policy, params)
      request.send_request(options)
    end

    # <p>Decrypts ciphertext and then reencrypts it entirely within KMS. You can use this
    #       operation to change the KMS key under which data is encrypted, such as when you <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys-manually.html">manually rotate</a> a
    #       KMS key or change the KMS key that protects a ciphertext. You can also use it to reencrypt
    #       ciphertext under the same KMS key, such as to change the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">encryption context</a> of a ciphertext.</p>
    #          <p>The <code>ReEncrypt</code> operation can decrypt ciphertext that was encrypted by using a
    #       KMS key in an KMS operation, such as <a>Encrypt</a> or <a>GenerateDataKey</a>. It can also decrypt ciphertext that was encrypted by using the
    #       public key of an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric KMS key</a> outside of KMS. However, it cannot decrypt ciphertext produced
    #       by other libraries, such as the <a href="https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/">Amazon Web Services
    #         Encryption SDK</a> or <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon S3 client-side encryption</a>.
    #       These libraries return a ciphertext format that is incompatible with KMS.</p>
    #          <p>When you use the <code>ReEncrypt</code> operation, you need to provide information for the
    #       decrypt operation and the subsequent encrypt operation.</p>
    #          <ul>
    #             <li>
    #                <p>If your ciphertext was encrypted under an asymmetric KMS key, you must use the
    #             <code>SourceKeyId</code> parameter to identify the KMS key that encrypted the
    #           ciphertext. You must also supply the encryption algorithm that was used. This information
    #           is required to decrypt the data.</p>
    #             </li>
    #             <li>
    #                <p>If your ciphertext was encrypted under a symmetric encryption KMS key, the
    #             <code>SourceKeyId</code> parameter is optional. KMS can get this information from
    #           metadata that it adds to the symmetric ciphertext blob. This feature adds durability to
    #           your implementation by ensuring that authorized users can decrypt ciphertext decades after
    #           it was encrypted, even if they've lost track of the key ID. However, specifying the source
    #           KMS key is always recommended as a best practice. When you use the
    #             <code>SourceKeyId</code> parameter to specify a KMS key, KMS uses only the KMS key you
    #           specify. If the ciphertext was encrypted under a different KMS key, the
    #             <code>ReEncrypt</code> operation fails. This practice ensures that you use the KMS key
    #           that you intend.</p>
    #             </li>
    #             <li>
    #                <p>To reencrypt the data, you must use the <code>DestinationKeyId</code> parameter to
    #           specify the KMS key that re-encrypts the data after it is decrypted. If the destination
    #           KMS key is an asymmetric KMS key, you must also provide the encryption algorithm. The
    #           algorithm that you choose must be compatible with the KMS key.</p>
    #                <important>
    #                   <p>When you use an asymmetric KMS key to encrypt or reencrypt data, be sure to record the KMS key and encryption algorithm that you choose. You will be required to provide the same KMS key and encryption algorithm when you decrypt the data. If the KMS key and algorithm do not match the values used to encrypt the data, the decrypt operation fails.</p>
    #                   <p>You are not required to supply the key ID and encryption algorithm when you decrypt with symmetric encryption KMS keys because KMS stores this information in the ciphertext blob. KMS cannot store metadata in ciphertext generated with asymmetric keys. The standard format for asymmetric key ciphertext does not include configurable fields.</p>
    #                </important>
    #             </li>
    #          </ul>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. The source KMS key and
    #       destination KMS key can be in different Amazon Web Services accounts. Either or both KMS keys can be in a
    #       different account than the caller. To specify a KMS key in a different account, you must use
    #       its key ARN or alias ARN.</p>
    #          <p>
    #             <b>Required permissions</b>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ReEncryptFrom</a>
    #           permission on the source KMS key (key policy)</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ReEncryptTo</a>
    #           permission on the destination KMS key (key policy)</p>
    #             </li>
    #          </ul>
    #          <p>To permit reencryption from or to a KMS key, include the <code>"kms:ReEncrypt*"</code>
    #       permission in your <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">key policy</a>. This permission is
    #       automatically included in the key policy when you use the console to create a KMS key. But you
    #       must include it manually when you create a KMS key programmatically or when you use the <a>PutKeyPolicy</a> operation to set a key policy.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ReEncryptRequest] params
    # @option params [String] :ciphertext_blob
    #   <p>Ciphertext of the data to reencrypt.</p>
    # @option params [Hash<String, String>] :source_encryption_context
    #   <p>Specifies the encryption context to use to decrypt the ciphertext. Enter the same
    #         encryption context that was used to encrypt the ciphertext.</p>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data. 
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :source_key_id
    #   <p>Specifies the KMS key that KMS will use to decrypt the ciphertext before it is
    #         re-encrypted.</p>
    #            <p>Enter a key ID of the KMS key that was used to encrypt the ciphertext. If you identify a
    #         different KMS key, the <code>ReEncrypt</code> operation throws an
    #           <code>IncorrectKeyException</code>.</p>
    #            <p>This parameter is required only when the ciphertext was encrypted under an asymmetric KMS
    #         key. If you used a symmetric encryption KMS key, KMS can get the KMS key from metadata that
    #         it adds to the symmetric ciphertext blob. However, it is always recommended as a best
    #         practice. This practice ensures that you use the KMS key that you intend.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [String] :destination_key_id
    #   <p>A unique identifier for the KMS key that is used to reencrypt the data. Specify a
    #         symmetric encryption KMS key or an asymmetric KMS key with a <code>KeyUsage</code> value of
    #           <code>ENCRYPT_DECRYPT</code>. To find the <code>KeyUsage</code> value of a KMS key, use the
    #           <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [Hash<String, String>] :destination_encryption_context
    #   <p>Specifies that encryption context to use when the reencrypting the data.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>A destination encryption context is valid only when the destination KMS key is a symmetric
    #         encryption KMS key. The standard ciphertext format for asymmetric KMS keys does not include
    #         fields for metadata.</p>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data. 
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :source_encryption_algorithm
    #   <p>Specifies the encryption algorithm that KMS will use to decrypt the ciphertext before it
    #         is reencrypted. The default value, <code>SYMMETRIC_DEFAULT</code>, represents the algorithm
    #         used for symmetric encryption KMS keys.</p>
    #            <p>Specify the same algorithm that was used to encrypt the ciphertext. If you specify a
    #         different algorithm, the decrypt attempt fails.</p>
    #            <p>This parameter is required only when the ciphertext was encrypted under an asymmetric KMS
    #         key.</p>
    # @option params [String] :destination_encryption_algorithm
    #   <p>Specifies the encryption algorithm that KMS will use to reecrypt the data after it has
    #         decrypted it. The default value, <code>SYMMETRIC_DEFAULT</code>, represents the encryption
    #         algorithm used for symmetric encryption KMS keys.</p>
    #            <p>This parameter is required only when the destination KMS key is an asymmetric KMS
    #         key.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To reencrypt data
    #   # The following example reencrypts data with the specified KMS key.
    #   params = {
    #     ciphertext_blob: "<binary data>",
    #     destination_key_id: "0987dcba-09fe-87dc-65ba-ab0987654321"
    #   }
    #   options = {}
    #   response = client.re_encrypt(params, options)
    #   response.to_h #=>
    #   {
    #     ciphertext_blob: "<binary data>",
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     destination_key_material_id: "0b7fd7ddbac6eef27907413567cad8c810e2883dc8a7534067a82ee1142fc1e6",
    #     destination_encryption_algorithm: SYMMETRIC_DEFAULT,
    #     source_encryption_algorithm: SYMMETRIC_DEFAULT,
    #     source_key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     source_key_material_id: "1c6be7ddbac6eef27907413567cad8c810e2883dc8a7534067a82ee1142fc1e6"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ciphertext_blob: "data", # required
    #     source_encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue"
    #     },
    #     source_key_id: "KeyIdType",
    #     destination_key_id: "KeyIdType", # required
    #     destination_encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue"
    #     },
    #     source_encryption_algorithm: "SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"],
    #     destination_encryption_algorithm: "SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"],
    #     grant_tokens: ["GrantTokenType"],
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.re_encrypt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ciphertext_blob: "data",
    #     source_key_id: "KeyIdType",
    #     key_id: "KeyIdType",
    #     source_encryption_algorithm: "SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"],
    #     destination_encryption_algorithm: "SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"],
    #     source_key_material_id: "BackingKeyIdType",
    #     destination_key_material_id: "BackingKeyIdType"
    #   }
    # @return [Types::ReEncryptResponse]
    def re_encrypt(params = {}, options = {})
      request = build_request(:re_encrypt, params)
      request.send_request(options)
    end

    # <p>Replicates a multi-Region key into the specified Region. This operation creates a
    #       multi-Region replica key based on a multi-Region primary key in a different Region of the same
    #       Amazon Web Services partition. You can create multiple replicas of a primary key, but each must be in a
    #       different Region. To create a multi-Region primary key, use the <a>CreateKey</a>
    #       operation.</p>
    #          <p>This operation supports <i>multi-Region keys</i>, an KMS feature that lets you create multiple
    #       interoperable KMS keys in different Amazon Web Services Regions. Because these KMS keys have the same key ID, key
    #       material, and other metadata, you can use them interchangeably to encrypt data in one Amazon Web Services Region and decrypt
    #       it in a different Amazon Web Services Region without re-encrypting the data or making a cross-Region call. For more information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>A <i>replica key</i> is a fully-functional KMS key that can be used
    #       independently of its primary and peer replica keys. A primary key and its replica keys share
    #       properties that make them interoperable. They have the same <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id">key ID</a> and key material. They also
    #       have the same key spec, key usage, key material origin, and automatic key rotation status.
    #       KMS automatically synchronizes these shared properties among related multi-Region keys. All
    #       other properties of a replica key can differ, including its <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">key policy</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">tags</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html">aliases</a>, and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">key state</a>. KMS pricing and quotas for KMS keys
    #       apply to each primary key and replica key.</p>
    #          <p>When this operation completes, the new replica key has a transient key state of
    #         <code>Creating</code>. This key state changes to <code>Enabled</code> (or
    #         <code>PendingImport</code>) after a few seconds when the process of creating the new replica
    #       key is complete. While the key state is <code>Creating</code>, you can manage key, but you
    #       cannot yet use it in cryptographic operations. If you are creating and using the replica key
    #       programmatically, retry on <code>KMSInvalidStateException</code> or call
    #         <code>DescribeKey</code> to check its <code>KeyState</code> value before using it. For
    #       details about the <code>Creating</code> key state, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>You cannot create more than one replica of a primary key in any Region. If the Region
    #       already includes a replica of the key you're trying to replicate, <code>ReplicateKey</code>
    #       returns an <code>AlreadyExistsException</code> error. If the key state of the existing replica
    #       is <code>PendingDeletion</code>, you can cancel the scheduled key deletion (<a>CancelKeyDeletion</a>) or wait for the key to be deleted. The new replica key you
    #       create will have the same <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html#mrk-sync-properties">shared
    #         properties</a> as the original replica key.</p>
    #          <p>The CloudTrail log of a <code>ReplicateKey</code> operation records a
    #         <code>ReplicateKey</code> operation in the primary key's Region and a <a>CreateKey</a> operation in the replica key's Region.</p>
    #          <p>If you replicate a multi-Region primary key with imported key material, the replica key is
    #       created with no key material. You must import the same key material that you imported into the
    #       primary key.</p>
    #          <p>To convert a replica key to a primary key, use the <a>UpdatePrimaryRegion</a>
    #       operation.</p>
    #          <note>
    #             <p>
    #                <code>ReplicateKey</code> uses different default values for the <code>KeyPolicy</code>
    #         and <code>Tags</code> parameters than those used in the KMS console. For details, see the
    #         parameter descriptions.</p>
    #          </note>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot use this operation to
    #       create a replica key in a different Amazon Web Services account. </p>
    #          <p>
    #             <b>Required permissions</b>: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>kms:ReplicateKey</code> on the primary key (in the primary key's Region).
    #           Include this permission in the primary key's key policy.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>kms:CreateKey</code> in an IAM policy in the replica Region.</p>
    #             </li>
    #             <li>
    #                <p>To use the <code>Tags</code> parameter, <code>kms:TagResource</code> in an IAM policy
    #           in the replica Region.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdatePrimaryRegion</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ReplicateKeyRequest] params
    # @option params [String] :key_id
    #   <p>Identifies the multi-Region primary key that is being replicated. To determine whether a
    #         KMS key is a multi-Region primary key, use the <a>DescribeKey</a> operation to
    #         check the value of the <code>MultiRegionKeyType</code> property.</p>
    #            <p>Specify the key ID or key ARN of a multi-Region primary key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>mrk-1234abcd12ab34cd56ef1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :replica_region
    #   <p>The Region ID of the Amazon Web Services Region for this replica key. </p>
    #            <p>Enter the Region ID, such as <code>us-east-1</code> or <code>ap-southeast-2</code>. For a
    #         list of Amazon Web Services Regions in which KMS is supported, see <a href="https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region">KMS service endpoints</a> in the
    #         <i>Amazon Web Services General Reference</i>.</p>
    #            <p>The replica must be in a different Amazon Web Services Region than its primary key and other replicas of
    #         that primary key, but in the same Amazon Web Services partition. KMS must be available in the replica
    #         Region. If the Region is not enabled by default, the Amazon Web Services account must be enabled in the
    #         Region. For information about Amazon Web Services partitions, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the
    #         <i>Amazon Web Services General Reference</i>. For information about enabling and disabling Regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable">Enabling a
    #           Region</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-disable">Disabling a Region</a> in the
    #         <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :policy
    #   <p>The key policy to attach to the KMS key. This parameter is optional. If you do not provide
    #         a key policy, KMS attaches the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html">default key policy</a> to the KMS key.</p>
    #            <p>The key policy is not a shared property of multi-Region keys. You can specify the same key
    #         policy or a different key policy for each key in a set of related multi-Region keys. KMS
    #         does not synchronize this property.</p>
    #            <p>If you provide a key policy, it must meet the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>The key policy must allow the calling principal to make a
    #             subsequent <code>PutKeyPolicy</code> request on the KMS key.  This reduces the risk that
    #             the KMS key becomes unmanageable. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>. (To omit
    #             this condition, set <code>BypassPolicyLockoutSafetyCheck</code> to true.)</p>
    #               </li>
    #               <li>
    #                  <p>Each statement in the key policy must contain one or more principals. The principals
    #             in the key policy must exist and be visible to KMS. When you create a new Amazon Web Services
    #             principal, you might need to enforce a delay before including the new principal in a key
    #             policy because the new principal might not be immediately visible to KMS. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes that I make are not always immediately visible</a> in the <i>Amazon Web Services
    #               Identity and Access Management User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>A key policy document can include only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Printable ASCII characters from the space character (<code>\u0020</code>) through the end of the ASCII character range.</p>
    #               </li>
    #               <li>
    #                  <p>Printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\u00FF</code>).</p>
    #               </li>
    #               <li>
    #                  <p>The tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and carriage return (<code>\u000D</code>) special characters</p>
    #               </li>
    #            </ul>
    #            <p>For information about key policies, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key policies in KMS</a> in the <i>Key Management Service Developer Guide</i>.
    #         For help writing and formatting a JSON policy document, see the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM JSON Policy Reference</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   <p>Skips ("bypasses") the key policy lockout safety check. The default value is false.</p>
    #            <important>
    #               <p>Setting this value to true increases the risk that the KMS key becomes unmanageable. Do
    #           not set this value to true indiscriminately.</p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </important>
    #            <p>Use this parameter only when you intend to prevent the principal that is making the
    #         request from making a subsequent <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html">PutKeyPolicy</a>
    #         request on the KMS key.</p>
    # @option params [String] :description
    #   <p>A description of the KMS key. The default value is an empty string (no
    #         description).</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>The description is not a shared property of multi-Region keys. You can specify the same
    #         description or a different description for each key in a set of related multi-Region keys.
    #         KMS does not synchronize this property.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Assigns one or more tags to the replica key. Use this parameter to tag the KMS key when it
    #         is created. To tag an existing KMS key, use the <a>TagResource</a>
    #         operation.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <note>
    #               <p>Tagging or untagging a KMS key can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </note>
    #            <p>To use this parameter, you must have <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:TagResource</a> permission in an IAM policy.</p>
    #            <p>Tags are not a shared property of multi-Region keys. You can specify the same tags or
    #         different tags for each key in a set of related multi-Region keys. KMS does not synchronize
    #         this property.</p>
    #            <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are
    #         required, but the tag value can be an empty (null) string. You cannot have more than one tag
    #         on a KMS key with the same tag key. If you specify an existing tag key with a different tag
    #         value, KMS replaces the current tag value with the specified one.</p>
    #            <p>When you add tags to an Amazon Web Services resource, Amazon Web Services generates a cost allocation
    #                 report with usage and costs aggregated by tags. Tags can also be used to control access to a KMS key. For details,
    #                 see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">Tags in KMS</a>.</p>
    # @example To replicate a multi-Region key in a different AWS Region
    #   # This example creates a multi-Region replica key in us-west-2 of a multi-Region primary key in us-east-1.
    #   params = {
    #     key_id: "arn:aws:kms:us-east-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #     replica_region: "us-west-2"
    #   }
    #   options = {}
    #   response = client.replicate_key(params, options)
    #   response.to_h #=>
    #   {
    #     replica_key_metadata: {
    #       multi_region: true,
    #       multi_region_configuration: {
    #         multi_region_key_type: REPLICA,
    #         primary_key: {
    #           arn: "arn:aws:kms:us-east-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #           region: "us-east-1"
    #         },
    #         replica_keys: [
    #           {
    #             arn: "arn:aws:kms:us-west-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #             region: "us-west-2"
    #           }
    #         ]
    #       },
    #       aws_account_id: "111122223333",
    #       arn: "arn:aws:kms:us-west-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #       creation_date: Time.parse(1607472987.918),
    #       description: "",
    #       enabled: true,
    #       key_id: "mrk-1234abcd12ab34cd56ef1234567890ab",
    #       key_manager: CUSTOMER,
    #       key_state: Enabled,
    #       key_usage: ENCRYPT_DECRYPT,
    #       origin: AWS_KMS,
    #       customer_master_key_spec: SYMMETRIC_DEFAULT,
    #       encryption_algorithms: [
    #         SYMMETRIC_DEFAULT
    #       ]
    #     },
    #     replica_policy: "{\n  \"Version\" : \"2012-10-17\",\n  \"Id\" : \"key-default-1\",...}",
    #     replica_tags: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     replica_region: "RegionType", # required
    #     policy: "PolicyType",
    #     bypass_policy_lockout_safety_check: false,
    #     description: "DescriptionType",
    #     tags: [
    #       {
    #         tag_key: "TagKeyType", # required
    #         tag_value: "TagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.replicate_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replica_key_metadata: {
    #       aws_account_id: "AWSAccountIdType",
    #       key_id: "KeyIdType", # required
    #       arn: "ArnType",
    #       creation_date: Time.now,
    #       enabled: false,
    #       description: "DescriptionType",
    #       key_usage: "SIGN_VERIFY" # One of: ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC", "KEY_AGREEMENT"],
    #       key_state: "Creating" # One of: ["Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"],
    #       deletion_date: Time.now,
    #       valid_to: Time.now,
    #       origin: "AWS_KMS" # One of: ["AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"],
    #       custom_key_store_id: "CustomKeyStoreIdType",
    #       cloud_hsm_cluster_id: "CloudHsmClusterIdType",
    #       expiration_model: "KEY_MATERIAL_EXPIRES" # One of: ["KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"],
    #       key_manager: "AWS" # One of: ["AWS", "CUSTOMER"],
    #       customer_master_key_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"],
    #       key_spec: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2", "ML_DSA_44", "ML_DSA_65", "ML_DSA_87"],
    #       encryption_algorithms: ["SYMMETRIC_DEFAULT" # One of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]],
    #       signing_algorithms: ["RSASSA_PSS_SHA_256" # One of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA", "ML_DSA_SHAKE_256"]],
    #       key_agreement_algorithms: ["ECDH" # One of: ["ECDH"]],
    #       multi_region: false,
    #       multi_region_configuration: {
    #         multi_region_key_type: "PRIMARY" # One of: ["PRIMARY", "REPLICA"],
    #         primary_key: {
    #           arn: "ArnType",
    #           region: "RegionType"
    #         },
    #         replica_keys: [
    #           {
    #             arn: "ArnType",
    #             region: "RegionType"
    #           }
    #         ]
    #       },
    #       pending_deletion_window_in_days: 1,
    #       mac_algorithms: ["HMAC_SHA_224" # One of: ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]],
    #       xks_key_configuration: {
    #         id: "XksKeyIdType"
    #       },
    #       current_key_material_id: "BackingKeyIdType"
    #     },
    #     replica_policy: "PolicyType",
    #     replica_tags: [
    #       {
    #         tag_key: "TagKeyType", # required
    #         tag_value: "TagValueType", # required
    #       }
    #     ]
    #   }
    # @return [Types::ReplicateKeyResponse]
    def replicate_key(params = {}, options = {})
      request = build_request(:replicate_key, params)
      request.send_request(options)
    end

    # <p>Deletes a grant. Typically, you retire a grant when you no longer need its permissions. To
    #       identify the grant to retire, use a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">grant token</a>, or both the grant ID and a
    #       key identifier (key ID or key ARN) of the KMS key. The <a>CreateGrant</a> operation
    #       returns both values.</p>
    #          <p>This operation can be called by the <i>retiring principal</i> for a grant,
    #       by the <i>grantee principal</i> if the grant allows the <code>RetireGrant</code>
    #       operation, and by the Amazon Web Services account in which the grant is created. It can also be called by
    #       principals to whom permission for retiring a grant is delegated.</p>
    #          <p>For detailed information about grants, including grant terminology, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants in KMS</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. For examples of creating grants in several
    #       programming languages, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/example_kms_CreateGrant_section.html">Use CreateGrant with an Amazon Web Services SDK or CLI</a>. </p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. You can retire a grant on a KMS
    #       key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: Permission to retire a grant is
    #       determined primarily by the grant. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-delete.html">Retiring and revoking grants</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListRetirableGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RevokeGrant</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::RetireGrantRequest] params
    # @option params [String] :grant_token
    #   <p>Identifies the grant to be retired. You can use a grant token to identify a new grant even
    #         before it has achieved eventual consistency.</p>
    #            <p>Only the <a>CreateGrant</a> operation returns a grant token. For details, see
    #           <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a>
    #         and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency">Eventual consistency</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :key_id
    #   <p>The key ARN KMS key associated with the grant. To find the key ARN, use the <a>ListKeys</a> operation.</p>
    #            <p>For example: <code>arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #            </p>
    # @option params [String] :grant_id
    #   <p>Identifies the grant to retire. To get the grant ID, use <a>CreateGrant</a>,
    #           <a>ListGrants</a>, or <a>ListRetirableGrants</a>.</p>
    #            <ul>
    #               <li>
    #                  <p>Grant ID Example -
    #             0123456789012345678901234567890123456789012345678901234567890123</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To retire a grant
    #   # The following example retires a grant.
    #   params = {
    #     key_id: "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     grant_id: "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60"
    #   }
    #   options = {}
    #   response = client.retire_grant(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_token: "GrantTokenType",
    #     key_id: "KeyIdType",
    #     grant_id: "GrantIdType",
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.retire_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def retire_grant(params = {}, options = {})
      request = build_request(:retire_grant, params)
      request.send_request(options)
    end

    # <p>Deletes the specified grant. You revoke a grant to terminate the permissions that the
    #       grant allows. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-delete.html">Retiring and revoking grants</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>.</p>
    #          <p>When you create, retire, or revoke a grant, there might be a brief delay, usually less than five minutes, until the grant is available throughout KMS. This state is known as <i>eventual consistency</i>. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency">Eventual consistency</a> in
    #       the <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. </p>
    #          <p>For detailed information about grants, including grant terminology, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants in KMS</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. For examples of creating grants in several
    #       programming languages, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/example_kms_CreateGrant_section.html">Use CreateGrant with an Amazon Web Services SDK or CLI</a>. </p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation on a KMS key in a different Amazon Web Services account, specify the key
    #   ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:RevokeGrant</a> (key policy).</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListRetirableGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RetireGrant</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::RevokeGrantRequest] params
    # @option params [String] :key_id
    #   <p>A unique identifier for the KMS key associated with the grant. To get the key ID and key
    #         ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #            <p>Specify the key ID or key ARN of the KMS key. To specify a KMS key in a
    #   different Amazon Web Services account, you must use the key ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :grant_id
    #   <p>Identifies the grant to revoke. To get the grant ID, use <a>CreateGrant</a>,
    #           <a>ListGrants</a>, or <a>ListRetirableGrants</a>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To revoke a grant
    #   # The following example revokes a grant.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     grant_id: "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60"
    #   }
    #   options = {}
    #   response = client.revoke_grant(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     grant_id: "GrantIdType", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.revoke_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def revoke_grant(params = {}, options = {})
      request = build_request(:revoke_grant, params)
      request.send_request(options)
    end

    # <p>Immediately initiates rotation of the key material of the specified symmetric encryption
    #       KMS key.</p>
    #          <p>You can perform <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotating-keys-on-demand.html">on-demand rotation</a> of the key
    #       material in customer managed KMS keys, regardless of whether or not <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotating-keys-enable-disable.html">automatic key
    #         rotation</a> is enabled. On-demand rotations do not change existing automatic rotation
    #       schedules. For example, consider a KMS key that has automatic key rotation enabled with a
    #       rotation period of 730 days. If the key is scheduled to automatically rotate on April 14,
    #       2024, and you perform an on-demand rotation on April 10, 2024, the key will automatically
    #       rotate, as scheduled, on April 14, 2024 and every 730 days thereafter.</p>
    #          <note>
    #             <p>You can perform on-demand key rotation a <b>maximum of 10
    #           times</b> per KMS key. You can use the KMS console to view the number of
    #         remaining on-demand rotations available for a KMS key.</p>
    #          </note>
    #          <p>You can use <a>GetKeyRotationStatus</a> to identify any in progress on-demand
    #       rotations. You can use <a>ListKeyRotations</a> to identify the date that completed
    #       on-demand rotations were performed. You can monitor rotation of the key material for your KMS
    #       keys in CloudTrail and Amazon CloudWatch.</p>
    #          <p>On-demand key rotation is supported only on symmetric encryption KMS keys. You cannot
    #       perform on-demand rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric KMS keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC KMS keys</a>, multi-Region KMS
    #       keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key
    #         material</a>, or KMS keys in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>. When you initiate on-demand key
    #       rotation on a symmetric encryption KMS key with imported key material, you must have already
    #       imported <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-import-key-material.html">new key material</a> and that
    #       key material's state should be <code>PENDING_ROTATION</code>. Use the
    #         <code>ListKeyRotations</code> operation to check the state of all key materials associated
    #       with a KMS key. To perform on-demand rotation of a set of related <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#multi-region-rotate">multi-Region keys</a>, invoke
    #       the on-demand rotation on the primary key.</p>
    #          <p>You cannot initiate on-demand rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-key">Amazon Web Services managed KMS keys</a>. KMS
    #       always rotates the key material of Amazon Web Services managed keys every year. Rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-key">Amazon Web Services owned KMS
    #         keys</a> is managed by the Amazon Web Services service that owns the key.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:RotateKeyOnDemand</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>EnableKeyRotation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisableKeyRotation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GetKeyRotationStatus</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ImportKeyMaterial</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListKeyRotations</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::RotateKeyOnDemandRequest] params
    # @option params [String] :key_id
    #   <p>Identifies a symmetric encryption KMS key. You cannot perform on-demand rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric KMS
    #           keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC KMS
    #         keys</a>, multi-Region KMS keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key material</a>, or KMS keys in a
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>. To perform on-demand rotation of a set of related <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#multi-region-rotate">multi-Region
    #           keys</a>, invoke the on-demand rotation on the primary key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @example To perform on-demand rotation of key material
    #   # The following example immediately initiates rotation of the key material for the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.rotate_key_on_demand(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #   }
    #   options = {}
    #   response = client.rotate_key_on_demand(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType"
    #   }
    # @return [Types::RotateKeyOnDemandResponse]
    def rotate_key_on_demand(params = {}, options = {})
      request = build_request(:rotate_key_on_demand, params)
      request.send_request(options)
    end

    # <p>Schedules the deletion of a KMS key. By default, KMS applies a waiting period of 30
    #       days, but you can specify a waiting period of 7-30 days. When this operation is successful,
    #       the key state of the KMS key changes to <code>PendingDeletion</code> and the key can't be used
    #       in any cryptographic operations. It remains in this state for the duration of the waiting
    #       period. Before the waiting period ends, you can use <a>CancelKeyDeletion</a> to
    #       cancel the deletion of the KMS key. After the waiting period ends, KMS deletes the KMS key,
    #       its key material, and all KMS data associated with it, including all aliases that refer to
    #       it.</p>
    #          <important>
    #             <p>Deleting a KMS key is a destructive and potentially dangerous operation. When a KMS key
    #         is deleted, all data that was encrypted under the KMS key is unrecoverable. (The only
    #         exception is a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-delete.html">multi-Region replica key</a>, or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html#import-delete-key">asymmetric or HMAC KMS key with
    #           imported key material</a>.) To prevent the use of a KMS key without deleting it, use
    #           <a>DisableKey</a>. </p>
    #          </important>
    #          <p>You can schedule the deletion of a multi-Region primary key and its replica keys at any
    #       time. However, KMS will not delete a multi-Region primary key with existing replica keys. If
    #       you schedule the deletion of a primary key with replicas, its key state changes to
    #         <code>PendingReplicaDeletion</code> and it cannot be replicated or used in cryptographic
    #       operations. This status can continue indefinitely. When the last of its replicas keys is
    #       deleted (not just scheduled), the key state of the primary key changes to
    #         <code>PendingDeletion</code> and its waiting period (<code>PendingWindowInDays</code>)
    #       begins. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html#deleting-mrks">Deleting multi-Region keys</a> in
    #       the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>When KMS <a href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html#delete-cmk-keystore">deletes a KMS key from an CloudHSM
    #         key store</a>, it makes a best effort to delete the associated key material from the
    #       associated CloudHSM cluster. However, you might need to manually <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key">delete the orphaned key
    #         material</a> from the cluster and its backups. <a href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html#delete-xks-key">Deleting a KMS key from an external key
    #         store</a> has no effect on the associated external key. However, for both types of
    #       custom key stores, deleting a KMS key is destructive and irreversible. You cannot decrypt
    #       ciphertext encrypted under the KMS key by using only its associated external key or CloudHSM key.
    #       Also, you cannot recreate a KMS key in an external key store by creating a new KMS key with
    #       the same key material.</p>
    #          <p>For more information about scheduling a KMS key for deletion, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting KMS keys</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: kms:ScheduleKeyDeletion (key
    #       policy)</p>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CancelKeyDeletion</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisableKey</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::ScheduleKeyDeletionRequest] params
    # @option params [String] :key_id
    #   <p>The unique identifier of the KMS key to delete.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [Integer] :pending_window_in_days
    #   <p>The waiting period, specified in number of days. After the waiting period ends, KMS
    #         deletes the KMS key.</p>
    #            <p>If the KMS key is a multi-Region primary key with replica keys, the waiting period begins
    #         when the last of its replica keys is deleted. Otherwise, the waiting period begins
    #         immediately.</p>
    #            <p>This value is optional. If you include a value, it must be between 7 and 30, inclusive. If
    #         you do not include a value, it defaults to 30. You can use the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/conditions-kms.html#conditions-kms-schedule-key-deletion-pending-window-in-days">
    #                  <code>kms:ScheduleKeyDeletionPendingWindowInDays</code>
    #               </a> condition key to further
    #         constrain the values that principals can specify in the <code>PendingWindowInDays</code>
    #         parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     pending_window_in_days: 1
    #   }
    #   options = {}
    #   response = client.schedule_key_deletion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType",
    #     deletion_date: Time.now,
    #     key_state: "Creating" # One of: ["Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"],
    #     pending_window_in_days: 1
    #   }
    # @return [Types::ScheduleKeyDeletionResponse]
    def schedule_key_deletion(params = {}, options = {})
      request = build_request(:schedule_key_deletion, params)
      request.send_request(options)
    end

    # <p>Creates a <a href="https://en.wikipedia.org/wiki/Digital_signature">digital
    #         signature</a> for a message or message digest by using the private key in an asymmetric
    #       signing KMS key. To verify the signature, use the <a>Verify</a> operation, or use
    #       the public key in the same asymmetric KMS key outside of KMS. For information about asymmetric KMS keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>Digital signatures are generated and verified by using asymmetric key pair, such as an
    #       RSA, ECC, or ML-DSA pair that is represented by an asymmetric KMS key. The key owner (or an
    #       authorized user) uses their private key to sign a message. Anyone with the public key can
    #       verify that the message was signed with that particular private key and that the message
    #       hasn't changed since it was signed. </p>
    #          <p>To use the <code>Sign</code> operation, provide the following information:</p>
    #          <ul>
    #             <li>
    #                <p>Use the <code>KeyId</code> parameter to identify an asymmetric KMS key with a
    #             <code>KeyUsage</code> value of <code>SIGN_VERIFY</code>. To get the
    #             <code>KeyUsage</code> value of a KMS key, use the <a>DescribeKey</a>
    #           operation. The caller must have <code>kms:Sign</code> permission on the KMS key.</p>
    #             </li>
    #             <li>
    #                <p>Use the <code>Message</code> parameter to specify the message or message digest to
    #           sign. You can submit messages of up to 4096 bytes. To sign a larger message, generate a
    #           hash digest of the message, and then provide the hash digest in the <code>Message</code>
    #           parameter. To indicate whether the message is a full message, a digest, or an ML-DSA
    #           EXTERNAL_MU, use the <code>MessageType</code> parameter.</p>
    #             </li>
    #             <li>
    #                <p>Choose a signing algorithm that is compatible with the KMS key. </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>When signing a message, be sure to record the KMS key and the signing algorithm. This
    #         information is required to verify the signature.</p>
    #          </important>
    #          <note>
    #             <p>Best practices recommend that you limit the time during which any signature is
    #         effective. This deters an attack where the actor uses a signed message to establish validity
    #         repeatedly or long after the message is superseded. Signatures do not include a timestamp,
    #         but you can include a timestamp in the signed message to help you detect when its time to
    #         refresh the signature. </p>
    #          </note>
    #          <p>To verify the signature that this operation generates, use the <a>Verify</a>
    #       operation. Or use the <a>GetPublicKey</a> operation to download the public key and
    #       then use the public key to verify the signature outside of KMS. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:Sign</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>Verify</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::SignRequest] params
    # @option params [String] :key_id
    #   <p>Identifies an asymmetric KMS key. KMS uses the private key in the asymmetric KMS key to
    #         sign the message. The <code>KeyUsage</code> type of the KMS key must be
    #           <code>SIGN_VERIFY</code>. To find the <code>KeyUsage</code> of a KMS key, use the <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [String] :message
    #   <p>Specifies the message or message digest to sign. Messages can be 0-4096 bytes. To sign a
    #         larger message, provide a message digest.</p>
    #            <p>If you provide a message digest, use the <code>DIGEST</code> value of
    #           <code>MessageType</code> to prevent the digest from being hashed again while signing.</p>
    # @option params [String] :message_type
    #   <p>Tells KMS whether the value of the <code>Message</code> parameter should be hashed as
    #         part of the signing algorithm. Use <code>RAW</code> for unhashed messages; use
    #           <code>DIGEST</code> for message digests, which are already hashed; use
    #           <code>EXTERNAL_MU</code> for 64-byte representative μ used in ML-DSA signing as defined
    #         in NIST FIPS 204 Section 6.2.</p>
    #            <p>When the value of <code>MessageType</code> is <code>RAW</code>, KMS uses the standard
    #         signing algorithm, which begins with a hash function. When the value is <code>DIGEST</code>,
    #         KMS skips the hashing step in the signing algorithm. When the value is
    #           <code>EXTERNAL_MU</code> KMS skips the concatenated hashing of the public key hash and the
    #         message done in the ML-DSA signing algorithm.</p>
    #            <important>
    #               <p>Use the <code>DIGEST</code> or <code>EXTERNAL_MU</code> value only when the value of the
    #             <code>Message</code> parameter is a message digest. If you use the <code>DIGEST</code>
    #           value with an unhashed message, the security of the signing operation can be
    #           compromised.</p>
    #            </important>
    #            <p>When the value of <code>MessageType</code> is <code>DIGEST</code>, the length of the
    #           <code>Message</code> value must match the length of hashed messages for the specified
    #         signing algorithm.</p>
    #            <p>When the value of <code>MessageType</code> is <code>EXTERNAL_MU</code> the length of the
    #           <code>Message</code> value must be 64 bytes.</p>
    #            <p>You can submit a message digest and omit the <code>MessageType</code> or specify
    #           <code>RAW</code> so the digest is hashed again while signing. However, this can cause
    #         verification failures when verifying with a system that assumes a single hash.</p>
    #            <p>The hashing algorithm that <code>Sign</code> uses is based on the
    #           <code>SigningAlgorithm</code> value.</p>
    #            <ul>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_256 use the SHA_256 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_384 use the SHA_384 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_512 use the SHA_512 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>Signing algorithms that end in SHAKE_256 use the SHAKE_256 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>SM2DSA uses the SM3 hashing algorithm. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/offline-operations.html#key-spec-sm-offline-verification">Offline
    #               verification with SM2 key pairs</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [String] :signing_algorithm
    #   <p>Specifies the signing algorithm to use when signing the message. </p>
    #            <p>Choose an algorithm that is compatible with the type and size of the specified asymmetric
    #         KMS key. When signing with RSA key pairs, RSASSA-PSS algorithms are preferred. We include
    #         RSASSA-PKCS1-v1_5 algorithms for compatibility with existing applications.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To digitally sign a message digest with an asymmetric KMS key.
    #   # This operation uses the private key in an asymmetric RSA signing KMS key to generate a digital signature for a message digest. In this example, a large message was hashed and the resulting digest is provided in the Message parameter. To tell KMS not to hash the message again, the MessageType field is set to DIGEST
    #   params = {
    #     key_id: "alias/RSA_signing_key",
    #     message: "<message digest to be signed>",
    #     message_type: DIGEST,
    #     signing_algorithm: RSASSA_PKCS1_V1_5_SHA_256
    #   }
    #   options = {}
    #   response = client.sign(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     signature: "<binary data>",
    #     signing_algorithm: RSASSA_PKCS1_V1_5_SHA_256
    #   }
    # @example To digitally sign a message with an asymmetric KMS key.
    #   # This operation uses the private key in an asymmetric elliptic curve (ECC) KMS key to generate a digital signature for a given message.
    #   params = {
    #     key_id: "alias/ECC_signing_key",
    #     message: "<message to be signed>",
    #     message_type: RAW,
    #     signing_algorithm: ECDSA_SHA_384
    #   }
    #   options = {}
    #   response = client.sign(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     signature: "<binary data>",
    #     signing_algorithm: ECDSA_SHA_384
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     message: "data", # required
    #     message_type: "RAW" # One of: ["RAW", "DIGEST", "EXTERNAL_MU"],
    #     grant_tokens: ["GrantTokenType"],
    #     signing_algorithm: "RSASSA_PSS_SHA_256" # One of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA", "ML_DSA_SHAKE_256"], # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.sign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType",
    #     signature: "data",
    #     signing_algorithm: "RSASSA_PSS_SHA_256" # One of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA", "ML_DSA_SHAKE_256"]
    #   }
    # @return [Types::SignResponse]
    def sign(params = {}, options = {})
      request = build_request(:sign, params)
      request.send_request(options)
    end

    # <p>Adds or edits tags on a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-mgn-key">customer managed key</a>.</p>
    #          <note>
    #             <p>Tagging or untagging a KMS key can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          </note>
    #          <p>Each tag consists of a tag key and a tag value, both of which are case-sensitive strings.
    #       The tag value can be an empty (null) string. To add a tag, specify a new tag key and a tag
    #       value. To edit a tag, specify an existing tag key and a new tag value.</p>
    #          <p>You can use this operation to tag a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-mgn-key">customer managed key</a>, but you
    #       cannot tag an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-key">Amazon Web Services managed key</a>, an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-key">Amazon Web Services owned key</a>, a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html">custom key store</a>,
    #       or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html">alias</a>.</p>
    #          <p>You can also add tags to a KMS key while creating it (<a>CreateKey</a>) or
    #       replicating it (<a>ReplicateKey</a>).</p>
    #          <p>For information about using tags in KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">Tagging keys</a>. For general information about
    #       tags, including the format and syntax, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in the <i>Amazon
    #         Web Services General Reference</i>. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:TagResource</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListResourceTags</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ReplicateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UntagResource</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :key_id
    #   <p>Identifies a customer managed key in the account and Region.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags. Each tag consists of a tag key and a tag value. The tag value can be an
    #         empty (null) string. </p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>You cannot have more than one tag on a KMS key with the same tag key. If you specify an
    #         existing tag key with a different tag value, KMS replaces the current tag value with the
    #         specified one.</p>
    # @example To tag a KMS key
    #   # The following example tags a KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     tags: [
    #       {
    #         tag_key: "Purpose",
    #         tag_value: "Test"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     tags: [ # required
    #       {
    #         tag_key: "TagKeyType", # required
    #         tag_value: "TagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes tags from a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-mgn-key">customer managed key</a>. To delete a
    #       tag, specify the tag key and the KMS key.</p>
    #          <note>
    #             <p>Tagging or untagging a KMS key can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          </note>
    #          <p>When it succeeds, the <code>UntagResource</code> operation doesn't return any output.
    #       Also, if the specified tag key isn't found on the KMS key, it doesn't throw an exception or
    #       return a response. To confirm that the operation worked, use the <a>ListResourceTags</a> operation.</p>
    #          <p>For information about using tags in KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">Tagging keys</a>. For general information about
    #       tags, including the format and syntax, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in the <i>Amazon
    #         Web Services General Reference</i>. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UntagResource</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListResourceTags</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ReplicateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>TagResource</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :key_id
    #   <p>Identifies the KMS key from which you are removing tags.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>One or more tag keys. Specify only the tag keys, not the tag values.</p>
    # @example To remove tags from a KMS key
    #   # The following example removes tags from a KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     tag_keys: [
    #       "Purpose",
    #       "CostCenter"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     tag_keys: ["TagKeyType"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Associates an existing KMS alias with a different KMS key. Each alias is associated with
    #       only one KMS key at a time, although a KMS key can have multiple aliases. The alias and the
    #       KMS key must be in the same Amazon Web Services account and Region.</p>
    #          <note>
    #             <p>Adding, deleting, or updating an alias can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          </note>
    #          <p>The current and new KMS key must be the same type (both symmetric or both asymmetric or
    #       both HMAC), and they must have the same key usage. This restriction prevents errors in code
    #       that uses aliases. If you must assign an alias to a different type of KMS key, use <a>DeleteAlias</a> to delete the old alias and <a>CreateAlias</a> to create
    #       a new alias.</p>
    #          <p>You cannot use <code>UpdateAlias</code> to change an alias name. To change an alias name,
    #       use <a>DeleteAlias</a> to delete the old alias and <a>CreateAlias</a> to
    #       create a new alias.</p>
    #          <p>Because an alias is not a property of a KMS key, you can create, update, and delete the
    #       aliases of a KMS key without affecting the KMS key. Also, aliases do not appear in the
    #       response from the <a>DescribeKey</a> operation. To get the aliases of all KMS keys
    #       in the account, use the <a>ListAliases</a> operation. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account. </p>
    #          <p>
    #             <b>Required permissions</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UpdateAlias</a> on
    #           the alias (IAM policy).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UpdateAlias</a> on
    #           the current KMS key (key policy).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UpdateAlias</a> on
    #           the new KMS key (key policy).</p>
    #             </li>
    #          </ul>
    #          <p>For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access">Controlling access to aliases</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAliases</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::UpdateAliasRequest] params
    # @option params [String] :alias_name
    #   <p>Identifies the alias that is changing its KMS key. This value must begin with
    #           <code>alias/</code> followed by the alias name, such as <code>alias/ExampleAlias</code>. You
    #         cannot use <code>UpdateAlias</code> to change the alias name.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    # @option params [String] :target_key_id
    #   <p>Identifies the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-mgn-key">customer managed key</a> to associate
    #         with the alias. You don't have permission to associate an alias with an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-key">Amazon Web Services managed
    #           key</a>.</p>
    #            <p>The KMS key must be in the same Amazon Web Services account and Region as the alias. Also, the new
    #         target KMS key must be the same type as the current target KMS key (both symmetric or both
    #         asymmetric or both HMAC) and they must have the same key usage. </p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #            <p>To verify that the alias is mapped to the correct KMS key, use <a>ListAliases</a>.</p>
    # @example To update an alias
    #   # The following example updates the specified alias to refer to the specified KMS key.
    #   params = {
    #     alias_name: "alias/ExampleAlias",
    #     target_key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.update_alias(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_name: "AliasNameType", # required
    #     target_key_id: "KeyIdType", # required
    #   }
    #   options = {}
    #   response = client.update_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_alias(params = {}, options = {})
      request = build_request(:update_alias, params)
      request.send_request(options)
    end

    # <p>Changes the properties of a custom key store. You can use this operation to change the
    #       properties of an CloudHSM key store or an external key store.</p>
    #          <p>Use the required <code>CustomKeyStoreId</code> parameter to identify the custom key store.
    #       Use the remaining optional parameters to change its properties. This operation does not return
    #       any property values. To verify the updated property values, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #          <p> This operation is part of the custom key stores feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <important>
    #             <p>When updating the properties of an external key store, verify that the updated settings
    #         connect your key store, via the external key store proxy, to the same external key manager
    #         as the previous settings, or to a backup or snapshot of the external key manager with the
    #         same cryptographic keys. If the updated connection settings fail, you can fix them and
    #         retry, although an extended delay might disrupt Amazon Web Services services. However, if KMS
    #         permanently loses its access to cryptographic keys, ciphertext encrypted under those keys is
    #         unrecoverable.</p>
    #          </important>
    #          <note>
    #             <p>For external key stores:</p>
    #             <p>Some external key managers provide a simpler method for updating an external key store.
    #         For details, see your external key manager documentation.</p>
    #             <p>When updating an external key store in the KMS console, you can upload a JSON-based
    #         proxy configuration file with the desired values. You cannot upload the proxy configuration
    #         file to the <code>UpdateCustomKeyStore</code> operation. However, you can use the file to
    #         help you determine the correct values for the <code>UpdateCustomKeyStore</code>
    #         parameters.</p>
    #          </note>
    #          <p>For an CloudHSM key store, you can use this operation to change the custom key store friendly
    #       name (<code>NewCustomKeyStoreName</code>), to tell KMS about a change to the
    #         <code>kmsuser</code> crypto user password (<code>KeyStorePassword</code>), or to associate
    #       the custom key store with a different, but related, CloudHSM cluster
    #         (<code>CloudHsmClusterId</code>). To update any property of an CloudHSM key store, the
    #         <code>ConnectionState</code> of the CloudHSM key store must be <code>DISCONNECTED</code>. </p>
    #          <p>For an external key store, you can use this operation to change the custom key store
    #       friendly name (<code>NewCustomKeyStoreName</code>), or to tell KMS about a change to the
    #       external key store proxy authentication credentials
    #         (<code>XksProxyAuthenticationCredential</code>), connection method
    #         (<code>XksProxyConnectivity</code>), external proxy endpoint
    #         (<code>XksProxyUriEndpoint</code>) and path (<code>XksProxyUriPath</code>). For external key
    #       stores with an <code>XksProxyConnectivity</code> of <code>VPC_ENDPOINT_SERVICE</code>, you can
    #       also update the Amazon VPC endpoint service name (<code>XksProxyVpcEndpointServiceName</code>). To
    #       update most properties of an external key store, the <code>ConnectionState</code> of the
    #       external key store must be <code>DISCONNECTED</code>. However, you can update the
    #         <code>CustomKeyStoreName</code>, <code>XksProxyAuthenticationCredential</code>, and
    #         <code>XksProxyUriPath</code> of an external key store when it is in the CONNECTED or
    #       DISCONNECTED state. </p>
    #          <p>If your update requires a <code>DISCONNECTED</code> state, before using
    #         <code>UpdateCustomKeyStore</code>, use the <a>DisconnectCustomKeyStore</a>
    #       operation to disconnect the custom key store. After the <code>UpdateCustomKeyStore</code>
    #       operation completes, use the <a>ConnectCustomKeyStore</a> to reconnect the custom
    #       key store. To find the <code>ConnectionState</code> of the custom key store, use the <a>DescribeCustomKeyStores</a> operation. </p>
    #          <p>
    #     </p>
    #          <p>Before updating the custom key store, verify that the new values allow KMS to connect
    #       the custom key store to its backing key store. For example, before you change the
    #         <code>XksProxyUriPath</code> value, verify that the external key store proxy is reachable at
    #       the new path.</p>
    #          <p>If the operation succeeds, it returns a JSON object with no
    # properties.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UpdateCustomKeyStore</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ConnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeCustomKeyStores</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisconnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::UpdateCustomKeyStoreRequest] params
    # @option params [String] :custom_key_store_id
    #   <p>Identifies the custom key store that you want to update. Enter the ID of the custom key
    #         store. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    # @option params [String] :new_custom_key_store_name
    #   <p>Changes the friendly name of the custom key store to the value that you specify. The
    #         custom key store name must be unique in the Amazon Web Services account.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>To change this value, an CloudHSM key store must be disconnected. An external key store can
    #         be connected or disconnected.</p>
    # @option params [String] :key_store_password
    #   <p>Enter the current password of the <code>kmsuser</code> crypto user (CU) in the CloudHSM
    #         cluster that is associated with the custom key store. This parameter is valid only for custom
    #         key stores with a <code>CustomKeyStoreType</code> of <code>AWS_CLOUDHSM</code>.</p>
    #            <p>This parameter tells KMS the current password of the <code>kmsuser</code> crypto user
    #         (CU). It does not set or change the password of any users in the CloudHSM cluster.</p>
    #            <p>To change this value, the CloudHSM key store must be disconnected.</p>
    # @option params [String] :cloud_hsm_cluster_id
    #   <p>Associates the custom key store with a related CloudHSM cluster. This parameter is valid only
    #         for custom key stores with a <code>CustomKeyStoreType</code> of
    #         <code>AWS_CLOUDHSM</code>.</p>
    #            <p>Enter the cluster ID of the cluster that you used to create the custom key store or a
    #         cluster that shares a backup history and has the same cluster certificate as the original
    #         cluster. You cannot use this parameter to associate a custom key store with an unrelated
    #         cluster. In addition, the replacement cluster must <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore">fulfill the requirements</a> for
    #         a cluster associated with a custom key store. To view the cluster certificate of a cluster,
    #         use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a> operation.</p>
    #            <p>To change this value, the CloudHSM key store must be disconnected.</p>
    # @option params [String] :xks_proxy_uri_endpoint
    #   <p>Changes the URI endpoint that KMS uses to connect to your external key store proxy (XKS
    #         proxy). This parameter is valid only for custom key stores with a
    #           <code>CustomKeyStoreType</code> of <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>For external key stores with an <code>XksProxyConnectivity</code> value of
    #           <code>PUBLIC_ENDPOINT</code>, the protocol must be HTTPS.</p>
    #            <p>For external key stores with an <code>XksProxyConnectivity</code> value of
    #           <code>VPC_ENDPOINT_SERVICE</code>, specify <code>https://</code> followed by the private DNS
    #         name associated with the VPC endpoint service. Each external key store must use a different
    #         private DNS name.</p>
    #            <p>The combined <code>XksProxyUriEndpoint</code> and <code>XksProxyUriPath</code> values must
    #         be unique in the Amazon Web Services account and Region.</p>
    #            <p>To change this value, the external key store must be disconnected.</p>
    # @option params [String] :xks_proxy_uri_path
    #   <p>Changes the base path to the proxy APIs for this external key store. To find this value,
    #         see the documentation for your external key manager and external key store proxy (XKS proxy).
    #         This parameter is valid only for custom key stores with a <code>CustomKeyStoreType</code> of
    #           <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>The value must start with <code>/</code> and must end with <code>/kms/xks/v1</code>, where
    #           <code>v1</code> represents the version of the KMS external key store proxy API. You can
    #         include an optional prefix between the required elements such as
    #             <code>/<i>example</i>/kms/xks/v1</code>.</p>
    #            <p>The combined <code>XksProxyUriEndpoint</code> and <code>XksProxyUriPath</code> values must
    #         be unique in the Amazon Web Services account and Region.</p>
    #            <p>You can change this value when the external key store is connected or disconnected.</p>
    # @option params [String] :xks_proxy_vpc_endpoint_service_name
    #   <p>Changes the name that KMS uses to identify the Amazon VPC endpoint service for your external
    #         key store proxy (XKS proxy). This parameter is valid when the <code>CustomKeyStoreType</code>
    #         is <code>EXTERNAL_KEY_STORE</code> and the <code>XksProxyConnectivity</code> is
    #           <code>VPC_ENDPOINT_SERVICE</code>.</p>
    #            <p>To change this value, the external key store must be disconnected.</p>
    # @option params [Types::XksProxyAuthenticationCredentialType] :xks_proxy_authentication_credential
    #   <p>Changes the credentials that KMS uses to sign requests to the external key store proxy
    #         (XKS proxy). This parameter is valid only for custom key stores with a
    #           <code>CustomKeyStoreType</code> of <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>You must specify both the <code>AccessKeyId</code> and <code>SecretAccessKey</code> value
    #         in the authentication credential, even if you are only updating one value.</p>
    #            <p>This parameter doesn't establish or change your authentication credentials on the proxy.
    #         It just tells KMS the credential that you established with your external key store proxy.
    #         For example, if you rotate the credential on your external key store proxy, you can use this
    #         parameter to update the credential in KMS.</p>
    #            <p>You can change this value when the external key store is connected or disconnected.</p>
    # @option params [String] :xks_proxy_connectivity
    #   <p>Changes the connectivity setting for the external key store. To indicate that the external
    #         key store proxy uses a Amazon VPC endpoint service to communicate with KMS, specify
    #           <code>VPC_ENDPOINT_SERVICE</code>. Otherwise, specify <code>PUBLIC_ENDPOINT</code>.</p>
    #            <p>If you change the <code>XksProxyConnectivity</code> to <code>VPC_ENDPOINT_SERVICE</code>,
    #         you must also change the <code>XksProxyUriEndpoint</code> and add an
    #           <code>XksProxyVpcEndpointServiceName</code> value. </p>
    #            <p>If you change the <code>XksProxyConnectivity</code> to <code>PUBLIC_ENDPOINT</code>, you
    #         must also change the <code>XksProxyUriEndpoint</code> and specify a null or empty string for
    #         the <code>XksProxyVpcEndpointServiceName</code> value.</p>
    #            <p>To change this value, the external key store must be disconnected.</p>
    # @example To edit the friendly name of a custom key store
    #   # This example changes the friendly name of the AWS KMS custom key store to the name that you specify. This operation does not return any data. To verify that the operation worked, use the DescribeCustomKeyStores operation.
    #   params = {
    #     custom_key_store_id: "cks-1234567890abcdef0",
    #     new_custom_key_store_name: "DevelopmentKeys"
    #   }
    #   options = {}
    #   response = client.update_custom_key_store(params, options)
    #   response.to_h #=>
    #   {}
    # @example To edit the password of an AWS CloudHSM key store
    #   # This example tells AWS KMS the password for the kmsuser crypto user in the AWS CloudHSM cluster that is associated with the AWS KMS custom key store. (It does not change the password in the CloudHSM cluster.) This operation does not return any data.
    #   params = {
    #     custom_key_store_id: "cks-1234567890abcdef0",
    #     key_store_password: "ExamplePassword"
    #   }
    #   options = {}
    #   response = client.update_custom_key_store(params, options)
    #   response.to_h #=>
    #   {}
    # @example To update the proxy connectivity of an external key store to VPC_ENDPOINT_SERVICE
    #   # To change the external key store proxy connectivity option from public endpoint connectivity to VPC endpoint service connectivity, in addition to changing the <code>XksProxyConnectivity</code> value, you must change the <code>XksProxyUriEndpoint</code> value to reflect the private DNS name associated with the VPC endpoint service. You must also add an <code>XksProxyVpcEndpointServiceName</code> value.
    #   params = {
    #     custom_key_store_id: "cks-1234567890abcdef0",
    #     xks_proxy_connectivity: VPC_ENDPOINT_SERVICE,
    #     xks_proxy_uri_endpoint: "https://myproxy-private.xks.example.com",
    #     xks_proxy_vpc_endpoint_service_name: "com.amazonaws.vpce.us-east-1.vpce-svc-example"
    #   }
    #   options = {}
    #   response = client.update_custom_key_store(params, options)
    #   response.to_h #=>
    #   {}
    # @example To edit the proxy URI path of an external key store.
    #   # This example updates the proxy URI path for an external key store
    #   params = {
    #     custom_key_store_id: "cks-1234567890abcdef0",
    #     xks_proxy_uri_path: "/new-path/kms/xks/v1"
    #   }
    #   options = {}
    #   response = client.update_custom_key_store(params, options)
    #   response.to_h #=>
    #   {}
    # @example To associate the custom key store with a different, but related, AWS CloudHSM cluster.
    #   # This example changes the AWS CloudHSM cluster that is associated with an AWS CloudHSM key store to a related cluster, such as a different backup of the same cluster. This operation does not return any data. To verify that the operation worked, use the DescribeCustomKeyStores operation.
    #   params = {
    #     custom_key_store_id: "cks-1234567890abcdef0",
    #     cloud_hsm_cluster_id: "cluster-234abcdefABC"
    #   }
    #   options = {}
    #   response = client.update_custom_key_store(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_key_store_id: "CustomKeyStoreIdType", # required
    #     new_custom_key_store_name: "CustomKeyStoreNameType",
    #     key_store_password: "KeyStorePasswordType",
    #     cloud_hsm_cluster_id: "CloudHsmClusterIdType",
    #     xks_proxy_uri_endpoint: "XksProxyUriEndpointType",
    #     xks_proxy_uri_path: "XksProxyUriPathType",
    #     xks_proxy_vpc_endpoint_service_name: "XksProxyVpcEndpointServiceNameType",
    #     xks_proxy_authentication_credential: {
    #       access_key_id: "XksProxyAuthenticationAccessKeyIdType", # required
    #       raw_secret_access_key: "XksProxyAuthenticationRawSecretAccessKeyType", # required
    #     },
    #     xks_proxy_connectivity: "PUBLIC_ENDPOINT" # One of: ["PUBLIC_ENDPOINT", "VPC_ENDPOINT_SERVICE"]
    #   }
    #   options = {}
    #   response = client.update_custom_key_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateCustomKeyStoreResponse]
    def update_custom_key_store(params = {}, options = {})
      request = build_request(:update_custom_key_store, params)
      request.send_request(options)
    end

    # <p>Updates the description of a KMS key. To see the description of a KMS key, use <a>DescribeKey</a>. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UpdateKeyDescription</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeKey</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::UpdateKeyDescriptionRequest] params
    # @option params [String] :key_id
    #   <p>Updates the description of the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :description
    #   <p>New description for the KMS key.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    # @example To update the description of a KMS key
    #   # The following example updates the description of the specified KMS key.
    #   params = {
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     description: "Example description that indicates the intended use of this KMS key."
    #   }
    #   options = {}
    #   response = client.update_key_description(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     description: "DescriptionType", # required
    #   }
    #   options = {}
    #   response = client.update_key_description(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_key_description(params = {}, options = {})
      request = build_request(:update_key_description, params)
      request.send_request(options)
    end

    # <p>Changes the primary key of a multi-Region key. </p>
    #          <p>This operation changes the replica key in the specified Region to a primary key and
    #       changes the former primary key to a replica key. For example, suppose you have a primary key
    #       in <code>us-east-1</code> and a replica key in <code>eu-west-2</code>. If you run
    #         <code>UpdatePrimaryRegion</code> with a <code>PrimaryRegion</code> value of
    #         <code>eu-west-2</code>, the primary key is now the key in <code>eu-west-2</code>, and the
    #       key in <code>us-east-1</code> becomes a replica key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-update.html">Change the primary key in a
    #         set of multi-Region keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>This operation supports <i>multi-Region keys</i>, an KMS feature that lets you create multiple
    #       interoperable KMS keys in different Amazon Web Services Regions. Because these KMS keys have the same key ID, key
    #       material, and other metadata, you can use them interchangeably to encrypt data in one Amazon Web Services Region and decrypt
    #       it in a different Amazon Web Services Region without re-encrypting the data or making a cross-Region call. For more information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The <i>primary key</i> of a multi-Region key is the source for properties
    #       that are always shared by primary and replica keys, including the key material, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id">key ID</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec">key spec</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage">key usage</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin">key material
    #       origin</a>, and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic
    #         key rotation</a>. It's the only key that can be replicated. You cannot <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html">delete the primary
    #         key</a> until all replica keys are deleted.</p>
    #          <p>The key ID and primary Region that you specify uniquely identify the replica key that will
    #       become the primary key. The primary Region must already have a replica key. This operation
    #       does not create a KMS key in the specified Region. To find the replica keys, use the <a>DescribeKey</a> operation on the primary key or any replica key. To create a replica
    #       key, use the <a>ReplicateKey</a> operation.</p>
    #          <p>You can run this operation while using the affected multi-Region keys in cryptographic
    #       operations. This operation should not delay, interrupt, or cause failures in cryptographic
    #       operations. </p>
    #          <p>Even after this operation completes, the process of updating the primary Region might
    #       still be in progress for a few more seconds. Operations such as <code>DescribeKey</code> might
    #       display both the old and new primary keys as replicas. The old and new primary keys have a
    #       transient key state of <code>Updating</code>. The original key state is restored when the
    #       update is complete. While the key state is <code>Updating</code>, you can use the keys in
    #       cryptographic operations, but you cannot replicate the new primary key or perform certain
    #       management operations, such as enabling or disabling these keys. For details about the
    #         <code>Updating</code> key state, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>This operation does not return any output. To verify that primary key is changed, use the
    #         <a>DescribeKey</a> operation.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot use this operation in a
    #       different Amazon Web Services account. </p>
    #          <p>
    #             <b>Required permissions</b>: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>kms:UpdatePrimaryRegion</code> on the current primary key (in the primary key's
    #           Region). Include this permission primary key's key policy.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>kms:UpdatePrimaryRegion</code> on the current replica key (in the replica key's
    #           Region). Include this permission in the replica key's key policy.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ReplicateKey</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::UpdatePrimaryRegionRequest] params
    # @option params [String] :key_id
    #   <p>Identifies the current primary key. When the operation completes, this KMS key will be a
    #         replica key.</p>
    #            <p>Specify the key ID or key ARN of a multi-Region primary key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>mrk-1234abcd12ab34cd56ef1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    # @option params [String] :primary_region
    #   <p>The Amazon Web Services Region of the new primary key. Enter the Region ID, such as
    #           <code>us-east-1</code> or <code>ap-southeast-2</code>. There must be an existing replica key
    #         in this Region. </p>
    #            <p>When the operation completes, the multi-Region key in this Region will be the primary
    #         key.</p>
    # @example To update the primary Region of a multi-Region KMS key
    #   # The following UpdatePrimaryRegion example changes the multi-Region replica key in the eu-central-1 Region to the primary key. The current primary key in the us-west-1 Region becomes a replica key. 
    # # 
    # # The KeyId parameter identifies the current primary key in the us-west-1 Region. The PrimaryRegion parameter indicates the Region of the replica key that will become the new primary key.
    # # 
    # # This operation does not return any output. To verify that primary key is changed, use the DescribeKey operation.
    #   params = {
    #     key_id: "arn:aws:kms:us-west-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #     primary_region: "eu-central-1"
    #   }
    #   options = {}
    #   response = client.update_primary_region(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     primary_region: "RegionType", # required
    #   }
    #   options = {}
    #   response = client.update_primary_region(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_primary_region(params = {}, options = {})
      request = build_request(:update_primary_region, params)
      request.send_request(options)
    end

    # <p>Verifies a digital signature that was generated by the <a>Sign</a> operation. </p>
    #          <p></p>
    #          <p>Verification confirms that an authorized user signed the message with the specified KMS
    #       key and signing algorithm, and the message hasn't changed since it was signed. If the
    #       signature is verified, the value of the <code>SignatureValid</code> field in the response is
    #         <code>True</code>. If the signature verification fails, the <code>Verify</code> operation
    #       fails with an <code>KMSInvalidSignatureException</code> exception.</p>
    #          <p>A digital signature is generated by using the private key in an asymmetric KMS key. The
    #       signature is verified by using the public key in the same asymmetric KMS key.
    #       For information about asymmetric KMS keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>To use the <code>Verify</code> operation, specify the same asymmetric KMS key, message,
    #       and signing algorithm that were used to produce the signature. The message type does not need
    #       to be the same as the one used for signing, but it must indicate whether the value of the
    #         <code>Message</code> parameter should be hashed as part of the verification process.</p>
    #          <p>You can also verify the digital signature by using the public key of the KMS key outside
    #       of KMS. Use the <a>GetPublicKey</a> operation to download the public key in the
    #       asymmetric KMS key and then use the public key to verify the signature outside of KMS. The
    #       advantage of using the <code>Verify</code> operation is that it is performed within KMS. As
    #       a result, it's easy to call, the operation is performed within the FIPS boundary, it is logged
    #       in CloudTrail, and you can use key policy and IAM policy to determine who is authorized to use
    #       the KMS key to verify signatures.</p>
    #          <p>To verify a signature outside of KMS with an SM2 public key (China Regions only), you
    #       must specify the distinguishing ID. By default, KMS uses <code>1234567812345678</code> as
    #       the distinguishing ID. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/offline-operations.html#key-spec-sm-offline-verification">Offline
    #         verification with SM2 key pairs</a>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:Verify</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>Sign</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::VerifyRequest] params
    # @option params [String] :key_id
    #   <p>Identifies the asymmetric KMS key that will be used to verify the signature. This must be
    #         the same KMS key that was used to generate the signature. If you specify a different KMS key,
    #         the signature verification fails.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    # @option params [String] :message
    #   <p>Specifies the message that was signed. You can submit a raw message of up to 4096 bytes,
    #         or a hash digest of the message. If you submit a digest, use the <code>MessageType</code>
    #         parameter with a value of <code>DIGEST</code>.</p>
    #            <p>If the message specified here is different from the message that was signed, the signature
    #         verification fails. A message and its hash digest are considered to be the same
    #         message.</p>
    # @option params [String] :message_type
    #   <p>Tells KMS whether the value of the <code>Message</code> parameter should be hashed as
    #         part of the signing algorithm. Use <code>RAW</code> for unhashed messages; use
    #           <code>DIGEST</code> for message digests, which are already hashed; use
    #           <code>EXTERNAL_MU</code> for 64-byte representative μ used in ML-DSA signing as defined
    #         in NIST FIPS 204 Section 6.2.</p>
    #            <p>When the value of <code>MessageType</code> is <code>RAW</code>, KMS uses the standard
    #         signing algorithm, which begins with a hash function. When the value is <code>DIGEST</code>,
    #         KMS skips the hashing step in the signing algorithm. When the value is
    #           <code>EXTERNAL_MU</code> KMS skips the concatenated hashing of the public key hash and the
    #         message done in the ML-DSA signing algorithm.</p>
    #            <important>
    #               <p>Use the <code>DIGEST</code> or <code>EXTERNAL_MU</code> value only when the value of the
    #             <code>Message</code> parameter is a message digest. If you use the <code>DIGEST</code>
    #           value with an unhashed message, the security of the signing operation can be
    #           compromised.</p>
    #            </important>
    #            <p>When the value of <code>MessageType</code> is <code>DIGEST</code>, the length of the
    #           <code>Message</code> value must match the length of hashed messages for the specified
    #         signing algorithm.</p>
    #            <p>When the value of <code>MessageType</code> is <code>EXTERNAL_MU</code> the length of the
    #           <code>Message</code> value must be 64 bytes.</p>
    #            <p>You can submit a message digest and omit the <code>MessageType</code> or specify
    #           <code>RAW</code> so the digest is hashed again while signing. However, if the signed message
    #         is hashed once while signing, but twice while verifying, verification fails, even when the
    #         message hasn't changed.</p>
    #            <p>The hashing algorithm that <code>Verify</code> uses is based on the
    #           <code>SigningAlgorithm</code> value.</p>
    #            <ul>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_256 use the SHA_256 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_384 use the SHA_384 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_512 use the SHA_512 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>Signing algorithms that end in SHAKE_256 use the SHAKE_256 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>SM2DSA uses the SM3 hashing algorithm. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/offline-operations.html#key-spec-sm-offline-verification">Offline
    #               verification with SM2 key pairs</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :signature
    #   <p>The signature that the <code>Sign</code> operation generated.</p>
    # @option params [String] :signing_algorithm
    #   <p>The signing algorithm that was used to sign the message. If you submit a different
    #         algorithm, the signature verification fails.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To use an asymmetric KMS key to verify a digital signature
    #   # This operation uses the public key in an elliptic curve (ECC) asymmetric key to verify a digital signature within AWS KMS.
    #   params = {
    #     key_id: "alias/ECC_signing_key",
    #     message: "<message to be verified>",
    #     message_type: RAW,
    #     signature: "<binary data>",
    #     signing_algorithm: ECDSA_SHA_384
    #   }
    #   options = {}
    #   response = client.verify(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     signature_valid: true,
    #     signing_algorithm: ECDSA_SHA_384
    #   }
    # @example To use an asymmetric KMS key to verify a digital signature on a message digest
    #   # This operation uses the public key in an RSA asymmetric signing key pair to verify the digital signature of a message digest. Hashing a message into a digest before sending it to KMS lets you verify messages that exceed the 4096-byte message size limit. To indicate that the value of Message is a digest, use the MessageType parameter 
    #   params = {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     message: "<message digest to be verified>",
    #     message_type: DIGEST,
    #     signature: "<binary data>",
    #     signing_algorithm: RSASSA_PSS_SHA_512
    #   }
    #   options = {}
    #   response = client.verify(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     signature_valid: true,
    #     signing_algorithm: RSASSA_PSS_SHA_512
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key_id: "KeyIdType", # required
    #     message: "data", # required
    #     message_type: "RAW" # One of: ["RAW", "DIGEST", "EXTERNAL_MU"],
    #     signature: "data", # required
    #     signing_algorithm: "RSASSA_PSS_SHA_256" # One of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA", "ML_DSA_SHAKE_256"], # required
    #     grant_tokens: ["GrantTokenType"],
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.verify(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType",
    #     signature_valid: false,
    #     signing_algorithm: "RSASSA_PSS_SHA_256" # One of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA", "ML_DSA_SHAKE_256"]
    #   }
    # @return [Types::VerifyResponse]
    def verify(params = {}, options = {})
      request = build_request(:verify, params)
      request.send_request(options)
    end

    # <p>Verifies the hash-based message authentication code (HMAC) for a specified message, HMAC
    #       KMS key, and MAC algorithm. To verify the HMAC, <code>VerifyMac</code> computes an HMAC using
    #       the message, HMAC KMS key, and MAC algorithm that you specify, and compares the computed HMAC
    #       to the HMAC that you specify. If the HMACs are identical, the verification succeeds;
    #       otherwise, it fails. Verification indicates that the message hasn't changed since the HMAC was
    #       calculated, and the specified key was used to generate and verify the HMAC.</p>
    #          <p>HMAC KMS keys and the HMAC algorithms that KMS uses conform to industry standards
    #       defined in <a href="https://datatracker.ietf.org/doc/html/rfc2104">RFC 2104</a>.</p>
    #          <p>This operation is part of KMS support for HMAC KMS keys. For details, see
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC keys in KMS</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:VerifyMac</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>GenerateMac</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model. 
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/accessing-kms.html#programming-eventual-consistency">KMS eventual consistency</a>.</p>
    # @param [Hash, Types::VerifyMacRequest] params
    # @option params [String] :message
    #   <p>The message that will be used in the verification. Enter the same message that was used to
    #         generate the HMAC.</p>
    #            <p>
    #               <a>GenerateMac</a> and <code>VerifyMac</code> do not provide special handling
    #         for message digests. If you generated an HMAC for a hash digest of a message, you must verify
    #         the HMAC for the same hash digest.</p>
    # @option params [String] :key_id
    #   <p>The KMS key that will be used in the verification.</p>
    #            <p>Enter a key ID of the KMS key that was used to generate the HMAC. If you identify a
    #         different KMS key, the <code>VerifyMac</code> operation fails.</p>
    # @option params [String] :mac_algorithm
    #   <p>The MAC algorithm that will be used in the verification. Enter the same MAC algorithm that
    #         was used to compute the HMAC. This algorithm must be supported by the HMAC KMS key identified
    #         by the <code>KeyId</code> parameter.</p>
    # @option params [String] :mac
    #   <p>The HMAC to verify. Enter the HMAC that was generated by the <a>GenerateMac</a>
    #         operation when you specified the same message, HMAC KMS key, and MAC algorithm as the values
    #         specified in this request.</p>
    # @option params [Array<String>] :grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/using-grant-token.html">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html">Testing your permissions</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @example To verify an HMAC
    #   # This example verifies an HMAC for a particular message, HMAC KMS keys, and MAC algorithm. A value of 'true' in the MacValid value in the response indicates that the HMAC is valid.
    #   params = {
    #     message: "Hello World",
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     mac_algorithm: HMAC_SHA_384,
    #     mac: "<HMAC_TAG>"
    #   }
    #   options = {}
    #   response = client.verify_mac(params, options)
    #   response.to_h #=>
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     mac_valid: true,
    #     mac_algorithm: HMAC_SHA_384
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     message: "data", # required
    #     key_id: "KeyIdType", # required
    #     mac_algorithm: "HMAC_SHA_224" # One of: ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"], # required
    #     mac: "data", # required
    #     grant_tokens: ["GrantTokenType"],
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.verify_mac(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "KeyIdType",
    #     mac_valid: false,
    #     mac_algorithm: "HMAC_SHA_224" # One of: ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    #   }
    # @return [Types::VerifyMacResponse]
    def verify_mac(params = {}, options = {})
      request = build_request(:verify_mac, params)
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
      context[:gem_name] = 'aws-sdk-kms'
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
