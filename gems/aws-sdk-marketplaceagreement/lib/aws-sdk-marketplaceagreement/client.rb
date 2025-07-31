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
require 'aws-sdk-core/plugins/protocols/json_rpc'

module Aws::MarketplaceAgreement
  # An API client for MarketplaceAgreement.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MarketplaceAgreement::Client.new(
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

    @identifier = :marketplaceagreement

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::MarketplaceAgreement::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
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
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disables response data type conversions. The request parameters
    #     hash must be formatted exactly as the API expects.This option is useful
    #     when you want to ensure the highest level of performance by avoiding
    #     overhead of walking request parameters and response data structures.
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
    #     Your Bearer token used for authentication. This can be an instance of any one of the
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
    #   @option options [Aws::MarketplaceAgreement::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MarketplaceAgreement::EndpointParameters`.
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

    # Provides details about an agreement, such as the proposer, acceptor,
    # start date, and end date.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement.
    #
    # @return [Types::DescribeAgreementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAgreementOutput#acceptance_time #acceptance_time} => Time
    #   * {Types::DescribeAgreementOutput#acceptor #acceptor} => Types::Acceptor
    #   * {Types::DescribeAgreementOutput#agreement_id #agreement_id} => String
    #   * {Types::DescribeAgreementOutput#agreement_type #agreement_type} => String
    #   * {Types::DescribeAgreementOutput#end_time #end_time} => Time
    #   * {Types::DescribeAgreementOutput#estimated_charges #estimated_charges} => Types::EstimatedCharges
    #   * {Types::DescribeAgreementOutput#proposal_summary #proposal_summary} => Types::ProposalSummary
    #   * {Types::DescribeAgreementOutput#proposer #proposer} => Types::Proposer
    #   * {Types::DescribeAgreementOutput#start_time #start_time} => Time
    #   * {Types::DescribeAgreementOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agreement({
    #     agreement_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.acceptance_time #=> Time
    #   resp.acceptor.account_id #=> String
    #   resp.agreement_id #=> String
    #   resp.agreement_type #=> String
    #   resp.end_time #=> Time
    #   resp.estimated_charges.agreement_value #=> String
    #   resp.estimated_charges.currency_code #=> String
    #   resp.proposal_summary.offer_id #=> String
    #   resp.proposal_summary.resources #=> Array
    #   resp.proposal_summary.resources[0].id #=> String
    #   resp.proposal_summary.resources[0].type #=> String
    #   resp.proposer.account_id #=> String
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "ACTIVE", "ARCHIVED", "CANCELLED", "EXPIRED", "RENEWED", "REPLACED", "ROLLED_BACK", "SUPERSEDED", "TERMINATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/DescribeAgreement AWS API Documentation
    #
    # @overload describe_agreement(params = {})
    # @param [Hash] params ({})
    def describe_agreement(params = {}, options = {})
      req = build_request(:describe_agreement, params)
      req.send_request(options)
    end

    # Obtains details about the terms in an agreement that you participated
    # in as proposer or acceptor.
    #
    # The details include:
    #
    # * `TermType` – The type of term, such as `LegalTerm`, `RenewalTerm`,
    #   or `ConfigurableUpfrontPricingTerm`.
    #
    # * `TermID` – The ID of the particular term, which is common between
    #   offer and agreement.
    #
    # * `TermPayload` – The key information contained in the term, such as
    #   the EULA for `LegalTerm` or pricing and dimensions for various
    #   pricing terms, such as `ConfigurableUpfrontPricingTerm` or
    #   `UsageBasedPricingTerm`.
    # ^
    #
    # * `Configuration` – The buyer/acceptor's selection at the time of
    #   agreement creation, such as the number of units purchased for a
    #   dimension or setting the `EnableAutoRenew` flag.
    #
    # ^
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement.
    #
    # @option params [Integer] :max_results
    #   The maximum number of agreements to return in the response.
    #
    # @option params [String] :next_token
    #   A token to specify where to start pagination
    #
    # @return [Types::GetAgreementTermsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgreementTermsOutput#accepted_terms #accepted_terms} => Array&lt;Types::AcceptedTerm&gt;
    #   * {Types::GetAgreementTermsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agreement_terms({
    #     agreement_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.accepted_terms #=> Array
    #   resp.accepted_terms[0].byol_pricing_term.type #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.configuration.dimensions #=> Array
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.configuration.dimensions[0].dimension_key #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.configuration.dimensions[0].dimension_value #=> Integer
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.configuration.selector_value #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.currency_code #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards #=> Array
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].constraints.multiple_dimension_selection #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].constraints.quantity_configuration #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card #=> Array
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].dimension_key #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].price #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].selector.type #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].selector.value #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.type #=> String
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.currency_code #=> String
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.duration #=> String
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.grants #=> Array
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.grants[0].dimension_key #=> String
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.grants[0].max_quantity #=> Integer
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.price #=> String
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.type #=> String
    #   resp.accepted_terms[0].free_trial_pricing_term.duration #=> String
    #   resp.accepted_terms[0].free_trial_pricing_term.grants #=> Array
    #   resp.accepted_terms[0].free_trial_pricing_term.grants[0].dimension_key #=> String
    #   resp.accepted_terms[0].free_trial_pricing_term.grants[0].max_quantity #=> Integer
    #   resp.accepted_terms[0].free_trial_pricing_term.type #=> String
    #   resp.accepted_terms[0].legal_term.documents #=> Array
    #   resp.accepted_terms[0].legal_term.documents[0].type #=> String
    #   resp.accepted_terms[0].legal_term.documents[0].url #=> String
    #   resp.accepted_terms[0].legal_term.documents[0].version #=> String
    #   resp.accepted_terms[0].legal_term.type #=> String
    #   resp.accepted_terms[0].payment_schedule_term.currency_code #=> String
    #   resp.accepted_terms[0].payment_schedule_term.schedule #=> Array
    #   resp.accepted_terms[0].payment_schedule_term.schedule[0].charge_amount #=> String
    #   resp.accepted_terms[0].payment_schedule_term.schedule[0].charge_date #=> Time
    #   resp.accepted_terms[0].payment_schedule_term.type #=> String
    #   resp.accepted_terms[0].recurring_payment_term.billing_period #=> String
    #   resp.accepted_terms[0].recurring_payment_term.currency_code #=> String
    #   resp.accepted_terms[0].recurring_payment_term.price #=> String
    #   resp.accepted_terms[0].recurring_payment_term.type #=> String
    #   resp.accepted_terms[0].renewal_term.configuration.enable_auto_renew #=> Boolean
    #   resp.accepted_terms[0].renewal_term.type #=> String
    #   resp.accepted_terms[0].support_term.refund_policy #=> String
    #   resp.accepted_terms[0].support_term.type #=> String
    #   resp.accepted_terms[0].usage_based_pricing_term.currency_code #=> String
    #   resp.accepted_terms[0].usage_based_pricing_term.rate_cards #=> Array
    #   resp.accepted_terms[0].usage_based_pricing_term.rate_cards[0].rate_card #=> Array
    #   resp.accepted_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].dimension_key #=> String
    #   resp.accepted_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].price #=> String
    #   resp.accepted_terms[0].usage_based_pricing_term.type #=> String
    #   resp.accepted_terms[0].validity_term.agreement_duration #=> String
    #   resp.accepted_terms[0].validity_term.agreement_end_date #=> Time
    #   resp.accepted_terms[0].validity_term.agreement_start_date #=> Time
    #   resp.accepted_terms[0].validity_term.type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementTerms AWS API Documentation
    #
    # @overload get_agreement_terms(params = {})
    # @param [Hash] params ({})
    def get_agreement_terms(params = {}, options = {})
      req = build_request(:get_agreement_terms, params)
      req.send_request(options)
    end

    # Searches across all agreements that a proposer or an acceptor has in
    # AWS Marketplace. The search returns a list of agreements with basic
    # agreement information.
    #
    # The following filter combinations are supported:
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `ResourceIdentifier`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `OfferId`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `AcceptorAccountId`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `Status`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `ResourceIdentifier` +
    #   `Status`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `OfferId` + `Status`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `AcceptorAccountId` +
    #   `Status`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `ResourceType` +
    #   `Status`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `AcceptorAccountId` +
    #   `ResourceType` + `Status`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `AcceptorAccountId` +
    #   `OfferId`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `AcceptorAccountId` +
    #   `OfferId` + `Status`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `AcceptorAccountId` +
    #   `ResourceIdentifier`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `AcceptorAccountId` +
    #   `ResourceIdentifier` + `Status`
    #
    # * `PartyType` as `Proposer` + `AgreementType` + `AcceptorAccountId` +
    #   `ResourceType`
    #
    # @option params [String] :catalog
    #   The catalog in which the agreement was created.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filter name and value pair used to return a specific list of
    #   results.
    #
    #   The following filters are supported:
    #
    #   * `ResourceIdentifier` – The unique identifier of the resource.
    #
    #   * `ResourceType` – Type of the resource, which is the product
    #     (`AmiProduct`, `ContainerProduct`, or `SaaSProduct`).
    #
    #   * `PartyType` – The party type (either `Acceptor` or `Proposer`) of
    #     the caller. For agreements where the caller is the proposer, use the
    #     `Proposer` filter. For agreements where the caller is the acceptor,
    #     use the `Acceptor` filter.
    #
    #   * `AcceptorAccountId` – The AWS account ID of the party accepting the
    #     agreement terms.
    #
    #   * `OfferId` – The unique identifier of the offer in which the terms
    #     are registered in the agreement token.
    #
    #   * `Status` – The current status of the agreement. Values include
    #     `ACTIVE`, `ARCHIVED`, `CANCELLED`, `EXPIRED`, `RENEWED`, `REPLACED`,
    #     and `TERMINATED`.
    #
    #   * `BeforeEndTime` – A date used to filter agreements with a date
    #     before the `endTime` of an agreement.
    #
    #   * `AfterEndTime` – A date used to filter agreements with a date after
    #     the `endTime` of an agreement.
    #
    #   * `AgreementType` – The type of agreement. Values include
    #     `PurchaseAgreement` or `VendorInsightsAgreement`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of agreements to return in the response.
    #
    # @option params [String] :next_token
    #   A token to specify where to start pagination.
    #
    # @option params [Types::Sort] :sort
    #   An object that contains the `SortBy` and `SortOrder` attributes.
    #
    # @return [Types::SearchAgreementsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAgreementsOutput#agreement_view_summaries #agreement_view_summaries} => Array&lt;Types::AgreementViewSummary&gt;
    #   * {Types::SearchAgreementsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_agreements({
    #     catalog: "Catalog",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort: {
    #       sort_by: "SortBy",
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_view_summaries #=> Array
    #   resp.agreement_view_summaries[0].acceptance_time #=> Time
    #   resp.agreement_view_summaries[0].acceptor.account_id #=> String
    #   resp.agreement_view_summaries[0].agreement_id #=> String
    #   resp.agreement_view_summaries[0].agreement_type #=> String
    #   resp.agreement_view_summaries[0].end_time #=> Time
    #   resp.agreement_view_summaries[0].proposal_summary.offer_id #=> String
    #   resp.agreement_view_summaries[0].proposal_summary.resources #=> Array
    #   resp.agreement_view_summaries[0].proposal_summary.resources[0].id #=> String
    #   resp.agreement_view_summaries[0].proposal_summary.resources[0].type #=> String
    #   resp.agreement_view_summaries[0].proposer.account_id #=> String
    #   resp.agreement_view_summaries[0].start_time #=> Time
    #   resp.agreement_view_summaries[0].status #=> String, one of "ACTIVE", "ARCHIVED", "CANCELLED", "EXPIRED", "RENEWED", "REPLACED", "ROLLED_BACK", "SUPERSEDED", "TERMINATED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/SearchAgreements AWS API Documentation
    #
    # @overload search_agreements(params = {})
    # @param [Hash] params ({})
    def search_agreements(params = {}, options = {})
      req = build_request(:search_agreements, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MarketplaceAgreement')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-marketplaceagreement'
      context[:gem_version] = '1.22.0'
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
