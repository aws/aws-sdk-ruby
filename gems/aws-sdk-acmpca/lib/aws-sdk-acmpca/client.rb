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

Aws::Plugins::GlobalConfiguration.add_identifier(:acmpca)

module Aws::ACMPCA
  # An API client for ACMPCA.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ACMPCA::Client.new(
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

    @identifier = :acmpca

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
    add_plugin(Aws::ACMPCA::Plugins::Endpoints)

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
    #   @option options [Aws::ACMPCA::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ACMPCA::EndpointParameters`
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

    # Creates a root or subordinate private certificate authority (CA). You
    # must specify the CA configuration, an optional configuration for
    # Online Certificate Status Protocol (OCSP) and/or a certificate
    # revocation list (CRL), the CA type, and an optional idempotency token
    # to avoid accidental creation of multiple CAs. The CA configuration
    # specifies the name of the algorithm and key size to be used to create
    # the CA private key, the type of signing algorithm that the CA uses,
    # and X.500 subject information. The OCSP configuration can optionally
    # specify a custom URL for the OCSP responder. The CRL configuration
    # specifies the CRL expiration period in days (the validity period of
    # the CRL), the Amazon S3 bucket that will contain the CRL, and a CNAME
    # alias for the S3 bucket that is included in certificates issued by the
    # CA. If successful, this action returns the Amazon Resource Name (ARN)
    # of the CA.
    #
    # <note markdown="1"> Both Amazon Web Services Private CA and the IAM principal must have
    # permission to write to the S3 bucket that you specify. If the IAM
    # principal making the call does not have permission to write to the
    # bucket, then an exception is thrown. For more information, see [Access
    # policies for CRLs in Amazon S3][1].
    #
    #  </note>
    #
    # Amazon Web Services Private CA assets that are stored in Amazon S3 can
    # be protected with encryption. For more information, see [Encrypting
    # Your CRLs][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies
    # [2]: https://docs.aws.amazon.com/privateca/latest/userguide/PcaCreateCa.html#crl-encryption
    #
    # @option params [required, Types::CertificateAuthorityConfiguration] :certificate_authority_configuration
    #   Name and bit size of the private key algorithm, the name of the
    #   signing algorithm, and X.500 certificate subject information.
    #
    # @option params [Types::RevocationConfiguration] :revocation_configuration
    #   Contains information to enable Online Certificate Status Protocol
    #   (OCSP) support, to enable a certificate revocation list (CRL), to
    #   enable both, or to enable neither. The default is for both certificate
    #   validation mechanisms to be disabled.
    #
    #   <note markdown="1"> The following requirements apply to revocation configurations.
    #
    #    * A configuration disabling CRLs or OCSP must contain only the
    #     `Enabled=False` parameter, and will fail if other parameters such as
    #     `CustomCname` or `ExpirationInDays` are included.
    #
    #   * In a CRL configuration, the `S3BucketName` parameter must conform to
    #     [Amazon S3 bucket naming rules][1].
    #
    #   * A configuration containing a custom Canonical Name (CNAME) parameter
    #     for CRLs or OCSP must conform to [RFC2396][2] restrictions on the
    #     use of special characters in a CNAME.
    #
    #   * In a CRL or OCSP configuration, the value of a CNAME parameter must
    #     not include a protocol prefix such as "http://" or "https://".
    #
    #    </note>
    #
    #   For more information, see the [OcspConfiguration][3] and
    #   [CrlConfiguration][4] types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html
    #   [2]: https://www.ietf.org/rfc/rfc2396.txt
    #   [3]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_OcspConfiguration.html
    #   [4]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html
    #
    # @option params [required, String] :certificate_authority_type
    #   The type of the certificate authority.
    #
    # @option params [String] :idempotency_token
    #   Custom string that can be used to distinguish between calls to the
    #   **CreateCertificateAuthority** action. Idempotency tokens for
    #   **CreateCertificateAuthority** time out after five minutes. Therefore,
    #   if you call **CreateCertificateAuthority** multiple times with the
    #   same idempotency token within five minutes, Amazon Web Services
    #   Private CA recognizes that you are requesting only certificate
    #   authority and will issue only one. If you change the idempotency token
    #   for each call, Amazon Web Services Private CA recognizes that you are
    #   requesting multiple certificate authorities.
    #
    # @option params [String] :key_storage_security_standard
    #   Specifies a cryptographic key management compliance standard used for
    #   handling CA keys.
    #
    #   Default: FIPS\_140\_2\_LEVEL\_3\_OR\_HIGHER
    #
    #   <note markdown="1"> Some Amazon Web Services Regions do not support the default. When
    #   creating a CA in these Regions, you must provide
    #   `FIPS_140_2_LEVEL_2_OR_HIGHER` as the argument for
    #   `KeyStorageSecurityStandard`. Failure to do this results in an
    #   `InvalidArgsException` with the message, "A certificate authority
    #   cannot be created in this region with the specified security
    #   standard."
    #
    #    For information about security standard support in various Regions,
    #   see [Storage and security compliance of Amazon Web Services Private CA
    #   private keys][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that will be attached to the new private CA. You can
    #   associate up to 50 tags with a private CA. For information using tags
    #   with IAM to manage permissions, see [Controlling Access Using IAM
    #   Tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html
    #
    # @option params [String] :usage_mode
    #   Specifies whether the CA issues general-purpose certificates that
    #   typically require a revocation mechanism, or short-lived certificates
    #   that may optionally omit revocation because they expire quickly.
    #   Short-lived certificate validity is limited to seven days.
    #
    #   The default value is GENERAL\_PURPOSE.
    #
    # @return [Types::CreateCertificateAuthorityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCertificateAuthorityResponse#certificate_authority_arn #certificate_authority_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_certificate_authority({
    #     certificate_authority_configuration: { # required
    #       key_algorithm: "RSA_2048", # required, accepts RSA_2048, RSA_4096, EC_prime256v1, EC_secp384r1
    #       signing_algorithm: "SHA256WITHECDSA", # required, accepts SHA256WITHECDSA, SHA384WITHECDSA, SHA512WITHECDSA, SHA256WITHRSA, SHA384WITHRSA, SHA512WITHRSA
    #       subject: { # required
    #         country: "CountryCodeString",
    #         organization: "String64",
    #         organizational_unit: "String64",
    #         distinguished_name_qualifier: "ASN1PrintableString64",
    #         state: "String128",
    #         common_name: "String64",
    #         serial_number: "ASN1PrintableString64",
    #         locality: "String128",
    #         title: "String64",
    #         surname: "String40",
    #         given_name: "String16",
    #         initials: "String5",
    #         pseudonym: "String128",
    #         generation_qualifier: "String3",
    #         custom_attributes: [
    #           {
    #             object_identifier: "CustomObjectIdentifier", # required
    #             value: "String1To256", # required
    #           },
    #         ],
    #       },
    #       csr_extensions: {
    #         key_usage: {
    #           digital_signature: false,
    #           non_repudiation: false,
    #           key_encipherment: false,
    #           data_encipherment: false,
    #           key_agreement: false,
    #           key_cert_sign: false,
    #           crl_sign: false,
    #           encipher_only: false,
    #           decipher_only: false,
    #         },
    #         subject_information_access: [
    #           {
    #             access_method: { # required
    #               custom_object_identifier: "CustomObjectIdentifier",
    #               access_method_type: "CA_REPOSITORY", # accepts CA_REPOSITORY, RESOURCE_PKI_MANIFEST, RESOURCE_PKI_NOTIFY
    #             },
    #             access_location: { # required
    #               other_name: {
    #                 type_id: "CustomObjectIdentifier", # required
    #                 value: "String256", # required
    #               },
    #               rfc_822_name: "String256",
    #               dns_name: "String253",
    #               directory_name: {
    #                 country: "CountryCodeString",
    #                 organization: "String64",
    #                 organizational_unit: "String64",
    #                 distinguished_name_qualifier: "ASN1PrintableString64",
    #                 state: "String128",
    #                 common_name: "String64",
    #                 serial_number: "ASN1PrintableString64",
    #                 locality: "String128",
    #                 title: "String64",
    #                 surname: "String40",
    #                 given_name: "String16",
    #                 initials: "String5",
    #                 pseudonym: "String128",
    #                 generation_qualifier: "String3",
    #                 custom_attributes: [
    #                   {
    #                     object_identifier: "CustomObjectIdentifier", # required
    #                     value: "String1To256", # required
    #                   },
    #                 ],
    #               },
    #               edi_party_name: {
    #                 party_name: "String256", # required
    #                 name_assigner: "String256",
    #               },
    #               uniform_resource_identifier: "String253",
    #               ip_address: "String39",
    #               registered_id: "CustomObjectIdentifier",
    #             },
    #           },
    #         ],
    #       },
    #     },
    #     revocation_configuration: {
    #       crl_configuration: {
    #         enabled: false, # required
    #         expiration_in_days: 1,
    #         custom_cname: "CnameString",
    #         s3_bucket_name: "S3BucketName3To255",
    #         s3_object_acl: "PUBLIC_READ", # accepts PUBLIC_READ, BUCKET_OWNER_FULL_CONTROL
    #       },
    #       ocsp_configuration: {
    #         enabled: false, # required
    #         ocsp_custom_cname: "CnameString",
    #       },
    #     },
    #     certificate_authority_type: "ROOT", # required, accepts ROOT, SUBORDINATE
    #     idempotency_token: "IdempotencyToken",
    #     key_storage_security_standard: "FIPS_140_2_LEVEL_2_OR_HIGHER", # accepts FIPS_140_2_LEVEL_2_OR_HIGHER, FIPS_140_2_LEVEL_3_OR_HIGHER
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     usage_mode: "GENERAL_PURPOSE", # accepts GENERAL_PURPOSE, SHORT_LIVED_CERTIFICATE
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_authority_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthority AWS API Documentation
    #
    # @overload create_certificate_authority(params = {})
    # @param [Hash] params ({})
    def create_certificate_authority(params = {}, options = {})
      req = build_request(:create_certificate_authority, params)
      req.send_request(options)
    end

    # Creates an audit report that lists every time that your CA private key
    # is used. The report is saved in the Amazon S3 bucket that you specify
    # on input. The [IssueCertificate][1] and [RevokeCertificate][2] actions
    # use the private key.
    #
    # <note markdown="1"> Both Amazon Web Services Private CA and the IAM principal must have
    # permission to write to the S3 bucket that you specify. If the IAM
    # principal making the call does not have permission to write to the
    # bucket, then an exception is thrown. For more information, see [Access
    # policies for CRLs in Amazon S3][3].
    #
    #  </note>
    #
    # Amazon Web Services Private CA assets that are stored in Amazon S3 can
    # be protected with encryption. For more information, see [Encrypting
    # Your Audit Reports][4].
    #
    # <note markdown="1"> You can generate a maximum of one report every 30 minutes.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_RevokeCertificate.html
    # [3]: https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies
    # [4]: https://docs.aws.amazon.com/privateca/latest/userguide/PcaAuditReport.html#audit-report-encryption
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the CA to be audited. This is of the
    #   form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    # @option params [required, String] :s3_bucket_name
    #   The name of the S3 bucket that will contain the audit report.
    #
    # @option params [required, String] :audit_report_response_format
    #   The format in which to create the report. This can be either **JSON**
    #   or **CSV**.
    #
    # @return [Types::CreateCertificateAuthorityAuditReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCertificateAuthorityAuditReportResponse#audit_report_id #audit_report_id} => String
    #   * {Types::CreateCertificateAuthorityAuditReportResponse#s3_key #s3_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_certificate_authority_audit_report({
    #     certificate_authority_arn: "Arn", # required
    #     s3_bucket_name: "S3BucketName", # required
    #     audit_report_response_format: "JSON", # required, accepts JSON, CSV
    #   })
    #
    # @example Response structure
    #
    #   resp.audit_report_id #=> String
    #   resp.s3_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthorityAuditReport AWS API Documentation
    #
    # @overload create_certificate_authority_audit_report(params = {})
    # @param [Hash] params ({})
    def create_certificate_authority_audit_report(params = {}, options = {})
      req = build_request(:create_certificate_authority_audit_report, params)
      req.send_request(options)
    end

    # Grants one or more permissions on a private CA to the Certificate
    # Manager (ACM) service principal (`acm.amazonaws.com`). These
    # permissions allow ACM to issue and renew ACM certificates that reside
    # in the same Amazon Web Services account as the CA.
    #
    # You can list current permissions with the [ListPermissions][1] action
    # and revoke them with the [DeletePermission][2] action.
    #
    # **About Permissions**
    #
    # * If the private CA and the certificates it issues reside in the same
    #   account, you can use `CreatePermission` to grant permissions for ACM
    #   to carry out automatic certificate renewals.
    #
    # * For automatic certificate renewal to succeed, the ACM service
    #   principal needs permissions to create, retrieve, and list
    #   certificates.
    #
    # * If the private CA and the ACM certificates reside in different
    #   accounts, then permissions cannot be used to enable automatic
    #   renewals. Instead, the ACM certificate owner must set up a
    #   resource-based policy to enable cross-account issuance and renewals.
    #   For more information, see [Using a Resource Based Policy with Amazon
    #   Web Services Private CA][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListPermissions.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePermission.html
    # [3]: https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the CA that grants the permissions.
    #   You can find the ARN by calling the [ListCertificateAuthorities][1]
    #   action. This must have the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html
    #
    # @option params [required, String] :principal
    #   The Amazon Web Services service or identity that receives the
    #   permission. At this time, the only valid principal is
    #   `acm.amazonaws.com`.
    #
    # @option params [String] :source_account
    #   The ID of the calling account.
    #
    # @option params [required, Array<String>] :actions
    #   The actions that the specified Amazon Web Services service principal
    #   can use. These include `IssueCertificate`, `GetCertificate`, and
    #   `ListPermissions`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_permission({
    #     certificate_authority_arn: "Arn", # required
    #     principal: "Principal", # required
    #     source_account: "AccountId",
    #     actions: ["IssueCertificate"], # required, accepts IssueCertificate, GetCertificate, ListPermissions
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreatePermission AWS API Documentation
    #
    # @overload create_permission(params = {})
    # @param [Hash] params ({})
    def create_permission(params = {}, options = {})
      req = build_request(:create_permission, params)
      req.send_request(options)
    end

    # Deletes a private certificate authority (CA). You must provide the
    # Amazon Resource Name (ARN) of the private CA that you want to delete.
    # You can find the ARN by calling the [ListCertificateAuthorities][1]
    # action.
    #
    # <note markdown="1"> Deleting a CA will invalidate other CAs and certificates below it in
    # your CA hierarchy.
    #
    #  </note>
    #
    # Before you can delete a CA that you have created and activated, you
    # must disable it. To do this, call the [UpdateCertificateAuthority][2]
    # action and set the **CertificateAuthorityStatus** parameter to
    # `DISABLED`.
    #
    # Additionally, you can delete a CA if you are waiting for it to be
    # created (that is, the status of the CA is `CREATING`). You can also
    # delete it if the CA has been created but you haven't yet imported the
    # signed certificate into Amazon Web Services Private CA (that is, the
    # status of the CA is `PENDING_CERTIFICATE`).
    #
    # When you successfully call [DeleteCertificateAuthority][3], the CA's
    # status changes to `DELETED`. However, the CA won't be permanently
    # deleted until the restoration period has passed. By default, if you do
    # not set the `PermanentDeletionTimeInDays` parameter, the CA remains
    # restorable for 30 days. You can set the parameter from 7 to 30 days.
    # The [DescribeCertificateAuthority][4] action returns the time
    # remaining in the restoration window of a private CA in the `DELETED`
    # state. To restore an eligible CA, call the
    # [RestoreCertificateAuthority][5] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html
    # [3]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeleteCertificateAuthority.html
    # [4]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_DescribeCertificateAuthority.html
    # [5]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_RestoreCertificateAuthority.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must have the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @option params [Integer] :permanent_deletion_time_in_days
    #   The number of days to make a CA restorable after it has been deleted.
    #   This can be anywhere from 7 to 30 days, with 30 being the default.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #     permanent_deletion_time_in_days: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DeleteCertificateAuthority AWS API Documentation
    #
    # @overload delete_certificate_authority(params = {})
    # @param [Hash] params ({})
    def delete_certificate_authority(params = {}, options = {})
      req = build_request(:delete_certificate_authority, params)
      req.send_request(options)
    end

    # Revokes permissions on a private CA granted to the Certificate Manager
    # (ACM) service principal (acm.amazonaws.com).
    #
    # These permissions allow ACM to issue and renew ACM certificates that
    # reside in the same Amazon Web Services account as the CA. If you
    # revoke these permissions, ACM will no longer renew the affected
    # certificates automatically.
    #
    # Permissions can be granted with the [CreatePermission][1] action and
    # listed with the [ListPermissions][2] action.
    #
    # **About Permissions**
    #
    # * If the private CA and the certificates it issues reside in the same
    #   account, you can use `CreatePermission` to grant permissions for ACM
    #   to carry out automatic certificate renewals.
    #
    # * For automatic certificate renewal to succeed, the ACM service
    #   principal needs permissions to create, retrieve, and list
    #   certificates.
    #
    # * If the private CA and the ACM certificates reside in different
    #   accounts, then permissions cannot be used to enable automatic
    #   renewals. Instead, the ACM certificate owner must set up a
    #   resource-based policy to enable cross-account issuance and renewals.
    #   For more information, see [Using a Resource Based Policy with Amazon
    #   Web Services Private CA][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreatePermission.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListPermissions.html
    # [3]: https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Number (ARN) of the private CA that issued the
    #   permissions. You can find the CA's ARN by calling the
    #   [ListCertificateAuthorities][1] action. This must have the following
    #   form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html
    #
    # @option params [required, String] :principal
    #   The Amazon Web Services service or identity that will have its CA
    #   permissions revoked. At this time, the only valid service principal is
    #   `acm.amazonaws.com`
    #
    # @option params [String] :source_account
    #   The Amazon Web Services account that calls this action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission({
    #     certificate_authority_arn: "Arn", # required
    #     principal: "Principal", # required
    #     source_account: "AccountId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DeletePermission AWS API Documentation
    #
    # @overload delete_permission(params = {})
    # @param [Hash] params ({})
    def delete_permission(params = {}, options = {})
      req = build_request(:delete_permission, params)
      req.send_request(options)
    end

    # Deletes the resource-based policy attached to a private CA. Deletion
    # will remove any access that the policy has granted. If there is no
    # policy attached to the private CA, this action will return successful.
    #
    # If you delete a policy that was applied through Amazon Web Services
    # Resource Access Manager (RAM), the CA will be removed from all shares
    # in which it was included.
    #
    # The Certificate Manager Service Linked Role that the policy supports
    # is not affected when you delete the policy.
    #
    # The current policy can be shown with [GetPolicy][1] and updated with
    # [PutPolicy][2].
    #
    # **About Policies**
    #
    # * A policy grants access on a private CA to an Amazon Web Services
    #   customer account, to Amazon Web Services Organizations, or to an
    #   Amazon Web Services Organizations unit. Policies are under the
    #   control of a CA administrator. For more information, see [Using a
    #   Resource Based Policy with Amazon Web Services Private CA][3].
    #
    # * A policy permits a user of Certificate Manager (ACM) to issue ACM
    #   certificates signed by a CA in another account.
    #
    # * For ACM to manage automatic renewal of these certificates, the ACM
    #   user must configure a Service Linked Role (SLR). The SLR allows the
    #   ACM service to assume the identity of the user, subject to
    #   confirmation against the Amazon Web Services Private CA policy. For
    #   more information, see [Using a Service Linked Role with ACM][4].
    #
    # * Updates made in Amazon Web Services Resource Manager (RAM) are
    #   reflected in policies. For more information, see [Attach a Policy
    #   for Cross-Account Access][5].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetPolicy.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_PutPolicy.html
    # [3]: https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html
    # [4]: https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html
    # [5]: https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of the private CA that will have its
    #   policy deleted. You can find the CA's ARN by calling the
    #   [ListCertificateAuthorities][1] action. The ARN value must have the
    #   form
    #   `arn:aws:acm-pca:region:account:certificate-authority/01234567-89ab-cdef-0123-0123456789ab`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Lists information about your private certificate authority (CA) or one
    # that has been shared with you. You specify the private CA on input by
    # its ARN (Amazon Resource Name). The output contains the status of your
    # CA. This can be any of the following:
    #
    # * `CREATING` - Amazon Web Services Private CA is creating your private
    #   certificate authority.
    #
    # * `PENDING_CERTIFICATE` - The certificate is pending. You must use
    #   your Amazon Web Services Private CA-hosted or on-premises root or
    #   subordinate CA to sign your private CA CSR and then import it into
    #   Amazon Web Services Private CA.
    #
    # * `ACTIVE` - Your private CA is active.
    #
    # * `DISABLED` - Your private CA has been disabled.
    #
    # * `EXPIRED` - Your private CA certificate has expired.
    #
    # * `FAILED` - Your private CA has failed. Your CA can fail because of
    #   problems such a network outage or back-end Amazon Web Services
    #   failure or other errors. A failed CA can never return to the pending
    #   state. You must create a new CA.
    #
    # * `DELETED` - Your private CA is within the restoration period, after
    #   which it is permanently deleted. The length of time remaining in the
    #   CA's restoration period is also included in this action's output.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @return [Types::DescribeCertificateAuthorityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCertificateAuthorityResponse#certificate_authority #certificate_authority} => Types::CertificateAuthority
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_authority.arn #=> String
    #   resp.certificate_authority.owner_account #=> String
    #   resp.certificate_authority.created_at #=> Time
    #   resp.certificate_authority.last_state_change_at #=> Time
    #   resp.certificate_authority.type #=> String, one of "ROOT", "SUBORDINATE"
    #   resp.certificate_authority.serial #=> String
    #   resp.certificate_authority.status #=> String, one of "CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"
    #   resp.certificate_authority.not_before #=> Time
    #   resp.certificate_authority.not_after #=> Time
    #   resp.certificate_authority.failure_reason #=> String, one of "REQUEST_TIMED_OUT", "UNSUPPORTED_ALGORITHM", "OTHER"
    #   resp.certificate_authority.certificate_authority_configuration.key_algorithm #=> String, one of "RSA_2048", "RSA_4096", "EC_prime256v1", "EC_secp384r1"
    #   resp.certificate_authority.certificate_authority_configuration.signing_algorithm #=> String, one of "SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA"
    #   resp.certificate_authority.certificate_authority_configuration.subject.country #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.organization #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.organizational_unit #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.distinguished_name_qualifier #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.state #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.common_name #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.serial_number #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.locality #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.title #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.surname #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.given_name #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.initials #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.pseudonym #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.generation_qualifier #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.custom_attributes #=> Array
    #   resp.certificate_authority.certificate_authority_configuration.subject.custom_attributes[0].object_identifier #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.custom_attributes[0].value #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.digital_signature #=> Boolean
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.non_repudiation #=> Boolean
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.key_encipherment #=> Boolean
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.data_encipherment #=> Boolean
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.key_agreement #=> Boolean
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.key_cert_sign #=> Boolean
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.crl_sign #=> Boolean
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.encipher_only #=> Boolean
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.decipher_only #=> Boolean
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access #=> Array
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_method.custom_object_identifier #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_method.access_method_type #=> String, one of "CA_REPOSITORY", "RESOURCE_PKI_MANIFEST", "RESOURCE_PKI_NOTIFY"
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.other_name.type_id #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.other_name.value #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.rfc_822_name #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.dns_name #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.country #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.organization #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.organizational_unit #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.distinguished_name_qualifier #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.state #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.common_name #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.serial_number #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.locality #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.title #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.surname #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.given_name #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.initials #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.pseudonym #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.generation_qualifier #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.custom_attributes #=> Array
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.custom_attributes[0].object_identifier #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.custom_attributes[0].value #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.edi_party_name.party_name #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.edi_party_name.name_assigner #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.uniform_resource_identifier #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.ip_address #=> String
    #   resp.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.registered_id #=> String
    #   resp.certificate_authority.revocation_configuration.crl_configuration.enabled #=> Boolean
    #   resp.certificate_authority.revocation_configuration.crl_configuration.expiration_in_days #=> Integer
    #   resp.certificate_authority.revocation_configuration.crl_configuration.custom_cname #=> String
    #   resp.certificate_authority.revocation_configuration.crl_configuration.s3_bucket_name #=> String
    #   resp.certificate_authority.revocation_configuration.crl_configuration.s3_object_acl #=> String, one of "PUBLIC_READ", "BUCKET_OWNER_FULL_CONTROL"
    #   resp.certificate_authority.revocation_configuration.ocsp_configuration.enabled #=> Boolean
    #   resp.certificate_authority.revocation_configuration.ocsp_configuration.ocsp_custom_cname #=> String
    #   resp.certificate_authority.restorable_until #=> Time
    #   resp.certificate_authority.key_storage_security_standard #=> String, one of "FIPS_140_2_LEVEL_2_OR_HIGHER", "FIPS_140_2_LEVEL_3_OR_HIGHER"
    #   resp.certificate_authority.usage_mode #=> String, one of "GENERAL_PURPOSE", "SHORT_LIVED_CERTIFICATE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthority AWS API Documentation
    #
    # @overload describe_certificate_authority(params = {})
    # @param [Hash] params ({})
    def describe_certificate_authority(params = {}, options = {})
      req = build_request(:describe_certificate_authority, params)
      req.send_request(options)
    end

    # Lists information about a specific audit report created by calling the
    # [CreateCertificateAuthorityAuditReport][1] action. Audit information
    # is created every time the certificate authority (CA) private key is
    # used. The private key is used when you call the [IssueCertificate][2]
    # action or the [RevokeCertificate][3] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html
    # [3]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_RevokeCertificate.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the private CA. This must be of the
    #   form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    # @option params [required, String] :audit_report_id
    #   The report ID returned by calling the
    #   [CreateCertificateAuthorityAuditReport][1] action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html
    #
    # @return [Types::DescribeCertificateAuthorityAuditReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCertificateAuthorityAuditReportResponse#audit_report_status #audit_report_status} => String
    #   * {Types::DescribeCertificateAuthorityAuditReportResponse#s3_bucket_name #s3_bucket_name} => String
    #   * {Types::DescribeCertificateAuthorityAuditReportResponse#s3_key #s3_key} => String
    #   * {Types::DescribeCertificateAuthorityAuditReportResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate_authority_audit_report({
    #     certificate_authority_arn: "Arn", # required
    #     audit_report_id: "AuditReportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.audit_report_status #=> String, one of "CREATING", "SUCCESS", "FAILED"
    #   resp.s3_bucket_name #=> String
    #   resp.s3_key #=> String
    #   resp.created_at #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * audit_report_created
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthorityAuditReport AWS API Documentation
    #
    # @overload describe_certificate_authority_audit_report(params = {})
    # @param [Hash] params ({})
    def describe_certificate_authority_audit_report(params = {}, options = {})
      req = build_request(:describe_certificate_authority_audit_report, params)
      req.send_request(options)
    end

    # Retrieves a certificate from your private CA or one that has been
    # shared with you. The ARN of the certificate is returned when you call
    # the [IssueCertificate][1] action. You must specify both the ARN of
    # your private CA and the ARN of the issued certificate when calling the
    # **GetCertificate** action. You can retrieve the certificate if it is
    # in the **ISSUED** state. You can call the
    # [CreateCertificateAuthorityAuditReport][2] action to create a report
    # that contains information about all of the certificates issued and
    # revoked by your private CA.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @option params [required, String] :certificate_arn
    #   The ARN of the issued certificate. The ARN contains the certificate
    #   serial number and must be in the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012/certificate/286535153982981100925020015808220737245
    #   `
    #
    # @return [Types::GetCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCertificateResponse#certificate #certificate} => String
    #   * {Types::GetCertificateResponse#certificate_chain #certificate_chain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate({
    #     certificate_authority_arn: "Arn", # required
    #     certificate_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate #=> String
    #   resp.certificate_chain #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * certificate_issued
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificate AWS API Documentation
    #
    # @overload get_certificate(params = {})
    # @param [Hash] params ({})
    def get_certificate(params = {}, options = {})
      req = build_request(:get_certificate, params)
      req.send_request(options)
    end

    # Retrieves the certificate and certificate chain for your private
    # certificate authority (CA) or one that has been shared with you. Both
    # the certificate and the chain are base64 PEM-encoded. The chain does
    # not include the CA certificate. Each certificate in the chain signs
    # the one before it.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) of your private CA. This is of the
    #   form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    # @return [Types::GetCertificateAuthorityCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCertificateAuthorityCertificateResponse#certificate #certificate} => String
    #   * {Types::GetCertificateAuthorityCertificateResponse#certificate_chain #certificate_chain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate_authority_certificate({
    #     certificate_authority_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate #=> String
    #   resp.certificate_chain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCertificate AWS API Documentation
    #
    # @overload get_certificate_authority_certificate(params = {})
    # @param [Hash] params ({})
    def get_certificate_authority_certificate(params = {}, options = {})
      req = build_request(:get_certificate_authority_certificate, params)
      req.send_request(options)
    end

    # Retrieves the certificate signing request (CSR) for your private
    # certificate authority (CA). The CSR is created when you call the
    # [CreateCertificateAuthority][1] action. Sign the CSR with your Amazon
    # Web Services Private CA-hosted or on-premises root or subordinate CA.
    # Then import the signed certificate back into Amazon Web Services
    # Private CA by calling the [ImportCertificateAuthorityCertificate][2]
    # action. The CSR is returned as a base64 PEM-encoded string.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called the
    #   [CreateCertificateAuthority][1] action. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @return [Types::GetCertificateAuthorityCsrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCertificateAuthorityCsrResponse#csr #csr} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate_authority_csr({
    #     certificate_authority_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.csr #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * certificate_authority_csr_created
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCsr AWS API Documentation
    #
    # @overload get_certificate_authority_csr(params = {})
    # @param [Hash] params ({})
    def get_certificate_authority_csr(params = {}, options = {})
      req = build_request(:get_certificate_authority_csr, params)
      req.send_request(options)
    end

    # Retrieves the resource-based policy attached to a private CA. If
    # either the private CA resource or the policy cannot be found, this
    # action returns a `ResourceNotFoundException`.
    #
    # The policy can be attached or updated with [PutPolicy][1] and removed
    # with [DeletePolicy][2].
    #
    # **About Policies**
    #
    # * A policy grants access on a private CA to an Amazon Web Services
    #   customer account, to Amazon Web Services Organizations, or to an
    #   Amazon Web Services Organizations unit. Policies are under the
    #   control of a CA administrator. For more information, see [Using a
    #   Resource Based Policy with Amazon Web Services Private CA][3].
    #
    # * A policy permits a user of Certificate Manager (ACM) to issue ACM
    #   certificates signed by a CA in another account.
    #
    # * For ACM to manage automatic renewal of these certificates, the ACM
    #   user must configure a Service Linked Role (SLR). The SLR allows the
    #   ACM service to assume the identity of the user, subject to
    #   confirmation against the Amazon Web Services Private CA policy. For
    #   more information, see [Using a Service Linked Role with ACM][4].
    #
    # * Updates made in Amazon Web Services Resource Manager (RAM) are
    #   reflected in policies. For more information, see [Attach a Policy
    #   for Cross-Account Access][5].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_PutPolicy.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePolicy.html
    # [3]: https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html
    # [4]: https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html
    # [5]: https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of the private CA that will have its
    #   policy retrieved. You can find the CA's ARN by calling the
    #   ListCertificateAuthorities action.
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Imports a signed private CA certificate into Amazon Web Services
    # Private CA. This action is used when you are using a chain of trust
    # whose root is located outside Amazon Web Services Private CA. Before
    # you can call this action, the following preparations must in place:
    #
    # 1.  In Amazon Web Services Private CA, call the
    #     [CreateCertificateAuthority][1] action to create the private CA
    #     that you plan to back with the imported certificate.
    #
    # 2.  Call the [GetCertificateAuthorityCsr][2] action to generate a
    #     certificate signing request (CSR).
    #
    # 3.  Sign the CSR using a root or intermediate CA hosted by either an
    #     on-premises PKI hierarchy or by a commercial CA.
    #
    # 4.  Create a certificate chain and copy the signed certificate and the
    #     certificate chain to your working directory.
    #
    # Amazon Web Services Private CA supports three scenarios for installing
    # a CA certificate:
    #
    # * Installing a certificate for a root CA hosted by Amazon Web Services
    #   Private CA.
    #
    # * Installing a subordinate CA certificate whose parent authority is
    #   hosted by Amazon Web Services Private CA.
    #
    # * Installing a subordinate CA certificate whose parent authority is
    #   externally hosted.
    #
    # The following additional requirements apply when you import a CA
    # certificate.
    #
    # * Only a self-signed certificate can be imported as a root CA.
    #
    # * A self-signed certificate cannot be imported as a subordinate CA.
    #
    # * Your certificate chain must not include the private CA certificate
    #   that you are importing.
    #
    # * Your root CA must be the last certificate in your chain. The
    #   subordinate certificate, if any, that your root CA signed must be
    #   next to last. The subordinate certificate signed by the preceding
    #   subordinate CA must come next, and so on until your chain is built.
    #
    # * The chain must be PEM-encoded.
    #
    # * The maximum allowed size of a certificate is 32 KB.
    #
    # * The maximum allowed size of a certificate chain is 2 MB.
    #
    # *Enforcement of Critical Constraints*
    #
    # Amazon Web Services Private CA allows the following extensions to be
    # marked critical in the imported CA certificate or chain.
    #
    # * Basic constraints (*must* be marked critical)
    #
    # * Subject alternative names
    #
    # * Key usage
    #
    # * Extended key usage
    #
    # * Authority key identifier
    #
    # * Subject key identifier
    #
    # * Issuer alternative name
    #
    # * Subject directory attributes
    #
    # * Subject information access
    #
    # * Certificate policies
    #
    # * Policy mappings
    #
    # * Inhibit anyPolicy
    #
    # Amazon Web Services Private CA rejects the following extensions when
    # they are marked critical in an imported CA certificate or chain.
    #
    # * Name constraints
    #
    # * Policy constraints
    #
    # * CRL distribution points
    #
    # * Authority information access
    #
    # * Freshest CRL
    #
    # * Any other extension
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificateAuthorityCsr.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @option params [required, String, StringIO, File] :certificate
    #   The PEM-encoded certificate for a private CA. This may be a
    #   self-signed certificate in the case of a root CA, or it may be signed
    #   by another CA that you control.
    #
    # @option params [String, StringIO, File] :certificate_chain
    #   A PEM-encoded file that contains all of your certificates, other than
    #   the certificate you're importing, chaining up to your root CA. Your
    #   Amazon Web Services Private CA-hosted or on-premises root certificate
    #   is the last in the chain, and each certificate in the chain signs the
    #   one preceding.
    #
    #   This parameter must be supplied when you import a subordinate CA. When
    #   you import a root CA, there is no chain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_certificate_authority_certificate({
    #     certificate_authority_arn: "Arn", # required
    #     certificate: "data", # required
    #     certificate_chain: "data",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ImportCertificateAuthorityCertificate AWS API Documentation
    #
    # @overload import_certificate_authority_certificate(params = {})
    # @param [Hash] params ({})
    def import_certificate_authority_certificate(params = {}, options = {})
      req = build_request(:import_certificate_authority_certificate, params)
      req.send_request(options)
    end

    # Uses your private certificate authority (CA), or one that has been
    # shared with you, to issue a client certificate. This action returns
    # the Amazon Resource Name (ARN) of the certificate. You can retrieve
    # the certificate by calling the [GetCertificate][1] action and
    # specifying the ARN.
    #
    # <note markdown="1"> You cannot use the ACM **ListCertificateAuthorities** action to
    # retrieve the ARNs of the certificates that you issue by using Amazon
    # Web Services Private CA.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificate.html
    #
    # @option params [Types::ApiPassthrough] :api_passthrough
    #   Specifies X.509 certificate information to be included in the issued
    #   certificate. An `APIPassthrough` or `APICSRPassthrough` template
    #   variant must be selected, or else this parameter is ignored. For more
    #   information about using these templates, see [Understanding
    #   Certificate Templates][1].
    #
    #   If conflicting or duplicate certificate information is supplied during
    #   certificate issuance, Amazon Web Services Private CA applies [order of
    #   operation rules][2] to determine what information is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html
    #   [2]: https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html#template-order-of-operations
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @option params [required, String, StringIO, File] :csr
    #   The certificate signing request (CSR) for the certificate you want to
    #   issue. As an example, you can use the following OpenSSL command to
    #   create the CSR and a 2048 bit RSA private key.
    #
    #   `openssl req -new -newkey rsa:2048 -days 365 -keyout
    #   private/test_cert_priv_key.pem -out csr/test_cert_.csr`
    #
    #   If you have a configuration file, you can then use the following
    #   OpenSSL command. The `usr_cert` block in the configuration file
    #   contains your X509 version 3 extensions.
    #
    #   `openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey
    #   rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out
    #   csr/test_cert_.csr`
    #
    #   Note: A CSR must provide either a *subject name* or a *subject
    #   alternative name* or the request will be rejected.
    #
    # @option params [required, String] :signing_algorithm
    #   The name of the algorithm that will be used to sign the certificate to
    #   be issued.
    #
    #   This parameter should not be confused with the `SigningAlgorithm`
    #   parameter used to sign a CSR in the `CreateCertificateAuthority`
    #   action.
    #
    #   <note markdown="1"> The specified signing algorithm family (RSA or ECDSA) must match the
    #   algorithm family of the CA's secret key.
    #
    #    </note>
    #
    # @option params [String] :template_arn
    #   Specifies a custom configuration template to use when issuing a
    #   certificate. If this parameter is not provided, Amazon Web Services
    #   Private CA defaults to the `EndEntityCertificate/V1` template. For CA
    #   certificates, you should choose the shortest path length that meets
    #   your needs. The path length is indicated by the PathLen*N* portion of
    #   the ARN, where *N* is the [CA depth][1].
    #
    #   Note: The CA depth configured on a subordinate CA certificate must not
    #   exceed the limit set by its parents in the CA hierarchy.
    #
    #   For a list of `TemplateArn` values supported by Amazon Web Services
    #   Private CA, see [Understanding Certificate Templates][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/userguide/PcaTerms.html#terms-cadepth
    #   [2]: https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html
    #
    # @option params [required, Types::Validity] :validity
    #   Information describing the end of the validity period of the
    #   certificate. This parameter sets the “Not After” date for the
    #   certificate.
    #
    #   Certificate validity is the period of time during which a certificate
    #   is valid. Validity can be expressed as an explicit date and time when
    #   the certificate expires, or as a span of time after issuance, stated
    #   in days, months, or years. For more information, see [Validity][1] in
    #   RFC 5280.
    #
    #   This value is unaffected when `ValidityNotBefore` is also specified.
    #   For example, if `Validity` is set to 20 days in the future, the
    #   certificate will expire 20 days from issuance time regardless of the
    #   `ValidityNotBefore` value.
    #
    #   The end of the validity period configured on a certificate must not
    #   exceed the limit set on its parents in the CA hierarchy.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.5
    #
    # @option params [Types::Validity] :validity_not_before
    #   Information describing the start of the validity period of the
    #   certificate. This parameter sets the “Not Before" date for the
    #   certificate.
    #
    #   By default, when issuing a certificate, Amazon Web Services Private CA
    #   sets the "Not Before" date to the issuance time minus 60 minutes.
    #   This compensates for clock inconsistencies across computer systems.
    #   The `ValidityNotBefore` parameter can be used to customize the “Not
    #   Before” value.
    #
    #   Unlike the `Validity` parameter, the `ValidityNotBefore` parameter is
    #   optional.
    #
    #   The `ValidityNotBefore` value is expressed as an explicit date and
    #   time, using the `Validity` type value `ABSOLUTE`. For more
    #   information, see [Validity][1] in this API reference and [Validity][2]
    #   in RFC 5280.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_Validity.html
    #   [2]: https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.5
    #
    # @option params [String] :idempotency_token
    #   Alphanumeric string that can be used to distinguish between calls to
    #   the **IssueCertificate** action. Idempotency tokens for
    #   **IssueCertificate** time out after one minute. Therefore, if you call
    #   **IssueCertificate** multiple times with the same idempotency token
    #   within one minute, Amazon Web Services Private CA recognizes that you
    #   are requesting only one certificate and will issue only one. If you
    #   change the idempotency token for each call, Amazon Web Services
    #   Private CA recognizes that you are requesting multiple certificates.
    #
    # @return [Types::IssueCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IssueCertificateResponse#certificate_arn #certificate_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.issue_certificate({
    #     api_passthrough: {
    #       extensions: {
    #         certificate_policies: [
    #           {
    #             cert_policy_id: "CustomObjectIdentifier", # required
    #             policy_qualifiers: [
    #               {
    #                 policy_qualifier_id: "CPS", # required, accepts CPS
    #                 qualifier: { # required
    #                   cps_uri: "String256", # required
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         extended_key_usage: [
    #           {
    #             extended_key_usage_type: "SERVER_AUTH", # accepts SERVER_AUTH, CLIENT_AUTH, CODE_SIGNING, EMAIL_PROTECTION, TIME_STAMPING, OCSP_SIGNING, SMART_CARD_LOGIN, DOCUMENT_SIGNING, CERTIFICATE_TRANSPARENCY
    #             extended_key_usage_object_identifier: "CustomObjectIdentifier",
    #           },
    #         ],
    #         key_usage: {
    #           digital_signature: false,
    #           non_repudiation: false,
    #           key_encipherment: false,
    #           data_encipherment: false,
    #           key_agreement: false,
    #           key_cert_sign: false,
    #           crl_sign: false,
    #           encipher_only: false,
    #           decipher_only: false,
    #         },
    #         subject_alternative_names: [
    #           {
    #             other_name: {
    #               type_id: "CustomObjectIdentifier", # required
    #               value: "String256", # required
    #             },
    #             rfc_822_name: "String256",
    #             dns_name: "String253",
    #             directory_name: {
    #               country: "CountryCodeString",
    #               organization: "String64",
    #               organizational_unit: "String64",
    #               distinguished_name_qualifier: "ASN1PrintableString64",
    #               state: "String128",
    #               common_name: "String64",
    #               serial_number: "ASN1PrintableString64",
    #               locality: "String128",
    #               title: "String64",
    #               surname: "String40",
    #               given_name: "String16",
    #               initials: "String5",
    #               pseudonym: "String128",
    #               generation_qualifier: "String3",
    #               custom_attributes: [
    #                 {
    #                   object_identifier: "CustomObjectIdentifier", # required
    #                   value: "String1To256", # required
    #                 },
    #               ],
    #             },
    #             edi_party_name: {
    #               party_name: "String256", # required
    #               name_assigner: "String256",
    #             },
    #             uniform_resource_identifier: "String253",
    #             ip_address: "String39",
    #             registered_id: "CustomObjectIdentifier",
    #           },
    #         ],
    #         custom_extensions: [
    #           {
    #             object_identifier: "CustomObjectIdentifier", # required
    #             value: "Base64String1To4096", # required
    #             critical: false,
    #           },
    #         ],
    #       },
    #       subject: {
    #         country: "CountryCodeString",
    #         organization: "String64",
    #         organizational_unit: "String64",
    #         distinguished_name_qualifier: "ASN1PrintableString64",
    #         state: "String128",
    #         common_name: "String64",
    #         serial_number: "ASN1PrintableString64",
    #         locality: "String128",
    #         title: "String64",
    #         surname: "String40",
    #         given_name: "String16",
    #         initials: "String5",
    #         pseudonym: "String128",
    #         generation_qualifier: "String3",
    #         custom_attributes: [
    #           {
    #             object_identifier: "CustomObjectIdentifier", # required
    #             value: "String1To256", # required
    #           },
    #         ],
    #       },
    #     },
    #     certificate_authority_arn: "Arn", # required
    #     csr: "data", # required
    #     signing_algorithm: "SHA256WITHECDSA", # required, accepts SHA256WITHECDSA, SHA384WITHECDSA, SHA512WITHECDSA, SHA256WITHRSA, SHA384WITHRSA, SHA512WITHRSA
    #     template_arn: "Arn",
    #     validity: { # required
    #       value: 1, # required
    #       type: "END_DATE", # required, accepts END_DATE, ABSOLUTE, DAYS, MONTHS, YEARS
    #     },
    #     validity_not_before: {
    #       value: 1, # required
    #       type: "END_DATE", # required, accepts END_DATE, ABSOLUTE, DAYS, MONTHS, YEARS
    #     },
    #     idempotency_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/IssueCertificate AWS API Documentation
    #
    # @overload issue_certificate(params = {})
    # @param [Hash] params ({})
    def issue_certificate(params = {}, options = {})
      req = build_request(:issue_certificate, params)
      req.send_request(options)
    end

    # Lists the private certificate authorities that you created by using
    # the [CreateCertificateAuthority][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @option params [String] :next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #
    # @option params [Integer] :max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response on each page. If additional
    #   items exist beyond the number you specify, the `NextToken` element is
    #   sent in the response. Use this `NextToken` value in a subsequent
    #   request to retrieve additional items.
    #
    # @option params [String] :resource_owner
    #   Use this parameter to filter the returned set of certificate
    #   authorities based on their owner. The default is SELF.
    #
    # @return [Types::ListCertificateAuthoritiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCertificateAuthoritiesResponse#certificate_authorities #certificate_authorities} => Array&lt;Types::CertificateAuthority&gt;
    #   * {Types::ListCertificateAuthoritiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificate_authorities({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     resource_owner: "SELF", # accepts SELF, OTHER_ACCOUNTS
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_authorities #=> Array
    #   resp.certificate_authorities[0].arn #=> String
    #   resp.certificate_authorities[0].owner_account #=> String
    #   resp.certificate_authorities[0].created_at #=> Time
    #   resp.certificate_authorities[0].last_state_change_at #=> Time
    #   resp.certificate_authorities[0].type #=> String, one of "ROOT", "SUBORDINATE"
    #   resp.certificate_authorities[0].serial #=> String
    #   resp.certificate_authorities[0].status #=> String, one of "CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"
    #   resp.certificate_authorities[0].not_before #=> Time
    #   resp.certificate_authorities[0].not_after #=> Time
    #   resp.certificate_authorities[0].failure_reason #=> String, one of "REQUEST_TIMED_OUT", "UNSUPPORTED_ALGORITHM", "OTHER"
    #   resp.certificate_authorities[0].certificate_authority_configuration.key_algorithm #=> String, one of "RSA_2048", "RSA_4096", "EC_prime256v1", "EC_secp384r1"
    #   resp.certificate_authorities[0].certificate_authority_configuration.signing_algorithm #=> String, one of "SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA"
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.country #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.organization #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.organizational_unit #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.distinguished_name_qualifier #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.state #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.common_name #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.serial_number #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.locality #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.title #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.surname #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.given_name #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.initials #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.pseudonym #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.generation_qualifier #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.custom_attributes #=> Array
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.custom_attributes[0].object_identifier #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.custom_attributes[0].value #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.digital_signature #=> Boolean
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.non_repudiation #=> Boolean
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.key_encipherment #=> Boolean
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.data_encipherment #=> Boolean
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.key_agreement #=> Boolean
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.key_cert_sign #=> Boolean
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.crl_sign #=> Boolean
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.encipher_only #=> Boolean
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.decipher_only #=> Boolean
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access #=> Array
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_method.custom_object_identifier #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_method.access_method_type #=> String, one of "CA_REPOSITORY", "RESOURCE_PKI_MANIFEST", "RESOURCE_PKI_NOTIFY"
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.other_name.type_id #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.other_name.value #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.rfc_822_name #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.dns_name #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.country #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.organization #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.organizational_unit #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.distinguished_name_qualifier #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.state #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.common_name #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.serial_number #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.locality #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.title #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.surname #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.given_name #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.initials #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.pseudonym #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.generation_qualifier #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.custom_attributes #=> Array
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.custom_attributes[0].object_identifier #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name.custom_attributes[0].value #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.edi_party_name.party_name #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.edi_party_name.name_assigner #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.uniform_resource_identifier #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.ip_address #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.registered_id #=> String
    #   resp.certificate_authorities[0].revocation_configuration.crl_configuration.enabled #=> Boolean
    #   resp.certificate_authorities[0].revocation_configuration.crl_configuration.expiration_in_days #=> Integer
    #   resp.certificate_authorities[0].revocation_configuration.crl_configuration.custom_cname #=> String
    #   resp.certificate_authorities[0].revocation_configuration.crl_configuration.s3_bucket_name #=> String
    #   resp.certificate_authorities[0].revocation_configuration.crl_configuration.s3_object_acl #=> String, one of "PUBLIC_READ", "BUCKET_OWNER_FULL_CONTROL"
    #   resp.certificate_authorities[0].revocation_configuration.ocsp_configuration.enabled #=> Boolean
    #   resp.certificate_authorities[0].revocation_configuration.ocsp_configuration.ocsp_custom_cname #=> String
    #   resp.certificate_authorities[0].restorable_until #=> Time
    #   resp.certificate_authorities[0].key_storage_security_standard #=> String, one of "FIPS_140_2_LEVEL_2_OR_HIGHER", "FIPS_140_2_LEVEL_3_OR_HIGHER"
    #   resp.certificate_authorities[0].usage_mode #=> String, one of "GENERAL_PURPOSE", "SHORT_LIVED_CERTIFICATE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListCertificateAuthorities AWS API Documentation
    #
    # @overload list_certificate_authorities(params = {})
    # @param [Hash] params ({})
    def list_certificate_authorities(params = {}, options = {})
      req = build_request(:list_certificate_authorities, params)
      req.send_request(options)
    end

    # List all permissions on a private CA, if any, granted to the
    # Certificate Manager (ACM) service principal (acm.amazonaws.com).
    #
    # These permissions allow ACM to issue and renew ACM certificates that
    # reside in the same Amazon Web Services account as the CA.
    #
    # Permissions can be granted with the [CreatePermission][1] action and
    # revoked with the [DeletePermission][2] action.
    #
    # **About Permissions**
    #
    # * If the private CA and the certificates it issues reside in the same
    #   account, you can use `CreatePermission` to grant permissions for ACM
    #   to carry out automatic certificate renewals.
    #
    # * For automatic certificate renewal to succeed, the ACM service
    #   principal needs permissions to create, retrieve, and list
    #   certificates.
    #
    # * If the private CA and the ACM certificates reside in different
    #   accounts, then permissions cannot be used to enable automatic
    #   renewals. Instead, the ACM certificate owner must set up a
    #   resource-based policy to enable cross-account issuance and renewals.
    #   For more information, see [Using a Resource Based Policy with Amazon
    #   Web Services Private CA][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreatePermission.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePermission.html
    # [3]: https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Number (ARN) of the private CA to inspect. You can
    #   find the ARN by calling the [ListCertificateAuthorities][1] action.
    #   This must be of the form:
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012`
    #   You can get a private CA's ARN by running the
    #   [ListCertificateAuthorities][1] action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html
    #
    # @option params [String] :next_token
    #   When paginating results, use this parameter in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of **NextToken** from the response you just received.
    #
    # @option params [Integer] :max_results
    #   When paginating results, use this parameter to specify the maximum
    #   number of items to return in the response. If additional items exist
    #   beyond the number you specify, the **NextToken** element is sent in
    #   the response. Use this **NextToken** value in a subsequent request to
    #   retrieve additional items.
    #
    # @return [Types::ListPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionsResponse#permissions #permissions} => Array&lt;Types::Permission&gt;
    #   * {Types::ListPermissionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permissions({
    #     certificate_authority_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].certificate_authority_arn #=> String
    #   resp.permissions[0].created_at #=> Time
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].source_account #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String, one of "IssueCertificate", "GetCertificate", "ListPermissions"
    #   resp.permissions[0].policy #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListPermissions AWS API Documentation
    #
    # @overload list_permissions(params = {})
    # @param [Hash] params ({})
    def list_permissions(params = {}, options = {})
      req = build_request(:list_permissions, params)
      req.send_request(options)
    end

    # Lists the tags, if any, that are associated with your private CA or
    # one that has been shared with you. Tags are labels that you can use to
    # identify and organize your CAs. Each tag consists of a key and an
    # optional value. Call the [TagCertificateAuthority][1] action to add
    # one or more tags to your CA. Call the [UntagCertificateAuthority][2]
    # action to remove tags.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_TagCertificateAuthority.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_UntagCertificateAuthority.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called the
    #   [CreateCertificateAuthority][1] action. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @option params [String] :next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of **NextToken** from the response you just received.
    #
    # @option params [Integer] :max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response. If additional items exist
    #   beyond the number you specify, the **NextToken** element is sent in
    #   the response. Use this **NextToken** value in a subsequent request to
    #   retrieve additional items.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     certificate_authority_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Attaches a resource-based policy to a private CA.
    #
    # A policy can also be applied by sharing a private CA through Amazon
    # Web Services Resource Access Manager (RAM). For more information, see
    # [Attach a Policy for Cross-Account Access][1].
    #
    # The policy can be displayed with [GetPolicy][2] and removed with
    # [DeletePolicy][3].
    #
    # **About Policies**
    #
    # * A policy grants access on a private CA to an Amazon Web Services
    #   customer account, to Amazon Web Services Organizations, or to an
    #   Amazon Web Services Organizations unit. Policies are under the
    #   control of a CA administrator. For more information, see [Using a
    #   Resource Based Policy with Amazon Web Services Private CA][4].
    #
    # * A policy permits a user of Certificate Manager (ACM) to issue ACM
    #   certificates signed by a CA in another account.
    #
    # * For ACM to manage automatic renewal of these certificates, the ACM
    #   user must configure a Service Linked Role (SLR). The SLR allows the
    #   ACM service to assume the identity of the user, subject to
    #   confirmation against the Amazon Web Services Private CA policy. For
    #   more information, see [Using a Service Linked Role with ACM][5].
    #
    # * Updates made in Amazon Web Services Resource Manager (RAM) are
    #   reflected in policies. For more information, see [Attach a Policy
    #   for Cross-Account Access][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetPolicy.html
    # [3]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePolicy.html
    # [4]: https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html
    # [5]: https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of the private CA to associate with
    #   the policy. The ARN of the CA can be found by calling the
    #   [ListCertificateAuthorities][1] action.
    #
    #
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html
    #
    # @option params [required, String] :policy
    #   The path and file name of a JSON-formatted IAM policy to attach to the
    #   specified private CA resource. If this policy does not contain all
    #   required statements or if it includes any statement that is not
    #   allowed, the `PutPolicy` action returns an `InvalidPolicyException`.
    #   For information about IAM policy and statement structure, see
    #   [Overview of JSON Policies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_policy({
    #     resource_arn: "Arn", # required
    #     policy: "AWSPolicy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/PutPolicy AWS API Documentation
    #
    # @overload put_policy(params = {})
    # @param [Hash] params ({})
    def put_policy(params = {}, options = {})
      req = build_request(:put_policy, params)
      req.send_request(options)
    end

    # Restores a certificate authority (CA) that is in the `DELETED` state.
    # You can restore a CA during the period that you defined in the
    # **PermanentDeletionTimeInDays** parameter of the
    # [DeleteCertificateAuthority][1] action. Currently, you can specify 7
    # to 30 days. If you did not specify a **PermanentDeletionTimeInDays**
    # value, by default you can restore the CA at any time in a 30 day
    # period. You can check the time remaining in the restoration period of
    # a private CA in the `DELETED` state by calling the
    # [DescribeCertificateAuthority][2] or [ListCertificateAuthorities][3]
    # actions. The status of a restored CA is set to its pre-deletion status
    # when the **RestoreCertificateAuthority** action returns. To change its
    # status to `ACTIVE`, call the [UpdateCertificateAuthority][4] action.
    # If the private CA was in the `PENDING_CERTIFICATE` state at deletion,
    # you must use the [ImportCertificateAuthorityCertificate][5] action to
    # import a certificate authority into the private CA before it can be
    # activated. You cannot restore a CA after the restoration period has
    # ended.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeleteCertificateAuthority.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_DescribeCertificateAuthority.html
    # [3]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html
    # [4]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html
    # [5]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called the
    #   [CreateCertificateAuthority][1] action. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RestoreCertificateAuthority AWS API Documentation
    #
    # @overload restore_certificate_authority(params = {})
    # @param [Hash] params ({})
    def restore_certificate_authority(params = {}, options = {})
      req = build_request(:restore_certificate_authority, params)
      req.send_request(options)
    end

    # Revokes a certificate that was issued inside Amazon Web Services
    # Private CA. If you enable a certificate revocation list (CRL) when you
    # create or update your private CA, information about the revoked
    # certificates will be included in the CRL. Amazon Web Services Private
    # CA writes the CRL to an S3 bucket that you specify. A CRL is typically
    # updated approximately 30 minutes after a certificate is revoked. If
    # for any reason the CRL update fails, Amazon Web Services Private CA
    # attempts makes further attempts every 15 minutes. With Amazon
    # CloudWatch, you can create alarms for the metrics `CRLGenerated` and
    # `MisconfiguredCRLBucket`. For more information, see [Supported
    # CloudWatch Metrics][1].
    #
    # <note markdown="1"> Both Amazon Web Services Private CA and the IAM principal must have
    # permission to write to the S3 bucket that you specify. If the IAM
    # principal making the call does not have permission to write to the
    # bucket, then an exception is thrown. For more information, see [Access
    # policies for CRLs in Amazon S3][2].
    #
    #  </note>
    #
    # Amazon Web Services Private CA also writes revocation information to
    # the audit report. For more information, see
    # [CreateCertificateAuthorityAuditReport][3].
    #
    # <note markdown="1"> You cannot revoke a root CA self-signed certificate.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/userguide/PcaCloudWatch.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies
    # [3]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   Amazon Resource Name (ARN) of the private CA that issued the
    #   certificate to be revoked. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @option params [required, String] :certificate_serial
    #   Serial number of the certificate to be revoked. This must be in
    #   hexadecimal format. You can retrieve the serial number by calling
    #   [GetCertificate][1] with the Amazon Resource Name (ARN) of the
    #   certificate you want and the ARN of your private CA. The
    #   **GetCertificate** action retrieves the certificate in the PEM format.
    #   You can use the following OpenSSL command to list the certificate in
    #   text format and copy the hexadecimal serial number.
    #
    #   `openssl x509 -in file_path -text -noout`
    #
    #   You can also copy the serial number from the console or use the
    #   [DescribeCertificate][2] action in the *Certificate Manager API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificate.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html
    #
    # @option params [required, String] :revocation_reason
    #   Specifies why you revoked the certificate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_certificate({
    #     certificate_authority_arn: "Arn", # required
    #     certificate_serial: "String128", # required
    #     revocation_reason: "UNSPECIFIED", # required, accepts UNSPECIFIED, KEY_COMPROMISE, CERTIFICATE_AUTHORITY_COMPROMISE, AFFILIATION_CHANGED, SUPERSEDED, CESSATION_OF_OPERATION, PRIVILEGE_WITHDRAWN, A_A_COMPROMISE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RevokeCertificate AWS API Documentation
    #
    # @overload revoke_certificate(params = {})
    # @param [Hash] params ({})
    def revoke_certificate(params = {}, options = {})
      req = build_request(:revoke_certificate, params)
      req.send_request(options)
    end

    # Adds one or more tags to your private CA. Tags are labels that you can
    # use to identify and organize your Amazon Web Services resources. Each
    # tag consists of a key and an optional value. You specify the private
    # CA on input by its Amazon Resource Name (ARN). You specify the tag by
    # using a key-value pair. You can apply a tag to just one private CA if
    # you want to identify a specific characteristic of that CA, or you can
    # apply the same tag to multiple private CAs if you want to filter for a
    # common relationship among those CAs. To remove one or more tags, use
    # the [UntagCertificateAuthority][1] action. Call the [ListTags][2]
    # action to see what tags are associated with your CA.
    #
    # <note markdown="1"> To attach tags to a private CA during the creation procedure, a CA
    # administrator must first associate an inline IAM policy with the
    # `CreateCertificateAuthority` action and explicitly allow tagging. For
    # more information, see [Attaching tags to a CA at the time of
    # creation][3].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_UntagCertificateAuthority.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListTags.html
    # [3]: https://docs.aws.amazon.com/privateca/latest/userguide/auth-InlinePolicies.html#policy-tag-ca
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   List of tags to be associated with the CA.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/TagCertificateAuthority AWS API Documentation
    #
    # @overload tag_certificate_authority(params = {})
    # @param [Hash] params ({})
    def tag_certificate_authority(params = {}, options = {})
      req = build_request(:tag_certificate_authority, params)
      req.send_request(options)
    end

    # Remove one or more tags from your private CA. A tag consists of a
    # key-value pair. If you do not specify the value portion of the tag
    # when calling this action, the tag will be removed regardless of value.
    # If you specify a value, the tag is removed only if it is associated
    # with the specified value. To add tags to a private CA, use the
    # [TagCertificateAuthority][1]. Call the [ListTags][2] action to see
    # what tags are associated with your CA.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_TagCertificateAuthority.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListTags.html
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   List of tags to be removed from the CA.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/UntagCertificateAuthority AWS API Documentation
    #
    # @overload untag_certificate_authority(params = {})
    # @param [Hash] params ({})
    def untag_certificate_authority(params = {}, options = {})
      req = build_request(:untag_certificate_authority, params)
      req.send_request(options)
    end

    # Updates the status or configuration of a private certificate authority
    # (CA). Your private CA must be in the `ACTIVE` or `DISABLED` state
    # before you can update it. You can disable a private CA that is in the
    # `ACTIVE` state or make a CA that is in the `DISABLED` state active
    # again.
    #
    # <note markdown="1"> Both Amazon Web Services Private CA and the IAM principal must have
    # permission to write to the S3 bucket that you specify. If the IAM
    # principal making the call does not have permission to write to the
    # bucket, then an exception is thrown. For more information, see [Access
    # policies for CRLs in Amazon S3][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies
    #
    # @option params [required, String] :certificate_authority_arn
    #   Amazon Resource Name (ARN) of the private CA that issued the
    #   certificate to be revoked. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @option params [Types::RevocationConfiguration] :revocation_configuration
    #   Contains information to enable Online Certificate Status Protocol
    #   (OCSP) support, to enable a certificate revocation list (CRL), to
    #   enable both, or to enable neither. If this parameter is not supplied,
    #   existing capibilites remain unchanged. For more information, see the
    #   [OcspConfiguration][1] and [CrlConfiguration][2] types.
    #
    #   <note markdown="1"> The following requirements apply to revocation configurations.
    #
    #    * A configuration disabling CRLs or OCSP must contain only the
    #     `Enabled=False` parameter, and will fail if other parameters such as
    #     `CustomCname` or `ExpirationInDays` are included.
    #
    #   * In a CRL configuration, the `S3BucketName` parameter must conform to
    #     [Amazon S3 bucket naming rules][3].
    #
    #   * A configuration containing a custom Canonical Name (CNAME) parameter
    #     for CRLs or OCSP must conform to [RFC2396][4] restrictions on the
    #     use of special characters in a CNAME.
    #
    #   * In a CRL or OCSP configuration, the value of a CNAME parameter must
    #     not include a protocol prefix such as "http://" or "https://".
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_OcspConfiguration.html
    #   [2]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html
    #   [3]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html
    #   [4]: https://www.ietf.org/rfc/rfc2396.txt
    #
    # @option params [String] :status
    #   Status of your private CA.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #     revocation_configuration: {
    #       crl_configuration: {
    #         enabled: false, # required
    #         expiration_in_days: 1,
    #         custom_cname: "CnameString",
    #         s3_bucket_name: "S3BucketName3To255",
    #         s3_object_acl: "PUBLIC_READ", # accepts PUBLIC_READ, BUCKET_OWNER_FULL_CONTROL
    #       },
    #       ocsp_configuration: {
    #         enabled: false, # required
    #         ocsp_custom_cname: "CnameString",
    #       },
    #     },
    #     status: "CREATING", # accepts CREATING, PENDING_CERTIFICATE, ACTIVE, DELETED, DISABLED, EXPIRED, FAILED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/UpdateCertificateAuthority AWS API Documentation
    #
    # @overload update_certificate_authority(params = {})
    # @param [Hash] params ({})
    def update_certificate_authority(params = {}, options = {})
      req = build_request(:update_certificate_authority, params)
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
      context[:gem_name] = 'aws-sdk-acmpca'
      context[:gem_version] = '1.59.0'
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
    # | waiter_name                       | params                                               | :delay   | :max_attempts |
    # | --------------------------------- | ---------------------------------------------------- | -------- | ------------- |
    # | audit_report_created              | {Client#describe_certificate_authority_audit_report} | 3        | 60            |
    # | certificate_authority_csr_created | {Client#get_certificate_authority_csr}               | 3        | 60            |
    # | certificate_issued                | {Client#get_certificate}                             | 3        | 60            |
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
        audit_report_created: Waiters::AuditReportCreated,
        certificate_authority_csr_created: Waiters::CertificateAuthorityCSRCreated,
        certificate_issued: Waiters::CertificateIssued
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
