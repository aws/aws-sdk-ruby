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

module Aws::MWAAServerless
  # An API client for MWAAServerless.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MWAAServerless::Client.new(
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

    @identifier = :mwaaserverless

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
    add_plugin(Aws::MWAAServerless::Plugins::Endpoints)

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
    #   @option options [Aws::MWAAServerless::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MWAAServerless::EndpointParameters`.
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

    # Creates a new workflow in Amazon Managed Workflows for Apache Airflow
    # Serverless. This operation initializes a workflow with the specified
    # configuration including the workflow definition, execution role, and
    # optional settings for encryption, logging, and networking. You must
    # provide the workflow definition as a YAML file stored in Amazon S3
    # that defines the DAG structure using supported Amazon Web Services
    # operators. Amazon Managed Workflows for Apache Airflow Serverless
    # automatically creates the first version of the workflow and sets up
    # the necessary execution environment with multi-tenant isolation and
    # security controls.
    #
    # @option params [required, String] :name
    #   The name of the workflow. You must use unique workflow names within
    #   your Amazon Web Services account. The service generates a unique
    #   identifier that is appended to ensure temporal uniqueness across the
    #   account lifecycle.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. This token prevents duplicate workflow
    #   creation requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::DefinitionS3Location] :definition_s3_location
    #   The Amazon S3 location where the workflow definition file is stored.
    #   This must point to a valid YAML file that defines the workflow
    #   structure using supported Amazon Web Services operators and tasks.
    #   Amazon Managed Workflows for Apache Airflow Serverless takes a
    #   snapshot of the definition at creation time, so subsequent changes to
    #   the Amazon S3 object will not affect the workflow unless you create a
    #   new version. In your YAML definition, include task dependencies,
    #   scheduling information, and operator configurations that are
    #   compatible with the Amazon Managed Workflows for Apache Airflow
    #   Serverless execution environment.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Amazon Managed
    #   Workflows for Apache Airflow Serverless assumes when executing the
    #   workflow. This role must have the necessary permissions to access the
    #   required Amazon Web Services services and resources that your workflow
    #   tasks will interact with. The role is used for task execution in the
    #   isolated, multi-tenant environment and should follow the principle of
    #   least privilege. Amazon Managed Workflows for Apache Airflow
    #   Serverless validates role access during workflow creation but runtime
    #   permission checks are performed by the target services.
    #
    # @option params [String] :description
    #   An optional description of the workflow that you can use to provide
    #   additional context about the workflow's purpose and functionality.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   The configuration for encrypting workflow data at rest and in transit.
    #   Specifies the encryption type and optional KMS key for
    #   customer-managed encryption.
    #
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   The configuration for workflow logging. Specifies the CloudWatch log
    #   group where workflow execution logs are stored. Amazon Managed
    #   Workflows for Apache Airflow Serverless automatically exports worker
    #   logs and task-level information to the specified log group in your
    #   account using remote logging functionality. This provides
    #   comprehensive observability for debugging and monitoring workflow
    #   execution across the distributed, serverless environment.
    #
    # @option params [Integer] :engine_version
    #   The version of the Amazon Managed Workflows for Apache Airflow
    #   Serverless engine that you want to use for this workflow. This
    #   determines the feature set, supported operators, and execution
    #   environment capabilities available to your workflow. Amazon Managed
    #   Workflows for Apache Airflow Serverless maintains backward
    #   compatibility across versions while introducing new features and
    #   improvements. Currently supports version 1 with plans for additional
    #   versions as the service evolves.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   Network configuration for the workflow execution environment,
    #   including VPC security groups and subnets for secure network access.
    #   When specified, Amazon Managed Workflows for Apache Airflow Serverless
    #   deploys ECS worker tasks in your customer VPC to provide secure
    #   connectivity to your resources. If not specified, tasks run in the
    #   service's default worker VPC with network isolation from other
    #   customers. This configuration enables secure access to VPC-only
    #   resources like RDS databases or private endpoints.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tags to assign to the workflow resource. Tags are key-value
    #   pairs that are used for resource organization and cost allocation.
    #
    # @option params [String] :trigger_mode
    #   The trigger mode for the workflow execution.
    #
    # @return [Types::CreateWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowResponse#workflow_arn #workflow_arn} => String
    #   * {Types::CreateWorkflowResponse#created_at #created_at} => Time
    #   * {Types::CreateWorkflowResponse#revision_id #revision_id} => String
    #   * {Types::CreateWorkflowResponse#workflow_status #workflow_status} => String
    #   * {Types::CreateWorkflowResponse#workflow_version #workflow_version} => String
    #   * {Types::CreateWorkflowResponse#is_latest_version #is_latest_version} => Boolean
    #   * {Types::CreateWorkflowResponse#warnings #warnings} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow({
    #     name: "NameString", # required
    #     client_token: "IdempotencyTokenString",
    #     definition_s3_location: { # required
    #       bucket: "String", # required
    #       object_key: "String", # required
    #       version_id: "String",
    #     },
    #     role_arn: "RoleARN", # required
    #     description: "DescriptionString",
    #     encryption_configuration: {
    #       type: "AWS_MANAGED_KEY", # required, accepts AWS_MANAGED_KEY, CUSTOMER_MANAGED_KEY
    #       kms_key_id: "String",
    #     },
    #     logging_configuration: {
    #       log_group_name: "String", # required
    #     },
    #     engine_version: 1,
    #     network_configuration: {
    #       security_group_ids: ["SecurityGroupString"],
    #       subnet_ids: ["SubnetString"],
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     trigger_mode: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_arn #=> String
    #   resp.created_at #=> Time
    #   resp.revision_id #=> String
    #   resp.workflow_status #=> String, one of "READY", "DELETING"
    #   resp.workflow_version #=> String
    #   resp.is_latest_version #=> Boolean
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/CreateWorkflow AWS API Documentation
    #
    # @overload create_workflow(params = {})
    # @param [Hash] params ({})
    def create_workflow(params = {}, options = {})
      req = build_request(:create_workflow, params)
      req.send_request(options)
    end

    # Deletes a workflow and all its versions. This operation permanently
    # removes the workflow and cannot be undone. Amazon Managed Workflows
    # for Apache Airflow Serverless ensures that all associated resources
    # are properly cleaned up, including stopping any running executions,
    # removing scheduled triggers, and cleaning up execution history. The
    # deletion process respects the multi-tenant isolation boundaries and
    # ensures that no residual data or configurations remain that could
    # affect other customers or workflows.
    #
    # @option params [required, String] :workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow you want to delete.
    #
    # @option params [String] :workflow_version
    #   Optional. The specific version of the workflow to delete. If not
    #   specified, all versions of the workflow are deleted.
    #
    # @return [Types::DeleteWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkflowResponse#workflow_arn #workflow_arn} => String
    #   * {Types::DeleteWorkflowResponse#workflow_version #workflow_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow({
    #     workflow_arn: "WorkflowArn", # required
    #     workflow_version: "WorkflowVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_arn #=> String
    #   resp.workflow_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/DeleteWorkflow AWS API Documentation
    #
    # @overload delete_workflow(params = {})
    # @param [Hash] params ({})
    def delete_workflow(params = {}, options = {})
      req = build_request(:delete_workflow, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific task instance within a
    # workflow run. Task instances represent individual tasks that are
    # executed as part of a workflow in the Amazon Managed Workflows for
    # Apache Airflow Serverless environment. Each task instance runs in an
    # isolated ECS container with dedicated resources and security
    # boundaries. The service tracks task execution state, retry attempts,
    # and provides detailed timing and error information for troubleshooting
    # and monitoring purposes.
    #
    # @option params [required, String] :workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains the task
    #   instance.
    #
    # @option params [required, String] :task_instance_id
    #   The unique identifier of the task instance to retrieve.
    #
    # @option params [required, String] :run_id
    #   The unique identifier of the workflow run that contains the task
    #   instance.
    #
    # @return [Types::GetTaskInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTaskInstanceResponse#workflow_arn #workflow_arn} => String
    #   * {Types::GetTaskInstanceResponse#run_id #run_id} => String
    #   * {Types::GetTaskInstanceResponse#task_instance_id #task_instance_id} => String
    #   * {Types::GetTaskInstanceResponse#workflow_version #workflow_version} => String
    #   * {Types::GetTaskInstanceResponse#status #status} => String
    #   * {Types::GetTaskInstanceResponse#duration_in_seconds #duration_in_seconds} => Integer
    #   * {Types::GetTaskInstanceResponse#operator_name #operator_name} => String
    #   * {Types::GetTaskInstanceResponse#modified_at #modified_at} => Time
    #   * {Types::GetTaskInstanceResponse#ended_at #ended_at} => Time
    #   * {Types::GetTaskInstanceResponse#started_at #started_at} => Time
    #   * {Types::GetTaskInstanceResponse#attempt_number #attempt_number} => Integer
    #   * {Types::GetTaskInstanceResponse#error_message #error_message} => String
    #   * {Types::GetTaskInstanceResponse#task_id #task_id} => String
    #   * {Types::GetTaskInstanceResponse#log_stream #log_stream} => String
    #   * {Types::GetTaskInstanceResponse#xcom #xcom} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_task_instance({
    #     workflow_arn: "WorkflowArn", # required
    #     task_instance_id: "IdString", # required
    #     run_id: "IdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_arn #=> String
    #   resp.run_id #=> String
    #   resp.task_instance_id #=> String
    #   resp.workflow_version #=> String
    #   resp.status #=> String, one of "QUEUED", "FAILED", "SCHEDULED", "RUNNING", "SUCCESS", "UP_FOR_RESCHEDULE", "UP_FOR_RETRY", "UPSTREAM_FAILED", "REMOVED", "RESTARTING", "DEFERRED", "NONE", "CANCELLED", "TIMEOUT"
    #   resp.duration_in_seconds #=> Integer
    #   resp.operator_name #=> String
    #   resp.modified_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.started_at #=> Time
    #   resp.attempt_number #=> Integer
    #   resp.error_message #=> String
    #   resp.task_id #=> String
    #   resp.log_stream #=> String
    #   resp.xcom #=> Hash
    #   resp.xcom["GenericString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/GetTaskInstance AWS API Documentation
    #
    # @overload get_task_instance(params = {})
    # @param [Hash] params ({})
    def get_task_instance(params = {}, options = {})
      req = build_request(:get_task_instance, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a workflow, including its
    # configuration, status, and metadata.
    #
    # @option params [required, String] :workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow you want to retrieve.
    #
    # @option params [String] :workflow_version
    #   Optional. The specific version of the workflow to retrieve. If not
    #   specified, the latest version is returned.
    #
    # @return [Types::GetWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowResponse#workflow_arn #workflow_arn} => String
    #   * {Types::GetWorkflowResponse#workflow_version #workflow_version} => String
    #   * {Types::GetWorkflowResponse#name #name} => String
    #   * {Types::GetWorkflowResponse#description #description} => String
    #   * {Types::GetWorkflowResponse#created_at #created_at} => Time
    #   * {Types::GetWorkflowResponse#modified_at #modified_at} => Time
    #   * {Types::GetWorkflowResponse#encryption_configuration #encryption_configuration} => Types::EncryptionConfiguration
    #   * {Types::GetWorkflowResponse#logging_configuration #logging_configuration} => Types::LoggingConfiguration
    #   * {Types::GetWorkflowResponse#engine_version #engine_version} => Integer
    #   * {Types::GetWorkflowResponse#workflow_status #workflow_status} => String
    #   * {Types::GetWorkflowResponse#definition_s3_location #definition_s3_location} => Types::DefinitionS3Location
    #   * {Types::GetWorkflowResponse#schedule_configuration #schedule_configuration} => Types::ScheduleConfiguration
    #   * {Types::GetWorkflowResponse#role_arn #role_arn} => String
    #   * {Types::GetWorkflowResponse#network_configuration #network_configuration} => Types::NetworkConfiguration
    #   * {Types::GetWorkflowResponse#trigger_mode #trigger_mode} => String
    #   * {Types::GetWorkflowResponse#workflow_definition #workflow_definition} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow({
    #     workflow_arn: "WorkflowArn", # required
    #     workflow_version: "WorkflowVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_arn #=> String
    #   resp.workflow_version #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.encryption_configuration.type #=> String, one of "AWS_MANAGED_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.encryption_configuration.kms_key_id #=> String
    #   resp.logging_configuration.log_group_name #=> String
    #   resp.engine_version #=> Integer
    #   resp.workflow_status #=> String, one of "READY", "DELETING"
    #   resp.definition_s3_location.bucket #=> String
    #   resp.definition_s3_location.object_key #=> String
    #   resp.definition_s3_location.version_id #=> String
    #   resp.schedule_configuration.cron_expression #=> String
    #   resp.role_arn #=> String
    #   resp.network_configuration.security_group_ids #=> Array
    #   resp.network_configuration.security_group_ids[0] #=> String
    #   resp.network_configuration.subnet_ids #=> Array
    #   resp.network_configuration.subnet_ids[0] #=> String
    #   resp.trigger_mode #=> String
    #   resp.workflow_definition #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/GetWorkflow AWS API Documentation
    #
    # @overload get_workflow(params = {})
    # @param [Hash] params ({})
    def get_workflow(params = {}, options = {})
      req = build_request(:get_workflow, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific workflow run,
    # including its status, execution details, and task instances.
    #
    # @option params [required, String] :workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains the run.
    #
    # @option params [required, String] :run_id
    #   The unique identifier of the workflow run to retrieve.
    #
    # @return [Types::GetWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowRunResponse#workflow_arn #workflow_arn} => String
    #   * {Types::GetWorkflowRunResponse#workflow_version #workflow_version} => String
    #   * {Types::GetWorkflowRunResponse#run_id #run_id} => String
    #   * {Types::GetWorkflowRunResponse#run_type #run_type} => String
    #   * {Types::GetWorkflowRunResponse#override_parameters #override_parameters} => Hash&lt;String,Hash,Array,String,Numeric,Boolean&gt;
    #   * {Types::GetWorkflowRunResponse#run_detail #run_detail} => Types::WorkflowRunDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_run({
    #     workflow_arn: "WorkflowArn", # required
    #     run_id: "IdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_arn #=> String
    #   resp.workflow_version #=> String
    #   resp.run_id #=> String
    #   resp.run_type #=> String, one of "ON_DEMAND", "SCHEDULED"
    #   resp.override_parameters #=> Hash
    #   resp.run_detail.workflow_arn #=> String
    #   resp.run_detail.workflow_version #=> String
    #   resp.run_detail.run_id #=> String
    #   resp.run_detail.run_type #=> String, one of "ON_DEMAND", "SCHEDULED"
    #   resp.run_detail.started_on #=> Time
    #   resp.run_detail.created_at #=> Time
    #   resp.run_detail.completed_on #=> Time
    #   resp.run_detail.modified_at #=> Time
    #   resp.run_detail.duration #=> Integer
    #   resp.run_detail.error_message #=> String
    #   resp.run_detail.task_instances #=> Array
    #   resp.run_detail.task_instances[0] #=> String
    #   resp.run_detail.run_state #=> String, one of "STARTING", "QUEUED", "RUNNING", "SUCCESS", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/GetWorkflowRun AWS API Documentation
    #
    # @overload get_workflow_run(params = {})
    # @param [Hash] params ({})
    def get_workflow_run(params = {}, options = {})
      req = build_request(:get_workflow_run, params)
      req.send_request(options)
    end

    # Lists all tags that are associated with a specified Amazon Managed
    # Workflows for Apache Airflow Serverless resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to list tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all task instances for a specific workflow run, with optional
    # pagination support.
    #
    # @option params [required, String] :workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains the run.
    #
    # @option params [required, String] :run_id
    #   The unique identifier of the workflow run for which you want a list of
    #   task instances.
    #
    # @option params [Integer] :max_results
    #   The maximum number of task instances to return in a single response.
    #
    # @option params [String] :next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is returned from a previous call to
    #   `ListTaskInstances`.
    #
    # @return [Types::ListTaskInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTaskInstancesResponse#task_instances #task_instances} => Array&lt;Types::TaskInstanceSummary&gt;
    #   * {Types::ListTaskInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_instances({
    #     workflow_arn: "WorkflowArn", # required
    #     run_id: "IdString", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_instances #=> Array
    #   resp.task_instances[0].workflow_arn #=> String
    #   resp.task_instances[0].workflow_version #=> String
    #   resp.task_instances[0].run_id #=> String
    #   resp.task_instances[0].task_instance_id #=> String
    #   resp.task_instances[0].status #=> String, one of "QUEUED", "FAILED", "SCHEDULED", "RUNNING", "SUCCESS", "UP_FOR_RESCHEDULE", "UP_FOR_RETRY", "UPSTREAM_FAILED", "REMOVED", "RESTARTING", "DEFERRED", "NONE", "CANCELLED", "TIMEOUT"
    #   resp.task_instances[0].duration_in_seconds #=> Integer
    #   resp.task_instances[0].operator_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListTaskInstances AWS API Documentation
    #
    # @overload list_task_instances(params = {})
    # @param [Hash] params ({})
    def list_task_instances(params = {}, options = {})
      req = build_request(:list_task_instances, params)
      req.send_request(options)
    end

    # Lists all runs for a specified workflow, with optional pagination and
    # filtering support.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workflow runs to return in a single response.
    #
    # @option params [String] :next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is returned from a previous call to
    #   `ListWorkflowRuns`.
    #
    # @option params [required, String] :workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow for which you want a
    #   list of runs.
    #
    # @option params [String] :workflow_version
    #   Optional. The specific version of the workflow for which you want a
    #   list of runs. If not specified, runs for all versions are returned.
    #
    # @return [Types::ListWorkflowRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowRunsResponse#workflow_runs #workflow_runs} => Array&lt;Types::WorkflowRunSummary&gt;
    #   * {Types::ListWorkflowRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_runs({
    #     max_results: 1,
    #     next_token: "String",
    #     workflow_arn: "WorkflowArn", # required
    #     workflow_version: "VersionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_runs #=> Array
    #   resp.workflow_runs[0].run_id #=> String
    #   resp.workflow_runs[0].workflow_arn #=> String
    #   resp.workflow_runs[0].workflow_version #=> String
    #   resp.workflow_runs[0].run_type #=> String, one of "ON_DEMAND", "SCHEDULED"
    #   resp.workflow_runs[0].run_detail_summary.status #=> String, one of "STARTING", "QUEUED", "RUNNING", "SUCCESS", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"
    #   resp.workflow_runs[0].run_detail_summary.created_on #=> Time
    #   resp.workflow_runs[0].run_detail_summary.started_at #=> Time
    #   resp.workflow_runs[0].run_detail_summary.ended_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListWorkflowRuns AWS API Documentation
    #
    # @overload list_workflow_runs(params = {})
    # @param [Hash] params ({})
    def list_workflow_runs(params = {}, options = {})
      req = build_request(:list_workflow_runs, params)
      req.send_request(options)
    end

    # Lists all versions of a specified workflow, with optional pagination
    # support.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workflow versions to return in a single
    #   response.
    #
    # @option params [String] :next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is returned from a previous call to
    #   `ListWorkflowVersions`.
    #
    # @option params [required, String] :workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow for which you want to
    #   list versions.
    #
    # @return [Types::ListWorkflowVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowVersionsResponse#workflow_versions #workflow_versions} => Array&lt;Types::WorkflowVersionSummary&gt;
    #   * {Types::ListWorkflowVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_versions({
    #     max_results: 1,
    #     next_token: "String",
    #     workflow_arn: "WorkflowArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_versions #=> Array
    #   resp.workflow_versions[0].workflow_version #=> String
    #   resp.workflow_versions[0].workflow_arn #=> String
    #   resp.workflow_versions[0].is_latest_version #=> Boolean
    #   resp.workflow_versions[0].created_at #=> Time
    #   resp.workflow_versions[0].modified_at #=> Time
    #   resp.workflow_versions[0].definition_s3_location.bucket #=> String
    #   resp.workflow_versions[0].definition_s3_location.object_key #=> String
    #   resp.workflow_versions[0].definition_s3_location.version_id #=> String
    #   resp.workflow_versions[0].schedule_configuration.cron_expression #=> String
    #   resp.workflow_versions[0].trigger_mode #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListWorkflowVersions AWS API Documentation
    #
    # @overload list_workflow_versions(params = {})
    # @param [Hash] params ({})
    def list_workflow_versions(params = {}, options = {})
      req = build_request(:list_workflow_versions, params)
      req.send_request(options)
    end

    # Lists all workflows in your account, with optional pagination support.
    # This operation returns summary information for workflows, showing only
    # the most recently created version of each workflow. Amazon Managed
    # Workflows for Apache Airflow Serverless maintains workflow metadata in
    # a highly available, distributed storage system that enables efficient
    # querying and filtering. The service implements proper access controls
    # to ensure you can only view workflows that you have permissions to
    # access, supporting both individual and team-based workflow management
    # scenarios.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workflows you want to return in a single
    #   response.
    #
    # @option params [String] :next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is returned from a previous call to
    #   `ListWorkflows`.
    #
    # @return [Types::ListWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowsResponse#workflows #workflows} => Array&lt;Types::WorkflowSummary&gt;
    #   * {Types::ListWorkflowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.workflows #=> Array
    #   resp.workflows[0].workflow_arn #=> String
    #   resp.workflows[0].workflow_version #=> String
    #   resp.workflows[0].name #=> String
    #   resp.workflows[0].description #=> String
    #   resp.workflows[0].created_at #=> Time
    #   resp.workflows[0].modified_at #=> Time
    #   resp.workflows[0].workflow_status #=> String, one of "READY", "DELETING"
    #   resp.workflows[0].trigger_mode #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListWorkflows AWS API Documentation
    #
    # @overload list_workflows(params = {})
    # @param [Hash] params ({})
    def list_workflows(params = {}, options = {})
      req = build_request(:list_workflows, params)
      req.send_request(options)
    end

    # Starts a new execution of a workflow. This operation creates a
    # workflow run that executes the tasks that are defined in the workflow.
    # Amazon Managed Workflows for Apache Airflow Serverless schedules the
    # workflow execution across its managed Airflow environment,
    # automatically scaling ECS worker tasks based on the workload. The
    # service handles task isolation, dependency resolution, and provides
    # comprehensive monitoring and logging throughout the execution
    # lifecycle.
    #
    # @option params [required, String] :workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow you want to run.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. This token prevents duplicate workflow run
    #   requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,Hash,Array,String,Numeric,Boolean>] :override_parameters
    #   Optional parameters to override default workflow parameters for this
    #   specific run. These parameters are passed to the workflow during
    #   execution and can be used to customize behavior without modifying the
    #   workflow definition. Parameters are made available as environment
    #   variables to tasks and you can reference them within the YAML workflow
    #   definition using standard parameter substitution syntax.
    #
    # @option params [String] :workflow_version
    #   Optional. The specific version of the workflow to execute. If not
    #   specified, the latest version is used.
    #
    # @return [Types::StartWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartWorkflowRunResponse#run_id #run_id} => String
    #   * {Types::StartWorkflowRunResponse#status #status} => String
    #   * {Types::StartWorkflowRunResponse#started_at #started_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_workflow_run({
    #     workflow_arn: "WorkflowArn", # required
    #     client_token: "IdempotencyTokenString",
    #     override_parameters: {
    #       "String" => {
    #       },
    #     },
    #     workflow_version: "VersionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.run_id #=> String
    #   resp.status #=> String, one of "STARTING", "QUEUED", "RUNNING", "SUCCESS", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"
    #   resp.started_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/StartWorkflowRun AWS API Documentation
    #
    # @overload start_workflow_run(params = {})
    # @param [Hash] params ({})
    def start_workflow_run(params = {}, options = {})
      req = build_request(:start_workflow_run, params)
      req.send_request(options)
    end

    # Stops a running workflow execution. This operation terminates all
    # running tasks and prevents new tasks from starting. Amazon Managed
    # Workflows for Apache Airflow Serverless gracefully shuts down the
    # workflow execution by stopping task scheduling and terminating active
    # ECS worker containers. The operation transitions the workflow run to a
    # `STOPPING` state and then to `STOPPED` once all cleanup is complete.
    # In-flight tasks may complete or be terminated depending on their
    # current execution state.
    #
    # @option params [required, String] :workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains the run
    #   you want to stop.
    #
    # @option params [required, String] :run_id
    #   The unique identifier of the workflow run to stop.
    #
    # @return [Types::StopWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopWorkflowRunResponse#workflow_arn #workflow_arn} => String
    #   * {Types::StopWorkflowRunResponse#workflow_version #workflow_version} => String
    #   * {Types::StopWorkflowRunResponse#run_id #run_id} => String
    #   * {Types::StopWorkflowRunResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_workflow_run({
    #     workflow_arn: "WorkflowArn", # required
    #     run_id: "IdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_arn #=> String
    #   resp.workflow_version #=> String
    #   resp.run_id #=> String
    #   resp.status #=> String, one of "STARTING", "QUEUED", "RUNNING", "SUCCESS", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/StopWorkflowRun AWS API Documentation
    #
    # @overload stop_workflow_run(params = {})
    # @param [Hash] params ({})
    def stop_workflow_run(params = {}, options = {})
      req = build_request(:stop_workflow_run, params)
      req.send_request(options)
    end

    # Adds tags to an Amazon Managed Workflows for Apache Airflow Serverless
    # resource. Tags are key-value pairs that help you organize and
    # categorize your resources.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to add tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map of tags to add to the resource. Each tag consists of a key-value
    #   pair.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an Amazon Managed Workflows for Apache Airflow
    # Serverless resource. This operation removes the specified tags from
    # the resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the resource. Only the keys are
    #   required; the values are ignored.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing workflow with new configuration settings. This
    # operation allows you to modify the workflow definition, role, and
    # other settings. When you update a workflow, Amazon Managed Workflows
    # for Apache Airflow Serverless automatically creates a new version with
    # the updated configuration and disables scheduling on all previous
    # versions to ensure only one version is actively scheduled at a time.
    # The update operation maintains workflow history while providing a
    # clean transition to the new configuration.
    #
    # @option params [required, String] :workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow you want to update.
    #
    # @option params [required, Types::DefinitionS3Location] :definition_s3_location
    #   The Amazon S3 location where the updated workflow definition file is
    #   stored.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Amazon Managed
    #   Workflows for Apache Airflow Serverless assumes when it executes the
    #   updated workflow.
    #
    # @option params [String] :description
    #   An updated description for the workflow.
    #
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   Updated logging configuration for the workflow.
    #
    # @option params [Integer] :engine_version
    #   The version of the Amazon Managed Workflows for Apache Airflow
    #   Serverless engine that you want to use for the updated workflow.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   Updated network configuration for the workflow execution environment.
    #
    # @option params [String] :trigger_mode
    #   The trigger mode for the workflow execution.
    #
    # @return [Types::UpdateWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkflowResponse#workflow_arn #workflow_arn} => String
    #   * {Types::UpdateWorkflowResponse#modified_at #modified_at} => Time
    #   * {Types::UpdateWorkflowResponse#workflow_version #workflow_version} => String
    #   * {Types::UpdateWorkflowResponse#warnings #warnings} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workflow({
    #     workflow_arn: "WorkflowArn", # required
    #     definition_s3_location: { # required
    #       bucket: "String", # required
    #       object_key: "String", # required
    #       version_id: "String",
    #     },
    #     role_arn: "RoleARN", # required
    #     description: "DescriptionString",
    #     logging_configuration: {
    #       log_group_name: "String", # required
    #     },
    #     engine_version: 1,
    #     network_configuration: {
    #       security_group_ids: ["SecurityGroupString"],
    #       subnet_ids: ["SubnetString"],
    #     },
    #     trigger_mode: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_arn #=> String
    #   resp.modified_at #=> Time
    #   resp.workflow_version #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/UpdateWorkflow AWS API Documentation
    #
    # @overload update_workflow(params = {})
    # @param [Hash] params ({})
    def update_workflow(params = {}, options = {})
      req = build_request(:update_workflow, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MWAAServerless')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-mwaaserverless'
      context[:gem_version] = '1.1.0'
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
