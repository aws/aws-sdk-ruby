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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::PaymentCryptography
  # An API client for Aws::PaymentCryptography.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PaymentCryptographyControlPlane

    add_plugin(::Aws::PaymentCryptography::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
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
    #  Custom Endpoint
    # @option options [Aws::PaymentCryptography::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates an <i>alias</i>, or a friendly name, for an Amazon Web Services Payment Cryptography key. You can use an alias to identify a key in the console and when you call cryptographic operations such as <a href="https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/API_EncryptData.html">EncryptData</a> or <a href="https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/API_DecryptData.html">DecryptData</a>.</p> <p>You can associate the alias with any key in the same Amazon Web Services Region. Each alias is associated with only one key at a time, but a key can have multiple aliases. You can't create an alias without a key. The alias must be unique in the account and Amazon Web Services Region, but you can create another alias with the same name in a different Amazon Web Services Region.</p> <p>To change the key that's associated with the alias, call <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html">UpdateAlias</a>. To delete the alias, call <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html">DeleteAlias</a>. These operations don't affect the underlying key. To get the alias that you created, call <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html">ListAliases</a>.</p> <p> <b>Cross-account use</b>: This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html">DeleteAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html">GetAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html">ListAliases</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html">UpdateAlias</a> </p> </li> </ul>
    # @param [Hash, Types::CreateAliasInput] params
    # @option params [String] :alias_name
    #   <p>A friendly name that you can use to refer to a key. An alias must begin with <code>alias/</code> followed by a name, for example <code>alias/ExampleAlias</code>. It can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-).</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important>
    # @option params [String] :key_arn
    #   <p>The <code>KeyARN</code> of the key to associate with the alias.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_name: "AliasName", # required
    #     key_arn: "KeyArn"
    #   }
    #   options = {}
    #   response = client.create_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alias: { # required
    #       alias_name: "AliasName", # required
    #       key_arn: "KeyArn"
    #     }
    #   }
    # @return [Types::CreateAliasOutput]
    def create_alias(params = {}, options = {})
      request = build_request(:create_alias, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Web Services Payment Cryptography key, a logical representation of a cryptographic key, that is unique in your account and Amazon Web Services Region. You use keys for cryptographic functions such as encryption and decryption. </p> <p>In addition to the key material used in cryptographic operations, an Amazon Web Services Payment Cryptography key includes metadata such as the key ARN, key usage, key origin, creation date, description, and key state.</p> <p>When you create a key, you specify both immutable and mutable data about the key. The immutable data contains key attributes that define the scope and cryptographic operations that you can perform using the key, for example key class (example: <code>SYMMETRIC_KEY</code>), key algorithm (example: <code>TDES_2KEY</code>), key usage (example: <code>TR31_P0_PIN_ENCRYPTION_KEY</code>) and key modes of use (example: <code>Encrypt</code>). Amazon Web Services Payment Cryptography binds key attributes to keys using key blocks when you store or export them. Amazon Web Services Payment Cryptography stores the key contents wrapped and never stores or transmits them in the clear.</p> <p>For information about valid combinations of key attributes, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. The mutable data contained within a key includes usage timestamp and key deletion timestamp and can be modified after creation.</p> <p>You can use the <code>CreateKey</code> operation to generate an ECC (Elliptic Curve Cryptography) key pair used for establishing an ECDH (Elliptic Curve Diffie-Hellman) key agreement between two parties. In the ECDH key agreement process, both parties generate their own ECC key pair with key usage K3 and exchange the public keys. Each party then use their private key, the received public key from the other party, and the key derivation parameters including key derivation function, hash algorithm, derivation data, and key algorithm to derive a shared key.</p> <p>To maintain the single-use principle of cryptographic keys in payments, ECDH derived keys should not be used for multiple purposes, such as a <code>TR31_P0_PIN_ENCRYPTION_KEY</code> and <code>TR31_K1_KEY_BLOCK_PROTECTION_KEY</code>. When creating ECC key pairs in Amazon Web Services Payment Cryptography you can optionally set the <code>DeriveKeyUsage</code> parameter, which defines the key usage bound to the symmetric key that will be derived using the ECC key pair.</p> <p> <b>Cross-account use</b>: This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html">DeleteKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetKey.html">GetKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListKeys.html">ListKeys</a> </p> </li> </ul>
    # @param [Hash, Types::CreateKeyInput] params
    # @option params [Types::KeyAttributes] :key_attributes
    #   <p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after the key is created.</p>
    # @option params [String] :key_check_value_algorithm
    #   <p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>
    # @option params [Boolean] :exportable
    #   <p>Specifies whether the key is exportable from the service.</p>
    # @option params [Boolean] :enabled
    #   <p>Specifies whether to enable the key. If the key is enabled, it is activated for use within the service. If the key is not enabled, then it is created but not activated. The default value is enabled.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Assigns one or more tags to the Amazon Web Services Payment Cryptography key. Use this parameter to tag a key when it is created. To tag an existing Amazon Web Services Payment Cryptography key, use the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html">TagResource</a> operation.</p> <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are required, but the tag value can be an empty (null) string. You can't have more than one tag on an Amazon Web Services Payment Cryptography key with the same tag key. </p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important> <note> <p>Tagging or untagging an Amazon Web Services Payment Cryptography key can allow or deny permission to the key.</p> </note>
    # @option params [String] :derive_key_usage
    #   <p>The intended cryptographic usage of keys derived from the ECC key pair to be created.</p> <p>After creating an ECC key pair, you cannot change the intended cryptographic usage of keys derived from it using ECDH.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_attributes: { # required
    #       key_usage: "KeyUsage", # required
    #       key_class: "KeyClass", # required
    #       key_algorithm: "KeyAlgorithm", # required
    #       key_modes_of_use: { # required
    #         encrypt: false,
    #         decrypt: false,
    #         wrap: false,
    #         unwrap: false,
    #         generate: false,
    #         sign: false,
    #         verify: false,
    #         derive_key: false,
    #         no_restrictions: false
    #       }
    #     },
    #     key_check_value_algorithm: "KeyCheckValueAlgorithm",
    #     exportable: false, # required
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     derive_key_usage: "DeriveKeyUsage"
    #   }
    #   options = {}
    #   response = client.create_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key: { # required
    #       key_arn: "KeyArn", # required
    #       key_attributes: { # required
    #         key_usage: "KeyUsage", # required
    #         key_class: "KeyClass", # required
    #         key_algorithm: "KeyAlgorithm", # required
    #         key_modes_of_use: { # required
    #           encrypt: false,
    #           decrypt: false,
    #           wrap: false,
    #           unwrap: false,
    #           generate: false,
    #           sign: false,
    #           verify: false,
    #           derive_key: false,
    #           no_restrictions: false
    #         }
    #       },
    #       key_check_value: "KeyCheckValue", # required
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm", # required
    #       enabled: false, # required
    #       exportable: false, # required
    #       key_state: "KeyState", # required
    #       key_origin: "KeyOrigin", # required
    #       create_timestamp: Time.now, # required
    #       usage_start_timestamp: Time.now,
    #       usage_stop_timestamp: Time.now,
    #       delete_pending_timestamp: Time.now,
    #       delete_timestamp: Time.now,
    #       derive_key_usage: "DeriveKeyUsage"
    #     }
    #   }
    # @return [Types::CreateKeyOutput]
    def create_key(params = {}, options = {})
      request = build_request(:create_key, params)
      request.send_request(options)
    end

    # <p>Deletes the alias, but doesn't affect the underlying key.</p> <p>Each key can have multiple aliases. To get the aliases of all keys, use the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html">UpdateAlias</a> operation. To change the alias of a key, first use <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html">DeleteAlias</a> to delete the current alias and then use <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html">CreateAlias</a> to create a new alias. To associate an existing alias with a different key, call <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html">UpdateAlias</a>.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html">CreateAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html">GetAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html">ListAliases</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html">UpdateAlias</a> </p> </li> </ul>
    # @param [Hash, Types::DeleteAliasInput] params
    # @option params [String] :alias_name
    #   <p>A friendly name that you can use to refer Amazon Web Services Payment Cryptography key. This value must begin with <code>alias/</code> followed by a name, such as <code>alias/ExampleAlias</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_name: "AliasName", # required
    #   }
    #   options = {}
    #   response = client.delete_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAliasOutput]
    def delete_alias(params = {}, options = {})
      request = build_request(:delete_alias, params)
      request.send_request(options)
    end

    # <p>Deletes the key material and metadata associated with Amazon Web Services Payment Cryptography key.</p> <p>Key deletion is irreversible. After a key is deleted, you can't perform cryptographic operations using the key. For example, you can't decrypt data that was encrypted by a deleted Amazon Web Services Payment Cryptography key, and the data may become unrecoverable. Because key deletion is destructive, Amazon Web Services Payment Cryptography has a safety mechanism to prevent accidental deletion of a key. When you call this operation, Amazon Web Services Payment Cryptography disables the specified key but doesn't delete it until after a waiting period set using <code>DeleteKeyInDays</code>. The default waiting period is 7 days. During the waiting period, the <code>KeyState</code> is <code>DELETE_PENDING</code>. After the key is deleted, the <code>KeyState</code> is <code>DELETE_COMPLETE</code>.</p> <p>You should delete a key only when you are sure that you don't need to use it anymore and no other parties are utilizing this key. If you aren't sure, consider deactivating it instead by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html">StopKeyUsage</a>.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_RestoreKey.html">RestoreKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html">StartKeyUsage</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html">StopKeyUsage</a> </p> </li> </ul>
    # @param [Hash, Types::DeleteKeyInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>KeyARN</code> of the key that is scheduled for deletion.</p>
    # @option params [Integer] :delete_key_in_days
    #   <p>The waiting period for key deletion. The default value is seven days.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     delete_key_in_days: 1
    #   }
    #   options = {}
    #   response = client.delete_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key: { # required
    #       key_arn: "KeyArn", # required
    #       key_attributes: { # required
    #         key_usage: "KeyUsage", # required
    #         key_class: "KeyClass", # required
    #         key_algorithm: "KeyAlgorithm", # required
    #         key_modes_of_use: { # required
    #           encrypt: false,
    #           decrypt: false,
    #           wrap: false,
    #           unwrap: false,
    #           generate: false,
    #           sign: false,
    #           verify: false,
    #           derive_key: false,
    #           no_restrictions: false
    #         }
    #       },
    #       key_check_value: "KeyCheckValue", # required
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm", # required
    #       enabled: false, # required
    #       exportable: false, # required
    #       key_state: "KeyState", # required
    #       key_origin: "KeyOrigin", # required
    #       create_timestamp: Time.now, # required
    #       usage_start_timestamp: Time.now,
    #       usage_stop_timestamp: Time.now,
    #       delete_pending_timestamp: Time.now,
    #       delete_timestamp: Time.now,
    #       derive_key_usage: "DeriveKeyUsage"
    #     }
    #   }
    # @return [Types::DeleteKeyOutput]
    def delete_key(params = {}, options = {})
      request = build_request(:delete_key, params)
      request.send_request(options)
    end

    # <p>Exports a key from Amazon Web Services Payment Cryptography.</p> <p>Amazon Web Services Payment Cryptography simplifies key exchange by replacing the existing paper-based approach with a modern electronic approach. With <code>ExportKey</code> you can export symmetric keys using either symmetric and asymmetric key exchange mechanisms. Using this operation, you can share your Amazon Web Services Payment Cryptography generated keys with other service partners to perform cryptographic operations outside of Amazon Web Services Payment Cryptography </p> <p>For symmetric key exchange, Amazon Web Services Payment Cryptography uses the ANSI X9 TR-31 norm in accordance with PCI PIN guidelines. And for asymmetric key exchange, Amazon Web Services Payment Cryptography supports ANSI X9 TR-34 norm, RSA unwrap, and ECDH (Elliptic Curve Diffie-Hellman) key exchange mechanisms. Asymmetric key exchange methods are typically used to establish bi-directional trust between the two parties exhanging keys and are used for initial key exchange such as Key Encryption Key (KEK). After which you can export working keys using symmetric method to perform various cryptographic operations within Amazon Web Services Payment Cryptography.</p> <p>PCI requires specific minimum key strength of wrapping keys used to protect the keys being exchanged electronically. These requirements can change when PCI standards are revised. The rules specify that wrapping keys used for transport must be at least as strong as the key being protected. For more information on recommended key strength of wrapping keys and key exchange mechanism, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-importexport.html">Importing and exporting keys</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>You can also use <code>ExportKey</code> functionality to generate and export an IPEK (Initial Pin Encryption Key) from Amazon Web Services Payment Cryptography using either TR-31 or TR-34 export key exchange. IPEK is generated from BDK (Base Derivation Key) and <code>ExportDukptInitialKey</code> attribute KSN (<code>KeySerialNumber</code>). The generated IPEK does not persist within Amazon Web Services Payment Cryptography and has to be re-generated each time during export.</p> <p>For key exchange using TR-31 or TR-34 key blocks, you can also export optional blocks within the key block header which contain additional attribute information about the key. The <code>KeyVersion</code> within <code>KeyBlockHeaders</code> indicates the version of the key within the key block. Furthermore, <code>KeyExportability</code> within <code>KeyBlockHeaders</code> can be used to further restrict exportability of the key after export from Amazon Web Services Payment Cryptography.</p> <p>The <code>OptionalBlocks</code> contain the additional data related to the key. For information on data type that can be included within optional blocks, refer to <a href="https://webstore.ansi.org/standards/ascx9/ansix91432022">ASC X9.143-2022</a>.</p> <note> <p>Data included in key block headers is signed but transmitted in clear text. Sensitive or confidential information should not be included in optional blocks. Refer to ASC X9.143-2022 standard for information on allowed data type.</p> </note> <p> <b>To export initial keys (KEK) or IPEK using TR-34</b> </p> <p>Using this operation, you can export initial key using TR-34 asymmetric key exchange. You can only export KEK generated within Amazon Web Services Payment Cryptography. In TR-34 terminology, the sending party of the key is called Key Distribution Host (KDH) and the receiving party of the key is called Key Receiving Device (KRD). During key export process, KDH is Amazon Web Services Payment Cryptography which initiates key export and KRD is the user receiving the key.</p> <p>To initiate TR-34 key export, the KRD must obtain an export token by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html">GetParametersForExport</a>. This operation also generates a key pair for the purpose of key export, signs the key and returns back the signing public key certificate (also known as KDH signing certificate) and root certificate chain. The KDH uses the private key to sign the the export payload and the signing public key certificate is provided to KRD to verify the signature. The KRD can import the root certificate into its Hardware Security Module (HSM), as required. The export token and the associated KDH signing certificate expires after 30 days. </p> <p>Next the KRD generates a key pair for the the purpose of encrypting the KDH key and provides the public key cerificate (also known as KRD wrapping certificate) back to KDH. The KRD will also import the root cerificate chain into Amazon Web Services Payment Cryptography by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a> for <code>RootCertificatePublicKey</code>. The KDH, Amazon Web Services Payment Cryptography, will use the KRD wrapping cerificate to encrypt (wrap) the key under export and signs it with signing private key to generate a TR-34 WrappedKeyBlock. For more information on TR-34 key export, see section <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-export.html">Exporting symmetric keys</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. </p> <p>Set the following parameters:</p> <ul> <li> <p> <code>ExportAttributes</code>: Specify export attributes in case of IPEK export. This parameter is optional for KEK export.</p> </li> <li> <p> <code>ExportKeyIdentifier</code>: The <code>KeyARN</code> of the KEK or BDK (in case of IPEK) under export.</p> </li> <li> <p> <code>KeyMaterial</code>: Use <code>Tr34KeyBlock</code> parameters.</p> </li> <li> <p> <code>CertificateAuthorityPublicKeyIdentifier</code>: The <code>KeyARN</code> of the certificate chain that signed the KRD wrapping key certificate.</p> </li> <li> <p> <code>ExportToken</code>: Obtained from KDH by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html">GetParametersForImport</a>.</p> </li> <li> <p> <code>WrappingKeyCertificate</code>: The public key certificate in PEM format (base64 encoded) of the KRD wrapping key Amazon Web Services Payment Cryptography uses for encryption of the TR-34 export payload. This certificate must be signed by the root certificate (CertificateAuthorityPublicKeyIdentifier) imported into Amazon Web Services Payment Cryptography.</p> </li> </ul> <p>When this operation is successful, Amazon Web Services Payment Cryptography returns the KEK or IPEK as a TR-34 WrappedKeyBlock. </p> <p> <b>To export initial keys (KEK) or IPEK using RSA Wrap and Unwrap</b> </p> <p>Using this operation, you can export initial key using asymmetric RSA wrap and unwrap key exchange method. To initiate export, generate an asymmetric key pair on the receiving HSM and obtain the public key certificate in PEM format (base64 encoded) for the purpose of wrapping and the root certifiate chain. Import the root certificate into Amazon Web Services Payment Cryptography by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a> for <code>RootCertificatePublicKey</code>.</p> <p>Next call <code>ExportKey</code> and set the following parameters:</p> <ul> <li> <p> <code>CertificateAuthorityPublicKeyIdentifier</code>: The <code>KeyARN</code> of the certificate chain that signed wrapping key certificate.</p> </li> <li> <p> <code>KeyMaterial</code>: Set to <code>KeyCryptogram</code>.</p> </li> <li> <p> <code>WrappingKeyCertificate</code>: The public key certificate in PEM format (base64 encoded) obtained by the receiving HSM and signed by the root certificate (CertificateAuthorityPublicKeyIdentifier) imported into Amazon Web Services Payment Cryptography. The receiving HSM uses its private key component to unwrap the WrappedKeyCryptogram.</p> </li> </ul> <p>When this operation is successful, Amazon Web Services Payment Cryptography returns the WrappedKeyCryptogram. </p> <p> <b>To export working keys or IPEK using TR-31</b> </p> <p>Using this operation, you can export working keys or IPEK using TR-31 symmetric key exchange. In TR-31, you must use an initial key such as KEK to encrypt or wrap the key under export. To establish a KEK, you can use <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a> or <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a>. </p> <p>Set the following parameters:</p> <ul> <li> <p> <code>ExportAttributes</code>: Specify export attributes in case of IPEK export. This parameter is optional for KEK export.</p> </li> <li> <p> <code>ExportKeyIdentifier</code>: The <code>KeyARN</code> of the KEK or BDK (in case of IPEK) under export.</p> </li> <li> <p> <code>KeyMaterial</code>: Use <code>Tr31KeyBlock</code> parameters.</p> </li> </ul> <p> <b>To export working keys using ECDH</b> </p> <p>You can also use ECDH key agreement to export working keys in a TR-31 keyblock, where the wrapping key is an ECDH derived key.</p> <p>To initiate a TR-31 key export using ECDH, both sides must create an ECC key pair with key usage K3 and exchange public key certificates. In Amazon Web Services Payment Cryptography, you can do this by calling <code>CreateKey</code>. If you have not already done so, you must import the CA chain that issued the receiving public key certificate by calling <code>ImportKey</code> with input <code>RootCertificatePublicKey</code> for root CA or <code>TrustedPublicKey</code> for intermediate CA. You can then complete a TR-31 key export by deriving a shared wrapping key using the service ECC key pair, public certificate of your ECC key pair outside of Amazon Web Services Payment Cryptography, and the key derivation parameters including key derivation function, hash algorithm, derivation data, key algorithm.</p> <ul> <li> <p> <code>KeyMaterial</code>: Use <code>DiffieHellmanTr31KeyBlock</code> parameters.</p> </li> <li> <p> <code>PrivateKeyIdentifier</code>: The <code>KeyArn</code> of the ECC key pair created within Amazon Web Services Payment Cryptography to derive a shared KEK.</p> </li> <li> <p> <code>PublicKeyCertificate</code>: The public key certificate of the receiving ECC key pair in PEM format (base64 encoded) to derive a shared KEK.</p> </li> <li> <p> <code>CertificateAuthorityPublicKeyIdentifier</code>: The <code>keyARN</code> of the CA that signed the public key certificate of the receiving ECC key pair.</p> </li> </ul> <p>When this operation is successful, Amazon Web Services Payment Cryptography returns the working key as a TR-31 WrappedKeyBlock, where the wrapping key is the ECDH derived key.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html">GetParametersForExport</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a> </p> </li> </ul>
    # @param [Hash, Types::ExportKeyInput] params
    # @option params [Types::ExportKeyMaterial] :key_material
    #   <p>The key block format type, for example, TR-34 or TR-31, to use during key material export.</p>
    # @option params [String] :export_key_identifier
    #   <p>The <code>KeyARN</code> of the key under export from Amazon Web Services Payment Cryptography.</p>
    # @option params [Types::ExportAttributes] :export_attributes
    #   <p>The attributes for IPEK generation during export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_material: { # required
    #       # One of:
    #       tr31_key_block: {
    #         wrapping_key_identifier: "KeyArnOrKeyAliasType", # required
    #         key_block_headers: {
    #           key_modes_of_use: {
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false
    #           },
    #           key_exportability: "KeyExportability",
    #           key_version: "KeyVersion",
    #           optional_blocks: {
    #             "OptionalBlockId" => "OptionalBlockValue"
    #           }
    #         }
    #       },
    #       tr34_key_block: {
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         wrapping_key_certificate: "CertificateType", # required
    #         export_token: "ExportTokenId", # required
    #         key_block_format: "Tr34KeyBlockFormat", # required
    #         random_nonce: "EvenHexLengthBetween16And32",
    #         key_block_headers: {
    #           key_modes_of_use: {
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false
    #           },
    #           key_exportability: "KeyExportability",
    #           key_version: "KeyVersion",
    #           optional_blocks: {
    #             "OptionalBlockId" => "OptionalBlockValue"
    #           }
    #         }
    #       },
    #       key_cryptogram: {
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         wrapping_key_certificate: "CertificateType", # required
    #         wrapping_spec: "WrappingKeySpec"
    #       },
    #       diffie_hellman_tr31_key_block: {
    #         private_key_identifier: "KeyArnOrKeyAliasType", # required
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         public_key_certificate: "CertificateType", # required
    #         derive_key_algorithm: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224"], # required
    #         key_derivation_function: "NIST_SP800" # One of: ["NIST_SP800", "ANSI_X963"], # required
    #         key_derivation_hash_algorithm: "SHA_256" # One of: ["SHA_256", "SHA_384", "SHA_512"], # required
    #         derivation_data: { # required
    #           # One of:
    #           shared_information: "SharedInformation"
    #         },
    #         key_block_headers: {
    #           key_modes_of_use: {
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false
    #           },
    #           key_exportability: "KeyExportability",
    #           key_version: "KeyVersion",
    #           optional_blocks: {
    #             "OptionalBlockId" => "OptionalBlockValue"
    #           }
    #         }
    #       }
    #     },
    #     export_key_identifier: "KeyArnOrKeyAliasType", # required
    #     export_attributes: {
    #       export_dukpt_initial_key: {
    #         key_serial_number: "HexLength20Or24", # required
    #       },
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm"
    #     }
    #   }
    #   options = {}
    #   response = client.export_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     wrapped_key: {
    #       wrapping_key_arn: "KeyArn", # required
    #       wrapped_key_material_format: "WrappedKeyMaterialFormat", # required
    #       key_material: "KeyMaterial", # required
    #       key_check_value: "KeyCheckValue",
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm"
    #     }
    #   }
    # @return [Types::ExportKeyOutput]
    def export_key(params = {}, options = {})
      request = build_request(:export_key, params)
      request.send_request(options)
    end

    # <p>Gets the Amazon Web Services Payment Cryptography key associated with the alias.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html">CreateAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html">DeleteAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html">ListAliases</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html">UpdateAlias</a> </p> </li> </ul>
    # @param [Hash, Types::GetAliasInput] params
    # @option params [String] :alias_name
    #   <p>The alias of the Amazon Web Services Payment Cryptography key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_name: "AliasName", # required
    #   }
    #   options = {}
    #   response = client.get_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alias: { # required
    #       alias_name: "AliasName", # required
    #       key_arn: "KeyArn"
    #     }
    #   }
    # @return [Types::GetAliasOutput]
    def get_alias(params = {}, options = {})
      request = build_request(:get_alias, params)
      request.send_request(options)
    end

    # <p>Gets the key material for an Amazon Web Services Payment Cryptography key, including the immutable and mutable data specified when the key was created.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html">DeleteKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListKeys.html">ListKeys</a> </p> </li> </ul>
    # @param [Hash, Types::GetKeyInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>KeyARN</code> of the Amazon Web Services Payment Cryptography key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   }
    #   options = {}
    #   response = client.get_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key: { # required
    #       key_arn: "KeyArn", # required
    #       key_attributes: { # required
    #         key_usage: "KeyUsage", # required
    #         key_class: "KeyClass", # required
    #         key_algorithm: "KeyAlgorithm", # required
    #         key_modes_of_use: { # required
    #           encrypt: false,
    #           decrypt: false,
    #           wrap: false,
    #           unwrap: false,
    #           generate: false,
    #           sign: false,
    #           verify: false,
    #           derive_key: false,
    #           no_restrictions: false
    #         }
    #       },
    #       key_check_value: "KeyCheckValue", # required
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm", # required
    #       enabled: false, # required
    #       exportable: false, # required
    #       key_state: "KeyState", # required
    #       key_origin: "KeyOrigin", # required
    #       create_timestamp: Time.now, # required
    #       usage_start_timestamp: Time.now,
    #       usage_stop_timestamp: Time.now,
    #       delete_pending_timestamp: Time.now,
    #       delete_timestamp: Time.now,
    #       derive_key_usage: "DeriveKeyUsage"
    #     }
    #   }
    # @return [Types::GetKeyOutput]
    def get_key(params = {}, options = {})
      request = build_request(:get_key, params)
      request.send_request(options)
    end

    # <p>Gets the export token and the signing key certificate to initiate a TR-34 key export from Amazon Web Services Payment Cryptography.</p> <p>The signing key certificate signs the wrapped key under export within the TR-34 key payload. The export token and signing key certificate must be in place and operational before calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ExportKey.html">ExportKey</a>. The export token expires in 30 days. You can use the same export token to export multiple keys from your service account.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ExportKey.html">ExportKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html">GetParametersForImport</a> </p> </li> </ul>
    # @param [Hash, Types::GetParametersForExportInput] params
    # @option params [String] :key_material_type
    #   <p>The key block format type (for example, TR-34 or TR-31) to use during key material export. Export token is only required for a TR-34 key export, <code>TR34_KEY_BLOCK</code>. Export token is not required for TR-31 key export.</p>
    # @option params [String] :signing_key_algorithm
    #   <p>The signing key algorithm to generate a signing key certificate. This certificate signs the wrapped key under export within the TR-34 key block. <code>RSA_2048</code> is the only signing key algorithm allowed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_material_type: "KeyMaterialType", # required
    #     signing_key_algorithm: "KeyAlgorithm", # required
    #   }
    #   options = {}
    #   response = client.get_parameters_for_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     signing_key_certificate: "CertificateType", # required
    #     signing_key_certificate_chain: "CertificateType", # required
    #     signing_key_algorithm: "KeyAlgorithm", # required
    #     export_token: "ExportTokenId", # required
    #     parameters_valid_until_timestamp: Time.now, # required
    #   }
    # @return [Types::GetParametersForExportOutput]
    def get_parameters_for_export(params = {}, options = {})
      request = build_request(:get_parameters_for_export, params)
      request.send_request(options)
    end

    # <p>Gets the import token and the wrapping key certificate in PEM format (base64 encoded) to initiate a TR-34 WrappedKeyBlock or a RSA WrappedKeyCryptogram import into Amazon Web Services Payment Cryptography.</p> <p>The wrapping key certificate wraps the key under import. The import token and wrapping key certificate must be in place and operational before calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a>. The import token expires in 30 days. You can use the same import token to import multiple keys into your service account.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html">GetParametersForExport</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a> </p> </li> </ul>
    # @param [Hash, Types::GetParametersForImportInput] params
    # @option params [String] :key_material_type
    #   <p>The method to use for key material import. Import token is only required for TR-34 WrappedKeyBlock (<code>TR34_KEY_BLOCK</code>) and RSA WrappedKeyCryptogram (<code>KEY_CRYPTOGRAM</code>).</p> <p>Import token is not required for TR-31, root public key cerificate or trusted public key certificate.</p>
    # @option params [String] :wrapping_key_algorithm
    #   <p>The wrapping key algorithm to generate a wrapping key certificate. This certificate wraps the key under import.</p> <p>At this time, <code>RSA_2048</code> is the allowed algorithm for TR-34 WrappedKeyBlock import. Additionally, <code>RSA_2048</code>, <code>RSA_3072</code>, <code>RSA_4096</code> are the allowed algorithms for RSA WrappedKeyCryptogram import.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_material_type: "KeyMaterialType", # required
    #     wrapping_key_algorithm: "KeyAlgorithm", # required
    #   }
    #   options = {}
    #   response = client.get_parameters_for_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     wrapping_key_certificate: "CertificateType", # required
    #     wrapping_key_certificate_chain: "CertificateType", # required
    #     wrapping_key_algorithm: "KeyAlgorithm", # required
    #     import_token: "ImportTokenId", # required
    #     parameters_valid_until_timestamp: Time.now, # required
    #   }
    # @return [Types::GetParametersForImportOutput]
    def get_parameters_for_import(params = {}, options = {})
      request = build_request(:get_parameters_for_import, params)
      request.send_request(options)
    end

    # <p>Gets the public key certificate of the asymmetric key pair that exists within Amazon Web Services Payment Cryptography.</p> <p>Unlike the private key of an asymmetric key, which never leaves Amazon Web Services Payment Cryptography unencrypted, callers with <code>GetPublicKeyCertificate</code> permission can download the public key certificate of the asymmetric key. You can share the public key certificate to allow others to encrypt messages and verify signatures outside of Amazon Web Services Payment Cryptography</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p>
    # @param [Hash, Types::GetPublicKeyCertificateInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>KeyARN</code> of the asymmetric key pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   }
    #   options = {}
    #   response = client.get_public_key_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_certificate: "CertificateType", # required
    #     key_certificate_chain: "CertificateType", # required
    #   }
    # @return [Types::GetPublicKeyCertificateOutput]
    def get_public_key_certificate(params = {}, options = {})
      request = build_request(:get_public_key_certificate, params)
      request.send_request(options)
    end

    # <p>Imports symmetric keys and public key certificates in PEM format (base64 encoded) into Amazon Web Services Payment Cryptography.</p> <p>Amazon Web Services Payment Cryptography simplifies key exchange by replacing the existing paper-based approach with a modern electronic approach. With <code>ImportKey</code> you can import symmetric keys using either symmetric and asymmetric key exchange mechanisms.</p> <p>For symmetric key exchange, Amazon Web Services Payment Cryptography uses the ANSI X9 TR-31 norm in accordance with PCI PIN guidelines. And for asymmetric key exchange, Amazon Web Services Payment Cryptography supports ANSI X9 TR-34 norm, RSA unwrap, and ECDH (Elliptic Curve Diffie-Hellman) key exchange mechanisms. Asymmetric key exchange methods are typically used to establish bi-directional trust between the two parties exhanging keys and are used for initial key exchange such as Key Encryption Key (KEK) or Zone Master Key (ZMK). After which you can import working keys using symmetric method to perform various cryptographic operations within Amazon Web Services Payment Cryptography.</p> <p>PCI requires specific minimum key strength of wrapping keys used to protect the keys being exchanged electronically. These requirements can change when PCI standards are revised. The rules specify that wrapping keys used for transport must be at least as strong as the key being protected. For more information on recommended key strength of wrapping keys and key exchange mechanism, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-importexport.html">Importing and exporting keys</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>You can also import a <i>root public key certificate</i>, used to sign other public key certificates, or a <i>trusted public key certificate</i> under an already established root public key certificate.</p> <p> <b>To import a public root key certificate</b> </p> <p>Using this operation, you can import the public component (in PEM cerificate format) of your private root key. You can use the imported public root key certificate for digital signatures, for example signing wrapping key or signing key in TR-34, within your Amazon Web Services Payment Cryptography account.</p> <p>Set the following parameters:</p> <ul> <li> <p> <code>KeyMaterial</code>: <code>RootCertificatePublicKey</code> </p> </li> <li> <p> <code>KeyClass</code>: <code>PUBLIC_KEY</code> </p> </li> <li> <p> <code>KeyModesOfUse</code>: <code>Verify</code> </p> </li> <li> <p> <code>KeyUsage</code>: <code>TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE</code> </p> </li> <li> <p> <code>PublicKeyCertificate</code>: The public key certificate in PEM format (base64 encoded) of the private root key under import.</p> </li> </ul> <p> <b>To import a trusted public key certificate</b> </p> <p>The root public key certificate must be in place and operational before you import a trusted public key certificate. Set the following parameters:</p> <ul> <li> <p> <code>KeyMaterial</code>: <code>TrustedCertificatePublicKey</code> </p> </li> <li> <p> <code>CertificateAuthorityPublicKeyIdentifier</code>: <code>KeyArn</code> of the <code>RootCertificatePublicKey</code>.</p> </li> <li> <p> <code>KeyModesOfUse</code> and <code>KeyUsage</code>: Corresponding to the cryptographic operations such as wrap, sign, or encrypt that you will allow the trusted public key certificate to perform.</p> </li> <li> <p> <code>PublicKeyCertificate</code>: The trusted public key certificate in PEM format (base64 encoded) under import.</p> </li> </ul> <p> <b>To import initial keys (KEK or ZMK or similar) using TR-34</b> </p> <p>Using this operation, you can import initial key using TR-34 asymmetric key exchange. In TR-34 terminology, the sending party of the key is called Key Distribution Host (KDH) and the receiving party of the key is called Key Receiving Device (KRD). During the key import process, KDH is the user who initiates the key import and KRD is Amazon Web Services Payment Cryptography who receives the key.</p> <p>To initiate TR-34 key import, the KDH must obtain an import token by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html">GetParametersForImport</a>. This operation generates an encryption keypair for the purpose of key import, signs the key and returns back the wrapping key certificate (also known as KRD wrapping certificate) and the root certificate chain. The KDH must trust and install the KRD wrapping certificate on its HSM and use it to encrypt (wrap) the KDH key during TR-34 WrappedKeyBlock generation. The import token and associated KRD wrapping certificate expires after 30 days.</p> <p>Next the KDH generates a key pair for the purpose of signing the encrypted KDH key and provides the public certificate of the signing key to Amazon Web Services Payment Cryptography. The KDH will also need to import the root certificate chain of the KDH signing certificate by calling <code>ImportKey</code> for <code>RootCertificatePublicKey</code>. For more information on TR-34 key import, see section <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-import.html">Importing symmetric keys</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>Set the following parameters:</p> <ul> <li> <p> <code>KeyMaterial</code>: Use <code>Tr34KeyBlock</code> parameters.</p> </li> <li> <p> <code>CertificateAuthorityPublicKeyIdentifier</code>: The <code>KeyARN</code> of the certificate chain that signed the KDH signing key certificate.</p> </li> <li> <p> <code>ImportToken</code>: Obtained from KRD by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html">GetParametersForImport</a>.</p> </li> <li> <p> <code>WrappedKeyBlock</code>: The TR-34 wrapped key material from KDH. It contains the KDH key under import, wrapped with KRD wrapping certificate and signed by KDH signing private key. This TR-34 key block is typically generated by the KDH Hardware Security Module (HSM) outside of Amazon Web Services Payment Cryptography.</p> </li> <li> <p> <code>SigningKeyCertificate</code>: The public key certificate in PEM format (base64 encoded) of the KDH signing key generated under the root certificate (CertificateAuthorityPublicKeyIdentifier) imported in Amazon Web Services Payment Cryptography.</p> </li> </ul> <p> <b>To import initial keys (KEK or ZMK or similar) using RSA Wrap and Unwrap</b> </p> <p>Using this operation, you can import initial key using asymmetric RSA wrap and unwrap key exchange method. To initiate import, call <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html">GetParametersForImport</a> with <code>KeyMaterial</code> set to <code>KEY_CRYPTOGRAM</code> to generate an import token. This operation also generates an encryption keypair for the purpose of key import, signs the key and returns back the wrapping key certificate in PEM format (base64 encoded) and its root certificate chain. The import token and associated KRD wrapping certificate expires after 30 days. </p> <p>You must trust and install the wrapping certificate and its certificate chain on the sending HSM and use it to wrap the key under export for WrappedKeyCryptogram generation. Next call <code>ImportKey</code> with <code>KeyMaterial</code> set to <code>KEY_CRYPTOGRAM</code> and provide the <code>ImportToken</code> and <code>KeyAttributes</code> for the key under import.</p> <p> <b>To import working keys using TR-31</b> </p> <p>Amazon Web Services Payment Cryptography uses TR-31 symmetric key exchange norm to import working keys. A KEK must be established within Amazon Web Services Payment Cryptography by using TR-34 key import or by using <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a>. To initiate a TR-31 key import, set the following parameters:</p> <ul> <li> <p> <code>KeyMaterial</code>: Use <code>Tr31KeyBlock</code> parameters.</p> </li> <li> <p> <code>WrappedKeyBlock</code>: The TR-31 wrapped key material. It contains the key under import, encrypted using KEK. The TR-31 key block is typically generated by a HSM outside of Amazon Web Services Payment Cryptography. </p> </li> <li> <p> <code>WrappingKeyIdentifier</code>: The <code>KeyArn</code> of the KEK that Amazon Web Services Payment Cryptography uses to decrypt or unwrap the key under import.</p> </li> </ul> <p> <b>To import working keys using ECDH</b> </p> <p>You can also use ECDH key agreement to import working keys as a TR-31 keyblock, where the wrapping key is an ECDH derived key.</p> <p>To initiate a TR-31 key import using ECDH, both sides must create an ECC key pair with key usage K3 and exchange public key certificates. In Amazon Web Services Payment Cryptography, you can do this by calling <code>CreateKey</code> and then <code>GetPublicKeyCertificate</code> to retrieve its public key certificate. Next, you can then generate a TR-31 WrappedKeyBlock using your own ECC key pair, the public certificate of the service's ECC key pair, and the key derivation parameters including key derivation function, hash algorithm, derivation data, and key algorithm. If you have not already done so, you must import the CA chain that issued the receiving public key certificate by calling <code>ImportKey</code> with input <code>RootCertificatePublicKey</code> for root CA or <code>TrustedPublicKey</code> for intermediate CA. To complete the TR-31 key import, you can use the following parameters. It is important that the ECDH key derivation parameters you use should match those used during import to derive the same shared wrapping key within Amazon Web Services Payment Cryptography.</p> <ul> <li> <p> <code>KeyMaterial</code>: Use <code>DiffieHellmanTr31KeyBlock</code> parameters.</p> </li> <li> <p> <code>PrivateKeyIdentifier</code>: The <code>KeyArn</code> of the ECC key pair created within Amazon Web Services Payment Cryptography to derive a shared KEK.</p> </li> <li> <p> <code>PublicKeyCertificate</code>: The public key certificate of the receiving ECC key pair in PEM format (base64 encoded) to derive a shared KEK.</p> </li> <li> <p> <code>CertificateAuthorityPublicKeyIdentifier</code>: The <code>keyARN</code> of the CA that signed the public key certificate of the receiving ECC key pair.</p> </li> </ul> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ExportKey.html">ExportKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html">GetParametersForImport</a> </p> </li> </ul>
    # @param [Hash, Types::ImportKeyInput] params
    # @option params [Types::ImportKeyMaterial] :key_material
    #   <p>The key or public key certificate type to use during key material import, for example TR-34 or RootCertificatePublicKey.</p>
    # @option params [String] :key_check_value_algorithm
    #   <p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>
    # @option params [Boolean] :enabled
    #   <p>Specifies whether import key is enabled.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Assigns one or more tags to the Amazon Web Services Payment Cryptography key. Use this parameter to tag a key when it is imported. To tag an existing Amazon Web Services Payment Cryptography key, use the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html">TagResource</a> operation.</p> <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are required, but the tag value can be an empty (null) string. You can't have more than one tag on an Amazon Web Services Payment Cryptography key with the same tag key. If you specify an existing tag key with a different tag value, Amazon Web Services Payment Cryptography replaces the current tag value with the specified one.</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important> <note> <p>Tagging or untagging an Amazon Web Services Payment Cryptography key can allow or deny permission to the key.</p> </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_material: { # required
    #       # One of:
    #       root_certificate_public_key: {
    #         key_attributes: { # required
    #           key_usage: "KeyUsage", # required
    #           key_class: "KeyClass", # required
    #           key_algorithm: "KeyAlgorithm", # required
    #           key_modes_of_use: { # required
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false
    #           }
    #         },
    #         public_key_certificate: "CertificateType", # required
    #       },
    #       trusted_certificate_public_key: {
    #         key_attributes: { # required
    #           key_usage: "KeyUsage", # required
    #           key_class: "KeyClass", # required
    #           key_algorithm: "KeyAlgorithm", # required
    #           key_modes_of_use: { # required
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false
    #           }
    #         },
    #         public_key_certificate: "CertificateType", # required
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #       },
    #       tr31_key_block: {
    #         wrapping_key_identifier: "KeyArnOrKeyAliasType", # required
    #         wrapped_key_block: "Tr31WrappedKeyBlock", # required
    #       },
    #       tr34_key_block: {
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         signing_key_certificate: "CertificateType", # required
    #         import_token: "ImportTokenId", # required
    #         wrapped_key_block: "Tr34WrappedKeyBlock", # required
    #         key_block_format: "Tr34KeyBlockFormat", # required
    #         random_nonce: "EvenHexLengthBetween16And32"
    #       },
    #       key_cryptogram: {
    #         key_attributes: { # required
    #           key_usage: "KeyUsage", # required
    #           key_class: "KeyClass", # required
    #           key_algorithm: "KeyAlgorithm", # required
    #           key_modes_of_use: { # required
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false
    #           }
    #         },
    #         exportable: false, # required
    #         wrapped_key_cryptogram: "WrappedKeyCryptogram", # required
    #         import_token: "ImportTokenId", # required
    #         wrapping_spec: "WrappingKeySpec"
    #       },
    #       diffie_hellman_tr31_key_block: {
    #         private_key_identifier: "KeyArnOrKeyAliasType", # required
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         public_key_certificate: "CertificateType", # required
    #         derive_key_algorithm: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224"], # required
    #         key_derivation_function: "NIST_SP800" # One of: ["NIST_SP800", "ANSI_X963"], # required
    #         key_derivation_hash_algorithm: "SHA_256" # One of: ["SHA_256", "SHA_384", "SHA_512"], # required
    #         derivation_data: { # required
    #           # One of:
    #           shared_information: "SharedInformation"
    #         },
    #         wrapped_key_block: "Tr31WrappedKeyBlock", # required
    #       }
    #     },
    #     key_check_value_algorithm: "KeyCheckValueAlgorithm",
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key: { # required
    #       key_arn: "KeyArn", # required
    #       key_attributes: { # required
    #         key_usage: "KeyUsage", # required
    #         key_class: "KeyClass", # required
    #         key_algorithm: "KeyAlgorithm", # required
    #         key_modes_of_use: { # required
    #           encrypt: false,
    #           decrypt: false,
    #           wrap: false,
    #           unwrap: false,
    #           generate: false,
    #           sign: false,
    #           verify: false,
    #           derive_key: false,
    #           no_restrictions: false
    #         }
    #       },
    #       key_check_value: "KeyCheckValue", # required
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm", # required
    #       enabled: false, # required
    #       exportable: false, # required
    #       key_state: "KeyState", # required
    #       key_origin: "KeyOrigin", # required
    #       create_timestamp: Time.now, # required
    #       usage_start_timestamp: Time.now,
    #       usage_stop_timestamp: Time.now,
    #       delete_pending_timestamp: Time.now,
    #       delete_timestamp: Time.now,
    #       derive_key_usage: "DeriveKeyUsage"
    #     }
    #   }
    # @return [Types::ImportKeyOutput]
    def import_key(params = {}, options = {})
      request = build_request(:import_key, params)
      request.send_request(options)
    end

    # <p>Lists the aliases for all keys in the caller's Amazon Web Services account and Amazon Web Services Region. You can filter the aliases by <code>keyARN</code>. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-managealias.html">Using aliases</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the aliases. When the response contains only a subset of aliases, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>ListAliases</code> request to get more aliases. When you receive a response with no NextToken (or an empty or null value), that means there are no more aliases to get.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html">CreateAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html">DeleteAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html">GetAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html">UpdateAlias</a> </p> </li> </ul>
    # @param [Hash, Types::ListAliasesInput] params
    # @option params [String] :key_arn
    #   <p>The <code>keyARN</code> for which you want to list all aliases.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the truncated response you just received.</p>
    # @option params [Integer] :max_results
    #   <p>Use this parameter to specify the maximum number of items to return. When this value is present, Amazon Web Services Payment Cryptography does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_arn: "KeyArn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aliases: [ # required
    #       {
    #         alias_name: "AliasName", # required
    #         key_arn: "KeyArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAliasesOutput]
    def list_aliases(params = {}, options = {})
      request = build_request(:list_aliases, params)
      request.send_request(options)
    end

    # <p>Lists the keys in the caller's Amazon Web Services account and Amazon Web Services Region. You can filter the list of keys.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the keys. When the response contains only a subset of keys, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>ListKeys</code> request to get more keys. When you receive a response with no NextToken (or an empty or null value), that means there are no more keys to get.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html">DeleteKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetKey.html">GetKey</a> </p> </li> </ul>
    # @param [Hash, Types::ListKeysInput] params
    # @option params [String] :key_state
    #   <p>The key state of the keys you want to list.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the truncated response you just received.</p>
    # @option params [Integer] :max_results
    #   <p>Use this parameter to specify the maximum number of items to return. When this value is present, Amazon Web Services Payment Cryptography does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_state: "KeyState",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     keys: [ # required
    #       {
    #         key_arn: "KeyArn", # required
    #         key_state: "KeyState", # required
    #         key_attributes: { # required
    #           key_usage: "KeyUsage", # required
    #           key_class: "KeyClass", # required
    #           key_algorithm: "KeyAlgorithm", # required
    #           key_modes_of_use: { # required
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false
    #           }
    #         },
    #         key_check_value: "KeyCheckValue", # required
    #         exportable: false, # required
    #         enabled: false, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListKeysOutput]
    def list_keys(params = {}, options = {})
      request = build_request(:list_keys, params)
      request.send_request(options)
    end

    # <p>Lists the tags for an Amazon Web Services resource.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>ListTagsForResource</code> request to get more tags. When you receive a response with no NextToken (or an empty or null value), that means there are no more tags to get.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html">TagResource</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UntagResource.html">UntagResource</a> </p> </li> </ul>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The <code>KeyARN</code> of the key whose tags you are getting.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the truncated response you just received.</p>
    # @option params [Integer] :max_results
    #   <p>Use this parameter to specify the maximum number of items to return. When this value is present, Amazon Web Services Payment Cryptography does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Cancels a scheduled key deletion during the waiting period. Use this operation to restore a <code>Key</code> that is scheduled for deletion.</p> <p>During the waiting period, the <code>KeyState</code> is <code>DELETE_PENDING</code> and <code>deletePendingTimestamp</code> contains the date and time after which the <code>Key</code> will be deleted. After <code>Key</code> is restored, the <code>KeyState</code> is <code>CREATE_COMPLETE</code>, and the value for <code>deletePendingTimestamp</code> is removed.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html">DeleteKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html">StartKeyUsage</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html">StopKeyUsage</a> </p> </li> </ul>
    # @param [Hash, Types::RestoreKeyInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>KeyARN</code> of the key to be restored within Amazon Web Services Payment Cryptography.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   }
    #   options = {}
    #   response = client.restore_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key: { # required
    #       key_arn: "KeyArn", # required
    #       key_attributes: { # required
    #         key_usage: "KeyUsage", # required
    #         key_class: "KeyClass", # required
    #         key_algorithm: "KeyAlgorithm", # required
    #         key_modes_of_use: { # required
    #           encrypt: false,
    #           decrypt: false,
    #           wrap: false,
    #           unwrap: false,
    #           generate: false,
    #           sign: false,
    #           verify: false,
    #           derive_key: false,
    #           no_restrictions: false
    #         }
    #       },
    #       key_check_value: "KeyCheckValue", # required
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm", # required
    #       enabled: false, # required
    #       exportable: false, # required
    #       key_state: "KeyState", # required
    #       key_origin: "KeyOrigin", # required
    #       create_timestamp: Time.now, # required
    #       usage_start_timestamp: Time.now,
    #       usage_stop_timestamp: Time.now,
    #       delete_pending_timestamp: Time.now,
    #       delete_timestamp: Time.now,
    #       derive_key_usage: "DeriveKeyUsage"
    #     }
    #   }
    # @return [Types::RestoreKeyOutput]
    def restore_key(params = {}, options = {})
      request = build_request(:restore_key, params)
      request.send_request(options)
    end

    # <p>Enables an Amazon Web Services Payment Cryptography key, which makes it active for cryptographic operations within Amazon Web Services Payment Cryptography</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html">StopKeyUsage</a> </p> </li> </ul>
    # @param [Hash, Types::StartKeyUsageInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>KeyArn</code> of the key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   }
    #   options = {}
    #   response = client.start_key_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key: { # required
    #       key_arn: "KeyArn", # required
    #       key_attributes: { # required
    #         key_usage: "KeyUsage", # required
    #         key_class: "KeyClass", # required
    #         key_algorithm: "KeyAlgorithm", # required
    #         key_modes_of_use: { # required
    #           encrypt: false,
    #           decrypt: false,
    #           wrap: false,
    #           unwrap: false,
    #           generate: false,
    #           sign: false,
    #           verify: false,
    #           derive_key: false,
    #           no_restrictions: false
    #         }
    #       },
    #       key_check_value: "KeyCheckValue", # required
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm", # required
    #       enabled: false, # required
    #       exportable: false, # required
    #       key_state: "KeyState", # required
    #       key_origin: "KeyOrigin", # required
    #       create_timestamp: Time.now, # required
    #       usage_start_timestamp: Time.now,
    #       usage_stop_timestamp: Time.now,
    #       delete_pending_timestamp: Time.now,
    #       delete_timestamp: Time.now,
    #       derive_key_usage: "DeriveKeyUsage"
    #     }
    #   }
    # @return [Types::StartKeyUsageOutput]
    def start_key_usage(params = {}, options = {})
      request = build_request(:start_key_usage, params)
      request.send_request(options)
    end

    # <p>Disables an Amazon Web Services Payment Cryptography key, which makes it inactive within Amazon Web Services Payment Cryptography.</p> <p>You can use this operation instead of <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html">DeleteKey</a> to deactivate a key. You can enable the key in the future by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html">StartKeyUsage</a>.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html">DeleteKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html">StartKeyUsage</a> </p> </li> </ul>
    # @param [Hash, Types::StopKeyUsageInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>KeyArn</code> of the key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   }
    #   options = {}
    #   response = client.stop_key_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key: { # required
    #       key_arn: "KeyArn", # required
    #       key_attributes: { # required
    #         key_usage: "KeyUsage", # required
    #         key_class: "KeyClass", # required
    #         key_algorithm: "KeyAlgorithm", # required
    #         key_modes_of_use: { # required
    #           encrypt: false,
    #           decrypt: false,
    #           wrap: false,
    #           unwrap: false,
    #           generate: false,
    #           sign: false,
    #           verify: false,
    #           derive_key: false,
    #           no_restrictions: false
    #         }
    #       },
    #       key_check_value: "KeyCheckValue", # required
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm", # required
    #       enabled: false, # required
    #       exportable: false, # required
    #       key_state: "KeyState", # required
    #       key_origin: "KeyOrigin", # required
    #       create_timestamp: Time.now, # required
    #       usage_start_timestamp: Time.now,
    #       usage_stop_timestamp: Time.now,
    #       delete_pending_timestamp: Time.now,
    #       delete_timestamp: Time.now,
    #       derive_key_usage: "DeriveKeyUsage"
    #     }
    #   }
    # @return [Types::StopKeyUsageOutput]
    def stop_key_usage(params = {}, options = {})
      request = build_request(:stop_key_usage, params)
      request.send_request(options)
    end

    # <p>Adds or edits tags on an Amazon Web Services Payment Cryptography key.</p> <note> <p>Tagging or untagging an Amazon Web Services Payment Cryptography key can allow or deny permission to the key.</p> </note> <p>Each tag consists of a tag key and a tag value, both of which are case-sensitive strings. The tag value can be an empty (null) string. To add a tag, specify a new tag key and a tag value. To edit a tag, specify an existing tag key and a new tag value. You can also add tags to an Amazon Web Services Payment Cryptography key when you create it with <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a>.</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html">ListTagsForResource</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UntagResource.html">UntagResource</a> </p> </li> </ul>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The <code>KeyARN</code> of the key whose tags are being updated.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags. Each tag consists of a tag key and a tag value. The tag value can be an empty (null) string. You can't have more than one tag on an Amazon Web Services Payment Cryptography key with the same tag key. If you specify an existing tag key with a different tag value, Amazon Web Services Payment Cryptography replaces the current tag value with the new one.</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important> <p>To use this parameter, you must have <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html">TagResource</a> permission in an IAM policy.</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes a tag from an Amazon Web Services Payment Cryptography key.</p> <note> <p>Tagging or untagging an Amazon Web Services Payment Cryptography key can allow or deny permission to the key.</p> </note> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html">ListTagsForResource</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html">TagResource</a> </p> </li> </ul>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The <code>KeyARN</code> of the key whose tags are being removed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>One or more tag keys. Don't include the tag values.</p> <p>If the Amazon Web Services Payment Cryptography key doesn't have the specified tag key, Amazon Web Services Payment Cryptography doesn't throw an exception or return a response. To confirm that the operation succeeded, use the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html">ListTagsForResource</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Associates an existing Amazon Web Services Payment Cryptography alias with a different key. Each alias is associated with only one Amazon Web Services Payment Cryptography key at a time, although a key can have multiple aliases. The alias and the Amazon Web Services Payment Cryptography key must be in the same Amazon Web Services account and Amazon Web Services Region</p> <p> <b>Cross-account use:</b> This operation can't be used across different Amazon Web Services accounts.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html">CreateAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html">DeleteAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html">GetAlias</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html">ListAliases</a> </p> </li> </ul>
    # @param [Hash, Types::UpdateAliasInput] params
    # @option params [String] :alias_name
    #   <p>The alias whose associated key is changing.</p>
    # @option params [String] :key_arn
    #   <p>The <code>KeyARN</code> for the key that you are updating or removing from the alias.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_name: "AliasName", # required
    #     key_arn: "KeyArn"
    #   }
    #   options = {}
    #   response = client.update_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alias: { # required
    #       alias_name: "AliasName", # required
    #       key_arn: "KeyArn"
    #     }
    #   }
    # @return [Types::UpdateAliasOutput]
    def update_alias(params = {}, options = {})
      request = build_request(:update_alias, params)
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
      context[:gem_name] = 'aws-sdk-paymentcryptography'
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
