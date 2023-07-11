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

Aws::Plugins::GlobalConfiguration.add_identifier(:migrationhubstrategyrecommendations)

module Aws::MigrationHubStrategyRecommendations
  # An API client for MigrationHubStrategyRecommendations.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MigrationHubStrategyRecommendations::Client.new(
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

    @identifier = :migrationhubstrategyrecommendations

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
    add_plugin(Aws::MigrationHubStrategyRecommendations::Plugins::Endpoints)

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
    #   @option options [Aws::MigrationHubStrategyRecommendations::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::MigrationHubStrategyRecommendations::EndpointParameters`
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

    # Retrieves details about an application component.
    #
    # @option params [required, String] :application_component_id
    #   The ID of the application component. The ID is unique within an AWS
    #   account.
    #
    # @return [Types::GetApplicationComponentDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationComponentDetailsResponse#application_component_detail #application_component_detail} => Types::ApplicationComponentDetail
    #   * {Types::GetApplicationComponentDetailsResponse#associated_applications #associated_applications} => Array&lt;Types::AssociatedApplication&gt;
    #   * {Types::GetApplicationComponentDetailsResponse#associated_server_ids #associated_server_ids} => Array&lt;String&gt;
    #   * {Types::GetApplicationComponentDetailsResponse#more_application_resource #more_application_resource} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_component_details({
    #     application_component_id: "ApplicationComponentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_component_detail.analysis_status #=> String, one of "ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED", "ANALYSIS_PARTIAL_SUCCESS", "UNCONFIGURED", "CONFIGURED"
    #   resp.application_component_detail.antipattern_report_s3_object.s3_bucket #=> String
    #   resp.application_component_detail.antipattern_report_s3_object.s3key #=> String
    #   resp.application_component_detail.antipattern_report_status #=> String, one of "FAILED", "IN_PROGRESS", "SUCCESS"
    #   resp.application_component_detail.antipattern_report_status_message #=> String
    #   resp.application_component_detail.app_type #=> String, one of "DotNetFramework", "Java", "SQLServer", "IIS", "Oracle", "Other", "Tomcat", "JBoss", "Spring", "Mongo DB", "DB2", "Maria DB", "MySQL", "Sybase", "PostgreSQLServer", "Cassandra", "IBM WebSphere", "Oracle WebLogic", "Visual Basic", "Unknown", "DotnetCore", "Dotnet"
    #   resp.application_component_detail.app_unit_error.app_unit_error_category #=> String, one of "CREDENTIAL_ERROR", "CONNECTIVITY_ERROR", "PERMISSION_ERROR", "UNSUPPORTED_ERROR", "OTHER_ERROR"
    #   resp.application_component_detail.associated_server_id #=> String
    #   resp.application_component_detail.database_config_detail.secret_name #=> String
    #   resp.application_component_detail.id #=> String
    #   resp.application_component_detail.inclusion_status #=> String, one of "excludeFromAssessment", "includeInAssessment"
    #   resp.application_component_detail.last_analyzed_timestamp #=> Time
    #   resp.application_component_detail.list_antipattern_severity_summary #=> Array
    #   resp.application_component_detail.list_antipattern_severity_summary[0].count #=> Integer
    #   resp.application_component_detail.list_antipattern_severity_summary[0].severity #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.application_component_detail.more_server_association_exists #=> Boolean
    #   resp.application_component_detail.name #=> String
    #   resp.application_component_detail.os_driver #=> String
    #   resp.application_component_detail.os_version #=> String
    #   resp.application_component_detail.recommendation_set.strategy #=> String, one of "Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"
    #   resp.application_component_detail.recommendation_set.target_destination #=> String, one of "None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service", "Babelfish for Aurora PostgreSQL"
    #   resp.application_component_detail.recommendation_set.transformation_tool.description #=> String
    #   resp.application_component_detail.recommendation_set.transformation_tool.name #=> String, one of "App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"
    #   resp.application_component_detail.recommendation_set.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.application_component_detail.resource_sub_type #=> String, one of "Database", "Process", "DatabaseProcess"
    #   resp.application_component_detail.result_list #=> Array
    #   resp.application_component_detail.result_list[0].analysis_status.runtime_analysis_status #=> String, one of "ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED"
    #   resp.application_component_detail.result_list[0].analysis_status.src_code_or_db_analysis_status #=> String, one of "ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED", "ANALYSIS_PARTIAL_SUCCESS", "UNCONFIGURED", "CONFIGURED"
    #   resp.application_component_detail.result_list[0].analysis_type #=> String, one of "SOURCE_CODE_ANALYSIS", "DATABASE_ANALYSIS", "RUNTIME_ANALYSIS", "BINARY_ANALYSIS"
    #   resp.application_component_detail.result_list[0].antipattern_report_result_list #=> Array
    #   resp.application_component_detail.result_list[0].antipattern_report_result_list[0].analyzer_name.binary_analyzer_name #=> String, one of "DLL_ANALYZER", "BYTECODE_ANALYZER"
    #   resp.application_component_detail.result_list[0].antipattern_report_result_list[0].analyzer_name.run_time_analyzer_name #=> String, one of "A2C_ANALYZER", "REHOST_ANALYZER", "EMP_PA_ANALYZER", "DATABASE_ANALYZER", "SCT_ANALYZER"
    #   resp.application_component_detail.result_list[0].antipattern_report_result_list[0].analyzer_name.source_code_analyzer_name #=> String, one of "CSHARP_ANALYZER", "JAVA_ANALYZER", "BYTECODE_ANALYZER", "PORTING_ASSISTANT"
    #   resp.application_component_detail.result_list[0].antipattern_report_result_list[0].anti_pattern_report_s3_object.s3_bucket #=> String
    #   resp.application_component_detail.result_list[0].antipattern_report_result_list[0].anti_pattern_report_s3_object.s3key #=> String
    #   resp.application_component_detail.result_list[0].antipattern_report_result_list[0].antipattern_report_status #=> String, one of "FAILED", "IN_PROGRESS", "SUCCESS"
    #   resp.application_component_detail.result_list[0].antipattern_report_result_list[0].antipattern_report_status_message #=> String
    #   resp.application_component_detail.result_list[0].status_message #=> String
    #   resp.application_component_detail.runtime_status #=> String, one of "ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED"
    #   resp.application_component_detail.runtime_status_message #=> String
    #   resp.application_component_detail.source_code_repositories #=> Array
    #   resp.application_component_detail.source_code_repositories[0].branch #=> String
    #   resp.application_component_detail.source_code_repositories[0].project_name #=> String
    #   resp.application_component_detail.source_code_repositories[0].repository #=> String
    #   resp.application_component_detail.source_code_repositories[0].version_control_type #=> String
    #   resp.application_component_detail.status_message #=> String
    #   resp.associated_applications #=> Array
    #   resp.associated_applications[0].id #=> String
    #   resp.associated_applications[0].name #=> String
    #   resp.associated_server_ids #=> Array
    #   resp.associated_server_ids[0] #=> String
    #   resp.more_application_resource #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetApplicationComponentDetails AWS API Documentation
    #
    # @overload get_application_component_details(params = {})
    # @param [Hash] params ({})
    def get_application_component_details(params = {}, options = {})
      req = build_request(:get_application_component_details, params)
      req.send_request(options)
    end

    # Retrieves a list of all the recommended strategies and tools for an
    # application component running on a server.
    #
    # @option params [required, String] :application_component_id
    #   The ID of the application component. The ID is unique within an AWS
    #   account.
    #
    # @return [Types::GetApplicationComponentStrategiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationComponentStrategiesResponse#application_component_strategies #application_component_strategies} => Array&lt;Types::ApplicationComponentStrategy&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_component_strategies({
    #     application_component_id: "ApplicationComponentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_component_strategies #=> Array
    #   resp.application_component_strategies[0].is_preferred #=> Boolean
    #   resp.application_component_strategies[0].recommendation.strategy #=> String, one of "Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"
    #   resp.application_component_strategies[0].recommendation.target_destination #=> String, one of "None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service", "Babelfish for Aurora PostgreSQL"
    #   resp.application_component_strategies[0].recommendation.transformation_tool.description #=> String
    #   resp.application_component_strategies[0].recommendation.transformation_tool.name #=> String, one of "App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"
    #   resp.application_component_strategies[0].recommendation.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.application_component_strategies[0].status #=> String, one of "recommended", "viableOption", "notRecommended", "potential"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetApplicationComponentStrategies AWS API Documentation
    #
    # @overload get_application_component_strategies(params = {})
    # @param [Hash] params ({})
    def get_application_component_strategies(params = {}, options = {})
      req = build_request(:get_application_component_strategies, params)
      req.send_request(options)
    end

    # Retrieves the status of an on-going assessment.
    #
    # @option params [required, String] :id
    #   The `assessmentid` returned by StartAssessment.
    #
    # @return [Types::GetAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssessmentResponse#assessment_targets #assessment_targets} => Array&lt;Types::AssessmentTarget&gt;
    #   * {Types::GetAssessmentResponse#data_collection_details #data_collection_details} => Types::DataCollectionDetails
    #   * {Types::GetAssessmentResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assessment({
    #     id: "AsyncTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_targets #=> Array
    #   resp.assessment_targets[0].condition #=> String, one of "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"
    #   resp.assessment_targets[0].name #=> String
    #   resp.assessment_targets[0].values #=> Array
    #   resp.assessment_targets[0].values[0] #=> String
    #   resp.data_collection_details.completion_time #=> Time
    #   resp.data_collection_details.failed #=> Integer
    #   resp.data_collection_details.in_progress #=> Integer
    #   resp.data_collection_details.servers #=> Integer
    #   resp.data_collection_details.start_time #=> Time
    #   resp.data_collection_details.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED", "STOPPED"
    #   resp.data_collection_details.status_message #=> String
    #   resp.data_collection_details.success #=> Integer
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetAssessment AWS API Documentation
    #
    # @overload get_assessment(params = {})
    # @param [Hash] params ({})
    def get_assessment(params = {}, options = {})
      req = build_request(:get_assessment, params)
      req.send_request(options)
    end

    # Retrieves the details about a specific import task.
    #
    # @option params [required, String] :id
    #   The ID of the import file task. This ID is returned in the response of
    #   StartImportFileTask.
    #
    # @return [Types::GetImportFileTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportFileTaskResponse#completion_time #completion_time} => Time
    #   * {Types::GetImportFileTaskResponse#id #id} => String
    #   * {Types::GetImportFileTaskResponse#import_name #import_name} => String
    #   * {Types::GetImportFileTaskResponse#input_s3_bucket #input_s3_bucket} => String
    #   * {Types::GetImportFileTaskResponse#input_s3_key #input_s3_key} => String
    #   * {Types::GetImportFileTaskResponse#number_of_records_failed #number_of_records_failed} => Integer
    #   * {Types::GetImportFileTaskResponse#number_of_records_success #number_of_records_success} => Integer
    #   * {Types::GetImportFileTaskResponse#start_time #start_time} => Time
    #   * {Types::GetImportFileTaskResponse#status #status} => String
    #   * {Types::GetImportFileTaskResponse#status_report_s3_bucket #status_report_s3_bucket} => String
    #   * {Types::GetImportFileTaskResponse#status_report_s3_key #status_report_s3_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_file_task({
    #     id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.completion_time #=> Time
    #   resp.id #=> String
    #   resp.import_name #=> String
    #   resp.input_s3_bucket #=> String
    #   resp.input_s3_key #=> String
    #   resp.number_of_records_failed #=> Integer
    #   resp.number_of_records_success #=> Integer
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "ImportInProgress", "ImportFailed", "ImportPartialSuccess", "ImportSuccess", "DeleteInProgress", "DeleteFailed", "DeletePartialSuccess", "DeleteSuccess"
    #   resp.status_report_s3_bucket #=> String
    #   resp.status_report_s3_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetImportFileTask AWS API Documentation
    #
    # @overload get_import_file_task(params = {})
    # @param [Hash] params ({})
    def get_import_file_task(params = {}, options = {})
      req = build_request(:get_import_file_task, params)
      req.send_request(options)
    end

    # Retrieve the latest ID of a specific assessment task.
    #
    # @return [Types::GetLatestAssessmentIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLatestAssessmentIdResponse#id #id} => String
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetLatestAssessmentId AWS API Documentation
    #
    # @overload get_latest_assessment_id(params = {})
    # @param [Hash] params ({})
    def get_latest_assessment_id(params = {}, options = {})
      req = build_request(:get_latest_assessment_id, params)
      req.send_request(options)
    end

    # Retrieves your migration and modernization preferences.
    #
    # @return [Types::GetPortfolioPreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPortfolioPreferencesResponse#application_mode #application_mode} => String
    #   * {Types::GetPortfolioPreferencesResponse#application_preferences #application_preferences} => Types::ApplicationPreferences
    #   * {Types::GetPortfolioPreferencesResponse#database_preferences #database_preferences} => Types::DatabasePreferences
    #   * {Types::GetPortfolioPreferencesResponse#prioritize_business_goals #prioritize_business_goals} => Types::PrioritizeBusinessGoals
    #
    # @example Response structure
    #
    #   resp.application_mode #=> String, one of "ALL", "KNOWN", "UNKNOWN"
    #   resp.application_preferences.management_preference.aws_managed_resources.target_destination #=> Array
    #   resp.application_preferences.management_preference.aws_managed_resources.target_destination[0] #=> String, one of "None specified", "AWS Elastic BeanStalk", "AWS Fargate"
    #   resp.application_preferences.management_preference.no_preference.target_destination #=> Array
    #   resp.application_preferences.management_preference.no_preference.target_destination[0] #=> String, one of "None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)"
    #   resp.application_preferences.management_preference.self_manage_resources.target_destination #=> Array
    #   resp.application_preferences.management_preference.self_manage_resources.target_destination[0] #=> String, one of "None specified", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)"
    #   resp.database_preferences.database_management_preference #=> String, one of "AWS-managed", "Self-manage", "No preference"
    #   resp.database_preferences.database_migration_preference.heterogeneous.target_database_engine #=> Array
    #   resp.database_preferences.database_migration_preference.heterogeneous.target_database_engine[0] #=> String, one of "None specified", "Amazon Aurora", "AWS PostgreSQL", "MySQL", "Microsoft SQL Server", "Oracle Database", "MariaDB", "SAP", "Db2 LUW", "MongoDB"
    #   resp.database_preferences.database_migration_preference.homogeneous.target_database_engine #=> Array
    #   resp.database_preferences.database_migration_preference.homogeneous.target_database_engine[0] #=> String, one of "None specified"
    #   resp.database_preferences.database_migration_preference.no_preference.target_database_engine #=> Array
    #   resp.database_preferences.database_migration_preference.no_preference.target_database_engine[0] #=> String, one of "None specified", "Amazon Aurora", "AWS PostgreSQL", "MySQL", "Microsoft SQL Server", "Oracle Database", "MariaDB", "SAP", "Db2 LUW", "MongoDB"
    #   resp.prioritize_business_goals.business_goals.license_cost_reduction #=> Integer
    #   resp.prioritize_business_goals.business_goals.modernize_infrastructure_with_cloud_native_technologies #=> Integer
    #   resp.prioritize_business_goals.business_goals.reduce_operational_overhead_with_managed_services #=> Integer
    #   resp.prioritize_business_goals.business_goals.speed_of_migration #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetPortfolioPreferences AWS API Documentation
    #
    # @overload get_portfolio_preferences(params = {})
    # @param [Hash] params ({})
    def get_portfolio_preferences(params = {}, options = {})
      req = build_request(:get_portfolio_preferences, params)
      req.send_request(options)
    end

    # Retrieves overall summary including the number of servers to rehost
    # and the overall number of anti-patterns.
    #
    # @return [Types::GetPortfolioSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPortfolioSummaryResponse#assessment_summary #assessment_summary} => Types::AssessmentSummary
    #
    # @example Response structure
    #
    #   resp.assessment_summary.antipattern_report_s3_object.s3_bucket #=> String
    #   resp.assessment_summary.antipattern_report_s3_object.s3key #=> String
    #   resp.assessment_summary.antipattern_report_status #=> String, one of "FAILED", "IN_PROGRESS", "SUCCESS"
    #   resp.assessment_summary.antipattern_report_status_message #=> String
    #   resp.assessment_summary.last_analyzed_timestamp #=> Time
    #   resp.assessment_summary.list_antipattern_severity_summary #=> Array
    #   resp.assessment_summary.list_antipattern_severity_summary[0].count #=> Integer
    #   resp.assessment_summary.list_antipattern_severity_summary[0].severity #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.assessment_summary.list_application_component_status_summary #=> Array
    #   resp.assessment_summary.list_application_component_status_summary[0].count #=> Integer
    #   resp.assessment_summary.list_application_component_status_summary[0].src_code_or_db_analysis_status #=> String, one of "ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED", "ANALYSIS_PARTIAL_SUCCESS", "UNCONFIGURED", "CONFIGURED"
    #   resp.assessment_summary.list_application_component_strategy_summary #=> Array
    #   resp.assessment_summary.list_application_component_strategy_summary[0].count #=> Integer
    #   resp.assessment_summary.list_application_component_strategy_summary[0].strategy #=> String, one of "Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"
    #   resp.assessment_summary.list_application_component_summary #=> Array
    #   resp.assessment_summary.list_application_component_summary[0].app_type #=> String, one of "DotNetFramework", "Java", "SQLServer", "IIS", "Oracle", "Other", "Tomcat", "JBoss", "Spring", "Mongo DB", "DB2", "Maria DB", "MySQL", "Sybase", "PostgreSQLServer", "Cassandra", "IBM WebSphere", "Oracle WebLogic", "Visual Basic", "Unknown", "DotnetCore", "Dotnet"
    #   resp.assessment_summary.list_application_component_summary[0].count #=> Integer
    #   resp.assessment_summary.list_server_status_summary #=> Array
    #   resp.assessment_summary.list_server_status_summary[0].count #=> Integer
    #   resp.assessment_summary.list_server_status_summary[0].run_time_assessment_status #=> String, one of "dataCollectionTaskToBeScheduled", "dataCollectionTaskScheduled", "dataCollectionTaskStarted", "dataCollectionTaskStopped", "dataCollectionTaskSuccess", "dataCollectionTaskFailed", "dataCollectionTaskPartialSuccess"
    #   resp.assessment_summary.list_server_strategy_summary #=> Array
    #   resp.assessment_summary.list_server_strategy_summary[0].count #=> Integer
    #   resp.assessment_summary.list_server_strategy_summary[0].strategy #=> String, one of "Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"
    #   resp.assessment_summary.list_server_summary #=> Array
    #   resp.assessment_summary.list_server_summary[0].server_os_type #=> String, one of "WindowsServer", "AmazonLinux", "EndOfSupportWindowsServer", "Redhat", "Other"
    #   resp.assessment_summary.list_server_summary[0].count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetPortfolioSummary AWS API Documentation
    #
    # @overload get_portfolio_summary(params = {})
    # @param [Hash] params ({})
    def get_portfolio_summary(params = {}, options = {})
      req = build_request(:get_portfolio_summary, params)
      req.send_request(options)
    end

    # Retrieves detailed information about the specified recommendation
    # report.
    #
    # @option params [required, String] :id
    #   The recommendation report generation task `id` returned by
    #   StartRecommendationReportGeneration.
    #
    # @return [Types::GetRecommendationReportDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationReportDetailsResponse#id #id} => String
    #   * {Types::GetRecommendationReportDetailsResponse#recommendation_report_details #recommendation_report_details} => Types::RecommendationReportDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendation_report_details({
    #     id: "RecommendationTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.recommendation_report_details.completion_time #=> Time
    #   resp.recommendation_report_details.s3_bucket #=> String
    #   resp.recommendation_report_details.s3_keys #=> Array
    #   resp.recommendation_report_details.s3_keys[0] #=> String
    #   resp.recommendation_report_details.start_time #=> Time
    #   resp.recommendation_report_details.status #=> String, one of "FAILED", "IN_PROGRESS", "SUCCESS"
    #   resp.recommendation_report_details.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetRecommendationReportDetails AWS API Documentation
    #
    # @overload get_recommendation_report_details(params = {})
    # @param [Hash] params ({})
    def get_recommendation_report_details(params = {}, options = {})
      req = build_request(:get_recommendation_report_details, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specified server.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to include in the response. The maximum
    #   value is 100.
    #
    # @option params [String] :next_token
    #   The token from a previous call that you use to retrieve the next set
    #   of results. For example, if a previous call to this action returned
    #   100 items, but you set `maxResults` to 10. You'll receive a set of 10
    #   results along with a token. You then use the returned token to
    #   retrieve the next set of 10.
    #
    # @option params [required, String] :server_id
    #   The ID of the server.
    #
    # @return [Types::GetServerDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServerDetailsResponse#associated_applications #associated_applications} => Array&lt;Types::AssociatedApplication&gt;
    #   * {Types::GetServerDetailsResponse#next_token #next_token} => String
    #   * {Types::GetServerDetailsResponse#server_detail #server_detail} => Types::ServerDetail
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_server_details({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.associated_applications #=> Array
    #   resp.associated_applications[0].id #=> String
    #   resp.associated_applications[0].name #=> String
    #   resp.next_token #=> String
    #   resp.server_detail.antipattern_report_s3_object.s3_bucket #=> String
    #   resp.server_detail.antipattern_report_s3_object.s3key #=> String
    #   resp.server_detail.antipattern_report_status #=> String, one of "FAILED", "IN_PROGRESS", "SUCCESS"
    #   resp.server_detail.antipattern_report_status_message #=> String
    #   resp.server_detail.application_component_strategy_summary #=> Array
    #   resp.server_detail.application_component_strategy_summary[0].count #=> Integer
    #   resp.server_detail.application_component_strategy_summary[0].strategy #=> String, one of "Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"
    #   resp.server_detail.data_collection_status #=> String, one of "dataCollectionTaskToBeScheduled", "dataCollectionTaskScheduled", "dataCollectionTaskStarted", "dataCollectionTaskStopped", "dataCollectionTaskSuccess", "dataCollectionTaskFailed", "dataCollectionTaskPartialSuccess"
    #   resp.server_detail.id #=> String
    #   resp.server_detail.last_analyzed_timestamp #=> Time
    #   resp.server_detail.list_antipattern_severity_summary #=> Array
    #   resp.server_detail.list_antipattern_severity_summary[0].count #=> Integer
    #   resp.server_detail.list_antipattern_severity_summary[0].severity #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.server_detail.name #=> String
    #   resp.server_detail.recommendation_set.strategy #=> String, one of "Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"
    #   resp.server_detail.recommendation_set.target_destination #=> String, one of "None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service", "Babelfish for Aurora PostgreSQL"
    #   resp.server_detail.recommendation_set.transformation_tool.description #=> String
    #   resp.server_detail.recommendation_set.transformation_tool.name #=> String, one of "App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"
    #   resp.server_detail.recommendation_set.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.server_detail.server_error.server_error_category #=> String, one of "CONNECTIVITY_ERROR", "CREDENTIAL_ERROR", "PERMISSION_ERROR", "ARCHITECTURE_ERROR", "OTHER_ERROR"
    #   resp.server_detail.server_type #=> String
    #   resp.server_detail.status_message #=> String
    #   resp.server_detail.system_info.cpu_architecture #=> String
    #   resp.server_detail.system_info.file_system_type #=> String
    #   resp.server_detail.system_info.network_info_list #=> Array
    #   resp.server_detail.system_info.network_info_list[0].interface_name #=> String
    #   resp.server_detail.system_info.network_info_list[0].ip_address #=> String
    #   resp.server_detail.system_info.network_info_list[0].mac_address #=> String
    #   resp.server_detail.system_info.network_info_list[0].net_mask #=> String
    #   resp.server_detail.system_info.os_info.type #=> String, one of "LINUX", "WINDOWS"
    #   resp.server_detail.system_info.os_info.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetServerDetails AWS API Documentation
    #
    # @overload get_server_details(params = {})
    # @param [Hash] params ({})
    def get_server_details(params = {}, options = {})
      req = build_request(:get_server_details, params)
      req.send_request(options)
    end

    # Retrieves recommended strategies and tools for the specified server.
    #
    # @option params [required, String] :server_id
    #   The ID of the server.
    #
    # @return [Types::GetServerStrategiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServerStrategiesResponse#server_strategies #server_strategies} => Array&lt;Types::ServerStrategy&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_server_strategies({
    #     server_id: "ServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_strategies #=> Array
    #   resp.server_strategies[0].is_preferred #=> Boolean
    #   resp.server_strategies[0].number_of_application_components #=> Integer
    #   resp.server_strategies[0].recommendation.strategy #=> String, one of "Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"
    #   resp.server_strategies[0].recommendation.target_destination #=> String, one of "None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service", "Babelfish for Aurora PostgreSQL"
    #   resp.server_strategies[0].recommendation.transformation_tool.description #=> String
    #   resp.server_strategies[0].recommendation.transformation_tool.name #=> String, one of "App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"
    #   resp.server_strategies[0].recommendation.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.server_strategies[0].status #=> String, one of "recommended", "viableOption", "notRecommended", "potential"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetServerStrategies AWS API Documentation
    #
    # @overload get_server_strategies(params = {})
    # @param [Hash] params ({})
    def get_server_strategies(params = {}, options = {})
      req = build_request(:get_server_strategies, params)
      req.send_request(options)
    end

    # Retrieves a list of all the application components (processes).
    #
    # @option params [String] :application_component_criteria
    #   Criteria for filtering the list of application components.
    #
    # @option params [String] :filter_value
    #   Specify the value based on the application component criteria type.
    #   For example, if `applicationComponentCriteria` is set to `SERVER_ID`
    #   and `filterValue` is set to `server1`, then ListApplicationComponents
    #   returns all the application components running on server1.
    #
    # @option params [Array<Types::Group>] :group_id_filter
    #   The group ID specified in to filter on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to include in the response. The maximum
    #   value is 100.
    #
    # @option params [String] :next_token
    #   The token from a previous call that you use to retrieve the next set
    #   of results. For example, if a previous call to this action returned
    #   100 items, but you set `maxResults` to 10. You'll receive a set of 10
    #   results along with a token. You then use the returned token to
    #   retrieve the next set of 10.
    #
    # @option params [String] :sort
    #   Specifies whether to sort by ascending (`ASC`) or descending (`DESC`)
    #   order.
    #
    # @return [Types::ListApplicationComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationComponentsResponse#application_component_infos #application_component_infos} => Array&lt;Types::ApplicationComponentDetail&gt;
    #   * {Types::ListApplicationComponentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_components({
    #     application_component_criteria: "NOT_DEFINED", # accepts NOT_DEFINED, APP_NAME, SERVER_ID, APP_TYPE, STRATEGY, DESTINATION, ANALYSIS_STATUS, ERROR_CATEGORY
    #     filter_value: "ListApplicationComponentsRequestFilterValueString",
    #     group_id_filter: [
    #       {
    #         name: "ExternalId", # accepts ExternalId, ExternalSourceType
    #         value: "String",
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort: "ASC", # accepts ASC, DESC
    #   })
    #
    # @example Response structure
    #
    #   resp.application_component_infos #=> Array
    #   resp.application_component_infos[0].analysis_status #=> String, one of "ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED", "ANALYSIS_PARTIAL_SUCCESS", "UNCONFIGURED", "CONFIGURED"
    #   resp.application_component_infos[0].antipattern_report_s3_object.s3_bucket #=> String
    #   resp.application_component_infos[0].antipattern_report_s3_object.s3key #=> String
    #   resp.application_component_infos[0].antipattern_report_status #=> String, one of "FAILED", "IN_PROGRESS", "SUCCESS"
    #   resp.application_component_infos[0].antipattern_report_status_message #=> String
    #   resp.application_component_infos[0].app_type #=> String, one of "DotNetFramework", "Java", "SQLServer", "IIS", "Oracle", "Other", "Tomcat", "JBoss", "Spring", "Mongo DB", "DB2", "Maria DB", "MySQL", "Sybase", "PostgreSQLServer", "Cassandra", "IBM WebSphere", "Oracle WebLogic", "Visual Basic", "Unknown", "DotnetCore", "Dotnet"
    #   resp.application_component_infos[0].app_unit_error.app_unit_error_category #=> String, one of "CREDENTIAL_ERROR", "CONNECTIVITY_ERROR", "PERMISSION_ERROR", "UNSUPPORTED_ERROR", "OTHER_ERROR"
    #   resp.application_component_infos[0].associated_server_id #=> String
    #   resp.application_component_infos[0].database_config_detail.secret_name #=> String
    #   resp.application_component_infos[0].id #=> String
    #   resp.application_component_infos[0].inclusion_status #=> String, one of "excludeFromAssessment", "includeInAssessment"
    #   resp.application_component_infos[0].last_analyzed_timestamp #=> Time
    #   resp.application_component_infos[0].list_antipattern_severity_summary #=> Array
    #   resp.application_component_infos[0].list_antipattern_severity_summary[0].count #=> Integer
    #   resp.application_component_infos[0].list_antipattern_severity_summary[0].severity #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.application_component_infos[0].more_server_association_exists #=> Boolean
    #   resp.application_component_infos[0].name #=> String
    #   resp.application_component_infos[0].os_driver #=> String
    #   resp.application_component_infos[0].os_version #=> String
    #   resp.application_component_infos[0].recommendation_set.strategy #=> String, one of "Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"
    #   resp.application_component_infos[0].recommendation_set.target_destination #=> String, one of "None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service", "Babelfish for Aurora PostgreSQL"
    #   resp.application_component_infos[0].recommendation_set.transformation_tool.description #=> String
    #   resp.application_component_infos[0].recommendation_set.transformation_tool.name #=> String, one of "App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"
    #   resp.application_component_infos[0].recommendation_set.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.application_component_infos[0].resource_sub_type #=> String, one of "Database", "Process", "DatabaseProcess"
    #   resp.application_component_infos[0].result_list #=> Array
    #   resp.application_component_infos[0].result_list[0].analysis_status.runtime_analysis_status #=> String, one of "ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED"
    #   resp.application_component_infos[0].result_list[0].analysis_status.src_code_or_db_analysis_status #=> String, one of "ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED", "ANALYSIS_PARTIAL_SUCCESS", "UNCONFIGURED", "CONFIGURED"
    #   resp.application_component_infos[0].result_list[0].analysis_type #=> String, one of "SOURCE_CODE_ANALYSIS", "DATABASE_ANALYSIS", "RUNTIME_ANALYSIS", "BINARY_ANALYSIS"
    #   resp.application_component_infos[0].result_list[0].antipattern_report_result_list #=> Array
    #   resp.application_component_infos[0].result_list[0].antipattern_report_result_list[0].analyzer_name.binary_analyzer_name #=> String, one of "DLL_ANALYZER", "BYTECODE_ANALYZER"
    #   resp.application_component_infos[0].result_list[0].antipattern_report_result_list[0].analyzer_name.run_time_analyzer_name #=> String, one of "A2C_ANALYZER", "REHOST_ANALYZER", "EMP_PA_ANALYZER", "DATABASE_ANALYZER", "SCT_ANALYZER"
    #   resp.application_component_infos[0].result_list[0].antipattern_report_result_list[0].analyzer_name.source_code_analyzer_name #=> String, one of "CSHARP_ANALYZER", "JAVA_ANALYZER", "BYTECODE_ANALYZER", "PORTING_ASSISTANT"
    #   resp.application_component_infos[0].result_list[0].antipattern_report_result_list[0].anti_pattern_report_s3_object.s3_bucket #=> String
    #   resp.application_component_infos[0].result_list[0].antipattern_report_result_list[0].anti_pattern_report_s3_object.s3key #=> String
    #   resp.application_component_infos[0].result_list[0].antipattern_report_result_list[0].antipattern_report_status #=> String, one of "FAILED", "IN_PROGRESS", "SUCCESS"
    #   resp.application_component_infos[0].result_list[0].antipattern_report_result_list[0].antipattern_report_status_message #=> String
    #   resp.application_component_infos[0].result_list[0].status_message #=> String
    #   resp.application_component_infos[0].runtime_status #=> String, one of "ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED"
    #   resp.application_component_infos[0].runtime_status_message #=> String
    #   resp.application_component_infos[0].source_code_repositories #=> Array
    #   resp.application_component_infos[0].source_code_repositories[0].branch #=> String
    #   resp.application_component_infos[0].source_code_repositories[0].project_name #=> String
    #   resp.application_component_infos[0].source_code_repositories[0].repository #=> String
    #   resp.application_component_infos[0].source_code_repositories[0].version_control_type #=> String
    #   resp.application_component_infos[0].status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListApplicationComponents AWS API Documentation
    #
    # @overload list_application_components(params = {})
    # @param [Hash] params ({})
    def list_application_components(params = {}, options = {})
      req = build_request(:list_application_components, params)
      req.send_request(options)
    end

    # Retrieves a list of all the installed collectors.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to include in the response. The maximum
    #   value is 100.
    #
    # @option params [String] :next_token
    #   The token from a previous call that you use to retrieve the next set
    #   of results. For example, if a previous call to this action returned
    #   100 items, but you set `maxResults` to 10. You'll receive a set of 10
    #   results along with a token. You then use the returned token to
    #   retrieve the next set of 10.
    #
    # @return [Types::ListCollectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollectorsResponse#collectors #collectors} => Array&lt;Types::Collector&gt;
    #   * {Types::ListCollectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collectors({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.collectors #=> Array
    #   resp.collectors[0].collector_health #=> String, one of "COLLECTOR_HEALTHY", "COLLECTOR_UNHEALTHY"
    #   resp.collectors[0].collector_id #=> String
    #   resp.collectors[0].collector_version #=> String
    #   resp.collectors[0].configuration_summary.ip_address_based_remote_info_list #=> Array
    #   resp.collectors[0].configuration_summary.ip_address_based_remote_info_list[0].auth_type #=> String, one of "NTLM", "SSH", "CERT"
    #   resp.collectors[0].configuration_summary.ip_address_based_remote_info_list[0].ip_address_configuration_time_stamp #=> String
    #   resp.collectors[0].configuration_summary.ip_address_based_remote_info_list[0].os_type #=> String, one of "LINUX", "WINDOWS"
    #   resp.collectors[0].configuration_summary.pipeline_info_list #=> Array
    #   resp.collectors[0].configuration_summary.pipeline_info_list[0].pipeline_configuration_time_stamp #=> String
    #   resp.collectors[0].configuration_summary.pipeline_info_list[0].pipeline_type #=> String, one of "AZURE_DEVOPS"
    #   resp.collectors[0].configuration_summary.remote_source_code_analysis_server_info.remote_source_code_analysis_server_configuration_timestamp #=> String
    #   resp.collectors[0].configuration_summary.vcenter_based_remote_info_list #=> Array
    #   resp.collectors[0].configuration_summary.vcenter_based_remote_info_list[0].os_type #=> String, one of "LINUX", "WINDOWS"
    #   resp.collectors[0].configuration_summary.vcenter_based_remote_info_list[0].vcenter_configuration_time_stamp #=> String
    #   resp.collectors[0].configuration_summary.version_control_info_list #=> Array
    #   resp.collectors[0].configuration_summary.version_control_info_list[0].version_control_configuration_time_stamp #=> String
    #   resp.collectors[0].configuration_summary.version_control_info_list[0].version_control_type #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "AZURE_DEVOPS_GIT"
    #   resp.collectors[0].host_name #=> String
    #   resp.collectors[0].ip_address #=> String
    #   resp.collectors[0].last_activity_time_stamp #=> String
    #   resp.collectors[0].registered_time_stamp #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListCollectors AWS API Documentation
    #
    # @overload list_collectors(params = {})
    # @param [Hash] params ({})
    def list_collectors(params = {}, options = {})
      req = build_request(:list_collectors, params)
      req.send_request(options)
    end

    # Retrieves a list of all the imports performed.
    #
    # @option params [Integer] :max_results
    #   The total number of items to return. The maximum value is 100.
    #
    # @option params [String] :next_token
    #   The token from a previous call that you use to retrieve the next set
    #   of results. For example, if a previous call to this action returned
    #   100 items, but you set `maxResults` to 10. You'll receive a set of 10
    #   results along with a token. You then use the returned token to
    #   retrieve the next set of 10.
    #
    # @return [Types::ListImportFileTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportFileTaskResponse#next_token #next_token} => String
    #   * {Types::ListImportFileTaskResponse#task_infos #task_infos} => Array&lt;Types::ImportFileTaskInformation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_import_file_task({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.task_infos #=> Array
    #   resp.task_infos[0].completion_time #=> Time
    #   resp.task_infos[0].id #=> String
    #   resp.task_infos[0].import_name #=> String
    #   resp.task_infos[0].input_s3_bucket #=> String
    #   resp.task_infos[0].input_s3_key #=> String
    #   resp.task_infos[0].number_of_records_failed #=> Integer
    #   resp.task_infos[0].number_of_records_success #=> Integer
    #   resp.task_infos[0].start_time #=> Time
    #   resp.task_infos[0].status #=> String, one of "ImportInProgress", "ImportFailed", "ImportPartialSuccess", "ImportSuccess", "DeleteInProgress", "DeleteFailed", "DeletePartialSuccess", "DeleteSuccess"
    #   resp.task_infos[0].status_report_s3_bucket #=> String
    #   resp.task_infos[0].status_report_s3_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListImportFileTask AWS API Documentation
    #
    # @overload list_import_file_task(params = {})
    # @param [Hash] params ({})
    def list_import_file_task(params = {}, options = {})
      req = build_request(:list_import_file_task, params)
      req.send_request(options)
    end

    # Returns a list of all the servers.
    #
    # @option params [String] :filter_value
    #   Specifies the filter value, which is based on the type of server
    #   criteria. For example, if `serverCriteria` is `OS_NAME`, and the
    #   `filterValue` is equal to `WindowsServer`, then `ListServers` returns
    #   all of the servers matching the OS name `WindowsServer`.
    #
    # @option params [Array<Types::Group>] :group_id_filter
    #   Specifies the group ID to filter on.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to include in the response. The maximum
    #   value is 100.
    #
    # @option params [String] :next_token
    #   The token from a previous call that you use to retrieve the next set
    #   of results. For example, if a previous call to this action returned
    #   100 items, but you set `maxResults` to 10. You'll receive a set of 10
    #   results along with a token. You then use the returned token to
    #   retrieve the next set of 10.
    #
    # @option params [String] :server_criteria
    #   Criteria for filtering servers.
    #
    # @option params [String] :sort
    #   Specifies whether to sort by ascending (`ASC`) or descending (`DESC`)
    #   order.
    #
    # @return [Types::ListServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServersResponse#next_token #next_token} => String
    #   * {Types::ListServersResponse#server_infos #server_infos} => Array&lt;Types::ServerDetail&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_servers({
    #     filter_value: "String",
    #     group_id_filter: [
    #       {
    #         name: "ExternalId", # accepts ExternalId, ExternalSourceType
    #         value: "String",
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     server_criteria: "NOT_DEFINED", # accepts NOT_DEFINED, OS_NAME, STRATEGY, DESTINATION, SERVER_ID, ANALYSIS_STATUS, ERROR_CATEGORY
    #     sort: "ASC", # accepts ASC, DESC
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.server_infos #=> Array
    #   resp.server_infos[0].antipattern_report_s3_object.s3_bucket #=> String
    #   resp.server_infos[0].antipattern_report_s3_object.s3key #=> String
    #   resp.server_infos[0].antipattern_report_status #=> String, one of "FAILED", "IN_PROGRESS", "SUCCESS"
    #   resp.server_infos[0].antipattern_report_status_message #=> String
    #   resp.server_infos[0].application_component_strategy_summary #=> Array
    #   resp.server_infos[0].application_component_strategy_summary[0].count #=> Integer
    #   resp.server_infos[0].application_component_strategy_summary[0].strategy #=> String, one of "Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"
    #   resp.server_infos[0].data_collection_status #=> String, one of "dataCollectionTaskToBeScheduled", "dataCollectionTaskScheduled", "dataCollectionTaskStarted", "dataCollectionTaskStopped", "dataCollectionTaskSuccess", "dataCollectionTaskFailed", "dataCollectionTaskPartialSuccess"
    #   resp.server_infos[0].id #=> String
    #   resp.server_infos[0].last_analyzed_timestamp #=> Time
    #   resp.server_infos[0].list_antipattern_severity_summary #=> Array
    #   resp.server_infos[0].list_antipattern_severity_summary[0].count #=> Integer
    #   resp.server_infos[0].list_antipattern_severity_summary[0].severity #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.server_infos[0].name #=> String
    #   resp.server_infos[0].recommendation_set.strategy #=> String, one of "Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"
    #   resp.server_infos[0].recommendation_set.target_destination #=> String, one of "None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service", "Babelfish for Aurora PostgreSQL"
    #   resp.server_infos[0].recommendation_set.transformation_tool.description #=> String
    #   resp.server_infos[0].recommendation_set.transformation_tool.name #=> String, one of "App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"
    #   resp.server_infos[0].recommendation_set.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.server_infos[0].server_error.server_error_category #=> String, one of "CONNECTIVITY_ERROR", "CREDENTIAL_ERROR", "PERMISSION_ERROR", "ARCHITECTURE_ERROR", "OTHER_ERROR"
    #   resp.server_infos[0].server_type #=> String
    #   resp.server_infos[0].status_message #=> String
    #   resp.server_infos[0].system_info.cpu_architecture #=> String
    #   resp.server_infos[0].system_info.file_system_type #=> String
    #   resp.server_infos[0].system_info.network_info_list #=> Array
    #   resp.server_infos[0].system_info.network_info_list[0].interface_name #=> String
    #   resp.server_infos[0].system_info.network_info_list[0].ip_address #=> String
    #   resp.server_infos[0].system_info.network_info_list[0].mac_address #=> String
    #   resp.server_infos[0].system_info.network_info_list[0].net_mask #=> String
    #   resp.server_infos[0].system_info.os_info.type #=> String, one of "LINUX", "WINDOWS"
    #   resp.server_infos[0].system_info.os_info.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListServers AWS API Documentation
    #
    # @overload list_servers(params = {})
    # @param [Hash] params ({})
    def list_servers(params = {}, options = {})
      req = build_request(:list_servers, params)
      req.send_request(options)
    end

    # Saves the specified migration and modernization preferences.
    #
    # @option params [String] :application_mode
    #   The classification for application component types.
    #
    # @option params [Types::ApplicationPreferences] :application_preferences
    #   The transformation preferences for non-database applications.
    #
    # @option params [Types::DatabasePreferences] :database_preferences
    #   The transformation preferences for database applications.
    #
    # @option params [Types::PrioritizeBusinessGoals] :prioritize_business_goals
    #   The rank of the business goals based on priority.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_portfolio_preferences({
    #     application_mode: "ALL", # accepts ALL, KNOWN, UNKNOWN
    #     application_preferences: {
    #       management_preference: {
    #         aws_managed_resources: {
    #           target_destination: ["None specified"], # required, accepts None specified, AWS Elastic BeanStalk, AWS Fargate
    #         },
    #         no_preference: {
    #           target_destination: ["None specified"], # required, accepts None specified, AWS Elastic BeanStalk, AWS Fargate, Amazon Elastic Cloud Compute (EC2), Amazon Elastic Container Service (ECS), Amazon Elastic Kubernetes Service (EKS)
    #         },
    #         self_manage_resources: {
    #           target_destination: ["None specified"], # required, accepts None specified, Amazon Elastic Cloud Compute (EC2), Amazon Elastic Container Service (ECS), Amazon Elastic Kubernetes Service (EKS)
    #         },
    #       },
    #     },
    #     database_preferences: {
    #       database_management_preference: "AWS-managed", # accepts AWS-managed, Self-manage, No preference
    #       database_migration_preference: {
    #         heterogeneous: {
    #           target_database_engine: ["None specified"], # required, accepts None specified, Amazon Aurora, AWS PostgreSQL, MySQL, Microsoft SQL Server, Oracle Database, MariaDB, SAP, Db2 LUW, MongoDB
    #         },
    #         homogeneous: {
    #           target_database_engine: ["None specified"], # accepts None specified
    #         },
    #         no_preference: {
    #           target_database_engine: ["None specified"], # required, accepts None specified, Amazon Aurora, AWS PostgreSQL, MySQL, Microsoft SQL Server, Oracle Database, MariaDB, SAP, Db2 LUW, MongoDB
    #         },
    #       },
    #     },
    #     prioritize_business_goals: {
    #       business_goals: {
    #         license_cost_reduction: 1,
    #         modernize_infrastructure_with_cloud_native_technologies: 1,
    #         reduce_operational_overhead_with_managed_services: 1,
    #         speed_of_migration: 1,
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/PutPortfolioPreferences AWS API Documentation
    #
    # @overload put_portfolio_preferences(params = {})
    # @param [Hash] params ({})
    def put_portfolio_preferences(params = {}, options = {})
      req = build_request(:put_portfolio_preferences, params)
      req.send_request(options)
    end

    # Starts the assessment of an on-premises environment.
    #
    # @option params [Array<Types::AssessmentTarget>] :assessment_targets
    #   List of criteria for assessment.
    #
    # @option params [String] :s3bucket_for_analysis_data
    #   The S3 bucket used by the collectors to send analysis data to the
    #   service. The bucket name must begin with `migrationhub-strategy-`.
    #
    # @option params [String] :s3bucket_for_report_data
    #   The S3 bucket where all the reports generated by the service are
    #   stored. The bucket name must begin with `migrationhub-strategy-`.
    #
    # @return [Types::StartAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAssessmentResponse#assessment_id #assessment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_assessment({
    #     assessment_targets: [
    #       {
    #         condition: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     s3bucket_for_analysis_data: "StartAssessmentRequestS3bucketForAnalysisDataString",
    #     s3bucket_for_report_data: "StartAssessmentRequestS3bucketForReportDataString",
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StartAssessment AWS API Documentation
    #
    # @overload start_assessment(params = {})
    # @param [Hash] params ({})
    def start_assessment(params = {}, options = {})
      req = build_request(:start_assessment, params)
      req.send_request(options)
    end

    # Starts a file import.
    #
    # @option params [required, String] :s3_bucket
    #   The S3 bucket where the import file is located. The bucket name is
    #   required to begin with `migrationhub-strategy-`.
    #
    # @option params [String] :data_source_type
    #   Specifies the source that the servers are coming from. By default,
    #   Strategy Recommendations assumes that the servers specified in the
    #   import file are available in AWS Application Discovery Service.
    #
    # @option params [Array<Types::Group>] :group_id
    #   Groups the resources in the import file together with a unique name.
    #   This ID can be as filter in `ListApplicationComponents` and
    #   `ListServers`.
    #
    # @option params [required, String] :name
    #   A descriptive name for the request.
    #
    # @option params [String] :s3bucket_for_report_data
    #   The S3 bucket where Strategy Recommendations uploads import results.
    #   The bucket name is required to begin with migrationhub-strategy-.
    #
    # @option params [required, String] :s3key
    #   The Amazon S3 key name of the import file.
    #
    # @return [Types::StartImportFileTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImportFileTaskResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import_file_task({
    #     s3_bucket: "importS3Bucket", # required
    #     data_source_type: "ApplicationDiscoveryService", # accepts ApplicationDiscoveryService, MPA, Import
    #     group_id: [
    #       {
    #         name: "ExternalId", # accepts ExternalId, ExternalSourceType
    #         value: "String",
    #       },
    #     ],
    #     name: "StartImportFileTaskRequestNameString", # required
    #     s3bucket_for_report_data: "StartImportFileTaskRequestS3bucketForReportDataString",
    #     s3key: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StartImportFileTask AWS API Documentation
    #
    # @overload start_import_file_task(params = {})
    # @param [Hash] params ({})
    def start_import_file_task(params = {}, options = {})
      req = build_request(:start_import_file_task, params)
      req.send_request(options)
    end

    # Starts generating a recommendation report.
    #
    # @option params [Array<Types::Group>] :group_id_filter
    #   Groups the resources in the recommendation report with a unique name.
    #
    # @option params [String] :output_format
    #   The output format for the recommendation report file. The default
    #   format is Microsoft Excel.
    #
    # @return [Types::StartRecommendationReportGenerationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRecommendationReportGenerationResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_recommendation_report_generation({
    #     group_id_filter: [
    #       {
    #         name: "ExternalId", # accepts ExternalId, ExternalSourceType
    #         value: "String",
    #       },
    #     ],
    #     output_format: "Excel", # accepts Excel, Json
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StartRecommendationReportGeneration AWS API Documentation
    #
    # @overload start_recommendation_report_generation(params = {})
    # @param [Hash] params ({})
    def start_recommendation_report_generation(params = {}, options = {})
      req = build_request(:start_recommendation_report_generation, params)
      req.send_request(options)
    end

    # Stops the assessment of an on-premises environment.
    #
    # @option params [required, String] :assessment_id
    #   The `assessmentId` returned by StartAssessment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_assessment({
    #     assessment_id: "AsyncTaskId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StopAssessment AWS API Documentation
    #
    # @overload stop_assessment(params = {})
    # @param [Hash] params ({})
    def stop_assessment(params = {}, options = {})
      req = build_request(:stop_assessment, params)
      req.send_request(options)
    end

    # Updates the configuration of an application component.
    #
    # @option params [String] :app_type
    #   The type of known component.
    #
    # @option params [required, String] :application_component_id
    #   The ID of the application component. The ID is unique within an AWS
    #   account.
    #
    # @option params [Boolean] :configure_only
    #   Update the configuration request of an application component. If it is
    #   set to true, the source code and/or database credentials are updated.
    #   If it is set to false, the source code and/or database credentials are
    #   updated and an analysis is initiated.
    #
    # @option params [String] :inclusion_status
    #   Indicates whether the application component has been included for
    #   server recommendation or not.
    #
    # @option params [String] :secrets_manager_key
    #   Database credentials.
    #
    # @option params [Array<Types::SourceCode>] :source_code_list
    #   The list of source code configurations to update for the application
    #   component.
    #
    # @option params [Types::StrategyOption] :strategy_option
    #   The preferred strategy options for the application component. Use
    #   values from the GetApplicationComponentStrategies response.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_component_config({
    #     app_type: "DotNetFramework", # accepts DotNetFramework, Java, SQLServer, IIS, Oracle, Other, Tomcat, JBoss, Spring, Mongo DB, DB2, Maria DB, MySQL, Sybase, PostgreSQLServer, Cassandra, IBM WebSphere, Oracle WebLogic, Visual Basic, Unknown, DotnetCore, Dotnet
    #     application_component_id: "ApplicationComponentId", # required
    #     configure_only: false,
    #     inclusion_status: "excludeFromAssessment", # accepts excludeFromAssessment, includeInAssessment
    #     secrets_manager_key: "SecretsManagerKey",
    #     source_code_list: [
    #       {
    #         location: "Location",
    #         project_name: "ProjectName",
    #         source_version: "SourceVersion",
    #         version_control: "GITHUB", # accepts GITHUB, GITHUB_ENTERPRISE, AZURE_DEVOPS_GIT
    #       },
    #     ],
    #     strategy_option: {
    #       is_preferred: false,
    #       strategy: "Rehost", # accepts Rehost, Retirement, Refactor, Replatform, Retain, Relocate, Repurchase
    #       target_destination: "None specified", # accepts None specified, AWS Elastic BeanStalk, AWS Fargate, Amazon Elastic Cloud Compute (EC2), Amazon Elastic Container Service (ECS), Amazon Elastic Kubernetes Service (EKS), Aurora MySQL, Aurora PostgreSQL, Amazon Relational Database Service on MySQL, Amazon Relational Database Service on PostgreSQL, Amazon DocumentDB, Amazon DynamoDB, Amazon Relational Database Service, Babelfish for Aurora PostgreSQL
    #       tool_name: "App2Container", # accepts App2Container, Porting Assistant For .NET, End of Support Migration, Windows Web Application Migration Assistant, Application Migration Service, Strategy Recommendation Support, In Place Operating System Upgrade, Schema Conversion Tool, Database Migration Service, Native SQL Server Backup/Restore
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/UpdateApplicationComponentConfig AWS API Documentation
    #
    # @overload update_application_component_config(params = {})
    # @param [Hash] params ({})
    def update_application_component_config(params = {}, options = {})
      req = build_request(:update_application_component_config, params)
      req.send_request(options)
    end

    # Updates the configuration of the specified server.
    #
    # @option params [required, String] :server_id
    #   The ID of the server.
    #
    # @option params [Types::StrategyOption] :strategy_option
    #   The preferred strategy options for the application component. See the
    #   response from GetServerStrategies.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server_config({
    #     server_id: "ServerId", # required
    #     strategy_option: {
    #       is_preferred: false,
    #       strategy: "Rehost", # accepts Rehost, Retirement, Refactor, Replatform, Retain, Relocate, Repurchase
    #       target_destination: "None specified", # accepts None specified, AWS Elastic BeanStalk, AWS Fargate, Amazon Elastic Cloud Compute (EC2), Amazon Elastic Container Service (ECS), Amazon Elastic Kubernetes Service (EKS), Aurora MySQL, Aurora PostgreSQL, Amazon Relational Database Service on MySQL, Amazon Relational Database Service on PostgreSQL, Amazon DocumentDB, Amazon DynamoDB, Amazon Relational Database Service, Babelfish for Aurora PostgreSQL
    #       tool_name: "App2Container", # accepts App2Container, Porting Assistant For .NET, End of Support Migration, Windows Web Application Migration Assistant, Application Migration Service, Strategy Recommendation Support, In Place Operating System Upgrade, Schema Conversion Tool, Database Migration Service, Native SQL Server Backup/Restore
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/UpdateServerConfig AWS API Documentation
    #
    # @overload update_server_config(params = {})
    # @param [Hash] params ({})
    def update_server_config(params = {}, options = {})
      req = build_request(:update_server_config, params)
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
      context[:gem_name] = 'aws-sdk-migrationhubstrategyrecommendations'
      context[:gem_version] = '1.14.0'
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
