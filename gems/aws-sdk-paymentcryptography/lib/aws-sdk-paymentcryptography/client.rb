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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:paymentcryptography)

module Aws::PaymentCryptography
  # An API client for PaymentCryptography.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PaymentCryptography::Client.new(
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

    @identifier = :paymentcryptography

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::PaymentCryptography::Plugins::Endpoints)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #   @option options [Aws::PaymentCryptography::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::PaymentCryptography::EndpointParameters`
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

    # Creates an *alias*, or a friendly name, for an Amazon Web Services
    # Payment Cryptography key. You can use an alias to identify a key in
    # the console and when you call cryptographic operations such as
    # [EncryptData][1] or [DecryptData][2].
    #
    # You can associate the alias with any key in the same Amazon Web
    # Services Region. Each alias is associated with only one key at a time,
    # but a key can have multiple aliases. You can't create an alias
    # without a key. The alias must be unique in the account and Amazon Web
    # Services Region, but you can create another alias with the same name
    # in a different Amazon Web Services Region.
    #
    # To change the key that's associated with the alias, call UpdateAlias.
    # To delete the alias, call DeleteAlias. These operations don't affect
    # the underlying key. To get the alias that you created, call
    # ListAliases.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * DeleteAlias
    #
    # * GetAlias
    #
    # * ListAliases
    #
    # * UpdateAlias
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/API_EncryptData.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/API_DecryptData.html
    #
    # @option params [required, String] :alias_name
    #   A friendly name that you can use to refer a key. An alias must begin
    #   with `alias/` followed by a name, for example `alias/ExampleAlias`. It
    #   can contain only alphanumeric characters, forward slashes (/),
    #   underscores (\_), and dashes (-).
    #
    #   Don't include confidential or sensitive information in this field.
    #   This field may be displayed in plaintext in CloudTrail logs and other
    #   output.
    #
    # @option params [String] :key_arn
    #   The `KeyARN` of the key to associate with the alias.
    #
    # @return [Types::CreateAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias({
    #     alias_name: "AliasName", # required
    #     key_arn: "KeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.alias.alias_name #=> String
    #   resp.alias.key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/CreateAlias AWS API Documentation
    #
    # @overload create_alias(params = {})
    # @param [Hash] params ({})
    def create_alias(params = {}, options = {})
      req = build_request(:create_alias, params)
      req.send_request(options)
    end

    # Creates an Amazon Web Services Payment Cryptography key, a logical
    # representation of a cryptographic key, that is unique in your account
    # and Amazon Web Services Region. You use keys for cryptographic
    # functions such as encryption and decryption.
    #
    # In addition to the key material used in cryptographic operations, an
    # Amazon Web Services Payment Cryptography key includes metadata such as
    # the key ARN, key usage, key origin, creation date, description, and
    # key state.
    #
    # When you create a key, you specify both immutable and mutable data
    # about the key. The immutable data contains key attributes that defines
    # the scope and cryptographic operations that you can perform using the
    # key, for example key class (example: `SYMMETRIC_KEY`), key algorithm
    # (example: `TDES_2KEY`), key usage (example:
    # `TR31_P0_PIN_ENCRYPTION_KEY`) and key modes of use (example:
    # `Encrypt`). For information about valid combinations of key
    # attributes, see [Understanding key attributes][1] in the *Amazon Web
    # Services Payment Cryptography User Guide*. The mutable data contained
    # within a key includes usage timestamp and key deletion timestamp and
    # can be modified after creation.
    #
    # Amazon Web Services Payment Cryptography binds key attributes to keys
    # using key blocks when you store or export them. Amazon Web Services
    # Payment Cryptography stores the key contents wrapped and never stores
    # or transmits them in the clear.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * DeleteKey
    #
    # * GetKey
    #
    # * ListKeys
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    #
    # @option params [Boolean] :enabled
    #   Specifies whether to enable the key. If the key is enabled, it is
    #   activated for use within the service. If the key not enabled, then it
    #   is created but not activated. The default value is enabled.
    #
    # @option params [required, Boolean] :exportable
    #   Specifies whether the key is exportable from the service.
    #
    # @option params [required, Types::KeyAttributes] :key_attributes
    #   The role of the key, the algorithm it supports, and the cryptographic
    #   operations allowed with the key. This data is immutable after the key
    #   is created.
    #
    # @option params [String] :key_check_value_algorithm
    #   The algorithm that Amazon Web Services Payment Cryptography uses to
    #   calculate the key check value (KCV) for DES and AES keys.
    #
    #   For DES key, the KCV is computed by encrypting 8 bytes, each with
    #   value '00', with the key to be checked and retaining the 3 highest
    #   order bytes of the encrypted result. For AES key, the KCV is computed
    #   by encrypting 8 bytes, each with value '01', with the key to be
    #   checked and retaining the 3 highest order bytes of the encrypted
    #   result.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the key. Each tag consists of a tag key and a
    #   tag value. Both the tag key and the tag value are required, but the
    #   tag value can be an empty (null) string. You can't have more than one
    #   tag on an Amazon Web Services Payment Cryptography key with the same
    #   tag key.
    #
    #   To use this parameter, you must have `TagResource` permission.
    #
    #   Don't include confidential or sensitive information in this field.
    #   This field may be displayed in plaintext in CloudTrail logs and other
    #   output.
    #
    #   <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    #   can allow or deny permission to the key.
    #
    #    </note>
    #
    # @return [Types::CreateKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeyOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key({
    #     enabled: false,
    #     exportable: false, # required
    #     key_attributes: { # required
    #       key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, RSA_2048, RSA_3072, RSA_4096
    #       key_class: "SYMMETRIC_KEY", # required, accepts SYMMETRIC_KEY, ASYMMETRIC_KEY_PAIR, PRIVATE_KEY, PUBLIC_KEY
    #       key_modes_of_use: { # required
    #         decrypt: false,
    #         derive_key: false,
    #         encrypt: false,
    #         generate: false,
    #         no_restrictions: false,
    #         sign: false,
    #         unwrap: false,
    #         verify: false,
    #         wrap: false,
    #       },
    #       key_usage: "TR31_B0_BASE_DERIVATION_KEY", # required, accepts TR31_B0_BASE_DERIVATION_KEY, TR31_C0_CARD_VERIFICATION_KEY, TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY, TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION, TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS, TR31_E1_EMV_MKEY_CONFIDENTIALITY, TR31_E2_EMV_MKEY_INTEGRITY, TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS, TR31_E5_EMV_MKEY_CARD_PERSONALIZATION, TR31_E6_EMV_MKEY_OTHER, TR31_K0_KEY_ENCRYPTION_KEY, TR31_K1_KEY_BLOCK_PROTECTION_KEY, TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT, TR31_M3_ISO_9797_3_MAC_KEY, TR31_M6_ISO_9797_5_CMAC_KEY, TR31_M7_HMAC_KEY, TR31_P0_PIN_ENCRYPTION_KEY, TR31_P1_PIN_GENERATION_KEY, TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE, TR31_V1_IBM3624_PIN_VERIFICATION_KEY, TR31_V2_VISA_PIN_VERIFICATION_KEY, TR31_K2_TR34_ASYMMETRIC_KEY
    #     },
    #     key_check_value_algorithm: "CMAC", # accepts CMAC, ANSI_X9_24
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.key.create_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "RSA_2048", "RSA_3072", "RSA_4096"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/CreateKey AWS API Documentation
    #
    # @overload create_key(params = {})
    # @param [Hash] params ({})
    def create_key(params = {}, options = {})
      req = build_request(:create_key, params)
      req.send_request(options)
    end

    # Deletes the alias, but doesn't affect the underlying key.
    #
    # Each key can have multiple aliases. To get the aliases of all keys,
    # use the ListAliases operation. To change the alias of a key, first use
    # DeleteAlias to delete the current alias and then use CreateAlias to
    # create a new alias. To associate an existing alias with a different
    # key, call UpdateAlias.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * CreateAlias
    #
    # * GetAlias
    #
    # * ListAliases
    #
    # * UpdateAlias
    #
    # @option params [required, String] :alias_name
    #   A friendly name that you can use to refer Amazon Web Services Payment
    #   Cryptography key. This value must begin with `alias/` followed by a
    #   name, such as `alias/ExampleAlias`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias({
    #     alias_name: "AliasName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/DeleteAlias AWS API Documentation
    #
    # @overload delete_alias(params = {})
    # @param [Hash] params ({})
    def delete_alias(params = {}, options = {})
      req = build_request(:delete_alias, params)
      req.send_request(options)
    end

    # Deletes the key material and all metadata associated with Amazon Web
    # Services Payment Cryptography key.
    #
    # Key deletion is irreversible. After a key is deleted, you can't
    # perform cryptographic operations using the key. For example, you
    # can't decrypt data that was encrypted by a deleted Amazon Web
    # Services Payment Cryptography key, and the data may become
    # unrecoverable. Because key deletion is destructive, Amazon Web
    # Services Payment Cryptography has a safety mechanism to prevent
    # accidental deletion of a key. When you call this operation, Amazon Web
    # Services Payment Cryptography disables the specified key but doesn't
    # delete it until after a waiting period. The default waiting period is
    # 7 days. To set a different waiting period, set `DeleteKeyInDays`.
    # During the waiting period, the `KeyState` is `DELETE_PENDING`. After
    # the key is deleted, the `KeyState` is `DELETE_COMPLETE`.
    #
    # If you delete key material, you can use ImportKey to reimport the same
    # key material into the Amazon Web Services Payment Cryptography key.
    #
    # You should delete a key only when you are sure that you don't need to
    # use it anymore and no other parties are utilizing this key. If you
    # aren't sure, consider deactivating it instead by calling
    # StopKeyUsage.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * RestoreKey
    #
    # * StartKeyUsage
    #
    # * StopKeyUsage
    #
    # @option params [Integer] :delete_key_in_days
    #   The waiting period for key deletion. The default value is seven days.
    #
    # @option params [required, String] :key_identifier
    #   The `KeyARN` of the key that is scheduled for deletion.
    #
    # @return [Types::DeleteKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteKeyOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_key({
    #     delete_key_in_days: 1,
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key.create_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "RSA_2048", "RSA_3072", "RSA_4096"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/DeleteKey AWS API Documentation
    #
    # @overload delete_key(params = {})
    # @param [Hash] params ({})
    def delete_key(params = {}, options = {})
      req = build_request(:delete_key, params)
      req.send_request(options)
    end

    # Exports a key from Amazon Web Services Payment Cryptography using
    # either ANSI X9 TR-34 or TR-31 key export standard.
    #
    # Amazon Web Services Payment Cryptography simplifies main or root key
    # exchange process by eliminating the need of a paper-based key exchange
    # process. It takes a modern and secure approach based of the ANSI X9
    # TR-34 key exchange standard.
    #
    # You can use `ExportKey` to export main or root keys such as KEK (Key
    # Encryption Key), using asymmetric key exchange technique following
    # ANSI X9 TR-34 standard. The ANSI X9 TR-34 standard uses asymmetric
    # keys to establishes bi-directional trust between the two parties
    # exchanging keys. After which you can export working keys using the
    # ANSI X9 TR-31 symmetric key exchange standard as mandated by PCI PIN.
    # Using this operation, you can share your Amazon Web Services Payment
    # Cryptography generated keys with other service partners to perform
    # cryptographic operations outside of Amazon Web Services Payment
    # Cryptography
    #
    # **TR-34 key export**
    #
    # Amazon Web Services Payment Cryptography uses TR-34 asymmetric key
    # exchange standard to export main keys such as KEK. In TR-34
    # terminology, the sending party of the key is called Key Distribution
    # Host (KDH) and the receiving party of the key is called Key Receiving
    # Host (KRH). In key export process, KDH is Amazon Web Services Payment
    # Cryptography which initiates key export. KRH is the user receiving the
    # key. Before you initiate TR-34 key export, you must obtain an export
    # token by calling GetParametersForExport. This operation also returns
    # the signing key certificate that KDH uses to sign the wrapped key to
    # generate a TR-34 wrapped key block. The export token expires after 7
    # days.
    #
    # Set the following parameters:
    #
    # CertificateAuthorityPublicKeyIdentifier
    #
    # : The `KeyARN` of the certificate chain that will sign the wrapping
    #   key certificate. This must exist within Amazon Web Services Payment
    #   Cryptography before you initiate TR-34 key export. If it does not
    #   exist, you can import it by calling ImportKey for
    #   `RootCertificatePublicKey`.
    #
    # ExportToken
    #
    # : Obtained from KDH by calling GetParametersForExport.
    #
    # WrappingKeyCertificate
    #
    # : Amazon Web Services Payment Cryptography uses this to wrap the key
    #   under export.
    #
    # When this operation is successful, Amazon Web Services Payment
    # Cryptography returns the TR-34 wrapped key block.
    #
    # **TR-31 key export**
    #
    # Amazon Web Services Payment Cryptography uses TR-31 symmetric key
    # exchange standard to export working keys. In TR-31, you must use a
    # main key such as KEK to encrypt or wrap the key under export. To
    # establish a KEK, you can use CreateKey or ImportKey. When this
    # operation is successful, Amazon Web Services Payment Cryptography
    # returns a TR-31 wrapped key block.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * GetParametersForExport
    #
    # * ImportKey
    #
    # @option params [required, String] :export_key_identifier
    #   The `KeyARN` of the key under export from Amazon Web Services Payment
    #   Cryptography.
    #
    # @option params [required, Types::ExportKeyMaterial] :key_material
    #   The key block format type, for example, TR-34 or TR-31, to use during
    #   key material export.
    #
    # @return [Types::ExportKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportKeyOutput#wrapped_key #wrapped_key} => Types::WrappedKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_key({
    #     export_key_identifier: "KeyArnOrKeyAliasType", # required
    #     key_material: { # required
    #       tr_31_key_block: {
    #         wrapping_key_identifier: "KeyArnOrKeyAliasType", # required
    #       },
    #       tr_34_key_block: {
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         export_token: "ExportTokenId", # required
    #         key_block_format: "X9_TR34_2012", # required, accepts X9_TR34_2012
    #         random_nonce: "HexLength16",
    #         wrapping_key_certificate: "CertificateType", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.wrapped_key.key_material #=> String
    #   resp.wrapped_key.wrapped_key_material_format #=> String, one of "KEY_CRYPTOGRAM", "TR31_KEY_BLOCK", "TR34_KEY_BLOCK"
    #   resp.wrapped_key.wrapping_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportKey AWS API Documentation
    #
    # @overload export_key(params = {})
    # @param [Hash] params ({})
    def export_key(params = {}, options = {})
      req = build_request(:export_key, params)
      req.send_request(options)
    end

    # Gets the Amazon Web Services Payment Cryptography key associated with
    # the alias.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * CreateAlias
    #
    # * DeleteAlias
    #
    # * ListAliases
    #
    # * UpdateAlias
    #
    # @option params [required, String] :alias_name
    #   The alias of the Amazon Web Services Payment Cryptography key.
    #
    # @return [Types::GetAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_alias({
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alias.alias_name #=> String
    #   resp.alias.key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetAlias AWS API Documentation
    #
    # @overload get_alias(params = {})
    # @param [Hash] params ({})
    def get_alias(params = {}, options = {})
      req = build_request(:get_alias, params)
      req.send_request(options)
    end

    # Gets the key material for an Amazon Web Services Payment Cryptography
    # key, including the immutable and mutable data specified when the key
    # was created.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * CreateKey
    #
    # * DeleteKey
    #
    # * ListKeys
    #
    # @option params [required, String] :key_identifier
    #   The `KeyARN` of the Amazon Web Services Payment Cryptography key.
    #
    # @return [Types::GetKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key.create_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "RSA_2048", "RSA_3072", "RSA_4096"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetKey AWS API Documentation
    #
    # @overload get_key(params = {})
    # @param [Hash] params ({})
    def get_key(params = {}, options = {})
      req = build_request(:get_key, params)
      req.send_request(options)
    end

    # Gets the export token and the signing key certificate to initiate a
    # TR-34 key export from Amazon Web Services Payment Cryptography.
    #
    # The signing key certificate signs the wrapped key under export within
    # the TR-34 key payload. The export token and signing key certificate
    # must be in place and operational before calling ExportKey. The export
    # token expires in 7 days. You can use the same export token to export
    # multiple keys from your service account.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * ExportKey
    #
    # * GetParametersForImport
    #
    # @option params [required, String] :key_material_type
    #   The key block format type (for example, TR-34 or TR-31) to use during
    #   key material export. Export token is only required for a TR-34 key
    #   export, `TR34_KEY_BLOCK`. Export token is not required for TR-31 key
    #   export.
    #
    # @option params [required, String] :signing_key_algorithm
    #   The signing key algorithm to generate a signing key certificate. This
    #   certificate signs the wrapped key under export within the TR-34 key
    #   block cryptogram. `RSA_2048` is the only signing key algorithm
    #   allowed.
    #
    # @return [Types::GetParametersForExportOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParametersForExportOutput#export_token #export_token} => String
    #   * {Types::GetParametersForExportOutput#parameters_valid_until_timestamp #parameters_valid_until_timestamp} => Time
    #   * {Types::GetParametersForExportOutput#signing_key_algorithm #signing_key_algorithm} => String
    #   * {Types::GetParametersForExportOutput#signing_key_certificate #signing_key_certificate} => String
    #   * {Types::GetParametersForExportOutput#signing_key_certificate_chain #signing_key_certificate_chain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameters_for_export({
    #     key_material_type: "TR34_KEY_BLOCK", # required, accepts TR34_KEY_BLOCK, TR31_KEY_BLOCK, ROOT_PUBLIC_KEY_CERTIFICATE, TRUSTED_PUBLIC_KEY_CERTIFICATE
    #     signing_key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, RSA_2048, RSA_3072, RSA_4096
    #   })
    #
    # @example Response structure
    #
    #   resp.export_token #=> String
    #   resp.parameters_valid_until_timestamp #=> Time
    #   resp.signing_key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "RSA_2048", "RSA_3072", "RSA_4096"
    #   resp.signing_key_certificate #=> String
    #   resp.signing_key_certificate_chain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetParametersForExport AWS API Documentation
    #
    # @overload get_parameters_for_export(params = {})
    # @param [Hash] params ({})
    def get_parameters_for_export(params = {}, options = {})
      req = build_request(:get_parameters_for_export, params)
      req.send_request(options)
    end

    # Gets the import token and the wrapping key certificate to initiate a
    # TR-34 key import into Amazon Web Services Payment Cryptography.
    #
    # The wrapping key certificate wraps the key under import within the
    # TR-34 key payload. The import token and wrapping key certificate must
    # be in place and operational before calling ImportKey. The import token
    # expires in 7 days. The same import token can be used to import
    # multiple keys into your service account.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * GetParametersForExport
    #
    # * ImportKey
    #
    # @option params [required, String] :key_material_type
    #   The key block format type such as TR-34 or TR-31 to use during key
    #   material import. Import token is only required for TR-34 key import
    #   `TR34_KEY_BLOCK`. Import token is not required for TR-31 key import.
    #
    # @option params [required, String] :wrapping_key_algorithm
    #   The wrapping key algorithm to generate a wrapping key certificate.
    #   This certificate wraps the key under import within the TR-34 key block
    #   cryptogram. `RSA_2048` is the only wrapping key algorithm allowed.
    #
    # @return [Types::GetParametersForImportOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParametersForImportOutput#import_token #import_token} => String
    #   * {Types::GetParametersForImportOutput#parameters_valid_until_timestamp #parameters_valid_until_timestamp} => Time
    #   * {Types::GetParametersForImportOutput#wrapping_key_algorithm #wrapping_key_algorithm} => String
    #   * {Types::GetParametersForImportOutput#wrapping_key_certificate #wrapping_key_certificate} => String
    #   * {Types::GetParametersForImportOutput#wrapping_key_certificate_chain #wrapping_key_certificate_chain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameters_for_import({
    #     key_material_type: "TR34_KEY_BLOCK", # required, accepts TR34_KEY_BLOCK, TR31_KEY_BLOCK, ROOT_PUBLIC_KEY_CERTIFICATE, TRUSTED_PUBLIC_KEY_CERTIFICATE
    #     wrapping_key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, RSA_2048, RSA_3072, RSA_4096
    #   })
    #
    # @example Response structure
    #
    #   resp.import_token #=> String
    #   resp.parameters_valid_until_timestamp #=> Time
    #   resp.wrapping_key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "RSA_2048", "RSA_3072", "RSA_4096"
    #   resp.wrapping_key_certificate #=> String
    #   resp.wrapping_key_certificate_chain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetParametersForImport AWS API Documentation
    #
    # @overload get_parameters_for_import(params = {})
    # @param [Hash] params ({})
    def get_parameters_for_import(params = {}, options = {})
      req = build_request(:get_parameters_for_import, params)
      req.send_request(options)
    end

    # Gets the public key certificate of the asymmetric key pair that exists
    # within Amazon Web Services Payment Cryptography.
    #
    # Unlike the private key of an asymmetric key, which never leaves Amazon
    # Web Services Payment Cryptography unencrypted, callers with
    # `GetPublicKeyCertificate` permission can download the public key
    # certificate of the asymmetric key. You can share the public key
    # certificate to allow others to encrypt messages and verify signatures
    # outside of Amazon Web Services Payment Cryptography
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # @option params [required, String] :key_identifier
    #   The `KeyARN` of the asymmetric key pair.
    #
    # @return [Types::GetPublicKeyCertificateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPublicKeyCertificateOutput#key_certificate #key_certificate} => String
    #   * {Types::GetPublicKeyCertificateOutput#key_certificate_chain #key_certificate_chain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_key_certificate({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_certificate #=> String
    #   resp.key_certificate_chain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetPublicKeyCertificate AWS API Documentation
    #
    # @overload get_public_key_certificate(params = {})
    # @param [Hash] params ({})
    def get_public_key_certificate(params = {}, options = {})
      req = build_request(:get_public_key_certificate, params)
      req.send_request(options)
    end

    # Imports keys and public key certificates into Amazon Web Services
    # Payment Cryptography.
    #
    # Amazon Web Services Payment Cryptography simplifies main or root key
    # exchange process by eliminating the need of a paper-based key exchange
    # process. It takes a modern and secure approach based of the ANSI X9
    # TR-34 key exchange standard.
    #
    # You can use `ImportKey` to import main or root keys such as KEK (Key
    # Encryption Key) using asymmetric key exchange technique following the
    # ANSI X9 TR-34 standard. The ANSI X9 TR-34 standard uses asymmetric
    # keys to establishes bi-directional trust between the two parties
    # exchanging keys.
    #
    # After you have imported a main or root key, you can import working
    # keys to perform various cryptographic operations within Amazon Web
    # Services Payment Cryptography using the ANSI X9 TR-31 symmetric key
    # exchange standard as mandated by PCI PIN.
    #
    # You can also import a *root public key certificate*, a self-signed
    # certificate used to sign other public key certificates, or a *trusted
    # public key certificate* under an already established root public key
    # certificate.
    #
    # **To import a public root key certificate**
    #
    # Using this operation, you can import the public component (in PEM
    # cerificate format) of your private root key. You can use the imported
    # public root key certificate for digital signatures, for example
    # signing wrapping key or signing key in TR-34, within your Amazon Web
    # Services Payment Cryptography account.
    #
    # Set the following parameters:
    #
    # * `KeyMaterial`: `RootCertificatePublicKey`
    #
    # * `KeyClass`: `PUBLIC_KEY`
    #
    # * `KeyModesOfUse`: `Verify`
    #
    # * `KeyUsage`: `TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE`
    #
    # * `PublicKeyCertificate`: The certificate authority used to sign the
    #   root public key certificate.
    #
    # **To import a trusted public key certificate**
    #
    # The root public key certificate must be in place and operational
    # before you import a trusted public key certificate. Set the following
    # parameters:
    #
    # * `KeyMaterial`: `TrustedCertificatePublicKey`
    #
    # * `CertificateAuthorityPublicKeyIdentifier`: `KeyArn` of the
    #   `RootCertificatePublicKey`.
    #
    # * `KeyModesOfUse` and `KeyUsage`: Corresponding to the cryptographic
    #   operations such as wrap, sign, or encrypt that you will allow the
    #   trusted public key certificate to perform.
    #
    # * `PublicKeyCertificate`: The certificate authority used to sign the
    #   trusted public key certificate.
    #
    # **Import main keys**
    #
    # Amazon Web Services Payment Cryptography uses TR-34 asymmetric key
    # exchange standard to import main keys such as KEK. In TR-34
    # terminology, the sending party of the key is called Key Distribution
    # Host (KDH) and the receiving party of the key is called Key Receiving
    # Host (KRH). During the key import process, KDH is the user who
    # initiates the key import and KRH is Amazon Web Services Payment
    # Cryptography who receives the key. Before initiating TR-34 key import,
    # you must obtain an import token by calling GetParametersForImport.
    # This operation also returns the wrapping key certificate that KDH uses
    # wrap key under import to generate a TR-34 wrapped key block. The
    # import token expires after 7 days.
    #
    # Set the following parameters:
    #
    # * `CertificateAuthorityPublicKeyIdentifier`: The `KeyArn` of the
    #   certificate chain that will sign the signing key certificate and
    #   should exist within Amazon Web Services Payment Cryptography before
    #   initiating TR-34 key import. If it does not exist, you can import it
    #   by calling by calling `ImportKey` for `RootCertificatePublicKey`.
    #
    # * `ImportToken`: Obtained from KRH by calling GetParametersForImport.
    #
    # * `WrappedKeyBlock`: The TR-34 wrapped key block from KDH. It contains
    #   the KDH key under import, wrapped with KRH provided wrapping key
    #   certificate and signed by the KDH private signing key. This TR-34
    #   key block is generated by the KDH Hardware Security Module (HSM)
    #   outside of Amazon Web Services Payment Cryptography.
    #
    # * `SigningKeyCertificate`: The public component of the private key
    #   that signed the KDH TR-34 wrapped key block. In PEM certificate
    #   format.
    #
    # <note markdown="1"> TR-34 is intended primarily to exchange 3DES keys. Your ability to
    # export AES-128 and larger AES keys may be dependent on your source
    # system.
    #
    #  </note>
    #
    # **Import working keys**
    #
    # Amazon Web Services Payment Cryptography uses TR-31 symmetric key
    # exchange standard to import working keys. A KEK must be established
    # within Amazon Web Services Payment Cryptography by using TR-34 key
    # import. To initiate a TR-31 key import, set the following parameters:
    #
    # * `WrappedKeyBlock`: The key under import and encrypted using KEK. The
    #   TR-31 key block generated by your HSM outside of Amazon Web Services
    #   Payment Cryptography.
    #
    # * `WrappingKeyIdentifier`: The `KeyArn` of the KEK that Amazon Web
    #   Services Payment Cryptography uses to decrypt or unwrap the key
    #   under import.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * ExportKey
    #
    # * GetParametersForImport
    #
    # @option params [Boolean] :enabled
    #   Specifies whether import key is enabled.
    #
    # @option params [String] :key_check_value_algorithm
    #   The algorithm that Amazon Web Services Payment Cryptography uses to
    #   calculate the key check value (KCV) for DES and AES keys.
    #
    #   For DES key, the KCV is computed by encrypting 8 bytes, each with
    #   value '00', with the key to be checked and retaining the 3 highest
    #   order bytes of the encrypted result. For AES key, the KCV is computed
    #   by encrypting 8 bytes, each with value '01', with the key to be
    #   checked and retaining the 3 highest order bytes of the encrypted
    #   result.
    #
    # @option params [required, Types::ImportKeyMaterial] :key_material
    #   The key or public key certificate type to use during key material
    #   import, for example TR-34 or RootCertificatePublicKey.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the key. Each tag consists of a tag key and a
    #   tag value. Both the tag key and the tag value are required, but the
    #   tag value can be an empty (null) string. You can't have more than one
    #   tag on an Amazon Web Services Payment Cryptography key with the same
    #   tag key.
    #
    #   You can't have more than one tag on an Amazon Web Services Payment
    #   Cryptography key with the same tag key. If you specify an existing tag
    #   key with a different tag value, Amazon Web Services Payment
    #   Cryptography replaces the current tag value with the specified one.
    #
    #   To use this parameter, you must have `TagResource` permission.
    #
    #   Don't include confidential or sensitive information in this field.
    #   This field may be displayed in plaintext in CloudTrail logs and other
    #   output.
    #
    #   <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    #   can allow or deny permission to the key.
    #
    #    </note>
    #
    # @return [Types::ImportKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportKeyOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_key({
    #     enabled: false,
    #     key_check_value_algorithm: "CMAC", # accepts CMAC, ANSI_X9_24
    #     key_material: { # required
    #       root_certificate_public_key: {
    #         key_attributes: { # required
    #           key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, RSA_2048, RSA_3072, RSA_4096
    #           key_class: "SYMMETRIC_KEY", # required, accepts SYMMETRIC_KEY, ASYMMETRIC_KEY_PAIR, PRIVATE_KEY, PUBLIC_KEY
    #           key_modes_of_use: { # required
    #             decrypt: false,
    #             derive_key: false,
    #             encrypt: false,
    #             generate: false,
    #             no_restrictions: false,
    #             sign: false,
    #             unwrap: false,
    #             verify: false,
    #             wrap: false,
    #           },
    #           key_usage: "TR31_B0_BASE_DERIVATION_KEY", # required, accepts TR31_B0_BASE_DERIVATION_KEY, TR31_C0_CARD_VERIFICATION_KEY, TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY, TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION, TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS, TR31_E1_EMV_MKEY_CONFIDENTIALITY, TR31_E2_EMV_MKEY_INTEGRITY, TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS, TR31_E5_EMV_MKEY_CARD_PERSONALIZATION, TR31_E6_EMV_MKEY_OTHER, TR31_K0_KEY_ENCRYPTION_KEY, TR31_K1_KEY_BLOCK_PROTECTION_KEY, TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT, TR31_M3_ISO_9797_3_MAC_KEY, TR31_M6_ISO_9797_5_CMAC_KEY, TR31_M7_HMAC_KEY, TR31_P0_PIN_ENCRYPTION_KEY, TR31_P1_PIN_GENERATION_KEY, TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE, TR31_V1_IBM3624_PIN_VERIFICATION_KEY, TR31_V2_VISA_PIN_VERIFICATION_KEY, TR31_K2_TR34_ASYMMETRIC_KEY
    #         },
    #         public_key_certificate: "CertificateType", # required
    #       },
    #       tr_31_key_block: {
    #         wrapped_key_block: "Tr31WrappedKeyBlock", # required
    #         wrapping_key_identifier: "KeyArnOrKeyAliasType", # required
    #       },
    #       tr_34_key_block: {
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         import_token: "ImportTokenId", # required
    #         key_block_format: "X9_TR34_2012", # required, accepts X9_TR34_2012
    #         random_nonce: "HexLength16",
    #         signing_key_certificate: "CertificateType", # required
    #         wrapped_key_block: "Tr34WrappedKeyBlock", # required
    #       },
    #       trusted_certificate_public_key: {
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         key_attributes: { # required
    #           key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, RSA_2048, RSA_3072, RSA_4096
    #           key_class: "SYMMETRIC_KEY", # required, accepts SYMMETRIC_KEY, ASYMMETRIC_KEY_PAIR, PRIVATE_KEY, PUBLIC_KEY
    #           key_modes_of_use: { # required
    #             decrypt: false,
    #             derive_key: false,
    #             encrypt: false,
    #             generate: false,
    #             no_restrictions: false,
    #             sign: false,
    #             unwrap: false,
    #             verify: false,
    #             wrap: false,
    #           },
    #           key_usage: "TR31_B0_BASE_DERIVATION_KEY", # required, accepts TR31_B0_BASE_DERIVATION_KEY, TR31_C0_CARD_VERIFICATION_KEY, TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY, TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION, TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS, TR31_E1_EMV_MKEY_CONFIDENTIALITY, TR31_E2_EMV_MKEY_INTEGRITY, TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS, TR31_E5_EMV_MKEY_CARD_PERSONALIZATION, TR31_E6_EMV_MKEY_OTHER, TR31_K0_KEY_ENCRYPTION_KEY, TR31_K1_KEY_BLOCK_PROTECTION_KEY, TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT, TR31_M3_ISO_9797_3_MAC_KEY, TR31_M6_ISO_9797_5_CMAC_KEY, TR31_M7_HMAC_KEY, TR31_P0_PIN_ENCRYPTION_KEY, TR31_P1_PIN_GENERATION_KEY, TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE, TR31_V1_IBM3624_PIN_VERIFICATION_KEY, TR31_V2_VISA_PIN_VERIFICATION_KEY, TR31_K2_TR34_ASYMMETRIC_KEY
    #         },
    #         public_key_certificate: "CertificateType", # required
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.key.create_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "RSA_2048", "RSA_3072", "RSA_4096"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportKey AWS API Documentation
    #
    # @overload import_key(params = {})
    # @param [Hash] params ({})
    def import_key(params = {}, options = {})
      req = build_request(:import_key, params)
      req.send_request(options)
    end

    # Lists the aliases for all keys in the caller's Amazon Web Services
    # account and Amazon Web Services Region. You can filter the list of
    # aliases. For more information, see [Using aliases][1] in the *Amazon
    # Web Services Payment Cryptography User Guide*.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the aliases. When the response contains
    # only a subset of aliases, it includes a `NextToken` value. Use this
    # value in a subsequent `ListAliases` request to get more aliases. When
    # you receive a response with no NextToken (or an empty or null value),
    # that means there are no more aliases to get.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * CreateAlias
    #
    # * DeleteAlias
    #
    # * GetAlias
    #
    # * UpdateAlias
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-managealias.html
    #
    # @option params [Integer] :max_results
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, Amazon Web Services Payment Cryptography
    #   does not return more than the specified number of items, but it might
    #   return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 100, inclusive. If you do not include a value, it defaults to 50.
    #
    # @option params [String] :next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #
    # @return [Types::ListAliasesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAliasesOutput#aliases #aliases} => Array&lt;Types::Alias&gt;
    #   * {Types::ListAliasesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.aliases #=> Array
    #   resp.aliases[0].alias_name #=> String
    #   resp.aliases[0].key_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListAliases AWS API Documentation
    #
    # @overload list_aliases(params = {})
    # @param [Hash] params ({})
    def list_aliases(params = {}, options = {})
      req = build_request(:list_aliases, params)
      req.send_request(options)
    end

    # Lists the keys in the caller's Amazon Web Services account and Amazon
    # Web Services Region. You can filter the list of keys.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the keys. When the response contains only
    # a subset of keys, it includes a `NextToken` value. Use this value in a
    # subsequent `ListKeys` request to get more keys. When you receive a
    # response with no NextToken (or an empty or null value), that means
    # there are no more keys to get.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * CreateKey
    #
    # * DeleteKey
    #
    # * GetKey
    #
    # @option params [String] :key_state
    #   The key state of the keys you want to list.
    #
    # @option params [Integer] :max_results
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, Amazon Web Services Payment Cryptography
    #   does not return more than the specified number of items, but it might
    #   return fewer.
    #
    # @option params [String] :next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #
    # @return [Types::ListKeysOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeysOutput#keys #keys} => Array&lt;Types::KeySummary&gt;
    #   * {Types::ListKeysOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_keys({
    #     key_state: "CREATE_IN_PROGRESS", # accepts CREATE_IN_PROGRESS, CREATE_COMPLETE, DELETE_PENDING, DELETE_COMPLETE
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.keys #=> Array
    #   resp.keys[0].enabled #=> Boolean
    #   resp.keys[0].exportable #=> Boolean
    #   resp.keys[0].key_arn #=> String
    #   resp.keys[0].key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "RSA_2048", "RSA_3072", "RSA_4096"
    #   resp.keys[0].key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.keys[0].key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.keys[0].key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.keys[0].key_check_value #=> String
    #   resp.keys[0].key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListKeys AWS API Documentation
    #
    # @overload list_keys(params = {})
    # @param [Hash] params ({})
    def list_keys(params = {}, options = {})
      req = build_request(:list_keys, params)
      req.send_request(options)
    end

    # Lists the tags for an Amazon Web Services resource.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the tags. When the response contains only
    # a subset of tags, it includes a `NextToken` value. Use this value in a
    # subsequent `ListTagsForResource` request to get more tags. When you
    # receive a response with no NextToken (or an empty or null value), that
    # means there are no more tags to get.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * TagResource
    #
    # * UntagResource
    #
    # @option params [Integer] :max_results
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, Amazon Web Services Payment Cryptography
    #   does not return more than the specified number of items, but it might
    #   return fewer.
    #
    # @option params [String] :next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #
    # @option params [required, String] :resource_arn
    #   The `KeyARN` of the key whose tags you are getting.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#next_token #next_token} => String
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Cancels a scheduled key deletion during the waiting period. Use this
    # operation to restore a `Key` that is scheduled for deletion.
    #
    # During the waiting period, the `KeyState` is `DELETE_PENDING` and
    # `deletePendingTimestamp` contains the date and time after which the
    # `Key` will be deleted. After `Key` is restored, the `KeyState` is
    # `CREATE_COMPLETE`, and the value for `deletePendingTimestamp` is
    # removed.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * DeleteKey
    #
    # * StartKeyUsage
    #
    # * StopKeyUsage
    #
    # @option params [required, String] :key_identifier
    #   The `KeyARN` of the key to be restored within Amazon Web Services
    #   Payment Cryptography.
    #
    # @return [Types::RestoreKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreKeyOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_key({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key.create_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "RSA_2048", "RSA_3072", "RSA_4096"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/RestoreKey AWS API Documentation
    #
    # @overload restore_key(params = {})
    # @param [Hash] params ({})
    def restore_key(params = {}, options = {})
      req = build_request(:restore_key, params)
      req.send_request(options)
    end

    # Enables an Amazon Web Services Payment Cryptography key, which makes
    # it active for cryptographic operations within Amazon Web Services
    # Payment Cryptography
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * StopKeyUsage
    #
    # ^
    #
    # @option params [required, String] :key_identifier
    #   The `KeyArn` of the key.
    #
    # @return [Types::StartKeyUsageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartKeyUsageOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_key_usage({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key.create_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "RSA_2048", "RSA_3072", "RSA_4096"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/StartKeyUsage AWS API Documentation
    #
    # @overload start_key_usage(params = {})
    # @param [Hash] params ({})
    def start_key_usage(params = {}, options = {})
      req = build_request(:start_key_usage, params)
      req.send_request(options)
    end

    # Disables an Amazon Web Services Payment Cryptography key, which makes
    # it inactive within Amazon Web Services Payment Cryptography.
    #
    # You can use this operation instead of DeleteKey to deactivate a key.
    # You can enable the key in the future by calling StartKeyUsage.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * DeleteKey
    #
    # * StartKeyUsage
    #
    # @option params [required, String] :key_identifier
    #   The `KeyArn` of the key.
    #
    # @return [Types::StopKeyUsageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopKeyUsageOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_key_usage({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key.create_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "RSA_2048", "RSA_3072", "RSA_4096"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/StopKeyUsage AWS API Documentation
    #
    # @overload stop_key_usage(params = {})
    # @param [Hash] params ({})
    def stop_key_usage(params = {}, options = {})
      req = build_request(:stop_key_usage, params)
      req.send_request(options)
    end

    # Adds or edits tags on an Amazon Web Services Payment Cryptography key.
    #
    # <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    # can allow or deny permission to the key.
    #
    #  </note>
    #
    # Each tag consists of a tag key and a tag value, both of which are
    # case-sensitive strings. The tag value can be an empty (null) string.
    # To add a tag, specify a new tag key and a tag value. To edit a tag,
    # specify an existing tag key and a new tag value. You can also add tags
    # to an Amazon Web Services Payment Cryptography key when you create it
    # with CreateKey.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * ListTagsForResource
    #
    # * UntagResource
    #
    # @option params [required, String] :resource_arn
    #   The `KeyARN` of the key whose tags are being updated.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags. Each tag consists of a tag key and a tag value. The
    #   tag value can be an empty (null) string. You can't have more than one
    #   tag on an Amazon Web Services Payment Cryptography key with the same
    #   tag key. If you specify an existing tag key with a different tag
    #   value, Amazon Web Services Payment Cryptography replaces the current
    #   tag value with the new one.
    #
    #   Don't include confidential or sensitive information in this field.
    #   This field may be displayed in plaintext in CloudTrail logs and other
    #   output.
    #
    #   To use this parameter, you must have TagResource permission in an IAM
    #   policy.
    #
    #   Don't include confidential or sensitive information in this field.
    #   This field may be displayed in plaintext in CloudTrail logs and other
    #   output.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes a tag from an Amazon Web Services Payment Cryptography key.
    #
    # <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    # can allow or deny permission to the key.
    #
    #  </note>
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * ListTagsForResource
    #
    # * TagResource
    #
    # @option params [required, String] :resource_arn
    #   The `KeyARN` of the key whose tags are being removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   One or more tag keys. Don't include the tag values.
    #
    #   If the Amazon Web Services Payment Cryptography key doesn't have the
    #   specified tag key, Amazon Web Services Payment Cryptography doesn't
    #   throw an exception or return a response. To confirm that the operation
    #   succeeded, use the ListTagsForResource operation.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Associates an existing Amazon Web Services Payment Cryptography alias
    # with a different key. Each alias is associated with only one Amazon
    # Web Services Payment Cryptography key at a time, although a key can
    # have multiple aliases. The alias and the Amazon Web Services Payment
    # Cryptography key must be in the same Amazon Web Services account and
    # Amazon Web Services Region
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * CreateAlias
    #
    # * DeleteAlias
    #
    # * GetAlias
    #
    # * ListAliases
    #
    # @option params [required, String] :alias_name
    #   The alias whose associated key is changing.
    #
    # @option params [String] :key_arn
    #   The `KeyARN` for the key that you are updating or removing from the
    #   alias.
    #
    # @return [Types::UpdateAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alias({
    #     alias_name: "AliasName", # required
    #     key_arn: "KeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.alias.alias_name #=> String
    #   resp.alias.key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/UpdateAlias AWS API Documentation
    #
    # @overload update_alias(params = {})
    # @param [Hash] params ({})
    def update_alias(params = {}, options = {})
      req = build_request(:update_alias, params)
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
      context[:gem_name] = 'aws-sdk-paymentcryptography'
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
