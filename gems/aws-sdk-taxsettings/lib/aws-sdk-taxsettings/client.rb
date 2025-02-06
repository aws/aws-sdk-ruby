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

module Aws::TaxSettings
  # An API client for TaxSettings.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::TaxSettings::Client.new(
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

    @identifier = :taxsettings

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
    add_plugin(Aws::TaxSettings::Plugins::Endpoints)

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
    #   @option options [Aws::TaxSettings::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::TaxSettings::EndpointParameters`.
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

    # Deletes tax registration for multiple accounts in batch. This can be
    # used to delete tax registrations for up to five accounts in one batch.
    #
    # <note markdown="1"> This API operation can't be used to delete your tax registration in
    # Brazil. Use the [Payment preferences][1] page in the Billing and Cost
    # Management console instead.
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods
    #
    # @option params [required, Array<String>] :account_ids
    #   List of unique account identifiers.
    #
    # @return [Types::BatchDeleteTaxRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteTaxRegistrationResponse#errors #errors} => Array&lt;Types::BatchDeleteTaxRegistrationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_tax_registration({
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].account_id #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BatchDeleteTaxRegistration AWS API Documentation
    #
    # @overload batch_delete_tax_registration(params = {})
    # @param [Hash] params ({})
    def batch_delete_tax_registration(params = {}, options = {})
      req = build_request(:batch_delete_tax_registration, params)
      req.send_request(options)
    end

    # Get the active tax exemptions for a given list of accounts.
    #
    # @option params [required, Array<String>] :account_ids
    #   List of unique account identifiers.
    #
    # @return [Types::BatchGetTaxExemptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetTaxExemptionsResponse#failed_accounts #failed_accounts} => Array&lt;String&gt;
    #   * {Types::BatchGetTaxExemptionsResponse#tax_exemption_details_map #tax_exemption_details_map} => Hash&lt;String,Types::TaxExemptionDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_tax_exemptions({
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_accounts #=> Array
    #   resp.failed_accounts[0] #=> String
    #   resp.tax_exemption_details_map #=> Hash
    #   resp.tax_exemption_details_map["AccountId"].heritage_obtained_details #=> Boolean
    #   resp.tax_exemption_details_map["AccountId"].heritage_obtained_parent_entity #=> String
    #   resp.tax_exemption_details_map["AccountId"].heritage_obtained_reason #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions #=> Array
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].authority.country #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].authority.state #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].effective_date #=> Time
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].expiration_date #=> Time
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].status #=> String, one of "None", "Valid", "Expired", "Pending"
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].system_effective_date #=> Time
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].tax_exemption_type.applicable_jurisdictions #=> Array
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].tax_exemption_type.applicable_jurisdictions[0].country #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].tax_exemption_type.applicable_jurisdictions[0].state #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].tax_exemption_type.description #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].tax_exemption_type.display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BatchGetTaxExemptions AWS API Documentation
    #
    # @overload batch_get_tax_exemptions(params = {})
    # @param [Hash] params ({})
    def batch_get_tax_exemptions(params = {}, options = {})
      req = build_request(:batch_get_tax_exemptions, params)
      req.send_request(options)
    end

    # Adds or updates tax registration for multiple accounts in batch. This
    # can be used to add or update tax registrations for up to five accounts
    # in one batch. You can't set a TRN if there's a pending TRN. You'll
    # need to delete the pending TRN first.
    #
    # To call this API operation for specific countries, see the following
    # country-specific requirements.
    #
    # **Bangladesh**
    #
    # * You must specify the tax registration certificate document in the
    #   `taxRegistrationDocuments` field of the `VerificationDetails`
    #   object.
    #
    # ^
    #
    # **Brazil**
    #
    # * You must complete the tax registration process in the [Payment
    #   preferences][1] page in the Billing and Cost Management console.
    #   After your TRN and billing address are verified, you can call this
    #   API operation.
    #
    # * For Amazon Web Services accounts created through Organizations, you
    #   can call this API operation when you don't have a billing address.
    #
    # **Georgia**
    #
    # * The valid `personType` values are `Physical Person` and `Business`.
    #
    # ^
    #
    # **Kenya**
    #
    # * You must specify the `personType` in the `kenyaAdditionalInfo` field
    #   of the `additionalTaxInformation` object.
    #
    # * If the `personType` is `Physical Person`, you must specify the tax
    #   registration certificate document in the `taxRegistrationDocuments`
    #   field of the `VerificationDetails` object.
    #
    # **Malaysia**
    #
    # * The sector valid values are `Business` and `Individual`.
    #
    # * `RegistrationType` valid values are `NRIC` for individual, and TIN
    #   and sales and service tax (SST) for Business.
    #
    # * For individual, you can specify the `taxInformationNumber` in
    #   `MalaysiaAdditionalInfo` with NRIC type, and a valid `MyKad` or NRIC
    #   number.
    #
    # * For business, you must specify a `businessRegistrationNumber` in
    #   `MalaysiaAdditionalInfo` with a TIN type and tax identification
    #   number.
    #
    # * For business resellers, you must specify a
    #   `businessRegistrationNumber` and `taxInformationNumber` in
    #   `MalaysiaAdditionalInfo` with a sales and service tax (SST) type and
    #   a valid SST number.
    #
    # * For business resellers with service codes, you must specify
    #   `businessRegistrationNumber`, `taxInformationNumber`, and distinct
    #   `serviceTaxCodes` in `MalaysiaAdditionalInfo` with a SST type and
    #   valid sales and service tax (SST) number. By using this API
    #   operation, Amazon Web Services registers your self-declaration that
    #   you’re an authorized business reseller registered with the Royal
    #   Malaysia Customs Department (RMCD), and have a valid SST number.
    #
    # * Amazon Web Services reserves the right to seek additional
    #   information and/or take other actions to support your
    #   self-declaration as appropriate.
    #
    # * Amazon Web Services is currently registered under the following
    #   service tax codes. You must include at least one of the service tax
    #   codes in the service tax code strings to declare yourself as an
    #   authorized registered business reseller.
    #
    #   Taxable service and service tax codes:
    #
    #   Consultancy - 9907061674
    #
    #   Training or coaching service - 9907071685
    #
    #   IT service - 9907101676
    #
    #   Digital services and electronic medium - 9907121690
    #
    # **Nepal**
    #
    # * The sector valid values are `Business` and `Individual`.
    #
    # ^
    #
    # **Saudi Arabia**
    #
    # * For `address`, you must specify `addressLine3`.
    #
    # ^
    #
    # **South Korea**
    #
    # * You must specify the `certifiedEmailId` and `legalName` in the
    #   `TaxRegistrationEntry` object. Use Korean characters for
    #   `legalName`.
    #
    # * You must specify the `businessRepresentativeName`, `itemOfBusiness`,
    #   and `lineOfBusiness` in the `southKoreaAdditionalInfo` field of the
    #   `additionalTaxInformation` object. Use Korean characters for these
    #   fields.
    #
    # * You must specify the tax registration certificate document in the
    #   `taxRegistrationDocuments` field of the `VerificationDetails`
    #   object.
    #
    # * For the `address` object, use Korean characters for `addressLine1`,
    #   `addressLine2` `city`, `postalCode`, and `stateOrRegion`.
    #
    # **Spain**
    #
    # * You must specify the `registrationType` in the `spainAdditionalInfo`
    #   field of the `additionalTaxInformation` object.
    #
    # * If the `registrationType` is `Local`, you must specify the tax
    #   registration certificate document in the `taxRegistrationDocuments`
    #   field of the `VerificationDetails` object.
    #
    # **Turkey**
    #
    # * You must specify the `sector` in the `taxRegistrationEntry` object.
    #
    # * If your `sector` is `Business`, `Individual`, or `Government`:
    #
    #   * Specify the `taxOffice`. If your `sector` is `Individual`, don't
    #     enter this value.
    #
    #   * (Optional) Specify the `kepEmailId`. If your `sector` is
    #     `Individual`, don't enter this value.
    #
    #   * **Note:** In the **Tax Settings** page of the Billing console,
    #     `Government` appears as **Public institutions**
    # * If your `sector` is `Business` and you're subject to KDV tax, you
    #   must specify your industry in the `industries` field.
    #
    # * For `address`, you must specify `districtOrCounty`.
    #
    # **Ukraine**
    #
    # * The sector valid values are `Business` and `Individual`.
    #
    # ^
    #
    #
    #
    # [1]: https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods
    #
    # @option params [required, Array<String>] :account_ids
    #   List of unique account identifiers.
    #
    # @option params [required, Types::TaxRegistrationEntry] :tax_registration_entry
    #   Your TRN information that will be stored to the accounts mentioned in
    #   `putEntries`.
    #
    # @return [Types::BatchPutTaxRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutTaxRegistrationResponse#errors #errors} => Array&lt;Types::BatchPutTaxRegistrationError&gt;
    #   * {Types::BatchPutTaxRegistrationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_tax_registration({
    #     account_ids: ["AccountId"], # required
    #     tax_registration_entry: { # required
    #       additional_tax_information: {
    #         canada_additional_info: {
    #           canada_quebec_sales_tax_number: "CanadaQuebecSalesTaxNumberString",
    #           canada_retail_sales_tax_number: "CanadaRetailSalesTaxNumberString",
    #           is_reseller_account: false,
    #           provincial_sales_tax_id: "CanadaProvincialSalesTaxIdString",
    #         },
    #         estonia_additional_info: {
    #           registry_commercial_code: "RegistryCommercialCode", # required
    #         },
    #         georgia_additional_info: {
    #           person_type: "Legal Person", # required, accepts Legal Person, Physical Person, Business
    #         },
    #         israel_additional_info: {
    #           customer_type: "Business", # required, accepts Business, Individual
    #           dealer_type: "Authorized", # required, accepts Authorized, Non-authorized
    #         },
    #         italy_additional_info: {
    #           cig_number: "CigNumber",
    #           cup_number: "CupNumber",
    #           sdi_account_id: "SdiAccountId",
    #           tax_code: "TaxCode",
    #         },
    #         kenya_additional_info: {
    #           person_type: "Legal Person", # required, accepts Legal Person, Physical Person, Business
    #         },
    #         malaysia_additional_info: {
    #           business_registration_number: "BusinessRegistrationNumber",
    #           service_tax_codes: ["Consultancy"], # accepts Consultancy, Digital Service And Electronic Medium, IT Services, Training Or Coaching
    #           tax_information_number: "TaxInformationNumber",
    #         },
    #         poland_additional_info: {
    #           individual_registration_number: "IndividualRegistrationNumber",
    #           is_group_vat_enabled: false,
    #         },
    #         romania_additional_info: {
    #           tax_registration_number_type: "TaxRegistrationNumber", # required, accepts TaxRegistrationNumber, LocalRegistrationNumber
    #         },
    #         saudi_arabia_additional_info: {
    #           tax_registration_number_type: "TaxRegistrationNumber", # accepts TaxRegistrationNumber, TaxIdentificationNumber, CommercialRegistrationNumber
    #         },
    #         south_korea_additional_info: {
    #           business_representative_name: "BusinessRepresentativeName", # required
    #           item_of_business: "ItemOfBusiness", # required
    #           line_of_business: "LineOfBusiness", # required
    #         },
    #         spain_additional_info: {
    #           registration_type: "Intra-EU", # required, accepts Intra-EU, Local
    #         },
    #         turkey_additional_info: {
    #           industries: "CirculatingOrg", # accepts CirculatingOrg, ProfessionalOrg, Banks, Insurance, PensionAndBenefitFunds, DevelopmentAgencies
    #           kep_email_id: "KepEmailId",
    #           secondary_tax_id: "SecondaryTaxId",
    #           tax_office: "TaxOffice",
    #         },
    #         ukraine_additional_info: {
    #           ukraine_trn_type: "Business", # required, accepts Business, Individual
    #         },
    #       },
    #       certified_email_id: "CertifiedEmailId",
    #       legal_address: {
    #         address_line_1: "AddressLine1", # required
    #         address_line_2: "AddressLine2",
    #         address_line_3: "AddressLine3",
    #         city: "City", # required
    #         country_code: "CountryCode", # required
    #         district_or_county: "District",
    #         postal_code: "PostalCode", # required
    #         state_or_region: "State",
    #       },
    #       legal_name: "LegalName",
    #       registration_id: "RegistrationId", # required
    #       registration_type: "VAT", # required, accepts VAT, GST, CPF, CNPJ, SST, TIN, NRIC
    #       sector: "Business", # accepts Business, Individual, Government
    #       verification_details: {
    #         date_of_birth: "DateOfBirth",
    #         tax_registration_documents: [
    #           {
    #             file: {
    #               file_content: "data", # required
    #               file_name: "TaxDocumentName", # required
    #             },
    #             s3_location: {
    #               bucket: "S3BucketName", # required
    #               key: "S3Key", # required
    #             },
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].account_id #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #   resp.status #=> String, one of "Verified", "Pending", "Deleted", "Rejected"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BatchPutTaxRegistration AWS API Documentation
    #
    # @overload batch_put_tax_registration(params = {})
    # @param [Hash] params ({})
    def batch_put_tax_registration(params = {}, options = {})
      req = build_request(:batch_put_tax_registration, params)
      req.send_request(options)
    end

    # Deletes a supplemental tax registration for a single account.
    #
    # @option params [required, String] :authority_id
    #   The unique authority Id for the supplemental TRN information that
    #   needs to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_supplemental_tax_registration({
    #     authority_id: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/DeleteSupplementalTaxRegistration AWS API Documentation
    #
    # @overload delete_supplemental_tax_registration(params = {})
    # @param [Hash] params ({})
    def delete_supplemental_tax_registration(params = {}, options = {})
      req = build_request(:delete_supplemental_tax_registration, params)
      req.send_request(options)
    end

    # Deletes tax registration for a single account.
    #
    # <note markdown="1"> This API operation can't be used to delete your tax registration in
    # Brazil. Use the [Payment preferences][1] page in the Billing and Cost
    # Management console instead.
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods
    #
    # @option params [String] :account_id
    #   Unique account identifier for the TRN information that needs to be
    #   deleted. If this isn't passed, the account ID corresponding to the
    #   credentials of the API caller will be used for this parameter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tax_registration({
    #     account_id: "AccountId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/DeleteTaxRegistration AWS API Documentation
    #
    # @overload delete_tax_registration(params = {})
    # @param [Hash] params ({})
    def delete_tax_registration(params = {}, options = {})
      req = build_request(:delete_tax_registration, params)
      req.send_request(options)
    end

    # Get supported tax exemption types.
    #
    # @return [Types::GetTaxExemptionTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTaxExemptionTypesResponse#tax_exemption_types #tax_exemption_types} => Array&lt;Types::TaxExemptionType&gt;
    #
    # @example Response structure
    #
    #   resp.tax_exemption_types #=> Array
    #   resp.tax_exemption_types[0].applicable_jurisdictions #=> Array
    #   resp.tax_exemption_types[0].applicable_jurisdictions[0].country #=> String
    #   resp.tax_exemption_types[0].applicable_jurisdictions[0].state #=> String
    #   resp.tax_exemption_types[0].description #=> String
    #   resp.tax_exemption_types[0].display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxExemptionTypes AWS API Documentation
    #
    # @overload get_tax_exemption_types(params = {})
    # @param [Hash] params ({})
    def get_tax_exemption_types(params = {}, options = {})
      req = build_request(:get_tax_exemption_types, params)
      req.send_request(options)
    end

    # The get account tax inheritance status.
    #
    # @return [Types::GetTaxInheritanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTaxInheritanceResponse#heritage_status #heritage_status} => String
    #
    # @example Response structure
    #
    #   resp.heritage_status #=> String, one of "OptIn", "OptOut"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxInheritance AWS API Documentation
    #
    # @overload get_tax_inheritance(params = {})
    # @param [Hash] params ({})
    def get_tax_inheritance(params = {}, options = {})
      req = build_request(:get_tax_inheritance, params)
      req.send_request(options)
    end

    # Retrieves tax registration for a single account.
    #
    # @option params [String] :account_id
    #   Your unique account identifier.
    #
    # @return [Types::GetTaxRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTaxRegistrationResponse#tax_registration #tax_registration} => Types::TaxRegistration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tax_registration({
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.tax_registration.additional_tax_information.brazil_additional_info.ccm_code #=> String
    #   resp.tax_registration.additional_tax_information.brazil_additional_info.legal_nature_code #=> String
    #   resp.tax_registration.additional_tax_information.canada_additional_info.canada_quebec_sales_tax_number #=> String
    #   resp.tax_registration.additional_tax_information.canada_additional_info.canada_retail_sales_tax_number #=> String
    #   resp.tax_registration.additional_tax_information.canada_additional_info.is_reseller_account #=> Boolean
    #   resp.tax_registration.additional_tax_information.canada_additional_info.provincial_sales_tax_id #=> String
    #   resp.tax_registration.additional_tax_information.estonia_additional_info.registry_commercial_code #=> String
    #   resp.tax_registration.additional_tax_information.georgia_additional_info.person_type #=> String, one of "Legal Person", "Physical Person", "Business"
    #   resp.tax_registration.additional_tax_information.india_additional_info.pan #=> String
    #   resp.tax_registration.additional_tax_information.israel_additional_info.customer_type #=> String, one of "Business", "Individual"
    #   resp.tax_registration.additional_tax_information.israel_additional_info.dealer_type #=> String, one of "Authorized", "Non-authorized"
    #   resp.tax_registration.additional_tax_information.italy_additional_info.cig_number #=> String
    #   resp.tax_registration.additional_tax_information.italy_additional_info.cup_number #=> String
    #   resp.tax_registration.additional_tax_information.italy_additional_info.sdi_account_id #=> String
    #   resp.tax_registration.additional_tax_information.italy_additional_info.tax_code #=> String
    #   resp.tax_registration.additional_tax_information.kenya_additional_info.person_type #=> String, one of "Legal Person", "Physical Person", "Business"
    #   resp.tax_registration.additional_tax_information.malaysia_additional_info.business_registration_number #=> String
    #   resp.tax_registration.additional_tax_information.malaysia_additional_info.service_tax_codes #=> Array
    #   resp.tax_registration.additional_tax_information.malaysia_additional_info.service_tax_codes[0] #=> String, one of "Consultancy", "Digital Service And Electronic Medium", "IT Services", "Training Or Coaching"
    #   resp.tax_registration.additional_tax_information.malaysia_additional_info.tax_information_number #=> String
    #   resp.tax_registration.additional_tax_information.poland_additional_info.individual_registration_number #=> String
    #   resp.tax_registration.additional_tax_information.poland_additional_info.is_group_vat_enabled #=> Boolean
    #   resp.tax_registration.additional_tax_information.romania_additional_info.tax_registration_number_type #=> String, one of "TaxRegistrationNumber", "LocalRegistrationNumber"
    #   resp.tax_registration.additional_tax_information.saudi_arabia_additional_info.tax_registration_number_type #=> String, one of "TaxRegistrationNumber", "TaxIdentificationNumber", "CommercialRegistrationNumber"
    #   resp.tax_registration.additional_tax_information.south_korea_additional_info.business_representative_name #=> String
    #   resp.tax_registration.additional_tax_information.south_korea_additional_info.item_of_business #=> String
    #   resp.tax_registration.additional_tax_information.south_korea_additional_info.line_of_business #=> String
    #   resp.tax_registration.additional_tax_information.spain_additional_info.registration_type #=> String, one of "Intra-EU", "Local"
    #   resp.tax_registration.additional_tax_information.turkey_additional_info.industries #=> String, one of "CirculatingOrg", "ProfessionalOrg", "Banks", "Insurance", "PensionAndBenefitFunds", "DevelopmentAgencies"
    #   resp.tax_registration.additional_tax_information.turkey_additional_info.kep_email_id #=> String
    #   resp.tax_registration.additional_tax_information.turkey_additional_info.secondary_tax_id #=> String
    #   resp.tax_registration.additional_tax_information.turkey_additional_info.tax_office #=> String
    #   resp.tax_registration.additional_tax_information.ukraine_additional_info.ukraine_trn_type #=> String, one of "Business", "Individual"
    #   resp.tax_registration.certified_email_id #=> String
    #   resp.tax_registration.legal_address.address_line_1 #=> String
    #   resp.tax_registration.legal_address.address_line_2 #=> String
    #   resp.tax_registration.legal_address.address_line_3 #=> String
    #   resp.tax_registration.legal_address.city #=> String
    #   resp.tax_registration.legal_address.country_code #=> String
    #   resp.tax_registration.legal_address.district_or_county #=> String
    #   resp.tax_registration.legal_address.postal_code #=> String
    #   resp.tax_registration.legal_address.state_or_region #=> String
    #   resp.tax_registration.legal_name #=> String
    #   resp.tax_registration.registration_id #=> String
    #   resp.tax_registration.registration_type #=> String, one of "VAT", "GST", "CPF", "CNPJ", "SST", "TIN", "NRIC"
    #   resp.tax_registration.sector #=> String, one of "Business", "Individual", "Government"
    #   resp.tax_registration.status #=> String, one of "Verified", "Pending", "Deleted", "Rejected"
    #   resp.tax_registration.tax_document_metadatas #=> Array
    #   resp.tax_registration.tax_document_metadatas[0].tax_document_access_token #=> String
    #   resp.tax_registration.tax_document_metadatas[0].tax_document_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxRegistration AWS API Documentation
    #
    # @overload get_tax_registration(params = {})
    # @param [Hash] params ({})
    def get_tax_registration(params = {}, options = {})
      req = build_request(:get_tax_registration, params)
      req.send_request(options)
    end

    # Downloads your tax documents to the Amazon S3 bucket that you specify
    # in your request.
    #
    # @option params [Types::DestinationS3Location] :destination_s3_location
    #   The Amazon S3 bucket that you specify to download your tax documents
    #   to.
    #
    # @option params [required, Types::TaxDocumentMetadata] :tax_document_metadata
    #   The metadata for your tax document.
    #
    # @return [Types::GetTaxRegistrationDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTaxRegistrationDocumentResponse#destination_file_path #destination_file_path} => String
    #   * {Types::GetTaxRegistrationDocumentResponse#presigned_s3_url #presigned_s3_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tax_registration_document({
    #     destination_s3_location: {
    #       bucket: "S3BucketName", # required
    #       prefix: "S3Prefix",
    #     },
    #     tax_document_metadata: { # required
    #       tax_document_access_token: "TaxDocumentAccessToken", # required
    #       tax_document_name: "TaxDocumentName", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_file_path #=> String
    #   resp.presigned_s3_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxRegistrationDocument AWS API Documentation
    #
    # @overload get_tax_registration_document(params = {})
    # @param [Hash] params ({})
    def get_tax_registration_document(params = {}, options = {})
      req = build_request(:get_tax_registration_document, params)
      req.send_request(options)
    end

    # Retrieves supplemental tax registrations for a single account.
    #
    # @option params [Integer] :max_results
    #   The number of `taxRegistrations` results you want in one response.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @return [Types::ListSupplementalTaxRegistrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSupplementalTaxRegistrationsResponse#next_token #next_token} => String
    #   * {Types::ListSupplementalTaxRegistrationsResponse#tax_registrations #tax_registrations} => Array&lt;Types::SupplementalTaxRegistration&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_supplemental_tax_registrations({
    #     max_results: 1,
    #     next_token: "PaginationTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tax_registrations #=> Array
    #   resp.tax_registrations[0].address.address_line_1 #=> String
    #   resp.tax_registrations[0].address.address_line_2 #=> String
    #   resp.tax_registrations[0].address.address_line_3 #=> String
    #   resp.tax_registrations[0].address.city #=> String
    #   resp.tax_registrations[0].address.country_code #=> String
    #   resp.tax_registrations[0].address.district_or_county #=> String
    #   resp.tax_registrations[0].address.postal_code #=> String
    #   resp.tax_registrations[0].address.state_or_region #=> String
    #   resp.tax_registrations[0].authority_id #=> String
    #   resp.tax_registrations[0].legal_name #=> String
    #   resp.tax_registrations[0].registration_id #=> String
    #   resp.tax_registrations[0].registration_type #=> String, one of "VAT"
    #   resp.tax_registrations[0].status #=> String, one of "Verified", "Pending", "Deleted", "Rejected"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ListSupplementalTaxRegistrations AWS API Documentation
    #
    # @overload list_supplemental_tax_registrations(params = {})
    # @param [Hash] params ({})
    def list_supplemental_tax_registrations(params = {}, options = {})
      req = build_request(:list_supplemental_tax_registrations, params)
      req.send_request(options)
    end

    # Retrieves the tax exemption of accounts listed in a consolidated
    # billing family.
    #
    # @option params [Integer] :max_results
    #   The number of results you want in one response.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @return [Types::ListTaxExemptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTaxExemptionsResponse#next_token #next_token} => String
    #   * {Types::ListTaxExemptionsResponse#tax_exemption_details_map #tax_exemption_details_map} => Hash&lt;String,Types::TaxExemptionDetails&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tax_exemptions({
    #     max_results: 1,
    #     next_token: "PaginationTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tax_exemption_details_map #=> Hash
    #   resp.tax_exemption_details_map["AccountId"].heritage_obtained_details #=> Boolean
    #   resp.tax_exemption_details_map["AccountId"].heritage_obtained_parent_entity #=> String
    #   resp.tax_exemption_details_map["AccountId"].heritage_obtained_reason #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions #=> Array
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].authority.country #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].authority.state #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].effective_date #=> Time
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].expiration_date #=> Time
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].status #=> String, one of "None", "Valid", "Expired", "Pending"
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].system_effective_date #=> Time
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].tax_exemption_type.applicable_jurisdictions #=> Array
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].tax_exemption_type.applicable_jurisdictions[0].country #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].tax_exemption_type.applicable_jurisdictions[0].state #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].tax_exemption_type.description #=> String
    #   resp.tax_exemption_details_map["AccountId"].tax_exemptions[0].tax_exemption_type.display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ListTaxExemptions AWS API Documentation
    #
    # @overload list_tax_exemptions(params = {})
    # @param [Hash] params ({})
    def list_tax_exemptions(params = {}, options = {})
      req = build_request(:list_tax_exemptions, params)
      req.send_request(options)
    end

    # Retrieves the tax registration of accounts listed in a consolidated
    # billing family. This can be used to retrieve up to 100 accounts' tax
    # registrations in one call (default 50).
    #
    # @option params [Integer] :max_results
    #   Number of `accountDetails` results you want in one response.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @return [Types::ListTaxRegistrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTaxRegistrationsResponse#account_details #account_details} => Array&lt;Types::AccountDetails&gt;
    #   * {Types::ListTaxRegistrationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tax_registrations({
    #     max_results: 1,
    #     next_token: "PaginationTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_details #=> Array
    #   resp.account_details[0].account_id #=> String
    #   resp.account_details[0].account_meta_data.account_name #=> String
    #   resp.account_details[0].account_meta_data.address.address_line_1 #=> String
    #   resp.account_details[0].account_meta_data.address.address_line_2 #=> String
    #   resp.account_details[0].account_meta_data.address.address_line_3 #=> String
    #   resp.account_details[0].account_meta_data.address.city #=> String
    #   resp.account_details[0].account_meta_data.address.country_code #=> String
    #   resp.account_details[0].account_meta_data.address.district_or_county #=> String
    #   resp.account_details[0].account_meta_data.address.postal_code #=> String
    #   resp.account_details[0].account_meta_data.address.state_or_region #=> String
    #   resp.account_details[0].account_meta_data.address_role_map #=> Hash
    #   resp.account_details[0].account_meta_data.address_role_map["AddressRoleType"].country_code #=> String
    #   resp.account_details[0].account_meta_data.address_role_map["AddressRoleType"].state_or_region #=> String
    #   resp.account_details[0].account_meta_data.address_type #=> String, one of "TaxAddress", "BillingAddress", "ContactAddress"
    #   resp.account_details[0].account_meta_data.seller #=> String
    #   resp.account_details[0].tax_inheritance_details.inheritance_obtained_reason #=> String
    #   resp.account_details[0].tax_inheritance_details.parent_entity_id #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.brazil_additional_info.ccm_code #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.brazil_additional_info.legal_nature_code #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.canada_additional_info.canada_quebec_sales_tax_number #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.canada_additional_info.canada_retail_sales_tax_number #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.canada_additional_info.is_reseller_account #=> Boolean
    #   resp.account_details[0].tax_registration.additional_tax_information.canada_additional_info.provincial_sales_tax_id #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.estonia_additional_info.registry_commercial_code #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.georgia_additional_info.person_type #=> String, one of "Legal Person", "Physical Person", "Business"
    #   resp.account_details[0].tax_registration.additional_tax_information.india_additional_info.pan #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.israel_additional_info.customer_type #=> String, one of "Business", "Individual"
    #   resp.account_details[0].tax_registration.additional_tax_information.israel_additional_info.dealer_type #=> String, one of "Authorized", "Non-authorized"
    #   resp.account_details[0].tax_registration.additional_tax_information.italy_additional_info.cig_number #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.italy_additional_info.cup_number #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.italy_additional_info.sdi_account_id #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.italy_additional_info.tax_code #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.kenya_additional_info.person_type #=> String, one of "Legal Person", "Physical Person", "Business"
    #   resp.account_details[0].tax_registration.additional_tax_information.malaysia_additional_info.business_registration_number #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.malaysia_additional_info.service_tax_codes #=> Array
    #   resp.account_details[0].tax_registration.additional_tax_information.malaysia_additional_info.service_tax_codes[0] #=> String, one of "Consultancy", "Digital Service And Electronic Medium", "IT Services", "Training Or Coaching"
    #   resp.account_details[0].tax_registration.additional_tax_information.malaysia_additional_info.tax_information_number #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.poland_additional_info.individual_registration_number #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.poland_additional_info.is_group_vat_enabled #=> Boolean
    #   resp.account_details[0].tax_registration.additional_tax_information.romania_additional_info.tax_registration_number_type #=> String, one of "TaxRegistrationNumber", "LocalRegistrationNumber"
    #   resp.account_details[0].tax_registration.additional_tax_information.saudi_arabia_additional_info.tax_registration_number_type #=> String, one of "TaxRegistrationNumber", "TaxIdentificationNumber", "CommercialRegistrationNumber"
    #   resp.account_details[0].tax_registration.additional_tax_information.south_korea_additional_info.business_representative_name #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.south_korea_additional_info.item_of_business #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.south_korea_additional_info.line_of_business #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.spain_additional_info.registration_type #=> String, one of "Intra-EU", "Local"
    #   resp.account_details[0].tax_registration.additional_tax_information.turkey_additional_info.industries #=> String, one of "CirculatingOrg", "ProfessionalOrg", "Banks", "Insurance", "PensionAndBenefitFunds", "DevelopmentAgencies"
    #   resp.account_details[0].tax_registration.additional_tax_information.turkey_additional_info.kep_email_id #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.turkey_additional_info.secondary_tax_id #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.turkey_additional_info.tax_office #=> String
    #   resp.account_details[0].tax_registration.additional_tax_information.ukraine_additional_info.ukraine_trn_type #=> String, one of "Business", "Individual"
    #   resp.account_details[0].tax_registration.certified_email_id #=> String
    #   resp.account_details[0].tax_registration.jurisdiction.country_code #=> String
    #   resp.account_details[0].tax_registration.jurisdiction.state_or_region #=> String
    #   resp.account_details[0].tax_registration.legal_name #=> String
    #   resp.account_details[0].tax_registration.registration_id #=> String
    #   resp.account_details[0].tax_registration.registration_type #=> String, one of "VAT", "GST", "CPF", "CNPJ", "SST", "TIN", "NRIC"
    #   resp.account_details[0].tax_registration.sector #=> String, one of "Business", "Individual", "Government"
    #   resp.account_details[0].tax_registration.status #=> String, one of "Verified", "Pending", "Deleted", "Rejected"
    #   resp.account_details[0].tax_registration.tax_document_metadatas #=> Array
    #   resp.account_details[0].tax_registration.tax_document_metadatas[0].tax_document_access_token #=> String
    #   resp.account_details[0].tax_registration.tax_document_metadatas[0].tax_document_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ListTaxRegistrations AWS API Documentation
    #
    # @overload list_tax_registrations(params = {})
    # @param [Hash] params ({})
    def list_tax_registrations(params = {}, options = {})
      req = build_request(:list_tax_registrations, params)
      req.send_request(options)
    end

    # Stores supplemental tax registration for a single account.
    #
    # @option params [required, Types::SupplementalTaxRegistrationEntry] :tax_registration_entry
    #   The supplemental TRN information that will be stored for the caller
    #   account ID.
    #
    # @return [Types::PutSupplementalTaxRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSupplementalTaxRegistrationResponse#authority_id #authority_id} => String
    #   * {Types::PutSupplementalTaxRegistrationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_supplemental_tax_registration({
    #     tax_registration_entry: { # required
    #       address: { # required
    #         address_line_1: "AddressLine1", # required
    #         address_line_2: "AddressLine2",
    #         address_line_3: "AddressLine3",
    #         city: "City", # required
    #         country_code: "CountryCode", # required
    #         district_or_county: "District",
    #         postal_code: "PostalCode", # required
    #         state_or_region: "State",
    #       },
    #       legal_name: "LegalName", # required
    #       registration_id: "RegistrationId", # required
    #       registration_type: "VAT", # required, accepts VAT
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.authority_id #=> String
    #   resp.status #=> String, one of "Verified", "Pending", "Deleted", "Rejected"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutSupplementalTaxRegistration AWS API Documentation
    #
    # @overload put_supplemental_tax_registration(params = {})
    # @param [Hash] params ({})
    def put_supplemental_tax_registration(params = {}, options = {})
      req = build_request(:put_supplemental_tax_registration, params)
      req.send_request(options)
    end

    # Adds the tax exemption for a single account or all accounts listed in
    # a consolidated billing family.
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of unique account identifiers.
    #
    # @option params [required, Types::Authority] :authority
    #   The address domain associate with the tax information.
    #
    # @option params [required, Types::ExemptionCertificate] :exemption_certificate
    #   The exemption certificate.
    #
    # @option params [required, String] :exemption_type
    #   The exemption type.
    #
    # @return [Types::PutTaxExemptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutTaxExemptionResponse#case_id #case_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_tax_exemption({
    #     account_ids: ["AccountId"], # required
    #     authority: { # required
    #       country: "CountryCode", # required
    #       state: "State",
    #     },
    #     exemption_certificate: { # required
    #       document_file: "data", # required
    #       document_name: "ExemptionDocumentName", # required
    #     },
    #     exemption_type: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.case_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutTaxExemption AWS API Documentation
    #
    # @overload put_tax_exemption(params = {})
    # @param [Hash] params ({})
    def put_tax_exemption(params = {}, options = {})
      req = build_request(:put_tax_exemption, params)
      req.send_request(options)
    end

    # The updated tax inheritance status.
    #
    # @option params [String] :heritage_status
    #   The tax inheritance status.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_tax_inheritance({
    #     heritage_status: "OptIn", # accepts OptIn, OptOut
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutTaxInheritance AWS API Documentation
    #
    # @overload put_tax_inheritance(params = {})
    # @param [Hash] params ({})
    def put_tax_inheritance(params = {}, options = {})
      req = build_request(:put_tax_inheritance, params)
      req.send_request(options)
    end

    # Adds or updates tax registration for a single account. You can't set
    # a TRN if there's a pending TRN. You'll need to delete the pending
    # TRN first.
    #
    # To call this API operation for specific countries, see the following
    # country-specific requirements.
    #
    # **Bangladesh**
    #
    # * You must specify the tax registration certificate document in the
    #   `taxRegistrationDocuments` field of the `VerificationDetails`
    #   object.
    #
    # ^
    #
    # **Brazil**
    #
    # * You must complete the tax registration process in the [Payment
    #   preferences][1] page in the Billing and Cost Management console.
    #   After your TRN and billing address are verified, you can call this
    #   API operation.
    #
    # * For Amazon Web Services accounts created through Organizations, you
    #   can call this API operation when you don't have a billing address.
    #
    # **Georgia**
    #
    # * The valid `personType` values are `Physical Person` and `Business`.
    #
    # ^
    #
    # **Kenya**
    #
    # * You must specify the `personType` in the `kenyaAdditionalInfo` field
    #   of the `additionalTaxInformation` object.
    #
    # * If the `personType` is `Physical Person`, you must specify the tax
    #   registration certificate document in the `taxRegistrationDocuments`
    #   field of the `VerificationDetails` object.
    #
    # **Malaysia**
    #
    # * The sector valid values are `Business` and `Individual`.
    #
    # * `RegistrationType` valid values are `NRIC` for individual, and TIN
    #   and sales and service tax (SST) for Business.
    #
    # * For individual, you can specify the `taxInformationNumber` in
    #   `MalaysiaAdditionalInfo` with NRIC type, and a valid `MyKad` or NRIC
    #   number.
    #
    # * For business, you must specify a `businessRegistrationNumber` in
    #   `MalaysiaAdditionalInfo` with a TIN type and tax identification
    #   number.
    #
    # * For business resellers, you must specify a
    #   `businessRegistrationNumber` and `taxInformationNumber` in
    #   `MalaysiaAdditionalInfo` with a sales and service tax (SST) type and
    #   a valid SST number.
    #
    # * For business resellers with service codes, you must specify
    #   `businessRegistrationNumber`, `taxInformationNumber`, and distinct
    #   `serviceTaxCodes` in `MalaysiaAdditionalInfo` with a SST type and
    #   valid sales and service tax (SST) number. By using this API
    #   operation, Amazon Web Services registers your self-declaration that
    #   you’re an authorized business reseller registered with the Royal
    #   Malaysia Customs Department (RMCD), and have a valid SST number.
    #
    # * Amazon Web Services reserves the right to seek additional
    #   information and/or take other actions to support your
    #   self-declaration as appropriate.
    #
    # * Amazon Web Services is currently registered under the following
    #   service tax codes. You must include at least one of the service tax
    #   codes in the service tax code strings to declare yourself as an
    #   authorized registered business reseller.
    #
    #   Taxable service and service tax codes:
    #
    #   Consultancy - 9907061674
    #
    #   Training or coaching service - 9907071685
    #
    #   IT service - 9907101676
    #
    #   Digital services and electronic medium - 9907121690
    #
    # **Nepal**
    #
    # * The sector valid values are `Business` and `Individual`.
    #
    # ^
    #
    # **Saudi Arabia**
    #
    # * For `address`, you must specify `addressLine3`.
    #
    # ^
    #
    # **South Korea**
    #
    # * You must specify the `certifiedEmailId` and `legalName` in the
    #   `TaxRegistrationEntry` object. Use Korean characters for
    #   `legalName`.
    #
    # * You must specify the `businessRepresentativeName`, `itemOfBusiness`,
    #   and `lineOfBusiness` in the `southKoreaAdditionalInfo` field of the
    #   `additionalTaxInformation` object. Use Korean characters for these
    #   fields.
    #
    # * You must specify the tax registration certificate document in the
    #   `taxRegistrationDocuments` field of the `VerificationDetails`
    #   object.
    #
    # * For the `address` object, use Korean characters for `addressLine1`,
    #   `addressLine2` `city`, `postalCode`, and `stateOrRegion`.
    #
    # **Spain**
    #
    # * You must specify the `registrationType` in the `spainAdditionalInfo`
    #   field of the `additionalTaxInformation` object.
    #
    # * If the `registrationType` is `Local`, you must specify the tax
    #   registration certificate document in the `taxRegistrationDocuments`
    #   field of the `VerificationDetails` object.
    #
    # **Turkey**
    #
    # * You must specify the `sector` in the `taxRegistrationEntry` object.
    #
    # * If your `sector` is `Business`, `Individual`, or `Government`:
    #
    #   * Specify the `taxOffice`. If your `sector` is `Individual`, don't
    #     enter this value.
    #
    #   * (Optional) Specify the `kepEmailId`. If your `sector` is
    #     `Individual`, don't enter this value.
    #
    #   * **Note:** In the **Tax Settings** page of the Billing console,
    #     `Government` appears as **Public institutions**
    # * If your `sector` is `Business` and you're subject to KDV tax, you
    #   must specify your industry in the `industries` field.
    #
    # * For `address`, you must specify `districtOrCounty`.
    #
    # **Ukraine**
    #
    # * The sector valid values are `Business` and `Individual`.
    #
    # ^
    #
    #
    #
    # [1]: https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods
    #
    # @option params [String] :account_id
    #   Your unique account identifier.
    #
    # @option params [required, Types::TaxRegistrationEntry] :tax_registration_entry
    #   Your TRN information that will be stored to the account mentioned in
    #   `accountId`.
    #
    # @return [Types::PutTaxRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutTaxRegistrationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_tax_registration({
    #     account_id: "AccountId",
    #     tax_registration_entry: { # required
    #       additional_tax_information: {
    #         canada_additional_info: {
    #           canada_quebec_sales_tax_number: "CanadaQuebecSalesTaxNumberString",
    #           canada_retail_sales_tax_number: "CanadaRetailSalesTaxNumberString",
    #           is_reseller_account: false,
    #           provincial_sales_tax_id: "CanadaProvincialSalesTaxIdString",
    #         },
    #         estonia_additional_info: {
    #           registry_commercial_code: "RegistryCommercialCode", # required
    #         },
    #         georgia_additional_info: {
    #           person_type: "Legal Person", # required, accepts Legal Person, Physical Person, Business
    #         },
    #         israel_additional_info: {
    #           customer_type: "Business", # required, accepts Business, Individual
    #           dealer_type: "Authorized", # required, accepts Authorized, Non-authorized
    #         },
    #         italy_additional_info: {
    #           cig_number: "CigNumber",
    #           cup_number: "CupNumber",
    #           sdi_account_id: "SdiAccountId",
    #           tax_code: "TaxCode",
    #         },
    #         kenya_additional_info: {
    #           person_type: "Legal Person", # required, accepts Legal Person, Physical Person, Business
    #         },
    #         malaysia_additional_info: {
    #           business_registration_number: "BusinessRegistrationNumber",
    #           service_tax_codes: ["Consultancy"], # accepts Consultancy, Digital Service And Electronic Medium, IT Services, Training Or Coaching
    #           tax_information_number: "TaxInformationNumber",
    #         },
    #         poland_additional_info: {
    #           individual_registration_number: "IndividualRegistrationNumber",
    #           is_group_vat_enabled: false,
    #         },
    #         romania_additional_info: {
    #           tax_registration_number_type: "TaxRegistrationNumber", # required, accepts TaxRegistrationNumber, LocalRegistrationNumber
    #         },
    #         saudi_arabia_additional_info: {
    #           tax_registration_number_type: "TaxRegistrationNumber", # accepts TaxRegistrationNumber, TaxIdentificationNumber, CommercialRegistrationNumber
    #         },
    #         south_korea_additional_info: {
    #           business_representative_name: "BusinessRepresentativeName", # required
    #           item_of_business: "ItemOfBusiness", # required
    #           line_of_business: "LineOfBusiness", # required
    #         },
    #         spain_additional_info: {
    #           registration_type: "Intra-EU", # required, accepts Intra-EU, Local
    #         },
    #         turkey_additional_info: {
    #           industries: "CirculatingOrg", # accepts CirculatingOrg, ProfessionalOrg, Banks, Insurance, PensionAndBenefitFunds, DevelopmentAgencies
    #           kep_email_id: "KepEmailId",
    #           secondary_tax_id: "SecondaryTaxId",
    #           tax_office: "TaxOffice",
    #         },
    #         ukraine_additional_info: {
    #           ukraine_trn_type: "Business", # required, accepts Business, Individual
    #         },
    #       },
    #       certified_email_id: "CertifiedEmailId",
    #       legal_address: {
    #         address_line_1: "AddressLine1", # required
    #         address_line_2: "AddressLine2",
    #         address_line_3: "AddressLine3",
    #         city: "City", # required
    #         country_code: "CountryCode", # required
    #         district_or_county: "District",
    #         postal_code: "PostalCode", # required
    #         state_or_region: "State",
    #       },
    #       legal_name: "LegalName",
    #       registration_id: "RegistrationId", # required
    #       registration_type: "VAT", # required, accepts VAT, GST, CPF, CNPJ, SST, TIN, NRIC
    #       sector: "Business", # accepts Business, Individual, Government
    #       verification_details: {
    #         date_of_birth: "DateOfBirth",
    #         tax_registration_documents: [
    #           {
    #             file: {
    #               file_content: "data", # required
    #               file_name: "TaxDocumentName", # required
    #             },
    #             s3_location: {
    #               bucket: "S3BucketName", # required
    #               key: "S3Key", # required
    #             },
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Verified", "Pending", "Deleted", "Rejected"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutTaxRegistration AWS API Documentation
    #
    # @overload put_tax_registration(params = {})
    # @param [Hash] params ({})
    def put_tax_registration(params = {}, options = {})
      req = build_request(:put_tax_registration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::TaxSettings')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-taxsettings'
      context[:gem_version] = '1.17.0'
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
