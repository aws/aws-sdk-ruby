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

Aws::Plugins::GlobalConfiguration.add_identifier(:emrcontainers)

module Aws::EMRContainers
  # An API client for EMRContainers.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::EMRContainers::Client.new(
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

    @identifier = :emrcontainers

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
    add_plugin(Aws::EMRContainers::Plugins::Endpoints)

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
    #   @option options [Aws::EMRContainers::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::EMRContainers::EndpointParameters`
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

    # Cancels a job run. A job run is a unit of work, such as a Spark jar,
    # PySpark script, or SparkSQL query, that you submit to Amazon EMR on
    # EKS.
    #
    # @option params [required, String] :id
    #   The ID of the job run to cancel.
    #
    # @option params [required, String] :virtual_cluster_id
    #   The ID of the virtual cluster for which the job run will be canceled.
    #
    # @return [Types::CancelJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelJobRunResponse#id #id} => String
    #   * {Types::CancelJobRunResponse#virtual_cluster_id #virtual_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job_run({
    #     id: "ResourceIdString", # required
    #     virtual_cluster_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.virtual_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CancelJobRun AWS API Documentation
    #
    # @overload cancel_job_run(params = {})
    # @param [Hash] params ({})
    def cancel_job_run(params = {}, options = {})
      req = build_request(:cancel_job_run, params)
      req.send_request(options)
    end

    # Creates a job template. Job template stores values of StartJobRun API
    # request in a template and can be used to start a job run. Job template
    # allows two use cases: avoid repeating recurring StartJobRun API
    # request values, enforcing certain values in StartJobRun API request.
    #
    # @option params [required, String] :name
    #   The specified name of the job template.
    #
    # @option params [required, String] :client_token
    #   The client token of the job template.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::JobTemplateData] :job_template_data
    #   The job template data which holds values of StartJobRun API request.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that are associated with the job template.
    #
    # @option params [String] :kms_key_arn
    #   The KMS key ARN used to encrypt the job template.
    #
    # @return [Types::CreateJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobTemplateResponse#id #id} => String
    #   * {Types::CreateJobTemplateResponse#name #name} => String
    #   * {Types::CreateJobTemplateResponse#arn #arn} => String
    #   * {Types::CreateJobTemplateResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job_template({
    #     name: "ResourceNameString", # required
    #     client_token: "ClientToken", # required
    #     job_template_data: { # required
    #       execution_role_arn: "ParametricIAMRoleArn", # required
    #       release_label: "ParametricReleaseLabel", # required
    #       configuration_overrides: {
    #         application_configuration: [
    #           {
    #             classification: "String1024", # required
    #             properties: {
    #               "String1024" => "String1024",
    #             },
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #           },
    #         ],
    #         monitoring_configuration: {
    #           persistent_app_ui: "TemplateParameter",
    #           cloud_watch_monitoring_configuration: {
    #             log_group_name: "TemplateParameter",
    #             log_stream_name_prefix: "String256",
    #           },
    #           s3_monitoring_configuration: {
    #             log_uri: "UriString",
    #           },
    #         },
    #       },
    #       job_driver: { # required
    #         spark_submit_job_driver: {
    #           entry_point: "EntryPointPath", # required
    #           entry_point_arguments: ["EntryPointArgument"],
    #           spark_submit_parameters: "SparkSubmitParameters",
    #         },
    #         spark_sql_job_driver: {
    #           entry_point: "EntryPointPath",
    #           spark_sql_parameters: "SparkSqlParameters",
    #         },
    #       },
    #       parameter_configuration: {
    #         "TemplateParameterName" => {
    #           type: "NUMBER", # accepts NUMBER, STRING
    #           default_value: "String1024",
    #         },
    #       },
    #       job_tags: {
    #         "String128" => "StringEmpty256",
    #       },
    #     },
    #     tags: {
    #       "String128" => "StringEmpty256",
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CreateJobTemplate AWS API Documentation
    #
    # @overload create_job_template(params = {})
    # @param [Hash] params ({})
    def create_job_template(params = {}, options = {})
      req = build_request(:create_job_template, params)
      req.send_request(options)
    end

    # Creates a managed endpoint. A managed endpoint is a gateway that
    # connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR
    # Studio can communicate with your virtual cluster.
    #
    # @option params [required, String] :name
    #   The name of the managed endpoint.
    #
    # @option params [required, String] :virtual_cluster_id
    #   The ID of the virtual cluster for which a managed endpoint is created.
    #
    # @option params [required, String] :type
    #   The type of the managed endpoint.
    #
    # @option params [required, String] :release_label
    #   The Amazon EMR release version.
    #
    # @option params [required, String] :execution_role_arn
    #   The ARN of the execution role.
    #
    # @option params [String] :certificate_arn
    #   The certificate ARN provided by users for the managed endpoint. This
    #   field is under deprecation and will be removed in future releases.
    #
    # @option params [Types::ConfigurationOverrides] :configuration_overrides
    #   The configuration settings that will be used to override existing
    #   configurations.
    #
    # @option params [required, String] :client_token
    #   The client idempotency token for this create call.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the managed endpoint.
    #
    # @return [Types::CreateManagedEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateManagedEndpointResponse#id #id} => String
    #   * {Types::CreateManagedEndpointResponse#name #name} => String
    #   * {Types::CreateManagedEndpointResponse#arn #arn} => String
    #   * {Types::CreateManagedEndpointResponse#virtual_cluster_id #virtual_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_managed_endpoint({
    #     name: "ResourceNameString", # required
    #     virtual_cluster_id: "ResourceIdString", # required
    #     type: "EndpointType", # required
    #     release_label: "ReleaseLabel", # required
    #     execution_role_arn: "IAMRoleArn", # required
    #     certificate_arn: "ACMCertArn",
    #     configuration_overrides: {
    #       application_configuration: [
    #         {
    #           classification: "String1024", # required
    #           properties: {
    #             "String1024" => "String1024",
    #           },
    #           configurations: {
    #             # recursive ConfigurationList
    #           },
    #         },
    #       ],
    #       monitoring_configuration: {
    #         persistent_app_ui: "ENABLED", # accepts ENABLED, DISABLED
    #         cloud_watch_monitoring_configuration: {
    #           log_group_name: "LogGroupName", # required
    #           log_stream_name_prefix: "String256",
    #         },
    #         s3_monitoring_configuration: {
    #           log_uri: "UriString", # required
    #         },
    #         container_log_rotation_configuration: {
    #           rotation_size: "RotationSize", # required
    #           max_files_to_keep: 1, # required
    #         },
    #       },
    #     },
    #     client_token: "ClientToken", # required
    #     tags: {
    #       "String128" => "StringEmpty256",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.virtual_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CreateManagedEndpoint AWS API Documentation
    #
    # @overload create_managed_endpoint(params = {})
    # @param [Hash] params ({})
    def create_managed_endpoint(params = {}, options = {})
      req = build_request(:create_managed_endpoint, params)
      req.send_request(options)
    end

    # Creates a virtual cluster. Virtual cluster is a managed entity on
    # Amazon EMR on EKS. You can create, describe, list and delete virtual
    # clusters. They do not consume any additional resource in your system.
    # A single virtual cluster maps to a single Kubernetes namespace. Given
    # this relationship, you can model virtual clusters the same way you
    # model Kubernetes namespaces to meet your requirements.
    #
    # @option params [required, String] :name
    #   The specified name of the virtual cluster.
    #
    # @option params [required, Types::ContainerProvider] :container_provider
    #   The container provider of the virtual cluster.
    #
    # @option params [required, String] :client_token
    #   The client token of the virtual cluster.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags assigned to the virtual cluster.
    #
    # @return [Types::CreateVirtualClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVirtualClusterResponse#id #id} => String
    #   * {Types::CreateVirtualClusterResponse#name #name} => String
    #   * {Types::CreateVirtualClusterResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_cluster({
    #     name: "ResourceNameString", # required
    #     container_provider: { # required
    #       type: "EKS", # required, accepts EKS
    #       id: "ClusterId", # required
    #       info: {
    #         eks_info: {
    #           namespace: "KubernetesNamespace",
    #         },
    #       },
    #     },
    #     client_token: "ClientToken", # required
    #     tags: {
    #       "String128" => "StringEmpty256",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CreateVirtualCluster AWS API Documentation
    #
    # @overload create_virtual_cluster(params = {})
    # @param [Hash] params ({})
    def create_virtual_cluster(params = {}, options = {})
      req = build_request(:create_virtual_cluster, params)
      req.send_request(options)
    end

    # Deletes a job template. Job template stores values of StartJobRun API
    # request in a template and can be used to start a job run. Job template
    # allows two use cases: avoid repeating recurring StartJobRun API
    # request values, enforcing certain values in StartJobRun API request.
    #
    # @option params [required, String] :id
    #   The ID of the job template that will be deleted.
    #
    # @return [Types::DeleteJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteJobTemplateResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job_template({
    #     id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DeleteJobTemplate AWS API Documentation
    #
    # @overload delete_job_template(params = {})
    # @param [Hash] params ({})
    def delete_job_template(params = {}, options = {})
      req = build_request(:delete_job_template, params)
      req.send_request(options)
    end

    # Deletes a managed endpoint. A managed endpoint is a gateway that
    # connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR
    # Studio can communicate with your virtual cluster.
    #
    # @option params [required, String] :id
    #   The ID of the managed endpoint.
    #
    # @option params [required, String] :virtual_cluster_id
    #   The ID of the endpoint's virtual cluster.
    #
    # @return [Types::DeleteManagedEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteManagedEndpointResponse#id #id} => String
    #   * {Types::DeleteManagedEndpointResponse#virtual_cluster_id #virtual_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_managed_endpoint({
    #     id: "ResourceIdString", # required
    #     virtual_cluster_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.virtual_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DeleteManagedEndpoint AWS API Documentation
    #
    # @overload delete_managed_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_managed_endpoint(params = {}, options = {})
      req = build_request(:delete_managed_endpoint, params)
      req.send_request(options)
    end

    # Deletes a virtual cluster. Virtual cluster is a managed entity on
    # Amazon EMR on EKS. You can create, describe, list and delete virtual
    # clusters. They do not consume any additional resource in your system.
    # A single virtual cluster maps to a single Kubernetes namespace. Given
    # this relationship, you can model virtual clusters the same way you
    # model Kubernetes namespaces to meet your requirements.
    #
    # @option params [required, String] :id
    #   The ID of the virtual cluster that will be deleted.
    #
    # @return [Types::DeleteVirtualClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVirtualClusterResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_cluster({
    #     id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DeleteVirtualCluster AWS API Documentation
    #
    # @overload delete_virtual_cluster(params = {})
    # @param [Hash] params ({})
    def delete_virtual_cluster(params = {}, options = {})
      req = build_request(:delete_virtual_cluster, params)
      req.send_request(options)
    end

    # Displays detailed information about a job run. A job run is a unit of
    # work, such as a Spark jar, PySpark script, or SparkSQL query, that you
    # submit to Amazon EMR on EKS.
    #
    # @option params [required, String] :id
    #   The ID of the job run request.
    #
    # @option params [required, String] :virtual_cluster_id
    #   The ID of the virtual cluster for which the job run is submitted.
    #
    # @return [Types::DescribeJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobRunResponse#job_run #job_run} => Types::JobRun
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_run({
    #     id: "ResourceIdString", # required
    #     virtual_cluster_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_run.id #=> String
    #   resp.job_run.name #=> String
    #   resp.job_run.virtual_cluster_id #=> String
    #   resp.job_run.arn #=> String
    #   resp.job_run.state #=> String, one of "PENDING", "SUBMITTED", "RUNNING", "FAILED", "CANCELLED", "CANCEL_PENDING", "COMPLETED"
    #   resp.job_run.client_token #=> String
    #   resp.job_run.execution_role_arn #=> String
    #   resp.job_run.release_label #=> String
    #   resp.job_run.configuration_overrides.application_configuration #=> Array
    #   resp.job_run.configuration_overrides.application_configuration[0].classification #=> String
    #   resp.job_run.configuration_overrides.application_configuration[0].properties #=> Hash
    #   resp.job_run.configuration_overrides.application_configuration[0].properties["String1024"] #=> String
    #   resp.job_run.configuration_overrides.application_configuration[0].configurations #=> Types::ConfigurationList
    #   resp.job_run.configuration_overrides.monitoring_configuration.persistent_app_ui #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_run.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_group_name #=> String
    #   resp.job_run.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_stream_name_prefix #=> String
    #   resp.job_run.configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.job_run.configuration_overrides.monitoring_configuration.container_log_rotation_configuration.rotation_size #=> String
    #   resp.job_run.configuration_overrides.monitoring_configuration.container_log_rotation_configuration.max_files_to_keep #=> Integer
    #   resp.job_run.job_driver.spark_submit_job_driver.entry_point #=> String
    #   resp.job_run.job_driver.spark_submit_job_driver.entry_point_arguments #=> Array
    #   resp.job_run.job_driver.spark_submit_job_driver.entry_point_arguments[0] #=> String
    #   resp.job_run.job_driver.spark_submit_job_driver.spark_submit_parameters #=> String
    #   resp.job_run.job_driver.spark_sql_job_driver.entry_point #=> String
    #   resp.job_run.job_driver.spark_sql_job_driver.spark_sql_parameters #=> String
    #   resp.job_run.created_at #=> Time
    #   resp.job_run.created_by #=> String
    #   resp.job_run.finished_at #=> Time
    #   resp.job_run.state_details #=> String
    #   resp.job_run.failure_reason #=> String, one of "INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"
    #   resp.job_run.tags #=> Hash
    #   resp.job_run.tags["String128"] #=> String
    #   resp.job_run.retry_policy_configuration.max_attempts #=> Integer
    #   resp.job_run.retry_policy_execution.current_attempt_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeJobRun AWS API Documentation
    #
    # @overload describe_job_run(params = {})
    # @param [Hash] params ({})
    def describe_job_run(params = {}, options = {})
      req = build_request(:describe_job_run, params)
      req.send_request(options)
    end

    # Displays detailed information about a specified job template. Job
    # template stores values of StartJobRun API request in a template and
    # can be used to start a job run. Job template allows two use cases:
    # avoid repeating recurring StartJobRun API request values, enforcing
    # certain values in StartJobRun API request.
    #
    # @option params [required, String] :id
    #   The ID of the job template that will be described.
    #
    # @return [Types::DescribeJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobTemplateResponse#job_template #job_template} => Types::JobTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_template({
    #     id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_template.name #=> String
    #   resp.job_template.id #=> String
    #   resp.job_template.arn #=> String
    #   resp.job_template.created_at #=> Time
    #   resp.job_template.created_by #=> String
    #   resp.job_template.tags #=> Hash
    #   resp.job_template.tags["String128"] #=> String
    #   resp.job_template.job_template_data.execution_role_arn #=> String
    #   resp.job_template.job_template_data.release_label #=> String
    #   resp.job_template.job_template_data.configuration_overrides.application_configuration #=> Array
    #   resp.job_template.job_template_data.configuration_overrides.application_configuration[0].classification #=> String
    #   resp.job_template.job_template_data.configuration_overrides.application_configuration[0].properties #=> Hash
    #   resp.job_template.job_template_data.configuration_overrides.application_configuration[0].properties["String1024"] #=> String
    #   resp.job_template.job_template_data.configuration_overrides.application_configuration[0].configurations #=> Types::ConfigurationList
    #   resp.job_template.job_template_data.configuration_overrides.monitoring_configuration.persistent_app_ui #=> String
    #   resp.job_template.job_template_data.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_group_name #=> String
    #   resp.job_template.job_template_data.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_stream_name_prefix #=> String
    #   resp.job_template.job_template_data.configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.job_template.job_template_data.job_driver.spark_submit_job_driver.entry_point #=> String
    #   resp.job_template.job_template_data.job_driver.spark_submit_job_driver.entry_point_arguments #=> Array
    #   resp.job_template.job_template_data.job_driver.spark_submit_job_driver.entry_point_arguments[0] #=> String
    #   resp.job_template.job_template_data.job_driver.spark_submit_job_driver.spark_submit_parameters #=> String
    #   resp.job_template.job_template_data.job_driver.spark_sql_job_driver.entry_point #=> String
    #   resp.job_template.job_template_data.job_driver.spark_sql_job_driver.spark_sql_parameters #=> String
    #   resp.job_template.job_template_data.parameter_configuration #=> Hash
    #   resp.job_template.job_template_data.parameter_configuration["TemplateParameterName"].type #=> String, one of "NUMBER", "STRING"
    #   resp.job_template.job_template_data.parameter_configuration["TemplateParameterName"].default_value #=> String
    #   resp.job_template.job_template_data.job_tags #=> Hash
    #   resp.job_template.job_template_data.job_tags["String128"] #=> String
    #   resp.job_template.kms_key_arn #=> String
    #   resp.job_template.decryption_error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeJobTemplate AWS API Documentation
    #
    # @overload describe_job_template(params = {})
    # @param [Hash] params ({})
    def describe_job_template(params = {}, options = {})
      req = build_request(:describe_job_template, params)
      req.send_request(options)
    end

    # Displays detailed information about a managed endpoint. A managed
    # endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on
    # EKS so that Amazon EMR Studio can communicate with your virtual
    # cluster.
    #
    # @option params [required, String] :id
    #   This output displays ID of the managed endpoint.
    #
    # @option params [required, String] :virtual_cluster_id
    #   The ID of the endpoint's virtual cluster.
    #
    # @return [Types::DescribeManagedEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeManagedEndpointResponse#endpoint #endpoint} => Types::Endpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_managed_endpoint({
    #     id: "ResourceIdString", # required
    #     virtual_cluster_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.id #=> String
    #   resp.endpoint.name #=> String
    #   resp.endpoint.arn #=> String
    #   resp.endpoint.virtual_cluster_id #=> String
    #   resp.endpoint.type #=> String
    #   resp.endpoint.state #=> String, one of "CREATING", "ACTIVE", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"
    #   resp.endpoint.release_label #=> String
    #   resp.endpoint.execution_role_arn #=> String
    #   resp.endpoint.certificate_arn #=> String
    #   resp.endpoint.certificate_authority.certificate_arn #=> String
    #   resp.endpoint.certificate_authority.certificate_data #=> String
    #   resp.endpoint.configuration_overrides.application_configuration #=> Array
    #   resp.endpoint.configuration_overrides.application_configuration[0].classification #=> String
    #   resp.endpoint.configuration_overrides.application_configuration[0].properties #=> Hash
    #   resp.endpoint.configuration_overrides.application_configuration[0].properties["String1024"] #=> String
    #   resp.endpoint.configuration_overrides.application_configuration[0].configurations #=> Types::ConfigurationList
    #   resp.endpoint.configuration_overrides.monitoring_configuration.persistent_app_ui #=> String, one of "ENABLED", "DISABLED"
    #   resp.endpoint.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_group_name #=> String
    #   resp.endpoint.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_stream_name_prefix #=> String
    #   resp.endpoint.configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.endpoint.configuration_overrides.monitoring_configuration.container_log_rotation_configuration.rotation_size #=> String
    #   resp.endpoint.configuration_overrides.monitoring_configuration.container_log_rotation_configuration.max_files_to_keep #=> Integer
    #   resp.endpoint.server_url #=> String
    #   resp.endpoint.created_at #=> Time
    #   resp.endpoint.security_group #=> String
    #   resp.endpoint.subnet_ids #=> Array
    #   resp.endpoint.subnet_ids[0] #=> String
    #   resp.endpoint.state_details #=> String
    #   resp.endpoint.failure_reason #=> String, one of "INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"
    #   resp.endpoint.tags #=> Hash
    #   resp.endpoint.tags["String128"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeManagedEndpoint AWS API Documentation
    #
    # @overload describe_managed_endpoint(params = {})
    # @param [Hash] params ({})
    def describe_managed_endpoint(params = {}, options = {})
      req = build_request(:describe_managed_endpoint, params)
      req.send_request(options)
    end

    # Displays detailed information about a specified virtual cluster.
    # Virtual cluster is a managed entity on Amazon EMR on EKS. You can
    # create, describe, list and delete virtual clusters. They do not
    # consume any additional resource in your system. A single virtual
    # cluster maps to a single Kubernetes namespace. Given this
    # relationship, you can model virtual clusters the same way you model
    # Kubernetes namespaces to meet your requirements.
    #
    # @option params [required, String] :id
    #   The ID of the virtual cluster that will be described.
    #
    # @return [Types::DescribeVirtualClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVirtualClusterResponse#virtual_cluster #virtual_cluster} => Types::VirtualCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_cluster({
    #     id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_cluster.id #=> String
    #   resp.virtual_cluster.name #=> String
    #   resp.virtual_cluster.arn #=> String
    #   resp.virtual_cluster.state #=> String, one of "RUNNING", "TERMINATING", "TERMINATED", "ARRESTED"
    #   resp.virtual_cluster.container_provider.type #=> String, one of "EKS"
    #   resp.virtual_cluster.container_provider.id #=> String
    #   resp.virtual_cluster.container_provider.info.eks_info.namespace #=> String
    #   resp.virtual_cluster.created_at #=> Time
    #   resp.virtual_cluster.tags #=> Hash
    #   resp.virtual_cluster.tags["String128"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeVirtualCluster AWS API Documentation
    #
    # @overload describe_virtual_cluster(params = {})
    # @param [Hash] params ({})
    def describe_virtual_cluster(params = {}, options = {})
      req = build_request(:describe_virtual_cluster, params)
      req.send_request(options)
    end

    # Generate a session token to connect to a managed endpoint.
    #
    # @option params [required, String] :endpoint_identifier
    #   The ARN of the managed endpoint for which the request is submitted.
    #
    # @option params [required, String] :virtual_cluster_identifier
    #   The ARN of the Virtual Cluster which the Managed Endpoint belongs to.
    #
    # @option params [required, String] :execution_role_arn
    #   The IAM Execution Role ARN that will be used by the job run.
    #
    # @option params [required, String] :credential_type
    #   Type of the token requested. Currently supported and default value of
    #   this field is “TOKEN.”
    #
    # @option params [Integer] :duration_in_seconds
    #   Duration in seconds for which the session token is valid. The default
    #   duration is 15 minutes and the maximum is 12 hours.
    #
    # @option params [String] :log_context
    #   String identifier used to separate sections of the execution logs
    #   uploaded to S3.
    #
    # @option params [String] :client_token
    #   The client idempotency token of the job run request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::GetManagedEndpointSessionCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedEndpointSessionCredentialsResponse#id #id} => String
    #   * {Types::GetManagedEndpointSessionCredentialsResponse#credentials #credentials} => Types::Credentials
    #   * {Types::GetManagedEndpointSessionCredentialsResponse#expires_at #expires_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_endpoint_session_credentials({
    #     endpoint_identifier: "String2048", # required
    #     virtual_cluster_identifier: "String2048", # required
    #     execution_role_arn: "IAMRoleArn", # required
    #     credential_type: "CredentialType", # required
    #     duration_in_seconds: 1,
    #     log_context: "LogContext",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.credentials.token #=> String
    #   resp.expires_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/GetManagedEndpointSessionCredentials AWS API Documentation
    #
    # @overload get_managed_endpoint_session_credentials(params = {})
    # @param [Hash] params ({})
    def get_managed_endpoint_session_credentials(params = {}, options = {})
      req = build_request(:get_managed_endpoint_session_credentials, params)
      req.send_request(options)
    end

    # Lists job runs based on a set of parameters. A job run is a unit of
    # work, such as a Spark jar, PySpark script, or SparkSQL query, that you
    # submit to Amazon EMR on EKS.
    #
    # @option params [required, String] :virtual_cluster_id
    #   The ID of the virtual cluster for which to list the job run.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   The date and time before which the job runs were submitted.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   The date and time after which the job runs were submitted.
    #
    # @option params [String] :name
    #   The name of the job run.
    #
    # @option params [Array<String>] :states
    #   The states of the job run.
    #
    # @option params [Integer] :max_results
    #   The maximum number of job runs that can be listed.
    #
    # @option params [String] :next_token
    #   The token for the next set of job runs to return.
    #
    # @return [Types::ListJobRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobRunsResponse#job_runs #job_runs} => Array&lt;Types::JobRun&gt;
    #   * {Types::ListJobRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_runs({
    #     virtual_cluster_id: "ResourceIdString", # required
    #     created_before: Time.now,
    #     created_after: Time.now,
    #     name: "ResourceNameString",
    #     states: ["PENDING"], # accepts PENDING, SUBMITTED, RUNNING, FAILED, CANCELLED, CANCEL_PENDING, COMPLETED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_runs #=> Array
    #   resp.job_runs[0].id #=> String
    #   resp.job_runs[0].name #=> String
    #   resp.job_runs[0].virtual_cluster_id #=> String
    #   resp.job_runs[0].arn #=> String
    #   resp.job_runs[0].state #=> String, one of "PENDING", "SUBMITTED", "RUNNING", "FAILED", "CANCELLED", "CANCEL_PENDING", "COMPLETED"
    #   resp.job_runs[0].client_token #=> String
    #   resp.job_runs[0].execution_role_arn #=> String
    #   resp.job_runs[0].release_label #=> String
    #   resp.job_runs[0].configuration_overrides.application_configuration #=> Array
    #   resp.job_runs[0].configuration_overrides.application_configuration[0].classification #=> String
    #   resp.job_runs[0].configuration_overrides.application_configuration[0].properties #=> Hash
    #   resp.job_runs[0].configuration_overrides.application_configuration[0].properties["String1024"] #=> String
    #   resp.job_runs[0].configuration_overrides.application_configuration[0].configurations #=> Types::ConfigurationList
    #   resp.job_runs[0].configuration_overrides.monitoring_configuration.persistent_app_ui #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_runs[0].configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_group_name #=> String
    #   resp.job_runs[0].configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_stream_name_prefix #=> String
    #   resp.job_runs[0].configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.job_runs[0].configuration_overrides.monitoring_configuration.container_log_rotation_configuration.rotation_size #=> String
    #   resp.job_runs[0].configuration_overrides.monitoring_configuration.container_log_rotation_configuration.max_files_to_keep #=> Integer
    #   resp.job_runs[0].job_driver.spark_submit_job_driver.entry_point #=> String
    #   resp.job_runs[0].job_driver.spark_submit_job_driver.entry_point_arguments #=> Array
    #   resp.job_runs[0].job_driver.spark_submit_job_driver.entry_point_arguments[0] #=> String
    #   resp.job_runs[0].job_driver.spark_submit_job_driver.spark_submit_parameters #=> String
    #   resp.job_runs[0].job_driver.spark_sql_job_driver.entry_point #=> String
    #   resp.job_runs[0].job_driver.spark_sql_job_driver.spark_sql_parameters #=> String
    #   resp.job_runs[0].created_at #=> Time
    #   resp.job_runs[0].created_by #=> String
    #   resp.job_runs[0].finished_at #=> Time
    #   resp.job_runs[0].state_details #=> String
    #   resp.job_runs[0].failure_reason #=> String, one of "INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"
    #   resp.job_runs[0].tags #=> Hash
    #   resp.job_runs[0].tags["String128"] #=> String
    #   resp.job_runs[0].retry_policy_configuration.max_attempts #=> Integer
    #   resp.job_runs[0].retry_policy_execution.current_attempt_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListJobRuns AWS API Documentation
    #
    # @overload list_job_runs(params = {})
    # @param [Hash] params ({})
    def list_job_runs(params = {}, options = {})
      req = build_request(:list_job_runs, params)
      req.send_request(options)
    end

    # Lists job templates based on a set of parameters. Job template stores
    # values of StartJobRun API request in a template and can be used to
    # start a job run. Job template allows two use cases: avoid repeating
    # recurring StartJobRun API request values, enforcing certain values in
    # StartJobRun API request.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   The date and time after which the job templates were created.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   The date and time before which the job templates were created.
    #
    # @option params [Integer] :max_results
    #   The maximum number of job templates that can be listed.
    #
    # @option params [String] :next_token
    #   The token for the next set of job templates to return.
    #
    # @return [Types::ListJobTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobTemplatesResponse#templates #templates} => Array&lt;Types::JobTemplate&gt;
    #   * {Types::ListJobTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_templates({
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.templates #=> Array
    #   resp.templates[0].name #=> String
    #   resp.templates[0].id #=> String
    #   resp.templates[0].arn #=> String
    #   resp.templates[0].created_at #=> Time
    #   resp.templates[0].created_by #=> String
    #   resp.templates[0].tags #=> Hash
    #   resp.templates[0].tags["String128"] #=> String
    #   resp.templates[0].job_template_data.execution_role_arn #=> String
    #   resp.templates[0].job_template_data.release_label #=> String
    #   resp.templates[0].job_template_data.configuration_overrides.application_configuration #=> Array
    #   resp.templates[0].job_template_data.configuration_overrides.application_configuration[0].classification #=> String
    #   resp.templates[0].job_template_data.configuration_overrides.application_configuration[0].properties #=> Hash
    #   resp.templates[0].job_template_data.configuration_overrides.application_configuration[0].properties["String1024"] #=> String
    #   resp.templates[0].job_template_data.configuration_overrides.application_configuration[0].configurations #=> Types::ConfigurationList
    #   resp.templates[0].job_template_data.configuration_overrides.monitoring_configuration.persistent_app_ui #=> String
    #   resp.templates[0].job_template_data.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_group_name #=> String
    #   resp.templates[0].job_template_data.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_stream_name_prefix #=> String
    #   resp.templates[0].job_template_data.configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.templates[0].job_template_data.job_driver.spark_submit_job_driver.entry_point #=> String
    #   resp.templates[0].job_template_data.job_driver.spark_submit_job_driver.entry_point_arguments #=> Array
    #   resp.templates[0].job_template_data.job_driver.spark_submit_job_driver.entry_point_arguments[0] #=> String
    #   resp.templates[0].job_template_data.job_driver.spark_submit_job_driver.spark_submit_parameters #=> String
    #   resp.templates[0].job_template_data.job_driver.spark_sql_job_driver.entry_point #=> String
    #   resp.templates[0].job_template_data.job_driver.spark_sql_job_driver.spark_sql_parameters #=> String
    #   resp.templates[0].job_template_data.parameter_configuration #=> Hash
    #   resp.templates[0].job_template_data.parameter_configuration["TemplateParameterName"].type #=> String, one of "NUMBER", "STRING"
    #   resp.templates[0].job_template_data.parameter_configuration["TemplateParameterName"].default_value #=> String
    #   resp.templates[0].job_template_data.job_tags #=> Hash
    #   resp.templates[0].job_template_data.job_tags["String128"] #=> String
    #   resp.templates[0].kms_key_arn #=> String
    #   resp.templates[0].decryption_error #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListJobTemplates AWS API Documentation
    #
    # @overload list_job_templates(params = {})
    # @param [Hash] params ({})
    def list_job_templates(params = {}, options = {})
      req = build_request(:list_job_templates, params)
      req.send_request(options)
    end

    # Lists managed endpoints based on a set of parameters. A managed
    # endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on
    # EKS so that Amazon EMR Studio can communicate with your virtual
    # cluster.
    #
    # @option params [required, String] :virtual_cluster_id
    #   The ID of the virtual cluster.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   The date and time before which the endpoints are created.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   The date and time after which the endpoints are created.
    #
    # @option params [Array<String>] :types
    #   The types of the managed endpoints.
    #
    # @option params [Array<String>] :states
    #   The states of the managed endpoints.
    #
    # @option params [Integer] :max_results
    #   The maximum number of managed endpoints that can be listed.
    #
    # @option params [String] :next_token
    #   The token for the next set of managed endpoints to return.
    #
    # @return [Types::ListManagedEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedEndpointsResponse#endpoints #endpoints} => Array&lt;Types::Endpoint&gt;
    #   * {Types::ListManagedEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_endpoints({
    #     virtual_cluster_id: "ResourceIdString", # required
    #     created_before: Time.now,
    #     created_after: Time.now,
    #     types: ["EndpointType"],
    #     states: ["CREATING"], # accepts CREATING, ACTIVE, TERMINATING, TERMINATED, TERMINATED_WITH_ERRORS
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].id #=> String
    #   resp.endpoints[0].name #=> String
    #   resp.endpoints[0].arn #=> String
    #   resp.endpoints[0].virtual_cluster_id #=> String
    #   resp.endpoints[0].type #=> String
    #   resp.endpoints[0].state #=> String, one of "CREATING", "ACTIVE", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"
    #   resp.endpoints[0].release_label #=> String
    #   resp.endpoints[0].execution_role_arn #=> String
    #   resp.endpoints[0].certificate_arn #=> String
    #   resp.endpoints[0].certificate_authority.certificate_arn #=> String
    #   resp.endpoints[0].certificate_authority.certificate_data #=> String
    #   resp.endpoints[0].configuration_overrides.application_configuration #=> Array
    #   resp.endpoints[0].configuration_overrides.application_configuration[0].classification #=> String
    #   resp.endpoints[0].configuration_overrides.application_configuration[0].properties #=> Hash
    #   resp.endpoints[0].configuration_overrides.application_configuration[0].properties["String1024"] #=> String
    #   resp.endpoints[0].configuration_overrides.application_configuration[0].configurations #=> Types::ConfigurationList
    #   resp.endpoints[0].configuration_overrides.monitoring_configuration.persistent_app_ui #=> String, one of "ENABLED", "DISABLED"
    #   resp.endpoints[0].configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_group_name #=> String
    #   resp.endpoints[0].configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_stream_name_prefix #=> String
    #   resp.endpoints[0].configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.endpoints[0].configuration_overrides.monitoring_configuration.container_log_rotation_configuration.rotation_size #=> String
    #   resp.endpoints[0].configuration_overrides.monitoring_configuration.container_log_rotation_configuration.max_files_to_keep #=> Integer
    #   resp.endpoints[0].server_url #=> String
    #   resp.endpoints[0].created_at #=> Time
    #   resp.endpoints[0].security_group #=> String
    #   resp.endpoints[0].subnet_ids #=> Array
    #   resp.endpoints[0].subnet_ids[0] #=> String
    #   resp.endpoints[0].state_details #=> String
    #   resp.endpoints[0].failure_reason #=> String, one of "INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"
    #   resp.endpoints[0].tags #=> Hash
    #   resp.endpoints[0].tags["String128"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListManagedEndpoints AWS API Documentation
    #
    # @overload list_managed_endpoints(params = {})
    # @param [Hash] params ({})
    def list_managed_endpoints(params = {}, options = {})
      req = build_request(:list_managed_endpoints, params)
      req.send_request(options)
    end

    # Lists the tags assigned to the resources.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of tagged resources.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "RsiArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String128"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists information about the specified virtual cluster. Virtual cluster
    # is a managed entity on Amazon EMR on EKS. You can create, describe,
    # list and delete virtual clusters. They do not consume any additional
    # resource in your system. A single virtual cluster maps to a single
    # Kubernetes namespace. Given this relationship, you can model virtual
    # clusters the same way you model Kubernetes namespaces to meet your
    # requirements.
    #
    # @option params [String] :container_provider_id
    #   The container provider ID of the virtual cluster.
    #
    # @option params [String] :container_provider_type
    #   The container provider type of the virtual cluster. Amazon EKS is the
    #   only supported type as of now.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   The date and time after which the virtual clusters are created.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   The date and time before which the virtual clusters are created.
    #
    # @option params [Array<String>] :states
    #   The states of the requested virtual clusters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of virtual clusters that can be listed.
    #
    # @option params [String] :next_token
    #   The token for the next set of virtual clusters to return.
    #
    # @return [Types::ListVirtualClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVirtualClustersResponse#virtual_clusters #virtual_clusters} => Array&lt;Types::VirtualCluster&gt;
    #   * {Types::ListVirtualClustersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_clusters({
    #     container_provider_id: "String1024",
    #     container_provider_type: "EKS", # accepts EKS
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     states: ["RUNNING"], # accepts RUNNING, TERMINATING, TERMINATED, ARRESTED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_clusters #=> Array
    #   resp.virtual_clusters[0].id #=> String
    #   resp.virtual_clusters[0].name #=> String
    #   resp.virtual_clusters[0].arn #=> String
    #   resp.virtual_clusters[0].state #=> String, one of "RUNNING", "TERMINATING", "TERMINATED", "ARRESTED"
    #   resp.virtual_clusters[0].container_provider.type #=> String, one of "EKS"
    #   resp.virtual_clusters[0].container_provider.id #=> String
    #   resp.virtual_clusters[0].container_provider.info.eks_info.namespace #=> String
    #   resp.virtual_clusters[0].created_at #=> Time
    #   resp.virtual_clusters[0].tags #=> Hash
    #   resp.virtual_clusters[0].tags["String128"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListVirtualClusters AWS API Documentation
    #
    # @overload list_virtual_clusters(params = {})
    # @param [Hash] params ({})
    def list_virtual_clusters(params = {}, options = {})
      req = build_request(:list_virtual_clusters, params)
      req.send_request(options)
    end

    # Starts a job run. A job run is a unit of work, such as a Spark jar,
    # PySpark script, or SparkSQL query, that you submit to Amazon EMR on
    # EKS.
    #
    # @option params [String] :name
    #   The name of the job run.
    #
    # @option params [required, String] :virtual_cluster_id
    #   The virtual cluster ID for which the job run request is submitted.
    #
    # @option params [required, String] :client_token
    #   The client idempotency token of the job run request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :execution_role_arn
    #   The execution role ARN for the job run.
    #
    # @option params [String] :release_label
    #   The Amazon EMR release version to use for the job run.
    #
    # @option params [Types::JobDriver] :job_driver
    #   The job driver for the job run.
    #
    # @option params [Types::ConfigurationOverrides] :configuration_overrides
    #   The configuration overrides for the job run.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags assigned to job runs.
    #
    # @option params [String] :job_template_id
    #   The job template ID to be used to start the job run.
    #
    # @option params [Hash<String,String>] :job_template_parameters
    #   The values of job template parameters to start a job run.
    #
    # @option params [Types::RetryPolicyConfiguration] :retry_policy_configuration
    #   The retry policy configuration for the job run.
    #
    # @return [Types::StartJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartJobRunResponse#id #id} => String
    #   * {Types::StartJobRunResponse#name #name} => String
    #   * {Types::StartJobRunResponse#arn #arn} => String
    #   * {Types::StartJobRunResponse#virtual_cluster_id #virtual_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job_run({
    #     name: "ResourceNameString",
    #     virtual_cluster_id: "ResourceIdString", # required
    #     client_token: "ClientToken", # required
    #     execution_role_arn: "IAMRoleArn",
    #     release_label: "ReleaseLabel",
    #     job_driver: {
    #       spark_submit_job_driver: {
    #         entry_point: "EntryPointPath", # required
    #         entry_point_arguments: ["EntryPointArgument"],
    #         spark_submit_parameters: "SparkSubmitParameters",
    #       },
    #       spark_sql_job_driver: {
    #         entry_point: "EntryPointPath",
    #         spark_sql_parameters: "SparkSqlParameters",
    #       },
    #     },
    #     configuration_overrides: {
    #       application_configuration: [
    #         {
    #           classification: "String1024", # required
    #           properties: {
    #             "String1024" => "String1024",
    #           },
    #           configurations: {
    #             # recursive ConfigurationList
    #           },
    #         },
    #       ],
    #       monitoring_configuration: {
    #         persistent_app_ui: "ENABLED", # accepts ENABLED, DISABLED
    #         cloud_watch_monitoring_configuration: {
    #           log_group_name: "LogGroupName", # required
    #           log_stream_name_prefix: "String256",
    #         },
    #         s3_monitoring_configuration: {
    #           log_uri: "UriString", # required
    #         },
    #         container_log_rotation_configuration: {
    #           rotation_size: "RotationSize", # required
    #           max_files_to_keep: 1, # required
    #         },
    #       },
    #     },
    #     tags: {
    #       "String128" => "StringEmpty256",
    #     },
    #     job_template_id: "ResourceIdString",
    #     job_template_parameters: {
    #       "TemplateParameterName" => "String1024",
    #     },
    #     retry_policy_configuration: {
    #       max_attempts: 1, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.virtual_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/StartJobRun AWS API Documentation
    #
    # @overload start_job_run(params = {})
    # @param [Hash] params ({})
    def start_job_run(params = {}, options = {})
      req = build_request(:start_job_run, params)
      req.send_request(options)
    end

    # Assigns tags to resources. A tag is a label that you assign to an
    # Amazon Web Services resource. Each tag consists of a key and an
    # optional value, both of which you define. Tags enable you to
    # categorize your Amazon Web Services resources by attributes such as
    # purpose, owner, or environment. When you have many resources of the
    # same type, you can quickly identify a specific resource based on the
    # tags you've assigned to it. For example, you can define a set of tags
    # for your Amazon EMR on EKS clusters to help you track each cluster's
    # owner and stack level. We recommend that you devise a consistent set
    # of tag keys for each resource type. You can then search and filter the
    # resources based on the tags that you add.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of resources.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags assigned to resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "RsiArn", # required
    #     tags: { # required
    #       "String128" => "StringEmpty256",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from resources.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of resources.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys of the resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "RsiArn", # required
    #     tag_keys: ["String128"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-emrcontainers'
      context[:gem_version] = '1.26.0'
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
