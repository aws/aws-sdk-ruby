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
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::OpenSearchService
  # An API client for OpenSearchService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::OpenSearchService::Client.new(
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

    @identifier = :opensearchservice

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
    add_plugin(Aws::OpenSearchService::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
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
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
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
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
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
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
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
    #   @option options [Aws::OpenSearchService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::OpenSearchService::EndpointParameters`.
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

    # Allows the destination Amazon OpenSearch Service domain owner to
    # accept an inbound cross-cluster search connection request. For more
    # information, see [Cross-cluster search for Amazon OpenSearch
    # Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html
    #
    # @option params [required, String] :connection_id
    #   The ID of the inbound connection to accept.
    #
    # @return [Types::AcceptInboundConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptInboundConnectionResponse#connection #connection} => Types::InboundConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_inbound_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.region #=> String
    #   resp.connection.connection_id #=> String
    #   resp.connection.connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connection.connection_status.message #=> String
    #   resp.connection.connection_mode #=> String, one of "DIRECT", "VPC_ENDPOINT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AcceptInboundConnection AWS API Documentation
    #
    # @overload accept_inbound_connection(params = {})
    # @param [Hash] params ({})
    def accept_inbound_connection(params = {}, options = {})
      req = build_request(:accept_inbound_connection, params)
      req.send_request(options)
    end

    # Creates a new direct-query data source to the specified domain. For
    # more information, see [Creating Amazon OpenSearch Service data source
    # integrations with Amazon S3][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain to add the data source to.
    #
    # @option params [required, String] :name
    #   A name for the data source.
    #
    # @option params [required, Types::DataSourceType] :data_source_type
    #   The type of data source.
    #
    # @option params [String] :description
    #   A description of the data source.
    #
    # @return [Types::AddDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddDataSourceResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_data_source({
    #     domain_name: "DomainName", # required
    #     name: "DataSourceName", # required
    #     data_source_type: { # required
    #       s3_glue_data_catalog: {
    #         role_arn: "RoleArn",
    #       },
    #     },
    #     description: "DataSourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AddDataSource AWS API Documentation
    #
    # @overload add_data_source(params = {})
    # @param [Hash] params ({})
    def add_data_source(params = {}, options = {})
      req = build_request(:add_data_source, params)
      req.send_request(options)
    end

    # Adds a new data source in Amazon OpenSearch Service so that you can
    # perform direct queries on external data.
    #
    # @option params [required, String] :data_source_name
    #   A unique, user-defined label to identify the data source within your
    #   OpenSearch Service environment.
    #
    # @option params [required, Types::DirectQueryDataSourceType] :data_source_type
    #   The supported Amazon Web Services service that you want to use as the
    #   source for direct queries in OpenSearch Service.
    #
    # @option params [String] :description
    #   An optional text field for providing additional context and details
    #   about the data source.
    #
    # @option params [required, Array<String>] :open_search_arns
    #   A list of Amazon Resource Names (ARNs) for the OpenSearch collections
    #   that are associated with the direct query data source.
    #
    # @option params [Array<Types::Tag>] :tag_list
    #   A list of tags attached to a domain.
    #
    # @return [Types::AddDirectQueryDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddDirectQueryDataSourceResponse#data_source_arn #data_source_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_direct_query_data_source({
    #     data_source_name: "DirectQueryDataSourceName", # required
    #     data_source_type: { # required
    #       cloud_watch_log: {
    #         role_arn: "DirectQueryDataSourceRoleArn", # required
    #       },
    #       security_lake: {
    #         role_arn: "DirectQueryDataSourceRoleArn", # required
    #       },
    #     },
    #     description: "DirectQueryDataSourceDescription",
    #     open_search_arns: ["ARN"], # required
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AddDirectQueryDataSource AWS API Documentation
    #
    # @overload add_direct_query_data_source(params = {})
    # @param [Hash] params ({})
    def add_direct_query_data_source(params = {}, options = {})
      req = build_request(:add_direct_query_data_source, params)
      req.send_request(options)
    end

    # Attaches tags to an existing Amazon OpenSearch Service domain, data
    # source, or application.
    #
    # Tags are a set of case-sensitive key-value pairs. A domain, data
    # source, or application can have up to 10 tags. For more information,
    # see [Tagging Amazon OpenSearch Service resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html
    #
    # @option params [required, String] :arn
    #   Amazon Resource Name (ARN) for the OpenSearch Service domain, data
    #   source, or application to which you want to attach resource tags.
    #
    # @option params [required, Array<Types::Tag>] :tag_list
    #   List of resource tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     arn: "ARN", # required
    #     tag_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Associates a package with an Amazon OpenSearch Service domain. For
    # more information, see [Custom packages for Amazon OpenSearch
    # Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html
    #
    # @option params [required, String] :package_id
    #   Internal ID of the package to associate with a domain. Use
    #   `DescribePackages` to find this value.
    #
    # @option params [required, String] :domain_name
    #   Name of the domain to associate the package with.
    #
    # @option params [Array<String>] :prerequisite_package_id_list
    #   A list of package IDs that must be associated with the domain before
    #   the package specified in the request can be associated.
    #
    # @option params [Types::PackageAssociationConfiguration] :association_configuration
    #   The configuration for associating a package with an Amazon OpenSearch
    #   Service domain.
    #
    # @return [Types::AssociatePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociatePackageResponse#domain_package_details #domain_package_details} => Types::DomainPackageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_package({
    #     package_id: "PackageID", # required
    #     domain_name: "DomainName", # required
    #     prerequisite_package_id_list: ["PackageID"],
    #     association_configuration: {
    #       key_store_access_option: {
    #         key_access_role_arn: "RoleArn",
    #         key_store_access_enabled: false, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_package_details.package_id #=> String
    #   resp.domain_package_details.package_name #=> String
    #   resp.domain_package_details.package_type #=> String, one of "TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"
    #   resp.domain_package_details.last_updated #=> Time
    #   resp.domain_package_details.domain_name #=> String
    #   resp.domain_package_details.domain_package_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"
    #   resp.domain_package_details.package_version #=> String
    #   resp.domain_package_details.prerequisite_package_id_list #=> Array
    #   resp.domain_package_details.prerequisite_package_id_list[0] #=> String
    #   resp.domain_package_details.reference_path #=> String
    #   resp.domain_package_details.error_details.error_type #=> String
    #   resp.domain_package_details.error_details.error_message #=> String
    #   resp.domain_package_details.association_configuration.key_store_access_option.key_access_role_arn #=> String
    #   resp.domain_package_details.association_configuration.key_store_access_option.key_store_access_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AssociatePackage AWS API Documentation
    #
    # @overload associate_package(params = {})
    # @param [Hash] params ({})
    def associate_package(params = {}, options = {})
      req = build_request(:associate_package, params)
      req.send_request(options)
    end

    # Operation in the Amazon OpenSearch Service API for associating
    # multiple packages with a domain simultaneously.
    #
    # @option params [required, Array<Types::PackageDetailsForAssociation>] :package_list
    #   A list of packages and their prerequisites to be associated with a
    #   domain.
    #
    # @option params [required, String] :domain_name
    #   The name of an OpenSearch Service domain. Domain names are unique
    #   across the domains owned by an account within an Amazon Web Services
    #   Region.
    #
    # @return [Types::AssociatePackagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociatePackagesResponse#domain_package_details_list #domain_package_details_list} => Array&lt;Types::DomainPackageDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_packages({
    #     package_list: [ # required
    #       {
    #         package_id: "PackageID", # required
    #         prerequisite_package_id_list: ["PackageID"],
    #         association_configuration: {
    #           key_store_access_option: {
    #             key_access_role_arn: "RoleArn",
    #             key_store_access_enabled: false, # required
    #           },
    #         },
    #       },
    #     ],
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_package_details_list #=> Array
    #   resp.domain_package_details_list[0].package_id #=> String
    #   resp.domain_package_details_list[0].package_name #=> String
    #   resp.domain_package_details_list[0].package_type #=> String, one of "TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"
    #   resp.domain_package_details_list[0].last_updated #=> Time
    #   resp.domain_package_details_list[0].domain_name #=> String
    #   resp.domain_package_details_list[0].domain_package_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"
    #   resp.domain_package_details_list[0].package_version #=> String
    #   resp.domain_package_details_list[0].prerequisite_package_id_list #=> Array
    #   resp.domain_package_details_list[0].prerequisite_package_id_list[0] #=> String
    #   resp.domain_package_details_list[0].reference_path #=> String
    #   resp.domain_package_details_list[0].error_details.error_type #=> String
    #   resp.domain_package_details_list[0].error_details.error_message #=> String
    #   resp.domain_package_details_list[0].association_configuration.key_store_access_option.key_access_role_arn #=> String
    #   resp.domain_package_details_list[0].association_configuration.key_store_access_option.key_store_access_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AssociatePackages AWS API Documentation
    #
    # @overload associate_packages(params = {})
    # @param [Hash] params ({})
    def associate_packages(params = {}, options = {})
      req = build_request(:associate_packages, params)
      req.send_request(options)
    end

    # Provides access to an Amazon OpenSearch Service domain through the use
    # of an interface VPC endpoint.
    #
    # @option params [required, String] :domain_name
    #   The name of the OpenSearch Service domain to provide access to.
    #
    # @option params [String] :account
    #   The Amazon Web Services account ID to grant access to.
    #
    # @option params [String] :service
    #   The Amazon Web Services service SP to grant access to.
    #
    # @return [Types::AuthorizeVpcEndpointAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AuthorizeVpcEndpointAccessResponse#authorized_principal #authorized_principal} => Types::AuthorizedPrincipal
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_vpc_endpoint_access({
    #     domain_name: "DomainName", # required
    #     account: "AWSAccount",
    #     service: "application.opensearchservice.amazonaws.com", # accepts application.opensearchservice.amazonaws.com
    #   })
    #
    # @example Response structure
    #
    #   resp.authorized_principal.principal_type #=> String, one of "AWS_ACCOUNT", "AWS_SERVICE"
    #   resp.authorized_principal.principal #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AuthorizeVpcEndpointAccess AWS API Documentation
    #
    # @overload authorize_vpc_endpoint_access(params = {})
    # @param [Hash] params ({})
    def authorize_vpc_endpoint_access(params = {}, options = {})
      req = build_request(:authorize_vpc_endpoint_access, params)
      req.send_request(options)
    end

    # Cancels a pending configuration change on an Amazon OpenSearch Service
    # domain.
    #
    # @option params [required, String] :domain_name
    #   The name of an OpenSearch Service domain. Domain names are unique
    #   across the domains owned by an account within an Amazon Web Services
    #   Region.
    #
    # @option params [Boolean] :dry_run
    #   When set to `True`, returns the list of change IDs and properties that
    #   will be cancelled without actually cancelling the change.
    #
    # @return [Types::CancelDomainConfigChangeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelDomainConfigChangeResponse#cancelled_change_ids #cancelled_change_ids} => Array&lt;String&gt;
    #   * {Types::CancelDomainConfigChangeResponse#cancelled_change_properties #cancelled_change_properties} => Array&lt;Types::CancelledChangeProperty&gt;
    #   * {Types::CancelDomainConfigChangeResponse#dry_run #dry_run} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_domain_config_change({
    #     domain_name: "DomainName", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.cancelled_change_ids #=> Array
    #   resp.cancelled_change_ids[0] #=> String
    #   resp.cancelled_change_properties #=> Array
    #   resp.cancelled_change_properties[0].property_name #=> String
    #   resp.cancelled_change_properties[0].cancelled_value #=> String
    #   resp.cancelled_change_properties[0].active_value #=> String
    #   resp.dry_run #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CancelDomainConfigChange AWS API Documentation
    #
    # @overload cancel_domain_config_change(params = {})
    # @param [Hash] params ({})
    def cancel_domain_config_change(params = {}, options = {})
      req = build_request(:cancel_domain_config_change, params)
      req.send_request(options)
    end

    # Cancels a scheduled service software update for an Amazon OpenSearch
    # Service domain. You can only perform this operation before the
    # `AutomatedUpdateDate` and when the domain's `UpdateStatus` is
    # `PENDING_UPDATE`. For more information, see [Service software updates
    # in Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html
    #
    # @option params [required, String] :domain_name
    #   Name of the OpenSearch Service domain that you want to cancel the
    #   service software update on.
    #
    # @return [Types::CancelServiceSoftwareUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelServiceSoftwareUpdateResponse#service_software_options #service_software_options} => Types::ServiceSoftwareOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_service_software_update({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_software_options.current_version #=> String
    #   resp.service_software_options.new_version #=> String
    #   resp.service_software_options.update_available #=> Boolean
    #   resp.service_software_options.cancellable #=> Boolean
    #   resp.service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.service_software_options.description #=> String
    #   resp.service_software_options.automated_update_date #=> Time
    #   resp.service_software_options.optional_deployment #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CancelServiceSoftwareUpdate AWS API Documentation
    #
    # @overload cancel_service_software_update(params = {})
    # @param [Hash] params ({})
    def cancel_service_software_update(params = {}, options = {})
      req = build_request(:cancel_service_software_update, params)
      req.send_request(options)
    end

    # Creates an OpenSearch UI application. For more information, see [Using
    # the OpenSearch user interface in Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application.html
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The unique name of the OpenSearch application. Names must be unique
    #   within an Amazon Web Services Region for each account.
    #
    # @option params [Array<Types::DataSource>] :data_sources
    #   The data sources to link to the OpenSearch application.
    #
    # @option params [Types::IamIdentityCenterOptionsInput] :iam_identity_center_options
    #   Configuration settings for integrating Amazon Web Services IAM
    #   Identity Center with the OpenSearch application.
    #
    # @option params [Array<Types::AppConfig>] :app_configs
    #   Configuration settings for the OpenSearch application, including
    #   administrative options.
    #
    # @option params [Array<Types::Tag>] :tag_list
    #   A list of tags attached to a domain.
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#id #id} => String
    #   * {Types::CreateApplicationResponse#name #name} => String
    #   * {Types::CreateApplicationResponse#arn #arn} => String
    #   * {Types::CreateApplicationResponse#data_sources #data_sources} => Array&lt;Types::DataSource&gt;
    #   * {Types::CreateApplicationResponse#iam_identity_center_options #iam_identity_center_options} => Types::IamIdentityCenterOptions
    #   * {Types::CreateApplicationResponse#app_configs #app_configs} => Array&lt;Types::AppConfig&gt;
    #   * {Types::CreateApplicationResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateApplicationResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     client_token: "ClientToken",
    #     name: "ApplicationName", # required
    #     data_sources: [
    #       {
    #         data_source_arn: "ARN",
    #         data_source_description: "DataSourceDescription",
    #       },
    #     ],
    #     iam_identity_center_options: {
    #       enabled: false,
    #       iam_identity_center_instance_arn: "ARN",
    #       iam_role_for_identity_center_application_arn: "RoleArn",
    #     },
    #     app_configs: [
    #       {
    #         key: "opensearchDashboards.dashboardAdmin.users", # accepts opensearchDashboards.dashboardAdmin.users, opensearchDashboards.dashboardAdmin.groups
    #         value: "AppConfigValue",
    #       },
    #     ],
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.data_sources #=> Array
    #   resp.data_sources[0].data_source_arn #=> String
    #   resp.data_sources[0].data_source_description #=> String
    #   resp.iam_identity_center_options.enabled #=> Boolean
    #   resp.iam_identity_center_options.iam_identity_center_instance_arn #=> String
    #   resp.iam_identity_center_options.iam_role_for_identity_center_application_arn #=> String
    #   resp.iam_identity_center_options.iam_identity_center_application_arn #=> String
    #   resp.app_configs #=> Array
    #   resp.app_configs[0].key #=> String, one of "opensearchDashboards.dashboardAdmin.users", "opensearchDashboards.dashboardAdmin.groups"
    #   resp.app_configs[0].value #=> String
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates an Amazon OpenSearch Service domain. For more information, see
    # [Creating and managing Amazon OpenSearch Service domains][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html
    #
    # @option params [required, String] :domain_name
    #   Name of the OpenSearch Service domain to create. Domain names are
    #   unique across the domains owned by an account within an Amazon Web
    #   Services Region.
    #
    # @option params [String] :engine_version
    #   String of format Elasticsearch\_X.Y or OpenSearch\_X.Y to specify the
    #   engine version for the OpenSearch Service domain. For example,
    #   `OpenSearch_1.0` or `Elasticsearch_7.9`. For more information, see
    #   [Creating and managing Amazon OpenSearch Service domains][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains
    #
    # @option params [Types::ClusterConfig] :cluster_config
    #   Container for the cluster configuration of a domain.
    #
    # @option params [Types::EBSOptions] :ebs_options
    #   Container for the parameters required to enable EBS-based storage for
    #   an OpenSearch Service domain.
    #
    # @option params [String] :access_policies
    #   Identity and Access Management (IAM) policy document specifying the
    #   access policies for the new domain.
    #
    # @option params [String] :ip_address_type
    #   Specify either dual stack or IPv4 as your IP address type. Dual stack
    #   allows you to share domain resources across IPv4 and IPv6 address
    #   types, and is the recommended option. If you set your IP address type
    #   to dual stack, you can't change your address type later.
    #
    # @option params [Types::SnapshotOptions] :snapshot_options
    #   DEPRECATED. Container for the parameters required to configure
    #   automated snapshots of domain indexes.
    #
    # @option params [Types::VPCOptions] :vpc_options
    #   Container for the values required to configure VPC access domains. If
    #   you don't specify these values, OpenSearch Service creates the domain
    #   with a public endpoint. For more information, see [Launching your
    #   Amazon OpenSearch Service domains using a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #
    # @option params [Types::CognitoOptions] :cognito_options
    #   Key-value pairs to configure Amazon Cognito authentication. For more
    #   information, see [Configuring Amazon Cognito authentication for
    #   OpenSearch Dashboards][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html
    #
    # @option params [Types::EncryptionAtRestOptions] :encryption_at_rest_options
    #   Key-value pairs to enable encryption at rest.
    #
    # @option params [Types::NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   Enables node-to-node encryption.
    #
    # @option params [Hash<String,String>] :advanced_options
    #   Key-value pairs to specify advanced configuration options. The
    #   following key-value pairs are supported:
    #
    #   * `"rest.action.multi.allow_explicit_index": "true" | "false"` - Note
    #     the use of a string rather than a boolean. Specifies whether
    #     explicit references to indexes are allowed inside the body of HTTP
    #     requests. If you want to configure access policies for domain
    #     sub-resources, such as specific indexes and domain APIs, you must
    #     disable this property. Default is true.
    #
    #   * `"indices.fielddata.cache.size": "80" ` - Note the use of a string
    #     rather than a boolean. Specifies the percentage of heap space
    #     allocated to field data. Default is unbounded.
    #
    #   * `"indices.query.bool.max_clause_count": "1024"` - Note the use of a
    #     string rather than a boolean. Specifies the maximum number of
    #     clauses allowed in a Lucene boolean query. Default is 1,024. Queries
    #     with more than the permitted number of clauses result in a
    #     `TooManyClauses` error.
    #
    #   * `"override_main_response_version": "true" | "false"` - Note the use
    #     of a string rather than a boolean. Specifies whether the domain
    #     reports its version as 7.10 to allow Elasticsearch OSS clients and
    #     plugins to continue working with it. Default is false when creating
    #     a domain and true when upgrading a domain.
    #
    #   For more information, see [Advanced cluster parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #
    # @option params [Hash<String,Types::LogPublishingOption>] :log_publishing_options
    #   Key-value pairs to configure log publishing.
    #
    # @option params [Types::DomainEndpointOptions] :domain_endpoint_options
    #   Additional options for the domain endpoint, such as whether to require
    #   HTTPS for all traffic.
    #
    # @option params [Types::AdvancedSecurityOptionsInput] :advanced_security_options
    #   Options for fine-grained access control.
    #
    # @option params [Types::IdentityCenterOptionsInput] :identity_center_options
    #   Configuration options for enabling and managing IAM Identity Center
    #   integration within a domain.
    #
    # @option params [Array<Types::Tag>] :tag_list
    #   List of tags to add to the domain upon creation.
    #
    # @option params [Types::AutoTuneOptionsInput] :auto_tune_options
    #   Options for Auto-Tune.
    #
    # @option params [Types::OffPeakWindowOptions] :off_peak_window_options
    #   Specifies a daily 10-hour time block during which OpenSearch Service
    #   can perform configuration changes on the domain, including service
    #   software updates and Auto-Tune enhancements that require a blue/green
    #   deployment. If no options are specified, the default start time of
    #   10:00 P.M. local time (for the Region that the domain is created in)
    #   is used.
    #
    # @option params [Types::SoftwareUpdateOptions] :software_update_options
    #   Software update options for the domain.
    #
    # @option params [Types::AIMLOptionsInput] :aiml_options
    #   Options for all machine learning features for the specified domain.
    #
    # @return [Types::CreateDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainResponse#domain_status #domain_status} => Types::DomainStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     domain_name: "DomainName", # required
    #     engine_version: "VersionString",
    #     cluster_config: {
    #       instance_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, or1.medium.search, or1.large.search, or1.xlarge.search, or1.2xlarge.search, or1.4xlarge.search, or1.8xlarge.search, or1.12xlarge.search, or1.16xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1,
    #       },
    #       dedicated_master_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, or1.medium.search, or1.large.search, or1.xlarge.search, or1.2xlarge.search, or1.4xlarge.search, or1.8xlarge.search, or1.12xlarge.search, or1.16xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: "ultrawarm1.medium.search", # accepts ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search
    #       warm_count: 1,
    #       cold_storage_options: {
    #         enabled: false, # required
    #       },
    #       multi_az_with_standby_enabled: false,
    #       node_options: [
    #         {
    #           node_type: "coordinator", # accepts coordinator
    #           node_config: {
    #             enabled: false,
    #             type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, or1.medium.search, or1.large.search, or1.xlarge.search, or1.2xlarge.search, or1.4xlarge.search, or1.8xlarge.search, or1.12xlarge.search, or1.16xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #             count: 1,
    #           },
    #         },
    #       ],
    #     },
    #     ebs_options: {
    #       ebs_enabled: false,
    #       volume_type: "standard", # accepts standard, gp2, io1, gp3
    #       volume_size: 1,
    #       iops: 1,
    #       throughput: 1,
    #     },
    #     access_policies: "PolicyDocument",
    #     ip_address_type: "ipv4", # accepts ipv4, dualstack
    #     snapshot_options: {
    #       automated_snapshot_start_hour: 1,
    #     },
    #     vpc_options: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     cognito_options: {
    #       enabled: false,
    #       user_pool_id: "UserPoolId",
    #       identity_pool_id: "IdentityPoolId",
    #       role_arn: "RoleArn",
    #     },
    #     encryption_at_rest_options: {
    #       enabled: false,
    #       kms_key_id: "KmsKeyId",
    #     },
    #     node_to_node_encryption_options: {
    #       enabled: false,
    #     },
    #     advanced_options: {
    #       "String" => "String",
    #     },
    #     log_publishing_options: {
    #       "INDEX_SLOW_LOGS" => {
    #         cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #         enabled: false,
    #       },
    #     },
    #     domain_endpoint_options: {
    #       enforce_https: false,
    #       tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07, Policy-Min-TLS-1-2-PFS-2023-10
    #       custom_endpoint_enabled: false,
    #       custom_endpoint: "DomainNameFqdn",
    #       custom_endpoint_certificate_arn: "ARN",
    #     },
    #     advanced_security_options: {
    #       enabled: false,
    #       internal_user_database_enabled: false,
    #       master_user_options: {
    #         master_user_arn: "ARN",
    #         master_user_name: "Username",
    #         master_user_password: "Password",
    #       },
    #       saml_options: {
    #         enabled: false,
    #         idp: {
    #           metadata_content: "SAMLMetadata", # required
    #           entity_id: "SAMLEntityId", # required
    #         },
    #         master_user_name: "Username",
    #         master_backend_role: "BackendRole",
    #         subject_key: "String",
    #         roles_key: "String",
    #         session_timeout_minutes: 1,
    #       },
    #       jwt_options: {
    #         enabled: false,
    #         subject_key: "SubjectKey",
    #         roles_key: "RolesKey",
    #         public_key: "String",
    #       },
    #       iam_federation_options: {
    #         enabled: false,
    #         subject_key: "IAMFederationSubjectKey",
    #         roles_key: "IAMFederationRolesKey",
    #       },
    #       anonymous_auth_enabled: false,
    #     },
    #     identity_center_options: {
    #       enabled_api_access: false,
    #       identity_center_instance_arn: "IdentityCenterInstanceARN",
    #       subject_key: "UserName", # accepts UserName, UserId, Email
    #       roles_key: "GroupName", # accepts GroupName, GroupId
    #     },
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     auto_tune_options: {
    #       desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #       maintenance_schedules: [
    #         {
    #           start_at: Time.now,
    #           duration: {
    #             value: 1,
    #             unit: "HOURS", # accepts HOURS
    #           },
    #           cron_expression_for_recurrence: "String",
    #         },
    #       ],
    #       use_off_peak_window: false,
    #     },
    #     off_peak_window_options: {
    #       enabled: false,
    #       off_peak_window: {
    #         window_start_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #       },
    #     },
    #     software_update_options: {
    #       auto_software_update_enabled: false,
    #     },
    #     aiml_options: {
    #       natural_language_query_generation_options: {
    #         desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       s3_vectors_engine: {
    #         enabled: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_status.domain_id #=> String
    #   resp.domain_status.domain_name #=> String
    #   resp.domain_status.arn #=> String
    #   resp.domain_status.created #=> Boolean
    #   resp.domain_status.deleted #=> Boolean
    #   resp.domain_status.endpoint #=> String
    #   resp.domain_status.endpoint_v2 #=> String
    #   resp.domain_status.endpoints #=> Hash
    #   resp.domain_status.endpoints["String"] #=> String
    #   resp.domain_status.domain_endpoint_v2_hosted_zone_id #=> String
    #   resp.domain_status.processing #=> Boolean
    #   resp.domain_status.upgrade_processing #=> Boolean
    #   resp.domain_status.engine_version #=> String
    #   resp.domain_status.cluster_config.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.instance_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status.cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status.cluster_config.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_status.cluster_config.warm_count #=> Integer
    #   resp.domain_status.cluster_config.cold_storage_options.enabled #=> Boolean
    #   resp.domain_status.cluster_config.multi_az_with_standby_enabled #=> Boolean
    #   resp.domain_status.cluster_config.node_options #=> Array
    #   resp.domain_status.cluster_config.node_options[0].node_type #=> String, one of "coordinator"
    #   resp.domain_status.cluster_config.node_options[0].node_config.enabled #=> Boolean
    #   resp.domain_status.cluster_config.node_options[0].node_config.type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.node_options[0].node_config.count #=> Integer
    #   resp.domain_status.ebs_options.ebs_enabled #=> Boolean
    #   resp.domain_status.ebs_options.volume_type #=> String, one of "standard", "gp2", "io1", "gp3"
    #   resp.domain_status.ebs_options.volume_size #=> Integer
    #   resp.domain_status.ebs_options.iops #=> Integer
    #   resp.domain_status.ebs_options.throughput #=> Integer
    #   resp.domain_status.access_policies #=> String
    #   resp.domain_status.ip_address_type #=> String, one of "ipv4", "dualstack"
    #   resp.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_status.vpc_options.vpc_id #=> String
    #   resp.domain_status.vpc_options.subnet_ids #=> Array
    #   resp.domain_status.vpc_options.subnet_ids[0] #=> String
    #   resp.domain_status.vpc_options.availability_zones #=> Array
    #   resp.domain_status.vpc_options.availability_zones[0] #=> String
    #   resp.domain_status.vpc_options.security_group_ids #=> Array
    #   resp.domain_status.vpc_options.security_group_ids[0] #=> String
    #   resp.domain_status.cognito_options.enabled #=> Boolean
    #   resp.domain_status.cognito_options.user_pool_id #=> String
    #   resp.domain_status.cognito_options.identity_pool_id #=> String
    #   resp.domain_status.cognito_options.role_arn #=> String
    #   resp.domain_status.encryption_at_rest_options.enabled #=> Boolean
    #   resp.domain_status.encryption_at_rest_options.kms_key_id #=> String
    #   resp.domain_status.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.domain_status.advanced_options #=> Hash
    #   resp.domain_status.advanced_options["String"] #=> String
    #   resp.domain_status.log_publishing_options #=> Hash
    #   resp.domain_status.log_publishing_options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_status.log_publishing_options["LogType"].enabled #=> Boolean
    #   resp.domain_status.service_software_options.current_version #=> String
    #   resp.domain_status.service_software_options.new_version #=> String
    #   resp.domain_status.service_software_options.update_available #=> Boolean
    #   resp.domain_status.service_software_options.cancellable #=> Boolean
    #   resp.domain_status.service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.domain_status.service_software_options.description #=> String
    #   resp.domain_status.service_software_options.automated_update_date #=> Time
    #   resp.domain_status.service_software_options.optional_deployment #=> Boolean
    #   resp.domain_status.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.domain_status.domain_endpoint_options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_status.domain_endpoint_options.custom_endpoint #=> String
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.domain_status.advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.domain_status.advanced_security_options.saml_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_status.advanced_security_options.jwt_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.jwt_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.jwt_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.jwt_options.public_key #=> String
    #   resp.domain_status.advanced_security_options.iam_federation_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.iam_federation_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.iam_federation_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.domain_status.advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_status.identity_center_options.enabled_api_access #=> Boolean
    #   resp.domain_status.identity_center_options.identity_center_instance_arn #=> String
    #   resp.domain_status.identity_center_options.subject_key #=> String, one of "UserName", "UserId", "Email"
    #   resp.domain_status.identity_center_options.roles_key #=> String, one of "GroupName", "GroupId"
    #   resp.domain_status.identity_center_options.identity_center_application_arn #=> String
    #   resp.domain_status.identity_center_options.identity_store_id #=> String
    #   resp.domain_status.auto_tune_options.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_status.auto_tune_options.error_message #=> String
    #   resp.domain_status.auto_tune_options.use_off_peak_window #=> Boolean
    #   resp.domain_status.change_progress_details.change_id #=> String
    #   resp.domain_status.change_progress_details.message #=> String
    #   resp.domain_status.change_progress_details.config_change_status #=> String, one of "Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"
    #   resp.domain_status.change_progress_details.initiated_by #=> String, one of "CUSTOMER", "SERVICE"
    #   resp.domain_status.change_progress_details.start_time #=> Time
    #   resp.domain_status.change_progress_details.last_updated_time #=> Time
    #   resp.domain_status.off_peak_window_options.enabled #=> Boolean
    #   resp.domain_status.off_peak_window_options.off_peak_window.window_start_time.hours #=> Integer
    #   resp.domain_status.off_peak_window_options.off_peak_window.window_start_time.minutes #=> Integer
    #   resp.domain_status.software_update_options.auto_software_update_enabled #=> Boolean
    #   resp.domain_status.domain_processing_status #=> String, one of "Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"
    #   resp.domain_status.modifying_properties #=> Array
    #   resp.domain_status.modifying_properties[0].name #=> String
    #   resp.domain_status.modifying_properties[0].active_value #=> String
    #   resp.domain_status.modifying_properties[0].pending_value #=> String
    #   resp.domain_status.modifying_properties[0].value_type #=> String, one of "PLAIN_TEXT", "STRINGIFIED_JSON"
    #   resp.domain_status.aiml_options.natural_language_query_generation_options.desired_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.domain_status.aiml_options.natural_language_query_generation_options.current_state #=> String, one of "NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"
    #   resp.domain_status.aiml_options.s3_vectors_engine.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates a new cross-cluster search connection from a source Amazon
    # OpenSearch Service domain to a destination domain. For more
    # information, see [Cross-cluster search for Amazon OpenSearch
    # Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html
    #
    # @option params [required, Types::DomainInformationContainer] :local_domain_info
    #   Name and Region of the source (local) domain.
    #
    # @option params [required, Types::DomainInformationContainer] :remote_domain_info
    #   Name and Region of the destination (remote) domain.
    #
    # @option params [required, String] :connection_alias
    #   Name of the connection.
    #
    # @option params [String] :connection_mode
    #   The connection mode.
    #
    # @option params [Types::ConnectionProperties] :connection_properties
    #   The `ConnectionProperties` for the outbound connection.
    #
    # @return [Types::CreateOutboundConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOutboundConnectionResponse#local_domain_info #local_domain_info} => Types::DomainInformationContainer
    #   * {Types::CreateOutboundConnectionResponse#remote_domain_info #remote_domain_info} => Types::DomainInformationContainer
    #   * {Types::CreateOutboundConnectionResponse#connection_alias #connection_alias} => String
    #   * {Types::CreateOutboundConnectionResponse#connection_status #connection_status} => Types::OutboundConnectionStatus
    #   * {Types::CreateOutboundConnectionResponse#connection_id #connection_id} => String
    #   * {Types::CreateOutboundConnectionResponse#connection_mode #connection_mode} => String
    #   * {Types::CreateOutboundConnectionResponse#connection_properties #connection_properties} => Types::ConnectionProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_outbound_connection({
    #     local_domain_info: { # required
    #       aws_domain_information: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region",
    #       },
    #     },
    #     remote_domain_info: { # required
    #       aws_domain_information: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region",
    #       },
    #     },
    #     connection_alias: "ConnectionAlias", # required
    #     connection_mode: "DIRECT", # accepts DIRECT, VPC_ENDPOINT
    #     connection_properties: {
    #       endpoint: "Endpoint",
    #       cross_cluster_search: {
    #         skip_unavailable: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.local_domain_info.aws_domain_information.region #=> String
    #   resp.remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.remote_domain_info.aws_domain_information.region #=> String
    #   resp.connection_alias #=> String
    #   resp.connection_status.status_code #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connection_status.message #=> String
    #   resp.connection_id #=> String
    #   resp.connection_mode #=> String, one of "DIRECT", "VPC_ENDPOINT"
    #   resp.connection_properties.endpoint #=> String
    #   resp.connection_properties.cross_cluster_search.skip_unavailable #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateOutboundConnection AWS API Documentation
    #
    # @overload create_outbound_connection(params = {})
    # @param [Hash] params ({})
    def create_outbound_connection(params = {}, options = {})
      req = build_request(:create_outbound_connection, params)
      req.send_request(options)
    end

    # Creates a package for use with Amazon OpenSearch Service domains. For
    # more information, see [Custom packages for Amazon OpenSearch
    # Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html
    #
    # @option params [required, String] :package_name
    #   Unique name for the package.
    #
    # @option params [required, String] :package_type
    #   The type of package.
    #
    # @option params [String] :package_description
    #   Description of the package.
    #
    # @option params [required, Types::PackageSource] :package_source
    #   The Amazon S3 location from which to import the package.
    #
    # @option params [Types::PackageConfiguration] :package_configuration
    #   The configuration parameters for the package being created.
    #
    # @option params [String] :engine_version
    #   The version of the Amazon OpenSearch Service engine for which is
    #   compatible with the package. This can only be specified for package
    #   type `ZIP-PLUGIN`
    #
    # @option params [Types::PackageVendingOptions] :package_vending_options
    #   The vending options for the package being created. They determine if
    #   the package can be vended to other users.
    #
    # @option params [Types::PackageEncryptionOptions] :package_encryption_options
    #   The encryption parameters for the package being created.
    #
    # @return [Types::CreatePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePackageResponse#package_details #package_details} => Types::PackageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_package({
    #     package_name: "PackageName", # required
    #     package_type: "TXT-DICTIONARY", # required, accepts TXT-DICTIONARY, ZIP-PLUGIN, PACKAGE-LICENSE, PACKAGE-CONFIG
    #     package_description: "PackageDescription",
    #     package_source: { # required
    #       s3_bucket_name: "S3BucketName",
    #       s3_key: "S3Key",
    #     },
    #     package_configuration: {
    #       license_requirement: "REQUIRED", # required, accepts REQUIRED, OPTIONAL, NONE
    #       license_filepath: "LicenseFilepath",
    #       configuration_requirement: "REQUIRED", # required, accepts REQUIRED, OPTIONAL, NONE
    #       requires_restart_for_configuration_update: false,
    #     },
    #     engine_version: "EngineVersion",
    #     package_vending_options: {
    #       vending_enabled: false, # required
    #     },
    #     package_encryption_options: {
    #       kms_key_identifier: "KmsKeyId",
    #       encryption_enabled: false, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.package_details.package_id #=> String
    #   resp.package_details.package_name #=> String
    #   resp.package_details.package_type #=> String, one of "TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"
    #   resp.package_details.package_description #=> String
    #   resp.package_details.package_status #=> String, one of "COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.package_details.created_at #=> Time
    #   resp.package_details.last_updated_at #=> Time
    #   resp.package_details.available_package_version #=> String
    #   resp.package_details.error_details.error_type #=> String
    #   resp.package_details.error_details.error_message #=> String
    #   resp.package_details.engine_version #=> String
    #   resp.package_details.available_plugin_properties.name #=> String
    #   resp.package_details.available_plugin_properties.description #=> String
    #   resp.package_details.available_plugin_properties.version #=> String
    #   resp.package_details.available_plugin_properties.class_name #=> String
    #   resp.package_details.available_plugin_properties.uncompressed_size_in_bytes #=> Integer
    #   resp.package_details.available_package_configuration.license_requirement #=> String, one of "REQUIRED", "OPTIONAL", "NONE"
    #   resp.package_details.available_package_configuration.license_filepath #=> String
    #   resp.package_details.available_package_configuration.configuration_requirement #=> String, one of "REQUIRED", "OPTIONAL", "NONE"
    #   resp.package_details.available_package_configuration.requires_restart_for_configuration_update #=> Boolean
    #   resp.package_details.allow_listed_user_list #=> Array
    #   resp.package_details.allow_listed_user_list[0] #=> String
    #   resp.package_details.package_owner #=> String
    #   resp.package_details.package_vending_options.vending_enabled #=> Boolean
    #   resp.package_details.package_encryption_options.kms_key_identifier #=> String
    #   resp.package_details.package_encryption_options.encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreatePackage AWS API Documentation
    #
    # @overload create_package(params = {})
    # @param [Hash] params ({})
    def create_package(params = {}, options = {})
      req = build_request(:create_package, params)
      req.send_request(options)
    end

    # Creates an Amazon OpenSearch Service-managed VPC endpoint.
    #
    # @option params [required, String] :domain_arn
    #   The Amazon Resource Name (ARN) of the domain to create the endpoint
    #   for.
    #
    # @option params [required, Types::VPCOptions] :vpc_options
    #   Options to specify the subnets and security groups for the endpoint.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    # @return [Types::CreateVpcEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpcEndpointResponse#vpc_endpoint #vpc_endpoint} => Types::VpcEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_endpoint({
    #     domain_arn: "DomainArn", # required
    #     vpc_options: { # required
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.vpc_endpoint.vpc_endpoint_owner #=> String
    #   resp.vpc_endpoint.domain_arn #=> String
    #   resp.vpc_endpoint.vpc_options.vpc_id #=> String
    #   resp.vpc_endpoint.vpc_options.subnet_ids #=> Array
    #   resp.vpc_endpoint.vpc_options.subnet_ids[0] #=> String
    #   resp.vpc_endpoint.vpc_options.availability_zones #=> Array
    #   resp.vpc_endpoint.vpc_options.availability_zones[0] #=> String
    #   resp.vpc_endpoint.vpc_options.security_group_ids #=> Array
    #   resp.vpc_endpoint.vpc_options.security_group_ids[0] #=> String
    #   resp.vpc_endpoint.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.vpc_endpoint.endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateVpcEndpoint AWS API Documentation
    #
    # @overload create_vpc_endpoint(params = {})
    # @param [Hash] params ({})
    def create_vpc_endpoint(params = {}, options = {})
      req = build_request(:create_vpc_endpoint, params)
      req.send_request(options)
    end

    # Deletes a specified OpenSearch application.
    #
    # @option params [required, String] :id
    #   The unique identifier of the OpenSearch application to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes a direct-query data source. For more information, see
    # [Deleting an Amazon OpenSearch Service data source with Amazon S3][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-delete.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @option params [required, String] :name
    #   The name of the data source to delete.
    #
    # @return [Types::DeleteDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSourceResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     domain_name: "DomainName", # required
    #     name: "DataSourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Deletes a previously configured direct query data source from Amazon
    # OpenSearch Service.
    #
    # @option params [required, String] :data_source_name
    #   A unique, user-defined label to identify the data source within your
    #   OpenSearch Service environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_direct_query_data_source({
    #     data_source_name: "DirectQueryDataSourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteDirectQueryDataSource AWS API Documentation
    #
    # @overload delete_direct_query_data_source(params = {})
    # @param [Hash] params ({})
    def delete_direct_query_data_source(params = {}, options = {})
      req = build_request(:delete_direct_query_data_source, params)
      req.send_request(options)
    end

    # Deletes an Amazon OpenSearch Service domain and all of its data. You
    # can't recover a domain after you delete it.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain you want to permanently delete.
    #
    # @return [Types::DeleteDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainResponse#domain_status #domain_status} => Types::DomainStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_status.domain_id #=> String
    #   resp.domain_status.domain_name #=> String
    #   resp.domain_status.arn #=> String
    #   resp.domain_status.created #=> Boolean
    #   resp.domain_status.deleted #=> Boolean
    #   resp.domain_status.endpoint #=> String
    #   resp.domain_status.endpoint_v2 #=> String
    #   resp.domain_status.endpoints #=> Hash
    #   resp.domain_status.endpoints["String"] #=> String
    #   resp.domain_status.domain_endpoint_v2_hosted_zone_id #=> String
    #   resp.domain_status.processing #=> Boolean
    #   resp.domain_status.upgrade_processing #=> Boolean
    #   resp.domain_status.engine_version #=> String
    #   resp.domain_status.cluster_config.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.instance_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status.cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status.cluster_config.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_status.cluster_config.warm_count #=> Integer
    #   resp.domain_status.cluster_config.cold_storage_options.enabled #=> Boolean
    #   resp.domain_status.cluster_config.multi_az_with_standby_enabled #=> Boolean
    #   resp.domain_status.cluster_config.node_options #=> Array
    #   resp.domain_status.cluster_config.node_options[0].node_type #=> String, one of "coordinator"
    #   resp.domain_status.cluster_config.node_options[0].node_config.enabled #=> Boolean
    #   resp.domain_status.cluster_config.node_options[0].node_config.type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.node_options[0].node_config.count #=> Integer
    #   resp.domain_status.ebs_options.ebs_enabled #=> Boolean
    #   resp.domain_status.ebs_options.volume_type #=> String, one of "standard", "gp2", "io1", "gp3"
    #   resp.domain_status.ebs_options.volume_size #=> Integer
    #   resp.domain_status.ebs_options.iops #=> Integer
    #   resp.domain_status.ebs_options.throughput #=> Integer
    #   resp.domain_status.access_policies #=> String
    #   resp.domain_status.ip_address_type #=> String, one of "ipv4", "dualstack"
    #   resp.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_status.vpc_options.vpc_id #=> String
    #   resp.domain_status.vpc_options.subnet_ids #=> Array
    #   resp.domain_status.vpc_options.subnet_ids[0] #=> String
    #   resp.domain_status.vpc_options.availability_zones #=> Array
    #   resp.domain_status.vpc_options.availability_zones[0] #=> String
    #   resp.domain_status.vpc_options.security_group_ids #=> Array
    #   resp.domain_status.vpc_options.security_group_ids[0] #=> String
    #   resp.domain_status.cognito_options.enabled #=> Boolean
    #   resp.domain_status.cognito_options.user_pool_id #=> String
    #   resp.domain_status.cognito_options.identity_pool_id #=> String
    #   resp.domain_status.cognito_options.role_arn #=> String
    #   resp.domain_status.encryption_at_rest_options.enabled #=> Boolean
    #   resp.domain_status.encryption_at_rest_options.kms_key_id #=> String
    #   resp.domain_status.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.domain_status.advanced_options #=> Hash
    #   resp.domain_status.advanced_options["String"] #=> String
    #   resp.domain_status.log_publishing_options #=> Hash
    #   resp.domain_status.log_publishing_options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_status.log_publishing_options["LogType"].enabled #=> Boolean
    #   resp.domain_status.service_software_options.current_version #=> String
    #   resp.domain_status.service_software_options.new_version #=> String
    #   resp.domain_status.service_software_options.update_available #=> Boolean
    #   resp.domain_status.service_software_options.cancellable #=> Boolean
    #   resp.domain_status.service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.domain_status.service_software_options.description #=> String
    #   resp.domain_status.service_software_options.automated_update_date #=> Time
    #   resp.domain_status.service_software_options.optional_deployment #=> Boolean
    #   resp.domain_status.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.domain_status.domain_endpoint_options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_status.domain_endpoint_options.custom_endpoint #=> String
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.domain_status.advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.domain_status.advanced_security_options.saml_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_status.advanced_security_options.jwt_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.jwt_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.jwt_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.jwt_options.public_key #=> String
    #   resp.domain_status.advanced_security_options.iam_federation_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.iam_federation_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.iam_federation_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.domain_status.advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_status.identity_center_options.enabled_api_access #=> Boolean
    #   resp.domain_status.identity_center_options.identity_center_instance_arn #=> String
    #   resp.domain_status.identity_center_options.subject_key #=> String, one of "UserName", "UserId", "Email"
    #   resp.domain_status.identity_center_options.roles_key #=> String, one of "GroupName", "GroupId"
    #   resp.domain_status.identity_center_options.identity_center_application_arn #=> String
    #   resp.domain_status.identity_center_options.identity_store_id #=> String
    #   resp.domain_status.auto_tune_options.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_status.auto_tune_options.error_message #=> String
    #   resp.domain_status.auto_tune_options.use_off_peak_window #=> Boolean
    #   resp.domain_status.change_progress_details.change_id #=> String
    #   resp.domain_status.change_progress_details.message #=> String
    #   resp.domain_status.change_progress_details.config_change_status #=> String, one of "Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"
    #   resp.domain_status.change_progress_details.initiated_by #=> String, one of "CUSTOMER", "SERVICE"
    #   resp.domain_status.change_progress_details.start_time #=> Time
    #   resp.domain_status.change_progress_details.last_updated_time #=> Time
    #   resp.domain_status.off_peak_window_options.enabled #=> Boolean
    #   resp.domain_status.off_peak_window_options.off_peak_window.window_start_time.hours #=> Integer
    #   resp.domain_status.off_peak_window_options.off_peak_window.window_start_time.minutes #=> Integer
    #   resp.domain_status.software_update_options.auto_software_update_enabled #=> Boolean
    #   resp.domain_status.domain_processing_status #=> String, one of "Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"
    #   resp.domain_status.modifying_properties #=> Array
    #   resp.domain_status.modifying_properties[0].name #=> String
    #   resp.domain_status.modifying_properties[0].active_value #=> String
    #   resp.domain_status.modifying_properties[0].pending_value #=> String
    #   resp.domain_status.modifying_properties[0].value_type #=> String, one of "PLAIN_TEXT", "STRINGIFIED_JSON"
    #   resp.domain_status.aiml_options.natural_language_query_generation_options.desired_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.domain_status.aiml_options.natural_language_query_generation_options.current_state #=> String, one of "NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"
    #   resp.domain_status.aiml_options.s3_vectors_engine.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Allows the destination Amazon OpenSearch Service domain owner to
    # delete an existing inbound cross-cluster search connection. For more
    # information, see [Cross-cluster search for Amazon OpenSearch
    # Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html
    #
    # @option params [required, String] :connection_id
    #   The ID of the inbound connection to permanently delete.
    #
    # @return [Types::DeleteInboundConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInboundConnectionResponse#connection #connection} => Types::InboundConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inbound_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.region #=> String
    #   resp.connection.connection_id #=> String
    #   resp.connection.connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connection.connection_status.message #=> String
    #   resp.connection.connection_mode #=> String, one of "DIRECT", "VPC_ENDPOINT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteInboundConnection AWS API Documentation
    #
    # @overload delete_inbound_connection(params = {})
    # @param [Hash] params ({})
    def delete_inbound_connection(params = {}, options = {})
      req = build_request(:delete_inbound_connection, params)
      req.send_request(options)
    end

    # Allows the source Amazon OpenSearch Service domain owner to delete an
    # existing outbound cross-cluster search connection. For more
    # information, see [Cross-cluster search for Amazon OpenSearch
    # Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html
    #
    # @option params [required, String] :connection_id
    #   The ID of the outbound connection you want to permanently delete.
    #
    # @return [Types::DeleteOutboundConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteOutboundConnectionResponse#connection #connection} => Types::OutboundConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_outbound_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.region #=> String
    #   resp.connection.connection_id #=> String
    #   resp.connection.connection_alias #=> String
    #   resp.connection.connection_status.status_code #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connection.connection_status.message #=> String
    #   resp.connection.connection_mode #=> String, one of "DIRECT", "VPC_ENDPOINT"
    #   resp.connection.connection_properties.endpoint #=> String
    #   resp.connection.connection_properties.cross_cluster_search.skip_unavailable #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteOutboundConnection AWS API Documentation
    #
    # @overload delete_outbound_connection(params = {})
    # @param [Hash] params ({})
    def delete_outbound_connection(params = {}, options = {})
      req = build_request(:delete_outbound_connection, params)
      req.send_request(options)
    end

    # Deletes an Amazon OpenSearch Service package. For more information,
    # see [Custom packages for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html
    #
    # @option params [required, String] :package_id
    #   The internal ID of the package you want to delete. Use
    #   `DescribePackages` to find this value.
    #
    # @return [Types::DeletePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePackageResponse#package_details #package_details} => Types::PackageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_package({
    #     package_id: "PackageID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.package_details.package_id #=> String
    #   resp.package_details.package_name #=> String
    #   resp.package_details.package_type #=> String, one of "TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"
    #   resp.package_details.package_description #=> String
    #   resp.package_details.package_status #=> String, one of "COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.package_details.created_at #=> Time
    #   resp.package_details.last_updated_at #=> Time
    #   resp.package_details.available_package_version #=> String
    #   resp.package_details.error_details.error_type #=> String
    #   resp.package_details.error_details.error_message #=> String
    #   resp.package_details.engine_version #=> String
    #   resp.package_details.available_plugin_properties.name #=> String
    #   resp.package_details.available_plugin_properties.description #=> String
    #   resp.package_details.available_plugin_properties.version #=> String
    #   resp.package_details.available_plugin_properties.class_name #=> String
    #   resp.package_details.available_plugin_properties.uncompressed_size_in_bytes #=> Integer
    #   resp.package_details.available_package_configuration.license_requirement #=> String, one of "REQUIRED", "OPTIONAL", "NONE"
    #   resp.package_details.available_package_configuration.license_filepath #=> String
    #   resp.package_details.available_package_configuration.configuration_requirement #=> String, one of "REQUIRED", "OPTIONAL", "NONE"
    #   resp.package_details.available_package_configuration.requires_restart_for_configuration_update #=> Boolean
    #   resp.package_details.allow_listed_user_list #=> Array
    #   resp.package_details.allow_listed_user_list[0] #=> String
    #   resp.package_details.package_owner #=> String
    #   resp.package_details.package_vending_options.vending_enabled #=> Boolean
    #   resp.package_details.package_encryption_options.kms_key_identifier #=> String
    #   resp.package_details.package_encryption_options.encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeletePackage AWS API Documentation
    #
    # @overload delete_package(params = {})
    # @param [Hash] params ({})
    def delete_package(params = {}, options = {})
      req = build_request(:delete_package, params)
      req.send_request(options)
    end

    # Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.
    #
    # @option params [required, String] :vpc_endpoint_id
    #   The unique identifier of the endpoint.
    #
    # @return [Types::DeleteVpcEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVpcEndpointResponse#vpc_endpoint_summary #vpc_endpoint_summary} => Types::VpcEndpointSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_endpoint({
    #     vpc_endpoint_id: "VpcEndpointId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_endpoint_summary.vpc_endpoint_id #=> String
    #   resp.vpc_endpoint_summary.vpc_endpoint_owner #=> String
    #   resp.vpc_endpoint_summary.domain_arn #=> String
    #   resp.vpc_endpoint_summary.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteVpcEndpoint AWS API Documentation
    #
    # @overload delete_vpc_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_vpc_endpoint(params = {}, options = {})
      req = build_request(:delete_vpc_endpoint, params)
      req.send_request(options)
    end

    # Describes the domain configuration for the specified Amazon OpenSearch
    # Service domain, including the domain ID, domain service endpoint, and
    # domain ARN.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want information about.
    #
    # @return [Types::DescribeDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainResponse#domain_status #domain_status} => Types::DomainStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_status.domain_id #=> String
    #   resp.domain_status.domain_name #=> String
    #   resp.domain_status.arn #=> String
    #   resp.domain_status.created #=> Boolean
    #   resp.domain_status.deleted #=> Boolean
    #   resp.domain_status.endpoint #=> String
    #   resp.domain_status.endpoint_v2 #=> String
    #   resp.domain_status.endpoints #=> Hash
    #   resp.domain_status.endpoints["String"] #=> String
    #   resp.domain_status.domain_endpoint_v2_hosted_zone_id #=> String
    #   resp.domain_status.processing #=> Boolean
    #   resp.domain_status.upgrade_processing #=> Boolean
    #   resp.domain_status.engine_version #=> String
    #   resp.domain_status.cluster_config.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.instance_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status.cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status.cluster_config.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_status.cluster_config.warm_count #=> Integer
    #   resp.domain_status.cluster_config.cold_storage_options.enabled #=> Boolean
    #   resp.domain_status.cluster_config.multi_az_with_standby_enabled #=> Boolean
    #   resp.domain_status.cluster_config.node_options #=> Array
    #   resp.domain_status.cluster_config.node_options[0].node_type #=> String, one of "coordinator"
    #   resp.domain_status.cluster_config.node_options[0].node_config.enabled #=> Boolean
    #   resp.domain_status.cluster_config.node_options[0].node_config.type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.node_options[0].node_config.count #=> Integer
    #   resp.domain_status.ebs_options.ebs_enabled #=> Boolean
    #   resp.domain_status.ebs_options.volume_type #=> String, one of "standard", "gp2", "io1", "gp3"
    #   resp.domain_status.ebs_options.volume_size #=> Integer
    #   resp.domain_status.ebs_options.iops #=> Integer
    #   resp.domain_status.ebs_options.throughput #=> Integer
    #   resp.domain_status.access_policies #=> String
    #   resp.domain_status.ip_address_type #=> String, one of "ipv4", "dualstack"
    #   resp.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_status.vpc_options.vpc_id #=> String
    #   resp.domain_status.vpc_options.subnet_ids #=> Array
    #   resp.domain_status.vpc_options.subnet_ids[0] #=> String
    #   resp.domain_status.vpc_options.availability_zones #=> Array
    #   resp.domain_status.vpc_options.availability_zones[0] #=> String
    #   resp.domain_status.vpc_options.security_group_ids #=> Array
    #   resp.domain_status.vpc_options.security_group_ids[0] #=> String
    #   resp.domain_status.cognito_options.enabled #=> Boolean
    #   resp.domain_status.cognito_options.user_pool_id #=> String
    #   resp.domain_status.cognito_options.identity_pool_id #=> String
    #   resp.domain_status.cognito_options.role_arn #=> String
    #   resp.domain_status.encryption_at_rest_options.enabled #=> Boolean
    #   resp.domain_status.encryption_at_rest_options.kms_key_id #=> String
    #   resp.domain_status.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.domain_status.advanced_options #=> Hash
    #   resp.domain_status.advanced_options["String"] #=> String
    #   resp.domain_status.log_publishing_options #=> Hash
    #   resp.domain_status.log_publishing_options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_status.log_publishing_options["LogType"].enabled #=> Boolean
    #   resp.domain_status.service_software_options.current_version #=> String
    #   resp.domain_status.service_software_options.new_version #=> String
    #   resp.domain_status.service_software_options.update_available #=> Boolean
    #   resp.domain_status.service_software_options.cancellable #=> Boolean
    #   resp.domain_status.service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.domain_status.service_software_options.description #=> String
    #   resp.domain_status.service_software_options.automated_update_date #=> Time
    #   resp.domain_status.service_software_options.optional_deployment #=> Boolean
    #   resp.domain_status.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.domain_status.domain_endpoint_options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_status.domain_endpoint_options.custom_endpoint #=> String
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.domain_status.advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.domain_status.advanced_security_options.saml_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_status.advanced_security_options.jwt_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.jwt_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.jwt_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.jwt_options.public_key #=> String
    #   resp.domain_status.advanced_security_options.iam_federation_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.iam_federation_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.iam_federation_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.domain_status.advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_status.identity_center_options.enabled_api_access #=> Boolean
    #   resp.domain_status.identity_center_options.identity_center_instance_arn #=> String
    #   resp.domain_status.identity_center_options.subject_key #=> String, one of "UserName", "UserId", "Email"
    #   resp.domain_status.identity_center_options.roles_key #=> String, one of "GroupName", "GroupId"
    #   resp.domain_status.identity_center_options.identity_center_application_arn #=> String
    #   resp.domain_status.identity_center_options.identity_store_id #=> String
    #   resp.domain_status.auto_tune_options.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_status.auto_tune_options.error_message #=> String
    #   resp.domain_status.auto_tune_options.use_off_peak_window #=> Boolean
    #   resp.domain_status.change_progress_details.change_id #=> String
    #   resp.domain_status.change_progress_details.message #=> String
    #   resp.domain_status.change_progress_details.config_change_status #=> String, one of "Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"
    #   resp.domain_status.change_progress_details.initiated_by #=> String, one of "CUSTOMER", "SERVICE"
    #   resp.domain_status.change_progress_details.start_time #=> Time
    #   resp.domain_status.change_progress_details.last_updated_time #=> Time
    #   resp.domain_status.off_peak_window_options.enabled #=> Boolean
    #   resp.domain_status.off_peak_window_options.off_peak_window.window_start_time.hours #=> Integer
    #   resp.domain_status.off_peak_window_options.off_peak_window.window_start_time.minutes #=> Integer
    #   resp.domain_status.software_update_options.auto_software_update_enabled #=> Boolean
    #   resp.domain_status.domain_processing_status #=> String, one of "Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"
    #   resp.domain_status.modifying_properties #=> Array
    #   resp.domain_status.modifying_properties[0].name #=> String
    #   resp.domain_status.modifying_properties[0].active_value #=> String
    #   resp.domain_status.modifying_properties[0].pending_value #=> String
    #   resp.domain_status.modifying_properties[0].value_type #=> String, one of "PLAIN_TEXT", "STRINGIFIED_JSON"
    #   resp.domain_status.aiml_options.natural_language_query_generation_options.desired_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.domain_status.aiml_options.natural_language_query_generation_options.current_state #=> String, one of "NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"
    #   resp.domain_status.aiml_options.s3_vectors_engine.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomain AWS API Documentation
    #
    # @overload describe_domain(params = {})
    # @param [Hash] params ({})
    def describe_domain(params = {}, options = {})
      req = build_request(:describe_domain, params)
      req.send_request(options)
    end

    # Returns the list of optimizations that Auto-Tune has made to an Amazon
    # OpenSearch Service domain. For more information, see [Auto-Tune for
    # Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @option params [required, String] :domain_name
    #   Name of the domain that you want Auto-Tune details about.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `DescribeDomainAutoTunes` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `DescribeDomainAutoTunes` operations, which returns results in the
    #   next page.
    #
    # @return [Types::DescribeDomainAutoTunesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainAutoTunesResponse#auto_tunes #auto_tunes} => Array&lt;Types::AutoTune&gt;
    #   * {Types::DescribeDomainAutoTunesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_auto_tunes({
    #     domain_name: "DomainName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_tunes #=> Array
    #   resp.auto_tunes[0].auto_tune_type #=> String, one of "SCHEDULED_ACTION"
    #   resp.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.date #=> Time
    #   resp.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.action_type #=> String, one of "JVM_HEAP_SIZE_TUNING", "JVM_YOUNG_GEN_TUNING"
    #   resp.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.action #=> String
    #   resp.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainAutoTunes AWS API Documentation
    #
    # @overload describe_domain_auto_tunes(params = {})
    # @param [Hash] params ({})
    def describe_domain_auto_tunes(params = {}, options = {})
      req = build_request(:describe_domain_auto_tunes, params)
      req.send_request(options)
    end

    # Returns information about the current blue/green deployment happening
    # on an Amazon OpenSearch Service domain. For more information, see
    # [Making configuration changes in Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain to get progress information for.
    #
    # @option params [String] :change_id
    #   The specific change ID for which you want to get progress information.
    #   If omitted, the request returns information about the most recent
    #   configuration change.
    #
    # @return [Types::DescribeDomainChangeProgressResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainChangeProgressResponse#change_progress_status #change_progress_status} => Types::ChangeProgressStatusDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_change_progress({
    #     domain_name: "DomainName", # required
    #     change_id: "GUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.change_progress_status.change_id #=> String
    #   resp.change_progress_status.start_time #=> Time
    #   resp.change_progress_status.status #=> String, one of "PENDING", "PROCESSING", "COMPLETED", "FAILED"
    #   resp.change_progress_status.pending_properties #=> Array
    #   resp.change_progress_status.pending_properties[0] #=> String
    #   resp.change_progress_status.completed_properties #=> Array
    #   resp.change_progress_status.completed_properties[0] #=> String
    #   resp.change_progress_status.total_number_of_stages #=> Integer
    #   resp.change_progress_status.change_progress_stages #=> Array
    #   resp.change_progress_status.change_progress_stages[0].name #=> String
    #   resp.change_progress_status.change_progress_stages[0].status #=> String
    #   resp.change_progress_status.change_progress_stages[0].description #=> String
    #   resp.change_progress_status.change_progress_stages[0].last_updated #=> Time
    #   resp.change_progress_status.last_updated_time #=> Time
    #   resp.change_progress_status.config_change_status #=> String, one of "Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"
    #   resp.change_progress_status.initiated_by #=> String, one of "CUSTOMER", "SERVICE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainChangeProgress AWS API Documentation
    #
    # @overload describe_domain_change_progress(params = {})
    # @param [Hash] params ({})
    def describe_domain_change_progress(params = {}, options = {})
      req = build_request(:describe_domain_change_progress, params)
      req.send_request(options)
    end

    # Returns the configuration of an Amazon OpenSearch Service domain.
    #
    # @option params [required, String] :domain_name
    #   Name of the OpenSearch Service domain configuration that you want to
    #   describe.
    #
    # @return [Types::DescribeDomainConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainConfigResponse#domain_config #domain_config} => Types::DomainConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_config({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_config.engine_version.options #=> String
    #   resp.domain_config.engine_version.status.creation_date #=> Time
    #   resp.domain_config.engine_version.status.update_date #=> Time
    #   resp.domain_config.engine_version.status.update_version #=> Integer
    #   resp.domain_config.engine_version.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.engine_version.status.pending_deletion #=> Boolean
    #   resp.domain_config.cluster_config.options.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_config.cluster_config.options.instance_count #=> Integer
    #   resp.domain_config.cluster_config.options.dedicated_master_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.zone_awareness_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_config.cluster_config.options.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_config.cluster_config.options.dedicated_master_count #=> Integer
    #   resp.domain_config.cluster_config.options.warm_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_config.cluster_config.options.warm_count #=> Integer
    #   resp.domain_config.cluster_config.options.cold_storage_options.enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.multi_az_with_standby_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.node_options #=> Array
    #   resp.domain_config.cluster_config.options.node_options[0].node_type #=> String, one of "coordinator"
    #   resp.domain_config.cluster_config.options.node_options[0].node_config.enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.node_options[0].node_config.type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_config.cluster_config.options.node_options[0].node_config.count #=> Integer
    #   resp.domain_config.cluster_config.status.creation_date #=> Time
    #   resp.domain_config.cluster_config.status.update_date #=> Time
    #   resp.domain_config.cluster_config.status.update_version #=> Integer
    #   resp.domain_config.cluster_config.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.cluster_config.status.pending_deletion #=> Boolean
    #   resp.domain_config.ebs_options.options.ebs_enabled #=> Boolean
    #   resp.domain_config.ebs_options.options.volume_type #=> String, one of "standard", "gp2", "io1", "gp3"
    #   resp.domain_config.ebs_options.options.volume_size #=> Integer
    #   resp.domain_config.ebs_options.options.iops #=> Integer
    #   resp.domain_config.ebs_options.options.throughput #=> Integer
    #   resp.domain_config.ebs_options.status.creation_date #=> Time
    #   resp.domain_config.ebs_options.status.update_date #=> Time
    #   resp.domain_config.ebs_options.status.update_version #=> Integer
    #   resp.domain_config.ebs_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.ebs_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.access_policies.options #=> String
    #   resp.domain_config.access_policies.status.creation_date #=> Time
    #   resp.domain_config.access_policies.status.update_date #=> Time
    #   resp.domain_config.access_policies.status.update_version #=> Integer
    #   resp.domain_config.access_policies.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.access_policies.status.pending_deletion #=> Boolean
    #   resp.domain_config.ip_address_type.options #=> String, one of "ipv4", "dualstack"
    #   resp.domain_config.ip_address_type.status.creation_date #=> Time
    #   resp.domain_config.ip_address_type.status.update_date #=> Time
    #   resp.domain_config.ip_address_type.status.update_version #=> Integer
    #   resp.domain_config.ip_address_type.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.ip_address_type.status.pending_deletion #=> Boolean
    #   resp.domain_config.snapshot_options.options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_config.snapshot_options.status.creation_date #=> Time
    #   resp.domain_config.snapshot_options.status.update_date #=> Time
    #   resp.domain_config.snapshot_options.status.update_version #=> Integer
    #   resp.domain_config.snapshot_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.snapshot_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.vpc_options.options.vpc_id #=> String
    #   resp.domain_config.vpc_options.options.subnet_ids #=> Array
    #   resp.domain_config.vpc_options.options.subnet_ids[0] #=> String
    #   resp.domain_config.vpc_options.options.availability_zones #=> Array
    #   resp.domain_config.vpc_options.options.availability_zones[0] #=> String
    #   resp.domain_config.vpc_options.options.security_group_ids #=> Array
    #   resp.domain_config.vpc_options.options.security_group_ids[0] #=> String
    #   resp.domain_config.vpc_options.status.creation_date #=> Time
    #   resp.domain_config.vpc_options.status.update_date #=> Time
    #   resp.domain_config.vpc_options.status.update_version #=> Integer
    #   resp.domain_config.vpc_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.vpc_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.cognito_options.options.enabled #=> Boolean
    #   resp.domain_config.cognito_options.options.user_pool_id #=> String
    #   resp.domain_config.cognito_options.options.identity_pool_id #=> String
    #   resp.domain_config.cognito_options.options.role_arn #=> String
    #   resp.domain_config.cognito_options.status.creation_date #=> Time
    #   resp.domain_config.cognito_options.status.update_date #=> Time
    #   resp.domain_config.cognito_options.status.update_version #=> Integer
    #   resp.domain_config.cognito_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.cognito_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.encryption_at_rest_options.options.enabled #=> Boolean
    #   resp.domain_config.encryption_at_rest_options.options.kms_key_id #=> String
    #   resp.domain_config.encryption_at_rest_options.status.creation_date #=> Time
    #   resp.domain_config.encryption_at_rest_options.status.update_date #=> Time
    #   resp.domain_config.encryption_at_rest_options.status.update_version #=> Integer
    #   resp.domain_config.encryption_at_rest_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.encryption_at_rest_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.node_to_node_encryption_options.options.enabled #=> Boolean
    #   resp.domain_config.node_to_node_encryption_options.status.creation_date #=> Time
    #   resp.domain_config.node_to_node_encryption_options.status.update_date #=> Time
    #   resp.domain_config.node_to_node_encryption_options.status.update_version #=> Integer
    #   resp.domain_config.node_to_node_encryption_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.node_to_node_encryption_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.advanced_options.options #=> Hash
    #   resp.domain_config.advanced_options.options["String"] #=> String
    #   resp.domain_config.advanced_options.status.creation_date #=> Time
    #   resp.domain_config.advanced_options.status.update_date #=> Time
    #   resp.domain_config.advanced_options.status.update_version #=> Integer
    #   resp.domain_config.advanced_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.advanced_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.log_publishing_options.options #=> Hash
    #   resp.domain_config.log_publishing_options.options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_config.log_publishing_options.options["LogType"].enabled #=> Boolean
    #   resp.domain_config.log_publishing_options.status.creation_date #=> Time
    #   resp.domain_config.log_publishing_options.status.update_date #=> Time
    #   resp.domain_config.log_publishing_options.status.update_version #=> Integer
    #   resp.domain_config.log_publishing_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.log_publishing_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.enforce_https #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint #=> String
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_config.domain_endpoint_options.status.creation_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_version #=> Integer
    #   resp.domain_config.domain_endpoint_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.domain_endpoint_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.advanced_security_options.options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.internal_user_database_enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.saml_options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.saml_options.idp.metadata_content #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.idp.entity_id #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.subject_key #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.roles_key #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_config.advanced_security_options.options.jwt_options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.jwt_options.subject_key #=> String
    #   resp.domain_config.advanced_security_options.options.jwt_options.roles_key #=> String
    #   resp.domain_config.advanced_security_options.options.jwt_options.public_key #=> String
    #   resp.domain_config.advanced_security_options.options.iam_federation_options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.iam_federation_options.subject_key #=> String
    #   resp.domain_config.advanced_security_options.options.iam_federation_options.roles_key #=> String
    #   resp.domain_config.advanced_security_options.options.anonymous_auth_disable_date #=> Time
    #   resp.domain_config.advanced_security_options.options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.status.creation_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_version #=> Integer
    #   resp.domain_config.advanced_security_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.advanced_security_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.identity_center_options.options.enabled_api_access #=> Boolean
    #   resp.domain_config.identity_center_options.options.identity_center_instance_arn #=> String
    #   resp.domain_config.identity_center_options.options.subject_key #=> String, one of "UserName", "UserId", "Email"
    #   resp.domain_config.identity_center_options.options.roles_key #=> String, one of "GroupName", "GroupId"
    #   resp.domain_config.identity_center_options.options.identity_center_application_arn #=> String
    #   resp.domain_config.identity_center_options.options.identity_store_id #=> String
    #   resp.domain_config.identity_center_options.status.creation_date #=> Time
    #   resp.domain_config.identity_center_options.status.update_date #=> Time
    #   resp.domain_config.identity_center_options.status.update_version #=> Integer
    #   resp.domain_config.identity_center_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.identity_center_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.auto_tune_options.options.desired_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.domain_config.auto_tune_options.options.rollback_on_disable #=> String, one of "NO_ROLLBACK", "DEFAULT_ROLLBACK"
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules #=> Array
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].start_at #=> Time
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.value #=> Integer
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.unit #=> String, one of "HOURS"
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].cron_expression_for_recurrence #=> String
    #   resp.domain_config.auto_tune_options.options.use_off_peak_window #=> Boolean
    #   resp.domain_config.auto_tune_options.status.creation_date #=> Time
    #   resp.domain_config.auto_tune_options.status.update_date #=> Time
    #   resp.domain_config.auto_tune_options.status.update_version #=> Integer
    #   resp.domain_config.auto_tune_options.status.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_config.auto_tune_options.status.error_message #=> String
    #   resp.domain_config.auto_tune_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.change_progress_details.change_id #=> String
    #   resp.domain_config.change_progress_details.message #=> String
    #   resp.domain_config.change_progress_details.config_change_status #=> String, one of "Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"
    #   resp.domain_config.change_progress_details.initiated_by #=> String, one of "CUSTOMER", "SERVICE"
    #   resp.domain_config.change_progress_details.start_time #=> Time
    #   resp.domain_config.change_progress_details.last_updated_time #=> Time
    #   resp.domain_config.off_peak_window_options.options.enabled #=> Boolean
    #   resp.domain_config.off_peak_window_options.options.off_peak_window.window_start_time.hours #=> Integer
    #   resp.domain_config.off_peak_window_options.options.off_peak_window.window_start_time.minutes #=> Integer
    #   resp.domain_config.off_peak_window_options.status.creation_date #=> Time
    #   resp.domain_config.off_peak_window_options.status.update_date #=> Time
    #   resp.domain_config.off_peak_window_options.status.update_version #=> Integer
    #   resp.domain_config.off_peak_window_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.off_peak_window_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.software_update_options.options.auto_software_update_enabled #=> Boolean
    #   resp.domain_config.software_update_options.status.creation_date #=> Time
    #   resp.domain_config.software_update_options.status.update_date #=> Time
    #   resp.domain_config.software_update_options.status.update_version #=> Integer
    #   resp.domain_config.software_update_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.software_update_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.modifying_properties #=> Array
    #   resp.domain_config.modifying_properties[0].name #=> String
    #   resp.domain_config.modifying_properties[0].active_value #=> String
    #   resp.domain_config.modifying_properties[0].pending_value #=> String
    #   resp.domain_config.modifying_properties[0].value_type #=> String, one of "PLAIN_TEXT", "STRINGIFIED_JSON"
    #   resp.domain_config.aiml_options.options.natural_language_query_generation_options.desired_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.domain_config.aiml_options.options.natural_language_query_generation_options.current_state #=> String, one of "NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"
    #   resp.domain_config.aiml_options.options.s3_vectors_engine.enabled #=> Boolean
    #   resp.domain_config.aiml_options.status.creation_date #=> Time
    #   resp.domain_config.aiml_options.status.update_date #=> Time
    #   resp.domain_config.aiml_options.status.update_version #=> Integer
    #   resp.domain_config.aiml_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.aiml_options.status.pending_deletion #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainConfig AWS API Documentation
    #
    # @overload describe_domain_config(params = {})
    # @param [Hash] params ({})
    def describe_domain_config(params = {}, options = {})
      req = build_request(:describe_domain_config, params)
      req.send_request(options)
    end

    # Returns information about domain and node health, the standby
    # Availability Zone, number of nodes per Availability Zone, and shard
    # count per node.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @return [Types::DescribeDomainHealthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainHealthResponse#domain_state #domain_state} => String
    #   * {Types::DescribeDomainHealthResponse#availability_zone_count #availability_zone_count} => String
    #   * {Types::DescribeDomainHealthResponse#active_availability_zone_count #active_availability_zone_count} => String
    #   * {Types::DescribeDomainHealthResponse#stand_by_availability_zone_count #stand_by_availability_zone_count} => String
    #   * {Types::DescribeDomainHealthResponse#data_node_count #data_node_count} => String
    #   * {Types::DescribeDomainHealthResponse#dedicated_master #dedicated_master} => Boolean
    #   * {Types::DescribeDomainHealthResponse#master_eligible_node_count #master_eligible_node_count} => String
    #   * {Types::DescribeDomainHealthResponse#warm_node_count #warm_node_count} => String
    #   * {Types::DescribeDomainHealthResponse#master_node #master_node} => String
    #   * {Types::DescribeDomainHealthResponse#cluster_health #cluster_health} => String
    #   * {Types::DescribeDomainHealthResponse#total_shards #total_shards} => String
    #   * {Types::DescribeDomainHealthResponse#total_un_assigned_shards #total_un_assigned_shards} => String
    #   * {Types::DescribeDomainHealthResponse#environment_information #environment_information} => Array&lt;Types::EnvironmentInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_health({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_state #=> String, one of "Active", "Processing", "NotAvailable"
    #   resp.availability_zone_count #=> String
    #   resp.active_availability_zone_count #=> String
    #   resp.stand_by_availability_zone_count #=> String
    #   resp.data_node_count #=> String
    #   resp.dedicated_master #=> Boolean
    #   resp.master_eligible_node_count #=> String
    #   resp.warm_node_count #=> String
    #   resp.master_node #=> String, one of "Available", "UnAvailable"
    #   resp.cluster_health #=> String, one of "Red", "Yellow", "Green", "NotAvailable"
    #   resp.total_shards #=> String
    #   resp.total_un_assigned_shards #=> String
    #   resp.environment_information #=> Array
    #   resp.environment_information[0].availability_zone_information #=> Array
    #   resp.environment_information[0].availability_zone_information[0].availability_zone_name #=> String
    #   resp.environment_information[0].availability_zone_information[0].zone_status #=> String, one of "Active", "StandBy", "NotAvailable"
    #   resp.environment_information[0].availability_zone_information[0].configured_data_node_count #=> String
    #   resp.environment_information[0].availability_zone_information[0].available_data_node_count #=> String
    #   resp.environment_information[0].availability_zone_information[0].total_shards #=> String
    #   resp.environment_information[0].availability_zone_information[0].total_un_assigned_shards #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainHealth AWS API Documentation
    #
    # @overload describe_domain_health(params = {})
    # @param [Hash] params ({})
    def describe_domain_health(params = {}, options = {})
      req = build_request(:describe_domain_health, params)
      req.send_request(options)
    end

    # Returns information about domain and nodes, including data nodes,
    # master nodes, ultrawarm nodes, Availability Zone(s), standby nodes,
    # node configurations, and node states.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @return [Types::DescribeDomainNodesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainNodesResponse#domain_nodes_status_list #domain_nodes_status_list} => Array&lt;Types::DomainNodesStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_nodes({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_nodes_status_list #=> Array
    #   resp.domain_nodes_status_list[0].node_id #=> String
    #   resp.domain_nodes_status_list[0].node_type #=> String, one of "Data", "Ultrawarm", "Master"
    #   resp.domain_nodes_status_list[0].availability_zone #=> String
    #   resp.domain_nodes_status_list[0].instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_nodes_status_list[0].node_status #=> String, one of "Active", "StandBy", "NotAvailable"
    #   resp.domain_nodes_status_list[0].storage_type #=> String
    #   resp.domain_nodes_status_list[0].storage_volume_type #=> String, one of "standard", "gp2", "io1", "gp3"
    #   resp.domain_nodes_status_list[0].storage_size #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainNodes AWS API Documentation
    #
    # @overload describe_domain_nodes(params = {})
    # @param [Hash] params ({})
    def describe_domain_nodes(params = {}, options = {})
      req = build_request(:describe_domain_nodes, params)
      req.send_request(options)
    end

    # Returns domain configuration information about the specified Amazon
    # OpenSearch Service domains.
    #
    # @option params [required, Array<String>] :domain_names
    #   Array of OpenSearch Service domain names that you want information
    #   about. You must specify at least one domain name.
    #
    # @return [Types::DescribeDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainsResponse#domain_status_list #domain_status_list} => Array&lt;Types::DomainStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domains({
    #     domain_names: ["DomainName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_status_list #=> Array
    #   resp.domain_status_list[0].domain_id #=> String
    #   resp.domain_status_list[0].domain_name #=> String
    #   resp.domain_status_list[0].arn #=> String
    #   resp.domain_status_list[0].created #=> Boolean
    #   resp.domain_status_list[0].deleted #=> Boolean
    #   resp.domain_status_list[0].endpoint #=> String
    #   resp.domain_status_list[0].endpoint_v2 #=> String
    #   resp.domain_status_list[0].endpoints #=> Hash
    #   resp.domain_status_list[0].endpoints["String"] #=> String
    #   resp.domain_status_list[0].domain_endpoint_v2_hosted_zone_id #=> String
    #   resp.domain_status_list[0].processing #=> Boolean
    #   resp.domain_status_list[0].upgrade_processing #=> Boolean
    #   resp.domain_status_list[0].engine_version #=> String
    #   resp.domain_status_list[0].cluster_config.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status_list[0].cluster_config.instance_count #=> Integer
    #   resp.domain_status_list[0].cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status_list[0].cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status_list[0].cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status_list[0].cluster_config.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status_list[0].cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status_list[0].cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status_list[0].cluster_config.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_status_list[0].cluster_config.warm_count #=> Integer
    #   resp.domain_status_list[0].cluster_config.cold_storage_options.enabled #=> Boolean
    #   resp.domain_status_list[0].cluster_config.multi_az_with_standby_enabled #=> Boolean
    #   resp.domain_status_list[0].cluster_config.node_options #=> Array
    #   resp.domain_status_list[0].cluster_config.node_options[0].node_type #=> String, one of "coordinator"
    #   resp.domain_status_list[0].cluster_config.node_options[0].node_config.enabled #=> Boolean
    #   resp.domain_status_list[0].cluster_config.node_options[0].node_config.type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status_list[0].cluster_config.node_options[0].node_config.count #=> Integer
    #   resp.domain_status_list[0].ebs_options.ebs_enabled #=> Boolean
    #   resp.domain_status_list[0].ebs_options.volume_type #=> String, one of "standard", "gp2", "io1", "gp3"
    #   resp.domain_status_list[0].ebs_options.volume_size #=> Integer
    #   resp.domain_status_list[0].ebs_options.iops #=> Integer
    #   resp.domain_status_list[0].ebs_options.throughput #=> Integer
    #   resp.domain_status_list[0].access_policies #=> String
    #   resp.domain_status_list[0].ip_address_type #=> String, one of "ipv4", "dualstack"
    #   resp.domain_status_list[0].snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_status_list[0].vpc_options.vpc_id #=> String
    #   resp.domain_status_list[0].vpc_options.subnet_ids #=> Array
    #   resp.domain_status_list[0].vpc_options.subnet_ids[0] #=> String
    #   resp.domain_status_list[0].vpc_options.availability_zones #=> Array
    #   resp.domain_status_list[0].vpc_options.availability_zones[0] #=> String
    #   resp.domain_status_list[0].vpc_options.security_group_ids #=> Array
    #   resp.domain_status_list[0].vpc_options.security_group_ids[0] #=> String
    #   resp.domain_status_list[0].cognito_options.enabled #=> Boolean
    #   resp.domain_status_list[0].cognito_options.user_pool_id #=> String
    #   resp.domain_status_list[0].cognito_options.identity_pool_id #=> String
    #   resp.domain_status_list[0].cognito_options.role_arn #=> String
    #   resp.domain_status_list[0].encryption_at_rest_options.enabled #=> Boolean
    #   resp.domain_status_list[0].encryption_at_rest_options.kms_key_id #=> String
    #   resp.domain_status_list[0].node_to_node_encryption_options.enabled #=> Boolean
    #   resp.domain_status_list[0].advanced_options #=> Hash
    #   resp.domain_status_list[0].advanced_options["String"] #=> String
    #   resp.domain_status_list[0].log_publishing_options #=> Hash
    #   resp.domain_status_list[0].log_publishing_options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_status_list[0].log_publishing_options["LogType"].enabled #=> Boolean
    #   resp.domain_status_list[0].service_software_options.current_version #=> String
    #   resp.domain_status_list[0].service_software_options.new_version #=> String
    #   resp.domain_status_list[0].service_software_options.update_available #=> Boolean
    #   resp.domain_status_list[0].service_software_options.cancellable #=> Boolean
    #   resp.domain_status_list[0].service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.domain_status_list[0].service_software_options.description #=> String
    #   resp.domain_status_list[0].service_software_options.automated_update_date #=> Time
    #   resp.domain_status_list[0].service_software_options.optional_deployment #=> Boolean
    #   resp.domain_status_list[0].domain_endpoint_options.enforce_https #=> Boolean
    #   resp.domain_status_list[0].domain_endpoint_options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"
    #   resp.domain_status_list[0].domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_status_list[0].domain_endpoint_options.custom_endpoint #=> String
    #   resp.domain_status_list[0].domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_status_list[0].advanced_security_options.enabled #=> Boolean
    #   resp.domain_status_list[0].advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.domain_status_list[0].advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.domain_status_list[0].advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.domain_status_list[0].advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.domain_status_list[0].advanced_security_options.saml_options.subject_key #=> String
    #   resp.domain_status_list[0].advanced_security_options.saml_options.roles_key #=> String
    #   resp.domain_status_list[0].advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_status_list[0].advanced_security_options.jwt_options.enabled #=> Boolean
    #   resp.domain_status_list[0].advanced_security_options.jwt_options.subject_key #=> String
    #   resp.domain_status_list[0].advanced_security_options.jwt_options.roles_key #=> String
    #   resp.domain_status_list[0].advanced_security_options.jwt_options.public_key #=> String
    #   resp.domain_status_list[0].advanced_security_options.iam_federation_options.enabled #=> Boolean
    #   resp.domain_status_list[0].advanced_security_options.iam_federation_options.subject_key #=> String
    #   resp.domain_status_list[0].advanced_security_options.iam_federation_options.roles_key #=> String
    #   resp.domain_status_list[0].advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.domain_status_list[0].advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_status_list[0].identity_center_options.enabled_api_access #=> Boolean
    #   resp.domain_status_list[0].identity_center_options.identity_center_instance_arn #=> String
    #   resp.domain_status_list[0].identity_center_options.subject_key #=> String, one of "UserName", "UserId", "Email"
    #   resp.domain_status_list[0].identity_center_options.roles_key #=> String, one of "GroupName", "GroupId"
    #   resp.domain_status_list[0].identity_center_options.identity_center_application_arn #=> String
    #   resp.domain_status_list[0].identity_center_options.identity_store_id #=> String
    #   resp.domain_status_list[0].auto_tune_options.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_status_list[0].auto_tune_options.error_message #=> String
    #   resp.domain_status_list[0].auto_tune_options.use_off_peak_window #=> Boolean
    #   resp.domain_status_list[0].change_progress_details.change_id #=> String
    #   resp.domain_status_list[0].change_progress_details.message #=> String
    #   resp.domain_status_list[0].change_progress_details.config_change_status #=> String, one of "Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"
    #   resp.domain_status_list[0].change_progress_details.initiated_by #=> String, one of "CUSTOMER", "SERVICE"
    #   resp.domain_status_list[0].change_progress_details.start_time #=> Time
    #   resp.domain_status_list[0].change_progress_details.last_updated_time #=> Time
    #   resp.domain_status_list[0].off_peak_window_options.enabled #=> Boolean
    #   resp.domain_status_list[0].off_peak_window_options.off_peak_window.window_start_time.hours #=> Integer
    #   resp.domain_status_list[0].off_peak_window_options.off_peak_window.window_start_time.minutes #=> Integer
    #   resp.domain_status_list[0].software_update_options.auto_software_update_enabled #=> Boolean
    #   resp.domain_status_list[0].domain_processing_status #=> String, one of "Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"
    #   resp.domain_status_list[0].modifying_properties #=> Array
    #   resp.domain_status_list[0].modifying_properties[0].name #=> String
    #   resp.domain_status_list[0].modifying_properties[0].active_value #=> String
    #   resp.domain_status_list[0].modifying_properties[0].pending_value #=> String
    #   resp.domain_status_list[0].modifying_properties[0].value_type #=> String, one of "PLAIN_TEXT", "STRINGIFIED_JSON"
    #   resp.domain_status_list[0].aiml_options.natural_language_query_generation_options.desired_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.domain_status_list[0].aiml_options.natural_language_query_generation_options.current_state #=> String, one of "NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"
    #   resp.domain_status_list[0].aiml_options.s3_vectors_engine.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomains AWS API Documentation
    #
    # @overload describe_domains(params = {})
    # @param [Hash] params ({})
    def describe_domains(params = {}, options = {})
      req = build_request(:describe_domains, params)
      req.send_request(options)
    end

    # Describes the progress of a pre-update dry run analysis on an Amazon
    # OpenSearch Service domain. For more information, see [Determining
    # whether a change will cause a blue/green deployment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#dryrun
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @option params [String] :dry_run_id
    #   The unique identifier of the dry run.
    #
    # @option params [Boolean] :load_dry_run_config
    #   Whether to include the configuration of the dry run in the response.
    #   The configuration specifies the updates that you're planning to make
    #   on the domain.
    #
    # @return [Types::DescribeDryRunProgressResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDryRunProgressResponse#dry_run_progress_status #dry_run_progress_status} => Types::DryRunProgressStatus
    #   * {Types::DescribeDryRunProgressResponse#dry_run_config #dry_run_config} => Types::DomainStatus
    #   * {Types::DescribeDryRunProgressResponse#dry_run_results #dry_run_results} => Types::DryRunResults
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dry_run_progress({
    #     domain_name: "DomainName", # required
    #     dry_run_id: "GUID",
    #     load_dry_run_config: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.dry_run_progress_status.dry_run_id #=> String
    #   resp.dry_run_progress_status.dry_run_status #=> String
    #   resp.dry_run_progress_status.creation_date #=> String
    #   resp.dry_run_progress_status.update_date #=> String
    #   resp.dry_run_progress_status.validation_failures #=> Array
    #   resp.dry_run_progress_status.validation_failures[0].code #=> String
    #   resp.dry_run_progress_status.validation_failures[0].message #=> String
    #   resp.dry_run_config.domain_id #=> String
    #   resp.dry_run_config.domain_name #=> String
    #   resp.dry_run_config.arn #=> String
    #   resp.dry_run_config.created #=> Boolean
    #   resp.dry_run_config.deleted #=> Boolean
    #   resp.dry_run_config.endpoint #=> String
    #   resp.dry_run_config.endpoint_v2 #=> String
    #   resp.dry_run_config.endpoints #=> Hash
    #   resp.dry_run_config.endpoints["String"] #=> String
    #   resp.dry_run_config.domain_endpoint_v2_hosted_zone_id #=> String
    #   resp.dry_run_config.processing #=> Boolean
    #   resp.dry_run_config.upgrade_processing #=> Boolean
    #   resp.dry_run_config.engine_version #=> String
    #   resp.dry_run_config.cluster_config.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.dry_run_config.cluster_config.instance_count #=> Integer
    #   resp.dry_run_config.cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.dry_run_config.cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.dry_run_config.cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.dry_run_config.cluster_config.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.dry_run_config.cluster_config.dedicated_master_count #=> Integer
    #   resp.dry_run_config.cluster_config.warm_enabled #=> Boolean
    #   resp.dry_run_config.cluster_config.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.dry_run_config.cluster_config.warm_count #=> Integer
    #   resp.dry_run_config.cluster_config.cold_storage_options.enabled #=> Boolean
    #   resp.dry_run_config.cluster_config.multi_az_with_standby_enabled #=> Boolean
    #   resp.dry_run_config.cluster_config.node_options #=> Array
    #   resp.dry_run_config.cluster_config.node_options[0].node_type #=> String, one of "coordinator"
    #   resp.dry_run_config.cluster_config.node_options[0].node_config.enabled #=> Boolean
    #   resp.dry_run_config.cluster_config.node_options[0].node_config.type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.dry_run_config.cluster_config.node_options[0].node_config.count #=> Integer
    #   resp.dry_run_config.ebs_options.ebs_enabled #=> Boolean
    #   resp.dry_run_config.ebs_options.volume_type #=> String, one of "standard", "gp2", "io1", "gp3"
    #   resp.dry_run_config.ebs_options.volume_size #=> Integer
    #   resp.dry_run_config.ebs_options.iops #=> Integer
    #   resp.dry_run_config.ebs_options.throughput #=> Integer
    #   resp.dry_run_config.access_policies #=> String
    #   resp.dry_run_config.ip_address_type #=> String, one of "ipv4", "dualstack"
    #   resp.dry_run_config.snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.dry_run_config.vpc_options.vpc_id #=> String
    #   resp.dry_run_config.vpc_options.subnet_ids #=> Array
    #   resp.dry_run_config.vpc_options.subnet_ids[0] #=> String
    #   resp.dry_run_config.vpc_options.availability_zones #=> Array
    #   resp.dry_run_config.vpc_options.availability_zones[0] #=> String
    #   resp.dry_run_config.vpc_options.security_group_ids #=> Array
    #   resp.dry_run_config.vpc_options.security_group_ids[0] #=> String
    #   resp.dry_run_config.cognito_options.enabled #=> Boolean
    #   resp.dry_run_config.cognito_options.user_pool_id #=> String
    #   resp.dry_run_config.cognito_options.identity_pool_id #=> String
    #   resp.dry_run_config.cognito_options.role_arn #=> String
    #   resp.dry_run_config.encryption_at_rest_options.enabled #=> Boolean
    #   resp.dry_run_config.encryption_at_rest_options.kms_key_id #=> String
    #   resp.dry_run_config.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.dry_run_config.advanced_options #=> Hash
    #   resp.dry_run_config.advanced_options["String"] #=> String
    #   resp.dry_run_config.log_publishing_options #=> Hash
    #   resp.dry_run_config.log_publishing_options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.dry_run_config.log_publishing_options["LogType"].enabled #=> Boolean
    #   resp.dry_run_config.service_software_options.current_version #=> String
    #   resp.dry_run_config.service_software_options.new_version #=> String
    #   resp.dry_run_config.service_software_options.update_available #=> Boolean
    #   resp.dry_run_config.service_software_options.cancellable #=> Boolean
    #   resp.dry_run_config.service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.dry_run_config.service_software_options.description #=> String
    #   resp.dry_run_config.service_software_options.automated_update_date #=> Time
    #   resp.dry_run_config.service_software_options.optional_deployment #=> Boolean
    #   resp.dry_run_config.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.dry_run_config.domain_endpoint_options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"
    #   resp.dry_run_config.domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.dry_run_config.domain_endpoint_options.custom_endpoint #=> String
    #   resp.dry_run_config.domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.dry_run_config.advanced_security_options.enabled #=> Boolean
    #   resp.dry_run_config.advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.dry_run_config.advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.dry_run_config.advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.dry_run_config.advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.dry_run_config.advanced_security_options.saml_options.subject_key #=> String
    #   resp.dry_run_config.advanced_security_options.saml_options.roles_key #=> String
    #   resp.dry_run_config.advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.dry_run_config.advanced_security_options.jwt_options.enabled #=> Boolean
    #   resp.dry_run_config.advanced_security_options.jwt_options.subject_key #=> String
    #   resp.dry_run_config.advanced_security_options.jwt_options.roles_key #=> String
    #   resp.dry_run_config.advanced_security_options.jwt_options.public_key #=> String
    #   resp.dry_run_config.advanced_security_options.iam_federation_options.enabled #=> Boolean
    #   resp.dry_run_config.advanced_security_options.iam_federation_options.subject_key #=> String
    #   resp.dry_run_config.advanced_security_options.iam_federation_options.roles_key #=> String
    #   resp.dry_run_config.advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.dry_run_config.advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.dry_run_config.identity_center_options.enabled_api_access #=> Boolean
    #   resp.dry_run_config.identity_center_options.identity_center_instance_arn #=> String
    #   resp.dry_run_config.identity_center_options.subject_key #=> String, one of "UserName", "UserId", "Email"
    #   resp.dry_run_config.identity_center_options.roles_key #=> String, one of "GroupName", "GroupId"
    #   resp.dry_run_config.identity_center_options.identity_center_application_arn #=> String
    #   resp.dry_run_config.identity_center_options.identity_store_id #=> String
    #   resp.dry_run_config.auto_tune_options.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.dry_run_config.auto_tune_options.error_message #=> String
    #   resp.dry_run_config.auto_tune_options.use_off_peak_window #=> Boolean
    #   resp.dry_run_config.change_progress_details.change_id #=> String
    #   resp.dry_run_config.change_progress_details.message #=> String
    #   resp.dry_run_config.change_progress_details.config_change_status #=> String, one of "Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"
    #   resp.dry_run_config.change_progress_details.initiated_by #=> String, one of "CUSTOMER", "SERVICE"
    #   resp.dry_run_config.change_progress_details.start_time #=> Time
    #   resp.dry_run_config.change_progress_details.last_updated_time #=> Time
    #   resp.dry_run_config.off_peak_window_options.enabled #=> Boolean
    #   resp.dry_run_config.off_peak_window_options.off_peak_window.window_start_time.hours #=> Integer
    #   resp.dry_run_config.off_peak_window_options.off_peak_window.window_start_time.minutes #=> Integer
    #   resp.dry_run_config.software_update_options.auto_software_update_enabled #=> Boolean
    #   resp.dry_run_config.domain_processing_status #=> String, one of "Creating", "Active", "Modifying", "UpgradingEngineVersion", "UpdatingServiceSoftware", "Isolated", "Deleting"
    #   resp.dry_run_config.modifying_properties #=> Array
    #   resp.dry_run_config.modifying_properties[0].name #=> String
    #   resp.dry_run_config.modifying_properties[0].active_value #=> String
    #   resp.dry_run_config.modifying_properties[0].pending_value #=> String
    #   resp.dry_run_config.modifying_properties[0].value_type #=> String, one of "PLAIN_TEXT", "STRINGIFIED_JSON"
    #   resp.dry_run_config.aiml_options.natural_language_query_generation_options.desired_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.dry_run_config.aiml_options.natural_language_query_generation_options.current_state #=> String, one of "NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"
    #   resp.dry_run_config.aiml_options.s3_vectors_engine.enabled #=> Boolean
    #   resp.dry_run_results.deployment_type #=> String
    #   resp.dry_run_results.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDryRunProgress AWS API Documentation
    #
    # @overload describe_dry_run_progress(params = {})
    # @param [Hash] params ({})
    def describe_dry_run_progress(params = {}, options = {})
      req = build_request(:describe_dry_run_progress, params)
      req.send_request(options)
    end

    # Lists all the inbound cross-cluster search connections for a
    # destination (remote) Amazon OpenSearch Service domain. For more
    # information, see [Cross-cluster search for Amazon OpenSearch
    # Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   A list of filters used to match properties for inbound cross-cluster
    #   connections.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `DescribeInboundConnections` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `DescribeInboundConnections` operations, which returns results in the
    #   next page.
    #
    # @return [Types::DescribeInboundConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInboundConnectionsResponse#connections #connections} => Array&lt;Types::InboundConnection&gt;
    #   * {Types::DescribeInboundConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_inbound_connections({
    #     filters: [
    #       {
    #         name: "NonEmptyString",
    #         values: ["NonEmptyString"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connections[0].local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connections[0].local_domain_info.aws_domain_information.region #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.region #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connections[0].connection_status.message #=> String
    #   resp.connections[0].connection_mode #=> String, one of "DIRECT", "VPC_ENDPOINT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInboundConnections AWS API Documentation
    #
    # @overload describe_inbound_connections(params = {})
    # @param [Hash] params ({})
    def describe_inbound_connections(params = {}, options = {})
      req = build_request(:describe_inbound_connections, params)
      req.send_request(options)
    end

    # Describes the instance count, storage, and master node limits for a
    # given OpenSearch or Elasticsearch version and instance type.
    #
    # @option params [String] :domain_name
    #   The name of the domain. Only specify if you need the limits for an
    #   existing domain.
    #
    # @option params [required, String] :instance_type
    #   The OpenSearch Service instance type for which you need limit
    #   information.
    #
    # @option params [required, String] :engine_version
    #   Version of OpenSearch or Elasticsearch, in the format
    #   Elasticsearch\_X.Y or OpenSearch\_X.Y. Defaults to the latest version
    #   of OpenSearch.
    #
    # @return [Types::DescribeInstanceTypeLimitsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceTypeLimitsResponse#limits_by_role #limits_by_role} => Hash&lt;String,Types::Limits&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_type_limits({
    #     domain_name: "DomainName",
    #     instance_type: "m3.medium.search", # required, accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, or1.medium.search, or1.large.search, or1.xlarge.search, or1.2xlarge.search, or1.4xlarge.search, or1.8xlarge.search, or1.12xlarge.search, or1.16xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #     engine_version: "VersionString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.limits_by_role #=> Hash
    #   resp.limits_by_role["InstanceRole"].storage_types #=> Array
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_type_name #=> String
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_sub_type_name #=> String
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_type_limits #=> Array
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_type_limits[0].limit_name #=> String
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_type_limits[0].limit_values #=> Array
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_type_limits[0].limit_values[0] #=> String
    #   resp.limits_by_role["InstanceRole"].instance_limits.instance_count_limits.minimum_instance_count #=> Integer
    #   resp.limits_by_role["InstanceRole"].instance_limits.instance_count_limits.maximum_instance_count #=> Integer
    #   resp.limits_by_role["InstanceRole"].additional_limits #=> Array
    #   resp.limits_by_role["InstanceRole"].additional_limits[0].limit_name #=> String
    #   resp.limits_by_role["InstanceRole"].additional_limits[0].limit_values #=> Array
    #   resp.limits_by_role["InstanceRole"].additional_limits[0].limit_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInstanceTypeLimits AWS API Documentation
    #
    # @overload describe_instance_type_limits(params = {})
    # @param [Hash] params ({})
    def describe_instance_type_limits(params = {}, options = {})
      req = build_request(:describe_instance_type_limits, params)
      req.send_request(options)
    end

    # Lists all the outbound cross-cluster connections for a local (source)
    # Amazon OpenSearch Service domain. For more information, see
    # [Cross-cluster search for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   List of filter names and values that you can use for requests.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `DescribeOutboundConnections` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `DescribeOutboundConnections` operations, which returns results in the
    #   next page.
    #
    # @return [Types::DescribeOutboundConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOutboundConnectionsResponse#connections #connections} => Array&lt;Types::OutboundConnection&gt;
    #   * {Types::DescribeOutboundConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_outbound_connections({
    #     filters: [
    #       {
    #         name: "NonEmptyString",
    #         values: ["NonEmptyString"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connections[0].local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connections[0].local_domain_info.aws_domain_information.region #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.region #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_alias #=> String
    #   resp.connections[0].connection_status.status_code #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connections[0].connection_status.message #=> String
    #   resp.connections[0].connection_mode #=> String, one of "DIRECT", "VPC_ENDPOINT"
    #   resp.connections[0].connection_properties.endpoint #=> String
    #   resp.connections[0].connection_properties.cross_cluster_search.skip_unavailable #=> String, one of "ENABLED", "DISABLED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeOutboundConnections AWS API Documentation
    #
    # @overload describe_outbound_connections(params = {})
    # @param [Hash] params ({})
    def describe_outbound_connections(params = {}, options = {})
      req = build_request(:describe_outbound_connections, params)
      req.send_request(options)
    end

    # Describes all packages available to OpenSearch Service. For more
    # information, see [Custom packages for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html
    #
    # @option params [Array<Types::DescribePackagesFilter>] :filters
    #   Only returns packages that match the `DescribePackagesFilterList`
    #   values.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `DescribePackageFilters` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `DescribePackageFilters` operations, which returns results in the next
    #   page.
    #
    # @return [Types::DescribePackagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackagesResponse#package_details_list #package_details_list} => Array&lt;Types::PackageDetails&gt;
    #   * {Types::DescribePackagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_packages({
    #     filters: [
    #       {
    #         name: "PackageID", # accepts PackageID, PackageName, PackageStatus, PackageType, EngineVersion, PackageOwner
    #         value: ["DescribePackagesFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.package_details_list #=> Array
    #   resp.package_details_list[0].package_id #=> String
    #   resp.package_details_list[0].package_name #=> String
    #   resp.package_details_list[0].package_type #=> String, one of "TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"
    #   resp.package_details_list[0].package_description #=> String
    #   resp.package_details_list[0].package_status #=> String, one of "COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.package_details_list[0].created_at #=> Time
    #   resp.package_details_list[0].last_updated_at #=> Time
    #   resp.package_details_list[0].available_package_version #=> String
    #   resp.package_details_list[0].error_details.error_type #=> String
    #   resp.package_details_list[0].error_details.error_message #=> String
    #   resp.package_details_list[0].engine_version #=> String
    #   resp.package_details_list[0].available_plugin_properties.name #=> String
    #   resp.package_details_list[0].available_plugin_properties.description #=> String
    #   resp.package_details_list[0].available_plugin_properties.version #=> String
    #   resp.package_details_list[0].available_plugin_properties.class_name #=> String
    #   resp.package_details_list[0].available_plugin_properties.uncompressed_size_in_bytes #=> Integer
    #   resp.package_details_list[0].available_package_configuration.license_requirement #=> String, one of "REQUIRED", "OPTIONAL", "NONE"
    #   resp.package_details_list[0].available_package_configuration.license_filepath #=> String
    #   resp.package_details_list[0].available_package_configuration.configuration_requirement #=> String, one of "REQUIRED", "OPTIONAL", "NONE"
    #   resp.package_details_list[0].available_package_configuration.requires_restart_for_configuration_update #=> Boolean
    #   resp.package_details_list[0].allow_listed_user_list #=> Array
    #   resp.package_details_list[0].allow_listed_user_list[0] #=> String
    #   resp.package_details_list[0].package_owner #=> String
    #   resp.package_details_list[0].package_vending_options.vending_enabled #=> Boolean
    #   resp.package_details_list[0].package_encryption_options.kms_key_identifier #=> String
    #   resp.package_details_list[0].package_encryption_options.encryption_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribePackages AWS API Documentation
    #
    # @overload describe_packages(params = {})
    # @param [Hash] params ({})
    def describe_packages(params = {}, options = {})
      req = build_request(:describe_packages, params)
      req.send_request(options)
    end

    # Describes the available Amazon OpenSearch Service Reserved Instance
    # offerings for a given Region. For more information, see [Reserved
    # Instances in Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html
    #
    # @option params [String] :reserved_instance_offering_id
    #   The Reserved Instance identifier filter value. Use this parameter to
    #   show only the available instance types that match the specified
    #   reservation identifier.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `DescribeReservedInstanceOfferings` operation returns
    #   a `nextToken`, you can include the returned `nextToken` in subsequent
    #   `DescribeReservedInstanceOfferings` operations, which returns results
    #   in the next page.
    #
    # @return [Types::DescribeReservedInstanceOfferingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedInstanceOfferingsResponse#next_token #next_token} => String
    #   * {Types::DescribeReservedInstanceOfferingsResponse#reserved_instance_offerings #reserved_instance_offerings} => Array&lt;Types::ReservedInstanceOffering&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_instance_offerings({
    #     reserved_instance_offering_id: "GUID",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reserved_instance_offerings #=> Array
    #   resp.reserved_instance_offerings[0].reserved_instance_offering_id #=> String
    #   resp.reserved_instance_offerings[0].instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.reserved_instance_offerings[0].duration #=> Integer
    #   resp.reserved_instance_offerings[0].fixed_price #=> Float
    #   resp.reserved_instance_offerings[0].usage_price #=> Float
    #   resp.reserved_instance_offerings[0].currency_code #=> String
    #   resp.reserved_instance_offerings[0].payment_option #=> String, one of "ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"
    #   resp.reserved_instance_offerings[0].recurring_charges #=> Array
    #   resp.reserved_instance_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_instance_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstanceOfferings AWS API Documentation
    #
    # @overload describe_reserved_instance_offerings(params = {})
    # @param [Hash] params ({})
    def describe_reserved_instance_offerings(params = {}, options = {})
      req = build_request(:describe_reserved_instance_offerings, params)
      req.send_request(options)
    end

    # Describes the Amazon OpenSearch Service instances that you have
    # reserved in a given Region. For more information, see [Reserved
    # Instances in Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html
    #
    # @option params [String] :reserved_instance_id
    #   The reserved instance identifier filter value. Use this parameter to
    #   show only the reservation that matches the specified reserved
    #   OpenSearch instance ID.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `DescribeReservedInstances` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `DescribeReservedInstances` operations, which returns results in the
    #   next page.
    #
    # @return [Types::DescribeReservedInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedInstancesResponse#next_token #next_token} => String
    #   * {Types::DescribeReservedInstancesResponse#reserved_instances #reserved_instances} => Array&lt;Types::ReservedInstance&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_instances({
    #     reserved_instance_id: "GUID",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reserved_instances #=> Array
    #   resp.reserved_instances[0].reservation_name #=> String
    #   resp.reserved_instances[0].reserved_instance_id #=> String
    #   resp.reserved_instances[0].billing_subscription_id #=> Integer
    #   resp.reserved_instances[0].reserved_instance_offering_id #=> String
    #   resp.reserved_instances[0].instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.reserved_instances[0].start_time #=> Time
    #   resp.reserved_instances[0].duration #=> Integer
    #   resp.reserved_instances[0].fixed_price #=> Float
    #   resp.reserved_instances[0].usage_price #=> Float
    #   resp.reserved_instances[0].currency_code #=> String
    #   resp.reserved_instances[0].instance_count #=> Integer
    #   resp.reserved_instances[0].state #=> String
    #   resp.reserved_instances[0].payment_option #=> String, one of "ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"
    #   resp.reserved_instances[0].recurring_charges #=> Array
    #   resp.reserved_instances[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_instances[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstances AWS API Documentation
    #
    # @overload describe_reserved_instances(params = {})
    # @param [Hash] params ({})
    def describe_reserved_instances(params = {}, options = {})
      req = build_request(:describe_reserved_instances, params)
      req.send_request(options)
    end

    # Describes one or more Amazon OpenSearch Service-managed VPC endpoints.
    #
    # @option params [required, Array<String>] :vpc_endpoint_ids
    #   The unique identifiers of the endpoints to get information about.
    #
    # @return [Types::DescribeVpcEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcEndpointsResponse#vpc_endpoints #vpc_endpoints} => Array&lt;Types::VpcEndpoint&gt;
    #   * {Types::DescribeVpcEndpointsResponse#vpc_endpoint_errors #vpc_endpoint_errors} => Array&lt;Types::VpcEndpointError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_endpoints({
    #     vpc_endpoint_ids: ["VpcEndpointId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_endpoints #=> Array
    #   resp.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.vpc_endpoints[0].vpc_endpoint_owner #=> String
    #   resp.vpc_endpoints[0].domain_arn #=> String
    #   resp.vpc_endpoints[0].vpc_options.vpc_id #=> String
    #   resp.vpc_endpoints[0].vpc_options.subnet_ids #=> Array
    #   resp.vpc_endpoints[0].vpc_options.subnet_ids[0] #=> String
    #   resp.vpc_endpoints[0].vpc_options.availability_zones #=> Array
    #   resp.vpc_endpoints[0].vpc_options.availability_zones[0] #=> String
    #   resp.vpc_endpoints[0].vpc_options.security_group_ids #=> Array
    #   resp.vpc_endpoints[0].vpc_options.security_group_ids[0] #=> String
    #   resp.vpc_endpoints[0].status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.vpc_endpoints[0].endpoint #=> String
    #   resp.vpc_endpoint_errors #=> Array
    #   resp.vpc_endpoint_errors[0].vpc_endpoint_id #=> String
    #   resp.vpc_endpoint_errors[0].error_code #=> String, one of "ENDPOINT_NOT_FOUND", "SERVER_ERROR"
    #   resp.vpc_endpoint_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeVpcEndpoints AWS API Documentation
    #
    # @overload describe_vpc_endpoints(params = {})
    # @param [Hash] params ({})
    def describe_vpc_endpoints(params = {}, options = {})
      req = build_request(:describe_vpc_endpoints, params)
      req.send_request(options)
    end

    # Removes a package from the specified Amazon OpenSearch Service domain.
    # The package can't be in use with any OpenSearch index for the
    # dissociation to succeed. The package is still available in OpenSearch
    # Service for association later. For more information, see [Custom
    # packages for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html
    #
    # @option params [required, String] :package_id
    #   Internal ID of the package to dissociate from the domain. Use
    #   `ListPackagesForDomain` to find this value.
    #
    # @option params [required, String] :domain_name
    #   Name of the domain to dissociate the package from.
    #
    # @return [Types::DissociatePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DissociatePackageResponse#domain_package_details #domain_package_details} => Types::DomainPackageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.dissociate_package({
    #     package_id: "PackageID", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_package_details.package_id #=> String
    #   resp.domain_package_details.package_name #=> String
    #   resp.domain_package_details.package_type #=> String, one of "TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"
    #   resp.domain_package_details.last_updated #=> Time
    #   resp.domain_package_details.domain_name #=> String
    #   resp.domain_package_details.domain_package_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"
    #   resp.domain_package_details.package_version #=> String
    #   resp.domain_package_details.prerequisite_package_id_list #=> Array
    #   resp.domain_package_details.prerequisite_package_id_list[0] #=> String
    #   resp.domain_package_details.reference_path #=> String
    #   resp.domain_package_details.error_details.error_type #=> String
    #   resp.domain_package_details.error_details.error_message #=> String
    #   resp.domain_package_details.association_configuration.key_store_access_option.key_access_role_arn #=> String
    #   resp.domain_package_details.association_configuration.key_store_access_option.key_store_access_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DissociatePackage AWS API Documentation
    #
    # @overload dissociate_package(params = {})
    # @param [Hash] params ({})
    def dissociate_package(params = {}, options = {})
      req = build_request(:dissociate_package, params)
      req.send_request(options)
    end

    # Dissociates multiple packages from a domain simulatneously.
    #
    # @option params [required, Array<String>] :package_list
    #   A list of package IDs to be dissociated from a domain.
    #
    # @option params [required, String] :domain_name
    #   The name of an OpenSearch Service domain. Domain names are unique
    #   across the domains owned by an account within an Amazon Web Services
    #   Region.
    #
    # @return [Types::DissociatePackagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DissociatePackagesResponse#domain_package_details_list #domain_package_details_list} => Array&lt;Types::DomainPackageDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.dissociate_packages({
    #     package_list: ["PackageID"], # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_package_details_list #=> Array
    #   resp.domain_package_details_list[0].package_id #=> String
    #   resp.domain_package_details_list[0].package_name #=> String
    #   resp.domain_package_details_list[0].package_type #=> String, one of "TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"
    #   resp.domain_package_details_list[0].last_updated #=> Time
    #   resp.domain_package_details_list[0].domain_name #=> String
    #   resp.domain_package_details_list[0].domain_package_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"
    #   resp.domain_package_details_list[0].package_version #=> String
    #   resp.domain_package_details_list[0].prerequisite_package_id_list #=> Array
    #   resp.domain_package_details_list[0].prerequisite_package_id_list[0] #=> String
    #   resp.domain_package_details_list[0].reference_path #=> String
    #   resp.domain_package_details_list[0].error_details.error_type #=> String
    #   resp.domain_package_details_list[0].error_details.error_message #=> String
    #   resp.domain_package_details_list[0].association_configuration.key_store_access_option.key_access_role_arn #=> String
    #   resp.domain_package_details_list[0].association_configuration.key_store_access_option.key_store_access_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DissociatePackages AWS API Documentation
    #
    # @overload dissociate_packages(params = {})
    # @param [Hash] params ({})
    def dissociate_packages(params = {}, options = {})
      req = build_request(:dissociate_packages, params)
      req.send_request(options)
    end

    # Retrieves the configuration and status of an existing OpenSearch
    # application.
    #
    # @option params [required, String] :id
    #   The unique identifier of the OpenSearch application to retrieve.
    #
    # @return [Types::GetApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationResponse#id #id} => String
    #   * {Types::GetApplicationResponse#arn #arn} => String
    #   * {Types::GetApplicationResponse#name #name} => String
    #   * {Types::GetApplicationResponse#endpoint #endpoint} => String
    #   * {Types::GetApplicationResponse#status #status} => String
    #   * {Types::GetApplicationResponse#iam_identity_center_options #iam_identity_center_options} => Types::IamIdentityCenterOptions
    #   * {Types::GetApplicationResponse#data_sources #data_sources} => Array&lt;Types::DataSource&gt;
    #   * {Types::GetApplicationResponse#app_configs #app_configs} => Array&lt;Types::AppConfig&gt;
    #   * {Types::GetApplicationResponse#created_at #created_at} => Time
    #   * {Types::GetApplicationResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.endpoint #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.iam_identity_center_options.enabled #=> Boolean
    #   resp.iam_identity_center_options.iam_identity_center_instance_arn #=> String
    #   resp.iam_identity_center_options.iam_role_for_identity_center_application_arn #=> String
    #   resp.iam_identity_center_options.iam_identity_center_application_arn #=> String
    #   resp.data_sources #=> Array
    #   resp.data_sources[0].data_source_arn #=> String
    #   resp.data_sources[0].data_source_description #=> String
    #   resp.app_configs #=> Array
    #   resp.app_configs[0].key #=> String, one of "opensearchDashboards.dashboardAdmin.users", "opensearchDashboards.dashboardAdmin.groups"
    #   resp.app_configs[0].value #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Returns a map of OpenSearch or Elasticsearch versions and the versions
    # you can upgrade them to.
    #
    # @option params [String] :domain_name
    #   The name of an existing domain. Provide this parameter to limit the
    #   results to a single domain.
    #
    # @return [Types::GetCompatibleVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCompatibleVersionsResponse#compatible_versions #compatible_versions} => Array&lt;Types::CompatibleVersionsMap&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compatible_versions({
    #     domain_name: "DomainName",
    #   })
    #
    # @example Response structure
    #
    #   resp.compatible_versions #=> Array
    #   resp.compatible_versions[0].source_version #=> String
    #   resp.compatible_versions[0].target_versions #=> Array
    #   resp.compatible_versions[0].target_versions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetCompatibleVersions AWS API Documentation
    #
    # @overload get_compatible_versions(params = {})
    # @param [Hash] params ({})
    def get_compatible_versions(params = {}, options = {})
      req = build_request(:get_compatible_versions, params)
      req.send_request(options)
    end

    # Retrieves information about a direct query data source.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @option params [required, String] :name
    #   The name of the data source to get information about.
    #
    # @return [Types::GetDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSourceResponse#data_source_type #data_source_type} => Types::DataSourceType
    #   * {Types::GetDataSourceResponse#name #name} => String
    #   * {Types::GetDataSourceResponse#description #description} => String
    #   * {Types::GetDataSourceResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source({
    #     domain_name: "DomainName", # required
    #     name: "DataSourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_type.s3_glue_data_catalog.role_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "ACTIVE", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetDataSource AWS API Documentation
    #
    # @overload get_data_source(params = {})
    # @param [Hash] params ({})
    def get_data_source(params = {}, options = {})
      req = build_request(:get_data_source, params)
      req.send_request(options)
    end

    # Returns detailed configuration information for a specific direct query
    # data source in Amazon OpenSearch Service.
    #
    # @option params [required, String] :data_source_name
    #   A unique, user-defined label that identifies the data source within
    #   your OpenSearch Service environment.
    #
    # @return [Types::GetDirectQueryDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDirectQueryDataSourceResponse#data_source_name #data_source_name} => String
    #   * {Types::GetDirectQueryDataSourceResponse#data_source_type #data_source_type} => Types::DirectQueryDataSourceType
    #   * {Types::GetDirectQueryDataSourceResponse#description #description} => String
    #   * {Types::GetDirectQueryDataSourceResponse#open_search_arns #open_search_arns} => Array&lt;String&gt;
    #   * {Types::GetDirectQueryDataSourceResponse#data_source_arn #data_source_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_direct_query_data_source({
    #     data_source_name: "DirectQueryDataSourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_name #=> String
    #   resp.data_source_type.cloud_watch_log.role_arn #=> String
    #   resp.data_source_type.security_lake.role_arn #=> String
    #   resp.description #=> String
    #   resp.open_search_arns #=> Array
    #   resp.open_search_arns[0] #=> String
    #   resp.data_source_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetDirectQueryDataSource AWS API Documentation
    #
    # @overload get_direct_query_data_source(params = {})
    # @param [Hash] params ({})
    def get_direct_query_data_source(params = {}, options = {})
      req = build_request(:get_direct_query_data_source, params)
      req.send_request(options)
    end

    # The status of the maintenance action.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @option params [required, String] :maintenance_id
    #   The request ID of the maintenance action.
    #
    # @return [Types::GetDomainMaintenanceStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainMaintenanceStatusResponse#status #status} => String
    #   * {Types::GetDomainMaintenanceStatusResponse#status_message #status_message} => String
    #   * {Types::GetDomainMaintenanceStatusResponse#node_id #node_id} => String
    #   * {Types::GetDomainMaintenanceStatusResponse#action #action} => String
    #   * {Types::GetDomainMaintenanceStatusResponse#created_at #created_at} => Time
    #   * {Types::GetDomainMaintenanceStatusResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_maintenance_status({
    #     domain_name: "DomainName", # required
    #     maintenance_id: "RequestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "TIMED_OUT"
    #   resp.status_message #=> String
    #   resp.node_id #=> String
    #   resp.action #=> String, one of "REBOOT_NODE", "RESTART_SEARCH_PROCESS", "RESTART_DASHBOARD"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetDomainMaintenanceStatus AWS API Documentation
    #
    # @overload get_domain_maintenance_status(params = {})
    # @param [Hash] params ({})
    def get_domain_maintenance_status(params = {}, options = {})
      req = build_request(:get_domain_maintenance_status, params)
      req.send_request(options)
    end

    # Returns a list of Amazon OpenSearch Service package versions, along
    # with their creation time, commit message, and plugin properties (if
    # the package is a zip plugin package). For more information, see
    # [Custom packages for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html
    #
    # @option params [required, String] :package_id
    #   The unique identifier of the package.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `GetPackageVersionHistory` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `GetPackageVersionHistory` operations, which returns results in the
    #   next page.
    #
    # @return [Types::GetPackageVersionHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPackageVersionHistoryResponse#package_id #package_id} => String
    #   * {Types::GetPackageVersionHistoryResponse#package_version_history_list #package_version_history_list} => Array&lt;Types::PackageVersionHistory&gt;
    #   * {Types::GetPackageVersionHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_package_version_history({
    #     package_id: "PackageID", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.package_id #=> String
    #   resp.package_version_history_list #=> Array
    #   resp.package_version_history_list[0].package_version #=> String
    #   resp.package_version_history_list[0].commit_message #=> String
    #   resp.package_version_history_list[0].created_at #=> Time
    #   resp.package_version_history_list[0].plugin_properties.name #=> String
    #   resp.package_version_history_list[0].plugin_properties.description #=> String
    #   resp.package_version_history_list[0].plugin_properties.version #=> String
    #   resp.package_version_history_list[0].plugin_properties.class_name #=> String
    #   resp.package_version_history_list[0].plugin_properties.uncompressed_size_in_bytes #=> Integer
    #   resp.package_version_history_list[0].package_configuration.license_requirement #=> String, one of "REQUIRED", "OPTIONAL", "NONE"
    #   resp.package_version_history_list[0].package_configuration.license_filepath #=> String
    #   resp.package_version_history_list[0].package_configuration.configuration_requirement #=> String, one of "REQUIRED", "OPTIONAL", "NONE"
    #   resp.package_version_history_list[0].package_configuration.requires_restart_for_configuration_update #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetPackageVersionHistory AWS API Documentation
    #
    # @overload get_package_version_history(params = {})
    # @param [Hash] params ({})
    def get_package_version_history(params = {}, options = {})
      req = build_request(:get_package_version_history, params)
      req.send_request(options)
    end

    # Retrieves the complete history of the last 10 upgrades performed on an
    # Amazon OpenSearch Service domain.
    #
    # @option params [required, String] :domain_name
    #   The name of an existing domain.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `GetUpgradeHistory` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in subsequent
    #   `GetUpgradeHistory` operations, which returns results in the next
    #   page.
    #
    # @return [Types::GetUpgradeHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUpgradeHistoryResponse#upgrade_histories #upgrade_histories} => Array&lt;Types::UpgradeHistory&gt;
    #   * {Types::GetUpgradeHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upgrade_history({
    #     domain_name: "DomainName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.upgrade_histories #=> Array
    #   resp.upgrade_histories[0].upgrade_name #=> String
    #   resp.upgrade_histories[0].start_timestamp #=> Time
    #   resp.upgrade_histories[0].upgrade_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"
    #   resp.upgrade_histories[0].steps_list #=> Array
    #   resp.upgrade_histories[0].steps_list[0].upgrade_step #=> String, one of "PRE_UPGRADE_CHECK", "SNAPSHOT", "UPGRADE"
    #   resp.upgrade_histories[0].steps_list[0].upgrade_step_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"
    #   resp.upgrade_histories[0].steps_list[0].issues #=> Array
    #   resp.upgrade_histories[0].steps_list[0].issues[0] #=> String
    #   resp.upgrade_histories[0].steps_list[0].progress_percent #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeHistory AWS API Documentation
    #
    # @overload get_upgrade_history(params = {})
    # @param [Hash] params ({})
    def get_upgrade_history(params = {}, options = {})
      req = build_request(:get_upgrade_history, params)
      req.send_request(options)
    end

    # Returns the most recent status of the last upgrade or upgrade
    # eligibility check performed on an Amazon OpenSearch Service domain.
    #
    # @option params [required, String] :domain_name
    #   The domain of the domain to get upgrade status information for.
    #
    # @return [Types::GetUpgradeStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUpgradeStatusResponse#upgrade_step #upgrade_step} => String
    #   * {Types::GetUpgradeStatusResponse#step_status #step_status} => String
    #   * {Types::GetUpgradeStatusResponse#upgrade_name #upgrade_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upgrade_status({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.upgrade_step #=> String, one of "PRE_UPGRADE_CHECK", "SNAPSHOT", "UPGRADE"
    #   resp.step_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"
    #   resp.upgrade_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeStatus AWS API Documentation
    #
    # @overload get_upgrade_status(params = {})
    # @param [Hash] params ({})
    def get_upgrade_status(params = {}, options = {})
      req = build_request(:get_upgrade_status, params)
      req.send_request(options)
    end

    # Lists all OpenSearch applications under your account.
    #
    # @option params [String] :next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Send
    #   the request again using the returned token to retrieve the next page.
    #
    # @option params [Array<String>] :statuses
    #   Filters the list of OpenSearch applications by status. Possible
    #   values: `CREATING`, `UPDATING`, `DELETING`, `FAILED`, `ACTIVE`, and
    #   `DELETED`.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return for a given request.
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#application_summaries #application_summaries} => Array&lt;Types::ApplicationSummary&gt;
    #   * {Types::ListApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     next_token: "NextToken",
    #     statuses: ["CREATING"], # accepts CREATING, UPDATING, DELETING, ACTIVE, FAILED
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.application_summaries #=> Array
    #   resp.application_summaries[0].id #=> String
    #   resp.application_summaries[0].arn #=> String
    #   resp.application_summaries[0].name #=> String
    #   resp.application_summaries[0].endpoint #=> String
    #   resp.application_summaries[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.application_summaries[0].created_at #=> Time
    #   resp.application_summaries[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Lists direct-query data sources for a specific domain. For more
    # information, see For more information, see [Working with Amazon
    # OpenSearch Service direct queries with Amazon S3][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @return [Types::ListDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesResponse#data_sources #data_sources} => Array&lt;Types::DataSourceDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_sources #=> Array
    #   resp.data_sources[0].data_source_type.s3_glue_data_catalog.role_arn #=> String
    #   resp.data_sources[0].name #=> String
    #   resp.data_sources[0].description #=> String
    #   resp.data_sources[0].status #=> String, one of "ACTIVE", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # Lists an inventory of all the direct query data sources that you have
    # configured within Amazon OpenSearch Service.
    #
    # @option params [String] :next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Send
    #   the request again using the returned token to retrieve the next page.
    #
    # @return [Types::ListDirectQueryDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDirectQueryDataSourcesResponse#next_token #next_token} => String
    #   * {Types::ListDirectQueryDataSourcesResponse#direct_query_data_sources #direct_query_data_sources} => Array&lt;Types::DirectQueryDataSource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_direct_query_data_sources({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.direct_query_data_sources #=> Array
    #   resp.direct_query_data_sources[0].data_source_name #=> String
    #   resp.direct_query_data_sources[0].data_source_type.cloud_watch_log.role_arn #=> String
    #   resp.direct_query_data_sources[0].data_source_type.security_lake.role_arn #=> String
    #   resp.direct_query_data_sources[0].description #=> String
    #   resp.direct_query_data_sources[0].open_search_arns #=> Array
    #   resp.direct_query_data_sources[0].open_search_arns[0] #=> String
    #   resp.direct_query_data_sources[0].data_source_arn #=> String
    #   resp.direct_query_data_sources[0].tag_list #=> Array
    #   resp.direct_query_data_sources[0].tag_list[0].key #=> String
    #   resp.direct_query_data_sources[0].tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDirectQueryDataSources AWS API Documentation
    #
    # @overload list_direct_query_data_sources(params = {})
    # @param [Hash] params ({})
    def list_direct_query_data_sources(params = {}, options = {})
      req = build_request(:list_direct_query_data_sources, params)
      req.send_request(options)
    end

    # A list of maintenance actions for the domain.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @option params [String] :action
    #   The name of the action.
    #
    # @option params [String] :status
    #   The status of the action.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `ListDomainMaintenances` operation returns a
    #   `nextToken`, include the returned `nextToken` in subsequent
    #   `ListDomainMaintenances` operations, which returns results in the next
    #   page.
    #
    # @return [Types::ListDomainMaintenancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainMaintenancesResponse#domain_maintenances #domain_maintenances} => Array&lt;Types::DomainMaintenanceDetails&gt;
    #   * {Types::ListDomainMaintenancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_maintenances({
    #     domain_name: "DomainName", # required
    #     action: "REBOOT_NODE", # accepts REBOOT_NODE, RESTART_SEARCH_PROCESS, RESTART_DASHBOARD
    #     status: "PENDING", # accepts PENDING, IN_PROGRESS, COMPLETED, FAILED, TIMED_OUT
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_maintenances #=> Array
    #   resp.domain_maintenances[0].maintenance_id #=> String
    #   resp.domain_maintenances[0].domain_name #=> String
    #   resp.domain_maintenances[0].action #=> String, one of "REBOOT_NODE", "RESTART_SEARCH_PROCESS", "RESTART_DASHBOARD"
    #   resp.domain_maintenances[0].node_id #=> String
    #   resp.domain_maintenances[0].status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "TIMED_OUT"
    #   resp.domain_maintenances[0].status_message #=> String
    #   resp.domain_maintenances[0].created_at #=> Time
    #   resp.domain_maintenances[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainMaintenances AWS API Documentation
    #
    # @overload list_domain_maintenances(params = {})
    # @param [Hash] params ({})
    def list_domain_maintenances(params = {}, options = {})
      req = build_request(:list_domain_maintenances, params)
      req.send_request(options)
    end

    # Returns the names of all Amazon OpenSearch Service domains owned by
    # the current user in the active Region.
    #
    # @option params [String] :engine_type
    #   Filters the output by domain engine type.
    #
    # @return [Types::ListDomainNamesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainNamesResponse#domain_names #domain_names} => Array&lt;Types::DomainInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_names({
    #     engine_type: "OpenSearch", # accepts OpenSearch, Elasticsearch
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_names #=> Array
    #   resp.domain_names[0].domain_name #=> String
    #   resp.domain_names[0].engine_type #=> String, one of "OpenSearch", "Elasticsearch"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainNames AWS API Documentation
    #
    # @overload list_domain_names(params = {})
    # @param [Hash] params ({})
    def list_domain_names(params = {}, options = {})
      req = build_request(:list_domain_names, params)
      req.send_request(options)
    end

    # Lists all Amazon OpenSearch Service domains associated with a given
    # package. For more information, see [Custom packages for Amazon
    # OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html
    #
    # @option params [required, String] :package_id
    #   The unique identifier of the package for which to list associated
    #   domains.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `ListDomainsForPackage` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListDomainsForPackage` operations, which returns results in the next
    #   page.
    #
    # @return [Types::ListDomainsForPackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsForPackageResponse#domain_package_details_list #domain_package_details_list} => Array&lt;Types::DomainPackageDetails&gt;
    #   * {Types::ListDomainsForPackageResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains_for_package({
    #     package_id: "PackageID", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_package_details_list #=> Array
    #   resp.domain_package_details_list[0].package_id #=> String
    #   resp.domain_package_details_list[0].package_name #=> String
    #   resp.domain_package_details_list[0].package_type #=> String, one of "TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"
    #   resp.domain_package_details_list[0].last_updated #=> Time
    #   resp.domain_package_details_list[0].domain_name #=> String
    #   resp.domain_package_details_list[0].domain_package_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"
    #   resp.domain_package_details_list[0].package_version #=> String
    #   resp.domain_package_details_list[0].prerequisite_package_id_list #=> Array
    #   resp.domain_package_details_list[0].prerequisite_package_id_list[0] #=> String
    #   resp.domain_package_details_list[0].reference_path #=> String
    #   resp.domain_package_details_list[0].error_details.error_type #=> String
    #   resp.domain_package_details_list[0].error_details.error_message #=> String
    #   resp.domain_package_details_list[0].association_configuration.key_store_access_option.key_access_role_arn #=> String
    #   resp.domain_package_details_list[0].association_configuration.key_store_access_option.key_store_access_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainsForPackage AWS API Documentation
    #
    # @overload list_domains_for_package(params = {})
    # @param [Hash] params ({})
    def list_domains_for_package(params = {}, options = {})
      req = build_request(:list_domains_for_package, params)
      req.send_request(options)
    end

    # Lists all instance types and available features for a given OpenSearch
    # or Elasticsearch version.
    #
    # @option params [required, String] :engine_version
    #   The version of OpenSearch or Elasticsearch, in the format
    #   Elasticsearch\_X.Y or OpenSearch\_X.Y. Defaults to the latest version
    #   of OpenSearch.
    #
    # @option params [String] :domain_name
    #   The name of the domain.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `ListInstanceTypeDetails` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListInstanceTypeDetails` operations, which returns results in the
    #   next page.
    #
    # @option params [Boolean] :retrieve_a_zs
    #   An optional parameter that specifies the Availability Zones for the
    #   domain.
    #
    # @option params [String] :instance_type
    #   An optional parameter that lists information for a given instance
    #   type.
    #
    # @return [Types::ListInstanceTypeDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceTypeDetailsResponse#instance_type_details #instance_type_details} => Array&lt;Types::InstanceTypeDetails&gt;
    #   * {Types::ListInstanceTypeDetailsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_type_details({
    #     engine_version: "VersionString", # required
    #     domain_name: "DomainName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     retrieve_a_zs: false,
    #     instance_type: "InstanceTypeString",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_type_details #=> Array
    #   resp.instance_type_details[0].instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.instance_type_details[0].encryption_enabled #=> Boolean
    #   resp.instance_type_details[0].cognito_enabled #=> Boolean
    #   resp.instance_type_details[0].app_logs_enabled #=> Boolean
    #   resp.instance_type_details[0].advanced_security_enabled #=> Boolean
    #   resp.instance_type_details[0].warm_enabled #=> Boolean
    #   resp.instance_type_details[0].instance_role #=> Array
    #   resp.instance_type_details[0].instance_role[0] #=> String
    #   resp.instance_type_details[0].availability_zones #=> Array
    #   resp.instance_type_details[0].availability_zones[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListInstanceTypeDetails AWS API Documentation
    #
    # @overload list_instance_type_details(params = {})
    # @param [Hash] params ({})
    def list_instance_type_details(params = {}, options = {})
      req = build_request(:list_instance_type_details, params)
      req.send_request(options)
    end

    # Lists all packages associated with an Amazon OpenSearch Service
    # domain. For more information, see [Custom packages for Amazon
    # OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain for which you want to list associated packages.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `ListPackagesForDomain` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListPackagesForDomain` operations, which returns results in the next
    #   page.
    #
    # @return [Types::ListPackagesForDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackagesForDomainResponse#domain_package_details_list #domain_package_details_list} => Array&lt;Types::DomainPackageDetails&gt;
    #   * {Types::ListPackagesForDomainResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packages_for_domain({
    #     domain_name: "DomainName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_package_details_list #=> Array
    #   resp.domain_package_details_list[0].package_id #=> String
    #   resp.domain_package_details_list[0].package_name #=> String
    #   resp.domain_package_details_list[0].package_type #=> String, one of "TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"
    #   resp.domain_package_details_list[0].last_updated #=> Time
    #   resp.domain_package_details_list[0].domain_name #=> String
    #   resp.domain_package_details_list[0].domain_package_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"
    #   resp.domain_package_details_list[0].package_version #=> String
    #   resp.domain_package_details_list[0].prerequisite_package_id_list #=> Array
    #   resp.domain_package_details_list[0].prerequisite_package_id_list[0] #=> String
    #   resp.domain_package_details_list[0].reference_path #=> String
    #   resp.domain_package_details_list[0].error_details.error_type #=> String
    #   resp.domain_package_details_list[0].error_details.error_message #=> String
    #   resp.domain_package_details_list[0].association_configuration.key_store_access_option.key_access_role_arn #=> String
    #   resp.domain_package_details_list[0].association_configuration.key_store_access_option.key_store_access_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListPackagesForDomain AWS API Documentation
    #
    # @overload list_packages_for_domain(params = {})
    # @param [Hash] params ({})
    def list_packages_for_domain(params = {}, options = {})
      req = build_request(:list_packages_for_domain, params)
      req.send_request(options)
    end

    # Retrieves a list of configuration changes that are scheduled for a
    # domain. These changes can be [service software updates][1] or
    # [blue/green Auto-Tune enhancements][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html
    # [2]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `ListScheduledActions` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListScheduledActions` operations, which returns results in the next
    #   page.
    #
    # @return [Types::ListScheduledActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScheduledActionsResponse#scheduled_actions #scheduled_actions} => Array&lt;Types::ScheduledAction&gt;
    #   * {Types::ListScheduledActionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scheduled_actions({
    #     domain_name: "DomainName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_actions #=> Array
    #   resp.scheduled_actions[0].id #=> String
    #   resp.scheduled_actions[0].type #=> String, one of "SERVICE_SOFTWARE_UPDATE", "JVM_HEAP_SIZE_TUNING", "JVM_YOUNG_GEN_TUNING"
    #   resp.scheduled_actions[0].severity #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.scheduled_actions[0].scheduled_time #=> Integer
    #   resp.scheduled_actions[0].description #=> String
    #   resp.scheduled_actions[0].scheduled_by #=> String, one of "CUSTOMER", "SYSTEM"
    #   resp.scheduled_actions[0].status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "FAILED", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.scheduled_actions[0].mandatory #=> Boolean
    #   resp.scheduled_actions[0].cancellable #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListScheduledActions AWS API Documentation
    #
    # @overload list_scheduled_actions(params = {})
    # @param [Hash] params ({})
    def list_scheduled_actions(params = {}, options = {})
      req = build_request(:list_scheduled_actions, params)
      req.send_request(options)
    end

    # Returns all resource tags for an Amazon OpenSearch Service domain,
    # data source, or application. For more information, see [Tagging Amazon
    # OpenSearch Service resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html
    #
    # @option params [required, String] :arn
    #   Amazon Resource Name (ARN) for the domain, data source, or application
    #   to view tags for.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Lists all versions of OpenSearch and Elasticsearch that Amazon
    # OpenSearch Service supports.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `ListVersions` operation returns a `nextToken`, you
    #   can include the returned `nextToken` in subsequent `ListVersions`
    #   operations, which returns results in the next page.
    #
    # @return [Types::ListVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVersionsResponse#versions #versions} => Array&lt;String&gt;
    #   * {Types::ListVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_versions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.versions #=> Array
    #   resp.versions[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVersions AWS API Documentation
    #
    # @overload list_versions(params = {})
    # @param [Hash] params ({})
    def list_versions(params = {}, options = {})
      req = build_request(:list_versions, params)
      req.send_request(options)
    end

    # Retrieves information about each Amazon Web Services principal that is
    # allowed to access a given Amazon OpenSearch Service domain through the
    # use of an interface VPC endpoint.
    #
    # @option params [required, String] :domain_name
    #   The name of the OpenSearch Service domain to retrieve access
    #   information for.
    #
    # @option params [String] :next_token
    #   If your initial `ListVpcEndpointAccess` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListVpcEndpointAccess` operations, which returns results in the next
    #   page.
    #
    # @return [Types::ListVpcEndpointAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVpcEndpointAccessResponse#authorized_principal_list #authorized_principal_list} => Array&lt;Types::AuthorizedPrincipal&gt;
    #   * {Types::ListVpcEndpointAccessResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpc_endpoint_access({
    #     domain_name: "DomainName", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.authorized_principal_list #=> Array
    #   resp.authorized_principal_list[0].principal_type #=> String, one of "AWS_ACCOUNT", "AWS_SERVICE"
    #   resp.authorized_principal_list[0].principal #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVpcEndpointAccess AWS API Documentation
    #
    # @overload list_vpc_endpoint_access(params = {})
    # @param [Hash] params ({})
    def list_vpc_endpoint_access(params = {}, options = {})
      req = build_request(:list_vpc_endpoint_access, params)
      req.send_request(options)
    end

    # Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the
    # current Amazon Web Services account and Region.
    #
    # @option params [String] :next_token
    #   If your initial `ListVpcEndpoints` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in subsequent
    #   `ListVpcEndpoints` operations, which returns results in the next page.
    #
    # @return [Types::ListVpcEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVpcEndpointsResponse#vpc_endpoint_summary_list #vpc_endpoint_summary_list} => Array&lt;Types::VpcEndpointSummary&gt;
    #   * {Types::ListVpcEndpointsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpc_endpoints({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_endpoint_summary_list #=> Array
    #   resp.vpc_endpoint_summary_list[0].vpc_endpoint_id #=> String
    #   resp.vpc_endpoint_summary_list[0].vpc_endpoint_owner #=> String
    #   resp.vpc_endpoint_summary_list[0].domain_arn #=> String
    #   resp.vpc_endpoint_summary_list[0].status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVpcEndpoints AWS API Documentation
    #
    # @overload list_vpc_endpoints(params = {})
    # @param [Hash] params ({})
    def list_vpc_endpoints(params = {}, options = {})
      req = build_request(:list_vpc_endpoints, params)
      req.send_request(options)
    end

    # Retrieves all Amazon OpenSearch Service-managed VPC endpoints
    # associated with a particular domain.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain to list associated VPC endpoints for.
    #
    # @option params [String] :next_token
    #   If your initial `ListEndpointsForDomain` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListEndpointsForDomain` operations, which returns results in the next
    #   page.
    #
    # @return [Types::ListVpcEndpointsForDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVpcEndpointsForDomainResponse#vpc_endpoint_summary_list #vpc_endpoint_summary_list} => Array&lt;Types::VpcEndpointSummary&gt;
    #   * {Types::ListVpcEndpointsForDomainResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpc_endpoints_for_domain({
    #     domain_name: "DomainName", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_endpoint_summary_list #=> Array
    #   resp.vpc_endpoint_summary_list[0].vpc_endpoint_id #=> String
    #   resp.vpc_endpoint_summary_list[0].vpc_endpoint_owner #=> String
    #   resp.vpc_endpoint_summary_list[0].domain_arn #=> String
    #   resp.vpc_endpoint_summary_list[0].status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVpcEndpointsForDomain AWS API Documentation
    #
    # @overload list_vpc_endpoints_for_domain(params = {})
    # @param [Hash] params ({})
    def list_vpc_endpoints_for_domain(params = {}, options = {})
      req = build_request(:list_vpc_endpoints_for_domain, params)
      req.send_request(options)
    end

    # Allows you to purchase Amazon OpenSearch Service Reserved Instances.
    #
    # @option params [required, String] :reserved_instance_offering_id
    #   The ID of the Reserved Instance offering to purchase.
    #
    # @option params [required, String] :reservation_name
    #   A customer-specified identifier to track this reservation.
    #
    # @option params [Integer] :instance_count
    #   The number of OpenSearch instances to reserve.
    #
    # @return [Types::PurchaseReservedInstanceOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseReservedInstanceOfferingResponse#reserved_instance_id #reserved_instance_id} => String
    #   * {Types::PurchaseReservedInstanceOfferingResponse#reservation_name #reservation_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_instance_offering({
    #     reserved_instance_offering_id: "GUID", # required
    #     reservation_name: "ReservationToken", # required
    #     instance_count: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_instance_id #=> String
    #   resp.reservation_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PurchaseReservedInstanceOffering AWS API Documentation
    #
    # @overload purchase_reserved_instance_offering(params = {})
    # @param [Hash] params ({})
    def purchase_reserved_instance_offering(params = {}, options = {})
      req = build_request(:purchase_reserved_instance_offering, params)
      req.send_request(options)
    end

    # Allows the remote Amazon OpenSearch Service domain owner to reject an
    # inbound cross-cluster connection request.
    #
    # @option params [required, String] :connection_id
    #   The unique identifier of the inbound connection to reject.
    #
    # @return [Types::RejectInboundConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectInboundConnectionResponse#connection #connection} => Types::InboundConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_inbound_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.region #=> String
    #   resp.connection.connection_id #=> String
    #   resp.connection.connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connection.connection_status.message #=> String
    #   resp.connection.connection_mode #=> String, one of "DIRECT", "VPC_ENDPOINT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RejectInboundConnection AWS API Documentation
    #
    # @overload reject_inbound_connection(params = {})
    # @param [Hash] params ({})
    def reject_inbound_connection(params = {}, options = {})
      req = build_request(:reject_inbound_connection, params)
      req.send_request(options)
    end

    # Removes the specified set of tags from an Amazon OpenSearch Service
    # domain, data source, or application. For more information, see [
    # Tagging Amazon OpenSearch Service resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-awsresorcetagging
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the domain, data source, or
    #   application from which you want to delete the specified tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the domain, data source, or
    #   application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags({
    #     arn: "ARN", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RemoveTags AWS API Documentation
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # Revokes access to an Amazon OpenSearch Service domain that was
    # provided through an interface VPC endpoint.
    #
    # @option params [required, String] :domain_name
    #   The name of the OpenSearch Service domain.
    #
    # @option params [String] :account
    #   The account ID to revoke access from.
    #
    # @option params [String] :service
    #   The service SP to revoke access from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_vpc_endpoint_access({
    #     domain_name: "DomainName", # required
    #     account: "AWSAccount",
    #     service: "application.opensearchservice.amazonaws.com", # accepts application.opensearchservice.amazonaws.com
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RevokeVpcEndpointAccess AWS API Documentation
    #
    # @overload revoke_vpc_endpoint_access(params = {})
    # @param [Hash] params ({})
    def revoke_vpc_endpoint_access(params = {}, options = {})
      req = build_request(:revoke_vpc_endpoint_access, params)
      req.send_request(options)
    end

    # Starts the node maintenance process on the data node. These processes
    # can include a node reboot, an Opensearch or Elasticsearch process
    # restart, or a Dashboard or Kibana restart.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @option params [required, String] :action
    #   The name of the action.
    #
    # @option params [String] :node_id
    #   The ID of the data node.
    #
    # @return [Types::StartDomainMaintenanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDomainMaintenanceResponse#maintenance_id #maintenance_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_domain_maintenance({
    #     domain_name: "DomainName", # required
    #     action: "REBOOT_NODE", # required, accepts REBOOT_NODE, RESTART_SEARCH_PROCESS, RESTART_DASHBOARD
    #     node_id: "NodeId",
    #   })
    #
    # @example Response structure
    #
    #   resp.maintenance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/StartDomainMaintenance AWS API Documentation
    #
    # @overload start_domain_maintenance(params = {})
    # @param [Hash] params ({})
    def start_domain_maintenance(params = {}, options = {})
      req = build_request(:start_domain_maintenance, params)
      req.send_request(options)
    end

    # Schedules a service software update for an Amazon OpenSearch Service
    # domain. For more information, see [Service software updates in Amazon
    # OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to update to the latest service
    #   software.
    #
    # @option params [String] :schedule_at
    #   When to start the service software update.
    #
    #   * `NOW` - Immediately schedules the update to happen in the current
    #     hour if there's capacity available.
    #
    #   * `TIMESTAMP` - Lets you specify a custom date and time to apply the
    #     update. If you specify this value, you must also provide a value for
    #     `DesiredStartTime`.
    #
    #   * `OFF_PEAK_WINDOW` - Marks the update to be picked up during an
    #     upcoming off-peak window. There's no guarantee that the update will
    #     happen during the next immediate window. Depending on capacity, it
    #     might happen in subsequent days.
    #
    #   Default: `NOW` if you don't specify a value for `DesiredStartTime`,
    #   and `TIMESTAMP` if you do.
    #
    # @option params [Integer] :desired_start_time
    #   The Epoch timestamp when you want the service software update to
    #   start. You only need to specify this parameter if you set `ScheduleAt`
    #   to `TIMESTAMP`.
    #
    # @return [Types::StartServiceSoftwareUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartServiceSoftwareUpdateResponse#service_software_options #service_software_options} => Types::ServiceSoftwareOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_service_software_update({
    #     domain_name: "DomainName", # required
    #     schedule_at: "NOW", # accepts NOW, TIMESTAMP, OFF_PEAK_WINDOW
    #     desired_start_time: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.service_software_options.current_version #=> String
    #   resp.service_software_options.new_version #=> String
    #   resp.service_software_options.update_available #=> Boolean
    #   resp.service_software_options.cancellable #=> Boolean
    #   resp.service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.service_software_options.description #=> String
    #   resp.service_software_options.automated_update_date #=> Time
    #   resp.service_software_options.optional_deployment #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/StartServiceSoftwareUpdate AWS API Documentation
    #
    # @overload start_service_software_update(params = {})
    # @param [Hash] params ({})
    def start_service_software_update(params = {}, options = {})
      req = build_request(:start_service_software_update, params)
      req.send_request(options)
    end

    # Updates the configuration and settings of an existing OpenSearch
    # application.
    #
    # @option params [required, String] :id
    #   The unique identifier for the OpenSearch application to be updated.
    #
    # @option params [Array<Types::DataSource>] :data_sources
    #   The data sources to associate with the OpenSearch application.
    #
    # @option params [Array<Types::AppConfig>] :app_configs
    #   The configuration settings to modify for the OpenSearch application.
    #
    # @return [Types::UpdateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationResponse#id #id} => String
    #   * {Types::UpdateApplicationResponse#name #name} => String
    #   * {Types::UpdateApplicationResponse#arn #arn} => String
    #   * {Types::UpdateApplicationResponse#data_sources #data_sources} => Array&lt;Types::DataSource&gt;
    #   * {Types::UpdateApplicationResponse#iam_identity_center_options #iam_identity_center_options} => Types::IamIdentityCenterOptions
    #   * {Types::UpdateApplicationResponse#app_configs #app_configs} => Array&lt;Types::AppConfig&gt;
    #   * {Types::UpdateApplicationResponse#created_at #created_at} => Time
    #   * {Types::UpdateApplicationResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     id: "Id", # required
    #     data_sources: [
    #       {
    #         data_source_arn: "ARN",
    #         data_source_description: "DataSourceDescription",
    #       },
    #     ],
    #     app_configs: [
    #       {
    #         key: "opensearchDashboards.dashboardAdmin.users", # accepts opensearchDashboards.dashboardAdmin.users, opensearchDashboards.dashboardAdmin.groups
    #         value: "AppConfigValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.data_sources #=> Array
    #   resp.data_sources[0].data_source_arn #=> String
    #   resp.data_sources[0].data_source_description #=> String
    #   resp.iam_identity_center_options.enabled #=> Boolean
    #   resp.iam_identity_center_options.iam_identity_center_instance_arn #=> String
    #   resp.iam_identity_center_options.iam_role_for_identity_center_application_arn #=> String
    #   resp.iam_identity_center_options.iam_identity_center_application_arn #=> String
    #   resp.app_configs #=> Array
    #   resp.app_configs[0].key #=> String, one of "opensearchDashboards.dashboardAdmin.users", "opensearchDashboards.dashboardAdmin.groups"
    #   resp.app_configs[0].value #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Updates a direct-query data source. For more information, see [Working
    # with Amazon OpenSearch Service data source integrations with Amazon
    # S3][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @option params [required, String] :name
    #   The name of the data source to modify.
    #
    # @option params [required, Types::DataSourceType] :data_source_type
    #   The type of data source.
    #
    # @option params [String] :description
    #   A new description of the data source.
    #
    # @option params [String] :status
    #   The status of the data source update.
    #
    # @return [Types::UpdateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourceResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     domain_name: "DomainName", # required
    #     name: "DataSourceName", # required
    #     data_source_type: { # required
    #       s3_glue_data_catalog: {
    #         role_arn: "RoleArn",
    #       },
    #     },
    #     description: "DataSourceDescription",
    #     status: "ACTIVE", # accepts ACTIVE, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates the configuration or properties of an existing direct query
    # data source in Amazon OpenSearch Service.
    #
    # @option params [required, String] :data_source_name
    #   A unique, user-defined label to identify the data source within your
    #   OpenSearch Service environment.
    #
    # @option params [required, Types::DirectQueryDataSourceType] :data_source_type
    #   The supported Amazon Web Services service that you want to use as the
    #   source for direct queries in OpenSearch Service.
    #
    # @option params [String] :description
    #   An optional text field for providing additional context and details
    #   about the data source.
    #
    # @option params [required, Array<String>] :open_search_arns
    #   A list of Amazon Resource Names (ARNs) for the OpenSearch collections
    #   that are associated with the direct query data source.
    #
    # @return [Types::UpdateDirectQueryDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDirectQueryDataSourceResponse#data_source_arn #data_source_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_direct_query_data_source({
    #     data_source_name: "DirectQueryDataSourceName", # required
    #     data_source_type: { # required
    #       cloud_watch_log: {
    #         role_arn: "DirectQueryDataSourceRoleArn", # required
    #       },
    #       security_lake: {
    #         role_arn: "DirectQueryDataSourceRoleArn", # required
    #       },
    #     },
    #     description: "DirectQueryDataSourceDescription",
    #     open_search_arns: ["ARN"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateDirectQueryDataSource AWS API Documentation
    #
    # @overload update_direct_query_data_source(params = {})
    # @param [Hash] params ({})
    def update_direct_query_data_source(params = {}, options = {})
      req = build_request(:update_direct_query_data_source, params)
      req.send_request(options)
    end

    # Modifies the cluster configuration of the specified Amazon OpenSearch
    # Service domain.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you're updating.
    #
    # @option params [Types::ClusterConfig] :cluster_config
    #   Changes that you want to make to the cluster configuration, such as
    #   the instance type and number of EC2 instances.
    #
    # @option params [Types::EBSOptions] :ebs_options
    #   The type and size of the EBS volume to attach to instances in the
    #   domain.
    #
    # @option params [Types::SnapshotOptions] :snapshot_options
    #   Option to set the time, in UTC format, for the daily automated
    #   snapshot. Default value is `0` hours.
    #
    # @option params [Types::VPCOptions] :vpc_options
    #   Options to specify the subnets and security groups for a VPC endpoint.
    #   For more information, see [Launching your Amazon OpenSearch Service
    #   domains using a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #
    # @option params [Types::CognitoOptions] :cognito_options
    #   Key-value pairs to configure Amazon Cognito authentication for
    #   OpenSearch Dashboards.
    #
    # @option params [Hash<String,String>] :advanced_options
    #   Key-value pairs to specify advanced configuration options. The
    #   following key-value pairs are supported:
    #
    #   * `"rest.action.multi.allow_explicit_index": "true" | "false"` - Note
    #     the use of a string rather than a boolean. Specifies whether
    #     explicit references to indexes are allowed inside the body of HTTP
    #     requests. If you want to configure access policies for domain
    #     sub-resources, such as specific indexes and domain APIs, you must
    #     disable this property. Default is true.
    #
    #   * `"indices.fielddata.cache.size": "80" ` - Note the use of a string
    #     rather than a boolean. Specifies the percentage of heap space
    #     allocated to field data. Default is unbounded.
    #
    #   * `"indices.query.bool.max_clause_count": "1024"` - Note the use of a
    #     string rather than a boolean. Specifies the maximum number of
    #     clauses allowed in a Lucene boolean query. Default is 1,024. Queries
    #     with more than the permitted number of clauses result in a
    #     `TooManyClauses` error.
    #
    #   For more information, see [Advanced cluster parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #
    # @option params [String] :access_policies
    #   Identity and Access Management (IAM) access policy as a JSON-formatted
    #   string.
    #
    # @option params [String] :ip_address_type
    #   Specify either dual stack or IPv4 as your IP address type. Dual stack
    #   allows you to share domain resources across IPv4 and IPv6 address
    #   types, and is the recommended option. If your IP address type is
    #   currently set to dual stack, you can't change it.
    #
    # @option params [Hash<String,Types::LogPublishingOption>] :log_publishing_options
    #   Options to publish OpenSearch logs to Amazon CloudWatch Logs.
    #
    # @option params [Types::EncryptionAtRestOptions] :encryption_at_rest_options
    #   Encryption at rest options for the domain.
    #
    # @option params [Types::DomainEndpointOptions] :domain_endpoint_options
    #   Additional options for the domain endpoint, such as whether to require
    #   HTTPS for all traffic.
    #
    # @option params [Types::NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   Node-to-node encryption options for the domain.
    #
    # @option params [Types::AdvancedSecurityOptionsInput] :advanced_security_options
    #   Options for fine-grained access control.
    #
    # @option params [Types::IdentityCenterOptionsInput] :identity_center_options
    #   Configuration settings for enabling and managing IAM Identity Center.
    #
    # @option params [Types::AutoTuneOptions] :auto_tune_options
    #   Options for Auto-Tune.
    #
    # @option params [Boolean] :dry_run
    #   This flag, when set to True, specifies whether the `UpdateDomain`
    #   request should return the results of a dry run analysis without
    #   actually applying the change. A dry run determines what type of
    #   deployment the update will cause.
    #
    # @option params [String] :dry_run_mode
    #   The type of dry run to perform.
    #
    #   * `Basic` only returns the type of deployment (blue/green or dynamic)
    #     that the update will cause.
    #
    #   * `Verbose` runs an additional check to validate the changes you're
    #     making. For more information, see [Validating a domain update][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#validation-check
    #
    # @option params [Types::OffPeakWindowOptions] :off_peak_window_options
    #   Off-peak window options for the domain.
    #
    # @option params [Types::SoftwareUpdateOptions] :software_update_options
    #   Service software update options for the domain.
    #
    # @option params [Types::AIMLOptionsInput] :aiml_options
    #   Options for all machine learning features for the specified domain.
    #
    # @return [Types::UpdateDomainConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainConfigResponse#domain_config #domain_config} => Types::DomainConfig
    #   * {Types::UpdateDomainConfigResponse#dry_run_results #dry_run_results} => Types::DryRunResults
    #   * {Types::UpdateDomainConfigResponse#dry_run_progress_status #dry_run_progress_status} => Types::DryRunProgressStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_config({
    #     domain_name: "DomainName", # required
    #     cluster_config: {
    #       instance_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, or1.medium.search, or1.large.search, or1.xlarge.search, or1.2xlarge.search, or1.4xlarge.search, or1.8xlarge.search, or1.12xlarge.search, or1.16xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1,
    #       },
    #       dedicated_master_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, or1.medium.search, or1.large.search, or1.xlarge.search, or1.2xlarge.search, or1.4xlarge.search, or1.8xlarge.search, or1.12xlarge.search, or1.16xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: "ultrawarm1.medium.search", # accepts ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search
    #       warm_count: 1,
    #       cold_storage_options: {
    #         enabled: false, # required
    #       },
    #       multi_az_with_standby_enabled: false,
    #       node_options: [
    #         {
    #           node_type: "coordinator", # accepts coordinator
    #           node_config: {
    #             enabled: false,
    #             type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, or1.medium.search, or1.large.search, or1.xlarge.search, or1.2xlarge.search, or1.4xlarge.search, or1.8xlarge.search, or1.12xlarge.search, or1.16xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #             count: 1,
    #           },
    #         },
    #       ],
    #     },
    #     ebs_options: {
    #       ebs_enabled: false,
    #       volume_type: "standard", # accepts standard, gp2, io1, gp3
    #       volume_size: 1,
    #       iops: 1,
    #       throughput: 1,
    #     },
    #     snapshot_options: {
    #       automated_snapshot_start_hour: 1,
    #     },
    #     vpc_options: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     cognito_options: {
    #       enabled: false,
    #       user_pool_id: "UserPoolId",
    #       identity_pool_id: "IdentityPoolId",
    #       role_arn: "RoleArn",
    #     },
    #     advanced_options: {
    #       "String" => "String",
    #     },
    #     access_policies: "PolicyDocument",
    #     ip_address_type: "ipv4", # accepts ipv4, dualstack
    #     log_publishing_options: {
    #       "INDEX_SLOW_LOGS" => {
    #         cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #         enabled: false,
    #       },
    #     },
    #     encryption_at_rest_options: {
    #       enabled: false,
    #       kms_key_id: "KmsKeyId",
    #     },
    #     domain_endpoint_options: {
    #       enforce_https: false,
    #       tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07, Policy-Min-TLS-1-2-PFS-2023-10
    #       custom_endpoint_enabled: false,
    #       custom_endpoint: "DomainNameFqdn",
    #       custom_endpoint_certificate_arn: "ARN",
    #     },
    #     node_to_node_encryption_options: {
    #       enabled: false,
    #     },
    #     advanced_security_options: {
    #       enabled: false,
    #       internal_user_database_enabled: false,
    #       master_user_options: {
    #         master_user_arn: "ARN",
    #         master_user_name: "Username",
    #         master_user_password: "Password",
    #       },
    #       saml_options: {
    #         enabled: false,
    #         idp: {
    #           metadata_content: "SAMLMetadata", # required
    #           entity_id: "SAMLEntityId", # required
    #         },
    #         master_user_name: "Username",
    #         master_backend_role: "BackendRole",
    #         subject_key: "String",
    #         roles_key: "String",
    #         session_timeout_minutes: 1,
    #       },
    #       jwt_options: {
    #         enabled: false,
    #         subject_key: "SubjectKey",
    #         roles_key: "RolesKey",
    #         public_key: "String",
    #       },
    #       iam_federation_options: {
    #         enabled: false,
    #         subject_key: "IAMFederationSubjectKey",
    #         roles_key: "IAMFederationRolesKey",
    #       },
    #       anonymous_auth_enabled: false,
    #     },
    #     identity_center_options: {
    #       enabled_api_access: false,
    #       identity_center_instance_arn: "IdentityCenterInstanceARN",
    #       subject_key: "UserName", # accepts UserName, UserId, Email
    #       roles_key: "GroupName", # accepts GroupName, GroupId
    #     },
    #     auto_tune_options: {
    #       desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #       rollback_on_disable: "NO_ROLLBACK", # accepts NO_ROLLBACK, DEFAULT_ROLLBACK
    #       maintenance_schedules: [
    #         {
    #           start_at: Time.now,
    #           duration: {
    #             value: 1,
    #             unit: "HOURS", # accepts HOURS
    #           },
    #           cron_expression_for_recurrence: "String",
    #         },
    #       ],
    #       use_off_peak_window: false,
    #     },
    #     dry_run: false,
    #     dry_run_mode: "Basic", # accepts Basic, Verbose
    #     off_peak_window_options: {
    #       enabled: false,
    #       off_peak_window: {
    #         window_start_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #       },
    #     },
    #     software_update_options: {
    #       auto_software_update_enabled: false,
    #     },
    #     aiml_options: {
    #       natural_language_query_generation_options: {
    #         desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       s3_vectors_engine: {
    #         enabled: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_config.engine_version.options #=> String
    #   resp.domain_config.engine_version.status.creation_date #=> Time
    #   resp.domain_config.engine_version.status.update_date #=> Time
    #   resp.domain_config.engine_version.status.update_version #=> Integer
    #   resp.domain_config.engine_version.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.engine_version.status.pending_deletion #=> Boolean
    #   resp.domain_config.cluster_config.options.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_config.cluster_config.options.instance_count #=> Integer
    #   resp.domain_config.cluster_config.options.dedicated_master_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.zone_awareness_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_config.cluster_config.options.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_config.cluster_config.options.dedicated_master_count #=> Integer
    #   resp.domain_config.cluster_config.options.warm_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_config.cluster_config.options.warm_count #=> Integer
    #   resp.domain_config.cluster_config.options.cold_storage_options.enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.multi_az_with_standby_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.node_options #=> Array
    #   resp.domain_config.cluster_config.options.node_options[0].node_type #=> String, one of "coordinator"
    #   resp.domain_config.cluster_config.options.node_options[0].node_config.enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.node_options[0].node_config.type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "or1.medium.search", "or1.large.search", "or1.xlarge.search", "or1.2xlarge.search", "or1.4xlarge.search", "or1.8xlarge.search", "or1.12xlarge.search", "or1.16xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_config.cluster_config.options.node_options[0].node_config.count #=> Integer
    #   resp.domain_config.cluster_config.status.creation_date #=> Time
    #   resp.domain_config.cluster_config.status.update_date #=> Time
    #   resp.domain_config.cluster_config.status.update_version #=> Integer
    #   resp.domain_config.cluster_config.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.cluster_config.status.pending_deletion #=> Boolean
    #   resp.domain_config.ebs_options.options.ebs_enabled #=> Boolean
    #   resp.domain_config.ebs_options.options.volume_type #=> String, one of "standard", "gp2", "io1", "gp3"
    #   resp.domain_config.ebs_options.options.volume_size #=> Integer
    #   resp.domain_config.ebs_options.options.iops #=> Integer
    #   resp.domain_config.ebs_options.options.throughput #=> Integer
    #   resp.domain_config.ebs_options.status.creation_date #=> Time
    #   resp.domain_config.ebs_options.status.update_date #=> Time
    #   resp.domain_config.ebs_options.status.update_version #=> Integer
    #   resp.domain_config.ebs_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.ebs_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.access_policies.options #=> String
    #   resp.domain_config.access_policies.status.creation_date #=> Time
    #   resp.domain_config.access_policies.status.update_date #=> Time
    #   resp.domain_config.access_policies.status.update_version #=> Integer
    #   resp.domain_config.access_policies.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.access_policies.status.pending_deletion #=> Boolean
    #   resp.domain_config.ip_address_type.options #=> String, one of "ipv4", "dualstack"
    #   resp.domain_config.ip_address_type.status.creation_date #=> Time
    #   resp.domain_config.ip_address_type.status.update_date #=> Time
    #   resp.domain_config.ip_address_type.status.update_version #=> Integer
    #   resp.domain_config.ip_address_type.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.ip_address_type.status.pending_deletion #=> Boolean
    #   resp.domain_config.snapshot_options.options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_config.snapshot_options.status.creation_date #=> Time
    #   resp.domain_config.snapshot_options.status.update_date #=> Time
    #   resp.domain_config.snapshot_options.status.update_version #=> Integer
    #   resp.domain_config.snapshot_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.snapshot_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.vpc_options.options.vpc_id #=> String
    #   resp.domain_config.vpc_options.options.subnet_ids #=> Array
    #   resp.domain_config.vpc_options.options.subnet_ids[0] #=> String
    #   resp.domain_config.vpc_options.options.availability_zones #=> Array
    #   resp.domain_config.vpc_options.options.availability_zones[0] #=> String
    #   resp.domain_config.vpc_options.options.security_group_ids #=> Array
    #   resp.domain_config.vpc_options.options.security_group_ids[0] #=> String
    #   resp.domain_config.vpc_options.status.creation_date #=> Time
    #   resp.domain_config.vpc_options.status.update_date #=> Time
    #   resp.domain_config.vpc_options.status.update_version #=> Integer
    #   resp.domain_config.vpc_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.vpc_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.cognito_options.options.enabled #=> Boolean
    #   resp.domain_config.cognito_options.options.user_pool_id #=> String
    #   resp.domain_config.cognito_options.options.identity_pool_id #=> String
    #   resp.domain_config.cognito_options.options.role_arn #=> String
    #   resp.domain_config.cognito_options.status.creation_date #=> Time
    #   resp.domain_config.cognito_options.status.update_date #=> Time
    #   resp.domain_config.cognito_options.status.update_version #=> Integer
    #   resp.domain_config.cognito_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.cognito_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.encryption_at_rest_options.options.enabled #=> Boolean
    #   resp.domain_config.encryption_at_rest_options.options.kms_key_id #=> String
    #   resp.domain_config.encryption_at_rest_options.status.creation_date #=> Time
    #   resp.domain_config.encryption_at_rest_options.status.update_date #=> Time
    #   resp.domain_config.encryption_at_rest_options.status.update_version #=> Integer
    #   resp.domain_config.encryption_at_rest_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.encryption_at_rest_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.node_to_node_encryption_options.options.enabled #=> Boolean
    #   resp.domain_config.node_to_node_encryption_options.status.creation_date #=> Time
    #   resp.domain_config.node_to_node_encryption_options.status.update_date #=> Time
    #   resp.domain_config.node_to_node_encryption_options.status.update_version #=> Integer
    #   resp.domain_config.node_to_node_encryption_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.node_to_node_encryption_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.advanced_options.options #=> Hash
    #   resp.domain_config.advanced_options.options["String"] #=> String
    #   resp.domain_config.advanced_options.status.creation_date #=> Time
    #   resp.domain_config.advanced_options.status.update_date #=> Time
    #   resp.domain_config.advanced_options.status.update_version #=> Integer
    #   resp.domain_config.advanced_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.advanced_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.log_publishing_options.options #=> Hash
    #   resp.domain_config.log_publishing_options.options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_config.log_publishing_options.options["LogType"].enabled #=> Boolean
    #   resp.domain_config.log_publishing_options.status.creation_date #=> Time
    #   resp.domain_config.log_publishing_options.status.update_date #=> Time
    #   resp.domain_config.log_publishing_options.status.update_version #=> Integer
    #   resp.domain_config.log_publishing_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.log_publishing_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.enforce_https #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07", "Policy-Min-TLS-1-2-PFS-2023-10"
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint #=> String
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_config.domain_endpoint_options.status.creation_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_version #=> Integer
    #   resp.domain_config.domain_endpoint_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.domain_endpoint_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.advanced_security_options.options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.internal_user_database_enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.saml_options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.saml_options.idp.metadata_content #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.idp.entity_id #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.subject_key #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.roles_key #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_config.advanced_security_options.options.jwt_options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.jwt_options.subject_key #=> String
    #   resp.domain_config.advanced_security_options.options.jwt_options.roles_key #=> String
    #   resp.domain_config.advanced_security_options.options.jwt_options.public_key #=> String
    #   resp.domain_config.advanced_security_options.options.iam_federation_options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.iam_federation_options.subject_key #=> String
    #   resp.domain_config.advanced_security_options.options.iam_federation_options.roles_key #=> String
    #   resp.domain_config.advanced_security_options.options.anonymous_auth_disable_date #=> Time
    #   resp.domain_config.advanced_security_options.options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.status.creation_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_version #=> Integer
    #   resp.domain_config.advanced_security_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.advanced_security_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.identity_center_options.options.enabled_api_access #=> Boolean
    #   resp.domain_config.identity_center_options.options.identity_center_instance_arn #=> String
    #   resp.domain_config.identity_center_options.options.subject_key #=> String, one of "UserName", "UserId", "Email"
    #   resp.domain_config.identity_center_options.options.roles_key #=> String, one of "GroupName", "GroupId"
    #   resp.domain_config.identity_center_options.options.identity_center_application_arn #=> String
    #   resp.domain_config.identity_center_options.options.identity_store_id #=> String
    #   resp.domain_config.identity_center_options.status.creation_date #=> Time
    #   resp.domain_config.identity_center_options.status.update_date #=> Time
    #   resp.domain_config.identity_center_options.status.update_version #=> Integer
    #   resp.domain_config.identity_center_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.identity_center_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.auto_tune_options.options.desired_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.domain_config.auto_tune_options.options.rollback_on_disable #=> String, one of "NO_ROLLBACK", "DEFAULT_ROLLBACK"
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules #=> Array
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].start_at #=> Time
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.value #=> Integer
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.unit #=> String, one of "HOURS"
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].cron_expression_for_recurrence #=> String
    #   resp.domain_config.auto_tune_options.options.use_off_peak_window #=> Boolean
    #   resp.domain_config.auto_tune_options.status.creation_date #=> Time
    #   resp.domain_config.auto_tune_options.status.update_date #=> Time
    #   resp.domain_config.auto_tune_options.status.update_version #=> Integer
    #   resp.domain_config.auto_tune_options.status.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_config.auto_tune_options.status.error_message #=> String
    #   resp.domain_config.auto_tune_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.change_progress_details.change_id #=> String
    #   resp.domain_config.change_progress_details.message #=> String
    #   resp.domain_config.change_progress_details.config_change_status #=> String, one of "Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"
    #   resp.domain_config.change_progress_details.initiated_by #=> String, one of "CUSTOMER", "SERVICE"
    #   resp.domain_config.change_progress_details.start_time #=> Time
    #   resp.domain_config.change_progress_details.last_updated_time #=> Time
    #   resp.domain_config.off_peak_window_options.options.enabled #=> Boolean
    #   resp.domain_config.off_peak_window_options.options.off_peak_window.window_start_time.hours #=> Integer
    #   resp.domain_config.off_peak_window_options.options.off_peak_window.window_start_time.minutes #=> Integer
    #   resp.domain_config.off_peak_window_options.status.creation_date #=> Time
    #   resp.domain_config.off_peak_window_options.status.update_date #=> Time
    #   resp.domain_config.off_peak_window_options.status.update_version #=> Integer
    #   resp.domain_config.off_peak_window_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.off_peak_window_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.software_update_options.options.auto_software_update_enabled #=> Boolean
    #   resp.domain_config.software_update_options.status.creation_date #=> Time
    #   resp.domain_config.software_update_options.status.update_date #=> Time
    #   resp.domain_config.software_update_options.status.update_version #=> Integer
    #   resp.domain_config.software_update_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.software_update_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.modifying_properties #=> Array
    #   resp.domain_config.modifying_properties[0].name #=> String
    #   resp.domain_config.modifying_properties[0].active_value #=> String
    #   resp.domain_config.modifying_properties[0].pending_value #=> String
    #   resp.domain_config.modifying_properties[0].value_type #=> String, one of "PLAIN_TEXT", "STRINGIFIED_JSON"
    #   resp.domain_config.aiml_options.options.natural_language_query_generation_options.desired_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.domain_config.aiml_options.options.natural_language_query_generation_options.current_state #=> String, one of "NOT_ENABLED", "ENABLE_COMPLETE", "ENABLE_IN_PROGRESS", "ENABLE_FAILED", "DISABLE_COMPLETE", "DISABLE_IN_PROGRESS", "DISABLE_FAILED"
    #   resp.domain_config.aiml_options.options.s3_vectors_engine.enabled #=> Boolean
    #   resp.domain_config.aiml_options.status.creation_date #=> Time
    #   resp.domain_config.aiml_options.status.update_date #=> Time
    #   resp.domain_config.aiml_options.status.update_version #=> Integer
    #   resp.domain_config.aiml_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.aiml_options.status.pending_deletion #=> Boolean
    #   resp.dry_run_results.deployment_type #=> String
    #   resp.dry_run_results.message #=> String
    #   resp.dry_run_progress_status.dry_run_id #=> String
    #   resp.dry_run_progress_status.dry_run_status #=> String
    #   resp.dry_run_progress_status.creation_date #=> String
    #   resp.dry_run_progress_status.update_date #=> String
    #   resp.dry_run_progress_status.validation_failures #=> Array
    #   resp.dry_run_progress_status.validation_failures[0].code #=> String
    #   resp.dry_run_progress_status.validation_failures[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateDomainConfig AWS API Documentation
    #
    # @overload update_domain_config(params = {})
    # @param [Hash] params ({})
    def update_domain_config(params = {}, options = {})
      req = build_request(:update_domain_config, params)
      req.send_request(options)
    end

    # Updates a package for use with Amazon OpenSearch Service domains. For
    # more information, see [Custom packages for Amazon OpenSearch
    # Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html
    #
    # @option params [required, String] :package_id
    #   The unique identifier for the package.
    #
    # @option params [required, Types::PackageSource] :package_source
    #   Amazon S3 bucket and key for the package.
    #
    # @option params [String] :package_description
    #   A new description of the package.
    #
    # @option params [String] :commit_message
    #   Commit message for the updated file, which is shown as part of
    #   `GetPackageVersionHistoryResponse`.
    #
    # @option params [Types::PackageConfiguration] :package_configuration
    #   The updated configuration details for a package.
    #
    # @option params [Types::PackageEncryptionOptions] :package_encryption_options
    #   Encryption options for a package.
    #
    # @return [Types::UpdatePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePackageResponse#package_details #package_details} => Types::PackageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_package({
    #     package_id: "PackageID", # required
    #     package_source: { # required
    #       s3_bucket_name: "S3BucketName",
    #       s3_key: "S3Key",
    #     },
    #     package_description: "PackageDescription",
    #     commit_message: "CommitMessage",
    #     package_configuration: {
    #       license_requirement: "REQUIRED", # required, accepts REQUIRED, OPTIONAL, NONE
    #       license_filepath: "LicenseFilepath",
    #       configuration_requirement: "REQUIRED", # required, accepts REQUIRED, OPTIONAL, NONE
    #       requires_restart_for_configuration_update: false,
    #     },
    #     package_encryption_options: {
    #       kms_key_identifier: "KmsKeyId",
    #       encryption_enabled: false, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.package_details.package_id #=> String
    #   resp.package_details.package_name #=> String
    #   resp.package_details.package_type #=> String, one of "TXT-DICTIONARY", "ZIP-PLUGIN", "PACKAGE-LICENSE", "PACKAGE-CONFIG"
    #   resp.package_details.package_description #=> String
    #   resp.package_details.package_status #=> String, one of "COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.package_details.created_at #=> Time
    #   resp.package_details.last_updated_at #=> Time
    #   resp.package_details.available_package_version #=> String
    #   resp.package_details.error_details.error_type #=> String
    #   resp.package_details.error_details.error_message #=> String
    #   resp.package_details.engine_version #=> String
    #   resp.package_details.available_plugin_properties.name #=> String
    #   resp.package_details.available_plugin_properties.description #=> String
    #   resp.package_details.available_plugin_properties.version #=> String
    #   resp.package_details.available_plugin_properties.class_name #=> String
    #   resp.package_details.available_plugin_properties.uncompressed_size_in_bytes #=> Integer
    #   resp.package_details.available_package_configuration.license_requirement #=> String, one of "REQUIRED", "OPTIONAL", "NONE"
    #   resp.package_details.available_package_configuration.license_filepath #=> String
    #   resp.package_details.available_package_configuration.configuration_requirement #=> String, one of "REQUIRED", "OPTIONAL", "NONE"
    #   resp.package_details.available_package_configuration.requires_restart_for_configuration_update #=> Boolean
    #   resp.package_details.allow_listed_user_list #=> Array
    #   resp.package_details.allow_listed_user_list[0] #=> String
    #   resp.package_details.package_owner #=> String
    #   resp.package_details.package_vending_options.vending_enabled #=> Boolean
    #   resp.package_details.package_encryption_options.kms_key_identifier #=> String
    #   resp.package_details.package_encryption_options.encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdatePackage AWS API Documentation
    #
    # @overload update_package(params = {})
    # @param [Hash] params ({})
    def update_package(params = {}, options = {})
      req = build_request(:update_package, params)
      req.send_request(options)
    end

    # Updates the scope of a package. Scope of the package defines users who
    # can view and associate a package.
    #
    # @option params [required, String] :package_id
    #   ID of the package whose scope is being updated.
    #
    # @option params [required, String] :operation
    #   The operation to perform on the package scope (e.g.,
    #   add/remove/override users).
    #
    # @option params [required, Array<String>] :package_user_list
    #   List of users to be added or removed from the package scope.
    #
    # @return [Types::UpdatePackageScopeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePackageScopeResponse#package_id #package_id} => String
    #   * {Types::UpdatePackageScopeResponse#operation #operation} => String
    #   * {Types::UpdatePackageScopeResponse#package_user_list #package_user_list} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_package_scope({
    #     package_id: "PackageID", # required
    #     operation: "ADD", # required, accepts ADD, OVERRIDE, REMOVE
    #     package_user_list: ["PackageUser"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.package_id #=> String
    #   resp.operation #=> String, one of "ADD", "OVERRIDE", "REMOVE"
    #   resp.package_user_list #=> Array
    #   resp.package_user_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdatePackageScope AWS API Documentation
    #
    # @overload update_package_scope(params = {})
    # @param [Hash] params ({})
    def update_package_scope(params = {}, options = {})
      req = build_request(:update_package_scope, params)
      req.send_request(options)
    end

    # Reschedules a planned domain configuration change for a later time.
    # This change can be a scheduled [service software update][1] or a
    # [blue/green Auto-Tune enhancement][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html
    # [2]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types
    #
    # @option params [required, String] :domain_name
    #   The name of the domain to reschedule an action for.
    #
    # @option params [required, String] :action_id
    #   The unique identifier of the action to reschedule. To retrieve this
    #   ID, send a [ListScheduledActions][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_ListScheduledActions.html
    #
    # @option params [required, String] :action_type
    #   The type of action to reschedule. Can be one of
    #   `SERVICE_SOFTWARE_UPDATE`, `JVM_HEAP_SIZE_TUNING`, or
    #   `JVM_YOUNG_GEN_TUNING`. To retrieve this value, send a
    #   [ListScheduledActions][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_ListScheduledActions.html
    #
    # @option params [required, String] :schedule_at
    #   When to schedule the action.
    #
    #   * `NOW` - Immediately schedules the update to happen in the current
    #     hour if there's capacity available.
    #
    #   * `TIMESTAMP` - Lets you specify a custom date and time to apply the
    #     update. If you specify this value, you must also provide a value for
    #     `DesiredStartTime`.
    #
    #   * `OFF_PEAK_WINDOW` - Marks the action to be picked up during an
    #     upcoming off-peak window. There's no guarantee that the change will
    #     be implemented during the next immediate window. Depending on
    #     capacity, it might happen in subsequent days.
    #
    # @option params [Integer] :desired_start_time
    #   The time to implement the change, in Coordinated Universal Time (UTC).
    #   Only specify this parameter if you set `ScheduleAt` to `TIMESTAMP`.
    #
    # @return [Types::UpdateScheduledActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateScheduledActionResponse#scheduled_action #scheduled_action} => Types::ScheduledAction
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scheduled_action({
    #     domain_name: "DomainName", # required
    #     action_id: "String", # required
    #     action_type: "SERVICE_SOFTWARE_UPDATE", # required, accepts SERVICE_SOFTWARE_UPDATE, JVM_HEAP_SIZE_TUNING, JVM_YOUNG_GEN_TUNING
    #     schedule_at: "NOW", # required, accepts NOW, TIMESTAMP, OFF_PEAK_WINDOW
    #     desired_start_time: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_action.id #=> String
    #   resp.scheduled_action.type #=> String, one of "SERVICE_SOFTWARE_UPDATE", "JVM_HEAP_SIZE_TUNING", "JVM_YOUNG_GEN_TUNING"
    #   resp.scheduled_action.severity #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.scheduled_action.scheduled_time #=> Integer
    #   resp.scheduled_action.description #=> String
    #   resp.scheduled_action.scheduled_by #=> String, one of "CUSTOMER", "SYSTEM"
    #   resp.scheduled_action.status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "FAILED", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.scheduled_action.mandatory #=> Boolean
    #   resp.scheduled_action.cancellable #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateScheduledAction AWS API Documentation
    #
    # @overload update_scheduled_action(params = {})
    # @param [Hash] params ({})
    def update_scheduled_action(params = {}, options = {})
      req = build_request(:update_scheduled_action, params)
      req.send_request(options)
    end

    # Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.
    #
    # @option params [required, String] :vpc_endpoint_id
    #   The unique identifier of the endpoint.
    #
    # @option params [required, Types::VPCOptions] :vpc_options
    #   The security groups and/or subnets to add, remove, or modify.
    #
    # @return [Types::UpdateVpcEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVpcEndpointResponse#vpc_endpoint #vpc_endpoint} => Types::VpcEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpc_endpoint({
    #     vpc_endpoint_id: "VpcEndpointId", # required
    #     vpc_options: { # required
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.vpc_endpoint.vpc_endpoint_owner #=> String
    #   resp.vpc_endpoint.domain_arn #=> String
    #   resp.vpc_endpoint.vpc_options.vpc_id #=> String
    #   resp.vpc_endpoint.vpc_options.subnet_ids #=> Array
    #   resp.vpc_endpoint.vpc_options.subnet_ids[0] #=> String
    #   resp.vpc_endpoint.vpc_options.availability_zones #=> Array
    #   resp.vpc_endpoint.vpc_options.availability_zones[0] #=> String
    #   resp.vpc_endpoint.vpc_options.security_group_ids #=> Array
    #   resp.vpc_endpoint.vpc_options.security_group_ids[0] #=> String
    #   resp.vpc_endpoint.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.vpc_endpoint.endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateVpcEndpoint AWS API Documentation
    #
    # @overload update_vpc_endpoint(params = {})
    # @param [Hash] params ({})
    def update_vpc_endpoint(params = {}, options = {})
      req = build_request(:update_vpc_endpoint, params)
      req.send_request(options)
    end

    # Allows you to either upgrade your Amazon OpenSearch Service domain or
    # perform an upgrade eligibility check to a compatible version of
    # OpenSearch or Elasticsearch.
    #
    # @option params [required, String] :domain_name
    #   Name of the OpenSearch Service domain that you want to upgrade.
    #
    # @option params [required, String] :target_version
    #   OpenSearch or Elasticsearch version to which you want to upgrade, in
    #   the format Opensearch\_X.Y or Elasticsearch\_X.Y.
    #
    # @option params [Boolean] :perform_check_only
    #   When true, indicates that an upgrade eligibility check needs to be
    #   performed. Does not actually perform the upgrade.
    #
    # @option params [Hash<String,String>] :advanced_options
    #   Only supports the `override_main_response_version` parameter and not
    #   other advanced options. You can only include this option when
    #   upgrading to an OpenSearch version. Specifies whether the domain
    #   reports its version as 7.10 so that it continues to work with
    #   Elasticsearch OSS clients and plugins.
    #
    # @return [Types::UpgradeDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpgradeDomainResponse#upgrade_id #upgrade_id} => String
    #   * {Types::UpgradeDomainResponse#domain_name #domain_name} => String
    #   * {Types::UpgradeDomainResponse#target_version #target_version} => String
    #   * {Types::UpgradeDomainResponse#perform_check_only #perform_check_only} => Boolean
    #   * {Types::UpgradeDomainResponse#advanced_options #advanced_options} => Hash&lt;String,String&gt;
    #   * {Types::UpgradeDomainResponse#change_progress_details #change_progress_details} => Types::ChangeProgressDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upgrade_domain({
    #     domain_name: "DomainName", # required
    #     target_version: "VersionString", # required
    #     perform_check_only: false,
    #     advanced_options: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.upgrade_id #=> String
    #   resp.domain_name #=> String
    #   resp.target_version #=> String
    #   resp.perform_check_only #=> Boolean
    #   resp.advanced_options #=> Hash
    #   resp.advanced_options["String"] #=> String
    #   resp.change_progress_details.change_id #=> String
    #   resp.change_progress_details.message #=> String
    #   resp.change_progress_details.config_change_status #=> String, one of "Pending", "Initializing", "Validating", "ValidationFailed", "ApplyingChanges", "Completed", "PendingUserInput", "Cancelled"
    #   resp.change_progress_details.initiated_by #=> String, one of "CUSTOMER", "SERVICE"
    #   resp.change_progress_details.start_time #=> Time
    #   resp.change_progress_details.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpgradeDomain AWS API Documentation
    #
    # @overload upgrade_domain(params = {})
    # @param [Hash] params ({})
    def upgrade_domain(params = {}, options = {})
      req = build_request(:upgrade_domain, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::OpenSearchService')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-opensearchservice'
      context[:gem_version] = '1.73.0'
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
