# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:paymentcryptographydata)

module Aws::PaymentCryptographyData
  # An API client for Aws::PaymentCryptographyData.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PaymentCryptographyDataPlane
    @identifier = :paymentcryptographydata

    add_plugin(::Aws::PaymentCryptographyData::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PaymentCryptographyData::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Decrypts ciphertext data to plaintext using a symmetric (TDES, AES), asymmetric (RSA), or derived (DUKPT or EMV) encryption key scheme. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/decrypt-data.html">Decrypt data</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>You can use an decryption key generated within Amazon Web Services Payment Cryptography, or you can import your own decryption key by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a>. For this operation, the key must have <code>KeyModesOfUse</code> set to <code>Decrypt</code>. In asymmetric decryption, Amazon Web Services Payment Cryptography decrypts the ciphertext using the private component of the asymmetric encryption key pair. For data encryption outside of Amazon Web Services Payment Cryptography, you can export the public component of the asymmetric key pair by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html">GetPublicCertificate</a>.</p> <p>This operation also supports dynamic keys, allowing you to pass a dynamic decryption key as a TR-31 WrappedKeyBlock. This can be used when key material is frequently rotated, such as during every card transaction, and there is need to avoid importing short-lived keys into Amazon Web Services Payment Cryptography. To decrypt using dynamic keys, the <code>keyARN</code> is the Key Encryption Key (KEK) of the TR-31 wrapped decryption key material. The incoming wrapped key shall have a key purpose of D0 with a mode of use of B or D. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html">Using Dynamic Keys</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>For symmetric and DUKPT decryption, Amazon Web Services Payment Cryptography supports <code>TDES</code> and <code>AES</code> algorithms. For EMV decryption, Amazon Web Services Payment Cryptography supports <code>TDES</code> algorithms. For asymmetric decryption, Amazon Web Services Payment Cryptography supports <code>RSA</code>. </p> <p>When you use TDES or TDES DUKPT, the ciphertext data length must be a multiple of 8 bytes. For AES or AES DUKPT, the ciphertext data length must be a multiple of 16 bytes. For RSA, it sould be equal to the key size unless padding is enabled.</p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. </p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>EncryptData</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html">GetPublicCertificate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a> </p> </li> </ul>
    # @param [Hash, Types::DecryptDataInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>keyARN</code> of the encryption key that Amazon Web Services Payment Cryptography uses for ciphertext decryption.</p> <p>When a WrappedKeyBlock is provided, this value will be the identifier to the key wrapping key. Otherwise, it is the key identifier used to perform the operation.</p>
    # @option params [String] :cipher_text
    #   <p>The ciphertext to decrypt.</p>
    # @option params [Types::EncryptionDecryptionAttributes] :decryption_attributes
    #   <p>The encryption key type and attributes for ciphertext decryption.</p>
    # @option params [Types::WrappedKey] :wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key for ciphertext decryption.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     cipher_text: "CipherTextType", # required
    #     decryption_attributes: { # required
    #       # One of:
    #       symmetric: {
    #         mode: "ECB" # One of: ["ECB", "CBC", "CFB", "CFB1", "CFB8", "CFB64", "CFB128", "OFB"], # required
    #         initialization_vector: "InitializationVectorType",
    #         padding_type: "PKCS1" # One of: ["PKCS1", "OAEP_SHA1", "OAEP_SHA256", "OAEP_SHA512"]
    #       },
    #       asymmetric: {
    #         padding_type: "PKCS1" # One of: ["PKCS1", "OAEP_SHA1", "OAEP_SHA256", "OAEP_SHA512"]
    #       },
    #       dukpt: {
    #         key_serial_number: "HexLength16Or20Or24", # required
    #         mode: "ECB" # One of: ["ECB", "CBC"],
    #         dukpt_key_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"],
    #         dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"],
    #         initialization_vector: "InitializationVectorType"
    #       },
    #       emv: {
    #         major_key_derivation_mode: "EMV_OPTION_A" # One of: ["EMV_OPTION_A", "EMV_OPTION_B"], # required
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         session_derivation_data: "SessionDerivationDataType", # required
    #         mode: "ECB" # One of: ["ECB", "CBC"],
    #         initialization_vector: "InitializationVectorType"
    #       }
    #     },
    #     wrapped_key: {
    #       wrapped_key_material: { # required
    #         # One of:
    #         tr31_key_block: "Tr31WrappedKeyBlock",
    #         diffie_hellman_symmetric_key: {
    #           certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #           public_key_certificate: "CertificateType", # required
    #           key_algorithm: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224"], # required
    #           key_derivation_function: "NIST_SP800" # One of: ["NIST_SP800", "ANSI_X963"], # required
    #           key_derivation_hash_algorithm: "SHA_256" # One of: ["SHA_256", "SHA_384", "SHA_512"], # required
    #           shared_information: "SharedInformation", # required
    #         }
    #       },
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm"
    #     }
    #   }
    #   options = {}
    #   response = client.decrypt_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_arn: "KeyArn", # required
    #     key_check_value: "KeyCheckValue", # required
    #     plain_text: "PlainTextOutputType", # required
    #   }
    # @return [Types::DecryptDataOutput]
    def decrypt_data(params = {}, options = {})
      request = build_request(:decrypt_data, params)
      request.send_request(options)
    end

    # <p>Encrypts plaintext data to ciphertext using a symmetric (TDES, AES), asymmetric (RSA), or derived (DUKPT or EMV) encryption key scheme. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/encrypt-data.html">Encrypt data</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>You can generate an encryption key within Amazon Web Services Payment Cryptography by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a>. You can import your own encryption key by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a>.</p> <p>For this operation, the key must have <code>KeyModesOfUse</code> set to <code>Encrypt</code>. In asymmetric encryption, plaintext is encrypted using public component. You can import the public component of an asymmetric key pair created outside Amazon Web Services Payment Cryptography by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a>. </p> <p>This operation also supports dynamic keys, allowing you to pass a dynamic encryption key as a TR-31 WrappedKeyBlock. This can be used when key material is frequently rotated, such as during every card transaction, and there is need to avoid importing short-lived keys into Amazon Web Services Payment Cryptography. To encrypt using dynamic keys, the <code>keyARN</code> is the Key Encryption Key (KEK) of the TR-31 wrapped encryption key material. The incoming wrapped key shall have a key purpose of D0 with a mode of use of B or D. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html">Using Dynamic Keys</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>For symmetric and DUKPT encryption, Amazon Web Services Payment Cryptography supports <code>TDES</code> and <code>AES</code> algorithms. For EMV encryption, Amazon Web Services Payment Cryptography supports <code>TDES</code> algorithms.For asymmetric encryption, Amazon Web Services Payment Cryptography supports <code>RSA</code>. </p> <p>When you use TDES or TDES DUKPT, the plaintext data length must be a multiple of 8 bytes. For AES or AES DUKPT, the plaintext data length must be a multiple of 16 bytes. For RSA, it sould be equal to the key size unless padding is enabled.</p> <p>To encrypt using DUKPT, you must already have a BDK (Base Derivation Key) key in your account with <code>KeyModesOfUse</code> set to <code>DeriveKey</code>, or you can generate a new DUKPT key by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a>. To encrypt using EMV, you must already have an IMK (Issuer Master Key) key in your account with <code>KeyModesOfUse</code> set to <code>DeriveKey</code>.</p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>DecryptData</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html">GetPublicCertificate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a> </p> </li> <li> <p> <a>ReEncryptData</a> </p> </li> </ul>
    # @param [Hash, Types::EncryptDataInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>keyARN</code> of the encryption key that Amazon Web Services Payment Cryptography uses for plaintext encryption.</p> <p>When a WrappedKeyBlock is provided, this value will be the identifier to the key wrapping key. Otherwise, it is the key identifier used to perform the operation.</p>
    # @option params [String] :plain_text
    #   <p>The plaintext to be encrypted.</p> <note> <p>For encryption using asymmetric keys, plaintext data length is constrained by encryption key strength that you define in <code>KeyAlgorithm</code> and padding type that you define in <code>AsymmetricEncryptionAttributes</code>. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/encrypt-data.html">Encrypt data</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> </note>
    # @option params [Types::EncryptionDecryptionAttributes] :encryption_attributes
    #   <p>The encryption key type and attributes for plaintext encryption.</p>
    # @option params [Types::WrappedKey] :wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key for plaintext encryption.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     plain_text: "PlainTextType", # required
    #     encryption_attributes: { # required
    #       # One of:
    #       symmetric: {
    #         mode: "ECB" # One of: ["ECB", "CBC", "CFB", "CFB1", "CFB8", "CFB64", "CFB128", "OFB"], # required
    #         initialization_vector: "InitializationVectorType",
    #         padding_type: "PKCS1" # One of: ["PKCS1", "OAEP_SHA1", "OAEP_SHA256", "OAEP_SHA512"]
    #       },
    #       asymmetric: {
    #         padding_type: "PKCS1" # One of: ["PKCS1", "OAEP_SHA1", "OAEP_SHA256", "OAEP_SHA512"]
    #       },
    #       dukpt: {
    #         key_serial_number: "HexLength16Or20Or24", # required
    #         mode: "ECB" # One of: ["ECB", "CBC"],
    #         dukpt_key_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"],
    #         dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"],
    #         initialization_vector: "InitializationVectorType"
    #       },
    #       emv: {
    #         major_key_derivation_mode: "EMV_OPTION_A" # One of: ["EMV_OPTION_A", "EMV_OPTION_B"], # required
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         session_derivation_data: "SessionDerivationDataType", # required
    #         mode: "ECB" # One of: ["ECB", "CBC"],
    #         initialization_vector: "InitializationVectorType"
    #       }
    #     },
    #     wrapped_key: {
    #       wrapped_key_material: { # required
    #         # One of:
    #         tr31_key_block: "Tr31WrappedKeyBlock",
    #         diffie_hellman_symmetric_key: {
    #           certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #           public_key_certificate: "CertificateType", # required
    #           key_algorithm: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224"], # required
    #           key_derivation_function: "NIST_SP800" # One of: ["NIST_SP800", "ANSI_X963"], # required
    #           key_derivation_hash_algorithm: "SHA_256" # One of: ["SHA_256", "SHA_384", "SHA_512"], # required
    #           shared_information: "SharedInformation", # required
    #         }
    #       },
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm"
    #     }
    #   }
    #   options = {}
    #   response = client.encrypt_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_arn: "KeyArn", # required
    #     key_check_value: "KeyCheckValue",
    #     cipher_text: "CipherTextType", # required
    #   }
    # @return [Types::EncryptDataOutput]
    def encrypt_data(params = {}, options = {})
      request = build_request(:encrypt_data, params)
      request.send_request(options)
    end

    # <p>Generates a <code>KekValidationRequest</code> or a <code>KekValidationResponse</code> for node-to-node initialization between payment processing nodes using <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/as2805.html">Australian Standard 2805 (AS2805)</a>.</p> <p>During node-to-node initialization, both communicating nodes must validate that they possess the correct Key Encrypting Keys (KEKs) before proceeding with session key exchange. In AS2805, the sending KEK (KEKs) of one node corresponds to the receiving KEK (KEKr) of its partner node. Each node uses its KEK to encrypt and decrypt session keys exchanged between the nodes. A KEK can be created or imported into Amazon Web Services Payment Cryptography using either the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a> or <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a> operations.</p> <p>To use <code>GenerateAs2805KekValidation</code> to generate a KEK validation request, set <code>KekValidationType</code> to <code>KekValidationRequest</code>. This operation returns both <code>RandomKeySend</code> (KRs) and <code>RandomKeyReceive</code> (KRr) as response values. The partnering node receives the KRs, uses its KEKr to decrypt it, and generates a KRr which is an inverted value of KRs. The node receiving the KRr validates it against its own KRr generated during KEK validation request outside of Amazon Web Services Payment Cryptography.</p> <p>You can also use this operation to generate a KEK validation response, by setting <code>KekValidationType</code> to <code>KekValidationResponse</code> and providing the incoming KRs. This operation then calculates a KRr. To learn more about more about node-to-node initialization, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/as2805.kekvalidation.html">Validation of KEK</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. </p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p>
    # @param [Hash, Types::GenerateAs2805KekValidationInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>keyARN</code> of sending KEK that Amazon Web Services Payment Cryptography uses for node-to-node initialization</p>
    # @option params [Types::As2805KekValidationType] :kek_validation_type
    #   <p>Defines whether to generate a KEK validation request or KEK validation response for node-to-node initialization.</p>
    # @option params [String] :random_key_send_variant_mask
    #   <p>The key variant to use for generating a random key for KEK validation during node-to-node initialization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     kek_validation_type: { # required
    #       # One of:
    #       kek_validation_request: {
    #         derive_key_algorithm: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224"], # required
    #         random_key_max_length: "BYTES_8" # One of: ["BYTES_8", "BYTES_16", "BYTES_24"]
    #       },
    #       kek_validation_response: {
    #         random_key_send: "As2805RandomKeyMaterial", # required
    #       }
    #     },
    #     random_key_send_variant_mask: "VARIANT_MASK_82C0" # One of: ["VARIANT_MASK_82C0", "VARIANT_MASK_82"], # required
    #   }
    #   options = {}
    #   response = client.generate_as2805_kek_validation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_arn: "KeyArn", # required
    #     key_check_value: "KeyCheckValue", # required
    #     random_key_send: "As2805RandomKeyMaterial", # required
    #     random_key_receive: "As2805RandomKeyMaterial", # required
    #   }
    # @return [Types::GenerateAs2805KekValidationOutput]
    def generate_as2805_kek_validation(params = {}, options = {})
      request = build_request(:generate_as2805_kek_validation, params)
      request.send_request(options)
    end

    # <p>Generates an Authorization Request Cryptogram (ARQC) for an EMV chip payment card authorization. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/data-operations.generateauthrequestcryptogram.html">Generate auth request cryptogram</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>ARQC generation uses an Issuer Master Key (IMK) for application cryptograms (TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS) to derive a session key, which is then used to generate the cryptogram from the provided transaction data (when applicable). To use this operation, you must first create or import an IMK-AC key by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a> or <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a>. The <code>KeyModesOfUse</code> should be set to <code>DeriveKey</code> for the IMK-AC encryption key.</p> <important> <p>This operation is intended for development and testing scenarios only. It is not recommended to use this operation as a substitute for card-based cryptogram generation in production payment flows.</p> </important> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. </p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>VerifyAuthRequestCryptogram</a> </p> </li> </ul>
    # @param [Hash, Types::GenerateAuthRequestCryptogramInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>keyARN</code> of the IMK-AC (TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS) that Amazon Web Services Payment Cryptography uses to generate the ARQC.</p>
    # @option params [String] :transaction_data
    #   <p>The transaction data that Amazon Web Services Payment Cryptography uses for ARQC generation. The same transaction data is used for ARQC verification by the issuer using <a>VerifyAuthRequestCryptogram</a>.</p>
    # @option params [String] :major_key_derivation_mode
    #   <p>The method to use when deriving the major encryption key for ARQC generation within Amazon Web Services Payment Cryptography.</p>
    # @option params [Types::SessionKeyDerivation] :session_key_derivation_attributes
    #   <p>The attributes and values to use for deriving a session key for ARQC generation within Amazon Web Services Payment Cryptography.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     transaction_data: "TransactionDataType", # required
    #     major_key_derivation_mode: "EMV_OPTION_A" # One of: ["EMV_OPTION_A", "EMV_OPTION_B"], # required
    #     session_key_derivation_attributes: { # required
    #       # One of:
    #       emv_common: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthEquals4", # required
    #       },
    #       mastercard: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthEquals4", # required
    #         unpredictable_number: "HexLengthEquals8", # required
    #       },
    #       emv2000: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthEquals4", # required
    #       },
    #       amex: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #       },
    #       visa: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #       },
    #       union_pay: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthEquals4", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.generate_auth_request_cryptogram(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_arn: "KeyArn", # required
    #     key_check_value: "KeyCheckValue", # required
    #     auth_request_cryptogram: "AuthRequestCryptogramType", # required
    #   }
    # @return [Types::GenerateAuthRequestCryptogramOutput]
    def generate_auth_request_cryptogram(params = {}, options = {})
      request = build_request(:generate_auth_request_cryptogram, params)
      request.send_request(options)
    end

    # <p>Generates card-related validation data using algorithms such as Card Verification Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2), or Card Security Codes (CSC). For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-card-data.html">Generate card data</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>This operation generates a CVV or CSC value that is printed on a payment credit or debit card during card production. The CVV or CSC, PAN (Primary Account Number) and expiration date of the card are required to check its validity during transaction processing. To begin this operation, a CVK (Card Verification Key) encryption key is required. You can use <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a> or <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a> to establish a CVK within Amazon Web Services Payment Cryptography. The <code>KeyModesOfUse</code> should be set to <code>Generate</code> and <code>Verify</code> for a CVK encryption key. </p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. </p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a> </p> </li> <li> <p> <a>VerifyCardValidationData</a> </p> </li> </ul>
    # @param [Hash, Types::GenerateCardValidationDataInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>keyARN</code> of the CVK encryption key that Amazon Web Services Payment Cryptography uses to generate card data.</p>
    # @option params [String] :primary_account_number
    #   <p>The Primary Account Number (PAN), a unique identifier for a payment credit or debit card that associates the card with a specific account holder.</p>
    # @option params [Types::CardGenerationAttributes] :generation_attributes
    #   <p>The algorithm for generating CVV or CSC values for the card within Amazon Web Services Payment Cryptography.</p>
    # @option params [Integer] :validation_data_length
    #   <p>The length of the CVV or CSC to be generated. The default value is 3.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     primary_account_number: "PrimaryAccountNumberType", # required
    #     generation_attributes: { # required
    #       # One of:
    #       amex_card_security_code_version1: {
    #         card_expiry_date: "CardExpiryDateType", # required
    #       },
    #       amex_card_security_code_version2: {
    #         card_expiry_date: "CardExpiryDateType", # required
    #         service_code: "ServiceCodeType", # required
    #       },
    #       card_verification_value1: {
    #         card_expiry_date: "CardExpiryDateType", # required
    #         service_code: "ServiceCodeType", # required
    #       },
    #       card_verification_value2: {
    #         card_expiry_date: "CardExpiryDateType", # required
    #       },
    #       card_holder_verification_value: {
    #         unpredictable_number: "HexLengthBetween2And8", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #       },
    #       dynamic_card_verification_code: {
    #         unpredictable_number: "HexLengthBetween2And8", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         track_data: "TrackDataType", # required
    #       },
    #       dynamic_card_verification_value: {
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         card_expiry_date: "CardExpiryDateType", # required
    #         service_code: "ServiceCodeType", # required
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #       }
    #     },
    #     validation_data_length: 1
    #   }
    #   options = {}
    #   response = client.generate_card_validation_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_arn: "KeyArn", # required
    #     key_check_value: "KeyCheckValue", # required
    #     validation_data: "ValidationDataType", # required
    #   }
    # @return [Types::GenerateCardValidationDataOutput]
    def generate_card_validation_data(params = {}, options = {})
      request = build_request(:generate_card_validation_data, params)
      request.send_request(options)
    end

    # <p>Generates a Message Authentication Code (MAC) cryptogram within Amazon Web Services Payment Cryptography. </p> <p>You can use this operation to authenticate card-related data by using known data values to generate MAC for data validation between the sending and receiving parties. This operation uses message data, a secret encryption key and MAC algorithm to generate a unique MAC value for transmission. The receiving party of the MAC must use the same message data, secret encryption key and MAC algorithm to reproduce another MAC value for comparision.</p> <p>You can use this operation to generate a DUPKT, CMAC, HMAC or EMV MAC by setting generation attributes and algorithm to the associated values. The MAC generation encryption key must have valid values for <code>KeyUsage</code> such as <code>TR31_M7_HMAC_KEY</code> for HMAC generation, and the key must have <code>KeyModesOfUse</code> set to <code>Generate</code>.</p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. </p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>VerifyMac</a> </p> </li> </ul>
    # @param [Hash, Types::GenerateMacInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>keyARN</code> of the MAC generation encryption key.</p>
    # @option params [String] :message_data
    #   <p>The data for which a MAC is under generation. This value must be hexBinary.</p>
    # @option params [Types::MacAttributes] :generation_attributes
    #   <p>The attributes and data values to use for MAC generation within Amazon Web Services Payment Cryptography.</p>
    # @option params [Integer] :mac_length
    #   <p>The length of a MAC under generation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     message_data: "MessageDataType", # required
    #     generation_attributes: { # required
    #       # One of:
    #       algorithm: "ISO9797_ALGORITHM1" # One of: ["ISO9797_ALGORITHM1", "ISO9797_ALGORITHM3", "CMAC", "HMAC", "HMAC_SHA224", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "AS2805_4_1"],
    #       emv_mac: {
    #         major_key_derivation_mode: "EMV_OPTION_A" # One of: ["EMV_OPTION_A", "EMV_OPTION_B"], # required
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         session_key_derivation_mode: "EMV_COMMON_SESSION_KEY" # One of: ["EMV_COMMON_SESSION_KEY", "EMV2000", "AMEX", "MASTERCARD_SESSION_KEY", "VISA", "UNION_PAY"], # required
    #         session_key_derivation_value: { # required
    #           # One of:
    #           application_cryptogram: "ApplicationCryptogramType",
    #           application_transaction_counter: "HexLengthEquals4"
    #         }
    #       },
    #       dukpt_iso9797_algorithm1: {
    #         key_serial_number: "HexLength16Or20Or24", # required
    #         dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"], # required
    #         dukpt_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"]
    #       },
    #       dukpt_iso9797_algorithm3: {
    #         key_serial_number: "HexLength16Or20Or24", # required
    #         dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"], # required
    #         dukpt_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"]
    #       },
    #       dukpt_cmac: {
    #         key_serial_number: "HexLength16Or20Or24", # required
    #         dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"], # required
    #         dukpt_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"]
    #       }
    #     },
    #     mac_length: 1
    #   }
    #   options = {}
    #   response = client.generate_mac(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_arn: "KeyArn", # required
    #     key_check_value: "KeyCheckValue", # required
    #     mac: "MacOutputType", # required
    #   }
    # @return [Types::GenerateMacOutput]
    def generate_mac(params = {}, options = {})
      request = build_request(:generate_mac, params)
      request.send_request(options)
    end

    # <p>Generates an issuer script mac for EMV payment cards that use offline PINs as the cardholder verification method (CVM).</p> <p>This operation generates an authenticated issuer script response by appending the incoming message data (APDU command) with the target encrypted PIN block in ISO2 format. The command structure and method to send the issuer script update to the card is not defined by this operation and is typically determined by the applicable payment card scheme.</p> <p>The primary inputs to this operation include the incoming new encrypted pinblock, PIN encryption key (PEK), issuer master key (IMK), primary account number (PAN), and the payment card derivation method.</p> <p>The operation uses two issuer master keys - secure messaging for confidentiality (IMK-SMC) and secure messaging for integrity (IMK-SMI). The SMC key is used to internally derive a key to secure the pin, while SMI key is used to internally derive a key to authenticate the script reponse as per the <a href="https://www.emvco.com/specifications/">EMV 4.4 - Book 2 - Security and Key Management</a> specification. </p> <p>This operation supports Amex, EMV2000, EMVCommon, Mastercard and Visa derivation methods, each requiring specific input parameters. Users must follow the specific derivation method and input parameters defined by the respective payment card scheme.</p> <note> <p>Use <a>GenerateMac</a> operation when sending a script update to an EMV card that does not involve PIN change. When assigning IAM permissions, it is important to understand that <a>EncryptData</a> using EMV keys and <a>GenerateMac</a> perform similar functions to this command.</p> </note> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>EncryptData</a> </p> </li> <li> <p> <a>GenerateMac</a> </p> </li> </ul>
    # @param [Hash, Types::GenerateMacEmvPinChangeInput] params
    # @option params [String] :new_pin_pek_identifier
    #   <p>The <code>keyARN</code> of the PEK protecting the incoming new encrypted PIN block.</p>
    # @option params [String] :new_encrypted_pin_block
    #   <p>The incoming new encrypted PIN block data for offline pin change on an EMV card.</p>
    # @option params [String] :pin_block_format
    #   <p>The PIN encoding format of the incoming new encrypted PIN block as specified in ISO 9564.</p>
    # @option params [String] :secure_messaging_integrity_key_identifier
    #   <p>The <code>keyARN</code> of the issuer master key (IMK-SMI) used to authenticate the issuer script response.</p>
    # @option params [String] :secure_messaging_confidentiality_key_identifier
    #   <p>The <code>keyARN</code> of the issuer master key (IMK-SMC) used to protect the PIN block data in the issuer script response.</p>
    # @option params [String] :message_data
    #   <p>The message data is the APDU command from the card reader or terminal. The target encrypted PIN block, after translation to ISO2 format, is appended to this message data to generate an issuer script response.</p>
    # @option params [Types::DerivationMethodAttributes] :derivation_method_attributes
    #   <p>The attributes and data values to derive payment card specific confidentiality and integrity keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     new_pin_pek_identifier: "KeyArnOrKeyAliasType", # required
    #     new_encrypted_pin_block: "PinBlockLengthEquals16", # required
    #     pin_block_format: "ISO_FORMAT_0" # One of: ["ISO_FORMAT_0", "ISO_FORMAT_1", "ISO_FORMAT_3"], # required
    #     secure_messaging_integrity_key_identifier: "KeyArnOrKeyAliasType", # required
    #     secure_messaging_confidentiality_key_identifier: "KeyArnOrKeyAliasType", # required
    #     message_data: "CommandMessageDataType", # required
    #     derivation_method_attributes: { # required
    #       # One of:
    #       emv_common: {
    #         major_key_derivation_mode: "EMV_OPTION_A" # One of: ["EMV_OPTION_A", "EMV_OPTION_B"], # required
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_cryptogram: "ApplicationCryptogramType", # required
    #         mode: "ECB" # One of: ["ECB", "CBC"], # required
    #         pin_block_padding_type: "NO_PADDING" # One of: ["NO_PADDING", "ISO_IEC_7816_4"], # required
    #         pin_block_length_position: "NONE" # One of: ["NONE", "FRONT_OF_PIN_BLOCK"], # required
    #       },
    #       amex: {
    #         major_key_derivation_mode: "EMV_OPTION_A" # One of: ["EMV_OPTION_A", "EMV_OPTION_B"], # required
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthEquals4", # required
    #         authorization_request_key_identifier: "KeyArnOrKeyAliasType", # required
    #         current_pin_attributes: {
    #           current_pin_pek_identifier: "KeyArnOrKeyAliasType", # required
    #           current_encrypted_pin_block: "PinBlockLengthEquals16", # required
    #         }
    #       },
    #       visa: {
    #         major_key_derivation_mode: "EMV_OPTION_A" # One of: ["EMV_OPTION_A", "EMV_OPTION_B"], # required
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthEquals4", # required
    #         authorization_request_key_identifier: "KeyArnOrKeyAliasType", # required
    #         current_pin_attributes: {
    #           current_pin_pek_identifier: "KeyArnOrKeyAliasType", # required
    #           current_encrypted_pin_block: "PinBlockLengthEquals16", # required
    #         }
    #       },
    #       emv2000: {
    #         major_key_derivation_mode: "EMV_OPTION_A" # One of: ["EMV_OPTION_A", "EMV_OPTION_B"], # required
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthEquals4", # required
    #       },
    #       mastercard: {
    #         major_key_derivation_mode: "EMV_OPTION_A" # One of: ["EMV_OPTION_A", "EMV_OPTION_B"], # required
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_cryptogram: "ApplicationCryptogramType", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.generate_mac_emv_pin_change(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     new_pin_pek_arn: "KeyArn", # required
    #     secure_messaging_integrity_key_arn: "KeyArn", # required
    #     secure_messaging_confidentiality_key_arn: "KeyArn", # required
    #     mac: "PinChangeMacOutputType", # required
    #     encrypted_pin_block: "EncryptedPinBlockType", # required
    #     new_pin_pek_key_check_value: "KeyCheckValue", # required
    #     secure_messaging_integrity_key_check_value: "KeyCheckValue", # required
    #     secure_messaging_confidentiality_key_check_value: "KeyCheckValue", # required
    #     visa_amex_derivation_outputs: {
    #       authorization_request_key_arn: "KeyArn", # required
    #       authorization_request_key_check_value: "KeyCheckValue", # required
    #       current_pin_pek_arn: "KeyArn",
    #       current_pin_pek_key_check_value: "KeyCheckValue"
    #     }
    #   }
    # @return [Types::GenerateMacEmvPinChangeOutput]
    def generate_mac_emv_pin_change(params = {}, options = {})
      request = build_request(:generate_mac_emv_pin_change, params)
      request.send_request(options)
    end

    # <p>Generates pin-related data such as PIN, PIN Verification Value (PVV), PIN Block, and PIN Offset during new card issuance or reissuance. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-pin-data.html">Generate PIN data</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>PIN data is never transmitted in clear to or from Amazon Web Services Payment Cryptography. This operation generates PIN, PVV, or PIN Offset and then encrypts it using Pin Encryption Key (PEK) to create an <code>EncryptedPinBlock</code> for transmission from Amazon Web Services Payment Cryptography. This operation uses a separate Pin Verification Key (PVK) for VISA PVV generation. </p> <p>Using ECDH key exchange, you can receive cardholder selectable PINs into Amazon Web Services Payment Cryptography. The ECDH derived key protects the incoming PIN block. You can also use it for reveal PIN, wherein the generated PIN block is protected by the ECDH derived key before transmission from Amazon Web Services Payment Cryptography. For more information on establishing ECDH derived keys, see the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/create-keys.html">Generating keys</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>GenerateCardValidationData</a> </p> </li> <li> <p> <a>TranslatePinData</a> </p> </li> <li> <p> <a>VerifyPinData</a> </p> </li> </ul>
    # @param [Hash, Types::GeneratePinDataInput] params
    # @option params [String] :generation_key_identifier
    #   <p>The <code>keyARN</code> of the PEK that Amazon Web Services Payment Cryptography uses for pin data generation.</p>
    # @option params [String] :encryption_key_identifier
    #   <p>The <code>keyARN</code> of the PEK that Amazon Web Services Payment Cryptography uses to encrypt the PIN Block. For ECDH, it is the <code>keyARN</code> of the asymmetric ECC key.</p>
    # @option params [Types::PinGenerationAttributes] :generation_attributes
    #   <p>The attributes and values to use for PIN, PVV, or PIN Offset generation.</p>
    # @option params [Integer] :pin_data_length
    #   <p>The length of PIN under generation.</p>
    # @option params [String] :primary_account_number
    #   <p>The Primary Account Number (PAN), a unique identifier for a payment credit or debit card that associates the card with a specific account holder.</p>
    # @option params [String] :pin_block_format
    #   <p>The PIN encoding format for pin data generation as specified in ISO 9564. Amazon Web Services Payment Cryptography supports <code>ISO_Format_0</code>, <code>ISO_Format_3</code> and <code>ISO_Format_4</code>.</p> <p>The <code>ISO_Format_0</code> PIN block format is equivalent to the ANSI X9.8, VISA-1, and ECI-1 PIN block formats. It is similar to a VISA-4 PIN block format. It supports a PIN from 4 to 12 digits in length.</p> <p>The <code>ISO_Format_3</code> PIN block format is the same as <code>ISO_Format_0</code> except that the fill digits are random values from 10 to 15.</p> <p>The <code>ISO_Format_4</code> PIN block format is the only one supporting AES encryption.</p>
    # @option params [Types::WrappedKey] :encryption_wrapped_key
    #   <p>Parameter information of a WrappedKeyBlock for encryption key exchange.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     generation_key_identifier: "KeyArnOrKeyAliasType", # required
    #     encryption_key_identifier: "KeyArnOrKeyAliasType", # required
    #     generation_attributes: { # required
    #       # One of:
    #       visa_pin: {
    #         pin_verification_key_index: 1, # required
    #       },
    #       visa_pin_verification_value: {
    #         encrypted_pin_block: "EncryptedPinBlockType", # required
    #         pin_verification_key_index: 1, # required
    #       },
    #       ibm3624_pin_offset: {
    #         encrypted_pin_block: "EncryptedPinBlockType", # required
    #         decimalization_table: "DecimalizationTableType", # required
    #         pin_validation_data_pad_character: "HexLengthEquals1", # required
    #         pin_validation_data: "PinValidationDataType", # required
    #       },
    #       ibm3624_natural_pin: {
    #         decimalization_table: "DecimalizationTableType", # required
    #         pin_validation_data_pad_character: "HexLengthEquals1", # required
    #         pin_validation_data: "PinValidationDataType", # required
    #       },
    #       ibm3624_random_pin: {
    #         decimalization_table: "DecimalizationTableType", # required
    #         pin_validation_data_pad_character: "HexLengthEquals1", # required
    #         pin_validation_data: "PinValidationDataType", # required
    #       },
    #       ibm3624_pin_from_offset: {
    #         decimalization_table: "DecimalizationTableType", # required
    #         pin_validation_data_pad_character: "HexLengthEquals1", # required
    #         pin_validation_data: "PinValidationDataType", # required
    #         pin_offset: "PinOffsetType", # required
    #       }
    #     },
    #     pin_data_length: 1,
    #     primary_account_number: "PrimaryAccountNumberType",
    #     pin_block_format: "ISO_FORMAT_0" # One of: ["ISO_FORMAT_0", "ISO_FORMAT_1", "ISO_FORMAT_3", "ISO_FORMAT_4"], # required
    #     encryption_wrapped_key: {
    #       wrapped_key_material: { # required
    #         # One of:
    #         tr31_key_block: "Tr31WrappedKeyBlock",
    #         diffie_hellman_symmetric_key: {
    #           certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #           public_key_certificate: "CertificateType", # required
    #           key_algorithm: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224"], # required
    #           key_derivation_function: "NIST_SP800" # One of: ["NIST_SP800", "ANSI_X963"], # required
    #           key_derivation_hash_algorithm: "SHA_256" # One of: ["SHA_256", "SHA_384", "SHA_512"], # required
    #           shared_information: "SharedInformation", # required
    #         }
    #       },
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm"
    #     }
    #   }
    #   options = {}
    #   response = client.generate_pin_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     generation_key_arn: "KeyArn", # required
    #     generation_key_check_value: "KeyCheckValue", # required
    #     encryption_key_arn: "KeyArn", # required
    #     encryption_key_check_value: "KeyCheckValue", # required
    #     encrypted_pin_block: "EncryptedPinBlockType", # required
    #     pin_data: { # required
    #       # One of:
    #       pin_offset: "PinOffsetType",
    #       verification_value: "VerificationValueType"
    #     }
    #   }
    # @return [Types::GeneratePinDataOutput]
    def generate_pin_data(params = {}, options = {})
      request = build_request(:generate_pin_data, params)
      request.send_request(options)
    end

    # <p>Re-encrypts ciphertext using DUKPT, symmetric, or asymmetric data encryption keys. </p> <p>You can either generate an encryption key within Amazon Web Services Payment Cryptography by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a> or import your own encryption key by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a>. The <code>KeyArn</code> for use with this operation must be in a compatible key state with <code>KeyModesOfUse</code> set to <code>Encrypt</code>. </p> <p>This operation also supports dynamic keys, allowing you to pass a dynamic encryption key as a TR-31 WrappedKeyBlock. This can be used when key material is frequently rotated, such as during every card transaction, and there is need to avoid importing short-lived keys into Amazon Web Services Payment Cryptography. To re-encrypt using dynamic keys, the <code>keyARN</code> is the Key Encryption Key (KEK) of the TR-31 wrapped encryption key material. The incoming wrapped key shall have a key purpose of D0 with a mode of use of B or D. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html">Using Dynamic Keys</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>Amazon Web Services Payment Cryptography supports the following encryption key schemes:</p> <ul> <li> <p> <b>DUKPT</b>: <code>TDES</code> and <code>AES</code> algorithms. To encrypt using DUKPT, a DUKPT key must already exist within your account with <code>KeyModesOfUse</code> set to <code>DeriveKey</code> or a new DUKPT can be generated by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a>.</p> </li> <li> <p> <b>Symmetric</b>: <code>TDES</code> and <code>AES</code> algorithms.</p> </li> <li> <p> <b>Asymmetric</b>: <code>RSA</code>. You can use an <code>RSA</code> key on either the incoming or the outgoing side, paired with a symmetric key on the other side.</p> </li> </ul> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. </p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>DecryptData</a> </p> </li> <li> <p> <a>EncryptData</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html">GetPublicCertificate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a> </p> </li> </ul>
    # @param [Hash, Types::ReEncryptDataInput] params
    # @option params [String] :incoming_key_identifier
    #   <p>The <code>keyARN</code> of the encryption key of incoming ciphertext data.</p> <p>When a WrappedKeyBlock is provided, this value will be the identifier to the key wrapping key. Otherwise, it is the key identifier used to perform the operation.</p>
    # @option params [String] :outgoing_key_identifier
    #   <p>The <code>keyARN</code> of the encryption key of outgoing ciphertext data after encryption by Amazon Web Services Payment Cryptography.</p>
    # @option params [String] :cipher_text
    #   <p>Ciphertext to be encrypted. The minimum allowed length is 16 bytes and maximum allowed length is 4096 bytes.</p>
    # @option params [Types::ReEncryptionAttributes] :incoming_encryption_attributes
    #   <p>The attributes and values for incoming ciphertext.</p>
    # @option params [Types::ReEncryptionAttributes] :outgoing_encryption_attributes
    #   <p>The attributes and values for outgoing ciphertext data after encryption by Amazon Web Services Payment Cryptography.</p>
    # @option params [Types::WrappedKey] :incoming_wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key of incoming ciphertext data.</p>
    # @option params [Types::WrappedKey] :outgoing_wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key of outgoing ciphertext data after encryption by Amazon Web Services Payment Cryptography.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     incoming_key_identifier: "KeyArnOrKeyAliasType", # required
    #     outgoing_key_identifier: "KeyArnOrKeyAliasType", # required
    #     cipher_text: "CipherTextType", # required
    #     incoming_encryption_attributes: { # required
    #       # One of:
    #       symmetric: {
    #         mode: "ECB" # One of: ["ECB", "CBC", "CFB", "CFB1", "CFB8", "CFB64", "CFB128", "OFB"], # required
    #         initialization_vector: "InitializationVectorType",
    #         padding_type: "PKCS1" # One of: ["PKCS1", "OAEP_SHA1", "OAEP_SHA256", "OAEP_SHA512"]
    #       },
    #       asymmetric: {
    #         padding_type: "PKCS1" # One of: ["PKCS1", "OAEP_SHA1", "OAEP_SHA256", "OAEP_SHA512"]
    #       },
    #       dukpt: {
    #         key_serial_number: "HexLength16Or20Or24", # required
    #         mode: "ECB" # One of: ["ECB", "CBC"],
    #         dukpt_key_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"],
    #         dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"],
    #         initialization_vector: "InitializationVectorType"
    #       }
    #     },
    #     outgoing_encryption_attributes: { # required
    #       # One of:
    #       symmetric: {
    #         mode: "ECB" # One of: ["ECB", "CBC", "CFB", "CFB1", "CFB8", "CFB64", "CFB128", "OFB"], # required
    #         initialization_vector: "InitializationVectorType",
    #         padding_type: "PKCS1" # One of: ["PKCS1", "OAEP_SHA1", "OAEP_SHA256", "OAEP_SHA512"]
    #       },
    #       asymmetric: {
    #         padding_type: "PKCS1" # One of: ["PKCS1", "OAEP_SHA1", "OAEP_SHA256", "OAEP_SHA512"]
    #       },
    #       dukpt: {
    #         key_serial_number: "HexLength16Or20Or24", # required
    #         mode: "ECB" # One of: ["ECB", "CBC"],
    #         dukpt_key_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"],
    #         dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"],
    #         initialization_vector: "InitializationVectorType"
    #       }
    #     },
    #     incoming_wrapped_key: {
    #       wrapped_key_material: { # required
    #         # One of:
    #         tr31_key_block: "Tr31WrappedKeyBlock",
    #         diffie_hellman_symmetric_key: {
    #           certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #           public_key_certificate: "CertificateType", # required
    #           key_algorithm: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224"], # required
    #           key_derivation_function: "NIST_SP800" # One of: ["NIST_SP800", "ANSI_X963"], # required
    #           key_derivation_hash_algorithm: "SHA_256" # One of: ["SHA_256", "SHA_384", "SHA_512"], # required
    #           shared_information: "SharedInformation", # required
    #         }
    #       },
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm"
    #     },
    #     outgoing_wrapped_key: {
    #       wrapped_key_material: { # required
    #         # One of:
    #         tr31_key_block: "Tr31WrappedKeyBlock",
    #         diffie_hellman_symmetric_key: {
    #           certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #           public_key_certificate: "CertificateType", # required
    #           key_algorithm: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224"], # required
    #           key_derivation_function: "NIST_SP800" # One of: ["NIST_SP800", "ANSI_X963"], # required
    #           key_derivation_hash_algorithm: "SHA_256" # One of: ["SHA_256", "SHA_384", "SHA_512"], # required
    #           shared_information: "SharedInformation", # required
    #         }
    #       },
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm"
    #     }
    #   }
    #   options = {}
    #   response = client.re_encrypt_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_arn: "KeyArn", # required
    #     key_check_value: "KeyCheckValue", # required
    #     cipher_text: "CipherTextType", # required
    #   }
    # @return [Types::ReEncryptDataOutput]
    def re_encrypt_data(params = {}, options = {})
      request = build_request(:re_encrypt_data, params)
      request.send_request(options)
    end

    # <p>Translates an cryptographic key between different wrapping keys without importing the key into Amazon Web Services Payment Cryptography.</p> <p>This operation can be used when key material is frequently rotated, such as during every card transaction, and there is a need to avoid importing short-lived keys into Amazon Web Services Payment Cryptography. It translates short-lived transaction keys such as <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/terminology.html#terms.pek">PEK</a> generated for each transaction and wrapped with an <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/terminology.html#terms.ecdh">ECDH</a> derived wrapping key to another <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/terminology.html#terms.kek">KEK</a> wrapping key. </p> <p>Before using this operation, you must first request the public key certificate of the ECC key pair generated within Amazon Web Services Payment Cryptography to establish an ECDH key agreement. In <code>TranslateKeyData</code>, the service uses its own ECC key pair, public certificate of receiving ECC key pair, and the key derivation parameters to generate a derived key. The service uses this derived key to unwrap the incoming transaction key received as a TR31WrappedKeyBlock and re-wrap using a user provided KEK to generate an outgoing Tr31WrappedKeyBlock.</p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. </p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html">GetPublicCertificate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a> </p> </li> </ul>
    # @param [Hash, Types::TranslateKeyMaterialInput] params
    # @option params [Types::IncomingKeyMaterial] :incoming_key_material
    #   <p>Parameter information of the TR31WrappedKeyBlock containing the transaction key.</p>
    # @option params [Types::OutgoingKeyMaterial] :outgoing_key_material
    #   <p>Parameter information of the wrapping key used to wrap the transaction key in the outgoing TR31WrappedKeyBlock.</p>
    # @option params [String] :key_check_value_algorithm
    #   <p>The key check value (KCV) algorithm used for calculating the KCV of the derived key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     incoming_key_material: { # required
    #       # One of:
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
    #     outgoing_key_material: { # required
    #       # One of:
    #       tr31_key_block: {
    #         wrapping_key_identifier: "KeyArnOrKeyAliasType", # required
    #       }
    #     },
    #     key_check_value_algorithm: "KeyCheckValueAlgorithm"
    #   }
    #   options = {}
    #   response = client.translate_key_material(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     wrapped_key: { # required
    #       wrapped_key_material: "KeyMaterial", # required
    #       key_check_value: "KeyCheckValue", # required
    #       wrapped_key_material_format: "WrappedKeyMaterialFormat", # required
    #     }
    #   }
    # @return [Types::TranslateKeyMaterialOutput]
    def translate_key_material(params = {}, options = {})
      request = build_request(:translate_key_material, params)
      request.send_request(options)
    end

    # <p>Translates encrypted PIN block from and to ISO 9564 formats 0,1,3,4. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/translate-pin-data.html">Translate PIN data</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>PIN block translation involves changing a PIN block from one encryption key to another and optionally change its format. PIN block translation occurs entirely within the HSM boundary and PIN data never enters or leaves Amazon Web Services Payment Cryptography in clear text. The encryption key transformation can be from PEK (Pin Encryption Key) to BDK (Base Derivation Key) for DUKPT or from BDK for DUKPT to PEK.</p> <p>Amazon Web Services Payment Cryptography also supports use of dynamic keys and ECDH (Elliptic Curve Diffie-Hellman) based key exchange for this operation.</p> <p>Dynamic keys allow you to pass a PEK as a TR-31 WrappedKeyBlock. They can be used when key material is frequently rotated, such as during every card transaction, and there is need to avoid importing short-lived keys into Amazon Web Services Payment Cryptography. To translate PIN block using dynamic keys, the <code>keyARN</code> is the Key Encryption Key (KEK) of the TR-31 wrapped PEK. The incoming wrapped key shall have a key purpose of P0 with a mode of use of B or D. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html">Using Dynamic Keys</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>Using ECDH key exchange, you can receive cardholder selectable PINs into Amazon Web Services Payment Cryptography. The ECDH derived key protects the incoming PIN block, which is translated to a PEK encrypted PIN block for use within the service. You can also use ECDH for reveal PIN, wherein the service translates the PIN block from PEK to a ECDH derived encryption key. For more information on establishing ECDH derived keys, see the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/create-keys.html">Creating keys</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>The allowed combinations of PIN block format translations are guided by PCI. It is important to note that not all encrypted PIN block formats (example, format 1) require PAN (Primary Account Number) as input. And as such, PIN block format that requires PAN (example, formats 0,3,4) cannot be translated to a format (format 1) that does not require a PAN for generation. </p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <note> <p>Amazon Web Services Payment Cryptography currently supports ISO PIN block 4 translation for PIN block built using legacy PAN length. That is, PAN is the right most 12 digits excluding the check digits.</p> </note> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>GeneratePinData</a> </p> </li> <li> <p> <a>VerifyPinData</a> </p> </li> </ul>
    # @param [Hash, Types::TranslatePinDataInput] params
    # @option params [String] :incoming_key_identifier
    #   <p>The <code>keyARN</code> of the encryption key under which incoming PIN block data is encrypted. This key type can be PEK or BDK.</p> <p>For dynamic keys, it is the <code>keyARN</code> of KEK of the TR-31 wrapped PEK. For ECDH, it is the <code>keyARN</code> of the asymmetric ECC key.</p>
    # @option params [String] :outgoing_key_identifier
    #   <p>The <code>keyARN</code> of the encryption key for encrypting outgoing PIN block data. This key type can be PEK or BDK.</p> <p>For ECDH, it is the <code>keyARN</code> of the asymmetric ECC key.</p>
    # @option params [Types::TranslationIsoFormats] :incoming_translation_attributes
    #   <p>The format of the incoming PIN block data for translation within Amazon Web Services Payment Cryptography.</p>
    # @option params [Types::TranslationIsoFormats] :outgoing_translation_attributes
    #   <p>The format of the outgoing PIN block data after translation by Amazon Web Services Payment Cryptography.</p>
    # @option params [String] :encrypted_pin_block
    #   <p>The encrypted PIN block data that Amazon Web Services Payment Cryptography translates.</p>
    # @option params [Types::DukptDerivationAttributes] :incoming_dukpt_attributes
    #   <p>The attributes and values to use for incoming DUKPT encryption key for PIN block translation.</p>
    # @option params [Types::DukptDerivationAttributes] :outgoing_dukpt_attributes
    #   <p>The attributes and values to use for outgoing DUKPT encryption key after PIN block translation.</p>
    # @option params [Types::WrappedKey] :incoming_wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key under which incoming PIN block data is encrypted.</p>
    # @option params [Types::WrappedKey] :outgoing_wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key for encrypting outgoing PIN block data.</p>
    # @option params [Types::As2805PekDerivationAttributes] :incoming_as2805_attributes
    #   <p>The attributes and values to use for incoming AS2805 encryption key for PIN block translation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     incoming_key_identifier: "KeyArnOrKeyAliasType", # required
    #     outgoing_key_identifier: "KeyArnOrKeyAliasType", # required
    #     incoming_translation_attributes: { # required
    #       # One of:
    #       iso_format0: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #       },
    #       iso_format1: {
    #       },
    #       iso_format3: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #       },
    #       iso_format4: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #       },
    #       as2805_format0: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #       }
    #     },
    #     outgoing_translation_attributes: { # required
    #       # One of:
    #       iso_format0: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #       },
    #       iso_format1: {
    #       },
    #       iso_format3: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #       },
    #       iso_format4: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #       },
    #       as2805_format0: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #       }
    #     },
    #     encrypted_pin_block: "HexEvenLengthBetween16And32", # required
    #     incoming_dukpt_attributes: {
    #       key_serial_number: "HexLength16Or20Or24", # required
    #       dukpt_key_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"],
    #       dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"]
    #     },
    #     outgoing_dukpt_attributes: {
    #       key_serial_number: "HexLength16Or20Or24", # required
    #       dukpt_key_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"],
    #       dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"]
    #     },
    #     incoming_wrapped_key: {
    #       wrapped_key_material: { # required
    #         # One of:
    #         tr31_key_block: "Tr31WrappedKeyBlock",
    #         diffie_hellman_symmetric_key: {
    #           certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #           public_key_certificate: "CertificateType", # required
    #           key_algorithm: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224"], # required
    #           key_derivation_function: "NIST_SP800" # One of: ["NIST_SP800", "ANSI_X963"], # required
    #           key_derivation_hash_algorithm: "SHA_256" # One of: ["SHA_256", "SHA_384", "SHA_512"], # required
    #           shared_information: "SharedInformation", # required
    #         }
    #       },
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm"
    #     },
    #     outgoing_wrapped_key: {
    #       wrapped_key_material: { # required
    #         # One of:
    #         tr31_key_block: "Tr31WrappedKeyBlock",
    #         diffie_hellman_symmetric_key: {
    #           certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #           public_key_certificate: "CertificateType", # required
    #           key_algorithm: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224"], # required
    #           key_derivation_function: "NIST_SP800" # One of: ["NIST_SP800", "ANSI_X963"], # required
    #           key_derivation_hash_algorithm: "SHA_256" # One of: ["SHA_256", "SHA_384", "SHA_512"], # required
    #           shared_information: "SharedInformation", # required
    #         }
    #       },
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm"
    #     },
    #     incoming_as2805_attributes: {
    #       system_trace_audit_number: "SystemTraceAuditNumberType", # required
    #       transaction_amount: "TransactionAmountType", # required
    #     }
    #   }
    #   options = {}
    #   response = client.translate_pin_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pin_block: "EncryptedPinBlockType", # required
    #     key_arn: "KeyArn", # required
    #     key_check_value: "KeyCheckValue", # required
    #   }
    # @return [Types::TranslatePinDataOutput]
    def translate_pin_data(params = {}, options = {})
      request = build_request(:translate_pin_data, params)
      request.send_request(options)
    end

    # <p>Verifies Authorization Request Cryptogram (ARQC) for a EMV chip payment card authorization. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/data-operations.verifyauthrequestcryptogram.html">Verify auth request cryptogram</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>ARQC generation is done outside of Amazon Web Services Payment Cryptography and is typically generated on a point of sale terminal for an EMV chip card to obtain payment authorization during transaction time. For ARQC verification, you must first import the ARQC generated outside of Amazon Web Services Payment Cryptography by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html">ImportKey</a>. This operation uses the imported ARQC and an major encryption key (DUKPT) created by calling <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html">CreateKey</a> to either provide a boolean ARQC verification result or provide an APRC (Authorization Response Cryptogram) response using Method 1 or Method 2. The <code>ARPC_METHOD_1</code> uses <code>AuthResponseCode</code> to generate ARPC and <code>ARPC_METHOD_2</code> uses <code>CardStatusUpdate</code> to generate ARPC. </p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>VerifyCardValidationData</a> </p> </li> <li> <p> <a>VerifyPinData</a> </p> </li> </ul>
    # @param [Hash, Types::VerifyAuthRequestCryptogramInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>keyARN</code> of the major encryption key that Amazon Web Services Payment Cryptography uses for ARQC verification.</p>
    # @option params [String] :transaction_data
    #   <p>The transaction data that Amazon Web Services Payment Cryptography uses for ARQC verification. The same transaction is used for ARQC generation outside of Amazon Web Services Payment Cryptography.</p>
    # @option params [String] :auth_request_cryptogram
    #   <p>The auth request cryptogram imported into Amazon Web Services Payment Cryptography for ARQC verification using a major encryption key and transaction data.</p>
    # @option params [String] :major_key_derivation_mode
    #   <p>The method to use when deriving the major encryption key for ARQC verification within Amazon Web Services Payment Cryptography. The same key derivation mode was used for ARQC generation outside of Amazon Web Services Payment Cryptography.</p>
    # @option params [Types::SessionKeyDerivation] :session_key_derivation_attributes
    #   <p>The attributes and values to use for deriving a session key for ARQC verification within Amazon Web Services Payment Cryptography. The same attributes were used for ARQC generation outside of Amazon Web Services Payment Cryptography.</p>
    # @option params [Types::CryptogramAuthResponse] :auth_response_attributes
    #   <p>The attributes and values for auth request cryptogram verification. These parameters are required in case using ARPC Method 1 or Method 2 for ARQC verification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     transaction_data: "TransactionDataType", # required
    #     auth_request_cryptogram: "AuthRequestCryptogramType", # required
    #     major_key_derivation_mode: "EMV_OPTION_A" # One of: ["EMV_OPTION_A", "EMV_OPTION_B"], # required
    #     session_key_derivation_attributes: { # required
    #       # One of:
    #       emv_common: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthEquals4", # required
    #       },
    #       mastercard: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthEquals4", # required
    #         unpredictable_number: "HexLengthEquals8", # required
    #       },
    #       emv2000: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthEquals4", # required
    #       },
    #       amex: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #       },
    #       visa: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #       },
    #       union_pay: {
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthEquals4", # required
    #       }
    #     },
    #     auth_response_attributes: {
    #       # One of:
    #       arpc_method1: {
    #         auth_response_code: "HexLengthEquals4", # required
    #       },
    #       arpc_method2: {
    #         card_status_update: "HexLengthEquals8", # required
    #         proprietary_authentication_data: "ProprietaryAuthenticationDataType"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.verify_auth_request_cryptogram(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_arn: "KeyArn", # required
    #     key_check_value: "KeyCheckValue", # required
    #     auth_response_value: "AuthResponseValueType"
    #   }
    # @return [Types::VerifyAuthRequestCryptogramOutput]
    def verify_auth_request_cryptogram(params = {}, options = {})
      request = build_request(:verify_auth_request_cryptogram, params)
      request.send_request(options)
    end

    # <p>Verifies card-related validation data using algorithms such as Card Verification Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2) and Card Security Codes (CSC). For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-card-data.html">Verify card data</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>This operation validates the CVV or CSC codes that is printed on a payment credit or debit card during card payment transaction. The input values are typically provided as part of an inbound transaction to an issuer or supporting platform partner. Amazon Web Services Payment Cryptography uses CVV or CSC, PAN (Primary Account Number) and expiration date of the card to check its validity during transaction processing. In this operation, the CVK (Card Verification Key) encryption key for use with card data verification is same as the one in used for <a>GenerateCardValidationData</a>. </p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. </p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>GenerateCardValidationData</a> </p> </li> <li> <p> <a>VerifyAuthRequestCryptogram</a> </p> </li> <li> <p> <a>VerifyPinData</a> </p> </li> </ul>
    # @param [Hash, Types::VerifyCardValidationDataInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>keyARN</code> of the CVK encryption key that Amazon Web Services Payment Cryptography uses to verify card data.</p>
    # @option params [String] :primary_account_number
    #   <p>The Primary Account Number (PAN), a unique identifier for a payment credit or debit card that associates the card with a specific account holder.</p>
    # @option params [Types::CardVerificationAttributes] :verification_attributes
    #   <p>The algorithm to use for verification of card data within Amazon Web Services Payment Cryptography.</p>
    # @option params [String] :validation_data
    #   <p>The CVV or CSC value for use for card data verification within Amazon Web Services Payment Cryptography.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     primary_account_number: "PrimaryAccountNumberType", # required
    #     verification_attributes: { # required
    #       # One of:
    #       amex_card_security_code_version1: {
    #         card_expiry_date: "CardExpiryDateType", # required
    #       },
    #       amex_card_security_code_version2: {
    #         card_expiry_date: "CardExpiryDateType", # required
    #         service_code: "ServiceCodeType", # required
    #       },
    #       card_verification_value1: {
    #         card_expiry_date: "CardExpiryDateType", # required
    #         service_code: "ServiceCodeType", # required
    #       },
    #       card_verification_value2: {
    #         card_expiry_date: "CardExpiryDateType", # required
    #       },
    #       card_holder_verification_value: {
    #         unpredictable_number: "HexLengthBetween2And8", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #       },
    #       dynamic_card_verification_code: {
    #         unpredictable_number: "HexLengthBetween2And8", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         track_data: "TrackDataType", # required
    #       },
    #       dynamic_card_verification_value: {
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         card_expiry_date: "CardExpiryDateType", # required
    #         service_code: "ServiceCodeType", # required
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #       },
    #       discover_dynamic_card_verification_code: {
    #         card_expiry_date: "CardExpiryDateType", # required
    #         unpredictable_number: "HexLengthBetween2And8", # required
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #       }
    #     },
    #     validation_data: "ValidationDataType", # required
    #   }
    #   options = {}
    #   response = client.verify_card_validation_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_arn: "KeyArn", # required
    #     key_check_value: "KeyCheckValue", # required
    #   }
    # @return [Types::VerifyCardValidationDataOutput]
    def verify_card_validation_data(params = {}, options = {})
      request = build_request(:verify_card_validation_data, params)
      request.send_request(options)
    end

    # <p>Verifies a Message Authentication Code (MAC). </p> <p>You can use this operation to verify MAC for message data authentication such as . In this operation, you must use the same message data, secret encryption key and MAC algorithm that was used to generate MAC. You can use this operation to verify a DUPKT, CMAC, HMAC or EMV MAC by setting generation attributes and algorithm to the associated values. </p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. </p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>GenerateMac</a> </p> </li> </ul>
    # @param [Hash, Types::VerifyMacInput] params
    # @option params [String] :key_identifier
    #   <p>The <code>keyARN</code> of the encryption key that Amazon Web Services Payment Cryptography uses to verify MAC data.</p>
    # @option params [String] :message_data
    #   <p>The data on for which MAC is under verification. This value must be hexBinary.</p>
    # @option params [String] :mac
    #   <p>The MAC being verified.</p>
    # @option params [Types::MacAttributes] :verification_attributes
    #   <p>The attributes and data values to use for MAC verification within Amazon Web Services Payment Cryptography.</p>
    # @option params [Integer] :mac_length
    #   <p>The length of the MAC.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     message_data: "MessageDataType", # required
    #     mac: "MacType", # required
    #     verification_attributes: { # required
    #       # One of:
    #       algorithm: "ISO9797_ALGORITHM1" # One of: ["ISO9797_ALGORITHM1", "ISO9797_ALGORITHM3", "CMAC", "HMAC", "HMAC_SHA224", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "AS2805_4_1"],
    #       emv_mac: {
    #         major_key_derivation_mode: "EMV_OPTION_A" # One of: ["EMV_OPTION_A", "EMV_OPTION_B"], # required
    #         primary_account_number: "PrimaryAccountNumberType", # required
    #         pan_sequence_number: "NumberLengthEquals2", # required
    #         session_key_derivation_mode: "EMV_COMMON_SESSION_KEY" # One of: ["EMV_COMMON_SESSION_KEY", "EMV2000", "AMEX", "MASTERCARD_SESSION_KEY", "VISA", "UNION_PAY"], # required
    #         session_key_derivation_value: { # required
    #           # One of:
    #           application_cryptogram: "ApplicationCryptogramType",
    #           application_transaction_counter: "HexLengthEquals4"
    #         }
    #       },
    #       dukpt_iso9797_algorithm1: {
    #         key_serial_number: "HexLength16Or20Or24", # required
    #         dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"], # required
    #         dukpt_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"]
    #       },
    #       dukpt_iso9797_algorithm3: {
    #         key_serial_number: "HexLength16Or20Or24", # required
    #         dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"], # required
    #         dukpt_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"]
    #       },
    #       dukpt_cmac: {
    #         key_serial_number: "HexLength16Or20Or24", # required
    #         dukpt_key_variant: "BIDIRECTIONAL" # One of: ["BIDIRECTIONAL", "REQUEST", "RESPONSE"], # required
    #         dukpt_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"]
    #       }
    #     },
    #     mac_length: 1
    #   }
    #   options = {}
    #   response = client.verify_mac(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_arn: "KeyArn", # required
    #     key_check_value: "KeyCheckValue", # required
    #   }
    # @return [Types::VerifyMacOutput]
    def verify_mac(params = {}, options = {})
      request = build_request(:verify_mac, params)
      request.send_request(options)
    end

    # <p>Verifies pin-related data such as PIN and PIN Offset using algorithms including VISA PVV and IBM3624. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-pin-data.html">Verify PIN data</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>This operation verifies PIN data for user payment card. A card holder PIN data is never transmitted in clear to or from Amazon Web Services Payment Cryptography. This operation uses PIN Verification Key (PVK) for PIN or PIN Offset generation and then encrypts it using PIN Encryption Key (PEK) to create an <code>EncryptedPinBlock</code> for transmission from Amazon Web Services Payment Cryptography. </p> <p>For information about valid keys for this operation, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html">Understanding key attributes</a> and <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html">Key types for specific data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>. </p> <p> <b>Cross-account use</b>: This operation supports cross-account use when the key has a resource-based policy that grants access. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security_iam_resource-based-policies.html">Resource-based policies</a>.</p> <p> <b>Related operations:</b> </p> <ul> <li> <p> <a>GeneratePinData</a> </p> </li> <li> <p> <a>TranslatePinData</a> </p> </li> </ul>
    # @param [Hash, Types::VerifyPinDataInput] params
    # @option params [String] :verification_key_identifier
    #   <p>The <code>keyARN</code> of the PIN verification key.</p>
    # @option params [String] :encryption_key_identifier
    #   <p>The <code>keyARN</code> of the encryption key under which the PIN block data is encrypted. This key type can be PEK or BDK.</p>
    # @option params [Types::PinVerificationAttributes] :verification_attributes
    #   <p>The attributes and values for PIN data verification.</p>
    # @option params [String] :encrypted_pin_block
    #   <p>The encrypted PIN block data that Amazon Web Services Payment Cryptography verifies.</p>
    # @option params [String] :primary_account_number
    #   <p>The Primary Account Number (PAN), a unique identifier for a payment credit or debit card that associates the card with a specific account holder.</p>
    # @option params [String] :pin_block_format
    #   <p>The PIN encoding format for pin data generation as specified in ISO 9564. Amazon Web Services Payment Cryptography supports <code>ISO_Format_0</code> and <code>ISO_Format_3</code>.</p> <p>The <code>ISO_Format_0</code> PIN block format is equivalent to the ANSI X9.8, VISA-1, and ECI-1 PIN block formats. It is similar to a VISA-4 PIN block format. It supports a PIN from 4 to 12 digits in length.</p> <p>The <code>ISO_Format_3</code> PIN block format is the same as <code>ISO_Format_0</code> except that the fill digits are random values from 10 to 15.</p>
    # @option params [Integer] :pin_data_length
    #   <p>The length of PIN being verified.</p>
    # @option params [Types::DukptAttributes] :dukpt_attributes
    #   <p>The attributes and values for the DUKPT encrypted PIN block data.</p>
    # @option params [Types::WrappedKey] :encryption_wrapped_key
    #   <p>Parameter information of a WrappedKeyBlock for encryption key exchange.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     verification_key_identifier: "KeyArnOrKeyAliasType", # required
    #     encryption_key_identifier: "KeyArnOrKeyAliasType", # required
    #     verification_attributes: { # required
    #       # One of:
    #       visa_pin: {
    #         pin_verification_key_index: 1, # required
    #         verification_value: "VerificationValueType", # required
    #       },
    #       ibm3624_pin: {
    #         decimalization_table: "DecimalizationTableType", # required
    #         pin_validation_data_pad_character: "HexLengthEquals1", # required
    #         pin_validation_data: "PinValidationDataType", # required
    #         pin_offset: "PinOffsetType", # required
    #       }
    #     },
    #     encrypted_pin_block: "EncryptedPinBlockType", # required
    #     primary_account_number: "PrimaryAccountNumberType",
    #     pin_block_format: "ISO_FORMAT_0" # One of: ["ISO_FORMAT_0", "ISO_FORMAT_1", "ISO_FORMAT_3", "ISO_FORMAT_4"], # required
    #     pin_data_length: 1,
    #     dukpt_attributes: {
    #       key_serial_number: "HexLength16Or20Or24", # required
    #       dukpt_derivation_type: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256"], # required
    #     },
    #     encryption_wrapped_key: {
    #       wrapped_key_material: { # required
    #         # One of:
    #         tr31_key_block: "Tr31WrappedKeyBlock",
    #         diffie_hellman_symmetric_key: {
    #           certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #           public_key_certificate: "CertificateType", # required
    #           key_algorithm: "TDES_2KEY" # One of: ["TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224"], # required
    #           key_derivation_function: "NIST_SP800" # One of: ["NIST_SP800", "ANSI_X963"], # required
    #           key_derivation_hash_algorithm: "SHA_256" # One of: ["SHA_256", "SHA_384", "SHA_512"], # required
    #           shared_information: "SharedInformation", # required
    #         }
    #       },
    #       key_check_value_algorithm: "KeyCheckValueAlgorithm"
    #     }
    #   }
    #   options = {}
    #   response = client.verify_pin_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verification_key_arn: "KeyArn", # required
    #     verification_key_check_value: "KeyCheckValue", # required
    #     encryption_key_arn: "KeyArn", # required
    #     encryption_key_check_value: "KeyCheckValue", # required
    #   }
    # @return [Types::VerifyPinDataOutput]
    def verify_pin_data(params = {}, options = {})
      request = build_request(:verify_pin_data, params)
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
      context[:gem_name] = 'aws-sdk-paymentcryptographydata'
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
