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

module Aws::SecurityAgent
  # An API client for SecurityAgent.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SecurityAgent::Client.new(
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

    @identifier = :securityagent

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
    add_plugin(Aws::SecurityAgent::Plugins::Endpoints)

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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether to apply
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
    #     * `legacy` - The pre-existing retry behavior. This is the default
    #       value if no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - A retry mode that includes all the functionality of
    #       `standard` mode along with automatic client side throttling.
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
    #   @option options [Aws::SecurityAgent::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SecurityAgent::EndpointParameters`.
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

    # Uploads an artifact to an agent space. Artifacts provide additional
    # context for security testing, such as architecture diagrams, API
    # specifications, or configuration files.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to add the artifact to.
    #
    # @option params [required, String, StringIO, File] :artifact_content
    #   The binary content of the artifact to upload.
    #
    # @option params [required, String] :artifact_type
    #   The file type of the artifact. Valid values include TXT, PNG, JPEG,
    #   MD, PDF, DOCX, DOC, JSON, and YAML.
    #
    # @option params [required, String] :file_name
    #   The file name of the artifact.
    #
    # @return [Types::AddArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddArtifactOutput#artifact_id #artifact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_artifact({
    #     agent_space_id: "AgentSpaceId", # required
    #     artifact_content: "data", # required
    #     artifact_type: "TXT", # required, accepts TXT, PNG, JPEG, MD, PDF, DOCX, DOC, JSON, YAML
    #     file_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.artifact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/AddArtifact AWS API Documentation
    #
    # @overload add_artifact(params = {})
    # @param [Hash] params ({})
    def add_artifact(params = {}, options = {})
      req = build_request(:add_artifact, params)
      req.send_request(options)
    end

    # Batch creates security requirements in a customer managed pack.
    #
    # @option params [required, String] :pack_id
    #   The unique identifier of the security requirement pack to add
    #   requirements to.
    #
    # @option params [required, Array<Types::CreateSecurityRequirementEntry>] :security_requirements
    #   The list of security requirements to create.
    #
    # @return [Types::BatchCreateSecurityRequirementsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateSecurityRequirementsOutput#security_requirements #security_requirements} => Array&lt;Types::BatchCreateSecurityRequirementResult&gt;
    #   * {Types::BatchCreateSecurityRequirementsOutput#errors #errors} => Array&lt;Types::BatchSecurityRequirementError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_security_requirements({
    #     pack_id: "SecurityRequirementPackId", # required
    #     security_requirements: [ # required
    #       {
    #         name: "SecurityRequirementName", # required
    #         description: "String", # required
    #         domain: "String", # required
    #         evaluation: "String", # required
    #         remediation: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.security_requirements #=> Array
    #   resp.security_requirements[0].pack_id #=> String
    #   resp.security_requirements[0].name #=> String
    #   resp.security_requirements[0].description #=> String
    #   resp.security_requirements[0].domain #=> String
    #   resp.security_requirements[0].evaluation #=> String
    #   resp.security_requirements[0].remediation #=> String
    #   resp.security_requirements[0].created_at #=> Time
    #   resp.security_requirements[0].updated_at #=> Time
    #   resp.errors #=> Array
    #   resp.errors[0].security_requirement_name #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchCreateSecurityRequirements AWS API Documentation
    #
    # @overload batch_create_security_requirements(params = {})
    # @param [Hash] params ({})
    def batch_create_security_requirements(params = {}, options = {})
      req = build_request(:batch_create_security_requirements, params)
      req.send_request(options)
    end

    # Deletes one or more code reviews from an agent space.
    #
    # @option params [required, Array<String>] :code_review_ids
    #   The list of code review identifiers to delete.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the code
    #   reviews to delete.
    #
    # @return [Types::BatchDeleteCodeReviewsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteCodeReviewsOutput#deleted #deleted} => Array&lt;String&gt;
    #   * {Types::BatchDeleteCodeReviewsOutput#failed #failed} => Array&lt;Types::DeleteCodeReviewFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_code_reviews({
    #     code_review_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deleted #=> Array
    #   resp.deleted[0] #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].code_review_id #=> String
    #   resp.failed[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeleteCodeReviews AWS API Documentation
    #
    # @overload batch_delete_code_reviews(params = {})
    # @param [Hash] params ({})
    def batch_delete_code_reviews(params = {}, options = {})
      req = build_request(:batch_delete_code_reviews, params)
      req.send_request(options)
    end

    # Deletes one or more pentests from an agent space.
    #
    # @option params [required, Array<String>] :pentest_ids
    #   The list of pentest identifiers to delete.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the pentests to
    #   delete.
    #
    # @return [Types::BatchDeletePentestsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeletePentestsOutput#deleted #deleted} => Array&lt;Types::Pentest&gt;
    #   * {Types::BatchDeletePentestsOutput#failed #failed} => Array&lt;Types::DeletePentestFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_pentests({
    #     pentest_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deleted #=> Array
    #   resp.deleted[0].pentest_id #=> String
    #   resp.deleted[0].agent_space_id #=> String
    #   resp.deleted[0].title #=> String
    #   resp.deleted[0].assets.endpoints #=> Array
    #   resp.deleted[0].assets.endpoints[0].uri #=> String
    #   resp.deleted[0].assets.actors #=> Array
    #   resp.deleted[0].assets.actors[0].identifier #=> String
    #   resp.deleted[0].assets.actors[0].uris #=> Array
    #   resp.deleted[0].assets.actors[0].uris[0] #=> String
    #   resp.deleted[0].assets.actors[0].authentication.provider_type #=> String, one of "SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"
    #   resp.deleted[0].assets.actors[0].authentication.value #=> String
    #   resp.deleted[0].assets.actors[0].description #=> String
    #   resp.deleted[0].assets.documents #=> Array
    #   resp.deleted[0].assets.documents[0].s3_location #=> String
    #   resp.deleted[0].assets.documents[0].artifact_id #=> String
    #   resp.deleted[0].assets.documents[0].integrated_document.integration_id #=> String
    #   resp.deleted[0].assets.documents[0].integrated_document.resource_id #=> String
    #   resp.deleted[0].assets.source_code #=> Array
    #   resp.deleted[0].assets.source_code[0].s3_location #=> String
    #   resp.deleted[0].assets.integrated_repositories #=> Array
    #   resp.deleted[0].assets.integrated_repositories[0].integration_id #=> String
    #   resp.deleted[0].assets.integrated_repositories[0].provider_resource_id #=> String
    #   resp.deleted[0].exclude_risk_types #=> Array
    #   resp.deleted[0].exclude_risk_types[0] #=> String, one of "CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"
    #   resp.deleted[0].service_role #=> String
    #   resp.deleted[0].log_config.log_group #=> String
    #   resp.deleted[0].log_config.log_stream #=> String
    #   resp.deleted[0].vpc_config.vpc_arn #=> String
    #   resp.deleted[0].vpc_config.security_group_arns #=> Array
    #   resp.deleted[0].vpc_config.security_group_arns[0] #=> String
    #   resp.deleted[0].vpc_config.subnet_arns #=> Array
    #   resp.deleted[0].vpc_config.subnet_arns[0] #=> String
    #   resp.deleted[0].network_traffic_config.rules #=> Array
    #   resp.deleted[0].network_traffic_config.rules[0].effect #=> String, one of "ALLOW", "DENY"
    #   resp.deleted[0].network_traffic_config.rules[0].pattern #=> String
    #   resp.deleted[0].network_traffic_config.rules[0].network_traffic_rule_type #=> String, one of "URL"
    #   resp.deleted[0].network_traffic_config.custom_headers #=> Array
    #   resp.deleted[0].network_traffic_config.custom_headers[0].name #=> String
    #   resp.deleted[0].network_traffic_config.custom_headers[0].value #=> String
    #   resp.deleted[0].code_remediation_strategy #=> String, one of "AUTOMATIC", "DISABLED"
    #   resp.deleted[0].clean_up_strategy #=> String, one of "BEST_EFFORT_DELETE", "RETAIN_ALL"
    #   resp.deleted[0].disable_managed_skills #=> Array
    #   resp.deleted[0].disable_managed_skills[0] #=> String, one of "FINDING_PERSONALIZATION", "LOGIN_OPTIMIZATION"
    #   resp.deleted[0].created_at #=> Time
    #   resp.deleted[0].updated_at #=> Time
    #   resp.failed #=> Array
    #   resp.failed[0].pentest_id #=> String
    #   resp.failed[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeletePentests AWS API Documentation
    #
    # @overload batch_delete_pentests(params = {})
    # @param [Hash] params ({})
    def batch_delete_pentests(params = {}, options = {})
      req = build_request(:batch_delete_pentests, params)
      req.send_request(options)
    end

    # Batch deletes security requirements from a customer managed pack.
    #
    # @option params [required, String] :pack_id
    #   The unique identifier of the security requirement pack to remove
    #   requirements from.
    #
    # @option params [required, Array<String>] :security_requirement_names
    #   The list of security requirement names to delete.
    #
    # @return [Types::BatchDeleteSecurityRequirementsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteSecurityRequirementsOutput#deleted_security_requirement_names #deleted_security_requirement_names} => Array&lt;String&gt;
    #   * {Types::BatchDeleteSecurityRequirementsOutput#errors #errors} => Array&lt;Types::BatchSecurityRequirementError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_security_requirements({
    #     pack_id: "SecurityRequirementPackId", # required
    #     security_requirement_names: ["SecurityRequirementName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deleted_security_requirement_names #=> Array
    #   resp.deleted_security_requirement_names[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].security_requirement_name #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeleteSecurityRequirements AWS API Documentation
    #
    # @overload batch_delete_security_requirements(params = {})
    # @param [Hash] params ({})
    def batch_delete_security_requirements(params = {}, options = {})
      req = build_request(:batch_delete_security_requirements, params)
      req.send_request(options)
    end

    # Deletes one or more threat models from an agent space.
    #
    # @option params [required, Array<String>] :threat_model_ids
    #   The list of threat model identifiers to delete.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   models to delete.
    #
    # @return [Types::BatchDeleteThreatModelsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteThreatModelsOutput#deleted #deleted} => Array&lt;String&gt;
    #   * {Types::BatchDeleteThreatModelsOutput#failed #failed} => Array&lt;Types::DeleteThreatModelFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_threat_models({
    #     threat_model_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deleted #=> Array
    #   resp.deleted[0] #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].threat_model_id #=> String
    #   resp.failed[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeleteThreatModels AWS API Documentation
    #
    # @overload batch_delete_threat_models(params = {})
    # @param [Hash] params ({})
    def batch_delete_threat_models(params = {}, options = {})
      req = build_request(:batch_delete_threat_models, params)
      req.send_request(options)
    end

    # Retrieves information about one or more agent spaces.
    #
    # @option params [required, Array<String>] :agent_space_ids
    #   The list of agent space identifiers to retrieve.
    #
    # @return [Types::BatchGetAgentSpacesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetAgentSpacesOutput#agent_spaces #agent_spaces} => Array&lt;Types::AgentSpace&gt;
    #   * {Types::BatchGetAgentSpacesOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_agent_spaces({
    #     agent_space_ids: ["AgentSpaceId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_spaces #=> Array
    #   resp.agent_spaces[0].agent_space_id #=> String
    #   resp.agent_spaces[0].name #=> String
    #   resp.agent_spaces[0].description #=> String
    #   resp.agent_spaces[0].aws_resources.vpcs #=> Array
    #   resp.agent_spaces[0].aws_resources.vpcs[0].vpc_arn #=> String
    #   resp.agent_spaces[0].aws_resources.vpcs[0].security_group_arns #=> Array
    #   resp.agent_spaces[0].aws_resources.vpcs[0].security_group_arns[0] #=> String
    #   resp.agent_spaces[0].aws_resources.vpcs[0].subnet_arns #=> Array
    #   resp.agent_spaces[0].aws_resources.vpcs[0].subnet_arns[0] #=> String
    #   resp.agent_spaces[0].aws_resources.log_groups #=> Array
    #   resp.agent_spaces[0].aws_resources.log_groups[0] #=> String
    #   resp.agent_spaces[0].aws_resources.s3_buckets #=> Array
    #   resp.agent_spaces[0].aws_resources.s3_buckets[0] #=> String
    #   resp.agent_spaces[0].aws_resources.secret_arns #=> Array
    #   resp.agent_spaces[0].aws_resources.secret_arns[0] #=> String
    #   resp.agent_spaces[0].aws_resources.lambda_function_arns #=> Array
    #   resp.agent_spaces[0].aws_resources.lambda_function_arns[0] #=> String
    #   resp.agent_spaces[0].aws_resources.iam_roles #=> Array
    #   resp.agent_spaces[0].aws_resources.iam_roles[0] #=> String
    #   resp.agent_spaces[0].target_domain_ids #=> Array
    #   resp.agent_spaces[0].target_domain_ids[0] #=> String
    #   resp.agent_spaces[0].code_review_settings.controls_scanning #=> Boolean
    #   resp.agent_spaces[0].code_review_settings.general_purpose_scanning #=> Boolean
    #   resp.agent_spaces[0].kms_key_id #=> String
    #   resp.agent_spaces[0].created_at #=> Time
    #   resp.agent_spaces[0].updated_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetAgentSpaces AWS API Documentation
    #
    # @overload batch_get_agent_spaces(params = {})
    # @param [Hash] params ({})
    def batch_get_agent_spaces(params = {}, options = {})
      req = build_request(:batch_get_agent_spaces, params)
      req.send_request(options)
    end

    # Retrieves metadata for one or more artifacts in an agent space.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the artifacts.
    #
    # @option params [required, Array<String>] :artifact_ids
    #   The list of artifact identifiers to retrieve metadata for.
    #
    # @return [Types::BatchGetArtifactMetadataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetArtifactMetadataOutput#artifact_metadata_list #artifact_metadata_list} => Array&lt;Types::ArtifactMetadataItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_artifact_metadata({
    #     agent_space_id: "AgentSpaceId", # required
    #     artifact_ids: ["ArtifactId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.artifact_metadata_list #=> Array
    #   resp.artifact_metadata_list[0].agent_space_id #=> String
    #   resp.artifact_metadata_list[0].artifact_id #=> String
    #   resp.artifact_metadata_list[0].file_name #=> String
    #   resp.artifact_metadata_list[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetArtifactMetadata AWS API Documentation
    #
    # @overload batch_get_artifact_metadata(params = {})
    # @param [Hash] params ({})
    def batch_get_artifact_metadata(params = {}, options = {})
      req = build_request(:batch_get_artifact_metadata, params)
      req.send_request(options)
    end

    # Retrieves information about one or more tasks within a code review
    # job.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the tasks.
    #
    # @option params [required, Array<String>] :code_review_job_task_ids
    #   The list of task identifiers to retrieve.
    #
    # @return [Types::BatchGetCodeReviewJobTasksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCodeReviewJobTasksOutput#code_review_job_tasks #code_review_job_tasks} => Array&lt;Types::CodeReviewJobTask&gt;
    #   * {Types::BatchGetCodeReviewJobTasksOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_code_review_job_tasks({
    #     agent_space_id: "String", # required
    #     code_review_job_task_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review_job_tasks #=> Array
    #   resp.code_review_job_tasks[0].task_id #=> String
    #   resp.code_review_job_tasks[0].code_review_id #=> String
    #   resp.code_review_job_tasks[0].code_review_job_id #=> String
    #   resp.code_review_job_tasks[0].agent_space_id #=> String
    #   resp.code_review_job_tasks[0].title #=> String
    #   resp.code_review_job_tasks[0].description #=> String
    #   resp.code_review_job_tasks[0].categories #=> Array
    #   resp.code_review_job_tasks[0].categories[0].name #=> String
    #   resp.code_review_job_tasks[0].categories[0].is_primary #=> Boolean
    #   resp.code_review_job_tasks[0].risk_type #=> String, one of "CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"
    #   resp.code_review_job_tasks[0].execution_status #=> String, one of "IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"
    #   resp.code_review_job_tasks[0].logs_location.log_type #=> String, one of "CLOUDWATCH"
    #   resp.code_review_job_tasks[0].logs_location.cloud_watch_log.log_group #=> String
    #   resp.code_review_job_tasks[0].logs_location.cloud_watch_log.log_stream #=> String
    #   resp.code_review_job_tasks[0].created_at #=> Time
    #   resp.code_review_job_tasks[0].updated_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetCodeReviewJobTasks AWS API Documentation
    #
    # @overload batch_get_code_review_job_tasks(params = {})
    # @param [Hash] params ({})
    def batch_get_code_review_job_tasks(params = {}, options = {})
      req = build_request(:batch_get_code_review_job_tasks, params)
      req.send_request(options)
    end

    # Retrieves information about one or more code review jobs in an agent
    # space.
    #
    # @option params [required, Array<String>] :code_review_job_ids
    #   The list of code review job identifiers to retrieve.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the code review
    #   jobs.
    #
    # @return [Types::BatchGetCodeReviewJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCodeReviewJobsOutput#code_review_jobs #code_review_jobs} => Array&lt;Types::CodeReviewJob&gt;
    #   * {Types::BatchGetCodeReviewJobsOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_code_review_jobs({
    #     code_review_job_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review_jobs #=> Array
    #   resp.code_review_jobs[0].code_review_job_id #=> String
    #   resp.code_review_jobs[0].code_review_id #=> String
    #   resp.code_review_jobs[0].title #=> String
    #   resp.code_review_jobs[0].overview #=> String
    #   resp.code_review_jobs[0].status #=> String, one of "IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"
    #   resp.code_review_jobs[0].documents #=> Array
    #   resp.code_review_jobs[0].documents[0].s3_location #=> String
    #   resp.code_review_jobs[0].documents[0].artifact_id #=> String
    #   resp.code_review_jobs[0].documents[0].integrated_document.integration_id #=> String
    #   resp.code_review_jobs[0].documents[0].integrated_document.resource_id #=> String
    #   resp.code_review_jobs[0].source_code #=> Array
    #   resp.code_review_jobs[0].source_code[0].s3_location #=> String
    #   resp.code_review_jobs[0].steps #=> Array
    #   resp.code_review_jobs[0].steps[0].name #=> String, one of "PREFLIGHT", "STATIC_ANALYSIS", "PENTEST", "FINALIZING", "VALIDATION"
    #   resp.code_review_jobs[0].steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOPPED"
    #   resp.code_review_jobs[0].steps[0].created_at #=> Time
    #   resp.code_review_jobs[0].steps[0].updated_at #=> Time
    #   resp.code_review_jobs[0].execution_context #=> Array
    #   resp.code_review_jobs[0].execution_context[0].context_type #=> String, one of "ERROR", "CLIENT_ERROR", "WARNING", "INFO"
    #   resp.code_review_jobs[0].execution_context[0].context #=> String
    #   resp.code_review_jobs[0].execution_context[0].timestamp #=> Time
    #   resp.code_review_jobs[0].service_role #=> String
    #   resp.code_review_jobs[0].log_config.log_group #=> String
    #   resp.code_review_jobs[0].log_config.log_stream #=> String
    #   resp.code_review_jobs[0].error_information.code #=> String, one of "CLIENT_ERROR", "INTERNAL_ERROR", "STOPPED_BY_USER"
    #   resp.code_review_jobs[0].error_information.message #=> String
    #   resp.code_review_jobs[0].integrated_repositories #=> Array
    #   resp.code_review_jobs[0].integrated_repositories[0].integration_id #=> String
    #   resp.code_review_jobs[0].integrated_repositories[0].provider_resource_id #=> String
    #   resp.code_review_jobs[0].code_remediation_strategy #=> String, one of "AUTOMATIC", "DISABLED"
    #   resp.code_review_jobs[0].created_at #=> Time
    #   resp.code_review_jobs[0].updated_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetCodeReviewJobs AWS API Documentation
    #
    # @overload batch_get_code_review_jobs(params = {})
    # @param [Hash] params ({})
    def batch_get_code_review_jobs(params = {}, options = {})
      req = build_request(:batch_get_code_review_jobs, params)
      req.send_request(options)
    end

    # Retrieves information about one or more code reviews in an agent
    # space.
    #
    # @option params [required, Array<String>] :code_review_ids
    #   The list of code review identifiers to retrieve.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the code
    #   reviews.
    #
    # @return [Types::BatchGetCodeReviewsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCodeReviewsOutput#code_reviews #code_reviews} => Array&lt;Types::CodeReview&gt;
    #   * {Types::BatchGetCodeReviewsOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_code_reviews({
    #     code_review_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_reviews #=> Array
    #   resp.code_reviews[0].code_review_id #=> String
    #   resp.code_reviews[0].agent_space_id #=> String
    #   resp.code_reviews[0].title #=> String
    #   resp.code_reviews[0].assets.endpoints #=> Array
    #   resp.code_reviews[0].assets.endpoints[0].uri #=> String
    #   resp.code_reviews[0].assets.actors #=> Array
    #   resp.code_reviews[0].assets.actors[0].identifier #=> String
    #   resp.code_reviews[0].assets.actors[0].uris #=> Array
    #   resp.code_reviews[0].assets.actors[0].uris[0] #=> String
    #   resp.code_reviews[0].assets.actors[0].authentication.provider_type #=> String, one of "SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"
    #   resp.code_reviews[0].assets.actors[0].authentication.value #=> String
    #   resp.code_reviews[0].assets.actors[0].description #=> String
    #   resp.code_reviews[0].assets.documents #=> Array
    #   resp.code_reviews[0].assets.documents[0].s3_location #=> String
    #   resp.code_reviews[0].assets.documents[0].artifact_id #=> String
    #   resp.code_reviews[0].assets.documents[0].integrated_document.integration_id #=> String
    #   resp.code_reviews[0].assets.documents[0].integrated_document.resource_id #=> String
    #   resp.code_reviews[0].assets.source_code #=> Array
    #   resp.code_reviews[0].assets.source_code[0].s3_location #=> String
    #   resp.code_reviews[0].assets.integrated_repositories #=> Array
    #   resp.code_reviews[0].assets.integrated_repositories[0].integration_id #=> String
    #   resp.code_reviews[0].assets.integrated_repositories[0].provider_resource_id #=> String
    #   resp.code_reviews[0].service_role #=> String
    #   resp.code_reviews[0].log_config.log_group #=> String
    #   resp.code_reviews[0].log_config.log_stream #=> String
    #   resp.code_reviews[0].code_remediation_strategy #=> String, one of "AUTOMATIC", "DISABLED"
    #   resp.code_reviews[0].validation_mode #=> String, one of "DISABLED", "SIMULATED"
    #   resp.code_reviews[0].created_at #=> Time
    #   resp.code_reviews[0].updated_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetCodeReviews AWS API Documentation
    #
    # @overload batch_get_code_reviews(params = {})
    # @param [Hash] params ({})
    def batch_get_code_reviews(params = {}, options = {})
      req = build_request(:batch_get_code_reviews, params)
      req.send_request(options)
    end

    # Retrieves information about one or more security findings in an agent
    # space.
    #
    # @option params [required, Array<String>] :finding_ids
    #   The list of finding identifiers to retrieve.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the findings.
    #
    # @return [Types::BatchGetFindingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetFindingsOutput#findings #findings} => Array&lt;Types::Finding&gt;
    #   * {Types::BatchGetFindingsOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_findings({
    #     finding_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].finding_id #=> String
    #   resp.findings[0].agent_space_id #=> String
    #   resp.findings[0].pentest_id #=> String
    #   resp.findings[0].pentest_job_id #=> String
    #   resp.findings[0].code_review_id #=> String
    #   resp.findings[0].code_review_job_id #=> String
    #   resp.findings[0].task_id #=> String
    #   resp.findings[0].name #=> String
    #   resp.findings[0].description #=> String
    #   resp.findings[0].status #=> String, one of "ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"
    #   resp.findings[0].risk_type #=> String
    #   resp.findings[0].risk_level #=> String, one of "UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"
    #   resp.findings[0].risk_score #=> String
    #   resp.findings[0].reasoning #=> String
    #   resp.findings[0].confidence #=> String, one of "FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"
    #   resp.findings[0].validation_status #=> String, one of "CONFIRMED", "NOT_REPRODUCED", "VALIDATION_FAILED", "VALIDATING", "NOT_VALIDATED"
    #   resp.findings[0].attack_script #=> String
    #   resp.findings[0].code_remediation_task.status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.findings[0].code_remediation_task.status_reason #=> String
    #   resp.findings[0].code_remediation_task.task_details #=> Array
    #   resp.findings[0].code_remediation_task.task_details[0].repo_name #=> String
    #   resp.findings[0].code_remediation_task.task_details[0].code_diff_link #=> String
    #   resp.findings[0].code_remediation_task.task_details[0].pull_request_link #=> String
    #   resp.findings[0].last_updated_by #=> String
    #   resp.findings[0].customer_note #=> String
    #   resp.findings[0].code_locations #=> Array
    #   resp.findings[0].code_locations[0].file_path #=> String
    #   resp.findings[0].code_locations[0].line_start #=> Integer
    #   resp.findings[0].code_locations[0].line_end #=> Integer
    #   resp.findings[0].code_locations[0].label #=> String
    #   resp.findings[0].verification_script.script_type #=> String
    #   resp.findings[0].verification_script.script_url #=> String
    #   resp.findings[0].verification_script.instructions #=> String
    #   resp.findings[0].verification_script.env_vars #=> Array
    #   resp.findings[0].verification_script.env_vars[0].name #=> String
    #   resp.findings[0].verification_script.env_vars[0].value #=> String
    #   resp.findings[0].alignment_rationale #=> String
    #   resp.findings[0].created_at #=> Time
    #   resp.findings[0].updated_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetFindings AWS API Documentation
    #
    # @overload batch_get_findings(params = {})
    # @param [Hash] params ({})
    def batch_get_findings(params = {}, options = {})
      req = build_request(:batch_get_findings, params)
      req.send_request(options)
    end

    # Retrieves information about one or more tasks within a pentest job.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the tasks.
    #
    # @option params [required, Array<String>] :task_ids
    #   The list of task identifiers to retrieve.
    #
    # @return [Types::BatchGetPentestJobTasksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetPentestJobTasksOutput#tasks #tasks} => Array&lt;Types::Task&gt;
    #   * {Types::BatchGetPentestJobTasksOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_pentest_job_tasks({
    #     agent_space_id: "String", # required
    #     task_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_id #=> String
    #   resp.tasks[0].pentest_id #=> String
    #   resp.tasks[0].pentest_job_id #=> String
    #   resp.tasks[0].agent_space_id #=> String
    #   resp.tasks[0].title #=> String
    #   resp.tasks[0].description #=> String
    #   resp.tasks[0].categories #=> Array
    #   resp.tasks[0].categories[0].name #=> String
    #   resp.tasks[0].categories[0].is_primary #=> Boolean
    #   resp.tasks[0].risk_type #=> String, one of "CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"
    #   resp.tasks[0].target_endpoint.uri #=> String
    #   resp.tasks[0].execution_status #=> String, one of "IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"
    #   resp.tasks[0].logs_location.log_type #=> String, one of "CLOUDWATCH"
    #   resp.tasks[0].logs_location.cloud_watch_log.log_group #=> String
    #   resp.tasks[0].logs_location.cloud_watch_log.log_stream #=> String
    #   resp.tasks[0].task_hours #=> Float
    #   resp.tasks[0].created_at #=> Time
    #   resp.tasks[0].updated_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetPentestJobTasks AWS API Documentation
    #
    # @overload batch_get_pentest_job_tasks(params = {})
    # @param [Hash] params ({})
    def batch_get_pentest_job_tasks(params = {}, options = {})
      req = build_request(:batch_get_pentest_job_tasks, params)
      req.send_request(options)
    end

    # Retrieves information about one or more pentest jobs in an agent
    # space.
    #
    # @option params [required, Array<String>] :pentest_job_ids
    #   The list of pentest job identifiers to retrieve.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the pentest
    #   jobs.
    #
    # @return [Types::BatchGetPentestJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetPentestJobsOutput#pentest_jobs #pentest_jobs} => Array&lt;Types::PentestJob&gt;
    #   * {Types::BatchGetPentestJobsOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_pentest_jobs({
    #     pentest_job_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pentest_jobs #=> Array
    #   resp.pentest_jobs[0].pentest_job_id #=> String
    #   resp.pentest_jobs[0].pentest_id #=> String
    #   resp.pentest_jobs[0].title #=> String
    #   resp.pentest_jobs[0].overview #=> String
    #   resp.pentest_jobs[0].status #=> String, one of "IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"
    #   resp.pentest_jobs[0].endpoints #=> Array
    #   resp.pentest_jobs[0].endpoints[0].uri #=> String
    #   resp.pentest_jobs[0].actors #=> Array
    #   resp.pentest_jobs[0].actors[0].identifier #=> String
    #   resp.pentest_jobs[0].actors[0].uris #=> Array
    #   resp.pentest_jobs[0].actors[0].uris[0] #=> String
    #   resp.pentest_jobs[0].actors[0].authentication.provider_type #=> String, one of "SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"
    #   resp.pentest_jobs[0].actors[0].authentication.value #=> String
    #   resp.pentest_jobs[0].actors[0].description #=> String
    #   resp.pentest_jobs[0].documents #=> Array
    #   resp.pentest_jobs[0].documents[0].s3_location #=> String
    #   resp.pentest_jobs[0].documents[0].artifact_id #=> String
    #   resp.pentest_jobs[0].documents[0].integrated_document.integration_id #=> String
    #   resp.pentest_jobs[0].documents[0].integrated_document.resource_id #=> String
    #   resp.pentest_jobs[0].source_code #=> Array
    #   resp.pentest_jobs[0].source_code[0].s3_location #=> String
    #   resp.pentest_jobs[0].exclude_paths #=> Array
    #   resp.pentest_jobs[0].exclude_paths[0].uri #=> String
    #   resp.pentest_jobs[0].allowed_domains #=> Array
    #   resp.pentest_jobs[0].allowed_domains[0].uri #=> String
    #   resp.pentest_jobs[0].exclude_risk_types #=> Array
    #   resp.pentest_jobs[0].exclude_risk_types[0] #=> String, one of "CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"
    #   resp.pentest_jobs[0].steps #=> Array
    #   resp.pentest_jobs[0].steps[0].name #=> String, one of "PREFLIGHT", "STATIC_ANALYSIS", "PENTEST", "FINALIZING", "VALIDATION"
    #   resp.pentest_jobs[0].steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOPPED"
    #   resp.pentest_jobs[0].steps[0].created_at #=> Time
    #   resp.pentest_jobs[0].steps[0].updated_at #=> Time
    #   resp.pentest_jobs[0].execution_context #=> Array
    #   resp.pentest_jobs[0].execution_context[0].context_type #=> String, one of "ERROR", "CLIENT_ERROR", "WARNING", "INFO"
    #   resp.pentest_jobs[0].execution_context[0].context #=> String
    #   resp.pentest_jobs[0].execution_context[0].timestamp #=> Time
    #   resp.pentest_jobs[0].service_role #=> String
    #   resp.pentest_jobs[0].log_config.log_group #=> String
    #   resp.pentest_jobs[0].log_config.log_stream #=> String
    #   resp.pentest_jobs[0].vpc_config.vpc_arn #=> String
    #   resp.pentest_jobs[0].vpc_config.security_group_arns #=> Array
    #   resp.pentest_jobs[0].vpc_config.security_group_arns[0] #=> String
    #   resp.pentest_jobs[0].vpc_config.subnet_arns #=> Array
    #   resp.pentest_jobs[0].vpc_config.subnet_arns[0] #=> String
    #   resp.pentest_jobs[0].network_traffic_config.rules #=> Array
    #   resp.pentest_jobs[0].network_traffic_config.rules[0].effect #=> String, one of "ALLOW", "DENY"
    #   resp.pentest_jobs[0].network_traffic_config.rules[0].pattern #=> String
    #   resp.pentest_jobs[0].network_traffic_config.rules[0].network_traffic_rule_type #=> String, one of "URL"
    #   resp.pentest_jobs[0].network_traffic_config.custom_headers #=> Array
    #   resp.pentest_jobs[0].network_traffic_config.custom_headers[0].name #=> String
    #   resp.pentest_jobs[0].network_traffic_config.custom_headers[0].value #=> String
    #   resp.pentest_jobs[0].error_information.code #=> String, one of "CLIENT_ERROR", "INTERNAL_ERROR", "STOPPED_BY_USER"
    #   resp.pentest_jobs[0].error_information.message #=> String
    #   resp.pentest_jobs[0].integrated_repositories #=> Array
    #   resp.pentest_jobs[0].integrated_repositories[0].integration_id #=> String
    #   resp.pentest_jobs[0].integrated_repositories[0].provider_resource_id #=> String
    #   resp.pentest_jobs[0].code_remediation_strategy #=> String, one of "AUTOMATIC", "DISABLED"
    #   resp.pentest_jobs[0].clean_up_strategy #=> String, one of "BEST_EFFORT_DELETE", "RETAIN_ALL"
    #   resp.pentest_jobs[0].disable_managed_skills #=> Array
    #   resp.pentest_jobs[0].disable_managed_skills[0] #=> String, one of "FINDING_PERSONALIZATION", "LOGIN_OPTIMIZATION"
    #   resp.pentest_jobs[0].created_at #=> Time
    #   resp.pentest_jobs[0].updated_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetPentestJobs AWS API Documentation
    #
    # @overload batch_get_pentest_jobs(params = {})
    # @param [Hash] params ({})
    def batch_get_pentest_jobs(params = {}, options = {})
      req = build_request(:batch_get_pentest_jobs, params)
      req.send_request(options)
    end

    # Retrieves information about one or more pentests in an agent space.
    #
    # @option params [required, Array<String>] :pentest_ids
    #   The list of pentest identifiers to retrieve.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the pentests.
    #
    # @return [Types::BatchGetPentestsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetPentestsOutput#pentests #pentests} => Array&lt;Types::Pentest&gt;
    #   * {Types::BatchGetPentestsOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_pentests({
    #     pentest_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pentests #=> Array
    #   resp.pentests[0].pentest_id #=> String
    #   resp.pentests[0].agent_space_id #=> String
    #   resp.pentests[0].title #=> String
    #   resp.pentests[0].assets.endpoints #=> Array
    #   resp.pentests[0].assets.endpoints[0].uri #=> String
    #   resp.pentests[0].assets.actors #=> Array
    #   resp.pentests[0].assets.actors[0].identifier #=> String
    #   resp.pentests[0].assets.actors[0].uris #=> Array
    #   resp.pentests[0].assets.actors[0].uris[0] #=> String
    #   resp.pentests[0].assets.actors[0].authentication.provider_type #=> String, one of "SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"
    #   resp.pentests[0].assets.actors[0].authentication.value #=> String
    #   resp.pentests[0].assets.actors[0].description #=> String
    #   resp.pentests[0].assets.documents #=> Array
    #   resp.pentests[0].assets.documents[0].s3_location #=> String
    #   resp.pentests[0].assets.documents[0].artifact_id #=> String
    #   resp.pentests[0].assets.documents[0].integrated_document.integration_id #=> String
    #   resp.pentests[0].assets.documents[0].integrated_document.resource_id #=> String
    #   resp.pentests[0].assets.source_code #=> Array
    #   resp.pentests[0].assets.source_code[0].s3_location #=> String
    #   resp.pentests[0].assets.integrated_repositories #=> Array
    #   resp.pentests[0].assets.integrated_repositories[0].integration_id #=> String
    #   resp.pentests[0].assets.integrated_repositories[0].provider_resource_id #=> String
    #   resp.pentests[0].exclude_risk_types #=> Array
    #   resp.pentests[0].exclude_risk_types[0] #=> String, one of "CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"
    #   resp.pentests[0].service_role #=> String
    #   resp.pentests[0].log_config.log_group #=> String
    #   resp.pentests[0].log_config.log_stream #=> String
    #   resp.pentests[0].vpc_config.vpc_arn #=> String
    #   resp.pentests[0].vpc_config.security_group_arns #=> Array
    #   resp.pentests[0].vpc_config.security_group_arns[0] #=> String
    #   resp.pentests[0].vpc_config.subnet_arns #=> Array
    #   resp.pentests[0].vpc_config.subnet_arns[0] #=> String
    #   resp.pentests[0].network_traffic_config.rules #=> Array
    #   resp.pentests[0].network_traffic_config.rules[0].effect #=> String, one of "ALLOW", "DENY"
    #   resp.pentests[0].network_traffic_config.rules[0].pattern #=> String
    #   resp.pentests[0].network_traffic_config.rules[0].network_traffic_rule_type #=> String, one of "URL"
    #   resp.pentests[0].network_traffic_config.custom_headers #=> Array
    #   resp.pentests[0].network_traffic_config.custom_headers[0].name #=> String
    #   resp.pentests[0].network_traffic_config.custom_headers[0].value #=> String
    #   resp.pentests[0].code_remediation_strategy #=> String, one of "AUTOMATIC", "DISABLED"
    #   resp.pentests[0].clean_up_strategy #=> String, one of "BEST_EFFORT_DELETE", "RETAIN_ALL"
    #   resp.pentests[0].disable_managed_skills #=> Array
    #   resp.pentests[0].disable_managed_skills[0] #=> String, one of "FINDING_PERSONALIZATION", "LOGIN_OPTIMIZATION"
    #   resp.pentests[0].created_at #=> Time
    #   resp.pentests[0].updated_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetPentests AWS API Documentation
    #
    # @overload batch_get_pentests(params = {})
    # @param [Hash] params ({})
    def batch_get_pentests(params = {}, options = {})
      req = build_request(:batch_get_pentests, params)
      req.send_request(options)
    end

    # Batch retrieves security requirements from a pack.
    #
    # @option params [required, String] :pack_id
    #   The unique identifier of the security requirement pack to retrieve
    #   requirements from.
    #
    # @option params [required, Array<String>] :security_requirement_names
    #   The list of security requirement names to retrieve.
    #
    # @return [Types::BatchGetSecurityRequirementsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetSecurityRequirementsOutput#security_requirements #security_requirements} => Array&lt;Types::BatchGetSecurityRequirementResult&gt;
    #   * {Types::BatchGetSecurityRequirementsOutput#errors #errors} => Array&lt;Types::BatchSecurityRequirementError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_security_requirements({
    #     pack_id: "SecurityRequirementPackId", # required
    #     security_requirement_names: ["SecurityRequirementName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_requirements #=> Array
    #   resp.security_requirements[0].pack_id #=> String
    #   resp.security_requirements[0].name #=> String
    #   resp.security_requirements[0].description #=> String
    #   resp.security_requirements[0].domain #=> String
    #   resp.security_requirements[0].evaluation #=> String
    #   resp.security_requirements[0].remediation #=> String
    #   resp.security_requirements[0].created_at #=> Time
    #   resp.security_requirements[0].updated_at #=> Time
    #   resp.errors #=> Array
    #   resp.errors[0].security_requirement_name #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetSecurityRequirements AWS API Documentation
    #
    # @overload batch_get_security_requirements(params = {})
    # @param [Hash] params ({})
    def batch_get_security_requirements(params = {}, options = {})
      req = build_request(:batch_get_security_requirements, params)
      req.send_request(options)
    end

    # Retrieves information about one or more target domains.
    #
    # @option params [required, Array<String>] :target_domain_ids
    #   The list of target domain identifiers to retrieve.
    #
    # @return [Types::BatchGetTargetDomainsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetTargetDomainsOutput#target_domains #target_domains} => Array&lt;Types::TargetDomain&gt;
    #   * {Types::BatchGetTargetDomainsOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_target_domains({
    #     target_domain_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_domains #=> Array
    #   resp.target_domains[0].target_domain_id #=> String
    #   resp.target_domains[0].domain_name #=> String
    #   resp.target_domains[0].verification_status #=> String, one of "PENDING", "VERIFIED", "FAILED", "UNREACHABLE"
    #   resp.target_domains[0].verification_status_reason #=> String
    #   resp.target_domains[0].verification_details.method #=> String, one of "DNS_TXT", "HTTP_ROUTE", "PRIVATE_VPC"
    #   resp.target_domains[0].verification_details.dns_txt.token #=> String
    #   resp.target_domains[0].verification_details.dns_txt.dns_record_name #=> String
    #   resp.target_domains[0].verification_details.dns_txt.dns_record_type #=> String, one of "TXT"
    #   resp.target_domains[0].verification_details.http_route.token #=> String
    #   resp.target_domains[0].verification_details.http_route.route_path #=> String
    #   resp.target_domains[0].created_at #=> Time
    #   resp.target_domains[0].verified_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetTargetDomains AWS API Documentation
    #
    # @overload batch_get_target_domains(params = {})
    # @param [Hash] params ({})
    def batch_get_target_domains(params = {}, options = {})
      req = build_request(:batch_get_target_domains, params)
      req.send_request(options)
    end

    # Retrieves information about one or more tasks within a threat model
    # job.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the tasks.
    #
    # @option params [required, Array<String>] :threat_model_job_task_ids
    #   The list of task identifiers to retrieve.
    #
    # @return [Types::BatchGetThreatModelJobTasksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetThreatModelJobTasksOutput#threat_model_job_tasks #threat_model_job_tasks} => Array&lt;Types::ThreatModelJobTask&gt;
    #   * {Types::BatchGetThreatModelJobTasksOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_threat_model_job_tasks({
    #     agent_space_id: "String", # required
    #     threat_model_job_task_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_model_job_tasks #=> Array
    #   resp.threat_model_job_tasks[0].task_id #=> String
    #   resp.threat_model_job_tasks[0].threat_model_id #=> String
    #   resp.threat_model_job_tasks[0].threat_model_job_id #=> String
    #   resp.threat_model_job_tasks[0].agent_space_id #=> String
    #   resp.threat_model_job_tasks[0].title #=> String
    #   resp.threat_model_job_tasks[0].description #=> String
    #   resp.threat_model_job_tasks[0].execution_status #=> String, one of "IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"
    #   resp.threat_model_job_tasks[0].logs_location.log_type #=> String, one of "CLOUDWATCH"
    #   resp.threat_model_job_tasks[0].logs_location.cloud_watch_log.log_group #=> String
    #   resp.threat_model_job_tasks[0].logs_location.cloud_watch_log.log_stream #=> String
    #   resp.threat_model_job_tasks[0].created_at #=> Time
    #   resp.threat_model_job_tasks[0].updated_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreatModelJobTasks AWS API Documentation
    #
    # @overload batch_get_threat_model_job_tasks(params = {})
    # @param [Hash] params ({})
    def batch_get_threat_model_job_tasks(params = {}, options = {})
      req = build_request(:batch_get_threat_model_job_tasks, params)
      req.send_request(options)
    end

    # Retrieves information about one or more threat model jobs in an agent
    # space.
    #
    # @option params [required, Array<String>] :threat_model_job_ids
    #   The list of threat model job identifiers to retrieve.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   model jobs.
    #
    # @return [Types::BatchGetThreatModelJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetThreatModelJobsOutput#threat_model_jobs #threat_model_jobs} => Array&lt;Types::ThreatModelJob&gt;
    #   * {Types::BatchGetThreatModelJobsOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_threat_model_jobs({
    #     threat_model_job_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_model_jobs #=> Array
    #   resp.threat_model_jobs[0].threat_model_job_id #=> String
    #   resp.threat_model_jobs[0].threat_model_id #=> String
    #   resp.threat_model_jobs[0].agent_space_id #=> String
    #   resp.threat_model_jobs[0].title #=> String
    #   resp.threat_model_jobs[0].status #=> String, one of "IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"
    #   resp.threat_model_jobs[0].created_at #=> Time
    #   resp.threat_model_jobs[0].updated_at #=> Time
    #   resp.threat_model_jobs[0].execution_start_time #=> Time
    #   resp.threat_model_jobs[0].execution_end_time #=> Time
    #   resp.threat_model_jobs[0].source_code #=> Array
    #   resp.threat_model_jobs[0].source_code[0].s3_location #=> String
    #   resp.threat_model_jobs[0].integrated_repositories #=> Array
    #   resp.threat_model_jobs[0].integrated_repositories[0].integration_id #=> String
    #   resp.threat_model_jobs[0].integrated_repositories[0].provider_resource_id #=> String
    #   resp.threat_model_jobs[0].documents #=> Array
    #   resp.threat_model_jobs[0].documents[0].s3_location #=> String
    #   resp.threat_model_jobs[0].documents[0].artifact_id #=> String
    #   resp.threat_model_jobs[0].documents[0].integrated_document.integration_id #=> String
    #   resp.threat_model_jobs[0].documents[0].integrated_document.resource_id #=> String
    #   resp.threat_model_jobs[0].scope_docs #=> Array
    #   resp.threat_model_jobs[0].scope_docs[0].s3_location #=> String
    #   resp.threat_model_jobs[0].scope_docs[0].artifact_id #=> String
    #   resp.threat_model_jobs[0].scope_docs[0].integrated_document.integration_id #=> String
    #   resp.threat_model_jobs[0].scope_docs[0].integrated_document.resource_id #=> String
    #   resp.threat_model_jobs[0].error_information.code #=> String, one of "CLIENT_ERROR", "INTERNAL_ERROR", "STOPPED_BY_USER"
    #   resp.threat_model_jobs[0].error_information.message #=> String
    #   resp.threat_model_jobs[0].system_overview #=> String
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreatModelJobs AWS API Documentation
    #
    # @overload batch_get_threat_model_jobs(params = {})
    # @param [Hash] params ({})
    def batch_get_threat_model_jobs(params = {}, options = {})
      req = build_request(:batch_get_threat_model_jobs, params)
      req.send_request(options)
    end

    # Retrieves information about one or more threat models in an agent
    # space.
    #
    # @option params [required, Array<String>] :threat_model_ids
    #   The list of threat model identifiers to retrieve.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   models.
    #
    # @return [Types::BatchGetThreatModelsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetThreatModelsOutput#threat_models #threat_models} => Array&lt;Types::ThreatModel&gt;
    #   * {Types::BatchGetThreatModelsOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_threat_models({
    #     threat_model_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_models #=> Array
    #   resp.threat_models[0].threat_model_id #=> String
    #   resp.threat_models[0].agent_space_id #=> String
    #   resp.threat_models[0].title #=> String
    #   resp.threat_models[0].description #=> String
    #   resp.threat_models[0].assets.endpoints #=> Array
    #   resp.threat_models[0].assets.endpoints[0].uri #=> String
    #   resp.threat_models[0].assets.actors #=> Array
    #   resp.threat_models[0].assets.actors[0].identifier #=> String
    #   resp.threat_models[0].assets.actors[0].uris #=> Array
    #   resp.threat_models[0].assets.actors[0].uris[0] #=> String
    #   resp.threat_models[0].assets.actors[0].authentication.provider_type #=> String, one of "SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"
    #   resp.threat_models[0].assets.actors[0].authentication.value #=> String
    #   resp.threat_models[0].assets.actors[0].description #=> String
    #   resp.threat_models[0].assets.documents #=> Array
    #   resp.threat_models[0].assets.documents[0].s3_location #=> String
    #   resp.threat_models[0].assets.documents[0].artifact_id #=> String
    #   resp.threat_models[0].assets.documents[0].integrated_document.integration_id #=> String
    #   resp.threat_models[0].assets.documents[0].integrated_document.resource_id #=> String
    #   resp.threat_models[0].assets.source_code #=> Array
    #   resp.threat_models[0].assets.source_code[0].s3_location #=> String
    #   resp.threat_models[0].assets.integrated_repositories #=> Array
    #   resp.threat_models[0].assets.integrated_repositories[0].integration_id #=> String
    #   resp.threat_models[0].assets.integrated_repositories[0].provider_resource_id #=> String
    #   resp.threat_models[0].scope_docs #=> Array
    #   resp.threat_models[0].scope_docs[0].s3_location #=> String
    #   resp.threat_models[0].scope_docs[0].artifact_id #=> String
    #   resp.threat_models[0].scope_docs[0].integrated_document.integration_id #=> String
    #   resp.threat_models[0].scope_docs[0].integrated_document.resource_id #=> String
    #   resp.threat_models[0].service_role #=> String
    #   resp.threat_models[0].log_config.log_group #=> String
    #   resp.threat_models[0].log_config.log_stream #=> String
    #   resp.threat_models[0].created_at #=> Time
    #   resp.threat_models[0].updated_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreatModels AWS API Documentation
    #
    # @overload batch_get_threat_models(params = {})
    # @param [Hash] params ({})
    def batch_get_threat_models(params = {}, options = {})
      req = build_request(:batch_get_threat_models, params)
      req.send_request(options)
    end

    # Retrieves information about one or more threats.
    #
    # @option params [required, Array<String>] :threat_ids
    #   The list of threat identifiers to retrieve.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @return [Types::BatchGetThreatsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetThreatsOutput#threats #threats} => Array&lt;Types::Threat&gt;
    #   * {Types::BatchGetThreatsOutput#not_found #not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_threats({
    #     threat_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.threats #=> Array
    #   resp.threats[0].threat_id #=> String
    #   resp.threats[0].threat_job_id #=> String
    #   resp.threats[0].title #=> String
    #   resp.threats[0].statement #=> String
    #   resp.threats[0].severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"
    #   resp.threats[0].status #=> String, one of "OPEN", "RESOLVED", "DISMISSED"
    #   resp.threats[0].comments #=> String
    #   resp.threats[0].threat_source #=> String
    #   resp.threats[0].prerequisites #=> String
    #   resp.threats[0].threat_action #=> String
    #   resp.threats[0].threat_impact #=> String
    #   resp.threats[0].impacted_goal #=> Array
    #   resp.threats[0].impacted_goal[0] #=> String
    #   resp.threats[0].impacted_assets #=> Array
    #   resp.threats[0].impacted_assets[0] #=> String
    #   resp.threats[0].anchor.kind #=> String
    #   resp.threats[0].anchor.id #=> String
    #   resp.threats[0].anchor.package_id #=> String
    #   resp.threats[0].evidence #=> Array
    #   resp.threats[0].evidence[0].package_id #=> String
    #   resp.threats[0].evidence[0].path #=> String
    #   resp.threats[0].stride #=> Array
    #   resp.threats[0].stride[0] #=> String, one of "SPOOFING", "TAMPERING", "REPUDIATION", "INFORMATION_DISCLOSURE", "DENIAL_OF_SERVICE", "ELEVATION_OF_PRIVILEGE"
    #   resp.threats[0].recommendation #=> String
    #   resp.threats[0].created_by #=> String, one of "CUSTOMER", "AGENT"
    #   resp.threats[0].updated_by #=> String, one of "CUSTOMER", "AGENT"
    #   resp.threats[0].created_at #=> Time
    #   resp.threats[0].updated_at #=> Time
    #   resp.not_found #=> Array
    #   resp.not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreats AWS API Documentation
    #
    # @overload batch_get_threats(params = {})
    # @param [Hash] params ({})
    def batch_get_threats(params = {}, options = {})
      req = build_request(:batch_get_threats, params)
      req.send_request(options)
    end

    # Batch updates security requirements within a customer managed pack.
    #
    # @option params [required, String] :pack_id
    #   The unique identifier of the security requirement pack containing the
    #   requirements to update.
    #
    # @option params [required, Array<Types::UpdateSecurityRequirementEntry>] :security_requirements
    #   The list of security requirement updates to apply.
    #
    # @return [Types::BatchUpdateSecurityRequirementsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateSecurityRequirementsOutput#updated_security_requirement_names #updated_security_requirement_names} => Array&lt;String&gt;
    #   * {Types::BatchUpdateSecurityRequirementsOutput#errors #errors} => Array&lt;Types::BatchSecurityRequirementError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_security_requirements({
    #     pack_id: "SecurityRequirementPackId", # required
    #     security_requirements: [ # required
    #       {
    #         name: "SecurityRequirementName", # required
    #         description: "String",
    #         domain: "String",
    #         evaluation: "String",
    #         remediation: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.updated_security_requirement_names #=> Array
    #   resp.updated_security_requirement_names[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].security_requirement_name #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchUpdateSecurityRequirements AWS API Documentation
    #
    # @overload batch_update_security_requirements(params = {})
    # @param [Hash] params ({})
    def batch_update_security_requirements(params = {}, options = {})
      req = build_request(:batch_update_security_requirements, params)
      req.send_request(options)
    end

    # Creates a new agent space. An agent space is a dedicated workspace for
    # securing a specific application.
    #
    # @option params [required, String] :name
    #   The name of the agent space.
    #
    # @option params [String] :description
    #   A description of the agent space.
    #
    # @option params [Types::AWSResources] :aws_resources
    #   The AWS resources to associate with the agent space.
    #
    # @option params [Array<String>] :target_domain_ids
    #   The list of target domain identifiers to associate with the agent
    #   space.
    #
    # @option params [Types::CodeReviewSettings] :code_review_settings
    #   The code review settings for the agent space.
    #
    # @option params [String] :kms_key_id
    #   The identifier of the AWS KMS key to use for encrypting data in the
    #   agent space.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the agent space.
    #
    # @return [Types::CreateAgentSpaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentSpaceOutput#agent_space_id #agent_space_id} => String
    #   * {Types::CreateAgentSpaceOutput#name #name} => String
    #   * {Types::CreateAgentSpaceOutput#description #description} => String
    #   * {Types::CreateAgentSpaceOutput#aws_resources #aws_resources} => Types::AWSResources
    #   * {Types::CreateAgentSpaceOutput#target_domain_ids #target_domain_ids} => Array&lt;String&gt;
    #   * {Types::CreateAgentSpaceOutput#code_review_settings #code_review_settings} => Types::CodeReviewSettings
    #   * {Types::CreateAgentSpaceOutput#kms_key_id #kms_key_id} => String
    #   * {Types::CreateAgentSpaceOutput#created_at #created_at} => Time
    #   * {Types::CreateAgentSpaceOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent_space({
    #     name: "AgentName", # required
    #     description: "String",
    #     aws_resources: {
    #       vpcs: [
    #         {
    #           vpc_arn: "VpcArn",
    #           security_group_arns: ["SecurityGroupArn"],
    #           subnet_arns: ["SubnetArn"],
    #         },
    #       ],
    #       log_groups: ["LogGroupArn"],
    #       s3_buckets: ["S3BucketArn"],
    #       secret_arns: ["SecretArn"],
    #       lambda_function_arns: ["LambdaFunctionArn"],
    #       iam_roles: ["ServiceRole"],
    #     },
    #     target_domain_ids: ["String"],
    #     code_review_settings: {
    #       controls_scanning: false, # required
    #       general_purpose_scanning: false, # required
    #     },
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_space_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.aws_resources.vpcs #=> Array
    #   resp.aws_resources.vpcs[0].vpc_arn #=> String
    #   resp.aws_resources.vpcs[0].security_group_arns #=> Array
    #   resp.aws_resources.vpcs[0].security_group_arns[0] #=> String
    #   resp.aws_resources.vpcs[0].subnet_arns #=> Array
    #   resp.aws_resources.vpcs[0].subnet_arns[0] #=> String
    #   resp.aws_resources.log_groups #=> Array
    #   resp.aws_resources.log_groups[0] #=> String
    #   resp.aws_resources.s3_buckets #=> Array
    #   resp.aws_resources.s3_buckets[0] #=> String
    #   resp.aws_resources.secret_arns #=> Array
    #   resp.aws_resources.secret_arns[0] #=> String
    #   resp.aws_resources.lambda_function_arns #=> Array
    #   resp.aws_resources.lambda_function_arns[0] #=> String
    #   resp.aws_resources.iam_roles #=> Array
    #   resp.aws_resources.iam_roles[0] #=> String
    #   resp.target_domain_ids #=> Array
    #   resp.target_domain_ids[0] #=> String
    #   resp.code_review_settings.controls_scanning #=> Boolean
    #   resp.code_review_settings.general_purpose_scanning #=> Boolean
    #   resp.kms_key_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateAgentSpace AWS API Documentation
    #
    # @overload create_agent_space(params = {})
    # @param [Hash] params ({})
    def create_agent_space(params = {}, options = {})
      req = build_request(:create_agent_space, params)
      req.send_request(options)
    end

    # Creates a new application. An application is the top-level
    # organizational unit that supports IAM Identity Center integration.
    #
    # @option params [String] :idc_instance_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center instance to
    #   associate with the application.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to associate with the
    #   application.
    #
    # @option params [String] :default_kms_key_id
    #   The identifier of the default AWS KMS key to use for encrypting data
    #   in the application.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the application.
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#application_id #application_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     idc_instance_arn: "IdCInstanceArn",
    #     role_arn: "RoleArn",
    #     default_kms_key_id: "DefaultKmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates a new code review configuration in an agent space. A code
    # review defines the parameters for automated security-focused code
    # analysis.
    #
    # @option params [required, String] :title
    #   The title of the code review.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to create the code review in.
    #
    # @option params [required, Types::Assets] :assets
    #   The assets to include in the code review, such as documents and source
    #   code.
    #
    # @option params [String] :service_role
    #   The IAM service role to use for the code review.
    #
    # @option params [Types::CloudWatchLog] :log_config
    #   The CloudWatch Logs configuration for the code review.
    #
    # @option params [String] :code_remediation_strategy
    #   The code remediation strategy for the code review. Valid values are
    #   AUTOMATIC and DISABLED.
    #
    # @option params [String] :validation_mode
    #   The validation mode for the code review. Valid values are SIMULATED
    #   and DISABLED.
    #
    # @return [Types::CreateCodeReviewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCodeReviewOutput#code_review_id #code_review_id} => String
    #   * {Types::CreateCodeReviewOutput#title #title} => String
    #   * {Types::CreateCodeReviewOutput#created_at #created_at} => Time
    #   * {Types::CreateCodeReviewOutput#updated_at #updated_at} => Time
    #   * {Types::CreateCodeReviewOutput#assets #assets} => Types::Assets
    #   * {Types::CreateCodeReviewOutput#service_role #service_role} => String
    #   * {Types::CreateCodeReviewOutput#log_config #log_config} => Types::CloudWatchLog
    #   * {Types::CreateCodeReviewOutput#agent_space_id #agent_space_id} => String
    #   * {Types::CreateCodeReviewOutput#code_remediation_strategy #code_remediation_strategy} => String
    #   * {Types::CreateCodeReviewOutput#validation_mode #validation_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_code_review({
    #     title: "String", # required
    #     agent_space_id: "String", # required
    #     assets: { # required
    #       endpoints: [
    #         {
    #           uri: "String",
    #         },
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER", # accepts SECRETS_MANAGER, AWS_LAMBDA, AWS_IAM_ROLE, AWS_INTERNAL
    #             value: "String",
    #           },
    #           description: "String",
    #         },
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           },
    #         },
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String",
    #         },
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #         },
    #       ],
    #     },
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String",
    #     },
    #     code_remediation_strategy: "AUTOMATIC", # accepts AUTOMATIC, DISABLED
    #     validation_mode: "DISABLED", # accepts DISABLED, SIMULATED
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review_id #=> String
    #   resp.title #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.assets.endpoints #=> Array
    #   resp.assets.endpoints[0].uri #=> String
    #   resp.assets.actors #=> Array
    #   resp.assets.actors[0].identifier #=> String
    #   resp.assets.actors[0].uris #=> Array
    #   resp.assets.actors[0].uris[0] #=> String
    #   resp.assets.actors[0].authentication.provider_type #=> String, one of "SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"
    #   resp.assets.actors[0].authentication.value #=> String
    #   resp.assets.actors[0].description #=> String
    #   resp.assets.documents #=> Array
    #   resp.assets.documents[0].s3_location #=> String
    #   resp.assets.documents[0].artifact_id #=> String
    #   resp.assets.documents[0].integrated_document.integration_id #=> String
    #   resp.assets.documents[0].integrated_document.resource_id #=> String
    #   resp.assets.source_code #=> Array
    #   resp.assets.source_code[0].s3_location #=> String
    #   resp.assets.integrated_repositories #=> Array
    #   resp.assets.integrated_repositories[0].integration_id #=> String
    #   resp.assets.integrated_repositories[0].provider_resource_id #=> String
    #   resp.service_role #=> String
    #   resp.log_config.log_group #=> String
    #   resp.log_config.log_stream #=> String
    #   resp.agent_space_id #=> String
    #   resp.code_remediation_strategy #=> String, one of "AUTOMATIC", "DISABLED"
    #   resp.validation_mode #=> String, one of "DISABLED", "SIMULATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateCodeReview AWS API Documentation
    #
    # @overload create_code_review(params = {})
    # @param [Hash] params ({})
    def create_code_review(params = {}, options = {})
      req = build_request(:create_code_review, params)
      req.send_request(options)
    end

    # Creates a new integration with a third-party provider, such as GitHub,
    # for code review and remediation.
    #
    # @option params [required, String] :provider
    #   The integration provider. Currently, only GITHUB is supported.
    #
    # @option params [required, Types::ProviderInput] :input
    #   The provider-specific input required to create the integration.
    #
    # @option params [required, String] :integration_display_name
    #   The display name for the integration.
    #
    # @option params [String] :kms_key_id
    #   The identifier of the AWS KMS key to use for encrypting data
    #   associated with the integration.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the integration.
    #
    # @option params [String] :private_connection_name
    #   The name of an active private connection used to reach a self-hosted
    #   provider instance over private networking. Specify this when the
    #   instance is not publicly reachable.
    #
    # @return [Types::CreateIntegrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntegrationOutput#integration_id #integration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration({
    #     provider: "GITHUB", # required, accepts GITHUB, GITLAB, BITBUCKET, CONFLUENCE
    #     input: { # required
    #       github: {
    #         code: "AuthCode", # required
    #         state: "CsrfState", # required
    #         organization_name: "String",
    #         target_url: "TargetUrl",
    #         installation_id: "String",
    #       },
    #       gitlab: {
    #         access_token: "AccessToken", # required
    #         target_url: "TargetUrl",
    #         token_type: "PERSONAL", # required, accepts PERSONAL, GROUP
    #         group_id: "String",
    #       },
    #       bitbucket: {
    #         installation_id: "BitbucketInstallationId", # required
    #         workspace: "BitbucketWorkspace", # required
    #         code: "AuthCode", # required
    #         state: "CsrfState", # required
    #       },
    #       confluence: {
    #         installation_id: "ConfluenceInstallationId", # required
    #         code: "AuthCode", # required
    #         state: "CsrfState", # required
    #         site_url: "ConfluenceSiteUrl", # required
    #       },
    #     },
    #     integration_display_name: "String", # required
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     private_connection_name: "PrivateConnectionName",
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateIntegration AWS API Documentation
    #
    # @overload create_integration(params = {})
    # @param [Hash] params ({})
    def create_integration(params = {}, options = {})
      req = build_request(:create_integration, params)
      req.send_request(options)
    end

    # Creates a new membership, granting a user access to an agent space
    # within an application.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application that contains the agent
    #   space.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to grant access to.
    #
    # @option params [required, String] :membership_id
    #   The unique identifier for the membership.
    #
    # @option params [required, String] :member_type
    #   The type of member. Currently, only USER is supported.
    #
    # @option params [Types::MembershipConfig] :config
    #   The configuration for the membership, such as the user role.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_membership({
    #     application_id: "ApplicationId", # required
    #     agent_space_id: "AgentSpaceId", # required
    #     membership_id: "MembershipId", # required
    #     member_type: "USER", # required, accepts USER
    #     config: {
    #       user: {
    #         role: "MEMBER", # accepts MEMBER
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateMembership AWS API Documentation
    #
    # @overload create_membership(params = {})
    # @param [Hash] params ({})
    def create_membership(params = {}, options = {})
      req = build_request(:create_membership, params)
      req.send_request(options)
    end

    # Creates a new pentest configuration in an agent space. A pentest
    # defines the security test parameters, including target assets, risk
    # type exclusions, and logging configuration.
    #
    # @option params [required, String] :title
    #   The title of the pentest.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to create the pentest in.
    #
    # @option params [Types::Assets] :assets
    #   The assets to include in the pentest, such as endpoints, actors,
    #   documents, and source code.
    #
    # @option params [Array<String>] :exclude_risk_types
    #   The list of risk types to exclude from the pentest.
    #
    # @option params [String] :service_role
    #   The IAM service role to use for the pentest.
    #
    # @option params [Types::CloudWatchLog] :log_config
    #   The CloudWatch Logs configuration for the pentest.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The VPC configuration for the pentest.
    #
    # @option params [Types::NetworkTrafficConfig] :network_traffic_config
    #   The network traffic configuration for the pentest, including custom
    #   headers and traffic rules.
    #
    # @option params [String] :code_remediation_strategy
    #   The code remediation strategy for the pentest. Valid values are
    #   AUTOMATIC and DISABLED.
    #
    # @option params [Array<String>] :disable_managed_skills
    #   A list of managed skills to disable for this pentest. Valid values
    #   include FINDING\_PERSONALIZATION and LOGIN\_OPTIMIZATION.
    #
    # @return [Types::CreatePentestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePentestOutput#pentest_id #pentest_id} => String
    #   * {Types::CreatePentestOutput#title #title} => String
    #   * {Types::CreatePentestOutput#created_at #created_at} => Time
    #   * {Types::CreatePentestOutput#updated_at #updated_at} => Time
    #   * {Types::CreatePentestOutput#assets #assets} => Types::Assets
    #   * {Types::CreatePentestOutput#exclude_risk_types #exclude_risk_types} => Array&lt;String&gt;
    #   * {Types::CreatePentestOutput#service_role #service_role} => String
    #   * {Types::CreatePentestOutput#log_config #log_config} => Types::CloudWatchLog
    #   * {Types::CreatePentestOutput#agent_space_id #agent_space_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pentest({
    #     title: "String", # required
    #     agent_space_id: "String", # required
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String",
    #         },
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER", # accepts SECRETS_MANAGER, AWS_LAMBDA, AWS_IAM_ROLE, AWS_INTERNAL
    #             value: "String",
    #           },
    #           description: "String",
    #         },
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           },
    #         },
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String",
    #         },
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #         },
    #       ],
    #     },
    #     exclude_risk_types: ["CROSS_SITE_SCRIPTING"], # accepts CROSS_SITE_SCRIPTING, DEFAULT_CREDENTIALS, INSECURE_DIRECT_OBJECT_REFERENCE, PRIVILEGE_ESCALATION, SERVER_SIDE_TEMPLATE_INJECTION, COMMAND_INJECTION, CODE_INJECTION, SQL_INJECTION, ARBITRARY_FILE_UPLOAD, INSECURE_DESERIALIZATION, LOCAL_FILE_INCLUSION, INFORMATION_DISCLOSURE, PATH_TRAVERSAL, SERVER_SIDE_REQUEST_FORGERY, JSON_WEB_TOKEN_VULNERABILITIES, XML_EXTERNAL_ENTITY, FILE_DELETION, OTHER, GRAPHQL_VULNERABILITIES, BUSINESS_LOGIC_VULNERABILITIES, CRYPTOGRAPHIC_VULNERABILITIES, DENIAL_OF_SERVICE, FILE_ACCESS, FILE_CREATION, DATABASE_MODIFICATION, DATABASE_ACCESS, OUTBOUND_SERVICE_REQUEST, UNKNOWN
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String",
    #     },
    #     vpc_config: {
    #       vpc_arn: "VpcArn",
    #       security_group_arns: ["SecurityGroupArn"],
    #       subnet_arns: ["SubnetArn"],
    #     },
    #     network_traffic_config: {
    #       rules: [
    #         {
    #           effect: "ALLOW", # accepts ALLOW, DENY
    #           pattern: "String",
    #           network_traffic_rule_type: "URL", # accepts URL
    #         },
    #       ],
    #       custom_headers: [
    #         {
    #           name: "String",
    #           value: "String",
    #         },
    #       ],
    #     },
    #     code_remediation_strategy: "AUTOMATIC", # accepts AUTOMATIC, DISABLED
    #     disable_managed_skills: ["FINDING_PERSONALIZATION"], # accepts FINDING_PERSONALIZATION, LOGIN_OPTIMIZATION
    #   })
    #
    # @example Response structure
    #
    #   resp.pentest_id #=> String
    #   resp.title #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.assets.endpoints #=> Array
    #   resp.assets.endpoints[0].uri #=> String
    #   resp.assets.actors #=> Array
    #   resp.assets.actors[0].identifier #=> String
    #   resp.assets.actors[0].uris #=> Array
    #   resp.assets.actors[0].uris[0] #=> String
    #   resp.assets.actors[0].authentication.provider_type #=> String, one of "SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"
    #   resp.assets.actors[0].authentication.value #=> String
    #   resp.assets.actors[0].description #=> String
    #   resp.assets.documents #=> Array
    #   resp.assets.documents[0].s3_location #=> String
    #   resp.assets.documents[0].artifact_id #=> String
    #   resp.assets.documents[0].integrated_document.integration_id #=> String
    #   resp.assets.documents[0].integrated_document.resource_id #=> String
    #   resp.assets.source_code #=> Array
    #   resp.assets.source_code[0].s3_location #=> String
    #   resp.assets.integrated_repositories #=> Array
    #   resp.assets.integrated_repositories[0].integration_id #=> String
    #   resp.assets.integrated_repositories[0].provider_resource_id #=> String
    #   resp.exclude_risk_types #=> Array
    #   resp.exclude_risk_types[0] #=> String, one of "CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"
    #   resp.service_role #=> String
    #   resp.log_config.log_group #=> String
    #   resp.log_config.log_stream #=> String
    #   resp.agent_space_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreatePentest AWS API Documentation
    #
    # @overload create_pentest(params = {})
    # @param [Hash] params ({})
    def create_pentest(params = {}, options = {})
      req = build_request(:create_pentest, params)
      req.send_request(options)
    end

    # Creates a private connection for reaching a self-hosted provider
    # instance over private networking using Amazon VPC Lattice.
    #
    # @option params [required, String] :private_connection_name
    #   A unique name for the private connection within your account.
    #
    # @option params [required, Types::PrivateConnectionMode] :mode
    #   The configuration for the private connection. Specify either a
    #   service-managed or a self-managed mode.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to attach to the private connection.
    #
    # @return [Types::CreatePrivateConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePrivateConnectionOutput#name #name} => String
    #   * {Types::CreatePrivateConnectionOutput#type #type} => String
    #   * {Types::CreatePrivateConnectionOutput#status #status} => String
    #   * {Types::CreatePrivateConnectionOutput#resource_gateway_id #resource_gateway_id} => String
    #   * {Types::CreatePrivateConnectionOutput#host_address #host_address} => String
    #   * {Types::CreatePrivateConnectionOutput#vpc_id #vpc_id} => String
    #   * {Types::CreatePrivateConnectionOutput#resource_configuration_id #resource_configuration_id} => String
    #   * {Types::CreatePrivateConnectionOutput#certificate_expiry_time #certificate_expiry_time} => Time
    #   * {Types::CreatePrivateConnectionOutput#dns_resolution #dns_resolution} => String
    #   * {Types::CreatePrivateConnectionOutput#failure_message #failure_message} => String
    #   * {Types::CreatePrivateConnectionOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_private_connection({
    #     private_connection_name: "PrivateConnectionName", # required
    #     mode: { # required
    #       service_managed: {
    #         host_address: "HostAddress", # required
    #         vpc_id: "PrivateConnectionVpcId", # required
    #         subnet_ids: ["PrivateConnectionSubnetId"], # required
    #         security_group_ids: ["PrivateConnectionSecurityGroupId"],
    #         ip_address_type: "IPV4", # accepts IPV4, IPV6, DUAL_STACK
    #         ipv4_addresses_per_eni: 1,
    #         port_ranges: ["PortRange"],
    #         certificate: "CertificateChain",
    #         dns_resolution: "PUBLIC", # accepts PUBLIC, IN_VPC
    #       },
    #       self_managed: {
    #         resource_configuration_id: "ResourceConfigurationId", # required
    #         certificate: "CertificateChain",
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.type #=> String, one of "SERVICE_MANAGED", "SELF_MANAGED"
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.resource_gateway_id #=> String
    #   resp.host_address #=> String
    #   resp.vpc_id #=> String
    #   resp.resource_configuration_id #=> String
    #   resp.certificate_expiry_time #=> Time
    #   resp.dns_resolution #=> String, one of "PUBLIC", "IN_VPC"
    #   resp.failure_message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreatePrivateConnection AWS API Documentation
    #
    # @overload create_private_connection(params = {})
    # @param [Hash] params ({})
    def create_private_connection(params = {}, options = {})
      req = build_request(:create_private_connection, params)
      req.send_request(options)
    end

    # Creates a customer managed security requirement pack.
    #
    # @option params [required, String] :name
    #   The name of the security requirement pack.
    #
    # @option params [String] :description
    #   A description of the security requirement pack.
    #
    # @option params [String] :status
    #   The status of the pack. Defaults to ENABLED if not provided.
    #
    # @option params [String] :kms_key_id
    #   The identifier of the AWS KMS key used to encrypt pack contents.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the security requirement pack.
    #
    # @return [Types::CreateSecurityRequirementPackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityRequirementPackOutput#pack_id #pack_id} => String
    #   * {Types::CreateSecurityRequirementPackOutput#status #status} => String
    #   * {Types::CreateSecurityRequirementPackOutput#kms_key_id #kms_key_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_requirement_pack({
    #     name: "SecurityRequirementPackName", # required
    #     description: "String",
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.pack_id #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateSecurityRequirementPack AWS API Documentation
    #
    # @overload create_security_requirement_pack(params = {})
    # @param [Hash] params ({})
    def create_security_requirement_pack(params = {}, options = {})
      req = build_request(:create_security_requirement_pack, params)
      req.send_request(options)
    end

    # Creates a new target domain for penetration testing. A target domain
    # is a web domain that must be registered and verified before it can be
    # tested.
    #
    # @option params [required, String] :target_domain_name
    #   The domain name to register as a target domain.
    #
    # @option params [required, String] :verification_method
    #   The method to use for verifying domain ownership. Valid values are
    #   DNS\_TXT, HTTP\_ROUTE, and PRIVATE\_VPC.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the target domain.
    #
    # @return [Types::CreateTargetDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTargetDomainOutput#target_domain_id #target_domain_id} => String
    #   * {Types::CreateTargetDomainOutput#domain_name #domain_name} => String
    #   * {Types::CreateTargetDomainOutput#verification_status #verification_status} => String
    #   * {Types::CreateTargetDomainOutput#verification_status_reason #verification_status_reason} => String
    #   * {Types::CreateTargetDomainOutput#verification_details #verification_details} => Types::VerificationDetails
    #   * {Types::CreateTargetDomainOutput#created_at #created_at} => Time
    #   * {Types::CreateTargetDomainOutput#verified_at #verified_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_target_domain({
    #     target_domain_name: "String", # required
    #     verification_method: "DNS_TXT", # required, accepts DNS_TXT, HTTP_ROUTE, PRIVATE_VPC
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.target_domain_id #=> String
    #   resp.domain_name #=> String
    #   resp.verification_status #=> String, one of "PENDING", "VERIFIED", "FAILED", "UNREACHABLE"
    #   resp.verification_status_reason #=> String
    #   resp.verification_details.method #=> String, one of "DNS_TXT", "HTTP_ROUTE", "PRIVATE_VPC"
    #   resp.verification_details.dns_txt.token #=> String
    #   resp.verification_details.dns_txt.dns_record_name #=> String
    #   resp.verification_details.dns_txt.dns_record_type #=> String, one of "TXT"
    #   resp.verification_details.http_route.token #=> String
    #   resp.verification_details.http_route.route_path #=> String
    #   resp.created_at #=> Time
    #   resp.verified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateTargetDomain AWS API Documentation
    #
    # @overload create_target_domain(params = {})
    # @param [Hash] params ({})
    def create_target_domain(params = {}, options = {})
      req = build_request(:create_target_domain, params)
      req.send_request(options)
    end

    # Creates a new threat under a threat model job.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [required, String] :threat_job_id
    #   The unique identifier of the threat model job the threat belongs to.
    #
    # @option params [String] :title
    #   A short title summarizing the threat.
    #
    # @option params [String] :statement
    #   The natural-language threat statement.
    #
    # @option params [String] :severity
    #   The severity level of the threat.
    #
    # @option params [String] :comments
    #   Optional customer comment on the threat.
    #
    # @option params [Array<String>] :stride
    #   The STRIDE categories applicable to this threat.
    #
    # @option params [String] :threat_source
    #   The actor or origin of the threat.
    #
    # @option params [String] :prerequisites
    #   The conditions required for the threat to be exploitable.
    #
    # @option params [String] :threat_action
    #   What the threat source can do.
    #
    # @option params [String] :threat_impact
    #   The direct consequence of the threat action.
    #
    # @option params [Array<String>] :impacted_goal
    #   The security goals affected by the threat.
    #
    # @option params [Array<String>] :impacted_assets
    #   The specific assets affected by the threat.
    #
    # @option params [Types::ThreatAnchorShape] :anchor
    #   The DFD element this threat is anchored to.
    #
    # @option params [Array<Types::ThreatEvidenceShape>] :evidence
    #   The source code files supporting the threat.
    #
    # @option params [String] :recommendation
    #   The recommended mitigation guidance for this threat.
    #
    # @return [Types::CreateThreatOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThreatOutput#threat_id #threat_id} => String
    #   * {Types::CreateThreatOutput#threat_job_id #threat_job_id} => String
    #   * {Types::CreateThreatOutput#title #title} => String
    #   * {Types::CreateThreatOutput#statement #statement} => String
    #   * {Types::CreateThreatOutput#severity #severity} => String
    #   * {Types::CreateThreatOutput#status #status} => String
    #   * {Types::CreateThreatOutput#comments #comments} => String
    #   * {Types::CreateThreatOutput#stride #stride} => Array&lt;String&gt;
    #   * {Types::CreateThreatOutput#threat_source #threat_source} => String
    #   * {Types::CreateThreatOutput#prerequisites #prerequisites} => String
    #   * {Types::CreateThreatOutput#threat_action #threat_action} => String
    #   * {Types::CreateThreatOutput#threat_impact #threat_impact} => String
    #   * {Types::CreateThreatOutput#impacted_goal #impacted_goal} => Array&lt;String&gt;
    #   * {Types::CreateThreatOutput#impacted_assets #impacted_assets} => Array&lt;String&gt;
    #   * {Types::CreateThreatOutput#anchor #anchor} => Types::ThreatAnchorShape
    #   * {Types::CreateThreatOutput#evidence #evidence} => Array&lt;Types::ThreatEvidenceShape&gt;
    #   * {Types::CreateThreatOutput#recommendation #recommendation} => String
    #   * {Types::CreateThreatOutput#created_by #created_by} => String
    #   * {Types::CreateThreatOutput#updated_by #updated_by} => String
    #   * {Types::CreateThreatOutput#created_at #created_at} => Time
    #   * {Types::CreateThreatOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_threat({
    #     agent_space_id: "String", # required
    #     threat_job_id: "String", # required
    #     title: "String",
    #     statement: "String",
    #     severity: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFO
    #     comments: "String",
    #     stride: ["SPOOFING"], # accepts SPOOFING, TAMPERING, REPUDIATION, INFORMATION_DISCLOSURE, DENIAL_OF_SERVICE, ELEVATION_OF_PRIVILEGE
    #     threat_source: "String",
    #     prerequisites: "String",
    #     threat_action: "String",
    #     threat_impact: "String",
    #     impacted_goal: ["String"],
    #     impacted_assets: ["String"],
    #     anchor: {
    #       kind: "String",
    #       id: "String",
    #       package_id: "String",
    #     },
    #     evidence: [
    #       {
    #         package_id: "String",
    #         path: "String",
    #       },
    #     ],
    #     recommendation: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_id #=> String
    #   resp.threat_job_id #=> String
    #   resp.title #=> String
    #   resp.statement #=> String
    #   resp.severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"
    #   resp.status #=> String, one of "OPEN", "RESOLVED", "DISMISSED"
    #   resp.comments #=> String
    #   resp.stride #=> Array
    #   resp.stride[0] #=> String, one of "SPOOFING", "TAMPERING", "REPUDIATION", "INFORMATION_DISCLOSURE", "DENIAL_OF_SERVICE", "ELEVATION_OF_PRIVILEGE"
    #   resp.threat_source #=> String
    #   resp.prerequisites #=> String
    #   resp.threat_action #=> String
    #   resp.threat_impact #=> String
    #   resp.impacted_goal #=> Array
    #   resp.impacted_goal[0] #=> String
    #   resp.impacted_assets #=> Array
    #   resp.impacted_assets[0] #=> String
    #   resp.anchor.kind #=> String
    #   resp.anchor.id #=> String
    #   resp.anchor.package_id #=> String
    #   resp.evidence #=> Array
    #   resp.evidence[0].package_id #=> String
    #   resp.evidence[0].path #=> String
    #   resp.recommendation #=> String
    #   resp.created_by #=> String, one of "CUSTOMER", "AGENT"
    #   resp.updated_by #=> String, one of "CUSTOMER", "AGENT"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateThreat AWS API Documentation
    #
    # @overload create_threat(params = {})
    # @param [Hash] params ({})
    def create_threat(params = {}, options = {})
      req = build_request(:create_threat, params)
      req.send_request(options)
    end

    # Creates a new threat model configuration in an agent space. A threat
    # model defines the parameters for automated threat analysis.
    #
    # @option params [required, String] :title
    #   The title of the threat model.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to create the threat model
    #   in.
    #
    # @option params [String] :description
    #   A description of the application or system being threat modeled.
    #
    # @option params [Types::Assets] :assets
    #   The assets to include in the threat model.
    #
    # @option params [Array<Types::DocumentInfo>] :scope_docs
    #   The scoped documents for the agent to focus on during threat modeling.
    #
    # @option params [required, String] :service_role
    #   The IAM service role to use for the threat model.
    #
    # @option params [Types::CloudWatchLog] :log_config
    #   The CloudWatch Logs configuration for the threat model.
    #
    # @option params [Types::ReportDestination] :report_destination
    #   The destination for publishing scan reports to an integrated document
    #   provider.
    #
    # @return [Types::CreateThreatModelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThreatModelOutput#threat_model_id #threat_model_id} => String
    #   * {Types::CreateThreatModelOutput#title #title} => String
    #   * {Types::CreateThreatModelOutput#agent_space_id #agent_space_id} => String
    #   * {Types::CreateThreatModelOutput#description #description} => String
    #   * {Types::CreateThreatModelOutput#assets #assets} => Types::Assets
    #   * {Types::CreateThreatModelOutput#scope_docs #scope_docs} => Array&lt;Types::DocumentInfo&gt;
    #   * {Types::CreateThreatModelOutput#service_role #service_role} => String
    #   * {Types::CreateThreatModelOutput#log_config #log_config} => Types::CloudWatchLog
    #   * {Types::CreateThreatModelOutput#created_at #created_at} => Time
    #   * {Types::CreateThreatModelOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_threat_model({
    #     title: "String", # required
    #     agent_space_id: "String", # required
    #     description: "String",
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String",
    #         },
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER", # accepts SECRETS_MANAGER, AWS_LAMBDA, AWS_IAM_ROLE, AWS_INTERNAL
    #             value: "String",
    #           },
    #           description: "String",
    #         },
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           },
    #         },
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String",
    #         },
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #         },
    #       ],
    #     },
    #     scope_docs: [
    #       {
    #         s3_location: "String",
    #         artifact_id: "String",
    #         integrated_document: {
    #           integration_id: "String", # required
    #           resource_id: "String", # required
    #         },
    #       },
    #     ],
    #     service_role: "ServiceRole", # required
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String",
    #     },
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_model_id #=> String
    #   resp.title #=> String
    #   resp.agent_space_id #=> String
    #   resp.description #=> String
    #   resp.assets.endpoints #=> Array
    #   resp.assets.endpoints[0].uri #=> String
    #   resp.assets.actors #=> Array
    #   resp.assets.actors[0].identifier #=> String
    #   resp.assets.actors[0].uris #=> Array
    #   resp.assets.actors[0].uris[0] #=> String
    #   resp.assets.actors[0].authentication.provider_type #=> String, one of "SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"
    #   resp.assets.actors[0].authentication.value #=> String
    #   resp.assets.actors[0].description #=> String
    #   resp.assets.documents #=> Array
    #   resp.assets.documents[0].s3_location #=> String
    #   resp.assets.documents[0].artifact_id #=> String
    #   resp.assets.documents[0].integrated_document.integration_id #=> String
    #   resp.assets.documents[0].integrated_document.resource_id #=> String
    #   resp.assets.source_code #=> Array
    #   resp.assets.source_code[0].s3_location #=> String
    #   resp.assets.integrated_repositories #=> Array
    #   resp.assets.integrated_repositories[0].integration_id #=> String
    #   resp.assets.integrated_repositories[0].provider_resource_id #=> String
    #   resp.scope_docs #=> Array
    #   resp.scope_docs[0].s3_location #=> String
    #   resp.scope_docs[0].artifact_id #=> String
    #   resp.scope_docs[0].integrated_document.integration_id #=> String
    #   resp.scope_docs[0].integrated_document.resource_id #=> String
    #   resp.service_role #=> String
    #   resp.log_config.log_group #=> String
    #   resp.log_config.log_stream #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateThreatModel AWS API Documentation
    #
    # @overload create_threat_model(params = {})
    # @param [Hash] params ({})
    def create_threat_model(params = {}, options = {})
      req = build_request(:create_threat_model, params)
      req.send_request(options)
    end

    # Deletes an agent space and all of its associated resources, including
    # pentests, findings, and artifacts.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to delete.
    #
    # @return [Types::DeleteAgentSpaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAgentSpaceOutput#agent_space_id #agent_space_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_space({
    #     agent_space_id: "AgentSpaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_space_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteAgentSpace AWS API Documentation
    #
    # @overload delete_agent_space(params = {})
    # @param [Hash] params ({})
    def delete_agent_space(params = {}, options = {})
      req = build_request(:delete_agent_space, params)
      req.send_request(options)
    end

    # Deletes an application and its associated configuration, including IAM
    # Identity Center settings.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes an artifact from an agent space.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the artifact.
    #
    # @option params [required, String] :artifact_id
    #   The unique identifier of the artifact to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_artifact({
    #     agent_space_id: "AgentSpaceId", # required
    #     artifact_id: "ArtifactId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteArtifact AWS API Documentation
    #
    # @overload delete_artifact(params = {})
    # @param [Hash] params ({})
    def delete_artifact(params = {}, options = {})
      req = build_request(:delete_artifact, params)
      req.send_request(options)
    end

    # Deletes an integration with a third-party provider.
    #
    # @option params [required, String] :integration_id
    #   The unique identifier of the integration to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration({
    #     integration_id: "IntegrationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteIntegration AWS API Documentation
    #
    # @overload delete_integration(params = {})
    # @param [Hash] params ({})
    def delete_integration(params = {}, options = {})
      req = build_request(:delete_integration, params)
      req.send_request(options)
    end

    # Deletes a membership, revoking a user's access to an agent space.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application that contains the agent
    #   space.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to revoke access from.
    #
    # @option params [required, String] :membership_id
    #   The unique identifier of the membership to delete.
    #
    # @option params [String] :member_type
    #   The type of member to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_membership({
    #     application_id: "ApplicationId", # required
    #     agent_space_id: "AgentSpaceId", # required
    #     membership_id: "MembershipId", # required
    #     member_type: "USER", # accepts USER
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteMembership AWS API Documentation
    #
    # @overload delete_membership(params = {})
    # @param [Hash] params ({})
    def delete_membership(params = {}, options = {})
      req = build_request(:delete_membership, params)
      req.send_request(options)
    end

    # Deletes a private connection.
    #
    # @option params [required, String] :private_connection_name
    #   The name of the private connection to delete.
    #
    # @return [Types::DeletePrivateConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePrivateConnectionOutput#name #name} => String
    #   * {Types::DeletePrivateConnectionOutput#type #type} => String
    #   * {Types::DeletePrivateConnectionOutput#status #status} => String
    #   * {Types::DeletePrivateConnectionOutput#resource_gateway_id #resource_gateway_id} => String
    #   * {Types::DeletePrivateConnectionOutput#host_address #host_address} => String
    #   * {Types::DeletePrivateConnectionOutput#vpc_id #vpc_id} => String
    #   * {Types::DeletePrivateConnectionOutput#resource_configuration_id #resource_configuration_id} => String
    #   * {Types::DeletePrivateConnectionOutput#certificate_expiry_time #certificate_expiry_time} => Time
    #   * {Types::DeletePrivateConnectionOutput#dns_resolution #dns_resolution} => String
    #   * {Types::DeletePrivateConnectionOutput#failure_message #failure_message} => String
    #   * {Types::DeletePrivateConnectionOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_private_connection({
    #     private_connection_name: "PrivateConnectionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.type #=> String, one of "SERVICE_MANAGED", "SELF_MANAGED"
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.resource_gateway_id #=> String
    #   resp.host_address #=> String
    #   resp.vpc_id #=> String
    #   resp.resource_configuration_id #=> String
    #   resp.certificate_expiry_time #=> Time
    #   resp.dns_resolution #=> String, one of "PUBLIC", "IN_VPC"
    #   resp.failure_message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeletePrivateConnection AWS API Documentation
    #
    # @overload delete_private_connection(params = {})
    # @param [Hash] params ({})
    def delete_private_connection(params = {}, options = {})
      req = build_request(:delete_private_connection, params)
      req.send_request(options)
    end

    # Deletes a customer managed security requirement pack and all its
    # associated security requirements.
    #
    # @option params [required, String] :pack_id
    #   The unique identifier of the security requirement pack to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_requirement_pack({
    #     pack_id: "SecurityRequirementPackId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteSecurityRequirementPack AWS API Documentation
    #
    # @overload delete_security_requirement_pack(params = {})
    # @param [Hash] params ({})
    def delete_security_requirement_pack(params = {}, options = {})
      req = build_request(:delete_security_requirement_pack, params)
      req.send_request(options)
    end

    # Deletes a target domain registration. After deletion, the domain can
    # no longer be used for penetration testing.
    #
    # @option params [required, String] :target_domain_id
    #   The unique identifier of the target domain to delete.
    #
    # @return [Types::DeleteTargetDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTargetDomainOutput#target_domain_id #target_domain_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_target_domain({
    #     target_domain_id: "TargetDomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_domain_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteTargetDomain AWS API Documentation
    #
    # @overload delete_target_domain(params = {})
    # @param [Hash] params ({})
    def delete_target_domain(params = {}, options = {})
      req = build_request(:delete_target_domain, params)
      req.send_request(options)
    end

    # Retrieves the details of a private connection.
    #
    # @option params [required, String] :private_connection_name
    #   The name of the private connection to describe.
    #
    # @return [Types::DescribePrivateConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePrivateConnectionOutput#name #name} => String
    #   * {Types::DescribePrivateConnectionOutput#type #type} => String
    #   * {Types::DescribePrivateConnectionOutput#status #status} => String
    #   * {Types::DescribePrivateConnectionOutput#resource_gateway_id #resource_gateway_id} => String
    #   * {Types::DescribePrivateConnectionOutput#host_address #host_address} => String
    #   * {Types::DescribePrivateConnectionOutput#vpc_id #vpc_id} => String
    #   * {Types::DescribePrivateConnectionOutput#resource_configuration_id #resource_configuration_id} => String
    #   * {Types::DescribePrivateConnectionOutput#certificate_expiry_time #certificate_expiry_time} => Time
    #   * {Types::DescribePrivateConnectionOutput#dns_resolution #dns_resolution} => String
    #   * {Types::DescribePrivateConnectionOutput#failure_message #failure_message} => String
    #   * {Types::DescribePrivateConnectionOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_private_connection({
    #     private_connection_name: "PrivateConnectionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.type #=> String, one of "SERVICE_MANAGED", "SELF_MANAGED"
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.resource_gateway_id #=> String
    #   resp.host_address #=> String
    #   resp.vpc_id #=> String
    #   resp.resource_configuration_id #=> String
    #   resp.certificate_expiry_time #=> Time
    #   resp.dns_resolution #=> String, one of "PUBLIC", "IN_VPC"
    #   resp.failure_message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DescribePrivateConnection AWS API Documentation
    #
    # @overload describe_private_connection(params = {})
    # @param [Hash] params ({})
    def describe_private_connection(params = {}, options = {})
      req = build_request(:describe_private_connection, params)
      req.send_request(options)
    end

    # Retrieves information about an application.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application to retrieve.
    #
    # @return [Types::GetApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationResponse#application_id #application_id} => String
    #   * {Types::GetApplicationResponse#domain #domain} => String
    #   * {Types::GetApplicationResponse#application_name #application_name} => String
    #   * {Types::GetApplicationResponse#idc_configuration #idc_configuration} => Types::IdCConfiguration
    #   * {Types::GetApplicationResponse#role_arn #role_arn} => String
    #   * {Types::GetApplicationResponse#default_kms_key_id #default_kms_key_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.domain #=> String
    #   resp.application_name #=> String
    #   resp.idc_configuration.idc_application_arn #=> String
    #   resp.idc_configuration.idc_instance_arn #=> String
    #   resp.role_arn #=> String
    #   resp.default_kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Retrieves an artifact from an agent space.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the artifact.
    #
    # @option params [required, String] :artifact_id
    #   The unique identifier of the artifact to retrieve.
    #
    # @return [Types::GetArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetArtifactOutput#agent_space_id #agent_space_id} => String
    #   * {Types::GetArtifactOutput#artifact_id #artifact_id} => String
    #   * {Types::GetArtifactOutput#artifact #artifact} => Types::Artifact
    #   * {Types::GetArtifactOutput#file_name #file_name} => String
    #   * {Types::GetArtifactOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_artifact({
    #     agent_space_id: "AgentSpaceId", # required
    #     artifact_id: "ArtifactId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_space_id #=> String
    #   resp.artifact_id #=> String
    #   resp.artifact.contents #=> String
    #   resp.artifact.type #=> String, one of "TXT", "PNG", "JPEG", "MD", "PDF", "DOCX", "DOC", "JSON", "YAML"
    #   resp.file_name #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetArtifact AWS API Documentation
    #
    # @overload get_artifact(params = {})
    # @param [Hash] params ({})
    def get_artifact(params = {}, options = {})
      req = build_request(:get_artifact, params)
      req.send_request(options)
    end

    # Retrieves information about an integration.
    #
    # @option params [required, String] :integration_id
    #   The unique identifier of the integration to retrieve.
    #
    # @return [Types::GetIntegrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntegrationOutput#integration_id #integration_id} => String
    #   * {Types::GetIntegrationOutput#installation_id #installation_id} => String
    #   * {Types::GetIntegrationOutput#provider #provider} => String
    #   * {Types::GetIntegrationOutput#provider_type #provider_type} => String
    #   * {Types::GetIntegrationOutput#display_name #display_name} => String
    #   * {Types::GetIntegrationOutput#kms_key_id #kms_key_id} => String
    #   * {Types::GetIntegrationOutput#target_url #target_url} => String
    #   * {Types::GetIntegrationOutput#private_connection_name #private_connection_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration({
    #     integration_id: "IntegrationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_id #=> String
    #   resp.installation_id #=> String
    #   resp.provider #=> String, one of "GITHUB", "GITLAB", "BITBUCKET", "CONFLUENCE"
    #   resp.provider_type #=> String, one of "SOURCE_CODE", "DOCUMENTATION"
    #   resp.display_name #=> String
    #   resp.kms_key_id #=> String
    #   resp.target_url #=> String
    #   resp.private_connection_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetIntegration AWS API Documentation
    #
    # @overload get_integration(params = {})
    # @param [Hash] params ({})
    def get_integration(params = {}, options = {})
      req = build_request(:get_integration, params)
      req.send_request(options)
    end

    # Retrieves information about a security requirement pack.
    #
    # @option params [required, String] :pack_id
    #   The unique identifier of the security requirement pack to retrieve.
    #
    # @return [Types::GetSecurityRequirementPackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSecurityRequirementPackOutput#pack_id #pack_id} => String
    #   * {Types::GetSecurityRequirementPackOutput#name #name} => String
    #   * {Types::GetSecurityRequirementPackOutput#description #description} => String
    #   * {Types::GetSecurityRequirementPackOutput#vendor_name #vendor_name} => String
    #   * {Types::GetSecurityRequirementPackOutput#management_type #management_type} => String
    #   * {Types::GetSecurityRequirementPackOutput#status #status} => String
    #   * {Types::GetSecurityRequirementPackOutput#import_status #import_status} => String
    #   * {Types::GetSecurityRequirementPackOutput#created_at #created_at} => Time
    #   * {Types::GetSecurityRequirementPackOutput#updated_at #updated_at} => Time
    #   * {Types::GetSecurityRequirementPackOutput#kms_key_id #kms_key_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_security_requirement_pack({
    #     pack_id: "SecurityRequirementPackId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pack_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.vendor_name #=> String
    #   resp.management_type #=> String, one of "AWS_MANAGED", "CUSTOMER_MANAGED"
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.import_status #=> String, one of "PENDING", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetSecurityRequirementPack AWS API Documentation
    #
    # @overload get_security_requirement_pack(params = {})
    # @param [Hash] params ({})
    def get_security_requirement_pack(params = {}, options = {})
      req = build_request(:get_security_requirement_pack, params)
      req.send_request(options)
    end

    # Imports security requirements from uploaded documents into a customer
    # managed security requirement pack. The import process asynchronously
    # extracts and generates structured security requirements from the
    # provided source files.
    #
    # @option params [required, String] :pack_id
    #   The unique identifier of the security requirement pack to import
    #   requirements into.
    #
    # @option params [required, Types::ImportSource] :input
    #   The import source containing the documents to extract security
    #   requirements from.
    #
    # @return [Types::ImportSecurityRequirementsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportSecurityRequirementsOutput#pack_id #pack_id} => String
    #   * {Types::ImportSecurityRequirementsOutput#import_status #import_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_security_requirements({
    #     pack_id: "SecurityRequirementPackId", # required
    #     input: { # required
    #       documents: [
    #         {
    #           name: "SecurityRequirementArtifactName", # required
    #           format: "MD", # required, accepts MD, PDF, TXT, DOCX, DOC
    #           content: "data", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.pack_id #=> String
    #   resp.import_status #=> String, one of "PENDING", "IN_PROGRESS", "FAILED", "COMPLETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ImportSecurityRequirements AWS API Documentation
    #
    # @overload import_security_requirements(params = {})
    # @param [Hash] params ({})
    def import_security_requirements(params = {}, options = {})
      req = build_request(:import_security_requirements, params)
      req.send_request(options)
    end

    # Initiates the OAuth registration flow with a third-party provider.
    # Returns a redirect URL and CSRF state token for completing the
    # authorization.
    #
    # @option params [required, String] :provider
    #   The provider to initiate registration with. Currently, only GITHUB is
    #   supported.
    #
    # @return [Types::InitiateProviderRegistrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateProviderRegistrationOutput#redirect_to #redirect_to} => String
    #   * {Types::InitiateProviderRegistrationOutput#csrf_state #csrf_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_provider_registration({
    #     provider: "GITHUB", # required, accepts GITHUB, GITLAB, BITBUCKET, CONFLUENCE
    #   })
    #
    # @example Response structure
    #
    #   resp.redirect_to #=> String
    #   resp.csrf_state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/InitiateProviderRegistration AWS API Documentation
    #
    # @overload initiate_provider_registration(params = {})
    # @param [Hash] params ({})
    def initiate_provider_registration(params = {}, options = {})
      req = build_request(:initiate_provider_registration, params)
      req.send_request(options)
    end

    # Returns a paginated list of agent space summaries in your account.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListAgentSpacesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentSpacesOutput#agent_space_summaries #agent_space_summaries} => Array&lt;Types::AgentSpaceSummary&gt;
    #   * {Types::ListAgentSpacesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_spaces({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_space_summaries #=> Array
    #   resp.agent_space_summaries[0].agent_space_id #=> String
    #   resp.agent_space_summaries[0].name #=> String
    #   resp.agent_space_summaries[0].created_at #=> Time
    #   resp.agent_space_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListAgentSpaces AWS API Documentation
    #
    # @overload list_agent_spaces(params = {})
    # @param [Hash] params ({})
    def list_agent_spaces(params = {}, options = {})
      req = build_request(:list_agent_spaces, params)
      req.send_request(options)
    end

    # Returns a paginated list of application summaries in your account.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
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
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.application_summaries #=> Array
    #   resp.application_summaries[0].application_id #=> String
    #   resp.application_summaries[0].application_name #=> String
    #   resp.application_summaries[0].domain #=> String
    #   resp.application_summaries[0].default_kms_key_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Returns a paginated list of artifact summaries for the specified agent
    # space.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to list artifacts for.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListArtifactsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListArtifactsOutput#artifact_summaries #artifact_summaries} => Array&lt;Types::ArtifactSummary&gt;
    #   * {Types::ListArtifactsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_artifacts({
    #     agent_space_id: "AgentSpaceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.artifact_summaries #=> Array
    #   resp.artifact_summaries[0].artifact_id #=> String
    #   resp.artifact_summaries[0].file_name #=> String
    #   resp.artifact_summaries[0].artifact_type #=> String, one of "TXT", "PNG", "JPEG", "MD", "PDF", "DOCX", "DOC", "JSON", "YAML"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListArtifacts AWS API Documentation
    #
    # @overload list_artifacts(params = {})
    # @param [Hash] params ({})
    def list_artifacts(params = {}, options = {})
      req = build_request(:list_artifacts, params)
      req.send_request(options)
    end

    # Returns a paginated list of task summaries for the specified code
    # review job, optionally filtered by step name or category.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :code_review_job_id
    #   The unique identifier of the code review job to list tasks for.
    #
    # @option params [String] :step_name
    #   Filter tasks by step name.
    #
    # @option params [String] :category_name
    #   Filter tasks by category name.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @return [Types::ListCodeReviewJobTasksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeReviewJobTasksOutput#code_review_job_task_summaries #code_review_job_task_summaries} => Array&lt;Types::CodeReviewJobTaskSummary&gt;
    #   * {Types::ListCodeReviewJobTasksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_review_job_tasks({
    #     agent_space_id: "String", # required
    #     max_results: 1,
    #     code_review_job_id: "String",
    #     step_name: "PREFLIGHT", # accepts PREFLIGHT, STATIC_ANALYSIS, PENTEST, FINALIZING, VALIDATION
    #     category_name: "String",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review_job_task_summaries #=> Array
    #   resp.code_review_job_task_summaries[0].task_id #=> String
    #   resp.code_review_job_task_summaries[0].code_review_id #=> String
    #   resp.code_review_job_task_summaries[0].code_review_job_id #=> String
    #   resp.code_review_job_task_summaries[0].agent_space_id #=> String
    #   resp.code_review_job_task_summaries[0].title #=> String
    #   resp.code_review_job_task_summaries[0].risk_type #=> String, one of "CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"
    #   resp.code_review_job_task_summaries[0].execution_status #=> String, one of "IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"
    #   resp.code_review_job_task_summaries[0].created_at #=> Time
    #   resp.code_review_job_task_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListCodeReviewJobTasks AWS API Documentation
    #
    # @overload list_code_review_job_tasks(params = {})
    # @param [Hash] params ({})
    def list_code_review_job_tasks(params = {}, options = {})
      req = build_request(:list_code_review_job_tasks, params)
      req.send_request(options)
    end

    # Returns a paginated list of code review job summaries for the
    # specified code review configuration.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [required, String] :code_review_id
    #   The unique identifier of the code review to list jobs for.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @return [Types::ListCodeReviewJobsForCodeReviewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeReviewJobsForCodeReviewOutput#code_review_job_summaries #code_review_job_summaries} => Array&lt;Types::CodeReviewJobSummary&gt;
    #   * {Types::ListCodeReviewJobsForCodeReviewOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_review_jobs_for_code_review({
    #     max_results: 1,
    #     code_review_id: "String", # required
    #     agent_space_id: "String", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review_job_summaries #=> Array
    #   resp.code_review_job_summaries[0].code_review_job_id #=> String
    #   resp.code_review_job_summaries[0].code_review_id #=> String
    #   resp.code_review_job_summaries[0].title #=> String
    #   resp.code_review_job_summaries[0].status #=> String, one of "IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"
    #   resp.code_review_job_summaries[0].created_at #=> Time
    #   resp.code_review_job_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListCodeReviewJobsForCodeReview AWS API Documentation
    #
    # @overload list_code_review_jobs_for_code_review(params = {})
    # @param [Hash] params ({})
    def list_code_review_jobs_for_code_review(params = {}, options = {})
      req = build_request(:list_code_review_jobs_for_code_review, params)
      req.send_request(options)
    end

    # Returns a paginated list of code review summaries for the specified
    # agent space.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to list code reviews for.
    #
    # @return [Types::ListCodeReviewsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeReviewsOutput#code_review_summaries #code_review_summaries} => Array&lt;Types::CodeReviewSummary&gt;
    #   * {Types::ListCodeReviewsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_reviews({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review_summaries #=> Array
    #   resp.code_review_summaries[0].code_review_id #=> String
    #   resp.code_review_summaries[0].agent_space_id #=> String
    #   resp.code_review_summaries[0].title #=> String
    #   resp.code_review_summaries[0].created_at #=> Time
    #   resp.code_review_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListCodeReviews AWS API Documentation
    #
    # @overload list_code_reviews(params = {})
    # @param [Hash] params ({})
    def list_code_reviews(params = {}, options = {})
      req = build_request(:list_code_reviews, params)
      req.send_request(options)
    end

    # Returns a paginated list of endpoints discovered during a pentest job
    # execution.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [required, String] :pentest_job_id
    #   The unique identifier of the pentest job to list discovered endpoints
    #   for.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [String] :prefix
    #   A prefix to filter discovered endpoints by URI.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @return [Types::ListDiscoveredEndpointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDiscoveredEndpointsOutput#discovered_endpoints #discovered_endpoints} => Array&lt;Types::DiscoveredEndpoint&gt;
    #   * {Types::ListDiscoveredEndpointsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discovered_endpoints({
    #     max_results: 1,
    #     pentest_job_id: "String", # required
    #     agent_space_id: "String", # required
    #     prefix: "String",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.discovered_endpoints #=> Array
    #   resp.discovered_endpoints[0].uri #=> String
    #   resp.discovered_endpoints[0].pentest_job_id #=> String
    #   resp.discovered_endpoints[0].task_id #=> String
    #   resp.discovered_endpoints[0].agent_space_id #=> String
    #   resp.discovered_endpoints[0].evidence #=> String
    #   resp.discovered_endpoints[0].operation #=> String
    #   resp.discovered_endpoints[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListDiscoveredEndpoints AWS API Documentation
    #
    # @overload list_discovered_endpoints(params = {})
    # @param [Hash] params ({})
    def list_discovered_endpoints(params = {}, options = {})
      req = build_request(:list_discovered_endpoints, params)
      req.send_request(options)
    end

    # Lists the security findings for a pentest job.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :pentest_job_id
    #   The unique identifier of the pentest job to list findings for.
    #
    # @option params [String] :code_review_job_id
    #   The unique identifier of the code review job to list findings for.
    #   Mutually exclusive with pentestJobId.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @option params [String] :risk_type
    #   Filter findings by risk type.
    #
    # @option params [String] :risk_level
    #   Filter findings by risk level.
    #
    # @option params [String] :status
    #   Filter findings by status.
    #
    # @option params [String] :confidence
    #   Filter findings by confidence level.
    #
    # @option params [String] :name
    #   Filter findings by name.
    #
    # @return [Types::ListFindingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingsOutput#findings_summaries #findings_summaries} => Array&lt;Types::FindingSummary&gt;
    #   * {Types::ListFindingsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings({
    #     max_results: 1,
    #     pentest_job_id: "String",
    #     code_review_job_id: "String",
    #     agent_space_id: "String", # required
    #     next_token: "NextToken",
    #     risk_type: "String",
    #     risk_level: "UNKNOWN", # accepts UNKNOWN, INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #     status: "ACTIVE", # accepts ACTIVE, RESOLVED, ACCEPTED, FALSE_POSITIVE
    #     confidence: "FALSE_POSITIVE", # accepts FALSE_POSITIVE, UNCONFIRMED, LOW, MEDIUM, HIGH
    #     name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.findings_summaries #=> Array
    #   resp.findings_summaries[0].finding_id #=> String
    #   resp.findings_summaries[0].agent_space_id #=> String
    #   resp.findings_summaries[0].pentest_id #=> String
    #   resp.findings_summaries[0].pentest_job_id #=> String
    #   resp.findings_summaries[0].code_review_id #=> String
    #   resp.findings_summaries[0].code_review_job_id #=> String
    #   resp.findings_summaries[0].name #=> String
    #   resp.findings_summaries[0].status #=> String, one of "ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"
    #   resp.findings_summaries[0].risk_type #=> String
    #   resp.findings_summaries[0].risk_level #=> String, one of "UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"
    #   resp.findings_summaries[0].confidence #=> String, one of "FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"
    #   resp.findings_summaries[0].validation_status #=> String, one of "CONFIRMED", "NOT_REPRODUCED", "VALIDATION_FAILED", "VALIDATING", "NOT_VALIDATED"
    #   resp.findings_summaries[0].created_at #=> Time
    #   resp.findings_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListFindings AWS API Documentation
    #
    # @overload list_findings(params = {})
    # @param [Hash] params ({})
    def list_findings(params = {}, options = {})
      req = build_request(:list_findings, params)
      req.send_request(options)
    end

    # Lists the integrated resources for an agent space, optionally filtered
    # by integration or resource type.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to list integrated resources
    #   for.
    #
    # @option params [String] :integration_id
    #   The unique identifier of the integration to filter by.
    #
    # @option params [String] :resource_type
    #   The type of resource to filter by.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListIntegratedResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIntegratedResourcesOutput#integrated_resource_summaries #integrated_resource_summaries} => Array&lt;Types::IntegratedResourceSummary&gt;
    #   * {Types::ListIntegratedResourcesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_integrated_resources({
    #     agent_space_id: "AgentSpaceId", # required
    #     integration_id: "IntegrationId",
    #     resource_type: "CODE_REPOSITORY", # accepts CODE_REPOSITORY, DOCUMENT
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.integrated_resource_summaries #=> Array
    #   resp.integrated_resource_summaries[0].integration_id #=> String
    #   resp.integrated_resource_summaries[0].resource.github_repository.name #=> String
    #   resp.integrated_resource_summaries[0].resource.github_repository.provider_resource_id #=> String
    #   resp.integrated_resource_summaries[0].resource.github_repository.owner #=> String
    #   resp.integrated_resource_summaries[0].resource.github_repository.access_type #=> String, one of "PRIVATE", "PUBLIC"
    #   resp.integrated_resource_summaries[0].resource.gitlab_repository.name #=> String
    #   resp.integrated_resource_summaries[0].resource.gitlab_repository.provider_resource_id #=> String
    #   resp.integrated_resource_summaries[0].resource.gitlab_repository.namespace #=> String
    #   resp.integrated_resource_summaries[0].resource.gitlab_repository.access_type #=> String, one of "PRIVATE", "PUBLIC"
    #   resp.integrated_resource_summaries[0].resource.bitbucket_repository.name #=> String
    #   resp.integrated_resource_summaries[0].resource.bitbucket_repository.provider_resource_id #=> String
    #   resp.integrated_resource_summaries[0].resource.bitbucket_repository.workspace #=> String
    #   resp.integrated_resource_summaries[0].resource.bitbucket_repository.access_type #=> String, one of "PRIVATE", "PUBLIC"
    #   resp.integrated_resource_summaries[0].resource.confluence_document.name #=> String
    #   resp.integrated_resource_summaries[0].resource.confluence_document.provider_resource_id #=> String
    #   resp.integrated_resource_summaries[0].resource.confluence_document.space_key #=> String
    #   resp.integrated_resource_summaries[0].resource.confluence_document.page_id #=> String
    #   resp.integrated_resource_summaries[0].resource.confluence_document.title #=> String
    #   resp.integrated_resource_summaries[0].resource.confluence_document.space_title #=> String
    #   resp.integrated_resource_summaries[0].capabilities.github.leave_comments #=> Boolean
    #   resp.integrated_resource_summaries[0].capabilities.github.remediate_code #=> Boolean
    #   resp.integrated_resource_summaries[0].capabilities.gitlab.leave_comments #=> Boolean
    #   resp.integrated_resource_summaries[0].capabilities.gitlab.remediate_code #=> Boolean
    #   resp.integrated_resource_summaries[0].capabilities.bitbucket.leave_comments #=> Boolean
    #   resp.integrated_resource_summaries[0].capabilities.bitbucket.remediate_code #=> Boolean
    #   resp.integrated_resource_summaries[0].capabilities.confluence.fetch_document #=> Boolean
    #   resp.integrated_resource_summaries[0].capabilities.confluence.create_document #=> Boolean
    #   resp.integrated_resource_summaries[0].capabilities.confluence.update_document #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListIntegratedResources AWS API Documentation
    #
    # @overload list_integrated_resources(params = {})
    # @param [Hash] params ({})
    def list_integrated_resources(params = {}, options = {})
      req = build_request(:list_integrated_resources, params)
      req.send_request(options)
    end

    # Lists the integrations in your account, optionally filtered by
    # provider or provider type.
    #
    # @option params [Types::IntegrationFilter] :filter
    #   A filter to apply to the list of integrations.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListIntegrationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIntegrationsOutput#integration_summaries #integration_summaries} => Array&lt;Types::IntegrationSummary&gt;
    #   * {Types::ListIntegrationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_integrations({
    #     filter: {
    #       provider: "GITHUB", # accepts GITHUB, GITLAB, BITBUCKET, CONFLUENCE
    #       provider_type: "SOURCE_CODE", # accepts SOURCE_CODE, DOCUMENTATION
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_summaries #=> Array
    #   resp.integration_summaries[0].integration_id #=> String
    #   resp.integration_summaries[0].installation_id #=> String
    #   resp.integration_summaries[0].provider #=> String, one of "GITHUB", "GITLAB", "BITBUCKET", "CONFLUENCE"
    #   resp.integration_summaries[0].provider_type #=> String, one of "SOURCE_CODE", "DOCUMENTATION"
    #   resp.integration_summaries[0].display_name #=> String
    #   resp.integration_summaries[0].target_url #=> String
    #   resp.integration_summaries[0].private_connection_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListIntegrations AWS API Documentation
    #
    # @overload list_integrations(params = {})
    # @param [Hash] params ({})
    def list_integrations(params = {}, options = {})
      req = build_request(:list_integrations, params)
      req.send_request(options)
    end

    # Returns a paginated list of membership summaries for the specified
    # agent space within an application.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application that contains the agent
    #   space.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to list memberships for.
    #
    # @option params [String] :member_type
    #   Filter memberships by member type.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @return [Types::ListMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembershipsResponse#membership_summaries #membership_summaries} => Array&lt;Types::MembershipSummary&gt;
    #   * {Types::ListMembershipsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_memberships({
    #     application_id: "ApplicationId", # required
    #     agent_space_id: "AgentSpaceId", # required
    #     member_type: "USER", # accepts USER, ALL
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.membership_summaries #=> Array
    #   resp.membership_summaries[0].membership_id #=> String
    #   resp.membership_summaries[0].application_id #=> String
    #   resp.membership_summaries[0].agent_space_id #=> String
    #   resp.membership_summaries[0].member_type #=> String, one of "USER"
    #   resp.membership_summaries[0].config.user.role #=> String, one of "MEMBER"
    #   resp.membership_summaries[0].metadata.user.username #=> String
    #   resp.membership_summaries[0].metadata.user.email #=> String
    #   resp.membership_summaries[0].created_at #=> Time
    #   resp.membership_summaries[0].updated_at #=> Time
    #   resp.membership_summaries[0].created_by #=> String
    #   resp.membership_summaries[0].updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListMemberships AWS API Documentation
    #
    # @overload list_memberships(params = {})
    # @param [Hash] params ({})
    def list_memberships(params = {}, options = {})
      req = build_request(:list_memberships, params)
      req.send_request(options)
    end

    # Returns a paginated list of task summaries for the specified pentest
    # job, optionally filtered by step name or category.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :pentest_job_id
    #   The unique identifier of the pentest job to list tasks for.
    #
    # @option params [String] :step_name
    #   Filter tasks by step name. Valid values include PREFLIGHT,
    #   STATIC\_ANALYSIS, PENTEST, VALIDATION, and FINALIZING.
    #
    # @option params [String] :category_name
    #   Filter tasks by category name.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @return [Types::ListPentestJobTasksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPentestJobTasksOutput#task_summaries #task_summaries} => Array&lt;Types::TaskSummary&gt;
    #   * {Types::ListPentestJobTasksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pentest_job_tasks({
    #     agent_space_id: "String", # required
    #     max_results: 1,
    #     pentest_job_id: "String",
    #     step_name: "PREFLIGHT", # accepts PREFLIGHT, STATIC_ANALYSIS, PENTEST, FINALIZING, VALIDATION
    #     category_name: "String",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_summaries #=> Array
    #   resp.task_summaries[0].task_id #=> String
    #   resp.task_summaries[0].pentest_id #=> String
    #   resp.task_summaries[0].pentest_job_id #=> String
    #   resp.task_summaries[0].agent_space_id #=> String
    #   resp.task_summaries[0].title #=> String
    #   resp.task_summaries[0].risk_type #=> String, one of "CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"
    #   resp.task_summaries[0].execution_status #=> String, one of "IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"
    #   resp.task_summaries[0].task_hours #=> Float
    #   resp.task_summaries[0].created_at #=> Time
    #   resp.task_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPentestJobTasks AWS API Documentation
    #
    # @overload list_pentest_job_tasks(params = {})
    # @param [Hash] params ({})
    def list_pentest_job_tasks(params = {}, options = {})
      req = build_request(:list_pentest_job_tasks, params)
      req.send_request(options)
    end

    # Returns a paginated list of pentest job summaries for the specified
    # pentest configuration.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [required, String] :pentest_id
    #   The unique identifier of the pentest to list jobs for.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @return [Types::ListPentestJobsForPentestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPentestJobsForPentestOutput#pentest_job_summaries #pentest_job_summaries} => Array&lt;Types::PentestJobSummary&gt;
    #   * {Types::ListPentestJobsForPentestOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pentest_jobs_for_pentest({
    #     max_results: 1,
    #     pentest_id: "String", # required
    #     agent_space_id: "String", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.pentest_job_summaries #=> Array
    #   resp.pentest_job_summaries[0].pentest_job_id #=> String
    #   resp.pentest_job_summaries[0].pentest_id #=> String
    #   resp.pentest_job_summaries[0].title #=> String
    #   resp.pentest_job_summaries[0].status #=> String, one of "IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"
    #   resp.pentest_job_summaries[0].created_at #=> Time
    #   resp.pentest_job_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPentestJobsForPentest AWS API Documentation
    #
    # @overload list_pentest_jobs_for_pentest(params = {})
    # @param [Hash] params ({})
    def list_pentest_jobs_for_pentest(params = {}, options = {})
      req = build_request(:list_pentest_jobs_for_pentest, params)
      req.send_request(options)
    end

    # Returns a paginated list of pentest summaries for the specified agent
    # space.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to list pentests for.
    #
    # @return [Types::ListPentestsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPentestsOutput#pentest_summaries #pentest_summaries} => Array&lt;Types::PentestSummary&gt;
    #   * {Types::ListPentestsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pentests({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pentest_summaries #=> Array
    #   resp.pentest_summaries[0].pentest_id #=> String
    #   resp.pentest_summaries[0].agent_space_id #=> String
    #   resp.pentest_summaries[0].title #=> String
    #   resp.pentest_summaries[0].created_at #=> Time
    #   resp.pentest_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPentests AWS API Documentation
    #
    # @overload list_pentests(params = {})
    # @param [Hash] params ({})
    def list_pentests(params = {}, options = {})
      req = build_request(:list_pentests, params)
      req.send_request(options)
    end

    # Lists the private connections in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of private connections to return in a single
    #   response.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListPrivateConnectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrivateConnectionsOutput#private_connections #private_connections} => Array&lt;Types::PrivateConnectionSummary&gt;
    #   * {Types::ListPrivateConnectionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_private_connections({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.private_connections #=> Array
    #   resp.private_connections[0].name #=> String
    #   resp.private_connections[0].type #=> String, one of "SERVICE_MANAGED", "SELF_MANAGED"
    #   resp.private_connections[0].status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.private_connections[0].resource_gateway_id #=> String
    #   resp.private_connections[0].host_address #=> String
    #   resp.private_connections[0].vpc_id #=> String
    #   resp.private_connections[0].resource_configuration_id #=> String
    #   resp.private_connections[0].certificate_expiry_time #=> Time
    #   resp.private_connections[0].dns_resolution #=> String, one of "PUBLIC", "IN_VPC"
    #   resp.private_connections[0].failure_message #=> String
    #   resp.private_connections[0].tags #=> Hash
    #   resp.private_connections[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPrivateConnections AWS API Documentation
    #
    # @overload list_private_connections(params = {})
    # @param [Hash] params ({})
    def list_private_connections(params = {}, options = {})
      req = build_request(:list_private_connections, params)
      req.send_request(options)
    end

    # Lists all security requirement packs in the caller's account.
    #
    # @option params [Types::ListSecurityRequirementPackFilter] :filter
    #   The filter criteria for listing security requirement packs.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous request to retrieve the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single request.
    #
    # @return [Types::ListSecurityRequirementPacksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityRequirementPacksOutput#security_requirement_pack_summaries #security_requirement_pack_summaries} => Array&lt;Types::SecurityRequirementPackSummary&gt;
    #   * {Types::ListSecurityRequirementPacksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_requirement_packs({
    #     filter: {
    #       management_type: "AWS_MANAGED", # accepts AWS_MANAGED, CUSTOMER_MANAGED
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_requirement_pack_summaries #=> Array
    #   resp.security_requirement_pack_summaries[0].pack_id #=> String
    #   resp.security_requirement_pack_summaries[0].name #=> String
    #   resp.security_requirement_pack_summaries[0].description #=> String
    #   resp.security_requirement_pack_summaries[0].vendor_name #=> String
    #   resp.security_requirement_pack_summaries[0].management_type #=> String, one of "AWS_MANAGED", "CUSTOMER_MANAGED"
    #   resp.security_requirement_pack_summaries[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.security_requirement_pack_summaries[0].created_at #=> Time
    #   resp.security_requirement_pack_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListSecurityRequirementPacks AWS API Documentation
    #
    # @overload list_security_requirement_packs(params = {})
    # @param [Hash] params ({})
    def list_security_requirement_packs(params = {}, options = {})
      req = build_request(:list_security_requirement_packs, params)
      req.send_request(options)
    end

    # Lists security requirements within a pack.
    #
    # @option params [required, String] :pack_id
    #   The unique identifier of the security requirement pack to list
    #   requirements for.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous request to retrieve the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single request.
    #
    # @return [Types::ListSecurityRequirementsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityRequirementsOutput#security_requirement_summaries #security_requirement_summaries} => Array&lt;Types::SecurityRequirementSummary&gt;
    #   * {Types::ListSecurityRequirementsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_requirements({
    #     pack_id: "SecurityRequirementPackId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_requirement_summaries #=> Array
    #   resp.security_requirement_summaries[0].pack_id #=> String
    #   resp.security_requirement_summaries[0].name #=> String
    #   resp.security_requirement_summaries[0].description #=> String
    #   resp.security_requirement_summaries[0].created_at #=> Time
    #   resp.security_requirement_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListSecurityRequirements AWS API Documentation
    #
    # @overload list_security_requirements(params = {})
    # @param [Hash] params ({})
    def list_security_requirements(params = {}, options = {})
      req = build_request(:list_security_requirements, params)
      req.send_request(options)
    end

    # Returns the tags associated with the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a paginated list of target domain summaries in your account.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListTargetDomainsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetDomainsOutput#target_domain_summaries #target_domain_summaries} => Array&lt;Types::TargetDomainSummary&gt;
    #   * {Types::ListTargetDomainsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_target_domains({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.target_domain_summaries #=> Array
    #   resp.target_domain_summaries[0].target_domain_id #=> String
    #   resp.target_domain_summaries[0].domain_name #=> String
    #   resp.target_domain_summaries[0].verification_status #=> String, one of "PENDING", "VERIFIED", "FAILED", "UNREACHABLE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListTargetDomains AWS API Documentation
    #
    # @overload list_target_domains(params = {})
    # @param [Hash] params ({})
    def list_target_domains(params = {}, options = {})
      req = build_request(:list_target_domains, params)
      req.send_request(options)
    end

    # Returns a paginated list of task summaries for the specified threat
    # model job.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [required, String] :threat_model_job_id
    #   The unique identifier of the threat model job to list tasks for.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #
    # @return [Types::ListThreatModelJobTasksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThreatModelJobTasksOutput#threat_model_job_task_summaries #threat_model_job_task_summaries} => Array&lt;Types::ThreatModelJobTaskSummary&gt;
    #   * {Types::ListThreatModelJobTasksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_threat_model_job_tasks({
    #     agent_space_id: "String", # required
    #     max_results: 1,
    #     threat_model_job_id: "String", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_model_job_task_summaries #=> Array
    #   resp.threat_model_job_task_summaries[0].task_id #=> String
    #   resp.threat_model_job_task_summaries[0].threat_model_id #=> String
    #   resp.threat_model_job_task_summaries[0].threat_model_job_id #=> String
    #   resp.threat_model_job_task_summaries[0].agent_space_id #=> String
    #   resp.threat_model_job_task_summaries[0].title #=> String
    #   resp.threat_model_job_task_summaries[0].execution_status #=> String, one of "IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"
    #   resp.threat_model_job_task_summaries[0].created_at #=> Time
    #   resp.threat_model_job_task_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreatModelJobTasks AWS API Documentation
    #
    # @overload list_threat_model_job_tasks(params = {})
    # @param [Hash] params ({})
    def list_threat_model_job_tasks(params = {}, options = {})
      req = build_request(:list_threat_model_job_tasks, params)
      req.send_request(options)
    end

    # Returns a paginated list of threat model job summaries for the
    # specified threat model.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [required, String] :threat_model_id
    #   The unique identifier of the threat model to list jobs for.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #
    # @return [Types::ListThreatModelJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThreatModelJobsOutput#threat_model_job_summaries #threat_model_job_summaries} => Array&lt;Types::ThreatModelJobSummary&gt;
    #   * {Types::ListThreatModelJobsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_threat_model_jobs({
    #     max_results: 1,
    #     threat_model_id: "String", # required
    #     agent_space_id: "String", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_model_job_summaries #=> Array
    #   resp.threat_model_job_summaries[0].threat_model_job_id #=> String
    #   resp.threat_model_job_summaries[0].threat_model_id #=> String
    #   resp.threat_model_job_summaries[0].agent_space_id #=> String
    #   resp.threat_model_job_summaries[0].title #=> String
    #   resp.threat_model_job_summaries[0].status #=> String, one of "IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"
    #   resp.threat_model_job_summaries[0].created_at #=> Time
    #   resp.threat_model_job_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreatModelJobs AWS API Documentation
    #
    # @overload list_threat_model_jobs(params = {})
    # @param [Hash] params ({})
    def list_threat_model_jobs(params = {}, options = {})
      req = build_request(:list_threat_model_jobs, params)
      req.send_request(options)
    end

    # Returns a paginated list of threat model summaries for the specified
    # agent space.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to list threat models for.
    #
    # @return [Types::ListThreatModelsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThreatModelsOutput#threat_model_summaries #threat_model_summaries} => Array&lt;Types::ThreatModelSummary&gt;
    #   * {Types::ListThreatModelsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_threat_models({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     agent_space_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_model_summaries #=> Array
    #   resp.threat_model_summaries[0].threat_model_id #=> String
    #   resp.threat_model_summaries[0].agent_space_id #=> String
    #   resp.threat_model_summaries[0].title #=> String
    #   resp.threat_model_summaries[0].created_at #=> Time
    #   resp.threat_model_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreatModels AWS API Documentation
    #
    # @overload list_threat_models(params = {})
    # @param [Hash] params ({})
    def list_threat_models(params = {}, options = {})
      req = build_request(:list_threat_models, params)
      req.send_request(options)
    end

    # Returns a paginated list of threats for a threat model job.
    #
    # @option params [required, String] :threat_job_id
    #   The unique identifier of the threat model job to list threats for.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListThreatsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThreatsOutput#threats #threats} => Array&lt;Types::ThreatSummary&gt;
    #   * {Types::ListThreatsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_threats({
    #     threat_job_id: "String", # required
    #     agent_space_id: "String", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.threats #=> Array
    #   resp.threats[0].threat_id #=> String
    #   resp.threats[0].threat_job_id #=> String
    #   resp.threats[0].title #=> String
    #   resp.threats[0].statement #=> String
    #   resp.threats[0].severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"
    #   resp.threats[0].status #=> String, one of "OPEN", "RESOLVED", "DISMISSED"
    #   resp.threats[0].stride #=> Array
    #   resp.threats[0].stride[0] #=> String, one of "SPOOFING", "TAMPERING", "REPUDIATION", "INFORMATION_DISCLOSURE", "DENIAL_OF_SERVICE", "ELEVATION_OF_PRIVILEGE"
    #   resp.threats[0].created_by #=> String, one of "CUSTOMER", "AGENT"
    #   resp.threats[0].updated_by #=> String, one of "CUSTOMER", "AGENT"
    #   resp.threats[0].created_at #=> Time
    #   resp.threats[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreats AWS API Documentation
    #
    # @overload list_threats(params = {})
    # @param [Hash] params ({})
    def list_threats(params = {}, options = {})
      req = build_request(:list_threats, params)
      req.send_request(options)
    end

    # Initiates code remediation for one or more security findings. This
    # creates pull requests in integrated repositories to fix the identified
    # vulnerabilities.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [String] :pentest_job_id
    #   The unique identifier of the pentest job that produced the findings.
    #   Mutually exclusive with `codeReviewJobId`.
    #
    # @option params [String] :code_review_job_id
    #   The unique identifier of the code review job that produced the
    #   findings. Mutually exclusive with `pentestJobId`.
    #
    # @option params [required, Array<String>] :finding_ids
    #   The list of finding identifiers to initiate code remediation for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_code_remediation({
    #     agent_space_id: "String", # required
    #     pentest_job_id: "String",
    #     code_review_job_id: "String",
    #     finding_ids: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartCodeRemediation AWS API Documentation
    #
    # @overload start_code_remediation(params = {})
    # @param [Hash] params ({})
    def start_code_remediation(params = {}, options = {})
      req = build_request(:start_code_remediation, params)
      req.send_request(options)
    end

    # Starts a new code review job for a code review configuration. The job
    # executes the security-focused code analysis defined in the code
    # review.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [required, String] :code_review_id
    #   The unique identifier of the code review to start a job for.
    #
    # @option params [Types::DiffSource] :diff_source
    #   Source of the diff for a differential scan. When present, the job
    #   analyzes only the changed lines instead of performing a full scan.
    #
    # @return [Types::StartCodeReviewJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCodeReviewJobOutput#title #title} => String
    #   * {Types::StartCodeReviewJobOutput#status #status} => String
    #   * {Types::StartCodeReviewJobOutput#created_at #created_at} => Time
    #   * {Types::StartCodeReviewJobOutput#updated_at #updated_at} => Time
    #   * {Types::StartCodeReviewJobOutput#code_review_id #code_review_id} => String
    #   * {Types::StartCodeReviewJobOutput#code_review_job_id #code_review_job_id} => String
    #   * {Types::StartCodeReviewJobOutput#agent_space_id #agent_space_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_code_review_job({
    #     agent_space_id: "String", # required
    #     code_review_id: "String", # required
    #     diff_source: {
    #       s3_uri: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.title #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.code_review_id #=> String
    #   resp.code_review_job_id #=> String
    #   resp.agent_space_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartCodeReviewJob AWS API Documentation
    #
    # @overload start_code_review_job(params = {})
    # @param [Hash] params ({})
    def start_code_review_job(params = {}, options = {})
      req = build_request(:start_code_review_job, params)
      req.send_request(options)
    end

    # Starts a new pentest job for a pentest configuration. The job executes
    # the security tests defined in the pentest.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [required, String] :pentest_id
    #   The unique identifier of the pentest to start a job for.
    #
    # @return [Types::StartPentestJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPentestJobOutput#title #title} => String
    #   * {Types::StartPentestJobOutput#status #status} => String
    #   * {Types::StartPentestJobOutput#created_at #created_at} => Time
    #   * {Types::StartPentestJobOutput#updated_at #updated_at} => Time
    #   * {Types::StartPentestJobOutput#pentest_id #pentest_id} => String
    #   * {Types::StartPentestJobOutput#pentest_job_id #pentest_job_id} => String
    #   * {Types::StartPentestJobOutput#agent_space_id #agent_space_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_pentest_job({
    #     agent_space_id: "String", # required
    #     pentest_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.title #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.pentest_id #=> String
    #   resp.pentest_job_id #=> String
    #   resp.agent_space_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartPentestJob AWS API Documentation
    #
    # @overload start_pentest_job(params = {})
    # @param [Hash] params ({})
    def start_pentest_job(params = {}, options = {})
      req = build_request(:start_pentest_job, params)
      req.send_request(options)
    end

    # Starts a new threat model job for a threat model configuration.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [required, String] :threat_model_id
    #   The unique identifier of the threat model to start a job for.
    #
    # @return [Types::StartThreatModelJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartThreatModelJobOutput#title #title} => String
    #   * {Types::StartThreatModelJobOutput#status #status} => String
    #   * {Types::StartThreatModelJobOutput#created_at #created_at} => Time
    #   * {Types::StartThreatModelJobOutput#updated_at #updated_at} => Time
    #   * {Types::StartThreatModelJobOutput#threat_model_id #threat_model_id} => String
    #   * {Types::StartThreatModelJobOutput#threat_model_job_id #threat_model_job_id} => String
    #   * {Types::StartThreatModelJobOutput#agent_space_id #agent_space_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_threat_model_job({
    #     agent_space_id: "String", # required
    #     threat_model_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.title #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.threat_model_id #=> String
    #   resp.threat_model_job_id #=> String
    #   resp.agent_space_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartThreatModelJob AWS API Documentation
    #
    # @overload start_threat_model_job(params = {})
    # @param [Hash] params ({})
    def start_threat_model_job(params = {}, options = {})
      req = build_request(:start_threat_model_job, params)
      req.send_request(options)
    end

    # Stops a running code review job. The job transitions to a stopping
    # state and then to stopped after cleanup completes.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [required, String] :code_review_job_id
    #   The unique identifier of the code review job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_code_review_job({
    #     agent_space_id: "String", # required
    #     code_review_job_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StopCodeReviewJob AWS API Documentation
    #
    # @overload stop_code_review_job(params = {})
    # @param [Hash] params ({})
    def stop_code_review_job(params = {}, options = {})
      req = build_request(:stop_code_review_job, params)
      req.send_request(options)
    end

    # Stops a running pentest job. The job transitions to a stopping state
    # and then to stopped after cleanup completes.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [required, String] :pentest_job_id
    #   The unique identifier of the pentest job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_pentest_job({
    #     agent_space_id: "String", # required
    #     pentest_job_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StopPentestJob AWS API Documentation
    #
    # @overload stop_pentest_job(params = {})
    # @param [Hash] params ({})
    def stop_pentest_job(params = {}, options = {})
      req = build_request(:stop_pentest_job, params)
      req.send_request(options)
    end

    # Stops a running threat model job.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [required, String] :threat_model_job_id
    #   The unique identifier of the threat model job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_threat_model_job({
    #     agent_space_id: "String", # required
    #     threat_model_job_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StopThreatModelJob AWS API Documentation
    #
    # @overload stop_threat_model_job(params = {})
    # @param [Hash] params ({})
    def stop_threat_model_job(params = {}, options = {})
      req = build_request(:stop_threat_model_job, params)
      req.send_request(options)
    end

    # Adds tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing agent space, including its
    # name, description, AWS resources, target domains, and code review
    # settings.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space to update.
    #
    # @option params [String] :name
    #   The updated name of the agent space.
    #
    # @option params [String] :description
    #   The updated description of the agent space.
    #
    # @option params [Types::AWSResources] :aws_resources
    #   The updated AWS resources to associate with the agent space.
    #
    # @option params [Array<String>] :target_domain_ids
    #   The updated list of target domain identifiers to associate with the
    #   agent space.
    #
    # @option params [Types::CodeReviewSettings] :code_review_settings
    #   The updated code review settings for the agent space.
    #
    # @return [Types::UpdateAgentSpaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentSpaceOutput#agent_space_id #agent_space_id} => String
    #   * {Types::UpdateAgentSpaceOutput#name #name} => String
    #   * {Types::UpdateAgentSpaceOutput#description #description} => String
    #   * {Types::UpdateAgentSpaceOutput#aws_resources #aws_resources} => Types::AWSResources
    #   * {Types::UpdateAgentSpaceOutput#target_domain_ids #target_domain_ids} => Array&lt;String&gt;
    #   * {Types::UpdateAgentSpaceOutput#code_review_settings #code_review_settings} => Types::CodeReviewSettings
    #   * {Types::UpdateAgentSpaceOutput#created_at #created_at} => Time
    #   * {Types::UpdateAgentSpaceOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_space({
    #     agent_space_id: "AgentSpaceId", # required
    #     name: "AgentName",
    #     description: "String",
    #     aws_resources: {
    #       vpcs: [
    #         {
    #           vpc_arn: "VpcArn",
    #           security_group_arns: ["SecurityGroupArn"],
    #           subnet_arns: ["SubnetArn"],
    #         },
    #       ],
    #       log_groups: ["LogGroupArn"],
    #       s3_buckets: ["S3BucketArn"],
    #       secret_arns: ["SecretArn"],
    #       lambda_function_arns: ["LambdaFunctionArn"],
    #       iam_roles: ["ServiceRole"],
    #     },
    #     target_domain_ids: ["String"],
    #     code_review_settings: {
    #       controls_scanning: false, # required
    #       general_purpose_scanning: false, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_space_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.aws_resources.vpcs #=> Array
    #   resp.aws_resources.vpcs[0].vpc_arn #=> String
    #   resp.aws_resources.vpcs[0].security_group_arns #=> Array
    #   resp.aws_resources.vpcs[0].security_group_arns[0] #=> String
    #   resp.aws_resources.vpcs[0].subnet_arns #=> Array
    #   resp.aws_resources.vpcs[0].subnet_arns[0] #=> String
    #   resp.aws_resources.log_groups #=> Array
    #   resp.aws_resources.log_groups[0] #=> String
    #   resp.aws_resources.s3_buckets #=> Array
    #   resp.aws_resources.s3_buckets[0] #=> String
    #   resp.aws_resources.secret_arns #=> Array
    #   resp.aws_resources.secret_arns[0] #=> String
    #   resp.aws_resources.lambda_function_arns #=> Array
    #   resp.aws_resources.lambda_function_arns[0] #=> String
    #   resp.aws_resources.iam_roles #=> Array
    #   resp.aws_resources.iam_roles[0] #=> String
    #   resp.target_domain_ids #=> Array
    #   resp.target_domain_ids[0] #=> String
    #   resp.code_review_settings.controls_scanning #=> Boolean
    #   resp.code_review_settings.general_purpose_scanning #=> Boolean
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateAgentSpace AWS API Documentation
    #
    # @overload update_agent_space(params = {})
    # @param [Hash] params ({})
    def update_agent_space(params = {}, options = {})
      req = build_request(:update_agent_space, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing application, including the
    # IAM role and default KMS key.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application to update.
    #
    # @option params [String] :role_arn
    #   The updated Amazon Resource Name (ARN) of the IAM role for the
    #   application.
    #
    # @option params [String] :default_kms_key_id
    #   The updated identifier of the default AWS KMS key for the application.
    #
    # @return [Types::UpdateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationResponse#application_id #application_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_id: "ApplicationId", # required
    #     role_arn: "RoleArn",
    #     default_kms_key_id: "DefaultKmsKeyId",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Updates an existing code review configuration.
    #
    # @option params [required, String] :code_review_id
    #   The unique identifier of the code review to update.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the code
    #   review.
    #
    # @option params [String] :title
    #   The updated title of the code review.
    #
    # @option params [Types::Assets] :assets
    #   The updated assets for the code review.
    #
    # @option params [String] :service_role
    #   The updated IAM service role for the code review.
    #
    # @option params [Types::CloudWatchLog] :log_config
    #   The updated CloudWatch Logs configuration for the code review.
    #
    # @option params [String] :code_remediation_strategy
    #   The updated code remediation strategy for the code review.
    #
    # @option params [String] :validation_mode
    #   The updated validation mode for the code review. Valid values are
    #   SIMULATED and DISABLED.
    #
    # @return [Types::UpdateCodeReviewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCodeReviewOutput#code_review_id #code_review_id} => String
    #   * {Types::UpdateCodeReviewOutput#title #title} => String
    #   * {Types::UpdateCodeReviewOutput#created_at #created_at} => Time
    #   * {Types::UpdateCodeReviewOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateCodeReviewOutput#assets #assets} => Types::Assets
    #   * {Types::UpdateCodeReviewOutput#service_role #service_role} => String
    #   * {Types::UpdateCodeReviewOutput#log_config #log_config} => Types::CloudWatchLog
    #   * {Types::UpdateCodeReviewOutput#agent_space_id #agent_space_id} => String
    #   * {Types::UpdateCodeReviewOutput#code_remediation_strategy #code_remediation_strategy} => String
    #   * {Types::UpdateCodeReviewOutput#validation_mode #validation_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_code_review({
    #     code_review_id: "String", # required
    #     agent_space_id: "String", # required
    #     title: "String",
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String",
    #         },
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER", # accepts SECRETS_MANAGER, AWS_LAMBDA, AWS_IAM_ROLE, AWS_INTERNAL
    #             value: "String",
    #           },
    #           description: "String",
    #         },
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           },
    #         },
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String",
    #         },
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #         },
    #       ],
    #     },
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String",
    #     },
    #     code_remediation_strategy: "AUTOMATIC", # accepts AUTOMATIC, DISABLED
    #     validation_mode: "DISABLED", # accepts DISABLED, SIMULATED
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review_id #=> String
    #   resp.title #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.assets.endpoints #=> Array
    #   resp.assets.endpoints[0].uri #=> String
    #   resp.assets.actors #=> Array
    #   resp.assets.actors[0].identifier #=> String
    #   resp.assets.actors[0].uris #=> Array
    #   resp.assets.actors[0].uris[0] #=> String
    #   resp.assets.actors[0].authentication.provider_type #=> String, one of "SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"
    #   resp.assets.actors[0].authentication.value #=> String
    #   resp.assets.actors[0].description #=> String
    #   resp.assets.documents #=> Array
    #   resp.assets.documents[0].s3_location #=> String
    #   resp.assets.documents[0].artifact_id #=> String
    #   resp.assets.documents[0].integrated_document.integration_id #=> String
    #   resp.assets.documents[0].integrated_document.resource_id #=> String
    #   resp.assets.source_code #=> Array
    #   resp.assets.source_code[0].s3_location #=> String
    #   resp.assets.integrated_repositories #=> Array
    #   resp.assets.integrated_repositories[0].integration_id #=> String
    #   resp.assets.integrated_repositories[0].provider_resource_id #=> String
    #   resp.service_role #=> String
    #   resp.log_config.log_group #=> String
    #   resp.log_config.log_stream #=> String
    #   resp.agent_space_id #=> String
    #   resp.code_remediation_strategy #=> String, one of "AUTOMATIC", "DISABLED"
    #   resp.validation_mode #=> String, one of "DISABLED", "SIMULATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateCodeReview AWS API Documentation
    #
    # @overload update_code_review(params = {})
    # @param [Hash] params ({})
    def update_code_review(params = {}, options = {})
      req = build_request(:update_code_review, params)
      req.send_request(options)
    end

    # Updates the status or risk level of a security finding.
    #
    # @option params [required, String] :finding_id
    #   The unique identifier of the finding to update.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the finding.
    #
    # @option params [String] :name
    #   The updated name for the finding.
    #
    # @option params [String] :description
    #   The updated description for the finding.
    #
    # @option params [String] :risk_type
    #   The updated risk type for the finding.
    #
    # @option params [String] :risk_level
    #   The updated risk level for the finding.
    #
    # @option params [String] :risk_score
    #   The updated numerical risk score for the finding.
    #
    # @option params [String] :attack_script
    #   The updated attack script for the finding.
    #
    # @option params [String] :reasoning
    #   The updated reasoning for the finding.
    #
    # @option params [String] :status
    #   The updated status for the finding.
    #
    # @option params [String] :customer_note
    #   A customer-provided note on the finding.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_finding({
    #     finding_id: "String", # required
    #     agent_space_id: "String", # required
    #     name: "String",
    #     description: "String",
    #     risk_type: "String",
    #     risk_level: "UNKNOWN", # accepts UNKNOWN, INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #     risk_score: "String",
    #     attack_script: "String",
    #     reasoning: "String",
    #     status: "ACTIVE", # accepts ACTIVE, RESOLVED, ACCEPTED, FALSE_POSITIVE
    #     customer_note: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateFinding AWS API Documentation
    #
    # @overload update_finding(params = {})
    # @param [Hash] params ({})
    def update_finding(params = {}, options = {})
      req = build_request(:update_finding, params)
      req.send_request(options)
    end

    # Updates the integrated resources for an agent space, including their
    # capabilities.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [required, String] :integration_id
    #   The unique identifier of the integration.
    #
    # @option params [required, Array<Types::IntegratedResourceInputItem>] :items
    #   The list of integrated resource items to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_integrated_resources({
    #     agent_space_id: "AgentSpaceId", # required
    #     integration_id: "IntegrationId", # required
    #     items: [ # required
    #       {
    #         resource: { # required
    #           github_repository: {
    #             name: "ProviderResourceName", # required
    #             owner: "GitHubOwner", # required
    #           },
    #           gitlab_repository: {
    #             name: "ProviderResourceName", # required
    #             namespace: "GitLabNamespace", # required
    #           },
    #           bitbucket_repository: {
    #             name: "ProviderResourceName", # required
    #             workspace: "BitbucketWorkspace", # required
    #           },
    #           confluence_document: {
    #             name: "ProviderResourceName", # required
    #             space_key: "String", # required
    #             page_id: "String", # required
    #             title: "String",
    #             space_title: "String",
    #           },
    #         },
    #         capabilities: {
    #           github: {
    #             leave_comments: false,
    #             remediate_code: false,
    #           },
    #           gitlab: {
    #             leave_comments: false,
    #             remediate_code: false,
    #           },
    #           bitbucket: {
    #             leave_comments: false,
    #             remediate_code: false,
    #           },
    #           confluence: {
    #             fetch_document: false,
    #             create_document: false,
    #             update_document: false,
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateIntegratedResources AWS API Documentation
    #
    # @overload update_integrated_resources(params = {})
    # @param [Hash] params ({})
    def update_integrated_resources(params = {}, options = {})
      req = build_request(:update_integrated_resources, params)
      req.send_request(options)
    end

    # Updates an existing pentest configuration.
    #
    # @option params [required, String] :pentest_id
    #   The unique identifier of the pentest to update.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the pentest.
    #
    # @option params [String] :title
    #   The updated title of the pentest.
    #
    # @option params [Types::Assets] :assets
    #   The updated assets for the pentest.
    #
    # @option params [Array<String>] :exclude_risk_types
    #   The updated list of risk types to exclude from the pentest.
    #
    # @option params [String] :service_role
    #   The updated IAM service role for the pentest.
    #
    # @option params [Types::CloudWatchLog] :log_config
    #   The updated CloudWatch Logs configuration for the pentest.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The updated VPC configuration for the pentest.
    #
    # @option params [Types::NetworkTrafficConfig] :network_traffic_config
    #   The updated network traffic configuration for the pentest.
    #
    # @option params [String] :code_remediation_strategy
    #   The updated code remediation strategy for the pentest.
    #
    # @option params [Array<String>] :disable_managed_skills
    #   The updated list of managed skills to disable for this pentest. Valid
    #   values include FINDING\_PERSONALIZATION and LOGIN\_OPTIMIZATION.
    #
    # @return [Types::UpdatePentestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePentestOutput#pentest_id #pentest_id} => String
    #   * {Types::UpdatePentestOutput#title #title} => String
    #   * {Types::UpdatePentestOutput#created_at #created_at} => Time
    #   * {Types::UpdatePentestOutput#updated_at #updated_at} => Time
    #   * {Types::UpdatePentestOutput#assets #assets} => Types::Assets
    #   * {Types::UpdatePentestOutput#exclude_risk_types #exclude_risk_types} => Array&lt;String&gt;
    #   * {Types::UpdatePentestOutput#service_role #service_role} => String
    #   * {Types::UpdatePentestOutput#log_config #log_config} => Types::CloudWatchLog
    #   * {Types::UpdatePentestOutput#agent_space_id #agent_space_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pentest({
    #     pentest_id: "String", # required
    #     agent_space_id: "String", # required
    #     title: "String",
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String",
    #         },
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER", # accepts SECRETS_MANAGER, AWS_LAMBDA, AWS_IAM_ROLE, AWS_INTERNAL
    #             value: "String",
    #           },
    #           description: "String",
    #         },
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           },
    #         },
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String",
    #         },
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #         },
    #       ],
    #     },
    #     exclude_risk_types: ["CROSS_SITE_SCRIPTING"], # accepts CROSS_SITE_SCRIPTING, DEFAULT_CREDENTIALS, INSECURE_DIRECT_OBJECT_REFERENCE, PRIVILEGE_ESCALATION, SERVER_SIDE_TEMPLATE_INJECTION, COMMAND_INJECTION, CODE_INJECTION, SQL_INJECTION, ARBITRARY_FILE_UPLOAD, INSECURE_DESERIALIZATION, LOCAL_FILE_INCLUSION, INFORMATION_DISCLOSURE, PATH_TRAVERSAL, SERVER_SIDE_REQUEST_FORGERY, JSON_WEB_TOKEN_VULNERABILITIES, XML_EXTERNAL_ENTITY, FILE_DELETION, OTHER, GRAPHQL_VULNERABILITIES, BUSINESS_LOGIC_VULNERABILITIES, CRYPTOGRAPHIC_VULNERABILITIES, DENIAL_OF_SERVICE, FILE_ACCESS, FILE_CREATION, DATABASE_MODIFICATION, DATABASE_ACCESS, OUTBOUND_SERVICE_REQUEST, UNKNOWN
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String",
    #     },
    #     vpc_config: {
    #       vpc_arn: "VpcArn",
    #       security_group_arns: ["SecurityGroupArn"],
    #       subnet_arns: ["SubnetArn"],
    #     },
    #     network_traffic_config: {
    #       rules: [
    #         {
    #           effect: "ALLOW", # accepts ALLOW, DENY
    #           pattern: "String",
    #           network_traffic_rule_type: "URL", # accepts URL
    #         },
    #       ],
    #       custom_headers: [
    #         {
    #           name: "String",
    #           value: "String",
    #         },
    #       ],
    #     },
    #     code_remediation_strategy: "AUTOMATIC", # accepts AUTOMATIC, DISABLED
    #     disable_managed_skills: ["FINDING_PERSONALIZATION"], # accepts FINDING_PERSONALIZATION, LOGIN_OPTIMIZATION
    #   })
    #
    # @example Response structure
    #
    #   resp.pentest_id #=> String
    #   resp.title #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.assets.endpoints #=> Array
    #   resp.assets.endpoints[0].uri #=> String
    #   resp.assets.actors #=> Array
    #   resp.assets.actors[0].identifier #=> String
    #   resp.assets.actors[0].uris #=> Array
    #   resp.assets.actors[0].uris[0] #=> String
    #   resp.assets.actors[0].authentication.provider_type #=> String, one of "SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"
    #   resp.assets.actors[0].authentication.value #=> String
    #   resp.assets.actors[0].description #=> String
    #   resp.assets.documents #=> Array
    #   resp.assets.documents[0].s3_location #=> String
    #   resp.assets.documents[0].artifact_id #=> String
    #   resp.assets.documents[0].integrated_document.integration_id #=> String
    #   resp.assets.documents[0].integrated_document.resource_id #=> String
    #   resp.assets.source_code #=> Array
    #   resp.assets.source_code[0].s3_location #=> String
    #   resp.assets.integrated_repositories #=> Array
    #   resp.assets.integrated_repositories[0].integration_id #=> String
    #   resp.assets.integrated_repositories[0].provider_resource_id #=> String
    #   resp.exclude_risk_types #=> Array
    #   resp.exclude_risk_types[0] #=> String, one of "CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"
    #   resp.service_role #=> String
    #   resp.log_config.log_group #=> String
    #   resp.log_config.log_stream #=> String
    #   resp.agent_space_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdatePentest AWS API Documentation
    #
    # @overload update_pentest(params = {})
    # @param [Hash] params ({})
    def update_pentest(params = {}, options = {})
      req = build_request(:update_pentest, params)
      req.send_request(options)
    end

    # Updates the certificate associated with a private connection.
    # Certificates can be added or replaced but not removed.
    #
    # @option params [required, String] :private_connection_name
    #   The name of the private connection to update.
    #
    # @option params [required, String] :certificate
    #   The PEM-encoded certificate chain for the private connection.
    #
    # @return [Types::UpdatePrivateConnectionCertificateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePrivateConnectionCertificateOutput#name #name} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#type #type} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#status #status} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#resource_gateway_id #resource_gateway_id} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#host_address #host_address} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#vpc_id #vpc_id} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#resource_configuration_id #resource_configuration_id} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#certificate_expiry_time #certificate_expiry_time} => Time
    #   * {Types::UpdatePrivateConnectionCertificateOutput#dns_resolution #dns_resolution} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#failure_message #failure_message} => String
    #   * {Types::UpdatePrivateConnectionCertificateOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_private_connection_certificate({
    #     private_connection_name: "PrivateConnectionName", # required
    #     certificate: "CertificateChain", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.type #=> String, one of "SERVICE_MANAGED", "SELF_MANAGED"
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.resource_gateway_id #=> String
    #   resp.host_address #=> String
    #   resp.vpc_id #=> String
    #   resp.resource_configuration_id #=> String
    #   resp.certificate_expiry_time #=> Time
    #   resp.dns_resolution #=> String, one of "PUBLIC", "IN_VPC"
    #   resp.failure_message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdatePrivateConnectionCertificate AWS API Documentation
    #
    # @overload update_private_connection_certificate(params = {})
    # @param [Hash] params ({})
    def update_private_connection_certificate(params = {}, options = {})
      req = build_request(:update_private_connection_certificate, params)
      req.send_request(options)
    end

    # Updates a security requirement pack. For customer managed packs, both
    # metadata and status can be updated. For AWS managed packs, only status
    # can be updated.
    #
    # @option params [required, String] :pack_id
    #   The unique identifier of the security requirement pack to update.
    #
    # @option params [String] :name
    #   The updated name of the security requirement pack.
    #
    # @option params [String] :description
    #   The updated description of the security requirement pack.
    #
    # @option params [String] :status
    #   The updated status of the security requirement pack.
    #
    # @return [Types::UpdateSecurityRequirementPackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSecurityRequirementPackOutput#pack_id #pack_id} => String
    #   * {Types::UpdateSecurityRequirementPackOutput#name #name} => String
    #   * {Types::UpdateSecurityRequirementPackOutput#description #description} => String
    #   * {Types::UpdateSecurityRequirementPackOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_requirement_pack({
    #     pack_id: "SecurityRequirementPackId", # required
    #     name: "SecurityRequirementPackName",
    #     description: "String",
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.pack_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateSecurityRequirementPack AWS API Documentation
    #
    # @overload update_security_requirement_pack(params = {})
    # @param [Hash] params ({})
    def update_security_requirement_pack(params = {}, options = {})
      req = build_request(:update_security_requirement_pack, params)
      req.send_request(options)
    end

    # Updates the verification method for a target domain.
    #
    # @option params [required, String] :target_domain_id
    #   The unique identifier of the target domain to update.
    #
    # @option params [required, String] :verification_method
    #   The updated verification method for the target domain.
    #
    # @return [Types::UpdateTargetDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTargetDomainOutput#target_domain_id #target_domain_id} => String
    #   * {Types::UpdateTargetDomainOutput#domain_name #domain_name} => String
    #   * {Types::UpdateTargetDomainOutput#verification_status #verification_status} => String
    #   * {Types::UpdateTargetDomainOutput#verification_status_reason #verification_status_reason} => String
    #   * {Types::UpdateTargetDomainOutput#verification_details #verification_details} => Types::VerificationDetails
    #   * {Types::UpdateTargetDomainOutput#created_at #created_at} => Time
    #   * {Types::UpdateTargetDomainOutput#verified_at #verified_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_target_domain({
    #     target_domain_id: "TargetDomainId", # required
    #     verification_method: "DNS_TXT", # required, accepts DNS_TXT, HTTP_ROUTE, PRIVATE_VPC
    #   })
    #
    # @example Response structure
    #
    #   resp.target_domain_id #=> String
    #   resp.domain_name #=> String
    #   resp.verification_status #=> String, one of "PENDING", "VERIFIED", "FAILED", "UNREACHABLE"
    #   resp.verification_status_reason #=> String
    #   resp.verification_details.method #=> String, one of "DNS_TXT", "HTTP_ROUTE", "PRIVATE_VPC"
    #   resp.verification_details.dns_txt.token #=> String
    #   resp.verification_details.dns_txt.dns_record_name #=> String
    #   resp.verification_details.dns_txt.dns_record_type #=> String, one of "TXT"
    #   resp.verification_details.http_route.token #=> String
    #   resp.verification_details.http_route.route_path #=> String
    #   resp.created_at #=> Time
    #   resp.verified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateTargetDomain AWS API Documentation
    #
    # @overload update_target_domain(params = {})
    # @param [Hash] params ({})
    def update_target_domain(params = {}, options = {})
      req = build_request(:update_target_domain, params)
      req.send_request(options)
    end

    # Updates a threat.
    #
    # @option params [required, String] :threat_id
    #   The unique identifier of the threat to update.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space.
    #
    # @option params [String] :title
    #   A short title summarizing the threat.
    #
    # @option params [String] :status
    #   The updated status of the threat.
    #
    # @option params [String] :comments
    #   Optional customer comment.
    #
    # @option params [String] :statement
    #   The updated natural-language threat statement.
    #
    # @option params [String] :severity
    #   The updated severity level of the threat.
    #
    # @option params [String] :threat_source
    #   The updated actor or origin of the threat.
    #
    # @option params [String] :prerequisites
    #   The updated conditions required for the threat to be exploitable.
    #
    # @option params [String] :threat_action
    #   The updated description of what the threat source can do.
    #
    # @option params [String] :threat_impact
    #   The updated direct consequence of the threat action.
    #
    # @option params [Array<String>] :impacted_goal
    #   The updated security goals affected by the threat.
    #
    # @option params [Array<String>] :impacted_assets
    #   The updated list of specific assets affected by the threat.
    #
    # @option params [Types::ThreatAnchorShape] :anchor
    #   The updated DFD element this threat is anchored to.
    #
    # @option params [Array<Types::ThreatEvidenceShape>] :evidence
    #   The updated source code files supporting the threat.
    #
    # @option params [String] :recommendation
    #   The updated recommended mitigation guidance for this threat.
    #
    # @return [Types::UpdateThreatOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThreatOutput#threat_id #threat_id} => String
    #   * {Types::UpdateThreatOutput#threat_job_id #threat_job_id} => String
    #   * {Types::UpdateThreatOutput#title #title} => String
    #   * {Types::UpdateThreatOutput#statement #statement} => String
    #   * {Types::UpdateThreatOutput#severity #severity} => String
    #   * {Types::UpdateThreatOutput#status #status} => String
    #   * {Types::UpdateThreatOutput#comments #comments} => String
    #   * {Types::UpdateThreatOutput#stride #stride} => Array&lt;String&gt;
    #   * {Types::UpdateThreatOutput#threat_source #threat_source} => String
    #   * {Types::UpdateThreatOutput#prerequisites #prerequisites} => String
    #   * {Types::UpdateThreatOutput#threat_action #threat_action} => String
    #   * {Types::UpdateThreatOutput#threat_impact #threat_impact} => String
    #   * {Types::UpdateThreatOutput#impacted_goal #impacted_goal} => Array&lt;String&gt;
    #   * {Types::UpdateThreatOutput#impacted_assets #impacted_assets} => Array&lt;String&gt;
    #   * {Types::UpdateThreatOutput#anchor #anchor} => Types::ThreatAnchorShape
    #   * {Types::UpdateThreatOutput#evidence #evidence} => Array&lt;Types::ThreatEvidenceShape&gt;
    #   * {Types::UpdateThreatOutput#recommendation #recommendation} => String
    #   * {Types::UpdateThreatOutput#created_by #created_by} => String
    #   * {Types::UpdateThreatOutput#updated_by #updated_by} => String
    #   * {Types::UpdateThreatOutput#created_at #created_at} => Time
    #   * {Types::UpdateThreatOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_threat({
    #     threat_id: "String", # required
    #     agent_space_id: "String", # required
    #     title: "String",
    #     status: "OPEN", # accepts OPEN, RESOLVED, DISMISSED
    #     comments: "String",
    #     statement: "String",
    #     severity: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFO
    #     threat_source: "String",
    #     prerequisites: "String",
    #     threat_action: "String",
    #     threat_impact: "String",
    #     impacted_goal: ["String"],
    #     impacted_assets: ["String"],
    #     anchor: {
    #       kind: "String",
    #       id: "String",
    #       package_id: "String",
    #     },
    #     evidence: [
    #       {
    #         package_id: "String",
    #         path: "String",
    #       },
    #     ],
    #     recommendation: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_id #=> String
    #   resp.threat_job_id #=> String
    #   resp.title #=> String
    #   resp.statement #=> String
    #   resp.severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"
    #   resp.status #=> String, one of "OPEN", "RESOLVED", "DISMISSED"
    #   resp.comments #=> String
    #   resp.stride #=> Array
    #   resp.stride[0] #=> String, one of "SPOOFING", "TAMPERING", "REPUDIATION", "INFORMATION_DISCLOSURE", "DENIAL_OF_SERVICE", "ELEVATION_OF_PRIVILEGE"
    #   resp.threat_source #=> String
    #   resp.prerequisites #=> String
    #   resp.threat_action #=> String
    #   resp.threat_impact #=> String
    #   resp.impacted_goal #=> Array
    #   resp.impacted_goal[0] #=> String
    #   resp.impacted_assets #=> Array
    #   resp.impacted_assets[0] #=> String
    #   resp.anchor.kind #=> String
    #   resp.anchor.id #=> String
    #   resp.anchor.package_id #=> String
    #   resp.evidence #=> Array
    #   resp.evidence[0].package_id #=> String
    #   resp.evidence[0].path #=> String
    #   resp.recommendation #=> String
    #   resp.created_by #=> String, one of "CUSTOMER", "AGENT"
    #   resp.updated_by #=> String, one of "CUSTOMER", "AGENT"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateThreat AWS API Documentation
    #
    # @overload update_threat(params = {})
    # @param [Hash] params ({})
    def update_threat(params = {}, options = {})
      req = build_request(:update_threat, params)
      req.send_request(options)
    end

    # Updates an existing threat model configuration.
    #
    # @option params [required, String] :threat_model_id
    #   The unique identifier of the threat model to update.
    #
    # @option params [required, String] :agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   model.
    #
    # @option params [String] :title
    #   The updated title of the threat model.
    #
    # @option params [String] :description
    #   The updated description of the application or system being threat
    #   modeled.
    #
    # @option params [Types::Assets] :assets
    #   The updated assets for the threat model.
    #
    # @option params [Array<Types::DocumentInfo>] :scope_docs
    #   The updated scoped documents for the agent to focus on during threat
    #   modeling.
    #
    # @option params [String] :service_role
    #   The updated IAM service role for the threat model.
    #
    # @option params [Types::CloudWatchLog] :log_config
    #   The updated CloudWatch Logs configuration for the threat model.
    #
    # @return [Types::UpdateThreatModelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThreatModelOutput#threat_model_id #threat_model_id} => String
    #   * {Types::UpdateThreatModelOutput#title #title} => String
    #   * {Types::UpdateThreatModelOutput#agent_space_id #agent_space_id} => String
    #   * {Types::UpdateThreatModelOutput#description #description} => String
    #   * {Types::UpdateThreatModelOutput#assets #assets} => Types::Assets
    #   * {Types::UpdateThreatModelOutput#scope_docs #scope_docs} => Array&lt;Types::DocumentInfo&gt;
    #   * {Types::UpdateThreatModelOutput#service_role #service_role} => String
    #   * {Types::UpdateThreatModelOutput#log_config #log_config} => Types::CloudWatchLog
    #   * {Types::UpdateThreatModelOutput#created_at #created_at} => Time
    #   * {Types::UpdateThreatModelOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_threat_model({
    #     threat_model_id: "String", # required
    #     agent_space_id: "String", # required
    #     title: "String",
    #     description: "String",
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String",
    #         },
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER", # accepts SECRETS_MANAGER, AWS_LAMBDA, AWS_IAM_ROLE, AWS_INTERNAL
    #             value: "String",
    #           },
    #           description: "String",
    #         },
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           },
    #         },
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String",
    #         },
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #         },
    #       ],
    #     },
    #     scope_docs: [
    #       {
    #         s3_location: "String",
    #         artifact_id: "String",
    #         integrated_document: {
    #           integration_id: "String", # required
    #           resource_id: "String", # required
    #         },
    #       },
    #     ],
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_model_id #=> String
    #   resp.title #=> String
    #   resp.agent_space_id #=> String
    #   resp.description #=> String
    #   resp.assets.endpoints #=> Array
    #   resp.assets.endpoints[0].uri #=> String
    #   resp.assets.actors #=> Array
    #   resp.assets.actors[0].identifier #=> String
    #   resp.assets.actors[0].uris #=> Array
    #   resp.assets.actors[0].uris[0] #=> String
    #   resp.assets.actors[0].authentication.provider_type #=> String, one of "SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"
    #   resp.assets.actors[0].authentication.value #=> String
    #   resp.assets.actors[0].description #=> String
    #   resp.assets.documents #=> Array
    #   resp.assets.documents[0].s3_location #=> String
    #   resp.assets.documents[0].artifact_id #=> String
    #   resp.assets.documents[0].integrated_document.integration_id #=> String
    #   resp.assets.documents[0].integrated_document.resource_id #=> String
    #   resp.assets.source_code #=> Array
    #   resp.assets.source_code[0].s3_location #=> String
    #   resp.assets.integrated_repositories #=> Array
    #   resp.assets.integrated_repositories[0].integration_id #=> String
    #   resp.assets.integrated_repositories[0].provider_resource_id #=> String
    #   resp.scope_docs #=> Array
    #   resp.scope_docs[0].s3_location #=> String
    #   resp.scope_docs[0].artifact_id #=> String
    #   resp.scope_docs[0].integrated_document.integration_id #=> String
    #   resp.scope_docs[0].integrated_document.resource_id #=> String
    #   resp.service_role #=> String
    #   resp.log_config.log_group #=> String
    #   resp.log_config.log_stream #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateThreatModel AWS API Documentation
    #
    # @overload update_threat_model(params = {})
    # @param [Hash] params ({})
    def update_threat_model(params = {}, options = {})
      req = build_request(:update_threat_model, params)
      req.send_request(options)
    end

    # Initiates verification of a target domain. This checks whether the
    # domain ownership verification token has been properly configured.
    #
    # @option params [required, String] :target_domain_id
    #   The unique identifier of the target domain to verify.
    #
    # @return [Types::VerifyTargetDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifyTargetDomainOutput#target_domain_id #target_domain_id} => String
    #   * {Types::VerifyTargetDomainOutput#domain_name #domain_name} => String
    #   * {Types::VerifyTargetDomainOutput#created_at #created_at} => Time
    #   * {Types::VerifyTargetDomainOutput#updated_at #updated_at} => Time
    #   * {Types::VerifyTargetDomainOutput#verified_at #verified_at} => Time
    #   * {Types::VerifyTargetDomainOutput#status #status} => String
    #   * {Types::VerifyTargetDomainOutput#verification_status_reason #verification_status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_target_domain({
    #     target_domain_id: "TargetDomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_domain_id #=> String
    #   resp.domain_name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.verified_at #=> Time
    #   resp.status #=> String, one of "PENDING", "VERIFIED", "FAILED", "UNREACHABLE"
    #   resp.verification_status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/VerifyTargetDomain AWS API Documentation
    #
    # @overload verify_target_domain(params = {})
    # @param [Hash] params ({})
    def verify_target_domain(params = {}, options = {})
      req = build_request(:verify_target_domain, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SecurityAgent')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-securityagent'
      context[:gem_version] = '1.9.0'
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
