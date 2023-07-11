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

Aws::Plugins::GlobalConfiguration.add_identifier(:paymentcryptographydata)

module Aws::PaymentCryptographyData
  # An API client for PaymentCryptographyData.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PaymentCryptographyData::Client.new(
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

    @identifier = :paymentcryptographydata

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
    add_plugin(Aws::PaymentCryptographyData::Plugins::Endpoints)

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
    #   @option options [Aws::PaymentCryptographyData::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::PaymentCryptographyData::EndpointParameters`
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

    # Decrypts ciphertext data to plaintext using symmetric, asymmetric, or
    # DUKPT data encryption key. For more information, see [Decrypt data][1]
    # in the *Amazon Web Services Payment Cryptography User Guide*.
    #
    # You can use an encryption key generated within Amazon Web Services
    # Payment Cryptography, or you can import your own encryption key by
    # calling [ImportKey][2]. For this operation, the key must have
    # `KeyModesOfUse` set to `Decrypt`. In asymmetric decryption, Amazon Web
    # Services Payment Cryptography decrypts the ciphertext using the
    # private component of the asymmetric encryption key pair. For data
    # encryption outside of Amazon Web Services Payment Cryptography, you
    # can export the public component of the asymmetric key pair by calling
    # [GetPublicCertificate][3].
    #
    # For symmetric and DUKPT decryption, Amazon Web Services Payment
    # Cryptography supports `TDES` and `AES` algorithms. For asymmetric
    # decryption, Amazon Web Services Payment Cryptography supports `RSA`.
    # When you use DUKPT, for `TDES` algorithm, the ciphertext data length
    # must be a multiple of 16 bytes. For `AES` algorithm, the ciphertext
    # data length must be a multiple of 32 bytes.
    #
    # For information about valid keys for this operation, see
    # [Understanding key attributes][4] and [Key types for specific data
    # operations][5] in the *Amazon Web Services Payment Cryptography User
    # Guide*.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * EncryptData
    #
    # * [GetPublicCertificate][3]
    #
    # * [ImportKey][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/decrypt-data.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [5]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
    #
    # @option params [required, String] :cipher_text
    #   The ciphertext to decrypt.
    #
    # @option params [required, Types::EncryptionDecryptionAttributes] :decryption_attributes
    #   The encryption key type and attributes for ciphertext decryption.
    #
    # @option params [required, String] :key_identifier
    #   The `keyARN` of the encryption key that Amazon Web Services Payment
    #   Cryptography uses for ciphertext decryption.
    #
    # @return [Types::DecryptDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DecryptDataOutput#key_arn #key_arn} => String
    #   * {Types::DecryptDataOutput#key_check_value #key_check_value} => String
    #   * {Types::DecryptDataOutput#plain_text #plain_text} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decrypt_data({
    #     cipher_text: "HexEvenLengthBetween16And4096", # required
    #     decryption_attributes: { # required
    #       asymmetric: {
    #         padding_type: "PKCS1", # accepts PKCS1, OAEP_SHA1, OAEP_SHA256, OAEP_SHA512
    #       },
    #       dukpt: {
    #         dukpt_key_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #         dukpt_key_variant: "BIDIRECTIONAL", # accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #         initialization_vector: "HexLength16Or32",
    #         key_serial_number: "HexLengthBetween10And24", # required
    #         mode: "ECB", # accepts ECB, CBC
    #       },
    #       symmetric: {
    #         initialization_vector: "HexLength16Or32",
    #         mode: "ECB", # required, accepts ECB, CBC, CFB, CFB1, CFB8, CFB64, CFB128, OFB
    #         padding_type: "PKCS1", # accepts PKCS1, OAEP_SHA1, OAEP_SHA256, OAEP_SHA512
    #       },
    #     },
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_arn #=> String
    #   resp.key_check_value #=> String
    #   resp.plain_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/DecryptData AWS API Documentation
    #
    # @overload decrypt_data(params = {})
    # @param [Hash] params ({})
    def decrypt_data(params = {}, options = {})
      req = build_request(:decrypt_data, params)
      req.send_request(options)
    end

    # Encrypts plaintext data to ciphertext using symmetric, asymmetric, or
    # DUKPT data encryption key. For more information, see [Encrypt data][1]
    # in the *Amazon Web Services Payment Cryptography User Guide*.
    #
    # You can generate an encryption key within Amazon Web Services Payment
    # Cryptography by calling [CreateKey][2]. You can import your own
    # encryption key by calling [ImportKey][3]. For this operation, the key
    # must have `KeyModesOfUse` set to `Encrypt`. In asymmetric encryption,
    # plaintext is encrypted using public component. You can import the
    # public component of an asymmetric key pair created outside Amazon Web
    # Services Payment Cryptography by calling [ImportKey][3]).
    #
    # for symmetric and DUKPT encryption, Amazon Web Services Payment
    # Cryptography supports `TDES` and `AES` algorithms. For asymmetric
    # encryption, Amazon Web Services Payment Cryptography supports `RSA`.
    # To encrypt using DUKPT, you must already have a DUKPT key in your
    # account with `KeyModesOfUse` set to `DeriveKey`, or you can generate a
    # new DUKPT key by calling [CreateKey][2].
    #
    # For information about valid keys for this operation, see
    # [Understanding key attributes][4] and [Key types for specific data
    # operations][5] in the *Amazon Web Services Payment Cryptography User
    # Guide*.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * DecryptData
    #
    # * [GetPublicCertificate][6]
    #
    # * [ImportKey][3]
    #
    # * ReEncryptData
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/encrypt-data.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [5]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
    # [6]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html
    #
    # @option params [required, Types::EncryptionDecryptionAttributes] :encryption_attributes
    #   The encryption key type and attributes for plaintext encryption.
    #
    # @option params [required, String] :key_identifier
    #   The `keyARN` of the encryption key that Amazon Web Services Payment
    #   Cryptography uses for plaintext encryption.
    #
    # @option params [required, String] :plain_text
    #   The plaintext to be encrypted.
    #
    # @return [Types::EncryptDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EncryptDataOutput#cipher_text #cipher_text} => String
    #   * {Types::EncryptDataOutput#key_arn #key_arn} => String
    #   * {Types::EncryptDataOutput#key_check_value #key_check_value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.encrypt_data({
    #     encryption_attributes: { # required
    #       asymmetric: {
    #         padding_type: "PKCS1", # accepts PKCS1, OAEP_SHA1, OAEP_SHA256, OAEP_SHA512
    #       },
    #       dukpt: {
    #         dukpt_key_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #         dukpt_key_variant: "BIDIRECTIONAL", # accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #         initialization_vector: "HexLength16Or32",
    #         key_serial_number: "HexLengthBetween10And24", # required
    #         mode: "ECB", # accepts ECB, CBC
    #       },
    #       symmetric: {
    #         initialization_vector: "HexLength16Or32",
    #         mode: "ECB", # required, accepts ECB, CBC, CFB, CFB1, CFB8, CFB64, CFB128, OFB
    #         padding_type: "PKCS1", # accepts PKCS1, OAEP_SHA1, OAEP_SHA256, OAEP_SHA512
    #       },
    #     },
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     plain_text: "HexEvenLengthBetween16And4064", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cipher_text #=> String
    #   resp.key_arn #=> String
    #   resp.key_check_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/EncryptData AWS API Documentation
    #
    # @overload encrypt_data(params = {})
    # @param [Hash] params ({})
    def encrypt_data(params = {}, options = {})
      req = build_request(:encrypt_data, params)
      req.send_request(options)
    end

    # Generates card-related validation data using algorithms such as Card
    # Verification Values (CVV/CVV2), Dynamic Card Verification Values
    # (dCVV/dCVV2), or Card Security Codes (CSC). For more information, see
    # [Generate card data][1] in the *Amazon Web Services Payment
    # Cryptography User Guide*.
    #
    # This operation generates a CVV or CSC value that is printed on a
    # payment credit or debit card during card production. The CVV or CSC,
    # PAN (Primary Account Number) and expiration date of the card are
    # required to check its validity during transaction processing. To begin
    # this operation, a CVK (Card Verification Key) encryption key is
    # required. You can use [CreateKey][2] or [ImportKey][3] to establish a
    # CVK within Amazon Web Services Payment Cryptography. The
    # `KeyModesOfUse` should be set to `Generate` and `Verify` for a CVK
    # encryption key.
    #
    # For information about valid keys for this operation, see
    # [Understanding key attributes][4] and [Key types for specific data
    # operations][5] in the *Amazon Web Services Payment Cryptography User
    # Guide*.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [ImportKey][3]
    #
    # * VerifyCardValidationData
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-card-data.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [5]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
    #
    # @option params [required, Types::CardGenerationAttributes] :generation_attributes
    #   The algorithm for generating CVV or CSC values for the card within
    #   Amazon Web Services Payment Cryptography.
    #
    # @option params [required, String] :key_identifier
    #   The `keyARN` of the CVK encryption key that Amazon Web Services
    #   Payment Cryptography uses to generate card data.
    #
    # @option params [required, String] :primary_account_number
    #   The Primary Account Number (PAN), a unique identifier for a payment
    #   credit or debit card that associates the card with a specific account
    #   holder.
    #
    # @option params [Integer] :validation_data_length
    #   The length of the CVV or CSC to be generated. The default value is 3.
    #
    # @return [Types::GenerateCardValidationDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateCardValidationDataOutput#key_arn #key_arn} => String
    #   * {Types::GenerateCardValidationDataOutput#key_check_value #key_check_value} => String
    #   * {Types::GenerateCardValidationDataOutput#validation_data #validation_data} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_card_validation_data({
    #     generation_attributes: { # required
    #       amex_card_security_code_version_1: {
    #         card_expiry_date: "NumberLengthEquals4", # required
    #       },
    #       amex_card_security_code_version_2: {
    #         card_expiry_date: "NumberLengthEquals4", # required
    #         service_code: "NumberLengthEquals3", # required
    #       },
    #       card_holder_verification_value: {
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         unpredictable_number: "HexLengthBetween2And8", # required
    #       },
    #       card_verification_value_1: {
    #         card_expiry_date: "NumberLengthEquals4", # required
    #         service_code: "NumberLengthEquals3", # required
    #       },
    #       card_verification_value_2: {
    #         card_expiry_date: "NumberLengthEquals4", # required
    #       },
    #       dynamic_card_verification_code: {
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         track_data: "HexLengthBetween2And160", # required
    #         unpredictable_number: "HexLengthBetween2And8", # required
    #       },
    #       dynamic_card_verification_value: {
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         card_expiry_date: "NumberLengthEquals4", # required
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         service_code: "NumberLengthEquals3", # required
    #       },
    #     },
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     primary_account_number: "NumberLengthBetween12And19", # required
    #     validation_data_length: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.key_arn #=> String
    #   resp.key_check_value #=> String
    #   resp.validation_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/GenerateCardValidationData AWS API Documentation
    #
    # @overload generate_card_validation_data(params = {})
    # @param [Hash] params ({})
    def generate_card_validation_data(params = {}, options = {})
      req = build_request(:generate_card_validation_data, params)
      req.send_request(options)
    end

    # Generates a Message Authentication Code (MAC) cryptogram within Amazon
    # Web Services Payment Cryptography.
    #
    # You can use this operation when keys won't be shared but mutual data
    # is present on both ends for validation. In this case, known data
    # values are used to generate a MAC on both ends for comparision without
    # sending or receiving data in ciphertext or plaintext. You can use this
    # operation to generate a DUPKT, HMAC or EMV MAC by setting generation
    # attributes and algorithm to the associated values. The MAC generation
    # encryption key must have valid values for `KeyUsage` such as
    # `TR31_M7_HMAC_KEY` for HMAC generation, and they key must have
    # `KeyModesOfUse` set to `Generate` and `Verify`.
    #
    # For information about valid keys for this operation, see
    # [Understanding key attributes][1] and [Key types for specific data
    # operations][2] in the *Amazon Web Services Payment Cryptography User
    # Guide*.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * VerifyMac
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
    #
    # @option params [required, Types::MacAttributes] :generation_attributes
    #   The attributes and data values to use for MAC generation within Amazon
    #   Web Services Payment Cryptography.
    #
    # @option params [required, String] :key_identifier
    #   The `keyARN` of the MAC generation encryption key.
    #
    # @option params [Integer] :mac_length
    #   The length of a MAC under generation.
    #
    # @option params [required, String] :message_data
    #   The data for which a MAC is under generation.
    #
    # @return [Types::GenerateMacOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateMacOutput#key_arn #key_arn} => String
    #   * {Types::GenerateMacOutput#key_check_value #key_check_value} => String
    #   * {Types::GenerateMacOutput#mac #mac} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_mac({
    #     generation_attributes: { # required
    #       algorithm: "ISO9797_ALGORITHM1", # accepts ISO9797_ALGORITHM1, ISO9797_ALGORITHM3, CMAC, HMAC_SHA224, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512
    #       dukpt_cmac: {
    #         dukpt_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #         dukpt_key_variant: "BIDIRECTIONAL", # required, accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #         key_serial_number: "HexLengthBetween10And24", # required
    #       },
    #       dukpt_iso_9797_algorithm_1: {
    #         dukpt_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #         dukpt_key_variant: "BIDIRECTIONAL", # required, accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #         key_serial_number: "HexLengthBetween10And24", # required
    #       },
    #       dukpt_iso_9797_algorithm_3: {
    #         dukpt_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #         dukpt_key_variant: "BIDIRECTIONAL", # required, accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #         key_serial_number: "HexLengthBetween10And24", # required
    #       },
    #       emv_mac: {
    #         major_key_derivation_mode: "EMV_OPTION_A", # required, accepts EMV_OPTION_A, EMV_OPTION_B
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #         session_key_derivation_mode: "EMV_COMMON_SESSION_KEY", # required, accepts EMV_COMMON_SESSION_KEY, EMV2000, AMEX, MASTERCARD_SESSION_KEY, VISA
    #         session_key_derivation_value: { # required
    #           application_cryptogram: "HexLengthEquals16",
    #           application_transaction_counter: "HexLengthBetween2And4",
    #         },
    #       },
    #     },
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     mac_length: 1,
    #     message_data: "HexLengthBetween2And4096", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_arn #=> String
    #   resp.key_check_value #=> String
    #   resp.mac #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/GenerateMac AWS API Documentation
    #
    # @overload generate_mac(params = {})
    # @param [Hash] params ({})
    def generate_mac(params = {}, options = {})
      req = build_request(:generate_mac, params)
      req.send_request(options)
    end

    # Generates pin-related data such as PIN, PIN Verification Value (PVV),
    # PIN Block, and PIN Offset during new card issuance or reissuance. For
    # more information, see [Generate PIN data][1] in the *Amazon Web
    # Services Payment Cryptography User Guide*.
    #
    # PIN data is never transmitted in clear to or from Amazon Web Services
    # Payment Cryptography. This operation generates PIN, PVV, or PIN Offset
    # and then encrypts it using Pin Encryption Key (PEK) to create an
    # `EncryptedPinBlock` for transmission from Amazon Web Services Payment
    # Cryptography. This operation uses a separate Pin Verification Key
    # (PVK) for VISA PVV generation.
    #
    # For information about valid keys for this operation, see
    # [Understanding key attributes][2] and [Key types for specific data
    # operations][3] in the *Amazon Web Services Payment Cryptography User
    # Guide*.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * GenerateCardValidationData
    #
    # * TranslatePinData
    #
    # * VerifyPinData
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-pin-data.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
    #
    # @option params [required, String] :encryption_key_identifier
    #   The `keyARN` of the PEK that Amazon Web Services Payment Cryptography
    #   uses to encrypt the PIN Block.
    #
    # @option params [required, Types::PinGenerationAttributes] :generation_attributes
    #   The attributes and values to use for PIN, PVV, or PIN Offset
    #   generation.
    #
    # @option params [required, String] :generation_key_identifier
    #   The `keyARN` of the PEK that Amazon Web Services Payment Cryptography
    #   uses for pin data generation.
    #
    # @option params [required, String] :pin_block_format
    #   The PIN encoding format for pin data generation as specified in ISO
    #   9564. Amazon Web Services Payment Cryptography supports `ISO_Format_0`
    #   and `ISO_Format_3`.
    #
    #   The `ISO_Format_0` PIN block format is equivalent to the ANSI X9.8,
    #   VISA-1, and ECI-1 PIN block formats. It is similar to a VISA-4 PIN
    #   block format. It supports a PIN from 4 to 12 digits in length.
    #
    #   The `ISO_Format_3` PIN block format is the same as `ISO_Format_0`
    #   except that the fill digits are random values from 10 to 15.
    #
    # @option params [Integer] :pin_data_length
    #   The length of PIN under generation.
    #
    # @option params [required, String] :primary_account_number
    #   The Primary Account Number (PAN), a unique identifier for a payment
    #   credit or debit card that associates the card with a specific account
    #   holder.
    #
    # @return [Types::GeneratePinDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GeneratePinDataOutput#encrypted_pin_block #encrypted_pin_block} => String
    #   * {Types::GeneratePinDataOutput#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::GeneratePinDataOutput#encryption_key_check_value #encryption_key_check_value} => String
    #   * {Types::GeneratePinDataOutput#generation_key_arn #generation_key_arn} => String
    #   * {Types::GeneratePinDataOutput#generation_key_check_value #generation_key_check_value} => String
    #   * {Types::GeneratePinDataOutput#pin_data #pin_data} => Types::PinData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_pin_data({
    #     encryption_key_identifier: "KeyArnOrKeyAliasType", # required
    #     generation_attributes: { # required
    #       ibm_3624_natural_pin: {
    #         decimalization_table: "NumberLengthEquals16", # required
    #         pin_validation_data: "NumberLengthBetween4And16", # required
    #         pin_validation_data_pad_character: "HexLengthEquals1", # required
    #       },
    #       ibm_3624_pin_from_offset: {
    #         decimalization_table: "NumberLengthEquals16", # required
    #         pin_offset: "NumberLengthBetween4And12", # required
    #         pin_validation_data: "NumberLengthBetween4And16", # required
    #         pin_validation_data_pad_character: "HexLengthEquals1", # required
    #       },
    #       ibm_3624_pin_offset: {
    #         decimalization_table: "NumberLengthEquals16", # required
    #         encrypted_pin_block: "HexLengthBetween16And32", # required
    #         pin_validation_data: "NumberLengthBetween4And16", # required
    #         pin_validation_data_pad_character: "HexLengthEquals1", # required
    #       },
    #       ibm_3624_random_pin: {
    #         decimalization_table: "NumberLengthEquals16", # required
    #         pin_validation_data: "NumberLengthBetween4And16", # required
    #         pin_validation_data_pad_character: "HexLengthEquals1", # required
    #       },
    #       visa_pin: {
    #         pin_verification_key_index: 1, # required
    #       },
    #       visa_pin_verification_value: {
    #         encrypted_pin_block: "HexLengthBetween16And32", # required
    #         pin_verification_key_index: 1, # required
    #       },
    #     },
    #     generation_key_identifier: "KeyArnOrKeyAliasType", # required
    #     pin_block_format: "ISO_FORMAT_0", # required, accepts ISO_FORMAT_0, ISO_FORMAT_3
    #     pin_data_length: 1,
    #     primary_account_number: "NumberLengthBetween12And19", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.encrypted_pin_block #=> String
    #   resp.encryption_key_arn #=> String
    #   resp.encryption_key_check_value #=> String
    #   resp.generation_key_arn #=> String
    #   resp.generation_key_check_value #=> String
    #   resp.pin_data.pin_offset #=> String
    #   resp.pin_data.verification_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/GeneratePinData AWS API Documentation
    #
    # @overload generate_pin_data(params = {})
    # @param [Hash] params ({})
    def generate_pin_data(params = {}, options = {})
      req = build_request(:generate_pin_data, params)
      req.send_request(options)
    end

    # Re-encrypt ciphertext using DUKPT, Symmetric and Asymmetric Data
    # Encryption Keys.
    #
    # You can either generate an encryption key within Amazon Web Services
    # Payment Cryptography by calling [CreateKey][1] or import your own
    # encryption key by calling [ImportKey][2]. The `KeyArn` for use with
    # this operation must be in a compatible key state with `KeyModesOfUse`
    # set to `Encrypt`. In asymmetric encryption, ciphertext is encrypted
    # using public component (imported by calling [ImportKey][2]) of the
    # asymmetric key pair created outside of Amazon Web Services Payment
    # Cryptography.
    #
    # For symmetric and DUKPT encryption, Amazon Web Services Payment
    # Cryptography supports `TDES` and `AES` algorithms. For asymmetric
    # encryption, Amazon Web Services Payment Cryptography supports `RSA`.
    # To encrypt using DUKPT, a DUKPT key must already exist within your
    # account with `KeyModesOfUse` set to `DeriveKey` or a new DUKPT can be
    # generated by calling [CreateKey][1].
    #
    # For information about valid keys for this operation, see
    # [Understanding key attributes][3] and [Key types for specific data
    # operations][4] in the *Amazon Web Services Payment Cryptography User
    # Guide*.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * DecryptData
    #
    # * EncryptData
    #
    # * [GetPublicCertificate][5]
    #
    # * [ImportKey][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
    # [5]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html
    #
    # @option params [required, String] :cipher_text
    #   Ciphertext to be encrypted. The minimum allowed length is 16 bytes and
    #   maximum allowed length is 4096 bytes.
    #
    # @option params [required, Types::ReEncryptionAttributes] :incoming_encryption_attributes
    #   The attributes and values for incoming ciphertext.
    #
    # @option params [required, String] :incoming_key_identifier
    #   The `keyARN` of the encryption key of incoming ciphertext data.
    #
    # @option params [required, Types::ReEncryptionAttributes] :outgoing_encryption_attributes
    #   The attributes and values for outgoing ciphertext data after
    #   encryption by Amazon Web Services Payment Cryptography.
    #
    # @option params [required, String] :outgoing_key_identifier
    #   The `keyARN` of the encryption key of outgoing ciphertext data after
    #   encryption by Amazon Web Services Payment Cryptography.
    #
    # @return [Types::ReEncryptDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReEncryptDataOutput#cipher_text #cipher_text} => String
    #   * {Types::ReEncryptDataOutput#key_arn #key_arn} => String
    #   * {Types::ReEncryptDataOutput#key_check_value #key_check_value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.re_encrypt_data({
    #     cipher_text: "HexEvenLengthBetween16And4096", # required
    #     incoming_encryption_attributes: { # required
    #       dukpt: {
    #         dukpt_key_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #         dukpt_key_variant: "BIDIRECTIONAL", # accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #         initialization_vector: "HexLength16Or32",
    #         key_serial_number: "HexLengthBetween10And24", # required
    #         mode: "ECB", # accepts ECB, CBC
    #       },
    #       symmetric: {
    #         initialization_vector: "HexLength16Or32",
    #         mode: "ECB", # required, accepts ECB, CBC, CFB, CFB1, CFB8, CFB64, CFB128, OFB
    #         padding_type: "PKCS1", # accepts PKCS1, OAEP_SHA1, OAEP_SHA256, OAEP_SHA512
    #       },
    #     },
    #     incoming_key_identifier: "KeyArnOrKeyAliasType", # required
    #     outgoing_encryption_attributes: { # required
    #       dukpt: {
    #         dukpt_key_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #         dukpt_key_variant: "BIDIRECTIONAL", # accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #         initialization_vector: "HexLength16Or32",
    #         key_serial_number: "HexLengthBetween10And24", # required
    #         mode: "ECB", # accepts ECB, CBC
    #       },
    #       symmetric: {
    #         initialization_vector: "HexLength16Or32",
    #         mode: "ECB", # required, accepts ECB, CBC, CFB, CFB1, CFB8, CFB64, CFB128, OFB
    #         padding_type: "PKCS1", # accepts PKCS1, OAEP_SHA1, OAEP_SHA256, OAEP_SHA512
    #       },
    #     },
    #     outgoing_key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cipher_text #=> String
    #   resp.key_arn #=> String
    #   resp.key_check_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/ReEncryptData AWS API Documentation
    #
    # @overload re_encrypt_data(params = {})
    # @param [Hash] params ({})
    def re_encrypt_data(params = {}, options = {})
      req = build_request(:re_encrypt_data, params)
      req.send_request(options)
    end

    # Translates encrypted PIN block from and to ISO 9564 formats 0,1,3,4.
    # For more information, see [Translate PIN data][1] in the *Amazon Web
    # Services Payment Cryptography User Guide*.
    #
    # PIN block translation involves changing the encrytion of PIN block
    # from one encryption key to another encryption key and changing PIN
    # block format from one to another without PIN block data leaving Amazon
    # Web Services Payment Cryptography. The encryption key transformation
    # can be from PEK (Pin Encryption Key) to BDK (Base Derivation Key) for
    # DUKPT or from BDK for DUKPT to PEK. Amazon Web Services Payment
    # Cryptography supports `TDES` and `AES` key derivation type for DUKPT
    # tranlations. You can use this operation for P2PE (Point to Point
    # Encryption) use cases where the encryption keys should change but the
    # processing system either does not need to, or is not permitted to,
    # decrypt the data.
    #
    # The allowed combinations of PIN block format translations are guided
    # by PCI. It is important to note that not all encrypted PIN block
    # formats (example, format 1) require PAN (Primary Account Number) as
    # input. And as such, PIN block format that requires PAN (example,
    # formats 0,3,4) cannot be translated to a format (format 1) that does
    # not require a PAN for generation.
    #
    # For information about valid keys for this operation, see
    # [Understanding key attributes][2] and [Key types for specific data
    # operations][3] in the *Amazon Web Services Payment Cryptography User
    # Guide*.
    #
    # <note markdown="1"> At this time, Amazon Web Services Payment Cryptography does not
    # support translations to PIN format 4.
    #
    #  </note>
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * GeneratePinData
    #
    # * VerifyPinData
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/translate-pin-data.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
    #
    # @option params [required, String] :encrypted_pin_block
    #   The encrypted PIN block data that Amazon Web Services Payment
    #   Cryptography translates.
    #
    # @option params [Types::DukptDerivationAttributes] :incoming_dukpt_attributes
    #   The attributes and values to use for incoming DUKPT encryption key for
    #   PIN block tranlation.
    #
    # @option params [required, String] :incoming_key_identifier
    #   The `keyARN` of the encryption key under which incoming PIN block data
    #   is encrypted. This key type can be PEK or BDK.
    #
    # @option params [required, Types::TranslationIsoFormats] :incoming_translation_attributes
    #   The format of the incoming PIN block data for tranlation within Amazon
    #   Web Services Payment Cryptography.
    #
    # @option params [Types::DukptDerivationAttributes] :outgoing_dukpt_attributes
    #   The attributes and values to use for outgoing DUKPT encryption key
    #   after PIN block translation.
    #
    # @option params [required, String] :outgoing_key_identifier
    #   The `keyARN` of the encryption key for encrypting outgoing PIN block
    #   data. This key type can be PEK or BDK.
    #
    # @option params [required, Types::TranslationIsoFormats] :outgoing_translation_attributes
    #   The format of the outgoing PIN block data after tranlation by Amazon
    #   Web Services Payment Cryptography.
    #
    # @return [Types::TranslatePinDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TranslatePinDataOutput#key_arn #key_arn} => String
    #   * {Types::TranslatePinDataOutput#key_check_value #key_check_value} => String
    #   * {Types::TranslatePinDataOutput#pin_block #pin_block} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.translate_pin_data({
    #     encrypted_pin_block: "HexLengthBetween16And32", # required
    #     incoming_dukpt_attributes: {
    #       dukpt_key_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #       dukpt_key_variant: "BIDIRECTIONAL", # accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #       key_serial_number: "HexLengthBetween10And24", # required
    #     },
    #     incoming_key_identifier: "KeyArnOrKeyAliasType", # required
    #     incoming_translation_attributes: { # required
    #       iso_format_0: {
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #       },
    #       iso_format_1: {
    #       },
    #       iso_format_3: {
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #       },
    #       iso_format_4: {
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #       },
    #     },
    #     outgoing_dukpt_attributes: {
    #       dukpt_key_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #       dukpt_key_variant: "BIDIRECTIONAL", # accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #       key_serial_number: "HexLengthBetween10And24", # required
    #     },
    #     outgoing_key_identifier: "KeyArnOrKeyAliasType", # required
    #     outgoing_translation_attributes: { # required
    #       iso_format_0: {
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #       },
    #       iso_format_1: {
    #       },
    #       iso_format_3: {
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #       },
    #       iso_format_4: {
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.key_arn #=> String
    #   resp.key_check_value #=> String
    #   resp.pin_block #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/TranslatePinData AWS API Documentation
    #
    # @overload translate_pin_data(params = {})
    # @param [Hash] params ({})
    def translate_pin_data(params = {}, options = {})
      req = build_request(:translate_pin_data, params)
      req.send_request(options)
    end

    # Verifies Authorization Request Cryptogram (ARQC) for a EMV chip
    # payment card authorization. For more information, see [Verify auth
    # request cryptogram][1] in the *Amazon Web Services Payment
    # Cryptography User Guide*.
    #
    # ARQC generation is done outside of Amazon Web Services Payment
    # Cryptography and is typically generated on a point of sale terminal
    # for an EMV chip card to obtain payment authorization during
    # transaction time. For ARQC verification, you must first import the
    # ARQC generated outside of Amazon Web Services Payment Cryptography by
    # calling [ImportKey][2]. This operation uses the imported ARQC and an
    # major encryption key (DUKPT) created by calling [CreateKey][3] to
    # either provide a boolean ARQC verification result or provide an APRC
    # (Authorization Response Cryptogram) response using Method 1 or Method
    # 2. The `ARPC_METHOD_1` uses `AuthResponseCode` to generate ARPC and
    # `ARPC_METHOD_2` uses `CardStatusUpdate` to generate ARPC.
    #
    # For information about valid keys for this operation, see
    # [Understanding key attributes][4] and [Key types for specific data
    # operations][5] in the *Amazon Web Services Payment Cryptography User
    # Guide*.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * VerifyCardValidationData
    #
    # * VerifyPinData
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/data-operations.verifyauthrequestcryptogram.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [5]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
    #
    # @option params [required, String] :auth_request_cryptogram
    #   The auth request cryptogram imported into Amazon Web Services Payment
    #   Cryptography for ARQC verification using a major encryption key and
    #   transaction data.
    #
    # @option params [Types::CryptogramAuthResponse] :auth_response_attributes
    #   The attributes and values for auth request cryptogram verification.
    #   These parameters are required in case using ARPC Method 1 or Method 2
    #   for ARQC verification.
    #
    # @option params [required, String] :key_identifier
    #   The `keyARN` of the major encryption key that Amazon Web Services
    #   Payment Cryptography uses for ARQC verification.
    #
    # @option params [required, String] :major_key_derivation_mode
    #   The method to use when deriving the major encryption key for ARQC
    #   verification within Amazon Web Services Payment Cryptography. The same
    #   key derivation mode was used for ARQC generation outside of Amazon Web
    #   Services Payment Cryptography.
    #
    # @option params [required, Types::SessionKeyDerivation] :session_key_derivation_attributes
    #   The attributes and values to use for deriving a session key for ARQC
    #   verification within Amazon Web Services Payment Cryptography. The same
    #   attributes were used for ARQC generation outside of Amazon Web
    #   Services Payment Cryptography.
    #
    # @option params [required, String] :transaction_data
    #   The transaction data that Amazon Web Services Payment Cryptography
    #   uses for ARQC verification. The same transaction is used for ARQC
    #   generation outside of Amazon Web Services Payment Cryptography.
    #
    # @return [Types::VerifyAuthRequestCryptogramOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifyAuthRequestCryptogramOutput#auth_response_value #auth_response_value} => String
    #   * {Types::VerifyAuthRequestCryptogramOutput#key_arn #key_arn} => String
    #   * {Types::VerifyAuthRequestCryptogramOutput#key_check_value #key_check_value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_auth_request_cryptogram({
    #     auth_request_cryptogram: "HexLengthEquals16", # required
    #     auth_response_attributes: {
    #       arpc_method_1: {
    #         auth_response_code: "HexLengthEquals4", # required
    #       },
    #       arpc_method_2: {
    #         card_status_update: "HexLengthEquals8", # required
    #         proprietary_authentication_data: "HexLengthBetween1And16",
    #       },
    #     },
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     major_key_derivation_mode: "EMV_OPTION_A", # required, accepts EMV_OPTION_A, EMV_OPTION_B
    #     session_key_derivation_attributes: { # required
    #       amex: {
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #       },
    #       emv_2000: {
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #       },
    #       emv_common: {
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #       },
    #       mastercard: {
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #         unpredictable_number: "HexLengthBetween2And8", # required
    #       },
    #       visa: {
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #       },
    #     },
    #     transaction_data: "HexLengthBetween2And1024", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auth_response_value #=> String
    #   resp.key_arn #=> String
    #   resp.key_check_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyAuthRequestCryptogram AWS API Documentation
    #
    # @overload verify_auth_request_cryptogram(params = {})
    # @param [Hash] params ({})
    def verify_auth_request_cryptogram(params = {}, options = {})
      req = build_request(:verify_auth_request_cryptogram, params)
      req.send_request(options)
    end

    # Verifies card-related validation data using algorithms such as Card
    # Verification Values (CVV/CVV2), Dynamic Card Verification Values
    # (dCVV/dCVV2) and Card Security Codes (CSC). For more information, see
    # [Verify card data][1] in the *Amazon Web Services Payment Cryptography
    # User Guide*.
    #
    # This operation validates the CVV or CSC codes that is printed on a
    # payment credit or debit card during card payment transaction. The
    # input values are typically provided as part of an inbound transaction
    # to an issuer or supporting platform partner. Amazon Web Services
    # Payment Cryptography uses CVV or CSC, PAN (Primary Account Number) and
    # expiration date of the card to check its validity during transaction
    # processing. In this operation, the CVK (Card Verification Key)
    # encryption key for use with card data verification is same as the one
    # in used for GenerateCardValidationData.
    #
    # For information about valid keys for this operation, see
    # [Understanding key attributes][2] and [Key types for specific data
    # operations][3] in the *Amazon Web Services Payment Cryptography User
    # Guide*.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * GenerateCardValidationData
    #
    # * VerifyAuthRequestCryptogram
    #
    # * VerifyPinData
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-card-data.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
    #
    # @option params [required, String] :key_identifier
    #   The `keyARN` of the CVK encryption key that Amazon Web Services
    #   Payment Cryptography uses to verify card data.
    #
    # @option params [required, String] :primary_account_number
    #   The Primary Account Number (PAN), a unique identifier for a payment
    #   credit or debit card that associates the card with a specific account
    #   holder.
    #
    # @option params [required, String] :validation_data
    #   The CVV or CSC value for use for card data verification within Amazon
    #   Web Services Payment Cryptography.
    #
    # @option params [required, Types::CardVerificationAttributes] :verification_attributes
    #   The algorithm to use for verification of card data within Amazon Web
    #   Services Payment Cryptography.
    #
    # @return [Types::VerifyCardValidationDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifyCardValidationDataOutput#key_arn #key_arn} => String
    #   * {Types::VerifyCardValidationDataOutput#key_check_value #key_check_value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_card_validation_data({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     primary_account_number: "NumberLengthBetween12And19", # required
    #     validation_data: "NumberLengthBetween3And5", # required
    #     verification_attributes: { # required
    #       amex_card_security_code_version_1: {
    #         card_expiry_date: "NumberLengthEquals4", # required
    #       },
    #       amex_card_security_code_version_2: {
    #         card_expiry_date: "NumberLengthEquals4", # required
    #         service_code: "NumberLengthEquals3", # required
    #       },
    #       card_holder_verification_value: {
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         unpredictable_number: "HexLengthBetween2And8", # required
    #       },
    #       card_verification_value_1: {
    #         card_expiry_date: "NumberLengthEquals4", # required
    #         service_code: "NumberLengthEquals3", # required
    #       },
    #       card_verification_value_2: {
    #         card_expiry_date: "NumberLengthEquals4", # required
    #       },
    #       discover_dynamic_card_verification_code: {
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         card_expiry_date: "NumberLengthEquals4", # required
    #         unpredictable_number: "HexLengthBetween2And8", # required
    #       },
    #       dynamic_card_verification_code: {
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         track_data: "HexLengthBetween2And160", # required
    #         unpredictable_number: "HexLengthBetween2And8", # required
    #       },
    #       dynamic_card_verification_value: {
    #         application_transaction_counter: "HexLengthBetween2And4", # required
    #         card_expiry_date: "NumberLengthEquals4", # required
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         service_code: "NumberLengthEquals3", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.key_arn #=> String
    #   resp.key_check_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyCardValidationData AWS API Documentation
    #
    # @overload verify_card_validation_data(params = {})
    # @param [Hash] params ({})
    def verify_card_validation_data(params = {}, options = {})
      req = build_request(:verify_card_validation_data, params)
      req.send_request(options)
    end

    # Verifies a Message Authentication Code (MAC).
    #
    # You can use this operation when keys won't be shared but mutual data
    # is present on both ends for validation. In this case, known data
    # values are used to generate a MAC on both ends for verification
    # without sending or receiving data in ciphertext or plaintext. You can
    # use this operation to verify a DUPKT, HMAC or EMV MAC by setting
    # generation attributes and algorithm to the associated values. Use the
    # same encryption key for MAC verification as you use for GenerateMac.
    #
    # For information about valid keys for this operation, see
    # [Understanding key attributes][1] and [Key types for specific data
    # operations][2] in the *Amazon Web Services Payment Cryptography User
    # Guide*.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * GenerateMac
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
    #
    # @option params [required, String] :key_identifier
    #   The `keyARN` of the encryption key that Amazon Web Services Payment
    #   Cryptography uses to verify MAC data.
    #
    # @option params [required, String] :mac
    #   The MAC being verified.
    #
    # @option params [Integer] :mac_length
    #   The length of the MAC.
    #
    # @option params [required, String] :message_data
    #   The data on for which MAC is under verification.
    #
    # @option params [required, Types::MacAttributes] :verification_attributes
    #   The attributes and data values to use for MAC verification within
    #   Amazon Web Services Payment Cryptography.
    #
    # @return [Types::VerifyMacOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifyMacOutput#key_arn #key_arn} => String
    #   * {Types::VerifyMacOutput#key_check_value #key_check_value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_mac({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     mac: "HexLengthBetween4And128", # required
    #     mac_length: 1,
    #     message_data: "HexLengthBetween2And4096", # required
    #     verification_attributes: { # required
    #       algorithm: "ISO9797_ALGORITHM1", # accepts ISO9797_ALGORITHM1, ISO9797_ALGORITHM3, CMAC, HMAC_SHA224, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512
    #       dukpt_cmac: {
    #         dukpt_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #         dukpt_key_variant: "BIDIRECTIONAL", # required, accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #         key_serial_number: "HexLengthBetween10And24", # required
    #       },
    #       dukpt_iso_9797_algorithm_1: {
    #         dukpt_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #         dukpt_key_variant: "BIDIRECTIONAL", # required, accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #         key_serial_number: "HexLengthBetween10And24", # required
    #       },
    #       dukpt_iso_9797_algorithm_3: {
    #         dukpt_derivation_type: "TDES_2KEY", # accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #         dukpt_key_variant: "BIDIRECTIONAL", # required, accepts BIDIRECTIONAL, REQUEST, RESPONSE
    #         key_serial_number: "HexLengthBetween10And24", # required
    #       },
    #       emv_mac: {
    #         major_key_derivation_mode: "EMV_OPTION_A", # required, accepts EMV_OPTION_A, EMV_OPTION_B
    #         pan_sequence_number: "HexLengthEquals2", # required
    #         primary_account_number: "NumberLengthBetween12And19", # required
    #         session_key_derivation_mode: "EMV_COMMON_SESSION_KEY", # required, accepts EMV_COMMON_SESSION_KEY, EMV2000, AMEX, MASTERCARD_SESSION_KEY, VISA
    #         session_key_derivation_value: { # required
    #           application_cryptogram: "HexLengthEquals16",
    #           application_transaction_counter: "HexLengthBetween2And4",
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.key_arn #=> String
    #   resp.key_check_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyMac AWS API Documentation
    #
    # @overload verify_mac(params = {})
    # @param [Hash] params ({})
    def verify_mac(params = {}, options = {})
      req = build_request(:verify_mac, params)
      req.send_request(options)
    end

    # Verifies pin-related data such as PIN and PIN Offset using algorithms
    # including VISA PVV and IBM3624. For more information, see [Verify PIN
    # data][1] in the *Amazon Web Services Payment Cryptography User Guide*.
    #
    # This operation verifies PIN data for user payment card. A card holder
    # PIN data is never transmitted in clear to or from Amazon Web Services
    # Payment Cryptography. This operation uses PIN Verification Key (PVK)
    # for PIN or PIN Offset generation and then encrypts it using PIN
    # Encryption Key (PEK) to create an `EncryptedPinBlock` for transmission
    # from Amazon Web Services Payment Cryptography.
    #
    # For information about valid keys for this operation, see
    # [Understanding key attributes][2] and [Key types for specific data
    # operations][3] in the *Amazon Web Services Payment Cryptography User
    # Guide*.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * GeneratePinData
    #
    # * TranslatePinData
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-pin-data.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html
    #
    # @option params [Types::DukptAttributes] :dukpt_attributes
    #   The attributes and values for the DUKPT encrypted PIN block data.
    #
    # @option params [required, String] :encrypted_pin_block
    #   The encrypted PIN block data that Amazon Web Services Payment
    #   Cryptography verifies.
    #
    # @option params [required, String] :encryption_key_identifier
    #   The `keyARN` of the encryption key under which the PIN block data is
    #   encrypted. This key type can be PEK or BDK.
    #
    # @option params [required, String] :pin_block_format
    #   The PIN encoding format for pin data generation as specified in ISO
    #   9564. Amazon Web Services Payment Cryptography supports `ISO_Format_0`
    #   and `ISO_Format_3`.
    #
    #   The `ISO_Format_0` PIN block format is equivalent to the ANSI X9.8,
    #   VISA-1, and ECI-1 PIN block formats. It is similar to a VISA-4 PIN
    #   block format. It supports a PIN from 4 to 12 digits in length.
    #
    #   The `ISO_Format_3` PIN block format is the same as `ISO_Format_0`
    #   except that the fill digits are random values from 10 to 15.
    #
    # @option params [Integer] :pin_data_length
    #   The length of PIN being verified.
    #
    # @option params [required, String] :primary_account_number
    #   The Primary Account Number (PAN), a unique identifier for a payment
    #   credit or debit card that associates the card with a specific account
    #   holder.
    #
    # @option params [required, Types::PinVerificationAttributes] :verification_attributes
    #   The attributes and values for PIN data verification.
    #
    # @option params [required, String] :verification_key_identifier
    #   The `keyARN` of the PIN verification key.
    #
    # @return [Types::VerifyPinDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifyPinDataOutput#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::VerifyPinDataOutput#encryption_key_check_value #encryption_key_check_value} => String
    #   * {Types::VerifyPinDataOutput#verification_key_arn #verification_key_arn} => String
    #   * {Types::VerifyPinDataOutput#verification_key_check_value #verification_key_check_value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_pin_data({
    #     dukpt_attributes: {
    #       dukpt_derivation_type: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256
    #       key_serial_number: "HexLengthBetween10And24", # required
    #     },
    #     encrypted_pin_block: "HexLengthBetween16And32", # required
    #     encryption_key_identifier: "KeyArnOrKeyAliasType", # required
    #     pin_block_format: "ISO_FORMAT_0", # required, accepts ISO_FORMAT_0, ISO_FORMAT_3
    #     pin_data_length: 1,
    #     primary_account_number: "NumberLengthBetween12And19", # required
    #     verification_attributes: { # required
    #       ibm_3624_pin: {
    #         decimalization_table: "NumberLengthEquals16", # required
    #         pin_offset: "NumberLengthBetween4And12", # required
    #         pin_validation_data: "NumberLengthBetween4And16", # required
    #         pin_validation_data_pad_character: "HexLengthEquals1", # required
    #       },
    #       visa_pin: {
    #         pin_verification_key_index: 1, # required
    #         verification_value: "NumberLengthBetween4And12", # required
    #       },
    #     },
    #     verification_key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.encryption_key_arn #=> String
    #   resp.encryption_key_check_value #=> String
    #   resp.verification_key_arn #=> String
    #   resp.verification_key_check_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyPinData AWS API Documentation
    #
    # @overload verify_pin_data(params = {})
    # @param [Hash] params ({})
    def verify_pin_data(params = {}, options = {})
      req = build_request(:verify_pin_data, params)
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
      context[:gem_name] = 'aws-sdk-paymentcryptographydata'
      context[:gem_version] = '1.4.0'
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
