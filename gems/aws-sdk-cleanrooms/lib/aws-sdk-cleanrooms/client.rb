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

module Aws::CleanRooms
  # An API client for CleanRooms.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CleanRooms::Client.new(
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

    @identifier = :cleanrooms

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
    add_plugin(Aws::CleanRooms::Plugins::Endpoints)

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
    #   @option options [Aws::CleanRooms::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CleanRooms::EndpointParameters`.
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

    # Retrieves multiple analysis templates within a collaboration by their
    # Amazon Resource Names (ARNs).
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for the collaboration that the analysis templates
    #   belong to. Currently accepts collaboration ID.
    #
    # @option params [required, Array<String>] :analysis_template_arns
    #   The Amazon Resource Name (ARN) associated with the analysis template
    #   within a collaboration.
    #
    # @return [Types::BatchGetCollaborationAnalysisTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCollaborationAnalysisTemplateOutput#collaboration_analysis_templates #collaboration_analysis_templates} => Array&lt;Types::CollaborationAnalysisTemplate&gt;
    #   * {Types::BatchGetCollaborationAnalysisTemplateOutput#errors #errors} => Array&lt;Types::BatchGetCollaborationAnalysisTemplateError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_collaboration_analysis_template({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     analysis_template_arns: ["AnalysisTemplateArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.collaboration_analysis_templates #=> Array
    #   resp.collaboration_analysis_templates[0].id #=> String
    #   resp.collaboration_analysis_templates[0].arn #=> String
    #   resp.collaboration_analysis_templates[0].collaboration_id #=> String
    #   resp.collaboration_analysis_templates[0].collaboration_arn #=> String
    #   resp.collaboration_analysis_templates[0].description #=> String
    #   resp.collaboration_analysis_templates[0].creator_account_id #=> String
    #   resp.collaboration_analysis_templates[0].name #=> String
    #   resp.collaboration_analysis_templates[0].create_time #=> Time
    #   resp.collaboration_analysis_templates[0].update_time #=> Time
    #   resp.collaboration_analysis_templates[0].schema.referenced_tables #=> Array
    #   resp.collaboration_analysis_templates[0].schema.referenced_tables[0] #=> String
    #   resp.collaboration_analysis_templates[0].format #=> String, one of "SQL"
    #   resp.collaboration_analysis_templates[0].source.text #=> String
    #   resp.collaboration_analysis_templates[0].analysis_parameters #=> Array
    #   resp.collaboration_analysis_templates[0].analysis_parameters[0].name #=> String
    #   resp.collaboration_analysis_templates[0].analysis_parameters[0].type #=> String, one of "SMALLINT", "INTEGER", "BIGINT", "DECIMAL", "REAL", "DOUBLE_PRECISION", "BOOLEAN", "CHAR", "VARCHAR", "DATE", "TIMESTAMP", "TIMESTAMPTZ", "TIME", "TIMETZ", "VARBYTE", "BINARY", "BYTE", "CHARACTER", "DOUBLE", "FLOAT", "INT", "LONG", "NUMERIC", "SHORT", "STRING", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TINYINT"
    #   resp.collaboration_analysis_templates[0].analysis_parameters[0].default_value #=> String
    #   resp.collaboration_analysis_templates[0].validations #=> Array
    #   resp.collaboration_analysis_templates[0].validations[0].type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.collaboration_analysis_templates[0].validations[0].status #=> String, one of "VALID", "INVALID", "UNABLE_TO_VALIDATE"
    #   resp.collaboration_analysis_templates[0].validations[0].reasons #=> Array
    #   resp.collaboration_analysis_templates[0].validations[0].reasons[0].message #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].arn #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetCollaborationAnalysisTemplate AWS API Documentation
    #
    # @overload batch_get_collaboration_analysis_template(params = {})
    # @param [Hash] params ({})
    def batch_get_collaboration_analysis_template(params = {}, options = {})
      req = build_request(:batch_get_collaboration_analysis_template, params)
      req.send_request(options)
    end

    # Retrieves multiple schemas by their identifiers.
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for the collaboration that the schemas belong to.
    #   Currently accepts collaboration ID.
    #
    # @option params [required, Array<String>] :names
    #   The names for the schema objects to retrieve.
    #
    # @return [Types::BatchGetSchemaOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetSchemaOutput#schemas #schemas} => Array&lt;Types::Schema&gt;
    #   * {Types::BatchGetSchemaOutput#errors #errors} => Array&lt;Types::BatchGetSchemaError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_schema({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     names: ["TableAlias"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schemas #=> Array
    #   resp.schemas[0].columns #=> Array
    #   resp.schemas[0].columns[0].name #=> String
    #   resp.schemas[0].columns[0].type #=> String
    #   resp.schemas[0].partition_keys #=> Array
    #   resp.schemas[0].partition_keys[0].name #=> String
    #   resp.schemas[0].partition_keys[0].type #=> String
    #   resp.schemas[0].analysis_rule_types #=> Array
    #   resp.schemas[0].analysis_rule_types[0] #=> String, one of "AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"
    #   resp.schemas[0].analysis_method #=> String, one of "DIRECT_QUERY"
    #   resp.schemas[0].creator_account_id #=> String
    #   resp.schemas[0].name #=> String
    #   resp.schemas[0].collaboration_id #=> String
    #   resp.schemas[0].collaboration_arn #=> String
    #   resp.schemas[0].description #=> String
    #   resp.schemas[0].create_time #=> Time
    #   resp.schemas[0].update_time #=> Time
    #   resp.schemas[0].type #=> String, one of "TABLE", "ID_MAPPING_TABLE"
    #   resp.schemas[0].schema_status_details #=> Array
    #   resp.schemas[0].schema_status_details[0].status #=> String, one of "READY", "NOT_READY"
    #   resp.schemas[0].schema_status_details[0].reasons #=> Array
    #   resp.schemas[0].schema_status_details[0].reasons[0].code #=> String, one of "ANALYSIS_RULE_MISSING", "ANALYSIS_TEMPLATES_NOT_CONFIGURED", "ANALYSIS_PROVIDERS_NOT_CONFIGURED", "DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED", "ID_MAPPING_TABLE_NOT_POPULATED", "COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED", "ADDITIONAL_ANALYSES_NOT_CONFIGURED", "RESULT_RECEIVERS_NOT_CONFIGURED", "ADDITIONAL_ANALYSES_NOT_ALLOWED", "RESULT_RECEIVERS_NOT_ALLOWED", "ANALYSIS_RULE_TYPES_NOT_COMPATIBLE"
    #   resp.schemas[0].schema_status_details[0].reasons[0].message #=> String
    #   resp.schemas[0].schema_status_details[0].analysis_rule_type #=> String, one of "AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"
    #   resp.schemas[0].schema_status_details[0].configurations #=> Array
    #   resp.schemas[0].schema_status_details[0].configurations[0] #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.schemas[0].schema_status_details[0].analysis_type #=> String, one of "DIRECT_ANALYSIS", "ADDITIONAL_ANALYSIS"
    #   resp.schemas[0].schema_type_properties.id_mapping_table.id_mapping_table_input_source #=> Array
    #   resp.schemas[0].schema_type_properties.id_mapping_table.id_mapping_table_input_source[0].id_namespace_association_id #=> String
    #   resp.schemas[0].schema_type_properties.id_mapping_table.id_mapping_table_input_source[0].type #=> String, one of "SOURCE", "TARGET"
    #   resp.errors #=> Array
    #   resp.errors[0].name #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetSchema AWS API Documentation
    #
    # @overload batch_get_schema(params = {})
    # @param [Hash] params ({})
    def batch_get_schema(params = {}, options = {})
      req = build_request(:batch_get_schema, params)
      req.send_request(options)
    end

    # Retrieves multiple analysis rule schemas.
    #
    # @option params [required, String] :collaboration_identifier
    #   The unique identifier of the collaboration that contains the schema
    #   analysis rule.
    #
    # @option params [required, Array<Types::SchemaAnalysisRuleRequest>] :schema_analysis_rule_requests
    #   The information that's necessary to retrieve a schema analysis rule.
    #
    # @return [Types::BatchGetSchemaAnalysisRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetSchemaAnalysisRuleOutput#analysis_rules #analysis_rules} => Array&lt;Types::AnalysisRule&gt;
    #   * {Types::BatchGetSchemaAnalysisRuleOutput#errors #errors} => Array&lt;Types::BatchGetSchemaAnalysisRuleError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_schema_analysis_rule({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     schema_analysis_rule_requests: [ # required
    #       {
    #         name: "TableAlias", # required
    #         type: "AGGREGATION", # required, accepts AGGREGATION, LIST, CUSTOM, ID_MAPPING_TABLE
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_rules #=> Array
    #   resp.analysis_rules[0].collaboration_id #=> String
    #   resp.analysis_rules[0].type #=> String, one of "AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"
    #   resp.analysis_rules[0].name #=> String
    #   resp.analysis_rules[0].create_time #=> Time
    #   resp.analysis_rules[0].update_time #=> Time
    #   resp.analysis_rules[0].policy.v1.list.join_columns #=> Array
    #   resp.analysis_rules[0].policy.v1.list.join_columns[0] #=> String
    #   resp.analysis_rules[0].policy.v1.list.allowed_join_operators #=> Array
    #   resp.analysis_rules[0].policy.v1.list.allowed_join_operators[0] #=> String, one of "OR", "AND"
    #   resp.analysis_rules[0].policy.v1.list.list_columns #=> Array
    #   resp.analysis_rules[0].policy.v1.list.list_columns[0] #=> String
    #   resp.analysis_rules[0].policy.v1.list.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rules[0].policy.v1.aggregation.aggregate_columns #=> Array
    #   resp.analysis_rules[0].policy.v1.aggregation.aggregate_columns[0].column_names #=> Array
    #   resp.analysis_rules[0].policy.v1.aggregation.aggregate_columns[0].column_names[0] #=> String
    #   resp.analysis_rules[0].policy.v1.aggregation.aggregate_columns[0].function #=> String, one of "SUM", "SUM_DISTINCT", "COUNT", "COUNT_DISTINCT", "AVG"
    #   resp.analysis_rules[0].policy.v1.aggregation.join_columns #=> Array
    #   resp.analysis_rules[0].policy.v1.aggregation.join_columns[0] #=> String
    #   resp.analysis_rules[0].policy.v1.aggregation.join_required #=> String, one of "QUERY_RUNNER"
    #   resp.analysis_rules[0].policy.v1.aggregation.allowed_join_operators #=> Array
    #   resp.analysis_rules[0].policy.v1.aggregation.allowed_join_operators[0] #=> String, one of "OR", "AND"
    #   resp.analysis_rules[0].policy.v1.aggregation.dimension_columns #=> Array
    #   resp.analysis_rules[0].policy.v1.aggregation.dimension_columns[0] #=> String
    #   resp.analysis_rules[0].policy.v1.aggregation.scalar_functions #=> Array
    #   resp.analysis_rules[0].policy.v1.aggregation.scalar_functions[0] #=> String, one of "ABS", "CAST", "CEILING", "COALESCE", "CONVERT", "CURRENT_DATE", "DATEADD", "EXTRACT", "FLOOR", "GETDATE", "LN", "LOG", "LOWER", "ROUND", "RTRIM", "SQRT", "SUBSTRING", "TO_CHAR", "TO_DATE", "TO_NUMBER", "TO_TIMESTAMP", "TRIM", "TRUNC", "UPPER"
    #   resp.analysis_rules[0].policy.v1.aggregation.output_constraints #=> Array
    #   resp.analysis_rules[0].policy.v1.aggregation.output_constraints[0].column_name #=> String
    #   resp.analysis_rules[0].policy.v1.aggregation.output_constraints[0].minimum #=> Integer
    #   resp.analysis_rules[0].policy.v1.aggregation.output_constraints[0].type #=> String, one of "COUNT_DISTINCT"
    #   resp.analysis_rules[0].policy.v1.aggregation.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rules[0].policy.v1.custom.allowed_analyses #=> Array
    #   resp.analysis_rules[0].policy.v1.custom.allowed_analyses[0] #=> String
    #   resp.analysis_rules[0].policy.v1.custom.allowed_analysis_providers #=> Array
    #   resp.analysis_rules[0].policy.v1.custom.allowed_analysis_providers[0] #=> String
    #   resp.analysis_rules[0].policy.v1.custom.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rules[0].policy.v1.custom.disallowed_output_columns #=> Array
    #   resp.analysis_rules[0].policy.v1.custom.disallowed_output_columns[0] #=> String
    #   resp.analysis_rules[0].policy.v1.custom.differential_privacy.columns #=> Array
    #   resp.analysis_rules[0].policy.v1.custom.differential_privacy.columns[0].name #=> String
    #   resp.analysis_rules[0].policy.v1.id_mapping_table.join_columns #=> Array
    #   resp.analysis_rules[0].policy.v1.id_mapping_table.join_columns[0] #=> String
    #   resp.analysis_rules[0].policy.v1.id_mapping_table.query_constraints #=> Array
    #   resp.analysis_rules[0].policy.v1.id_mapping_table.query_constraints[0].require_overlap.columns #=> Array
    #   resp.analysis_rules[0].policy.v1.id_mapping_table.query_constraints[0].require_overlap.columns[0] #=> String
    #   resp.analysis_rules[0].policy.v1.id_mapping_table.dimension_columns #=> Array
    #   resp.analysis_rules[0].policy.v1.id_mapping_table.dimension_columns[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].name #=> String
    #   resp.errors[0].type #=> String, one of "AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetSchemaAnalysisRule AWS API Documentation
    #
    # @overload batch_get_schema_analysis_rule(params = {})
    # @param [Hash] params ({})
    def batch_get_schema_analysis_rule(params = {}, options = {})
      req = build_request(:batch_get_schema_analysis_rule, params)
      req.send_request(options)
    end

    # Creates a new analysis template.
    #
    # @option params [String] :description
    #   The description of the analysis template.
    #
    # @option params [required, String] :membership_identifier
    #   The identifier for a membership resource.
    #
    # @option params [required, String] :name
    #   The name of the analysis template.
    #
    # @option params [required, String] :format
    #   The format of the analysis template.
    #
    # @option params [required, Types::AnalysisSource] :source
    #   The information in the analysis template. Currently supports `text`,
    #   the query text for the analysis template.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #
    # @option params [Array<Types::AnalysisParameter>] :analysis_parameters
    #   The parameters of the analysis template.
    #
    # @return [Types::CreateAnalysisTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnalysisTemplateOutput#analysis_template #analysis_template} => Types::AnalysisTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_analysis_template({
    #     description: "ResourceDescription",
    #     membership_identifier: "MembershipIdentifier", # required
    #     name: "TableAlias", # required
    #     format: "SQL", # required, accepts SQL
    #     source: { # required
    #       text: "AnalysisTemplateText",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     analysis_parameters: [
    #       {
    #         name: "ParameterName", # required
    #         type: "SMALLINT", # required, accepts SMALLINT, INTEGER, BIGINT, DECIMAL, REAL, DOUBLE_PRECISION, BOOLEAN, CHAR, VARCHAR, DATE, TIMESTAMP, TIMESTAMPTZ, TIME, TIMETZ, VARBYTE, BINARY, BYTE, CHARACTER, DOUBLE, FLOAT, INT, LONG, NUMERIC, SHORT, STRING, TIMESTAMP_LTZ, TIMESTAMP_NTZ, TINYINT
    #         default_value: "ParameterValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_template.id #=> String
    #   resp.analysis_template.arn #=> String
    #   resp.analysis_template.collaboration_id #=> String
    #   resp.analysis_template.collaboration_arn #=> String
    #   resp.analysis_template.membership_id #=> String
    #   resp.analysis_template.membership_arn #=> String
    #   resp.analysis_template.description #=> String
    #   resp.analysis_template.name #=> String
    #   resp.analysis_template.create_time #=> Time
    #   resp.analysis_template.update_time #=> Time
    #   resp.analysis_template.schema.referenced_tables #=> Array
    #   resp.analysis_template.schema.referenced_tables[0] #=> String
    #   resp.analysis_template.format #=> String, one of "SQL"
    #   resp.analysis_template.source.text #=> String
    #   resp.analysis_template.analysis_parameters #=> Array
    #   resp.analysis_template.analysis_parameters[0].name #=> String
    #   resp.analysis_template.analysis_parameters[0].type #=> String, one of "SMALLINT", "INTEGER", "BIGINT", "DECIMAL", "REAL", "DOUBLE_PRECISION", "BOOLEAN", "CHAR", "VARCHAR", "DATE", "TIMESTAMP", "TIMESTAMPTZ", "TIME", "TIMETZ", "VARBYTE", "BINARY", "BYTE", "CHARACTER", "DOUBLE", "FLOAT", "INT", "LONG", "NUMERIC", "SHORT", "STRING", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TINYINT"
    #   resp.analysis_template.analysis_parameters[0].default_value #=> String
    #   resp.analysis_template.validations #=> Array
    #   resp.analysis_template.validations[0].type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.analysis_template.validations[0].status #=> String, one of "VALID", "INVALID", "UNABLE_TO_VALIDATE"
    #   resp.analysis_template.validations[0].reasons #=> Array
    #   resp.analysis_template.validations[0].reasons[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateAnalysisTemplate AWS API Documentation
    #
    # @overload create_analysis_template(params = {})
    # @param [Hash] params ({})
    def create_analysis_template(params = {}, options = {})
      req = build_request(:create_analysis_template, params)
      req.send_request(options)
    end

    # Creates a new collaboration.
    #
    # @option params [required, Array<Types::MemberSpecification>] :members
    #   A list of initial members, not including the creator. This list is
    #   immutable.
    #
    # @option params [required, String] :name
    #   The display name for a collaboration.
    #
    # @option params [required, String] :description
    #   A description of the collaboration provided by the collaboration
    #   owner.
    #
    # @option params [required, Array<String>] :creator_member_abilities
    #   The abilities granted to the collaboration creator.
    #
    # @option params [Types::MLMemberAbilities] :creator_ml_member_abilities
    #   The ML abilities granted to the collaboration creator.
    #
    #   Custom ML modeling is in beta release and is subject to change. For
    #   beta terms and conditions, see *Betas and Previews* in the [Amazon Web
    #   Services Service Terms][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/service-terms/
    #
    # @option params [required, String] :creator_display_name
    #   The display name of the collaboration creator.
    #
    # @option params [Types::DataEncryptionMetadata] :data_encryption_metadata
    #   The settings for client-side encryption with Cryptographic Computing
    #   for Clean Rooms.
    #
    # @option params [required, String] :query_log_status
    #   An indicator as to whether query logging has been enabled or disabled
    #   for the collaboration.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #
    # @option params [Types::PaymentConfiguration] :creator_payment_configuration
    #   The collaboration creator's payment responsibilities set by the
    #   collaboration creator.
    #
    #   If the collaboration creator hasn't specified anyone as the member
    #   paying for query compute costs, then the member who can query is the
    #   default payer.
    #
    # @option params [String] :analytics_engine
    #   The analytics engine.
    #
    # @return [Types::CreateCollaborationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCollaborationOutput#collaboration #collaboration} => Types::Collaboration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_collaboration({
    #     members: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         member_abilities: ["CAN_QUERY"], # required, accepts CAN_QUERY, CAN_RECEIVE_RESULTS
    #         ml_member_abilities: {
    #           custom_ml_member_abilities: ["CAN_RECEIVE_MODEL_OUTPUT"], # required, accepts CAN_RECEIVE_MODEL_OUTPUT, CAN_RECEIVE_INFERENCE_OUTPUT
    #         },
    #         display_name: "DisplayName", # required
    #         payment_configuration: {
    #           query_compute: { # required
    #             is_responsible: false, # required
    #           },
    #           machine_learning: {
    #             model_training: {
    #               is_responsible: false, # required
    #             },
    #             model_inference: {
    #               is_responsible: false, # required
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     name: "CollaborationName", # required
    #     description: "CollaborationDescription", # required
    #     creator_member_abilities: ["CAN_QUERY"], # required, accepts CAN_QUERY, CAN_RECEIVE_RESULTS
    #     creator_ml_member_abilities: {
    #       custom_ml_member_abilities: ["CAN_RECEIVE_MODEL_OUTPUT"], # required, accepts CAN_RECEIVE_MODEL_OUTPUT, CAN_RECEIVE_INFERENCE_OUTPUT
    #     },
    #     creator_display_name: "DisplayName", # required
    #     data_encryption_metadata: {
    #       allow_cleartext: false, # required
    #       allow_duplicates: false, # required
    #       allow_joins_on_columns_with_different_names: false, # required
    #       preserve_nulls: false, # required
    #     },
    #     query_log_status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     creator_payment_configuration: {
    #       query_compute: { # required
    #         is_responsible: false, # required
    #       },
    #       machine_learning: {
    #         model_training: {
    #           is_responsible: false, # required
    #         },
    #         model_inference: {
    #           is_responsible: false, # required
    #         },
    #       },
    #     },
    #     analytics_engine: "SPARK", # accepts SPARK, CLEAN_ROOMS_SQL
    #   })
    #
    # @example Response structure
    #
    #   resp.collaboration.id #=> String
    #   resp.collaboration.arn #=> String
    #   resp.collaboration.name #=> String
    #   resp.collaboration.description #=> String
    #   resp.collaboration.creator_account_id #=> String
    #   resp.collaboration.creator_display_name #=> String
    #   resp.collaboration.create_time #=> Time
    #   resp.collaboration.update_time #=> Time
    #   resp.collaboration.member_status #=> String, one of "INVITED", "ACTIVE", "LEFT", "REMOVED"
    #   resp.collaboration.membership_id #=> String
    #   resp.collaboration.membership_arn #=> String
    #   resp.collaboration.data_encryption_metadata.allow_cleartext #=> Boolean
    #   resp.collaboration.data_encryption_metadata.allow_duplicates #=> Boolean
    #   resp.collaboration.data_encryption_metadata.allow_joins_on_columns_with_different_names #=> Boolean
    #   resp.collaboration.data_encryption_metadata.preserve_nulls #=> Boolean
    #   resp.collaboration.query_log_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.collaboration.analytics_engine #=> String, one of "SPARK", "CLEAN_ROOMS_SQL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateCollaboration AWS API Documentation
    #
    # @overload create_collaboration(params = {})
    # @param [Hash] params ({})
    def create_collaboration(params = {}, options = {})
      req = build_request(:create_collaboration, params)
      req.send_request(options)
    end

    # Provides the details necessary to create a configured audience model
    # association.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The configured audience model is associated to the collaboration that
    #   this membership belongs to. Accepts a membership ID.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   A unique identifier for the configured audience model that you want to
    #   associate.
    #
    # @option params [required, String] :configured_audience_model_association_name
    #   The name of the configured audience model association.
    #
    # @option params [required, Boolean] :manage_resource_policies
    #   When `TRUE`, indicates that the resource policy for the configured
    #   audience model resource being associated is configured for Clean Rooms
    #   to manage permissions related to the given collaboration. When
    #   `FALSE`, indicates that the configured audience model resource owner
    #   will manage permissions related to the given collaboration.
    #
    #   Setting this to `TRUE` requires you to have permissions to create,
    #   update, and delete the resource policy for the `cleanrooms-ml`
    #   resource when you call the DeleteConfiguredAudienceModelAssociation
    #   resource. In addition, if you are the collaboration creator and
    #   specify `TRUE`, you must have the same permissions when you call the
    #   DeleteMember and DeleteCollaboration APIs.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #
    # @option params [String] :description
    #   A description of the configured audience model association.
    #
    # @return [Types::CreateConfiguredAudienceModelAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfiguredAudienceModelAssociationOutput#configured_audience_model_association #configured_audience_model_association} => Types::ConfiguredAudienceModelAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configured_audience_model_association({
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     configured_audience_model_association_name: "ConfiguredAudienceModelAssociationName", # required
    #     manage_resource_policies: false, # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_association.id #=> String
    #   resp.configured_audience_model_association.arn #=> String
    #   resp.configured_audience_model_association.configured_audience_model_arn #=> String
    #   resp.configured_audience_model_association.membership_id #=> String
    #   resp.configured_audience_model_association.membership_arn #=> String
    #   resp.configured_audience_model_association.collaboration_id #=> String
    #   resp.configured_audience_model_association.collaboration_arn #=> String
    #   resp.configured_audience_model_association.name #=> String
    #   resp.configured_audience_model_association.manage_resource_policies #=> Boolean
    #   resp.configured_audience_model_association.description #=> String
    #   resp.configured_audience_model_association.create_time #=> Time
    #   resp.configured_audience_model_association.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredAudienceModelAssociation AWS API Documentation
    #
    # @overload create_configured_audience_model_association(params = {})
    # @param [Hash] params ({})
    def create_configured_audience_model_association(params = {}, options = {})
      req = build_request(:create_configured_audience_model_association, params)
      req.send_request(options)
    end

    # Creates a new configured table resource.
    #
    # @option params [required, String] :name
    #   The name of the configured table.
    #
    # @option params [String] :description
    #   A description for the configured table.
    #
    # @option params [required, Types::TableReference] :table_reference
    #   A reference to the table being configured.
    #
    # @option params [required, Array<String>] :allowed_columns
    #   The columns of the underlying table that can be used by collaborations
    #   or analysis rules.
    #
    # @option params [required, String] :analysis_method
    #   The analysis method for the configured tables. The only valid value is
    #   currently `DIRECT\_QUERY`.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #
    # @return [Types::CreateConfiguredTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfiguredTableOutput#configured_table #configured_table} => Types::ConfiguredTable
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configured_table({
    #     name: "DisplayName", # required
    #     description: "TableDescription",
    #     table_reference: { # required
    #       glue: {
    #         table_name: "GlueTableName", # required
    #         database_name: "GlueDatabaseName", # required
    #       },
    #       snowflake: {
    #         secret_arn: "SecretsManagerArn", # required
    #         account_identifier: "SnowflakeAccountIdentifier", # required
    #         database_name: "SnowflakeDatabaseName", # required
    #         table_name: "SnowflakeTableName", # required
    #         schema_name: "SnowflakeSchemaName", # required
    #         table_schema: { # required
    #           v1: [
    #             {
    #               column_name: "ColumnName", # required
    #               column_type: "ColumnTypeString", # required
    #             },
    #           ],
    #         },
    #       },
    #       athena: {
    #         work_group: "AthenaWorkGroup", # required
    #         output_location: "AthenaOutputLocation",
    #         database_name: "AthenaDatabaseName", # required
    #         table_name: "AthenaTableName", # required
    #       },
    #     },
    #     allowed_columns: ["ColumnName"], # required
    #     analysis_method: "DIRECT_QUERY", # required, accepts DIRECT_QUERY
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_table.id #=> String
    #   resp.configured_table.arn #=> String
    #   resp.configured_table.name #=> String
    #   resp.configured_table.description #=> String
    #   resp.configured_table.table_reference.glue.table_name #=> String
    #   resp.configured_table.table_reference.glue.database_name #=> String
    #   resp.configured_table.table_reference.snowflake.secret_arn #=> String
    #   resp.configured_table.table_reference.snowflake.account_identifier #=> String
    #   resp.configured_table.table_reference.snowflake.database_name #=> String
    #   resp.configured_table.table_reference.snowflake.table_name #=> String
    #   resp.configured_table.table_reference.snowflake.schema_name #=> String
    #   resp.configured_table.table_reference.snowflake.table_schema.v1 #=> Array
    #   resp.configured_table.table_reference.snowflake.table_schema.v1[0].column_name #=> String
    #   resp.configured_table.table_reference.snowflake.table_schema.v1[0].column_type #=> String
    #   resp.configured_table.table_reference.athena.work_group #=> String
    #   resp.configured_table.table_reference.athena.output_location #=> String
    #   resp.configured_table.table_reference.athena.database_name #=> String
    #   resp.configured_table.table_reference.athena.table_name #=> String
    #   resp.configured_table.create_time #=> Time
    #   resp.configured_table.update_time #=> Time
    #   resp.configured_table.analysis_rule_types #=> Array
    #   resp.configured_table.analysis_rule_types[0] #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.configured_table.analysis_method #=> String, one of "DIRECT_QUERY"
    #   resp.configured_table.allowed_columns #=> Array
    #   resp.configured_table.allowed_columns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTable AWS API Documentation
    #
    # @overload create_configured_table(params = {})
    # @param [Hash] params ({})
    def create_configured_table(params = {}, options = {})
      req = build_request(:create_configured_table, params)
      req.send_request(options)
    end

    # Creates a new analysis rule for a configured table. Currently, only
    # one analysis rule can be created for a given configured table.
    #
    # @option params [required, String] :configured_table_identifier
    #   The identifier for the configured table to create the analysis rule
    #   for. Currently accepts the configured table ID.
    #
    # @option params [required, String] :analysis_rule_type
    #   The type of analysis rule.
    #
    # @option params [required, Types::ConfiguredTableAnalysisRulePolicy] :analysis_rule_policy
    #   The analysis rule policy that was created for the configured table.
    #
    # @return [Types::CreateConfiguredTableAnalysisRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfiguredTableAnalysisRuleOutput#analysis_rule #analysis_rule} => Types::ConfiguredTableAnalysisRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configured_table_analysis_rule({
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     analysis_rule_type: "AGGREGATION", # required, accepts AGGREGATION, LIST, CUSTOM
    #     analysis_rule_policy: { # required
    #       v1: {
    #         list: {
    #           join_columns: ["AnalysisRuleColumnName"], # required
    #           allowed_join_operators: ["OR"], # accepts OR, AND
    #           list_columns: ["AnalysisRuleColumnName"], # required
    #           additional_analyses: "ALLOWED", # accepts ALLOWED, REQUIRED, NOT_ALLOWED
    #         },
    #         aggregation: {
    #           aggregate_columns: [ # required
    #             {
    #               column_names: ["AnalysisRuleColumnName"], # required
    #               function: "SUM", # required, accepts SUM, SUM_DISTINCT, COUNT, COUNT_DISTINCT, AVG
    #             },
    #           ],
    #           join_columns: ["AnalysisRuleColumnName"], # required
    #           join_required: "QUERY_RUNNER", # accepts QUERY_RUNNER
    #           allowed_join_operators: ["OR"], # accepts OR, AND
    #           dimension_columns: ["AnalysisRuleColumnName"], # required
    #           scalar_functions: ["ABS"], # required, accepts ABS, CAST, CEILING, COALESCE, CONVERT, CURRENT_DATE, DATEADD, EXTRACT, FLOOR, GETDATE, LN, LOG, LOWER, ROUND, RTRIM, SQRT, SUBSTRING, TO_CHAR, TO_DATE, TO_NUMBER, TO_TIMESTAMP, TRIM, TRUNC, UPPER
    #           output_constraints: [ # required
    #             {
    #               column_name: "AnalysisRuleColumnName", # required
    #               minimum: 1, # required
    #               type: "COUNT_DISTINCT", # required, accepts COUNT_DISTINCT
    #             },
    #           ],
    #           additional_analyses: "ALLOWED", # accepts ALLOWED, REQUIRED, NOT_ALLOWED
    #         },
    #         custom: {
    #           allowed_analyses: ["AnalysisTemplateArnOrQueryWildcard"], # required
    #           allowed_analysis_providers: ["AccountId"],
    #           additional_analyses: "ALLOWED", # accepts ALLOWED, REQUIRED, NOT_ALLOWED
    #           disallowed_output_columns: ["AnalysisRuleColumnName"],
    #           differential_privacy: {
    #             columns: [ # required
    #               {
    #                 name: "String", # required
    #               },
    #             ],
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_rule.configured_table_id #=> String
    #   resp.analysis_rule.configured_table_arn #=> String
    #   resp.analysis_rule.policy.v1.list.join_columns #=> Array
    #   resp.analysis_rule.policy.v1.list.join_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.list.allowed_join_operators #=> Array
    #   resp.analysis_rule.policy.v1.list.allowed_join_operators[0] #=> String, one of "OR", "AND"
    #   resp.analysis_rule.policy.v1.list.list_columns #=> Array
    #   resp.analysis_rule.policy.v1.list.list_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.list.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].column_names #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].column_names[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].function #=> String, one of "SUM", "SUM_DISTINCT", "COUNT", "COUNT_DISTINCT", "AVG"
    #   resp.analysis_rule.policy.v1.aggregation.join_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.join_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.join_required #=> String, one of "QUERY_RUNNER"
    #   resp.analysis_rule.policy.v1.aggregation.allowed_join_operators #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.allowed_join_operators[0] #=> String, one of "OR", "AND"
    #   resp.analysis_rule.policy.v1.aggregation.dimension_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.dimension_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.scalar_functions #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.scalar_functions[0] #=> String, one of "ABS", "CAST", "CEILING", "COALESCE", "CONVERT", "CURRENT_DATE", "DATEADD", "EXTRACT", "FLOOR", "GETDATE", "LN", "LOG", "LOWER", "ROUND", "RTRIM", "SQRT", "SUBSTRING", "TO_CHAR", "TO_DATE", "TO_NUMBER", "TO_TIMESTAMP", "TRIM", "TRUNC", "UPPER"
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].column_name #=> String
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].minimum #=> Integer
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].type #=> String, one of "COUNT_DISTINCT"
    #   resp.analysis_rule.policy.v1.aggregation.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.custom.allowed_analyses #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_analyses[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.allowed_analysis_providers #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_analysis_providers[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.custom.disallowed_output_columns #=> Array
    #   resp.analysis_rule.policy.v1.custom.disallowed_output_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.differential_privacy.columns #=> Array
    #   resp.analysis_rule.policy.v1.custom.differential_privacy.columns[0].name #=> String
    #   resp.analysis_rule.type #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.analysis_rule.create_time #=> Time
    #   resp.analysis_rule.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableAnalysisRule AWS API Documentation
    #
    # @overload create_configured_table_analysis_rule(params = {})
    # @param [Hash] params ({})
    def create_configured_table_analysis_rule(params = {}, options = {})
      req = build_request(:create_configured_table_analysis_rule, params)
      req.send_request(options)
    end

    # Creates a configured table association. A configured table association
    # links a configured table with a collaboration.
    #
    # @option params [required, String] :name
    #   The name of the configured table association. This name is used to
    #   query the underlying configured table.
    #
    # @option params [String] :description
    #   A description for the configured table association.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The configured table is associated to the collaboration that this
    #   membership belongs to. Currently accepts a membership ID.
    #
    # @option params [required, String] :configured_table_identifier
    #   A unique identifier for the configured table to be associated to.
    #   Currently accepts a configured table ID.
    #
    # @option params [required, String] :role_arn
    #   The service will assume this role to access catalog metadata and query
    #   the table.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #
    # @return [Types::CreateConfiguredTableAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfiguredTableAssociationOutput#configured_table_association #configured_table_association} => Types::ConfiguredTableAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configured_table_association({
    #     name: "TableAlias", # required
    #     description: "TableDescription",
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_table_association.arn #=> String
    #   resp.configured_table_association.id #=> String
    #   resp.configured_table_association.configured_table_id #=> String
    #   resp.configured_table_association.configured_table_arn #=> String
    #   resp.configured_table_association.membership_id #=> String
    #   resp.configured_table_association.membership_arn #=> String
    #   resp.configured_table_association.role_arn #=> String
    #   resp.configured_table_association.name #=> String
    #   resp.configured_table_association.description #=> String
    #   resp.configured_table_association.analysis_rule_types #=> Array
    #   resp.configured_table_association.analysis_rule_types[0] #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.configured_table_association.create_time #=> Time
    #   resp.configured_table_association.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableAssociation AWS API Documentation
    #
    # @overload create_configured_table_association(params = {})
    # @param [Hash] params ({})
    def create_configured_table_association(params = {}, options = {})
      req = build_request(:create_configured_table_association, params)
      req.send_request(options)
    end

    # Creates a new analysis rule for an associated configured table.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #
    # @option params [required, String] :configured_table_association_identifier
    #   The unique ID for the configured table association. Currently accepts
    #   the configured table association ID.
    #
    # @option params [required, String] :analysis_rule_type
    #   The type of analysis rule.
    #
    # @option params [required, Types::ConfiguredTableAssociationAnalysisRulePolicy] :analysis_rule_policy
    #   The analysis rule policy that was created for the configured table
    #   association.
    #
    # @return [Types::CreateConfiguredTableAssociationAnalysisRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfiguredTableAssociationAnalysisRuleOutput#analysis_rule #analysis_rule} => Types::ConfiguredTableAssociationAnalysisRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configured_table_association_analysis_rule({
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     analysis_rule_type: "AGGREGATION", # required, accepts AGGREGATION, LIST, CUSTOM
    #     analysis_rule_policy: { # required
    #       v1: {
    #         list: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"],
    #         },
    #         aggregation: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"],
    #         },
    #         custom: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"],
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_rule.membership_identifier #=> String
    #   resp.analysis_rule.configured_table_association_id #=> String
    #   resp.analysis_rule.configured_table_association_arn #=> String
    #   resp.analysis_rule.policy.v1.list.allowed_result_receivers #=> Array
    #   resp.analysis_rule.policy.v1.list.allowed_result_receivers[0] #=> String
    #   resp.analysis_rule.policy.v1.list.allowed_additional_analyses #=> Array
    #   resp.analysis_rule.policy.v1.list.allowed_additional_analyses[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.allowed_result_receivers #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.allowed_result_receivers[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.allowed_additional_analyses #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.allowed_additional_analyses[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.allowed_result_receivers #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_result_receivers[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.allowed_additional_analyses #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_additional_analyses[0] #=> String
    #   resp.analysis_rule.type #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.analysis_rule.create_time #=> Time
    #   resp.analysis_rule.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableAssociationAnalysisRule AWS API Documentation
    #
    # @overload create_configured_table_association_analysis_rule(params = {})
    # @param [Hash] params ({})
    def create_configured_table_association_analysis_rule(params = {}, options = {})
      req = build_request(:create_configured_table_association_analysis_rule, params)
      req.send_request(options)
    end

    # Creates an ID mapping table.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   table.
    #
    # @option params [required, String] :name
    #   A name for the ID mapping table.
    #
    # @option params [String] :description
    #   A description of the ID mapping table.
    #
    # @option params [required, Types::IdMappingTableInputReferenceConfig] :input_reference_config
    #   The input reference configuration needed to create the ID mapping
    #   table.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services KMS key.
    #   This value is used to encrypt the mapping table data that is stored by
    #   Clean Rooms.
    #
    # @return [Types::CreateIdMappingTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdMappingTableOutput#id_mapping_table #id_mapping_table} => Types::IdMappingTable
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_id_mapping_table({
    #     membership_identifier: "MembershipIdentifier", # required
    #     name: "ResourceAlias", # required
    #     description: "ResourceDescription",
    #     input_reference_config: { # required
    #       input_reference_arn: "IdMappingTableInputReferenceArn", # required
    #       manage_resource_policies: false, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.id_mapping_table.id #=> String
    #   resp.id_mapping_table.arn #=> String
    #   resp.id_mapping_table.input_reference_config.input_reference_arn #=> String
    #   resp.id_mapping_table.input_reference_config.manage_resource_policies #=> Boolean
    #   resp.id_mapping_table.membership_id #=> String
    #   resp.id_mapping_table.membership_arn #=> String
    #   resp.id_mapping_table.collaboration_id #=> String
    #   resp.id_mapping_table.collaboration_arn #=> String
    #   resp.id_mapping_table.description #=> String
    #   resp.id_mapping_table.name #=> String
    #   resp.id_mapping_table.create_time #=> Time
    #   resp.id_mapping_table.update_time #=> Time
    #   resp.id_mapping_table.input_reference_properties.id_mapping_table_input_source #=> Array
    #   resp.id_mapping_table.input_reference_properties.id_mapping_table_input_source[0].id_namespace_association_id #=> String
    #   resp.id_mapping_table.input_reference_properties.id_mapping_table_input_source[0].type #=> String, one of "SOURCE", "TARGET"
    #   resp.id_mapping_table.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateIdMappingTable AWS API Documentation
    #
    # @overload create_id_mapping_table(params = {})
    # @param [Hash] params ({})
    def create_id_mapping_table(params = {}, options = {})
      req = build_request(:create_id_mapping_table, params)
      req.send_request(options)
    end

    # Creates an ID namespace association.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership that contains the ID namespace
    #   association.
    #
    # @option params [required, Types::IdNamespaceAssociationInputReferenceConfig] :input_reference_config
    #   The input reference configuration needed to create the ID namespace
    #   association.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #
    # @option params [required, String] :name
    #   The name for the ID namespace association.
    #
    # @option params [String] :description
    #   The description of the ID namespace association.
    #
    # @option params [Types::IdMappingConfig] :id_mapping_config
    #   The configuration settings for the ID mapping table.
    #
    # @return [Types::CreateIdNamespaceAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdNamespaceAssociationOutput#id_namespace_association #id_namespace_association} => Types::IdNamespaceAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_id_namespace_association({
    #     membership_identifier: "MembershipIdentifier", # required
    #     input_reference_config: { # required
    #       input_reference_arn: "IdNamespaceAssociationInputReferenceArn", # required
    #       manage_resource_policies: false, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     name: "GenericResourceName", # required
    #     description: "ResourceDescription",
    #     id_mapping_config: {
    #       allow_use_as_dimension_column: false, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id_namespace_association.id #=> String
    #   resp.id_namespace_association.arn #=> String
    #   resp.id_namespace_association.membership_id #=> String
    #   resp.id_namespace_association.membership_arn #=> String
    #   resp.id_namespace_association.collaboration_id #=> String
    #   resp.id_namespace_association.collaboration_arn #=> String
    #   resp.id_namespace_association.name #=> String
    #   resp.id_namespace_association.description #=> String
    #   resp.id_namespace_association.create_time #=> Time
    #   resp.id_namespace_association.update_time #=> Time
    #   resp.id_namespace_association.input_reference_config.input_reference_arn #=> String
    #   resp.id_namespace_association.input_reference_config.manage_resource_policies #=> Boolean
    #   resp.id_namespace_association.input_reference_properties.id_namespace_type #=> String, one of "SOURCE", "TARGET"
    #   resp.id_namespace_association.input_reference_properties.id_mapping_workflows_supported #=> Array
    #   resp.id_namespace_association.id_mapping_config.allow_use_as_dimension_column #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateIdNamespaceAssociation AWS API Documentation
    #
    # @overload create_id_namespace_association(params = {})
    # @param [Hash] params ({})
    def create_id_namespace_association(params = {}, options = {})
      req = build_request(:create_id_namespace_association, params)
      req.send_request(options)
    end

    # Creates a membership for a specific collaboration identifier and joins
    # the collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   The unique ID for the associated collaboration.
    #
    # @option params [required, String] :query_log_status
    #   An indicator as to whether query logging has been enabled or disabled
    #   for the membership.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #
    # @option params [Types::MembershipProtectedQueryResultConfiguration] :default_result_configuration
    #   The default protected query result configuration as specified by the
    #   member who can receive results.
    #
    # @option params [Types::MembershipPaymentConfiguration] :payment_configuration
    #   The payment responsibilities accepted by the collaboration member.
    #
    #   Not required if the collaboration member has the member ability to run
    #   queries.
    #
    #   Required if the collaboration member doesn't have the member ability
    #   to run queries but is configured as a payer by the collaboration
    #   creator.
    #
    # @return [Types::CreateMembershipOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMembershipOutput#membership #membership} => Types::Membership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_membership({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     query_log_status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     default_result_configuration: {
    #       output_configuration: { # required
    #         s3: {
    #           result_format: "CSV", # required, accepts CSV, PARQUET
    #           bucket: "ProtectedQueryS3OutputConfigurationBucketString", # required
    #           key_prefix: "KeyPrefix",
    #           single_file_output: false,
    #         },
    #       },
    #       role_arn: "RoleArn",
    #     },
    #     payment_configuration: {
    #       query_compute: { # required
    #         is_responsible: false, # required
    #       },
    #       machine_learning: {
    #         model_training: {
    #           is_responsible: false, # required
    #         },
    #         model_inference: {
    #           is_responsible: false, # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.membership.id #=> String
    #   resp.membership.arn #=> String
    #   resp.membership.collaboration_arn #=> String
    #   resp.membership.collaboration_id #=> String
    #   resp.membership.collaboration_creator_account_id #=> String
    #   resp.membership.collaboration_creator_display_name #=> String
    #   resp.membership.collaboration_name #=> String
    #   resp.membership.create_time #=> Time
    #   resp.membership.update_time #=> Time
    #   resp.membership.status #=> String, one of "ACTIVE", "REMOVED", "COLLABORATION_DELETED"
    #   resp.membership.member_abilities #=> Array
    #   resp.membership.member_abilities[0] #=> String, one of "CAN_QUERY", "CAN_RECEIVE_RESULTS"
    #   resp.membership.ml_member_abilities.custom_ml_member_abilities #=> Array
    #   resp.membership.ml_member_abilities.custom_ml_member_abilities[0] #=> String, one of "CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"
    #   resp.membership.query_log_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.membership.default_result_configuration.output_configuration.s3.result_format #=> String, one of "CSV", "PARQUET"
    #   resp.membership.default_result_configuration.output_configuration.s3.bucket #=> String
    #   resp.membership.default_result_configuration.output_configuration.s3.key_prefix #=> String
    #   resp.membership.default_result_configuration.output_configuration.s3.single_file_output #=> Boolean
    #   resp.membership.default_result_configuration.role_arn #=> String
    #   resp.membership.payment_configuration.query_compute.is_responsible #=> Boolean
    #   resp.membership.payment_configuration.machine_learning.model_training.is_responsible #=> Boolean
    #   resp.membership.payment_configuration.machine_learning.model_inference.is_responsible #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateMembership AWS API Documentation
    #
    # @overload create_membership(params = {})
    # @param [Hash] params ({})
    def create_membership(params = {}, options = {})
      req = build_request(:create_membership, params)
      req.send_request(options)
    end

    # Creates a privacy budget template for a specified membership. Each
    # membership can have only one privacy budget template, but it can be
    # deleted and recreated. If you need to change the privacy budget
    # template for a membership, use the UpdatePrivacyBudgetTemplate
    # operation.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget template is created in the collaboration that this
    #   membership belongs to. Accepts a membership ID.
    #
    # @option params [required, String] :auto_refresh
    #   How often the privacy budget refreshes.
    #
    #   If you plan to regularly bring new data into the collaboration, you
    #   can use `CALENDAR_MONTH` to automatically get a new privacy budget for
    #   the collaboration every calendar month. Choosing this option allows
    #   arbitrary amounts of information to be revealed about rows of the data
    #   when repeatedly queries across refreshes. Avoid choosing this if the
    #   same rows will be repeatedly queried between privacy budget refreshes.
    #
    # @option params [required, String] :privacy_budget_type
    #   Specifies the type of the privacy budget template.
    #
    # @option params [required, Types::PrivacyBudgetTemplateParametersInput] :parameters
    #   Specifies your parameters for the privacy budget template.
    #
    # @option params [Hash<String,String>] :tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #
    # @return [Types::CreatePrivacyBudgetTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePrivacyBudgetTemplateOutput#privacy_budget_template #privacy_budget_template} => Types::PrivacyBudgetTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_privacy_budget_template({
    #     membership_identifier: "MembershipIdentifier", # required
    #     auto_refresh: "CALENDAR_MONTH", # required, accepts CALENDAR_MONTH, NONE
    #     privacy_budget_type: "DIFFERENTIAL_PRIVACY", # required, accepts DIFFERENTIAL_PRIVACY
    #     parameters: { # required
    #       differential_privacy: {
    #         epsilon: 1, # required
    #         users_noise_per_query: 1, # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.privacy_budget_template.id #=> String
    #   resp.privacy_budget_template.arn #=> String
    #   resp.privacy_budget_template.membership_id #=> String
    #   resp.privacy_budget_template.membership_arn #=> String
    #   resp.privacy_budget_template.collaboration_id #=> String
    #   resp.privacy_budget_template.collaboration_arn #=> String
    #   resp.privacy_budget_template.create_time #=> Time
    #   resp.privacy_budget_template.update_time #=> Time
    #   resp.privacy_budget_template.privacy_budget_type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.privacy_budget_template.auto_refresh #=> String, one of "CALENDAR_MONTH", "NONE"
    #   resp.privacy_budget_template.parameters.differential_privacy.epsilon #=> Integer
    #   resp.privacy_budget_template.parameters.differential_privacy.users_noise_per_query #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreatePrivacyBudgetTemplate AWS API Documentation
    #
    # @overload create_privacy_budget_template(params = {})
    # @param [Hash] params ({})
    def create_privacy_budget_template(params = {}, options = {})
      req = build_request(:create_privacy_budget_template, params)
      req.send_request(options)
    end

    # Deletes an analysis template.
    #
    # @option params [required, String] :membership_identifier
    #   The identifier for a membership resource.
    #
    # @option params [required, String] :analysis_template_identifier
    #   The identifier for the analysis template resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_analysis_template({
    #     membership_identifier: "MembershipIdentifier", # required
    #     analysis_template_identifier: "AnalysisTemplateIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteAnalysisTemplate AWS API Documentation
    #
    # @overload delete_analysis_template(params = {})
    # @param [Hash] params ({})
    def delete_analysis_template(params = {}, options = {})
      req = build_request(:delete_analysis_template, params)
      req.send_request(options)
    end

    # Deletes a collaboration. It can only be called by the collaboration
    # owner.
    #
    # @option params [required, String] :collaboration_identifier
    #   The identifier for the collaboration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_collaboration({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteCollaboration AWS API Documentation
    #
    # @overload delete_collaboration(params = {})
    # @param [Hash] params ({})
    def delete_collaboration(params = {}, options = {})
      req = build_request(:delete_collaboration, params)
      req.send_request(options)
    end

    # Provides the information necessary to delete a configured audience
    # model association.
    #
    # @option params [required, String] :configured_audience_model_association_identifier
    #   A unique identifier of the configured audience model association that
    #   you want to delete.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier of the membership that contains the audience model
    #   association that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configured_audience_model_association({
    #     configured_audience_model_association_identifier: "ConfiguredAudienceModelAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredAudienceModelAssociation AWS API Documentation
    #
    # @overload delete_configured_audience_model_association(params = {})
    # @param [Hash] params ({})
    def delete_configured_audience_model_association(params = {}, options = {})
      req = build_request(:delete_configured_audience_model_association, params)
      req.send_request(options)
    end

    # Deletes a configured table.
    #
    # @option params [required, String] :configured_table_identifier
    #   The unique ID for the configured table to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configured_table({
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTable AWS API Documentation
    #
    # @overload delete_configured_table(params = {})
    # @param [Hash] params ({})
    def delete_configured_table(params = {}, options = {})
      req = build_request(:delete_configured_table, params)
      req.send_request(options)
    end

    # Deletes a configured table analysis rule.
    #
    # @option params [required, String] :configured_table_identifier
    #   The unique identifier for the configured table that the analysis rule
    #   applies to. Currently accepts the configured table ID.
    #
    # @option params [required, String] :analysis_rule_type
    #   The analysis rule type to be deleted. Configured table analysis rules
    #   are uniquely identified by their configured table identifier and
    #   analysis rule type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configured_table_analysis_rule({
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     analysis_rule_type: "AGGREGATION", # required, accepts AGGREGATION, LIST, CUSTOM
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTableAnalysisRule AWS API Documentation
    #
    # @overload delete_configured_table_analysis_rule(params = {})
    # @param [Hash] params ({})
    def delete_configured_table_analysis_rule(params = {}, options = {})
      req = build_request(:delete_configured_table_analysis_rule, params)
      req.send_request(options)
    end

    # Deletes a configured table association.
    #
    # @option params [required, String] :configured_table_association_identifier
    #   The unique ID for the configured table association to be deleted.
    #   Currently accepts the configured table ID.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configured_table_association({
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTableAssociation AWS API Documentation
    #
    # @overload delete_configured_table_association(params = {})
    # @param [Hash] params ({})
    def delete_configured_table_association(params = {}, options = {})
      req = build_request(:delete_configured_table_association, params)
      req.send_request(options)
    end

    # Deletes an analysis rule for a configured table association.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #
    # @option params [required, String] :configured_table_association_identifier
    #   The identiﬁer for the conﬁgured table association that's related to
    #   the analysis rule that you want to delete.
    #
    # @option params [required, String] :analysis_rule_type
    #   The type of the analysis rule that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configured_table_association_analysis_rule({
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     analysis_rule_type: "AGGREGATION", # required, accepts AGGREGATION, LIST, CUSTOM
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTableAssociationAnalysisRule AWS API Documentation
    #
    # @overload delete_configured_table_association_analysis_rule(params = {})
    # @param [Hash] params ({})
    def delete_configured_table_association_analysis_rule(params = {}, options = {})
      req = build_request(:delete_configured_table_association_analysis_rule, params)
      req.send_request(options)
    end

    # Deletes an ID mapping table.
    #
    # @option params [required, String] :id_mapping_table_identifier
    #   The unique identifier of the ID mapping table that you want to delete.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   table that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_id_mapping_table({
    #     id_mapping_table_identifier: "UUID", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteIdMappingTable AWS API Documentation
    #
    # @overload delete_id_mapping_table(params = {})
    # @param [Hash] params ({})
    def delete_id_mapping_table(params = {}, options = {})
      req = build_request(:delete_id_mapping_table, params)
      req.send_request(options)
    end

    # Deletes an ID namespace association.
    #
    # @option params [required, String] :id_namespace_association_identifier
    #   The unique identifier of the ID namespace association that you want to
    #   delete.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership that contains the ID namespace
    #   association that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_id_namespace_association({
    #     id_namespace_association_identifier: "IdNamespaceAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteIdNamespaceAssociation AWS API Documentation
    #
    # @overload delete_id_namespace_association(params = {})
    # @param [Hash] params ({})
    def delete_id_namespace_association(params = {}, options = {})
      req = build_request(:delete_id_namespace_association, params)
      req.send_request(options)
    end

    # Removes the specified member from a collaboration. The removed member
    # is placed in the Removed status and can't interact with the
    # collaboration. The removed member's data is inaccessible to active
    # members of the collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   The unique identifier for the associated collaboration.
    #
    # @option params [required, String] :account_id
    #   The account ID of the member to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_member({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     account_id: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteMember AWS API Documentation
    #
    # @overload delete_member(params = {})
    # @param [Hash] params ({})
    def delete_member(params = {}, options = {})
      req = build_request(:delete_member, params)
      req.send_request(options)
    end

    # Deletes a specified membership. All resources under a membership must
    # be deleted.
    #
    # @option params [required, String] :membership_identifier
    #   The identifier for a membership resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_membership({
    #     membership_identifier: "MembershipIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteMembership AWS API Documentation
    #
    # @overload delete_membership(params = {})
    # @param [Hash] params ({})
    def delete_membership(params = {}, options = {})
      req = build_request(:delete_membership, params)
      req.send_request(options)
    end

    # Deletes a privacy budget template for a specified membership.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget template is deleted from the collaboration that
    #   this membership belongs to. Accepts a membership ID.
    #
    # @option params [required, String] :privacy_budget_template_identifier
    #   A unique identifier for your privacy budget template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_privacy_budget_template({
    #     membership_identifier: "MembershipIdentifier", # required
    #     privacy_budget_template_identifier: "PrivacyBudgetTemplateIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeletePrivacyBudgetTemplate AWS API Documentation
    #
    # @overload delete_privacy_budget_template(params = {})
    # @param [Hash] params ({})
    def delete_privacy_budget_template(params = {}, options = {})
      req = build_request(:delete_privacy_budget_template, params)
      req.send_request(options)
    end

    # Retrieves an analysis template.
    #
    # @option params [required, String] :membership_identifier
    #   The identifier for a membership resource.
    #
    # @option params [required, String] :analysis_template_identifier
    #   The identifier for the analysis template resource.
    #
    # @return [Types::GetAnalysisTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnalysisTemplateOutput#analysis_template #analysis_template} => Types::AnalysisTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_analysis_template({
    #     membership_identifier: "MembershipIdentifier", # required
    #     analysis_template_identifier: "AnalysisTemplateIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_template.id #=> String
    #   resp.analysis_template.arn #=> String
    #   resp.analysis_template.collaboration_id #=> String
    #   resp.analysis_template.collaboration_arn #=> String
    #   resp.analysis_template.membership_id #=> String
    #   resp.analysis_template.membership_arn #=> String
    #   resp.analysis_template.description #=> String
    #   resp.analysis_template.name #=> String
    #   resp.analysis_template.create_time #=> Time
    #   resp.analysis_template.update_time #=> Time
    #   resp.analysis_template.schema.referenced_tables #=> Array
    #   resp.analysis_template.schema.referenced_tables[0] #=> String
    #   resp.analysis_template.format #=> String, one of "SQL"
    #   resp.analysis_template.source.text #=> String
    #   resp.analysis_template.analysis_parameters #=> Array
    #   resp.analysis_template.analysis_parameters[0].name #=> String
    #   resp.analysis_template.analysis_parameters[0].type #=> String, one of "SMALLINT", "INTEGER", "BIGINT", "DECIMAL", "REAL", "DOUBLE_PRECISION", "BOOLEAN", "CHAR", "VARCHAR", "DATE", "TIMESTAMP", "TIMESTAMPTZ", "TIME", "TIMETZ", "VARBYTE", "BINARY", "BYTE", "CHARACTER", "DOUBLE", "FLOAT", "INT", "LONG", "NUMERIC", "SHORT", "STRING", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TINYINT"
    #   resp.analysis_template.analysis_parameters[0].default_value #=> String
    #   resp.analysis_template.validations #=> Array
    #   resp.analysis_template.validations[0].type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.analysis_template.validations[0].status #=> String, one of "VALID", "INVALID", "UNABLE_TO_VALIDATE"
    #   resp.analysis_template.validations[0].reasons #=> Array
    #   resp.analysis_template.validations[0].reasons[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetAnalysisTemplate AWS API Documentation
    #
    # @overload get_analysis_template(params = {})
    # @param [Hash] params ({})
    def get_analysis_template(params = {}, options = {})
      req = build_request(:get_analysis_template, params)
      req.send_request(options)
    end

    # Returns metadata about a collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   The identifier for the collaboration.
    #
    # @return [Types::GetCollaborationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCollaborationOutput#collaboration #collaboration} => Types::Collaboration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_collaboration({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.collaboration.id #=> String
    #   resp.collaboration.arn #=> String
    #   resp.collaboration.name #=> String
    #   resp.collaboration.description #=> String
    #   resp.collaboration.creator_account_id #=> String
    #   resp.collaboration.creator_display_name #=> String
    #   resp.collaboration.create_time #=> Time
    #   resp.collaboration.update_time #=> Time
    #   resp.collaboration.member_status #=> String, one of "INVITED", "ACTIVE", "LEFT", "REMOVED"
    #   resp.collaboration.membership_id #=> String
    #   resp.collaboration.membership_arn #=> String
    #   resp.collaboration.data_encryption_metadata.allow_cleartext #=> Boolean
    #   resp.collaboration.data_encryption_metadata.allow_duplicates #=> Boolean
    #   resp.collaboration.data_encryption_metadata.allow_joins_on_columns_with_different_names #=> Boolean
    #   resp.collaboration.data_encryption_metadata.preserve_nulls #=> Boolean
    #   resp.collaboration.query_log_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.collaboration.analytics_engine #=> String, one of "SPARK", "CLEAN_ROOMS_SQL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaboration AWS API Documentation
    #
    # @overload get_collaboration(params = {})
    # @param [Hash] params ({})
    def get_collaboration(params = {}, options = {})
      req = build_request(:get_collaboration, params)
      req.send_request(options)
    end

    # Retrieves an analysis template within a collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for the collaboration that the analysis templates
    #   belong to. Currently accepts collaboration ID.
    #
    # @option params [required, String] :analysis_template_arn
    #   The Amazon Resource Name (ARN) associated with the analysis template
    #   within a collaboration.
    #
    # @return [Types::GetCollaborationAnalysisTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCollaborationAnalysisTemplateOutput#collaboration_analysis_template #collaboration_analysis_template} => Types::CollaborationAnalysisTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_collaboration_analysis_template({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     analysis_template_arn: "AnalysisTemplateArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.collaboration_analysis_template.id #=> String
    #   resp.collaboration_analysis_template.arn #=> String
    #   resp.collaboration_analysis_template.collaboration_id #=> String
    #   resp.collaboration_analysis_template.collaboration_arn #=> String
    #   resp.collaboration_analysis_template.description #=> String
    #   resp.collaboration_analysis_template.creator_account_id #=> String
    #   resp.collaboration_analysis_template.name #=> String
    #   resp.collaboration_analysis_template.create_time #=> Time
    #   resp.collaboration_analysis_template.update_time #=> Time
    #   resp.collaboration_analysis_template.schema.referenced_tables #=> Array
    #   resp.collaboration_analysis_template.schema.referenced_tables[0] #=> String
    #   resp.collaboration_analysis_template.format #=> String, one of "SQL"
    #   resp.collaboration_analysis_template.source.text #=> String
    #   resp.collaboration_analysis_template.analysis_parameters #=> Array
    #   resp.collaboration_analysis_template.analysis_parameters[0].name #=> String
    #   resp.collaboration_analysis_template.analysis_parameters[0].type #=> String, one of "SMALLINT", "INTEGER", "BIGINT", "DECIMAL", "REAL", "DOUBLE_PRECISION", "BOOLEAN", "CHAR", "VARCHAR", "DATE", "TIMESTAMP", "TIMESTAMPTZ", "TIME", "TIMETZ", "VARBYTE", "BINARY", "BYTE", "CHARACTER", "DOUBLE", "FLOAT", "INT", "LONG", "NUMERIC", "SHORT", "STRING", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TINYINT"
    #   resp.collaboration_analysis_template.analysis_parameters[0].default_value #=> String
    #   resp.collaboration_analysis_template.validations #=> Array
    #   resp.collaboration_analysis_template.validations[0].type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.collaboration_analysis_template.validations[0].status #=> String, one of "VALID", "INVALID", "UNABLE_TO_VALIDATE"
    #   resp.collaboration_analysis_template.validations[0].reasons #=> Array
    #   resp.collaboration_analysis_template.validations[0].reasons[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationAnalysisTemplate AWS API Documentation
    #
    # @overload get_collaboration_analysis_template(params = {})
    # @param [Hash] params ({})
    def get_collaboration_analysis_template(params = {}, options = {})
      req = build_request(:get_collaboration_analysis_template, params)
      req.send_request(options)
    end

    # Retrieves a configured audience model association within a
    # collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for the collaboration that the configured audience
    #   model association belongs to. Accepts a collaboration ID.
    #
    # @option params [required, String] :configured_audience_model_association_identifier
    #   A unique identifier for the configured audience model association that
    #   you want to retrieve.
    #
    # @return [Types::GetCollaborationConfiguredAudienceModelAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCollaborationConfiguredAudienceModelAssociationOutput#collaboration_configured_audience_model_association #collaboration_configured_audience_model_association} => Types::CollaborationConfiguredAudienceModelAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_collaboration_configured_audience_model_association({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     configured_audience_model_association_identifier: "ConfiguredAudienceModelAssociationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.collaboration_configured_audience_model_association.id #=> String
    #   resp.collaboration_configured_audience_model_association.arn #=> String
    #   resp.collaboration_configured_audience_model_association.collaboration_id #=> String
    #   resp.collaboration_configured_audience_model_association.collaboration_arn #=> String
    #   resp.collaboration_configured_audience_model_association.configured_audience_model_arn #=> String
    #   resp.collaboration_configured_audience_model_association.name #=> String
    #   resp.collaboration_configured_audience_model_association.description #=> String
    #   resp.collaboration_configured_audience_model_association.creator_account_id #=> String
    #   resp.collaboration_configured_audience_model_association.create_time #=> Time
    #   resp.collaboration_configured_audience_model_association.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationConfiguredAudienceModelAssociation AWS API Documentation
    #
    # @overload get_collaboration_configured_audience_model_association(params = {})
    # @param [Hash] params ({})
    def get_collaboration_configured_audience_model_association(params = {}, options = {})
      req = build_request(:get_collaboration_configured_audience_model_association, params)
      req.send_request(options)
    end

    # Retrieves an ID namespace association from a specific collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   The unique identifier of the collaboration that contains the ID
    #   namespace association that you want to retrieve.
    #
    # @option params [required, String] :id_namespace_association_identifier
    #   The unique identifier of the ID namespace association that you want to
    #   retrieve.
    #
    # @return [Types::GetCollaborationIdNamespaceAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCollaborationIdNamespaceAssociationOutput#collaboration_id_namespace_association #collaboration_id_namespace_association} => Types::CollaborationIdNamespaceAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_collaboration_id_namespace_association({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     id_namespace_association_identifier: "IdNamespaceAssociationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.collaboration_id_namespace_association.id #=> String
    #   resp.collaboration_id_namespace_association.arn #=> String
    #   resp.collaboration_id_namespace_association.collaboration_id #=> String
    #   resp.collaboration_id_namespace_association.collaboration_arn #=> String
    #   resp.collaboration_id_namespace_association.name #=> String
    #   resp.collaboration_id_namespace_association.description #=> String
    #   resp.collaboration_id_namespace_association.creator_account_id #=> String
    #   resp.collaboration_id_namespace_association.create_time #=> Time
    #   resp.collaboration_id_namespace_association.update_time #=> Time
    #   resp.collaboration_id_namespace_association.input_reference_config.input_reference_arn #=> String
    #   resp.collaboration_id_namespace_association.input_reference_config.manage_resource_policies #=> Boolean
    #   resp.collaboration_id_namespace_association.input_reference_properties.id_namespace_type #=> String, one of "SOURCE", "TARGET"
    #   resp.collaboration_id_namespace_association.input_reference_properties.id_mapping_workflows_supported #=> Array
    #   resp.collaboration_id_namespace_association.id_mapping_config.allow_use_as_dimension_column #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationIdNamespaceAssociation AWS API Documentation
    #
    # @overload get_collaboration_id_namespace_association(params = {})
    # @param [Hash] params ({})
    def get_collaboration_id_namespace_association(params = {}, options = {})
      req = build_request(:get_collaboration_id_namespace_association, params)
      req.send_request(options)
    end

    # Returns details about a specified privacy budget template.
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for one of your collaborations.
    #
    # @option params [required, String] :privacy_budget_template_identifier
    #   A unique identifier for one of your privacy budget templates.
    #
    # @return [Types::GetCollaborationPrivacyBudgetTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCollaborationPrivacyBudgetTemplateOutput#collaboration_privacy_budget_template #collaboration_privacy_budget_template} => Types::CollaborationPrivacyBudgetTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_collaboration_privacy_budget_template({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     privacy_budget_template_identifier: "PrivacyBudgetTemplateIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.collaboration_privacy_budget_template.id #=> String
    #   resp.collaboration_privacy_budget_template.arn #=> String
    #   resp.collaboration_privacy_budget_template.collaboration_id #=> String
    #   resp.collaboration_privacy_budget_template.collaboration_arn #=> String
    #   resp.collaboration_privacy_budget_template.creator_account_id #=> String
    #   resp.collaboration_privacy_budget_template.create_time #=> Time
    #   resp.collaboration_privacy_budget_template.update_time #=> Time
    #   resp.collaboration_privacy_budget_template.privacy_budget_type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.collaboration_privacy_budget_template.auto_refresh #=> String, one of "CALENDAR_MONTH", "NONE"
    #   resp.collaboration_privacy_budget_template.parameters.differential_privacy.epsilon #=> Integer
    #   resp.collaboration_privacy_budget_template.parameters.differential_privacy.users_noise_per_query #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationPrivacyBudgetTemplate AWS API Documentation
    #
    # @overload get_collaboration_privacy_budget_template(params = {})
    # @param [Hash] params ({})
    def get_collaboration_privacy_budget_template(params = {}, options = {})
      req = build_request(:get_collaboration_privacy_budget_template, params)
      req.send_request(options)
    end

    # Returns information about a configured audience model association.
    #
    # @option params [required, String] :configured_audience_model_association_identifier
    #   A unique identifier for the configured audience model association that
    #   you want to retrieve.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for the membership that contains the configured
    #   audience model association that you want to retrieve.
    #
    # @return [Types::GetConfiguredAudienceModelAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfiguredAudienceModelAssociationOutput#configured_audience_model_association #configured_audience_model_association} => Types::ConfiguredAudienceModelAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configured_audience_model_association({
    #     configured_audience_model_association_identifier: "ConfiguredAudienceModelAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_association.id #=> String
    #   resp.configured_audience_model_association.arn #=> String
    #   resp.configured_audience_model_association.configured_audience_model_arn #=> String
    #   resp.configured_audience_model_association.membership_id #=> String
    #   resp.configured_audience_model_association.membership_arn #=> String
    #   resp.configured_audience_model_association.collaboration_id #=> String
    #   resp.configured_audience_model_association.collaboration_arn #=> String
    #   resp.configured_audience_model_association.name #=> String
    #   resp.configured_audience_model_association.manage_resource_policies #=> Boolean
    #   resp.configured_audience_model_association.description #=> String
    #   resp.configured_audience_model_association.create_time #=> Time
    #   resp.configured_audience_model_association.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredAudienceModelAssociation AWS API Documentation
    #
    # @overload get_configured_audience_model_association(params = {})
    # @param [Hash] params ({})
    def get_configured_audience_model_association(params = {}, options = {})
      req = build_request(:get_configured_audience_model_association, params)
      req.send_request(options)
    end

    # Retrieves a configured table.
    #
    # @option params [required, String] :configured_table_identifier
    #   The unique ID for the configured table to retrieve.
    #
    # @return [Types::GetConfiguredTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfiguredTableOutput#configured_table #configured_table} => Types::ConfiguredTable
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configured_table({
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_table.id #=> String
    #   resp.configured_table.arn #=> String
    #   resp.configured_table.name #=> String
    #   resp.configured_table.description #=> String
    #   resp.configured_table.table_reference.glue.table_name #=> String
    #   resp.configured_table.table_reference.glue.database_name #=> String
    #   resp.configured_table.table_reference.snowflake.secret_arn #=> String
    #   resp.configured_table.table_reference.snowflake.account_identifier #=> String
    #   resp.configured_table.table_reference.snowflake.database_name #=> String
    #   resp.configured_table.table_reference.snowflake.table_name #=> String
    #   resp.configured_table.table_reference.snowflake.schema_name #=> String
    #   resp.configured_table.table_reference.snowflake.table_schema.v1 #=> Array
    #   resp.configured_table.table_reference.snowflake.table_schema.v1[0].column_name #=> String
    #   resp.configured_table.table_reference.snowflake.table_schema.v1[0].column_type #=> String
    #   resp.configured_table.table_reference.athena.work_group #=> String
    #   resp.configured_table.table_reference.athena.output_location #=> String
    #   resp.configured_table.table_reference.athena.database_name #=> String
    #   resp.configured_table.table_reference.athena.table_name #=> String
    #   resp.configured_table.create_time #=> Time
    #   resp.configured_table.update_time #=> Time
    #   resp.configured_table.analysis_rule_types #=> Array
    #   resp.configured_table.analysis_rule_types[0] #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.configured_table.analysis_method #=> String, one of "DIRECT_QUERY"
    #   resp.configured_table.allowed_columns #=> Array
    #   resp.configured_table.allowed_columns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTable AWS API Documentation
    #
    # @overload get_configured_table(params = {})
    # @param [Hash] params ({})
    def get_configured_table(params = {}, options = {})
      req = build_request(:get_configured_table, params)
      req.send_request(options)
    end

    # Retrieves a configured table analysis rule.
    #
    # @option params [required, String] :configured_table_identifier
    #   The unique identifier for the configured table to retrieve. Currently
    #   accepts the configured table ID.
    #
    # @option params [required, String] :analysis_rule_type
    #   The analysis rule to be retrieved. Configured table analysis rules are
    #   uniquely identified by their configured table identifier and analysis
    #   rule type.
    #
    # @return [Types::GetConfiguredTableAnalysisRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfiguredTableAnalysisRuleOutput#analysis_rule #analysis_rule} => Types::ConfiguredTableAnalysisRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configured_table_analysis_rule({
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     analysis_rule_type: "AGGREGATION", # required, accepts AGGREGATION, LIST, CUSTOM
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_rule.configured_table_id #=> String
    #   resp.analysis_rule.configured_table_arn #=> String
    #   resp.analysis_rule.policy.v1.list.join_columns #=> Array
    #   resp.analysis_rule.policy.v1.list.join_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.list.allowed_join_operators #=> Array
    #   resp.analysis_rule.policy.v1.list.allowed_join_operators[0] #=> String, one of "OR", "AND"
    #   resp.analysis_rule.policy.v1.list.list_columns #=> Array
    #   resp.analysis_rule.policy.v1.list.list_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.list.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].column_names #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].column_names[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].function #=> String, one of "SUM", "SUM_DISTINCT", "COUNT", "COUNT_DISTINCT", "AVG"
    #   resp.analysis_rule.policy.v1.aggregation.join_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.join_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.join_required #=> String, one of "QUERY_RUNNER"
    #   resp.analysis_rule.policy.v1.aggregation.allowed_join_operators #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.allowed_join_operators[0] #=> String, one of "OR", "AND"
    #   resp.analysis_rule.policy.v1.aggregation.dimension_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.dimension_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.scalar_functions #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.scalar_functions[0] #=> String, one of "ABS", "CAST", "CEILING", "COALESCE", "CONVERT", "CURRENT_DATE", "DATEADD", "EXTRACT", "FLOOR", "GETDATE", "LN", "LOG", "LOWER", "ROUND", "RTRIM", "SQRT", "SUBSTRING", "TO_CHAR", "TO_DATE", "TO_NUMBER", "TO_TIMESTAMP", "TRIM", "TRUNC", "UPPER"
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].column_name #=> String
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].minimum #=> Integer
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].type #=> String, one of "COUNT_DISTINCT"
    #   resp.analysis_rule.policy.v1.aggregation.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.custom.allowed_analyses #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_analyses[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.allowed_analysis_providers #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_analysis_providers[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.custom.disallowed_output_columns #=> Array
    #   resp.analysis_rule.policy.v1.custom.disallowed_output_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.differential_privacy.columns #=> Array
    #   resp.analysis_rule.policy.v1.custom.differential_privacy.columns[0].name #=> String
    #   resp.analysis_rule.type #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.analysis_rule.create_time #=> Time
    #   resp.analysis_rule.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTableAnalysisRule AWS API Documentation
    #
    # @overload get_configured_table_analysis_rule(params = {})
    # @param [Hash] params ({})
    def get_configured_table_analysis_rule(params = {}, options = {})
      req = build_request(:get_configured_table_analysis_rule, params)
      req.send_request(options)
    end

    # Retrieves a configured table association.
    #
    # @option params [required, String] :configured_table_association_identifier
    #   The unique ID for the configured table association to retrieve.
    #   Currently accepts the configured table ID.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #
    # @return [Types::GetConfiguredTableAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfiguredTableAssociationOutput#configured_table_association #configured_table_association} => Types::ConfiguredTableAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configured_table_association({
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_table_association.arn #=> String
    #   resp.configured_table_association.id #=> String
    #   resp.configured_table_association.configured_table_id #=> String
    #   resp.configured_table_association.configured_table_arn #=> String
    #   resp.configured_table_association.membership_id #=> String
    #   resp.configured_table_association.membership_arn #=> String
    #   resp.configured_table_association.role_arn #=> String
    #   resp.configured_table_association.name #=> String
    #   resp.configured_table_association.description #=> String
    #   resp.configured_table_association.analysis_rule_types #=> Array
    #   resp.configured_table_association.analysis_rule_types[0] #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.configured_table_association.create_time #=> Time
    #   resp.configured_table_association.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTableAssociation AWS API Documentation
    #
    # @overload get_configured_table_association(params = {})
    # @param [Hash] params ({})
    def get_configured_table_association(params = {}, options = {})
      req = build_request(:get_configured_table_association, params)
      req.send_request(options)
    end

    # Retrieves the analysis rule for a configured table association.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #
    # @option params [required, String] :configured_table_association_identifier
    #   The identiﬁer for the conﬁgured table association that's related to
    #   the analysis rule.
    #
    # @option params [required, String] :analysis_rule_type
    #   The type of analysis rule that you want to retrieve.
    #
    # @return [Types::GetConfiguredTableAssociationAnalysisRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfiguredTableAssociationAnalysisRuleOutput#analysis_rule #analysis_rule} => Types::ConfiguredTableAssociationAnalysisRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configured_table_association_analysis_rule({
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     analysis_rule_type: "AGGREGATION", # required, accepts AGGREGATION, LIST, CUSTOM
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_rule.membership_identifier #=> String
    #   resp.analysis_rule.configured_table_association_id #=> String
    #   resp.analysis_rule.configured_table_association_arn #=> String
    #   resp.analysis_rule.policy.v1.list.allowed_result_receivers #=> Array
    #   resp.analysis_rule.policy.v1.list.allowed_result_receivers[0] #=> String
    #   resp.analysis_rule.policy.v1.list.allowed_additional_analyses #=> Array
    #   resp.analysis_rule.policy.v1.list.allowed_additional_analyses[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.allowed_result_receivers #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.allowed_result_receivers[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.allowed_additional_analyses #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.allowed_additional_analyses[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.allowed_result_receivers #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_result_receivers[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.allowed_additional_analyses #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_additional_analyses[0] #=> String
    #   resp.analysis_rule.type #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.analysis_rule.create_time #=> Time
    #   resp.analysis_rule.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTableAssociationAnalysisRule AWS API Documentation
    #
    # @overload get_configured_table_association_analysis_rule(params = {})
    # @param [Hash] params ({})
    def get_configured_table_association_analysis_rule(params = {}, options = {})
      req = build_request(:get_configured_table_association_analysis_rule, params)
      req.send_request(options)
    end

    # Retrieves an ID mapping table.
    #
    # @option params [required, String] :id_mapping_table_identifier
    #   The unique identifier of the ID mapping table identifier that you want
    #   to retrieve.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   table that you want to retrieve.
    #
    # @return [Types::GetIdMappingTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdMappingTableOutput#id_mapping_table #id_mapping_table} => Types::IdMappingTable
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_id_mapping_table({
    #     id_mapping_table_identifier: "UUID", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id_mapping_table.id #=> String
    #   resp.id_mapping_table.arn #=> String
    #   resp.id_mapping_table.input_reference_config.input_reference_arn #=> String
    #   resp.id_mapping_table.input_reference_config.manage_resource_policies #=> Boolean
    #   resp.id_mapping_table.membership_id #=> String
    #   resp.id_mapping_table.membership_arn #=> String
    #   resp.id_mapping_table.collaboration_id #=> String
    #   resp.id_mapping_table.collaboration_arn #=> String
    #   resp.id_mapping_table.description #=> String
    #   resp.id_mapping_table.name #=> String
    #   resp.id_mapping_table.create_time #=> Time
    #   resp.id_mapping_table.update_time #=> Time
    #   resp.id_mapping_table.input_reference_properties.id_mapping_table_input_source #=> Array
    #   resp.id_mapping_table.input_reference_properties.id_mapping_table_input_source[0].id_namespace_association_id #=> String
    #   resp.id_mapping_table.input_reference_properties.id_mapping_table_input_source[0].type #=> String, one of "SOURCE", "TARGET"
    #   resp.id_mapping_table.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetIdMappingTable AWS API Documentation
    #
    # @overload get_id_mapping_table(params = {})
    # @param [Hash] params ({})
    def get_id_mapping_table(params = {}, options = {})
      req = build_request(:get_id_mapping_table, params)
      req.send_request(options)
    end

    # Retrieves an ID namespace association.
    #
    # @option params [required, String] :id_namespace_association_identifier
    #   The unique identifier of the ID namespace association that you want to
    #   retrieve.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership that contains the ID namespace
    #   association that you want to retrieve.
    #
    # @return [Types::GetIdNamespaceAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdNamespaceAssociationOutput#id_namespace_association #id_namespace_association} => Types::IdNamespaceAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_id_namespace_association({
    #     id_namespace_association_identifier: "IdNamespaceAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id_namespace_association.id #=> String
    #   resp.id_namespace_association.arn #=> String
    #   resp.id_namespace_association.membership_id #=> String
    #   resp.id_namespace_association.membership_arn #=> String
    #   resp.id_namespace_association.collaboration_id #=> String
    #   resp.id_namespace_association.collaboration_arn #=> String
    #   resp.id_namespace_association.name #=> String
    #   resp.id_namespace_association.description #=> String
    #   resp.id_namespace_association.create_time #=> Time
    #   resp.id_namespace_association.update_time #=> Time
    #   resp.id_namespace_association.input_reference_config.input_reference_arn #=> String
    #   resp.id_namespace_association.input_reference_config.manage_resource_policies #=> Boolean
    #   resp.id_namespace_association.input_reference_properties.id_namespace_type #=> String, one of "SOURCE", "TARGET"
    #   resp.id_namespace_association.input_reference_properties.id_mapping_workflows_supported #=> Array
    #   resp.id_namespace_association.id_mapping_config.allow_use_as_dimension_column #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetIdNamespaceAssociation AWS API Documentation
    #
    # @overload get_id_namespace_association(params = {})
    # @param [Hash] params ({})
    def get_id_namespace_association(params = {}, options = {})
      req = build_request(:get_id_namespace_association, params)
      req.send_request(options)
    end

    # Retrieves a specified membership for an identifier.
    #
    # @option params [required, String] :membership_identifier
    #   The identifier for a membership resource.
    #
    # @return [Types::GetMembershipOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMembershipOutput#membership #membership} => Types::Membership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_membership({
    #     membership_identifier: "MembershipIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.membership.id #=> String
    #   resp.membership.arn #=> String
    #   resp.membership.collaboration_arn #=> String
    #   resp.membership.collaboration_id #=> String
    #   resp.membership.collaboration_creator_account_id #=> String
    #   resp.membership.collaboration_creator_display_name #=> String
    #   resp.membership.collaboration_name #=> String
    #   resp.membership.create_time #=> Time
    #   resp.membership.update_time #=> Time
    #   resp.membership.status #=> String, one of "ACTIVE", "REMOVED", "COLLABORATION_DELETED"
    #   resp.membership.member_abilities #=> Array
    #   resp.membership.member_abilities[0] #=> String, one of "CAN_QUERY", "CAN_RECEIVE_RESULTS"
    #   resp.membership.ml_member_abilities.custom_ml_member_abilities #=> Array
    #   resp.membership.ml_member_abilities.custom_ml_member_abilities[0] #=> String, one of "CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"
    #   resp.membership.query_log_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.membership.default_result_configuration.output_configuration.s3.result_format #=> String, one of "CSV", "PARQUET"
    #   resp.membership.default_result_configuration.output_configuration.s3.bucket #=> String
    #   resp.membership.default_result_configuration.output_configuration.s3.key_prefix #=> String
    #   resp.membership.default_result_configuration.output_configuration.s3.single_file_output #=> Boolean
    #   resp.membership.default_result_configuration.role_arn #=> String
    #   resp.membership.payment_configuration.query_compute.is_responsible #=> Boolean
    #   resp.membership.payment_configuration.machine_learning.model_training.is_responsible #=> Boolean
    #   resp.membership.payment_configuration.machine_learning.model_inference.is_responsible #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetMembership AWS API Documentation
    #
    # @overload get_membership(params = {})
    # @param [Hash] params ({})
    def get_membership(params = {}, options = {})
      req = build_request(:get_membership, params)
      req.send_request(options)
    end

    # Returns details for a specified privacy budget template.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget template is retrieved from the collaboration that
    #   this membership belongs to. Accepts a membership ID.
    #
    # @option params [required, String] :privacy_budget_template_identifier
    #   A unique identifier for your privacy budget template.
    #
    # @return [Types::GetPrivacyBudgetTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPrivacyBudgetTemplateOutput#privacy_budget_template #privacy_budget_template} => Types::PrivacyBudgetTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_privacy_budget_template({
    #     membership_identifier: "MembershipIdentifier", # required
    #     privacy_budget_template_identifier: "PrivacyBudgetTemplateIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.privacy_budget_template.id #=> String
    #   resp.privacy_budget_template.arn #=> String
    #   resp.privacy_budget_template.membership_id #=> String
    #   resp.privacy_budget_template.membership_arn #=> String
    #   resp.privacy_budget_template.collaboration_id #=> String
    #   resp.privacy_budget_template.collaboration_arn #=> String
    #   resp.privacy_budget_template.create_time #=> Time
    #   resp.privacy_budget_template.update_time #=> Time
    #   resp.privacy_budget_template.privacy_budget_type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.privacy_budget_template.auto_refresh #=> String, one of "CALENDAR_MONTH", "NONE"
    #   resp.privacy_budget_template.parameters.differential_privacy.epsilon #=> Integer
    #   resp.privacy_budget_template.parameters.differential_privacy.users_noise_per_query #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetPrivacyBudgetTemplate AWS API Documentation
    #
    # @overload get_privacy_budget_template(params = {})
    # @param [Hash] params ({})
    def get_privacy_budget_template(params = {}, options = {})
      req = build_request(:get_privacy_budget_template, params)
      req.send_request(options)
    end

    # Returns query processing metadata.
    #
    # @option params [required, String] :membership_identifier
    #   The identifier for a membership in a protected query instance.
    #
    # @option params [required, String] :protected_query_identifier
    #   The identifier for a protected query instance.
    #
    # @return [Types::GetProtectedQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProtectedQueryOutput#protected_query #protected_query} => Types::ProtectedQuery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_protected_query({
    #     membership_identifier: "MembershipIdentifier", # required
    #     protected_query_identifier: "ProtectedQueryIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.protected_query.id #=> String
    #   resp.protected_query.membership_id #=> String
    #   resp.protected_query.membership_arn #=> String
    #   resp.protected_query.create_time #=> Time
    #   resp.protected_query.sql_parameters.query_string #=> String
    #   resp.protected_query.sql_parameters.analysis_template_arn #=> String
    #   resp.protected_query.sql_parameters.parameters #=> Hash
    #   resp.protected_query.sql_parameters.parameters["ParameterName"] #=> String
    #   resp.protected_query.status #=> String, one of "SUBMITTED", "STARTED", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS", "TIMED_OUT"
    #   resp.protected_query.result_configuration.output_configuration.s3.result_format #=> String, one of "CSV", "PARQUET"
    #   resp.protected_query.result_configuration.output_configuration.s3.bucket #=> String
    #   resp.protected_query.result_configuration.output_configuration.s3.key_prefix #=> String
    #   resp.protected_query.result_configuration.output_configuration.s3.single_file_output #=> Boolean
    #   resp.protected_query.result_configuration.output_configuration.member.account_id #=> String
    #   resp.protected_query.statistics.total_duration_in_millis #=> Integer
    #   resp.protected_query.statistics.billed_resource_utilization.units #=> Float
    #   resp.protected_query.result.output.s3.location #=> String
    #   resp.protected_query.result.output.member_list #=> Array
    #   resp.protected_query.result.output.member_list[0].account_id #=> String
    #   resp.protected_query.error.message #=> String
    #   resp.protected_query.error.code #=> String
    #   resp.protected_query.differential_privacy.sensitivity_parameters #=> Array
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].aggregation_type #=> String, one of "AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].aggregation_expression #=> String
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].user_contribution_limit #=> Integer
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].min_column_value #=> Float
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].max_column_value #=> Float
    #   resp.protected_query.compute_configuration.worker.type #=> String, one of "CR.1X", "CR.4X"
    #   resp.protected_query.compute_configuration.worker.number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetProtectedQuery AWS API Documentation
    #
    # @overload get_protected_query(params = {})
    # @param [Hash] params ({})
    def get_protected_query(params = {}, options = {})
      req = build_request(:get_protected_query, params)
      req.send_request(options)
    end

    # Retrieves the schema for a relation within a collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for the collaboration that the schema belongs to.
    #   Currently accepts a collaboration ID.
    #
    # @option params [required, String] :name
    #   The name of the relation to retrieve the schema for.
    #
    # @return [Types::GetSchemaOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaOutput#schema #schema} => Types::Schema
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     name: "TableAlias", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema.columns #=> Array
    #   resp.schema.columns[0].name #=> String
    #   resp.schema.columns[0].type #=> String
    #   resp.schema.partition_keys #=> Array
    #   resp.schema.partition_keys[0].name #=> String
    #   resp.schema.partition_keys[0].type #=> String
    #   resp.schema.analysis_rule_types #=> Array
    #   resp.schema.analysis_rule_types[0] #=> String, one of "AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"
    #   resp.schema.analysis_method #=> String, one of "DIRECT_QUERY"
    #   resp.schema.creator_account_id #=> String
    #   resp.schema.name #=> String
    #   resp.schema.collaboration_id #=> String
    #   resp.schema.collaboration_arn #=> String
    #   resp.schema.description #=> String
    #   resp.schema.create_time #=> Time
    #   resp.schema.update_time #=> Time
    #   resp.schema.type #=> String, one of "TABLE", "ID_MAPPING_TABLE"
    #   resp.schema.schema_status_details #=> Array
    #   resp.schema.schema_status_details[0].status #=> String, one of "READY", "NOT_READY"
    #   resp.schema.schema_status_details[0].reasons #=> Array
    #   resp.schema.schema_status_details[0].reasons[0].code #=> String, one of "ANALYSIS_RULE_MISSING", "ANALYSIS_TEMPLATES_NOT_CONFIGURED", "ANALYSIS_PROVIDERS_NOT_CONFIGURED", "DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED", "ID_MAPPING_TABLE_NOT_POPULATED", "COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED", "ADDITIONAL_ANALYSES_NOT_CONFIGURED", "RESULT_RECEIVERS_NOT_CONFIGURED", "ADDITIONAL_ANALYSES_NOT_ALLOWED", "RESULT_RECEIVERS_NOT_ALLOWED", "ANALYSIS_RULE_TYPES_NOT_COMPATIBLE"
    #   resp.schema.schema_status_details[0].reasons[0].message #=> String
    #   resp.schema.schema_status_details[0].analysis_rule_type #=> String, one of "AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"
    #   resp.schema.schema_status_details[0].configurations #=> Array
    #   resp.schema.schema_status_details[0].configurations[0] #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.schema.schema_status_details[0].analysis_type #=> String, one of "DIRECT_ANALYSIS", "ADDITIONAL_ANALYSIS"
    #   resp.schema.schema_type_properties.id_mapping_table.id_mapping_table_input_source #=> Array
    #   resp.schema.schema_type_properties.id_mapping_table.id_mapping_table_input_source[0].id_namespace_association_id #=> String
    #   resp.schema.schema_type_properties.id_mapping_table.id_mapping_table_input_source[0].type #=> String, one of "SOURCE", "TARGET"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetSchema AWS API Documentation
    #
    # @overload get_schema(params = {})
    # @param [Hash] params ({})
    def get_schema(params = {}, options = {})
      req = build_request(:get_schema, params)
      req.send_request(options)
    end

    # Retrieves a schema analysis rule.
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for the collaboration that the schema belongs to.
    #   Currently accepts a collaboration ID.
    #
    # @option params [required, String] :name
    #   The name of the schema to retrieve the analysis rule for.
    #
    # @option params [required, String] :type
    #   The type of the schema analysis rule to retrieve. Schema analysis
    #   rules are uniquely identified by a combination of the collaboration,
    #   the schema name, and their type.
    #
    # @return [Types::GetSchemaAnalysisRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaAnalysisRuleOutput#analysis_rule #analysis_rule} => Types::AnalysisRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema_analysis_rule({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     name: "TableAlias", # required
    #     type: "AGGREGATION", # required, accepts AGGREGATION, LIST, CUSTOM, ID_MAPPING_TABLE
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_rule.collaboration_id #=> String
    #   resp.analysis_rule.type #=> String, one of "AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"
    #   resp.analysis_rule.name #=> String
    #   resp.analysis_rule.create_time #=> Time
    #   resp.analysis_rule.update_time #=> Time
    #   resp.analysis_rule.policy.v1.list.join_columns #=> Array
    #   resp.analysis_rule.policy.v1.list.join_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.list.allowed_join_operators #=> Array
    #   resp.analysis_rule.policy.v1.list.allowed_join_operators[0] #=> String, one of "OR", "AND"
    #   resp.analysis_rule.policy.v1.list.list_columns #=> Array
    #   resp.analysis_rule.policy.v1.list.list_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.list.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].column_names #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].column_names[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].function #=> String, one of "SUM", "SUM_DISTINCT", "COUNT", "COUNT_DISTINCT", "AVG"
    #   resp.analysis_rule.policy.v1.aggregation.join_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.join_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.join_required #=> String, one of "QUERY_RUNNER"
    #   resp.analysis_rule.policy.v1.aggregation.allowed_join_operators #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.allowed_join_operators[0] #=> String, one of "OR", "AND"
    #   resp.analysis_rule.policy.v1.aggregation.dimension_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.dimension_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.scalar_functions #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.scalar_functions[0] #=> String, one of "ABS", "CAST", "CEILING", "COALESCE", "CONVERT", "CURRENT_DATE", "DATEADD", "EXTRACT", "FLOOR", "GETDATE", "LN", "LOG", "LOWER", "ROUND", "RTRIM", "SQRT", "SUBSTRING", "TO_CHAR", "TO_DATE", "TO_NUMBER", "TO_TIMESTAMP", "TRIM", "TRUNC", "UPPER"
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].column_name #=> String
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].minimum #=> Integer
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].type #=> String, one of "COUNT_DISTINCT"
    #   resp.analysis_rule.policy.v1.aggregation.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.custom.allowed_analyses #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_analyses[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.allowed_analysis_providers #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_analysis_providers[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.custom.disallowed_output_columns #=> Array
    #   resp.analysis_rule.policy.v1.custom.disallowed_output_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.differential_privacy.columns #=> Array
    #   resp.analysis_rule.policy.v1.custom.differential_privacy.columns[0].name #=> String
    #   resp.analysis_rule.policy.v1.id_mapping_table.join_columns #=> Array
    #   resp.analysis_rule.policy.v1.id_mapping_table.join_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.id_mapping_table.query_constraints #=> Array
    #   resp.analysis_rule.policy.v1.id_mapping_table.query_constraints[0].require_overlap.columns #=> Array
    #   resp.analysis_rule.policy.v1.id_mapping_table.query_constraints[0].require_overlap.columns[0] #=> String
    #   resp.analysis_rule.policy.v1.id_mapping_table.dimension_columns #=> Array
    #   resp.analysis_rule.policy.v1.id_mapping_table.dimension_columns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetSchemaAnalysisRule AWS API Documentation
    #
    # @overload get_schema_analysis_rule(params = {})
    # @param [Hash] params ({})
    def get_schema_analysis_rule(params = {}, options = {})
      req = build_request(:get_schema_analysis_rule, params)
      req.send_request(options)
    end

    # Lists analysis templates that the caller owns.
    #
    # @option params [required, String] :membership_identifier
    #   The identifier for a membership resource.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListAnalysisTemplatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnalysisTemplatesOutput#next_token #next_token} => String
    #   * {Types::ListAnalysisTemplatesOutput#analysis_template_summaries #analysis_template_summaries} => Array&lt;Types::AnalysisTemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analysis_templates({
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.analysis_template_summaries #=> Array
    #   resp.analysis_template_summaries[0].arn #=> String
    #   resp.analysis_template_summaries[0].create_time #=> Time
    #   resp.analysis_template_summaries[0].id #=> String
    #   resp.analysis_template_summaries[0].name #=> String
    #   resp.analysis_template_summaries[0].update_time #=> Time
    #   resp.analysis_template_summaries[0].membership_arn #=> String
    #   resp.analysis_template_summaries[0].membership_id #=> String
    #   resp.analysis_template_summaries[0].collaboration_arn #=> String
    #   resp.analysis_template_summaries[0].collaboration_id #=> String
    #   resp.analysis_template_summaries[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListAnalysisTemplates AWS API Documentation
    #
    # @overload list_analysis_templates(params = {})
    # @param [Hash] params ({})
    def list_analysis_templates(params = {}, options = {})
      req = build_request(:list_analysis_templates, params)
      req.send_request(options)
    end

    # Lists analysis templates within a collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for the collaboration that the analysis templates
    #   belong to. Currently accepts collaboration ID.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListCollaborationAnalysisTemplatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollaborationAnalysisTemplatesOutput#next_token #next_token} => String
    #   * {Types::ListCollaborationAnalysisTemplatesOutput#collaboration_analysis_template_summaries #collaboration_analysis_template_summaries} => Array&lt;Types::CollaborationAnalysisTemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collaboration_analysis_templates({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.collaboration_analysis_template_summaries #=> Array
    #   resp.collaboration_analysis_template_summaries[0].arn #=> String
    #   resp.collaboration_analysis_template_summaries[0].create_time #=> Time
    #   resp.collaboration_analysis_template_summaries[0].id #=> String
    #   resp.collaboration_analysis_template_summaries[0].name #=> String
    #   resp.collaboration_analysis_template_summaries[0].update_time #=> Time
    #   resp.collaboration_analysis_template_summaries[0].collaboration_arn #=> String
    #   resp.collaboration_analysis_template_summaries[0].collaboration_id #=> String
    #   resp.collaboration_analysis_template_summaries[0].creator_account_id #=> String
    #   resp.collaboration_analysis_template_summaries[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationAnalysisTemplates AWS API Documentation
    #
    # @overload list_collaboration_analysis_templates(params = {})
    # @param [Hash] params ({})
    def list_collaboration_analysis_templates(params = {}, options = {})
      req = build_request(:list_collaboration_analysis_templates, params)
      req.send_request(options)
    end

    # Lists configured audience model associations within a collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for the collaboration that the configured audience
    #   model association belongs to. Accepts a collaboration ID.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListCollaborationConfiguredAudienceModelAssociationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollaborationConfiguredAudienceModelAssociationsOutput#collaboration_configured_audience_model_association_summaries #collaboration_configured_audience_model_association_summaries} => Array&lt;Types::CollaborationConfiguredAudienceModelAssociationSummary&gt;
    #   * {Types::ListCollaborationConfiguredAudienceModelAssociationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collaboration_configured_audience_model_associations({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.collaboration_configured_audience_model_association_summaries #=> Array
    #   resp.collaboration_configured_audience_model_association_summaries[0].arn #=> String
    #   resp.collaboration_configured_audience_model_association_summaries[0].create_time #=> Time
    #   resp.collaboration_configured_audience_model_association_summaries[0].id #=> String
    #   resp.collaboration_configured_audience_model_association_summaries[0].name #=> String
    #   resp.collaboration_configured_audience_model_association_summaries[0].update_time #=> Time
    #   resp.collaboration_configured_audience_model_association_summaries[0].collaboration_arn #=> String
    #   resp.collaboration_configured_audience_model_association_summaries[0].collaboration_id #=> String
    #   resp.collaboration_configured_audience_model_association_summaries[0].creator_account_id #=> String
    #   resp.collaboration_configured_audience_model_association_summaries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationConfiguredAudienceModelAssociations AWS API Documentation
    #
    # @overload list_collaboration_configured_audience_model_associations(params = {})
    # @param [Hash] params ({})
    def list_collaboration_configured_audience_model_associations(params = {}, options = {})
      req = build_request(:list_collaboration_configured_audience_model_associations, params)
      req.send_request(options)
    end

    # Returns a list of the ID namespace associations in a collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   The unique identifier of the collaboration that contains the ID
    #   namespace associations that you want to retrieve.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call. Service
    #   chooses a default if it has not been set. Service may return a
    #   nextToken even if the maximum results has not been met.&gt;
    #
    # @return [Types::ListCollaborationIdNamespaceAssociationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollaborationIdNamespaceAssociationsOutput#next_token #next_token} => String
    #   * {Types::ListCollaborationIdNamespaceAssociationsOutput#collaboration_id_namespace_association_summaries #collaboration_id_namespace_association_summaries} => Array&lt;Types::CollaborationIdNamespaceAssociationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collaboration_id_namespace_associations({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.collaboration_id_namespace_association_summaries #=> Array
    #   resp.collaboration_id_namespace_association_summaries[0].arn #=> String
    #   resp.collaboration_id_namespace_association_summaries[0].create_time #=> Time
    #   resp.collaboration_id_namespace_association_summaries[0].id #=> String
    #   resp.collaboration_id_namespace_association_summaries[0].update_time #=> Time
    #   resp.collaboration_id_namespace_association_summaries[0].collaboration_arn #=> String
    #   resp.collaboration_id_namespace_association_summaries[0].collaboration_id #=> String
    #   resp.collaboration_id_namespace_association_summaries[0].creator_account_id #=> String
    #   resp.collaboration_id_namespace_association_summaries[0].input_reference_config.input_reference_arn #=> String
    #   resp.collaboration_id_namespace_association_summaries[0].input_reference_config.manage_resource_policies #=> Boolean
    #   resp.collaboration_id_namespace_association_summaries[0].name #=> String
    #   resp.collaboration_id_namespace_association_summaries[0].description #=> String
    #   resp.collaboration_id_namespace_association_summaries[0].input_reference_properties.id_namespace_type #=> String, one of "SOURCE", "TARGET"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationIdNamespaceAssociations AWS API Documentation
    #
    # @overload list_collaboration_id_namespace_associations(params = {})
    # @param [Hash] params ({})
    def list_collaboration_id_namespace_associations(params = {}, options = {})
      req = build_request(:list_collaboration_id_namespace_associations, params)
      req.send_request(options)
    end

    # Returns an array that summarizes each privacy budget template in a
    # specified collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for one of your collaborations.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListCollaborationPrivacyBudgetTemplatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollaborationPrivacyBudgetTemplatesOutput#next_token #next_token} => String
    #   * {Types::ListCollaborationPrivacyBudgetTemplatesOutput#collaboration_privacy_budget_template_summaries #collaboration_privacy_budget_template_summaries} => Array&lt;Types::CollaborationPrivacyBudgetTemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collaboration_privacy_budget_templates({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.collaboration_privacy_budget_template_summaries #=> Array
    #   resp.collaboration_privacy_budget_template_summaries[0].id #=> String
    #   resp.collaboration_privacy_budget_template_summaries[0].arn #=> String
    #   resp.collaboration_privacy_budget_template_summaries[0].collaboration_id #=> String
    #   resp.collaboration_privacy_budget_template_summaries[0].collaboration_arn #=> String
    #   resp.collaboration_privacy_budget_template_summaries[0].creator_account_id #=> String
    #   resp.collaboration_privacy_budget_template_summaries[0].privacy_budget_type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.collaboration_privacy_budget_template_summaries[0].create_time #=> Time
    #   resp.collaboration_privacy_budget_template_summaries[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationPrivacyBudgetTemplates AWS API Documentation
    #
    # @overload list_collaboration_privacy_budget_templates(params = {})
    # @param [Hash] params ({})
    def list_collaboration_privacy_budget_templates(params = {}, options = {})
      req = build_request(:list_collaboration_privacy_budget_templates, params)
      req.send_request(options)
    end

    # Returns an array that summarizes each privacy budget in a specified
    # collaboration. The summary includes the collaboration ARN, creation
    # time, creating account, and privacy budget details.
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for one of your collaborations.
    #
    # @option params [required, String] :privacy_budget_type
    #   Specifies the type of the privacy budget.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @return [Types::ListCollaborationPrivacyBudgetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollaborationPrivacyBudgetsOutput#collaboration_privacy_budget_summaries #collaboration_privacy_budget_summaries} => Array&lt;Types::CollaborationPrivacyBudgetSummary&gt;
    #   * {Types::ListCollaborationPrivacyBudgetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collaboration_privacy_budgets({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     privacy_budget_type: "DIFFERENTIAL_PRIVACY", # required, accepts DIFFERENTIAL_PRIVACY
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.collaboration_privacy_budget_summaries #=> Array
    #   resp.collaboration_privacy_budget_summaries[0].id #=> String
    #   resp.collaboration_privacy_budget_summaries[0].privacy_budget_template_id #=> String
    #   resp.collaboration_privacy_budget_summaries[0].privacy_budget_template_arn #=> String
    #   resp.collaboration_privacy_budget_summaries[0].collaboration_id #=> String
    #   resp.collaboration_privacy_budget_summaries[0].collaboration_arn #=> String
    #   resp.collaboration_privacy_budget_summaries[0].creator_account_id #=> String
    #   resp.collaboration_privacy_budget_summaries[0].type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.collaboration_privacy_budget_summaries[0].create_time #=> Time
    #   resp.collaboration_privacy_budget_summaries[0].update_time #=> Time
    #   resp.collaboration_privacy_budget_summaries[0].budget.differential_privacy.aggregations #=> Array
    #   resp.collaboration_privacy_budget_summaries[0].budget.differential_privacy.aggregations[0].type #=> String, one of "AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"
    #   resp.collaboration_privacy_budget_summaries[0].budget.differential_privacy.aggregations[0].max_count #=> Integer
    #   resp.collaboration_privacy_budget_summaries[0].budget.differential_privacy.aggregations[0].remaining_count #=> Integer
    #   resp.collaboration_privacy_budget_summaries[0].budget.differential_privacy.epsilon #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationPrivacyBudgets AWS API Documentation
    #
    # @overload list_collaboration_privacy_budgets(params = {})
    # @param [Hash] params ({})
    def list_collaboration_privacy_budgets(params = {}, options = {})
      req = build_request(:list_collaboration_privacy_budgets, params)
      req.send_request(options)
    end

    # Lists collaborations the caller owns, is active in, or has been
    # invited to.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @option params [String] :member_status
    #   The caller's status in a collaboration.
    #
    # @return [Types::ListCollaborationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollaborationsOutput#next_token #next_token} => String
    #   * {Types::ListCollaborationsOutput#collaboration_list #collaboration_list} => Array&lt;Types::CollaborationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collaborations({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     member_status: "INVITED", # accepts INVITED, ACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.collaboration_list #=> Array
    #   resp.collaboration_list[0].id #=> String
    #   resp.collaboration_list[0].arn #=> String
    #   resp.collaboration_list[0].name #=> String
    #   resp.collaboration_list[0].creator_account_id #=> String
    #   resp.collaboration_list[0].creator_display_name #=> String
    #   resp.collaboration_list[0].create_time #=> Time
    #   resp.collaboration_list[0].update_time #=> Time
    #   resp.collaboration_list[0].member_status #=> String, one of "INVITED", "ACTIVE", "LEFT", "REMOVED"
    #   resp.collaboration_list[0].membership_id #=> String
    #   resp.collaboration_list[0].membership_arn #=> String
    #   resp.collaboration_list[0].analytics_engine #=> String, one of "SPARK", "CLEAN_ROOMS_SQL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborations AWS API Documentation
    #
    # @overload list_collaborations(params = {})
    # @param [Hash] params ({})
    def list_collaborations(params = {}, options = {})
      req = build_request(:list_collaborations, params)
      req.send_request(options)
    end

    # Lists information about requested configured audience model
    # associations.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for a membership that contains the configured
    #   audience model associations that you want to retrieve.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListConfiguredAudienceModelAssociationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfiguredAudienceModelAssociationsOutput#configured_audience_model_association_summaries #configured_audience_model_association_summaries} => Array&lt;Types::ConfiguredAudienceModelAssociationSummary&gt;
    #   * {Types::ListConfiguredAudienceModelAssociationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configured_audience_model_associations({
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_association_summaries #=> Array
    #   resp.configured_audience_model_association_summaries[0].membership_id #=> String
    #   resp.configured_audience_model_association_summaries[0].membership_arn #=> String
    #   resp.configured_audience_model_association_summaries[0].collaboration_arn #=> String
    #   resp.configured_audience_model_association_summaries[0].collaboration_id #=> String
    #   resp.configured_audience_model_association_summaries[0].create_time #=> Time
    #   resp.configured_audience_model_association_summaries[0].update_time #=> Time
    #   resp.configured_audience_model_association_summaries[0].id #=> String
    #   resp.configured_audience_model_association_summaries[0].arn #=> String
    #   resp.configured_audience_model_association_summaries[0].name #=> String
    #   resp.configured_audience_model_association_summaries[0].configured_audience_model_arn #=> String
    #   resp.configured_audience_model_association_summaries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListConfiguredAudienceModelAssociations AWS API Documentation
    #
    # @overload list_configured_audience_model_associations(params = {})
    # @param [Hash] params ({})
    def list_configured_audience_model_associations(params = {}, options = {})
      req = build_request(:list_configured_audience_model_associations, params)
      req.send_request(options)
    end

    # Lists configured table associations for a membership.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for the membership to list configured table
    #   associations for. Currently accepts the membership ID.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListConfiguredTableAssociationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfiguredTableAssociationsOutput#configured_table_association_summaries #configured_table_association_summaries} => Array&lt;Types::ConfiguredTableAssociationSummary&gt;
    #   * {Types::ListConfiguredTableAssociationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configured_table_associations({
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_table_association_summaries #=> Array
    #   resp.configured_table_association_summaries[0].configured_table_id #=> String
    #   resp.configured_table_association_summaries[0].membership_id #=> String
    #   resp.configured_table_association_summaries[0].membership_arn #=> String
    #   resp.configured_table_association_summaries[0].name #=> String
    #   resp.configured_table_association_summaries[0].create_time #=> Time
    #   resp.configured_table_association_summaries[0].update_time #=> Time
    #   resp.configured_table_association_summaries[0].id #=> String
    #   resp.configured_table_association_summaries[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListConfiguredTableAssociations AWS API Documentation
    #
    # @overload list_configured_table_associations(params = {})
    # @param [Hash] params ({})
    def list_configured_table_associations(params = {}, options = {})
      req = build_request(:list_configured_table_associations, params)
      req.send_request(options)
    end

    # Lists configured tables.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListConfiguredTablesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfiguredTablesOutput#configured_table_summaries #configured_table_summaries} => Array&lt;Types::ConfiguredTableSummary&gt;
    #   * {Types::ListConfiguredTablesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configured_tables({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_table_summaries #=> Array
    #   resp.configured_table_summaries[0].id #=> String
    #   resp.configured_table_summaries[0].arn #=> String
    #   resp.configured_table_summaries[0].name #=> String
    #   resp.configured_table_summaries[0].create_time #=> Time
    #   resp.configured_table_summaries[0].update_time #=> Time
    #   resp.configured_table_summaries[0].analysis_rule_types #=> Array
    #   resp.configured_table_summaries[0].analysis_rule_types[0] #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.configured_table_summaries[0].analysis_method #=> String, one of "DIRECT_QUERY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListConfiguredTables AWS API Documentation
    #
    # @overload list_configured_tables(params = {})
    # @param [Hash] params ({})
    def list_configured_tables(params = {}, options = {})
      req = build_request(:list_configured_tables, params)
      req.send_request(options)
    end

    # Returns a list of ID mapping tables.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   tables that you want to view.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call. Service
    #   chooses a default if it has not been set. Service may return a
    #   nextToken even if the maximum results has not been met.
    #
    # @return [Types::ListIdMappingTablesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdMappingTablesOutput#id_mapping_table_summaries #id_mapping_table_summaries} => Array&lt;Types::IdMappingTableSummary&gt;
    #   * {Types::ListIdMappingTablesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_id_mapping_tables({
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.id_mapping_table_summaries #=> Array
    #   resp.id_mapping_table_summaries[0].collaboration_arn #=> String
    #   resp.id_mapping_table_summaries[0].collaboration_id #=> String
    #   resp.id_mapping_table_summaries[0].membership_id #=> String
    #   resp.id_mapping_table_summaries[0].membership_arn #=> String
    #   resp.id_mapping_table_summaries[0].create_time #=> Time
    #   resp.id_mapping_table_summaries[0].update_time #=> Time
    #   resp.id_mapping_table_summaries[0].id #=> String
    #   resp.id_mapping_table_summaries[0].arn #=> String
    #   resp.id_mapping_table_summaries[0].description #=> String
    #   resp.id_mapping_table_summaries[0].input_reference_config.input_reference_arn #=> String
    #   resp.id_mapping_table_summaries[0].input_reference_config.manage_resource_policies #=> Boolean
    #   resp.id_mapping_table_summaries[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListIdMappingTables AWS API Documentation
    #
    # @overload list_id_mapping_tables(params = {})
    # @param [Hash] params ({})
    def list_id_mapping_tables(params = {}, options = {})
      req = build_request(:list_id_mapping_tables, params)
      req.send_request(options)
    end

    # Returns a list of ID namespace associations.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership that contains the ID namespace
    #   association that you want to view.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call. Service
    #   chooses a default if it has not been set. Service may return a
    #   nextToken even if the maximum results has not been met.
    #
    # @return [Types::ListIdNamespaceAssociationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdNamespaceAssociationsOutput#next_token #next_token} => String
    #   * {Types::ListIdNamespaceAssociationsOutput#id_namespace_association_summaries #id_namespace_association_summaries} => Array&lt;Types::IdNamespaceAssociationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_id_namespace_associations({
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.id_namespace_association_summaries #=> Array
    #   resp.id_namespace_association_summaries[0].membership_id #=> String
    #   resp.id_namespace_association_summaries[0].membership_arn #=> String
    #   resp.id_namespace_association_summaries[0].collaboration_arn #=> String
    #   resp.id_namespace_association_summaries[0].collaboration_id #=> String
    #   resp.id_namespace_association_summaries[0].create_time #=> Time
    #   resp.id_namespace_association_summaries[0].update_time #=> Time
    #   resp.id_namespace_association_summaries[0].id #=> String
    #   resp.id_namespace_association_summaries[0].arn #=> String
    #   resp.id_namespace_association_summaries[0].input_reference_config.input_reference_arn #=> String
    #   resp.id_namespace_association_summaries[0].input_reference_config.manage_resource_policies #=> Boolean
    #   resp.id_namespace_association_summaries[0].name #=> String
    #   resp.id_namespace_association_summaries[0].description #=> String
    #   resp.id_namespace_association_summaries[0].input_reference_properties.id_namespace_type #=> String, one of "SOURCE", "TARGET"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListIdNamespaceAssociations AWS API Documentation
    #
    # @overload list_id_namespace_associations(params = {})
    # @param [Hash] params ({})
    def list_id_namespace_associations(params = {}, options = {})
      req = build_request(:list_id_namespace_associations, params)
      req.send_request(options)
    end

    # Lists all members within a collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   The identifier of the collaboration in which the members are listed.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListMembersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembersOutput#next_token #next_token} => String
    #   * {Types::ListMembersOutput#member_summaries #member_summaries} => Array&lt;Types::MemberSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.member_summaries #=> Array
    #   resp.member_summaries[0].account_id #=> String
    #   resp.member_summaries[0].status #=> String, one of "INVITED", "ACTIVE", "LEFT", "REMOVED"
    #   resp.member_summaries[0].display_name #=> String
    #   resp.member_summaries[0].abilities #=> Array
    #   resp.member_summaries[0].abilities[0] #=> String, one of "CAN_QUERY", "CAN_RECEIVE_RESULTS"
    #   resp.member_summaries[0].ml_abilities.custom_ml_member_abilities #=> Array
    #   resp.member_summaries[0].ml_abilities.custom_ml_member_abilities[0] #=> String, one of "CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"
    #   resp.member_summaries[0].create_time #=> Time
    #   resp.member_summaries[0].update_time #=> Time
    #   resp.member_summaries[0].membership_id #=> String
    #   resp.member_summaries[0].membership_arn #=> String
    #   resp.member_summaries[0].payment_configuration.query_compute.is_responsible #=> Boolean
    #   resp.member_summaries[0].payment_configuration.machine_learning.model_training.is_responsible #=> Boolean
    #   resp.member_summaries[0].payment_configuration.machine_learning.model_inference.is_responsible #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListMembers AWS API Documentation
    #
    # @overload list_members(params = {})
    # @param [Hash] params ({})
    def list_members(params = {}, options = {})
      req = build_request(:list_members, params)
      req.send_request(options)
    end

    # Lists all memberships resources within the caller's account.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @option params [String] :status
    #   A filter which will return only memberships in the specified status.
    #
    # @return [Types::ListMembershipsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembershipsOutput#next_token #next_token} => String
    #   * {Types::ListMembershipsOutput#membership_summaries #membership_summaries} => Array&lt;Types::MembershipSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_memberships({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     status: "ACTIVE", # accepts ACTIVE, REMOVED, COLLABORATION_DELETED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.membership_summaries #=> Array
    #   resp.membership_summaries[0].id #=> String
    #   resp.membership_summaries[0].arn #=> String
    #   resp.membership_summaries[0].collaboration_arn #=> String
    #   resp.membership_summaries[0].collaboration_id #=> String
    #   resp.membership_summaries[0].collaboration_creator_account_id #=> String
    #   resp.membership_summaries[0].collaboration_creator_display_name #=> String
    #   resp.membership_summaries[0].collaboration_name #=> String
    #   resp.membership_summaries[0].create_time #=> Time
    #   resp.membership_summaries[0].update_time #=> Time
    #   resp.membership_summaries[0].status #=> String, one of "ACTIVE", "REMOVED", "COLLABORATION_DELETED"
    #   resp.membership_summaries[0].member_abilities #=> Array
    #   resp.membership_summaries[0].member_abilities[0] #=> String, one of "CAN_QUERY", "CAN_RECEIVE_RESULTS"
    #   resp.membership_summaries[0].ml_member_abilities.custom_ml_member_abilities #=> Array
    #   resp.membership_summaries[0].ml_member_abilities.custom_ml_member_abilities[0] #=> String, one of "CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"
    #   resp.membership_summaries[0].payment_configuration.query_compute.is_responsible #=> Boolean
    #   resp.membership_summaries[0].payment_configuration.machine_learning.model_training.is_responsible #=> Boolean
    #   resp.membership_summaries[0].payment_configuration.machine_learning.model_inference.is_responsible #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListMemberships AWS API Documentation
    #
    # @overload list_memberships(params = {})
    # @param [Hash] params ({})
    def list_memberships(params = {}, options = {})
      req = build_request(:list_memberships, params)
      req.send_request(options)
    end

    # Returns detailed information about the privacy budget templates in a
    # specified membership.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget templates are retrieved from the collaboration that
    #   this membership belongs to. Accepts a membership ID.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListPrivacyBudgetTemplatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrivacyBudgetTemplatesOutput#next_token #next_token} => String
    #   * {Types::ListPrivacyBudgetTemplatesOutput#privacy_budget_template_summaries #privacy_budget_template_summaries} => Array&lt;Types::PrivacyBudgetTemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_privacy_budget_templates({
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.privacy_budget_template_summaries #=> Array
    #   resp.privacy_budget_template_summaries[0].id #=> String
    #   resp.privacy_budget_template_summaries[0].arn #=> String
    #   resp.privacy_budget_template_summaries[0].membership_id #=> String
    #   resp.privacy_budget_template_summaries[0].membership_arn #=> String
    #   resp.privacy_budget_template_summaries[0].collaboration_id #=> String
    #   resp.privacy_budget_template_summaries[0].collaboration_arn #=> String
    #   resp.privacy_budget_template_summaries[0].privacy_budget_type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.privacy_budget_template_summaries[0].create_time #=> Time
    #   resp.privacy_budget_template_summaries[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListPrivacyBudgetTemplates AWS API Documentation
    #
    # @overload list_privacy_budget_templates(params = {})
    # @param [Hash] params ({})
    def list_privacy_budget_templates(params = {}, options = {})
      req = build_request(:list_privacy_budget_templates, params)
      req.send_request(options)
    end

    # Returns detailed information about the privacy budgets in a specified
    # membership.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget is retrieved from the collaboration that this
    #   membership belongs to. Accepts a membership ID.
    #
    # @option params [required, String] :privacy_budget_type
    #   The privacy budget type.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListPrivacyBudgetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrivacyBudgetsOutput#privacy_budget_summaries #privacy_budget_summaries} => Array&lt;Types::PrivacyBudgetSummary&gt;
    #   * {Types::ListPrivacyBudgetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_privacy_budgets({
    #     membership_identifier: "MembershipIdentifier", # required
    #     privacy_budget_type: "DIFFERENTIAL_PRIVACY", # required, accepts DIFFERENTIAL_PRIVACY
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.privacy_budget_summaries #=> Array
    #   resp.privacy_budget_summaries[0].id #=> String
    #   resp.privacy_budget_summaries[0].privacy_budget_template_id #=> String
    #   resp.privacy_budget_summaries[0].privacy_budget_template_arn #=> String
    #   resp.privacy_budget_summaries[0].membership_id #=> String
    #   resp.privacy_budget_summaries[0].membership_arn #=> String
    #   resp.privacy_budget_summaries[0].collaboration_id #=> String
    #   resp.privacy_budget_summaries[0].collaboration_arn #=> String
    #   resp.privacy_budget_summaries[0].type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.privacy_budget_summaries[0].create_time #=> Time
    #   resp.privacy_budget_summaries[0].update_time #=> Time
    #   resp.privacy_budget_summaries[0].budget.differential_privacy.aggregations #=> Array
    #   resp.privacy_budget_summaries[0].budget.differential_privacy.aggregations[0].type #=> String, one of "AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"
    #   resp.privacy_budget_summaries[0].budget.differential_privacy.aggregations[0].max_count #=> Integer
    #   resp.privacy_budget_summaries[0].budget.differential_privacy.aggregations[0].remaining_count #=> Integer
    #   resp.privacy_budget_summaries[0].budget.differential_privacy.epsilon #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListPrivacyBudgets AWS API Documentation
    #
    # @overload list_privacy_budgets(params = {})
    # @param [Hash] params ({})
    def list_privacy_budgets(params = {}, options = {})
      req = build_request(:list_privacy_budgets, params)
      req.send_request(options)
    end

    # Lists protected queries, sorted by the most recent query.
    #
    # @option params [required, String] :membership_identifier
    #   The identifier for the membership in the collaboration.
    #
    # @option params [String] :status
    #   A filter on the status of the protected query.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListProtectedQueriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProtectedQueriesOutput#next_token #next_token} => String
    #   * {Types::ListProtectedQueriesOutput#protected_queries #protected_queries} => Array&lt;Types::ProtectedQuerySummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_protected_queries({
    #     membership_identifier: "MembershipIdentifier", # required
    #     status: "SUBMITTED", # accepts SUBMITTED, STARTED, CANCELLED, CANCELLING, FAILED, SUCCESS, TIMED_OUT
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.protected_queries #=> Array
    #   resp.protected_queries[0].id #=> String
    #   resp.protected_queries[0].membership_id #=> String
    #   resp.protected_queries[0].membership_arn #=> String
    #   resp.protected_queries[0].create_time #=> Time
    #   resp.protected_queries[0].status #=> String, one of "SUBMITTED", "STARTED", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS", "TIMED_OUT"
    #   resp.protected_queries[0].receiver_configurations #=> Array
    #   resp.protected_queries[0].receiver_configurations[0].analysis_type #=> String, one of "DIRECT_ANALYSIS", "ADDITIONAL_ANALYSIS"
    #   resp.protected_queries[0].receiver_configurations[0].configuration_details.direct_analysis_configuration_details.receiver_account_ids #=> Array
    #   resp.protected_queries[0].receiver_configurations[0].configuration_details.direct_analysis_configuration_details.receiver_account_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListProtectedQueries AWS API Documentation
    #
    # @overload list_protected_queries(params = {})
    # @param [Hash] params ({})
    def list_protected_queries(params = {}, options = {})
      req = build_request(:list_protected_queries, params)
      req.send_request(options)
    end

    # Lists the schemas for relations within a collaboration.
    #
    # @option params [required, String] :collaboration_identifier
    #   A unique identifier for the collaboration that the schema belongs to.
    #   Currently accepts a collaboration ID.
    #
    # @option params [String] :schema_type
    #   If present, filter schemas by schema type.
    #
    # @option params [String] :next_token
    #   The pagination token that's used to fetch the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one. The
    #   service might return a `nextToken` even if the `maxResults` value
    #   has not been met.
    #
    # @return [Types::ListSchemasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemasOutput#schema_summaries #schema_summaries} => Array&lt;Types::SchemaSummary&gt;
    #   * {Types::ListSchemasOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schemas({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     schema_type: "TABLE", # accepts TABLE, ID_MAPPING_TABLE
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_summaries #=> Array
    #   resp.schema_summaries[0].name #=> String
    #   resp.schema_summaries[0].type #=> String, one of "TABLE", "ID_MAPPING_TABLE"
    #   resp.schema_summaries[0].creator_account_id #=> String
    #   resp.schema_summaries[0].create_time #=> Time
    #   resp.schema_summaries[0].update_time #=> Time
    #   resp.schema_summaries[0].collaboration_id #=> String
    #   resp.schema_summaries[0].collaboration_arn #=> String
    #   resp.schema_summaries[0].analysis_rule_types #=> Array
    #   resp.schema_summaries[0].analysis_rule_types[0] #=> String, one of "AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"
    #   resp.schema_summaries[0].analysis_method #=> String, one of "DIRECT_QUERY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListSchemas AWS API Documentation
    #
    # @overload list_schemas(params = {})
    # @param [Hash] params ({})
    def list_schemas(params = {}, options = {})
      req = build_request(:list_schemas, params)
      req.send_request(options)
    end

    # Lists all of the tags that have been added to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource you want
    #   to list tags on.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "CleanroomsArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Defines the information that's necessary to populate an ID mapping
    # table.
    #
    # @option params [required, String] :id_mapping_table_identifier
    #   The unique identifier of the ID mapping table that you want to
    #   populate.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   table that you want to populate.
    #
    # @return [Types::PopulateIdMappingTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PopulateIdMappingTableOutput#id_mapping_job_id #id_mapping_job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.populate_id_mapping_table({
    #     id_mapping_table_identifier: "UUID", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id_mapping_job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PopulateIdMappingTable AWS API Documentation
    #
    # @overload populate_id_mapping_table(params = {})
    # @param [Hash] params ({})
    def populate_id_mapping_table(params = {}, options = {})
      req = build_request(:populate_id_mapping_table, params)
      req.send_request(options)
    end

    # An estimate of the number of aggregation functions that the member who
    # can query can run given epsilon and noise parameters.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   Accepts a membership ID.
    #
    # @option params [required, Types::PreviewPrivacyImpactParametersInput] :parameters
    #   Specifies the desired epsilon and noise parameters to preview.
    #
    # @return [Types::PreviewPrivacyImpactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PreviewPrivacyImpactOutput#privacy_impact #privacy_impact} => Types::PrivacyImpact
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.preview_privacy_impact({
    #     membership_identifier: "MembershipIdentifier", # required
    #     parameters: { # required
    #       differential_privacy: {
    #         epsilon: 1, # required
    #         users_noise_per_query: 1, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.privacy_impact.differential_privacy.aggregations #=> Array
    #   resp.privacy_impact.differential_privacy.aggregations[0].type #=> String, one of "AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"
    #   resp.privacy_impact.differential_privacy.aggregations[0].max_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PreviewPrivacyImpact AWS API Documentation
    #
    # @overload preview_privacy_impact(params = {})
    # @param [Hash] params ({})
    def preview_privacy_impact(params = {}, options = {})
      req = build_request(:preview_privacy_impact, params)
      req.send_request(options)
    end

    # Creates a protected query that is started by Clean Rooms.
    #
    # @option params [required, String] :type
    #   The type of the protected query to be started.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for the membership to run this query against.
    #   Currently accepts a membership ID.
    #
    # @option params [required, Types::ProtectedQuerySQLParameters] :sql_parameters
    #   The protected SQL query parameters.
    #
    # @option params [Types::ProtectedQueryResultConfiguration] :result_configuration
    #   The details needed to write the query results.
    #
    # @option params [Types::ComputeConfiguration] :compute_configuration
    #   The compute configuration for the protected query.
    #
    # @return [Types::StartProtectedQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartProtectedQueryOutput#protected_query #protected_query} => Types::ProtectedQuery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_protected_query({
    #     type: "SQL", # required, accepts SQL
    #     membership_identifier: "MembershipIdentifier", # required
    #     sql_parameters: { # required
    #       query_string: "ProtectedQuerySQLParametersQueryStringString",
    #       analysis_template_arn: "AnalysisTemplateArn",
    #       parameters: {
    #         "ParameterName" => "ParameterValue",
    #       },
    #     },
    #     result_configuration: {
    #       output_configuration: { # required
    #         s3: {
    #           result_format: "CSV", # required, accepts CSV, PARQUET
    #           bucket: "ProtectedQueryS3OutputConfigurationBucketString", # required
    #           key_prefix: "KeyPrefix",
    #           single_file_output: false,
    #         },
    #         member: {
    #           account_id: "AccountId", # required
    #         },
    #       },
    #     },
    #     compute_configuration: {
    #       worker: {
    #         type: "CR.1X", # accepts CR.1X, CR.4X
    #         number: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.protected_query.id #=> String
    #   resp.protected_query.membership_id #=> String
    #   resp.protected_query.membership_arn #=> String
    #   resp.protected_query.create_time #=> Time
    #   resp.protected_query.sql_parameters.query_string #=> String
    #   resp.protected_query.sql_parameters.analysis_template_arn #=> String
    #   resp.protected_query.sql_parameters.parameters #=> Hash
    #   resp.protected_query.sql_parameters.parameters["ParameterName"] #=> String
    #   resp.protected_query.status #=> String, one of "SUBMITTED", "STARTED", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS", "TIMED_OUT"
    #   resp.protected_query.result_configuration.output_configuration.s3.result_format #=> String, one of "CSV", "PARQUET"
    #   resp.protected_query.result_configuration.output_configuration.s3.bucket #=> String
    #   resp.protected_query.result_configuration.output_configuration.s3.key_prefix #=> String
    #   resp.protected_query.result_configuration.output_configuration.s3.single_file_output #=> Boolean
    #   resp.protected_query.result_configuration.output_configuration.member.account_id #=> String
    #   resp.protected_query.statistics.total_duration_in_millis #=> Integer
    #   resp.protected_query.statistics.billed_resource_utilization.units #=> Float
    #   resp.protected_query.result.output.s3.location #=> String
    #   resp.protected_query.result.output.member_list #=> Array
    #   resp.protected_query.result.output.member_list[0].account_id #=> String
    #   resp.protected_query.error.message #=> String
    #   resp.protected_query.error.code #=> String
    #   resp.protected_query.differential_privacy.sensitivity_parameters #=> Array
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].aggregation_type #=> String, one of "AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].aggregation_expression #=> String
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].user_contribution_limit #=> Integer
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].min_column_value #=> Float
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].max_column_value #=> Float
    #   resp.protected_query.compute_configuration.worker.type #=> String, one of "CR.1X", "CR.4X"
    #   resp.protected_query.compute_configuration.worker.number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/StartProtectedQuery AWS API Documentation
    #
    # @overload start_protected_query(params = {})
    # @param [Hash] params ({})
    def start_protected_query(params = {}, options = {})
      req = build_request(:start_protected_query, params)
      req.send_request(options)
    end

    # Tags a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource you want
    #   to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map of objects specifying each key name and value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "CleanroomsArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag or list of tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource you want
    #   to remove the tag from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of key names of tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "CleanroomsArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the analysis template metadata.
    #
    # @option params [required, String] :membership_identifier
    #   The identifier for a membership resource.
    #
    # @option params [required, String] :analysis_template_identifier
    #   The identifier for the analysis template resource.
    #
    # @option params [String] :description
    #   A new description for the analysis template.
    #
    # @return [Types::UpdateAnalysisTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnalysisTemplateOutput#analysis_template #analysis_template} => Types::AnalysisTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_analysis_template({
    #     membership_identifier: "MembershipIdentifier", # required
    #     analysis_template_identifier: "AnalysisTemplateIdentifier", # required
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_template.id #=> String
    #   resp.analysis_template.arn #=> String
    #   resp.analysis_template.collaboration_id #=> String
    #   resp.analysis_template.collaboration_arn #=> String
    #   resp.analysis_template.membership_id #=> String
    #   resp.analysis_template.membership_arn #=> String
    #   resp.analysis_template.description #=> String
    #   resp.analysis_template.name #=> String
    #   resp.analysis_template.create_time #=> Time
    #   resp.analysis_template.update_time #=> Time
    #   resp.analysis_template.schema.referenced_tables #=> Array
    #   resp.analysis_template.schema.referenced_tables[0] #=> String
    #   resp.analysis_template.format #=> String, one of "SQL"
    #   resp.analysis_template.source.text #=> String
    #   resp.analysis_template.analysis_parameters #=> Array
    #   resp.analysis_template.analysis_parameters[0].name #=> String
    #   resp.analysis_template.analysis_parameters[0].type #=> String, one of "SMALLINT", "INTEGER", "BIGINT", "DECIMAL", "REAL", "DOUBLE_PRECISION", "BOOLEAN", "CHAR", "VARCHAR", "DATE", "TIMESTAMP", "TIMESTAMPTZ", "TIME", "TIMETZ", "VARBYTE", "BINARY", "BYTE", "CHARACTER", "DOUBLE", "FLOAT", "INT", "LONG", "NUMERIC", "SHORT", "STRING", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TINYINT"
    #   resp.analysis_template.analysis_parameters[0].default_value #=> String
    #   resp.analysis_template.validations #=> Array
    #   resp.analysis_template.validations[0].type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.analysis_template.validations[0].status #=> String, one of "VALID", "INVALID", "UNABLE_TO_VALIDATE"
    #   resp.analysis_template.validations[0].reasons #=> Array
    #   resp.analysis_template.validations[0].reasons[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateAnalysisTemplate AWS API Documentation
    #
    # @overload update_analysis_template(params = {})
    # @param [Hash] params ({})
    def update_analysis_template(params = {}, options = {})
      req = build_request(:update_analysis_template, params)
      req.send_request(options)
    end

    # Updates collaboration metadata and can only be called by the
    # collaboration owner.
    #
    # @option params [required, String] :collaboration_identifier
    #   The identifier for the collaboration.
    #
    # @option params [String] :name
    #   A human-readable identifier provided by the collaboration owner.
    #   Display names are not unique.
    #
    # @option params [String] :description
    #   A description of the collaboration.
    #
    # @return [Types::UpdateCollaborationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCollaborationOutput#collaboration #collaboration} => Types::Collaboration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_collaboration({
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     name: "CollaborationName",
    #     description: "CollaborationDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.collaboration.id #=> String
    #   resp.collaboration.arn #=> String
    #   resp.collaboration.name #=> String
    #   resp.collaboration.description #=> String
    #   resp.collaboration.creator_account_id #=> String
    #   resp.collaboration.creator_display_name #=> String
    #   resp.collaboration.create_time #=> Time
    #   resp.collaboration.update_time #=> Time
    #   resp.collaboration.member_status #=> String, one of "INVITED", "ACTIVE", "LEFT", "REMOVED"
    #   resp.collaboration.membership_id #=> String
    #   resp.collaboration.membership_arn #=> String
    #   resp.collaboration.data_encryption_metadata.allow_cleartext #=> Boolean
    #   resp.collaboration.data_encryption_metadata.allow_duplicates #=> Boolean
    #   resp.collaboration.data_encryption_metadata.allow_joins_on_columns_with_different_names #=> Boolean
    #   resp.collaboration.data_encryption_metadata.preserve_nulls #=> Boolean
    #   resp.collaboration.query_log_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.collaboration.analytics_engine #=> String, one of "SPARK", "CLEAN_ROOMS_SQL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateCollaboration AWS API Documentation
    #
    # @overload update_collaboration(params = {})
    # @param [Hash] params ({})
    def update_collaboration(params = {}, options = {})
      req = build_request(:update_collaboration, params)
      req.send_request(options)
    end

    # Provides the details necessary to update a configured audience model
    # association.
    #
    # @option params [required, String] :configured_audience_model_association_identifier
    #   A unique identifier for the configured audience model association that
    #   you want to update.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier of the membership that contains the configured
    #   audience model association that you want to update.
    #
    # @option params [String] :description
    #   A new description for the configured audience model association.
    #
    # @option params [String] :name
    #   A new name for the configured audience model association.
    #
    # @return [Types::UpdateConfiguredAudienceModelAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfiguredAudienceModelAssociationOutput#configured_audience_model_association #configured_audience_model_association} => Types::ConfiguredAudienceModelAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configured_audience_model_association({
    #     configured_audience_model_association_identifier: "ConfiguredAudienceModelAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #     description: "ResourceDescription",
    #     name: "ConfiguredAudienceModelAssociationName",
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_association.id #=> String
    #   resp.configured_audience_model_association.arn #=> String
    #   resp.configured_audience_model_association.configured_audience_model_arn #=> String
    #   resp.configured_audience_model_association.membership_id #=> String
    #   resp.configured_audience_model_association.membership_arn #=> String
    #   resp.configured_audience_model_association.collaboration_id #=> String
    #   resp.configured_audience_model_association.collaboration_arn #=> String
    #   resp.configured_audience_model_association.name #=> String
    #   resp.configured_audience_model_association.manage_resource_policies #=> Boolean
    #   resp.configured_audience_model_association.description #=> String
    #   resp.configured_audience_model_association.create_time #=> Time
    #   resp.configured_audience_model_association.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredAudienceModelAssociation AWS API Documentation
    #
    # @overload update_configured_audience_model_association(params = {})
    # @param [Hash] params ({})
    def update_configured_audience_model_association(params = {}, options = {})
      req = build_request(:update_configured_audience_model_association, params)
      req.send_request(options)
    end

    # Updates a configured table.
    #
    # @option params [required, String] :configured_table_identifier
    #   The identifier for the configured table to update. Currently accepts
    #   the configured table ID.
    #
    # @option params [String] :name
    #   A new name for the configured table.
    #
    # @option params [String] :description
    #   A new description for the configured table.
    #
    # @return [Types::UpdateConfiguredTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfiguredTableOutput#configured_table #configured_table} => Types::ConfiguredTable
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configured_table({
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     name: "DisplayName",
    #     description: "TableDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_table.id #=> String
    #   resp.configured_table.arn #=> String
    #   resp.configured_table.name #=> String
    #   resp.configured_table.description #=> String
    #   resp.configured_table.table_reference.glue.table_name #=> String
    #   resp.configured_table.table_reference.glue.database_name #=> String
    #   resp.configured_table.table_reference.snowflake.secret_arn #=> String
    #   resp.configured_table.table_reference.snowflake.account_identifier #=> String
    #   resp.configured_table.table_reference.snowflake.database_name #=> String
    #   resp.configured_table.table_reference.snowflake.table_name #=> String
    #   resp.configured_table.table_reference.snowflake.schema_name #=> String
    #   resp.configured_table.table_reference.snowflake.table_schema.v1 #=> Array
    #   resp.configured_table.table_reference.snowflake.table_schema.v1[0].column_name #=> String
    #   resp.configured_table.table_reference.snowflake.table_schema.v1[0].column_type #=> String
    #   resp.configured_table.table_reference.athena.work_group #=> String
    #   resp.configured_table.table_reference.athena.output_location #=> String
    #   resp.configured_table.table_reference.athena.database_name #=> String
    #   resp.configured_table.table_reference.athena.table_name #=> String
    #   resp.configured_table.create_time #=> Time
    #   resp.configured_table.update_time #=> Time
    #   resp.configured_table.analysis_rule_types #=> Array
    #   resp.configured_table.analysis_rule_types[0] #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.configured_table.analysis_method #=> String, one of "DIRECT_QUERY"
    #   resp.configured_table.allowed_columns #=> Array
    #   resp.configured_table.allowed_columns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTable AWS API Documentation
    #
    # @overload update_configured_table(params = {})
    # @param [Hash] params ({})
    def update_configured_table(params = {}, options = {})
      req = build_request(:update_configured_table, params)
      req.send_request(options)
    end

    # Updates a configured table analysis rule.
    #
    # @option params [required, String] :configured_table_identifier
    #   The unique identifier for the configured table that the analysis rule
    #   applies to. Currently accepts the configured table ID.
    #
    # @option params [required, String] :analysis_rule_type
    #   The analysis rule type to be updated. Configured table analysis rules
    #   are uniquely identified by their configured table identifier and
    #   analysis rule type.
    #
    # @option params [required, Types::ConfiguredTableAnalysisRulePolicy] :analysis_rule_policy
    #   The new analysis rule policy for the configured table analysis rule.
    #
    # @return [Types::UpdateConfiguredTableAnalysisRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfiguredTableAnalysisRuleOutput#analysis_rule #analysis_rule} => Types::ConfiguredTableAnalysisRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configured_table_analysis_rule({
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     analysis_rule_type: "AGGREGATION", # required, accepts AGGREGATION, LIST, CUSTOM
    #     analysis_rule_policy: { # required
    #       v1: {
    #         list: {
    #           join_columns: ["AnalysisRuleColumnName"], # required
    #           allowed_join_operators: ["OR"], # accepts OR, AND
    #           list_columns: ["AnalysisRuleColumnName"], # required
    #           additional_analyses: "ALLOWED", # accepts ALLOWED, REQUIRED, NOT_ALLOWED
    #         },
    #         aggregation: {
    #           aggregate_columns: [ # required
    #             {
    #               column_names: ["AnalysisRuleColumnName"], # required
    #               function: "SUM", # required, accepts SUM, SUM_DISTINCT, COUNT, COUNT_DISTINCT, AVG
    #             },
    #           ],
    #           join_columns: ["AnalysisRuleColumnName"], # required
    #           join_required: "QUERY_RUNNER", # accepts QUERY_RUNNER
    #           allowed_join_operators: ["OR"], # accepts OR, AND
    #           dimension_columns: ["AnalysisRuleColumnName"], # required
    #           scalar_functions: ["ABS"], # required, accepts ABS, CAST, CEILING, COALESCE, CONVERT, CURRENT_DATE, DATEADD, EXTRACT, FLOOR, GETDATE, LN, LOG, LOWER, ROUND, RTRIM, SQRT, SUBSTRING, TO_CHAR, TO_DATE, TO_NUMBER, TO_TIMESTAMP, TRIM, TRUNC, UPPER
    #           output_constraints: [ # required
    #             {
    #               column_name: "AnalysisRuleColumnName", # required
    #               minimum: 1, # required
    #               type: "COUNT_DISTINCT", # required, accepts COUNT_DISTINCT
    #             },
    #           ],
    #           additional_analyses: "ALLOWED", # accepts ALLOWED, REQUIRED, NOT_ALLOWED
    #         },
    #         custom: {
    #           allowed_analyses: ["AnalysisTemplateArnOrQueryWildcard"], # required
    #           allowed_analysis_providers: ["AccountId"],
    #           additional_analyses: "ALLOWED", # accepts ALLOWED, REQUIRED, NOT_ALLOWED
    #           disallowed_output_columns: ["AnalysisRuleColumnName"],
    #           differential_privacy: {
    #             columns: [ # required
    #               {
    #                 name: "String", # required
    #               },
    #             ],
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_rule.configured_table_id #=> String
    #   resp.analysis_rule.configured_table_arn #=> String
    #   resp.analysis_rule.policy.v1.list.join_columns #=> Array
    #   resp.analysis_rule.policy.v1.list.join_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.list.allowed_join_operators #=> Array
    #   resp.analysis_rule.policy.v1.list.allowed_join_operators[0] #=> String, one of "OR", "AND"
    #   resp.analysis_rule.policy.v1.list.list_columns #=> Array
    #   resp.analysis_rule.policy.v1.list.list_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.list.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].column_names #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].column_names[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.aggregate_columns[0].function #=> String, one of "SUM", "SUM_DISTINCT", "COUNT", "COUNT_DISTINCT", "AVG"
    #   resp.analysis_rule.policy.v1.aggregation.join_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.join_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.join_required #=> String, one of "QUERY_RUNNER"
    #   resp.analysis_rule.policy.v1.aggregation.allowed_join_operators #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.allowed_join_operators[0] #=> String, one of "OR", "AND"
    #   resp.analysis_rule.policy.v1.aggregation.dimension_columns #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.dimension_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.scalar_functions #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.scalar_functions[0] #=> String, one of "ABS", "CAST", "CEILING", "COALESCE", "CONVERT", "CURRENT_DATE", "DATEADD", "EXTRACT", "FLOOR", "GETDATE", "LN", "LOG", "LOWER", "ROUND", "RTRIM", "SQRT", "SUBSTRING", "TO_CHAR", "TO_DATE", "TO_NUMBER", "TO_TIMESTAMP", "TRIM", "TRUNC", "UPPER"
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].column_name #=> String
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].minimum #=> Integer
    #   resp.analysis_rule.policy.v1.aggregation.output_constraints[0].type #=> String, one of "COUNT_DISTINCT"
    #   resp.analysis_rule.policy.v1.aggregation.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.custom.allowed_analyses #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_analyses[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.allowed_analysis_providers #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_analysis_providers[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.additional_analyses #=> String, one of "ALLOWED", "REQUIRED", "NOT_ALLOWED"
    #   resp.analysis_rule.policy.v1.custom.disallowed_output_columns #=> Array
    #   resp.analysis_rule.policy.v1.custom.disallowed_output_columns[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.differential_privacy.columns #=> Array
    #   resp.analysis_rule.policy.v1.custom.differential_privacy.columns[0].name #=> String
    #   resp.analysis_rule.type #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.analysis_rule.create_time #=> Time
    #   resp.analysis_rule.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableAnalysisRule AWS API Documentation
    #
    # @overload update_configured_table_analysis_rule(params = {})
    # @param [Hash] params ({})
    def update_configured_table_analysis_rule(params = {}, options = {})
      req = build_request(:update_configured_table_analysis_rule, params)
      req.send_request(options)
    end

    # Updates a configured table association.
    #
    # @option params [required, String] :configured_table_association_identifier
    #   The unique identifier for the configured table association to update.
    #   Currently accepts the configured table association ID.
    #
    # @option params [required, String] :membership_identifier
    #   The unique ID for the membership that the configured table association
    #   belongs to.
    #
    # @option params [String] :description
    #   A new description for the configured table association.
    #
    # @option params [String] :role_arn
    #   The service will assume this role to access catalog metadata and query
    #   the table.
    #
    # @return [Types::UpdateConfiguredTableAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfiguredTableAssociationOutput#configured_table_association #configured_table_association} => Types::ConfiguredTableAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configured_table_association({
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #     description: "TableDescription",
    #     role_arn: "RoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_table_association.arn #=> String
    #   resp.configured_table_association.id #=> String
    #   resp.configured_table_association.configured_table_id #=> String
    #   resp.configured_table_association.configured_table_arn #=> String
    #   resp.configured_table_association.membership_id #=> String
    #   resp.configured_table_association.membership_arn #=> String
    #   resp.configured_table_association.role_arn #=> String
    #   resp.configured_table_association.name #=> String
    #   resp.configured_table_association.description #=> String
    #   resp.configured_table_association.analysis_rule_types #=> Array
    #   resp.configured_table_association.analysis_rule_types[0] #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.configured_table_association.create_time #=> Time
    #   resp.configured_table_association.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableAssociation AWS API Documentation
    #
    # @overload update_configured_table_association(params = {})
    # @param [Hash] params ({})
    def update_configured_table_association(params = {}, options = {})
      req = build_request(:update_configured_table_association, params)
      req.send_request(options)
    end

    # Updates the analysis rule for a configured table association.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #
    # @option params [required, String] :configured_table_association_identifier
    #   The identifier for the configured table association to update.
    #
    # @option params [required, String] :analysis_rule_type
    #   The analysis rule type that you want to update.
    #
    # @option params [required, Types::ConfiguredTableAssociationAnalysisRulePolicy] :analysis_rule_policy
    #   The updated analysis rule policy for the conﬁgured table association.
    #
    # @return [Types::UpdateConfiguredTableAssociationAnalysisRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfiguredTableAssociationAnalysisRuleOutput#analysis_rule #analysis_rule} => Types::ConfiguredTableAssociationAnalysisRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configured_table_association_analysis_rule({
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     analysis_rule_type: "AGGREGATION", # required, accepts AGGREGATION, LIST, CUSTOM
    #     analysis_rule_policy: { # required
    #       v1: {
    #         list: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"],
    #         },
    #         aggregation: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"],
    #         },
    #         custom: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"],
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_rule.membership_identifier #=> String
    #   resp.analysis_rule.configured_table_association_id #=> String
    #   resp.analysis_rule.configured_table_association_arn #=> String
    #   resp.analysis_rule.policy.v1.list.allowed_result_receivers #=> Array
    #   resp.analysis_rule.policy.v1.list.allowed_result_receivers[0] #=> String
    #   resp.analysis_rule.policy.v1.list.allowed_additional_analyses #=> Array
    #   resp.analysis_rule.policy.v1.list.allowed_additional_analyses[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.allowed_result_receivers #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.allowed_result_receivers[0] #=> String
    #   resp.analysis_rule.policy.v1.aggregation.allowed_additional_analyses #=> Array
    #   resp.analysis_rule.policy.v1.aggregation.allowed_additional_analyses[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.allowed_result_receivers #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_result_receivers[0] #=> String
    #   resp.analysis_rule.policy.v1.custom.allowed_additional_analyses #=> Array
    #   resp.analysis_rule.policy.v1.custom.allowed_additional_analyses[0] #=> String
    #   resp.analysis_rule.type #=> String, one of "AGGREGATION", "LIST", "CUSTOM"
    #   resp.analysis_rule.create_time #=> Time
    #   resp.analysis_rule.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableAssociationAnalysisRule AWS API Documentation
    #
    # @overload update_configured_table_association_analysis_rule(params = {})
    # @param [Hash] params ({})
    def update_configured_table_association_analysis_rule(params = {}, options = {})
      req = build_request(:update_configured_table_association_analysis_rule, params)
      req.send_request(options)
    end

    # Provides the details that are necessary to update an ID mapping table.
    #
    # @option params [required, String] :id_mapping_table_identifier
    #   The unique identifier of the ID mapping table that you want to update.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   table that you want to update.
    #
    # @option params [String] :description
    #   A new description for the ID mapping table.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services KMS key.
    #
    # @return [Types::UpdateIdMappingTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdMappingTableOutput#id_mapping_table #id_mapping_table} => Types::IdMappingTable
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_id_mapping_table({
    #     id_mapping_table_identifier: "UUID", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #     description: "ResourceDescription",
    #     kms_key_arn: "KMSKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.id_mapping_table.id #=> String
    #   resp.id_mapping_table.arn #=> String
    #   resp.id_mapping_table.input_reference_config.input_reference_arn #=> String
    #   resp.id_mapping_table.input_reference_config.manage_resource_policies #=> Boolean
    #   resp.id_mapping_table.membership_id #=> String
    #   resp.id_mapping_table.membership_arn #=> String
    #   resp.id_mapping_table.collaboration_id #=> String
    #   resp.id_mapping_table.collaboration_arn #=> String
    #   resp.id_mapping_table.description #=> String
    #   resp.id_mapping_table.name #=> String
    #   resp.id_mapping_table.create_time #=> Time
    #   resp.id_mapping_table.update_time #=> Time
    #   resp.id_mapping_table.input_reference_properties.id_mapping_table_input_source #=> Array
    #   resp.id_mapping_table.input_reference_properties.id_mapping_table_input_source[0].id_namespace_association_id #=> String
    #   resp.id_mapping_table.input_reference_properties.id_mapping_table_input_source[0].type #=> String, one of "SOURCE", "TARGET"
    #   resp.id_mapping_table.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateIdMappingTable AWS API Documentation
    #
    # @overload update_id_mapping_table(params = {})
    # @param [Hash] params ({})
    def update_id_mapping_table(params = {}, options = {})
      req = build_request(:update_id_mapping_table, params)
      req.send_request(options)
    end

    # Provides the details that are necessary to update an ID namespace
    # association.
    #
    # @option params [required, String] :id_namespace_association_identifier
    #   The unique identifier of the ID namespace association that you want to
    #   update.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership that contains the ID namespace
    #   association that you want to update.
    #
    # @option params [String] :name
    #   A new name for the ID namespace association.
    #
    # @option params [String] :description
    #   A new description for the ID namespace association.
    #
    # @option params [Types::IdMappingConfig] :id_mapping_config
    #   The configuration settings for the ID mapping table.
    #
    # @return [Types::UpdateIdNamespaceAssociationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdNamespaceAssociationOutput#id_namespace_association #id_namespace_association} => Types::IdNamespaceAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_id_namespace_association({
    #     id_namespace_association_identifier: "IdNamespaceAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #     name: "GenericResourceName",
    #     description: "ResourceDescription",
    #     id_mapping_config: {
    #       allow_use_as_dimension_column: false, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id_namespace_association.id #=> String
    #   resp.id_namespace_association.arn #=> String
    #   resp.id_namespace_association.membership_id #=> String
    #   resp.id_namespace_association.membership_arn #=> String
    #   resp.id_namespace_association.collaboration_id #=> String
    #   resp.id_namespace_association.collaboration_arn #=> String
    #   resp.id_namespace_association.name #=> String
    #   resp.id_namespace_association.description #=> String
    #   resp.id_namespace_association.create_time #=> Time
    #   resp.id_namespace_association.update_time #=> Time
    #   resp.id_namespace_association.input_reference_config.input_reference_arn #=> String
    #   resp.id_namespace_association.input_reference_config.manage_resource_policies #=> Boolean
    #   resp.id_namespace_association.input_reference_properties.id_namespace_type #=> String, one of "SOURCE", "TARGET"
    #   resp.id_namespace_association.input_reference_properties.id_mapping_workflows_supported #=> Array
    #   resp.id_namespace_association.id_mapping_config.allow_use_as_dimension_column #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateIdNamespaceAssociation AWS API Documentation
    #
    # @overload update_id_namespace_association(params = {})
    # @param [Hash] params ({})
    def update_id_namespace_association(params = {}, options = {})
      req = build_request(:update_id_namespace_association, params)
      req.send_request(options)
    end

    # Updates a membership.
    #
    # @option params [required, String] :membership_identifier
    #   The unique identifier of the membership.
    #
    # @option params [String] :query_log_status
    #   An indicator as to whether query logging has been enabled or disabled
    #   for the membership.
    #
    # @option params [Types::MembershipProtectedQueryResultConfiguration] :default_result_configuration
    #   The default protected query result configuration as specified by the
    #   member who can receive results.
    #
    # @return [Types::UpdateMembershipOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMembershipOutput#membership #membership} => Types::Membership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_membership({
    #     membership_identifier: "MembershipIdentifier", # required
    #     query_log_status: "ENABLED", # accepts ENABLED, DISABLED
    #     default_result_configuration: {
    #       output_configuration: { # required
    #         s3: {
    #           result_format: "CSV", # required, accepts CSV, PARQUET
    #           bucket: "ProtectedQueryS3OutputConfigurationBucketString", # required
    #           key_prefix: "KeyPrefix",
    #           single_file_output: false,
    #         },
    #       },
    #       role_arn: "RoleArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.membership.id #=> String
    #   resp.membership.arn #=> String
    #   resp.membership.collaboration_arn #=> String
    #   resp.membership.collaboration_id #=> String
    #   resp.membership.collaboration_creator_account_id #=> String
    #   resp.membership.collaboration_creator_display_name #=> String
    #   resp.membership.collaboration_name #=> String
    #   resp.membership.create_time #=> Time
    #   resp.membership.update_time #=> Time
    #   resp.membership.status #=> String, one of "ACTIVE", "REMOVED", "COLLABORATION_DELETED"
    #   resp.membership.member_abilities #=> Array
    #   resp.membership.member_abilities[0] #=> String, one of "CAN_QUERY", "CAN_RECEIVE_RESULTS"
    #   resp.membership.ml_member_abilities.custom_ml_member_abilities #=> Array
    #   resp.membership.ml_member_abilities.custom_ml_member_abilities[0] #=> String, one of "CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"
    #   resp.membership.query_log_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.membership.default_result_configuration.output_configuration.s3.result_format #=> String, one of "CSV", "PARQUET"
    #   resp.membership.default_result_configuration.output_configuration.s3.bucket #=> String
    #   resp.membership.default_result_configuration.output_configuration.s3.key_prefix #=> String
    #   resp.membership.default_result_configuration.output_configuration.s3.single_file_output #=> Boolean
    #   resp.membership.default_result_configuration.role_arn #=> String
    #   resp.membership.payment_configuration.query_compute.is_responsible #=> Boolean
    #   resp.membership.payment_configuration.machine_learning.model_training.is_responsible #=> Boolean
    #   resp.membership.payment_configuration.machine_learning.model_inference.is_responsible #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateMembership AWS API Documentation
    #
    # @overload update_membership(params = {})
    # @param [Hash] params ({})
    def update_membership(params = {}, options = {})
      req = build_request(:update_membership, params)
      req.send_request(options)
    end

    # Updates the privacy budget template for the specified membership.
    #
    # @option params [required, String] :membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget template is updated in the collaboration that this
    #   membership belongs to. Accepts a membership ID.
    #
    # @option params [required, String] :privacy_budget_template_identifier
    #   A unique identifier for your privacy budget template that you want to
    #   update.
    #
    # @option params [required, String] :privacy_budget_type
    #   Specifies the type of the privacy budget template.
    #
    # @option params [Types::PrivacyBudgetTemplateUpdateParameters] :parameters
    #   Specifies the epsilon and noise parameters for the privacy budget
    #   template.
    #
    # @return [Types::UpdatePrivacyBudgetTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePrivacyBudgetTemplateOutput#privacy_budget_template #privacy_budget_template} => Types::PrivacyBudgetTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_privacy_budget_template({
    #     membership_identifier: "MembershipIdentifier", # required
    #     privacy_budget_template_identifier: "PrivacyBudgetTemplateIdentifier", # required
    #     privacy_budget_type: "DIFFERENTIAL_PRIVACY", # required, accepts DIFFERENTIAL_PRIVACY
    #     parameters: {
    #       differential_privacy: {
    #         epsilon: 1,
    #         users_noise_per_query: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.privacy_budget_template.id #=> String
    #   resp.privacy_budget_template.arn #=> String
    #   resp.privacy_budget_template.membership_id #=> String
    #   resp.privacy_budget_template.membership_arn #=> String
    #   resp.privacy_budget_template.collaboration_id #=> String
    #   resp.privacy_budget_template.collaboration_arn #=> String
    #   resp.privacy_budget_template.create_time #=> Time
    #   resp.privacy_budget_template.update_time #=> Time
    #   resp.privacy_budget_template.privacy_budget_type #=> String, one of "DIFFERENTIAL_PRIVACY"
    #   resp.privacy_budget_template.auto_refresh #=> String, one of "CALENDAR_MONTH", "NONE"
    #   resp.privacy_budget_template.parameters.differential_privacy.epsilon #=> Integer
    #   resp.privacy_budget_template.parameters.differential_privacy.users_noise_per_query #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdatePrivacyBudgetTemplate AWS API Documentation
    #
    # @overload update_privacy_budget_template(params = {})
    # @param [Hash] params ({})
    def update_privacy_budget_template(params = {}, options = {})
      req = build_request(:update_privacy_budget_template, params)
      req.send_request(options)
    end

    # Updates the processing of a currently running query.
    #
    # @option params [required, String] :membership_identifier
    #   The identifier for a member of a protected query instance.
    #
    # @option params [required, String] :protected_query_identifier
    #   The identifier for a protected query instance.
    #
    # @option params [required, String] :target_status
    #   The target status of a query. Used to update the execution status of a
    #   currently running query.
    #
    # @return [Types::UpdateProtectedQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProtectedQueryOutput#protected_query #protected_query} => Types::ProtectedQuery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_protected_query({
    #     membership_identifier: "MembershipIdentifier", # required
    #     protected_query_identifier: "ProtectedQueryIdentifier", # required
    #     target_status: "CANCELLED", # required, accepts CANCELLED
    #   })
    #
    # @example Response structure
    #
    #   resp.protected_query.id #=> String
    #   resp.protected_query.membership_id #=> String
    #   resp.protected_query.membership_arn #=> String
    #   resp.protected_query.create_time #=> Time
    #   resp.protected_query.sql_parameters.query_string #=> String
    #   resp.protected_query.sql_parameters.analysis_template_arn #=> String
    #   resp.protected_query.sql_parameters.parameters #=> Hash
    #   resp.protected_query.sql_parameters.parameters["ParameterName"] #=> String
    #   resp.protected_query.status #=> String, one of "SUBMITTED", "STARTED", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS", "TIMED_OUT"
    #   resp.protected_query.result_configuration.output_configuration.s3.result_format #=> String, one of "CSV", "PARQUET"
    #   resp.protected_query.result_configuration.output_configuration.s3.bucket #=> String
    #   resp.protected_query.result_configuration.output_configuration.s3.key_prefix #=> String
    #   resp.protected_query.result_configuration.output_configuration.s3.single_file_output #=> Boolean
    #   resp.protected_query.result_configuration.output_configuration.member.account_id #=> String
    #   resp.protected_query.statistics.total_duration_in_millis #=> Integer
    #   resp.protected_query.statistics.billed_resource_utilization.units #=> Float
    #   resp.protected_query.result.output.s3.location #=> String
    #   resp.protected_query.result.output.member_list #=> Array
    #   resp.protected_query.result.output.member_list[0].account_id #=> String
    #   resp.protected_query.error.message #=> String
    #   resp.protected_query.error.code #=> String
    #   resp.protected_query.differential_privacy.sensitivity_parameters #=> Array
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].aggregation_type #=> String, one of "AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].aggregation_expression #=> String
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].user_contribution_limit #=> Integer
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].min_column_value #=> Float
    #   resp.protected_query.differential_privacy.sensitivity_parameters[0].max_column_value #=> Float
    #   resp.protected_query.compute_configuration.worker.type #=> String, one of "CR.1X", "CR.4X"
    #   resp.protected_query.compute_configuration.worker.number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateProtectedQuery AWS API Documentation
    #
    # @overload update_protected_query(params = {})
    # @param [Hash] params ({})
    def update_protected_query(params = {}, options = {})
      req = build_request(:update_protected_query, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CleanRooms')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-cleanrooms'
      context[:gem_version] = '1.39.0'
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
