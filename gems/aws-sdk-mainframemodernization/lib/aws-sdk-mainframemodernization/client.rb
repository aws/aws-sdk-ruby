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

Aws::Plugins::GlobalConfiguration.add_identifier(:mainframemodernization)

module Aws::MainframeModernization
  # An API client for MainframeModernization.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MainframeModernization::Client.new(
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

    @identifier = :mainframemodernization

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
    add_plugin(Aws::MainframeModernization::Plugins::Endpoints)

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
    #   @option options [Aws::MainframeModernization::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::MainframeModernization::EndpointParameters`
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

    # Cancels the running of a specific batch job execution.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application.
    #
    # @option params [required, String] :execution_id
    #   The unique identifier of the batch job execution.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_batch_job_execution({
    #     application_id: "Identifier", # required
    #     execution_id: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CancelBatchJobExecution AWS API Documentation
    #
    # @overload cancel_batch_job_execution(params = {})
    # @param [Hash] params ({})
    def cancel_batch_job_execution(params = {}, options = {})
      req = build_request(:cancel_batch_job_execution, params)
      req.send_request(options)
    end

    # Creates a new application with given parameters. Requires an existing
    # runtime environment and application definition file.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier the service generates to ensure the
    #   idempotency of the request to create an application. The service
    #   generates the clientToken when the API call is triggered. The token
    #   expires after one hour, so if you retry the API within this timeframe
    #   with the same clientToken, you will get the same response. The service
    #   also handles deleting the clientToken after it expires.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::Definition] :definition
    #   The application definition for this application. You can specify
    #   either inline JSON or an S3 bucket location.
    #
    # @option params [String] :description
    #   The description of the application.
    #
    # @option params [required, String] :engine_type
    #   The type of the target platform for this application.
    #
    # @option params [String] :kms_key_id
    #   The identifier of a customer managed key.
    #
    # @option params [required, String] :name
    #   The unique identifier of the application.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the role associated with the
    #   application.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags to apply to the application.
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#application_arn #application_arn} => String
    #   * {Types::CreateApplicationResponse#application_id #application_id} => String
    #   * {Types::CreateApplicationResponse#application_version #application_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     client_token: "String",
    #     definition: { # required
    #       content: "StringFree65000",
    #       s3_location: "String2000",
    #     },
    #     description: "EntityDescription",
    #     engine_type: "microfocus", # required, accepts microfocus, bluage
    #     kms_key_id: "String",
    #     name: "EntityName", # required
    #     role_arn: "Arn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_id #=> String
    #   resp.application_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Starts a data set import task for a specific application.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application for which you want to import
    #   data sets.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request to create a data set import. The service
    #   generates the clientToken when the API call is triggered. The token
    #   expires after one hour, so if you retry the API within this timeframe
    #   with the same clientToken, you will get the same response. The service
    #   also handles deleting the clientToken after it expires.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::DataSetImportConfig] :import_config
    #   The data set import task configuration.
    #
    # @return [Types::CreateDataSetImportTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSetImportTaskResponse#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_set_import_task({
    #     application_id: "Identifier", # required
    #     client_token: "String",
    #     import_config: { # required
    #       data_sets: [
    #         {
    #           data_set: { # required
    #             dataset_name: "String", # required
    #             dataset_org: { # required
    #               gdg: {
    #                 limit: 1,
    #                 roll_disposition: "String",
    #               },
    #               po: {
    #                 encoding: "String",
    #                 format: "String", # required
    #                 member_file_extensions: ["String20"], # required
    #               },
    #               ps: {
    #                 encoding: "String",
    #                 format: "String", # required
    #               },
    #               vsam: {
    #                 alternate_keys: [
    #                   {
    #                     allow_duplicates: false,
    #                     length: 1, # required
    #                     name: "String",
    #                     offset: 1, # required
    #                   },
    #                 ],
    #                 compressed: false,
    #                 encoding: "String",
    #                 format: "String", # required
    #                 primary_key: {
    #                   length: 1, # required
    #                   name: "String",
    #                   offset: 1, # required
    #                 },
    #               },
    #             },
    #             record_length: { # required
    #               max: 1, # required
    #               min: 1, # required
    #             },
    #             relative_path: "String",
    #             storage_type: "String",
    #           },
    #           external_location: { # required
    #             s3_location: "String2000",
    #           },
    #         },
    #       ],
    #       s3_location: "String2000",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateDataSetImportTask AWS API Documentation
    #
    # @overload create_data_set_import_task(params = {})
    # @param [Hash] params ({})
    def create_data_set_import_task(params = {}, options = {})
      req = build_request(:create_data_set_import_task, params)
      req.send_request(options)
    end

    # Creates and starts a deployment to deploy an application into a
    # runtime environment.
    #
    # @option params [required, String] :application_id
    #   The application identifier.
    #
    # @option params [required, Integer] :application_version
    #   The version of the application to deploy.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request to create a deployment. The service
    #   generates the clientToken when the API call is triggered. The token
    #   expires after one hour, so if you retry the API within this timeframe
    #   with the same clientToken, you will get the same response. The service
    #   also handles deleting the clientToken after it expires.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   The identifier of the runtime environment where you want to deploy
    #   this application.
    #
    # @return [Types::CreateDeploymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentResponse#deployment_id #deployment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment({
    #     application_id: "Identifier", # required
    #     application_version: 1, # required
    #     client_token: "String",
    #     environment_id: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateDeployment AWS API Documentation
    #
    # @overload create_deployment(params = {})
    # @param [Hash] params ({})
    def create_deployment(params = {}, options = {})
      req = build_request(:create_deployment, params)
      req.send_request(options)
    end

    # Creates a runtime environment for a given runtime engine.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request to create an environment. The service
    #   generates the clientToken when the API call is triggered. The token
    #   expires after one hour, so if you retry the API within this timeframe
    #   with the same clientToken, you will get the same response. The service
    #   also handles deleting the clientToken after it expires.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description of the runtime environment.
    #
    # @option params [required, String] :engine_type
    #   The engine type for the runtime environment.
    #
    # @option params [String] :engine_version
    #   The version of the engine type for the runtime environment.
    #
    # @option params [Types::HighAvailabilityConfig] :high_availability_config
    #   The details of a high availability configuration for this runtime
    #   environment.
    #
    # @option params [required, String] :instance_type
    #   The type of instance for the runtime environment.
    #
    # @option params [String] :kms_key_id
    #   The identifier of a customer managed key.
    #
    # @option params [required, String] :name
    #   The name of the runtime environment. Must be unique within the
    #   account.
    #
    # @option params [String] :preferred_maintenance_window
    #   Configures the maintenance window you want for the runtime
    #   environment. If you do not provide a value, a random system-generated
    #   value will be assigned.
    #
    # @option params [Boolean] :publicly_accessible
    #   Specifies whether the runtime environment is publicly accessible.
    #
    # @option params [Array<String>] :security_group_ids
    #   The list of security groups for the VPC associated with this runtime
    #   environment.
    #
    # @option params [Array<Types::StorageConfiguration>] :storage_configurations
    #   Optional. The storage configurations for this runtime environment.
    #
    # @option params [Array<String>] :subnet_ids
    #   The list of subnets associated with the VPC for this runtime
    #   environment.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for the runtime environment.
    #
    # @return [Types::CreateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentResponse#environment_id #environment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     client_token: "String",
    #     description: "EntityDescription",
    #     engine_type: "microfocus", # required, accepts microfocus, bluage
    #     engine_version: "EngineVersion",
    #     high_availability_config: {
    #       desired_capacity: 1, # required
    #     },
    #     instance_type: "String20", # required
    #     kms_key_id: "String",
    #     name: "EntityName", # required
    #     preferred_maintenance_window: "String50",
    #     publicly_accessible: false,
    #     security_group_ids: ["String50"],
    #     storage_configurations: [
    #       {
    #         efs: {
    #           file_system_id: "String200", # required
    #           mount_point: "String200", # required
    #         },
    #         fsx: {
    #           file_system_id: "String200", # required
    #           mount_point: "String200", # required
    #         },
    #       },
    #     ],
    #     subnet_ids: ["String50"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Deletes a specific application. You cannot delete a running
    # application.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application_id: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes a specific application from the specific runtime environment
    # where it was previously deployed. You cannot delete a runtime
    # environment using DeleteEnvironment if any application has ever been
    # deployed to it. This API removes the association of the application
    # with the runtime environment so you can delete the environment
    # smoothly.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application you want to delete.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of the runtime environment where the application
    #   was previously deployed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_from_environment({
    #     application_id: "Identifier", # required
    #     environment_id: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DeleteApplicationFromEnvironment AWS API Documentation
    #
    # @overload delete_application_from_environment(params = {})
    # @param [Hash] params ({})
    def delete_application_from_environment(params = {}, options = {})
      req = build_request(:delete_application_from_environment, params)
      req.send_request(options)
    end

    # Deletes a specific runtime environment. The environment cannot contain
    # deployed applications. If it does, you must delete those applications
    # before you delete the environment.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of the runtime environment you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     environment_id: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Describes the details of a specific application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application.
    #
    # @return [Types::GetApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationResponse#application_arn #application_arn} => String
    #   * {Types::GetApplicationResponse#application_id #application_id} => String
    #   * {Types::GetApplicationResponse#creation_time #creation_time} => Time
    #   * {Types::GetApplicationResponse#deployed_version #deployed_version} => Types::DeployedVersionSummary
    #   * {Types::GetApplicationResponse#description #description} => String
    #   * {Types::GetApplicationResponse#engine_type #engine_type} => String
    #   * {Types::GetApplicationResponse#environment_id #environment_id} => String
    #   * {Types::GetApplicationResponse#kms_key_id #kms_key_id} => String
    #   * {Types::GetApplicationResponse#last_start_time #last_start_time} => Time
    #   * {Types::GetApplicationResponse#latest_version #latest_version} => Types::ApplicationVersionSummary
    #   * {Types::GetApplicationResponse#listener_arns #listener_arns} => Array&lt;String&gt;
    #   * {Types::GetApplicationResponse#listener_ports #listener_ports} => Array&lt;Integer&gt;
    #   * {Types::GetApplicationResponse#load_balancer_dns_name #load_balancer_dns_name} => String
    #   * {Types::GetApplicationResponse#log_groups #log_groups} => Array&lt;Types::LogGroupSummary&gt;
    #   * {Types::GetApplicationResponse#name #name} => String
    #   * {Types::GetApplicationResponse#role_arn #role_arn} => String
    #   * {Types::GetApplicationResponse#status #status} => String
    #   * {Types::GetApplicationResponse#status_reason #status_reason} => String
    #   * {Types::GetApplicationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetApplicationResponse#target_group_arns #target_group_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     application_id: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_id #=> String
    #   resp.creation_time #=> Time
    #   resp.deployed_version.application_version #=> Integer
    #   resp.deployed_version.status #=> String, one of "Deploying", "Succeeded", "Failed"
    #   resp.deployed_version.status_reason #=> String
    #   resp.description #=> String
    #   resp.engine_type #=> String, one of "microfocus", "bluage"
    #   resp.environment_id #=> String
    #   resp.kms_key_id #=> String
    #   resp.last_start_time #=> Time
    #   resp.latest_version.application_version #=> Integer
    #   resp.latest_version.creation_time #=> Time
    #   resp.latest_version.status #=> String, one of "Creating", "Available", "Failed"
    #   resp.latest_version.status_reason #=> String
    #   resp.listener_arns #=> Array
    #   resp.listener_arns[0] #=> String
    #   resp.listener_ports #=> Array
    #   resp.listener_ports[0] #=> Integer
    #   resp.load_balancer_dns_name #=> String
    #   resp.log_groups #=> Array
    #   resp.log_groups[0].log_group_name #=> String
    #   resp.log_groups[0].log_type #=> String
    #   resp.name #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "Creating", "Created", "Available", "Ready", "Starting", "Running", "Stopping", "Stopped", "Failed", "Deleting", "Deleting From Environment"
    #   resp.status_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.target_group_arns #=> Array
    #   resp.target_group_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Returns details about a specific version of a specific application.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application.
    #
    # @option params [required, Integer] :application_version
    #   The specific version of the application.
    #
    # @return [Types::GetApplicationVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationVersionResponse#application_version #application_version} => Integer
    #   * {Types::GetApplicationVersionResponse#creation_time #creation_time} => Time
    #   * {Types::GetApplicationVersionResponse#definition_content #definition_content} => String
    #   * {Types::GetApplicationVersionResponse#description #description} => String
    #   * {Types::GetApplicationVersionResponse#name #name} => String
    #   * {Types::GetApplicationVersionResponse#status #status} => String
    #   * {Types::GetApplicationVersionResponse#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_version({
    #     application_id: "Identifier", # required
    #     application_version: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_version #=> Integer
    #   resp.creation_time #=> Time
    #   resp.definition_content #=> String
    #   resp.description #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "Creating", "Available", "Failed"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetApplicationVersion AWS API Documentation
    #
    # @overload get_application_version(params = {})
    # @param [Hash] params ({})
    def get_application_version(params = {}, options = {})
      req = build_request(:get_application_version, params)
      req.send_request(options)
    end

    # Gets the details of a specific batch job execution for a specific
    # application.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application.
    #
    # @option params [required, String] :execution_id
    #   The unique identifier of the batch job execution.
    #
    # @return [Types::GetBatchJobExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBatchJobExecutionResponse#application_id #application_id} => String
    #   * {Types::GetBatchJobExecutionResponse#batch_job_identifier #batch_job_identifier} => Types::BatchJobIdentifier
    #   * {Types::GetBatchJobExecutionResponse#end_time #end_time} => Time
    #   * {Types::GetBatchJobExecutionResponse#execution_id #execution_id} => String
    #   * {Types::GetBatchJobExecutionResponse#job_id #job_id} => String
    #   * {Types::GetBatchJobExecutionResponse#job_name #job_name} => String
    #   * {Types::GetBatchJobExecutionResponse#job_type #job_type} => String
    #   * {Types::GetBatchJobExecutionResponse#job_user #job_user} => String
    #   * {Types::GetBatchJobExecutionResponse#return_code #return_code} => String
    #   * {Types::GetBatchJobExecutionResponse#start_time #start_time} => Time
    #   * {Types::GetBatchJobExecutionResponse#status #status} => String
    #   * {Types::GetBatchJobExecutionResponse#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_batch_job_execution({
    #     application_id: "Identifier", # required
    #     execution_id: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.batch_job_identifier.file_batch_job_identifier.file_name #=> String
    #   resp.batch_job_identifier.file_batch_job_identifier.folder_path #=> String
    #   resp.batch_job_identifier.script_batch_job_identifier.script_name #=> String
    #   resp.end_time #=> Time
    #   resp.execution_id #=> String
    #   resp.job_id #=> String
    #   resp.job_name #=> String
    #   resp.job_type #=> String, one of "VSE", "JES2", "JES3"
    #   resp.job_user #=> String
    #   resp.return_code #=> String
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "Submitting", "Holding", "Dispatching", "Running", "Cancelling", "Cancelled", "Succeeded", "Failed", "Succeeded With Warning"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetBatchJobExecution AWS API Documentation
    #
    # @overload get_batch_job_execution(params = {})
    # @param [Hash] params ({})
    def get_batch_job_execution(params = {}, options = {})
      req = build_request(:get_batch_job_execution, params)
      req.send_request(options)
    end

    # Gets the details of a specific data set.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application that this data set is
    #   associated with.
    #
    # @option params [required, String] :data_set_name
    #   The name of the data set.
    #
    # @return [Types::GetDataSetDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSetDetailsResponse#blocksize #blocksize} => Integer
    #   * {Types::GetDataSetDetailsResponse#creation_time #creation_time} => Time
    #   * {Types::GetDataSetDetailsResponse#data_set_name #data_set_name} => String
    #   * {Types::GetDataSetDetailsResponse#data_set_org #data_set_org} => Types::DatasetDetailOrgAttributes
    #   * {Types::GetDataSetDetailsResponse#last_referenced_time #last_referenced_time} => Time
    #   * {Types::GetDataSetDetailsResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::GetDataSetDetailsResponse#location #location} => String
    #   * {Types::GetDataSetDetailsResponse#record_length #record_length} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_set_details({
    #     application_id: "Identifier", # required
    #     data_set_name: "String200", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.blocksize #=> Integer
    #   resp.creation_time #=> Time
    #   resp.data_set_name #=> String
    #   resp.data_set_org.gdg.limit #=> Integer
    #   resp.data_set_org.gdg.roll_disposition #=> String
    #   resp.data_set_org.po.encoding #=> String
    #   resp.data_set_org.po.format #=> String
    #   resp.data_set_org.ps.encoding #=> String
    #   resp.data_set_org.ps.format #=> String
    #   resp.data_set_org.vsam.alternate_keys #=> Array
    #   resp.data_set_org.vsam.alternate_keys[0].allow_duplicates #=> Boolean
    #   resp.data_set_org.vsam.alternate_keys[0].length #=> Integer
    #   resp.data_set_org.vsam.alternate_keys[0].name #=> String
    #   resp.data_set_org.vsam.alternate_keys[0].offset #=> Integer
    #   resp.data_set_org.vsam.cache_at_startup #=> Boolean
    #   resp.data_set_org.vsam.compressed #=> Boolean
    #   resp.data_set_org.vsam.encoding #=> String
    #   resp.data_set_org.vsam.primary_key.length #=> Integer
    #   resp.data_set_org.vsam.primary_key.name #=> String
    #   resp.data_set_org.vsam.primary_key.offset #=> Integer
    #   resp.data_set_org.vsam.record_format #=> String
    #   resp.last_referenced_time #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.location #=> String
    #   resp.record_length #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetDataSetDetails AWS API Documentation
    #
    # @overload get_data_set_details(params = {})
    # @param [Hash] params ({})
    def get_data_set_details(params = {}, options = {})
      req = build_request(:get_data_set_details, params)
      req.send_request(options)
    end

    # Gets the status of a data set import task initiated with the
    # CreateDataSetImportTask operation.
    #
    # @option params [required, String] :application_id
    #   The application identifier.
    #
    # @option params [required, String] :task_id
    #   The task identifier returned by the CreateDataSetImportTask operation.
    #
    # @return [Types::GetDataSetImportTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSetImportTaskResponse#status #status} => String
    #   * {Types::GetDataSetImportTaskResponse#summary #summary} => Types::DataSetImportSummary
    #   * {Types::GetDataSetImportTaskResponse#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_set_import_task({
    #     application_id: "Identifier", # required
    #     task_id: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Creating", "Running", "Completed"
    #   resp.summary.failed #=> Integer
    #   resp.summary.in_progress #=> Integer
    #   resp.summary.pending #=> Integer
    #   resp.summary.succeeded #=> Integer
    #   resp.summary.total #=> Integer
    #   resp.task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetDataSetImportTask AWS API Documentation
    #
    # @overload get_data_set_import_task(params = {})
    # @param [Hash] params ({})
    def get_data_set_import_task(params = {}, options = {})
      req = build_request(:get_data_set_import_task, params)
      req.send_request(options)
    end

    # Gets details of a specific deployment with a given deployment
    # identifier.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application.
    #
    # @option params [required, String] :deployment_id
    #   The unique identifier for the deployment.
    #
    # @return [Types::GetDeploymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentResponse#application_id #application_id} => String
    #   * {Types::GetDeploymentResponse#application_version #application_version} => Integer
    #   * {Types::GetDeploymentResponse#creation_time #creation_time} => Time
    #   * {Types::GetDeploymentResponse#deployment_id #deployment_id} => String
    #   * {Types::GetDeploymentResponse#environment_id #environment_id} => String
    #   * {Types::GetDeploymentResponse#status #status} => String
    #   * {Types::GetDeploymentResponse#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment({
    #     application_id: "Identifier", # required
    #     deployment_id: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.application_version #=> Integer
    #   resp.creation_time #=> Time
    #   resp.deployment_id #=> String
    #   resp.environment_id #=> String
    #   resp.status #=> String, one of "Deploying", "Succeeded", "Failed"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetDeployment AWS API Documentation
    #
    # @overload get_deployment(params = {})
    # @param [Hash] params ({})
    def get_deployment(params = {}, options = {})
      req = build_request(:get_deployment, params)
      req.send_request(options)
    end

    # Describes a specific runtime environment.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of the runtime environment.
    #
    # @return [Types::GetEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentResponse#actual_capacity #actual_capacity} => Integer
    #   * {Types::GetEnvironmentResponse#creation_time #creation_time} => Time
    #   * {Types::GetEnvironmentResponse#description #description} => String
    #   * {Types::GetEnvironmentResponse#engine_type #engine_type} => String
    #   * {Types::GetEnvironmentResponse#engine_version #engine_version} => String
    #   * {Types::GetEnvironmentResponse#environment_arn #environment_arn} => String
    #   * {Types::GetEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::GetEnvironmentResponse#high_availability_config #high_availability_config} => Types::HighAvailabilityConfig
    #   * {Types::GetEnvironmentResponse#instance_type #instance_type} => String
    #   * {Types::GetEnvironmentResponse#kms_key_id #kms_key_id} => String
    #   * {Types::GetEnvironmentResponse#load_balancer_arn #load_balancer_arn} => String
    #   * {Types::GetEnvironmentResponse#name #name} => String
    #   * {Types::GetEnvironmentResponse#pending_maintenance #pending_maintenance} => Types::PendingMaintenance
    #   * {Types::GetEnvironmentResponse#preferred_maintenance_window #preferred_maintenance_window} => String
    #   * {Types::GetEnvironmentResponse#publicly_accessible #publicly_accessible} => Boolean
    #   * {Types::GetEnvironmentResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::GetEnvironmentResponse#status #status} => String
    #   * {Types::GetEnvironmentResponse#status_reason #status_reason} => String
    #   * {Types::GetEnvironmentResponse#storage_configurations #storage_configurations} => Array&lt;Types::StorageConfiguration&gt;
    #   * {Types::GetEnvironmentResponse#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::GetEnvironmentResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetEnvironmentResponse#vpc_id #vpc_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     environment_id: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.actual_capacity #=> Integer
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.engine_type #=> String, one of "microfocus", "bluage"
    #   resp.engine_version #=> String
    #   resp.environment_arn #=> String
    #   resp.environment_id #=> String
    #   resp.high_availability_config.desired_capacity #=> Integer
    #   resp.instance_type #=> String
    #   resp.kms_key_id #=> String
    #   resp.load_balancer_arn #=> String
    #   resp.name #=> String
    #   resp.pending_maintenance.engine_version #=> String
    #   resp.pending_maintenance.schedule.end_time #=> Time
    #   resp.pending_maintenance.schedule.start_time #=> Time
    #   resp.preferred_maintenance_window #=> String
    #   resp.publicly_accessible #=> Boolean
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.status #=> String, one of "Creating", "Available", "Deleting", "Failed", "Updating"
    #   resp.status_reason #=> String
    #   resp.storage_configurations #=> Array
    #   resp.storage_configurations[0].efs.file_system_id #=> String
    #   resp.storage_configurations[0].efs.mount_point #=> String
    #   resp.storage_configurations[0].fsx.file_system_id #=> String
    #   resp.storage_configurations[0].fsx.mount_point #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Returns a list of the application versions for a specific application.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application.
    #
    # @option params [Integer] :max_results
    #   The maximum number of application versions to return.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning of
    #   the list, exclude this parameter.
    #
    # @return [Types::ListApplicationVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationVersionsResponse#application_versions #application_versions} => Array&lt;Types::ApplicationVersionSummary&gt;
    #   * {Types::ListApplicationVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_versions({
    #     application_id: "Identifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_versions #=> Array
    #   resp.application_versions[0].application_version #=> Integer
    #   resp.application_versions[0].creation_time #=> Time
    #   resp.application_versions[0].status #=> String, one of "Creating", "Available", "Failed"
    #   resp.application_versions[0].status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListApplicationVersions AWS API Documentation
    #
    # @overload list_application_versions(params = {})
    # @param [Hash] params ({})
    def list_application_versions(params = {}, options = {})
      req = build_request(:list_application_versions, params)
      req.send_request(options)
    end

    # Lists the applications associated with a specific Amazon Web Services
    # account. You can provide the unique identifier of a specific runtime
    # environment in a query parameter to see all applications associated
    # with that environment.
    #
    # @option params [String] :environment_id
    #   The unique identifier of the runtime environment where the
    #   applications are deployed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of applications to return.
    #
    # @option params [Array<String>] :names
    #   The names of the applications.
    #
    # @option params [String] :next_token
    #   A pagination token to control the number of applications displayed in
    #   the list.
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#applications #applications} => Array&lt;Types::ApplicationSummary&gt;
    #   * {Types::ListApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     environment_id: "Identifier",
    #     max_results: 1,
    #     names: ["EntityName"],
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0].application_arn #=> String
    #   resp.applications[0].application_id #=> String
    #   resp.applications[0].application_version #=> Integer
    #   resp.applications[0].creation_time #=> Time
    #   resp.applications[0].deployment_status #=> String, one of "Deploying", "Deployed"
    #   resp.applications[0].description #=> String
    #   resp.applications[0].engine_type #=> String, one of "microfocus", "bluage"
    #   resp.applications[0].environment_id #=> String
    #   resp.applications[0].last_start_time #=> Time
    #   resp.applications[0].name #=> String
    #   resp.applications[0].role_arn #=> String
    #   resp.applications[0].status #=> String, one of "Creating", "Created", "Available", "Ready", "Starting", "Running", "Stopping", "Stopped", "Failed", "Deleting", "Deleting From Environment"
    #   resp.applications[0].version_status #=> String, one of "Creating", "Available", "Failed"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Lists all the available batch job definitions based on the batch job
    # resources uploaded during the application creation. You can use the
    # batch job definitions in the list to start a batch job.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application.
    #
    # @option params [Integer] :max_results
    #   The maximum number of batch job definitions to return.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning of
    #   the list, exclude this parameter.
    #
    # @option params [String] :prefix
    #   If the batch job definition is a FileBatchJobDefinition, the prefix
    #   allows you to search on the file names of FileBatchJobDefinitions.
    #
    # @return [Types::ListBatchJobDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBatchJobDefinitionsResponse#batch_job_definitions #batch_job_definitions} => Array&lt;Types::BatchJobDefinition&gt;
    #   * {Types::ListBatchJobDefinitionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_batch_job_definitions({
    #     application_id: "Identifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     prefix: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_job_definitions #=> Array
    #   resp.batch_job_definitions[0].file_batch_job_definition.file_name #=> String
    #   resp.batch_job_definitions[0].file_batch_job_definition.folder_path #=> String
    #   resp.batch_job_definitions[0].script_batch_job_definition.script_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListBatchJobDefinitions AWS API Documentation
    #
    # @overload list_batch_job_definitions(params = {})
    # @param [Hash] params ({})
    def list_batch_job_definitions(params = {}, options = {})
      req = build_request(:list_batch_job_definitions, params)
      req.send_request(options)
    end

    # Lists historical, current, and scheduled batch job executions for a
    # specific application.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application.
    #
    # @option params [Array<String>] :execution_ids
    #   The unique identifier of each batch job execution.
    #
    # @option params [String] :job_name
    #   The name of each batch job execution.
    #
    # @option params [Integer] :max_results
    #   The maximum number of batch job executions to return.
    #
    # @option params [String] :next_token
    #   A pagination token to control the number of batch job executions
    #   displayed in the list.
    #
    # @option params [Time,DateTime,Date,Integer,String] :started_after
    #   The time after which the batch job executions started.
    #
    # @option params [Time,DateTime,Date,Integer,String] :started_before
    #   The time before the batch job executions started.
    #
    # @option params [String] :status
    #   The status of the batch job executions.
    #
    # @return [Types::ListBatchJobExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBatchJobExecutionsResponse#batch_job_executions #batch_job_executions} => Array&lt;Types::BatchJobExecutionSummary&gt;
    #   * {Types::ListBatchJobExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_batch_job_executions({
    #     application_id: "Identifier", # required
    #     execution_ids: ["Identifier"],
    #     job_name: "String100",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     started_after: Time.now,
    #     started_before: Time.now,
    #     status: "Submitting", # accepts Submitting, Holding, Dispatching, Running, Cancelling, Cancelled, Succeeded, Failed, Succeeded With Warning
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_job_executions #=> Array
    #   resp.batch_job_executions[0].application_id #=> String
    #   resp.batch_job_executions[0].batch_job_identifier.file_batch_job_identifier.file_name #=> String
    #   resp.batch_job_executions[0].batch_job_identifier.file_batch_job_identifier.folder_path #=> String
    #   resp.batch_job_executions[0].batch_job_identifier.script_batch_job_identifier.script_name #=> String
    #   resp.batch_job_executions[0].end_time #=> Time
    #   resp.batch_job_executions[0].execution_id #=> String
    #   resp.batch_job_executions[0].job_id #=> String
    #   resp.batch_job_executions[0].job_name #=> String
    #   resp.batch_job_executions[0].job_type #=> String, one of "VSE", "JES2", "JES3"
    #   resp.batch_job_executions[0].return_code #=> String
    #   resp.batch_job_executions[0].start_time #=> Time
    #   resp.batch_job_executions[0].status #=> String, one of "Submitting", "Holding", "Dispatching", "Running", "Cancelling", "Cancelled", "Succeeded", "Failed", "Succeeded With Warning"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListBatchJobExecutions AWS API Documentation
    #
    # @overload list_batch_job_executions(params = {})
    # @param [Hash] params ({})
    def list_batch_job_executions(params = {}, options = {})
      req = build_request(:list_batch_job_executions, params)
      req.send_request(options)
    end

    # Lists the data set imports for the specified application.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning of
    #   the list, exclude this parameter.
    #
    # @return [Types::ListDataSetImportHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSetImportHistoryResponse#data_set_import_tasks #data_set_import_tasks} => Array&lt;Types::DataSetImportTask&gt;
    #   * {Types::ListDataSetImportHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_set_import_history({
    #     application_id: "Identifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_import_tasks #=> Array
    #   resp.data_set_import_tasks[0].status #=> String, one of "Creating", "Running", "Completed"
    #   resp.data_set_import_tasks[0].summary.failed #=> Integer
    #   resp.data_set_import_tasks[0].summary.in_progress #=> Integer
    #   resp.data_set_import_tasks[0].summary.pending #=> Integer
    #   resp.data_set_import_tasks[0].summary.succeeded #=> Integer
    #   resp.data_set_import_tasks[0].summary.total #=> Integer
    #   resp.data_set_import_tasks[0].task_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListDataSetImportHistory AWS API Documentation
    #
    # @overload list_data_set_import_history(params = {})
    # @param [Hash] params ({})
    def list_data_set_import_history(params = {}, options = {})
      req = build_request(:list_data_set_import_history, params)
      req.send_request(options)
    end

    # Lists the data sets imported for a specific application. In Amazon Web
    # Services Mainframe Modernization, data sets are associated with
    # applications deployed on runtime environments. This is known as
    # importing data sets. Currently, Amazon Web Services Mainframe
    # Modernization can import data sets into catalogs using
    # [CreateDataSetImportTask][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/m2/latest/APIReference/API_CreateDataSetImportTask.html
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application for which you want to list
    #   the associated data sets.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning of
    #   the list, exclude this parameter.
    #
    # @option params [String] :prefix
    #   The prefix of the data set name, which you can use to filter the list
    #   of data sets.
    #
    # @return [Types::ListDataSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSetsResponse#data_sets #data_sets} => Array&lt;Types::DataSetSummary&gt;
    #   * {Types::ListDataSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sets({
    #     application_id: "Identifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     prefix: "String200",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_sets #=> Array
    #   resp.data_sets[0].creation_time #=> Time
    #   resp.data_sets[0].data_set_name #=> String
    #   resp.data_sets[0].data_set_org #=> String
    #   resp.data_sets[0].format #=> String
    #   resp.data_sets[0].last_referenced_time #=> Time
    #   resp.data_sets[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListDataSets AWS API Documentation
    #
    # @overload list_data_sets(params = {})
    # @param [Hash] params ({})
    def list_data_sets(params = {}, options = {})
      req = build_request(:list_data_sets, params)
      req.send_request(options)
    end

    # Returns a list of all deployments of a specific application. A
    # deployment is a combination of a specific application and a specific
    # version of that application. Each deployment is mapped to a particular
    # application version.
    #
    # @option params [required, String] :application_id
    #   The application identifier.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning of
    #   the list, exclude this parameter.
    #
    # @return [Types::ListDeploymentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentsResponse#deployments #deployments} => Array&lt;Types::DeploymentSummary&gt;
    #   * {Types::ListDeploymentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments({
    #     application_id: "Identifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.deployments #=> Array
    #   resp.deployments[0].application_id #=> String
    #   resp.deployments[0].application_version #=> Integer
    #   resp.deployments[0].creation_time #=> Time
    #   resp.deployments[0].deployment_id #=> String
    #   resp.deployments[0].environment_id #=> String
    #   resp.deployments[0].status #=> String, one of "Deploying", "Succeeded", "Failed"
    #   resp.deployments[0].status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListDeployments AWS API Documentation
    #
    # @overload list_deployments(params = {})
    # @param [Hash] params ({})
    def list_deployments(params = {}, options = {})
      req = build_request(:list_deployments, params)
      req.send_request(options)
    end

    # Lists the available engine versions.
    #
    # @option params [String] :engine_type
    #   The type of target platform.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning of
    #   the list, exclude this parameter.
    #
    # @return [Types::ListEngineVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEngineVersionsResponse#engine_versions #engine_versions} => Array&lt;Types::EngineVersionsSummary&gt;
    #   * {Types::ListEngineVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_engine_versions({
    #     engine_type: "microfocus", # accepts microfocus, bluage
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.engine_versions #=> Array
    #   resp.engine_versions[0].engine_type #=> String
    #   resp.engine_versions[0].engine_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListEngineVersions AWS API Documentation
    #
    # @overload list_engine_versions(params = {})
    # @param [Hash] params ({})
    def list_engine_versions(params = {}, options = {})
      req = build_request(:list_engine_versions, params)
      req.send_request(options)
    end

    # Lists the runtime environments.
    #
    # @option params [String] :engine_type
    #   The engine type for the runtime environment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of runtime environments to return.
    #
    # @option params [Array<String>] :names
    #   The names of the runtime environments. Must be unique within the
    #   account.
    #
    # @option params [String] :next_token
    #   A pagination token to control the number of runtime environments
    #   displayed in the list.
    #
    # @return [Types::ListEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsResponse#environments #environments} => Array&lt;Types::EnvironmentSummary&gt;
    #   * {Types::ListEnvironmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     engine_type: "microfocus", # accepts microfocus, bluage
    #     max_results: 1,
    #     names: ["EntityName"],
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].creation_time #=> Time
    #   resp.environments[0].engine_type #=> String, one of "microfocus", "bluage"
    #   resp.environments[0].engine_version #=> String
    #   resp.environments[0].environment_arn #=> String
    #   resp.environments[0].environment_id #=> String
    #   resp.environments[0].instance_type #=> String
    #   resp.environments[0].name #=> String
    #   resp.environments[0].status #=> String, one of "Creating", "Available", "Deleting", "Failed", "Updating"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts an application that is currently stopped.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application you want to start.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_application({
    #     application_id: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/StartApplication AWS API Documentation
    #
    # @overload start_application(params = {})
    # @param [Hash] params ({})
    def start_application(params = {}, options = {})
      req = build_request(:start_application, params)
      req.send_request(options)
    end

    # Starts a batch job and returns the unique identifier of this execution
    # of the batch job. The associated application must be running in order
    # to start the batch job.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application associated with this batch
    #   job.
    #
    # @option params [required, Types::BatchJobIdentifier] :batch_job_identifier
    #   The unique identifier of the batch job.
    #
    # @option params [Hash<String,String>] :job_params
    #   The collection of batch job parameters. For details about limits for
    #   keys and values, see [Coding variables in JCL][1].
    #
    #
    #
    #   [1]: https://www.ibm.com/docs/en/workload-automation/9.3.0?topic=zos-coding-variables-in-jcl
    #
    # @return [Types::StartBatchJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBatchJobResponse#execution_id #execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_batch_job({
    #     application_id: "Identifier", # required
    #     batch_job_identifier: { # required
    #       file_batch_job_identifier: {
    #         file_name: "String", # required
    #         folder_path: "String",
    #       },
    #       script_batch_job_identifier: {
    #         script_name: "String", # required
    #       },
    #     },
    #     job_params: {
    #       "BatchParamKey" => "BatchParamValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/StartBatchJob AWS API Documentation
    #
    # @overload start_batch_job(params = {})
    # @param [Hash] params ({})
    def start_batch_job(params = {}, options = {})
      req = build_request(:start_batch_job, params)
      req.send_request(options)
    end

    # Stops a running application.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application you want to stop.
    #
    # @option params [Boolean] :force_stop
    #   Stopping an application process can take a long time. Setting this
    #   parameter to true lets you force stop the application so you don't
    #   need to wait until the process finishes to apply another action on the
    #   application. The default value is false.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_application({
    #     application_id: "Identifier", # required
    #     force_stop: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/StopApplication AWS API Documentation
    #
    # @overload stop_application(params = {})
    # @param [Hash] params ({})
    def stop_application(params = {}, options = {})
      req = build_request(:stop_application, params)
      req.send_request(options)
    end

    # Adds one or more tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an application and creates a new version.
    #
    # @option params [required, String] :application_id
    #   The unique identifier of the application you want to update.
    #
    # @option params [required, Integer] :current_application_version
    #   The current version of the application to update.
    #
    # @option params [Types::Definition] :definition
    #   The application definition for this application. You can specify
    #   either inline JSON or an S3 bucket location.
    #
    # @option params [String] :description
    #   The description of the application to update.
    #
    # @return [Types::UpdateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationResponse#application_version #application_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_id: "Identifier", # required
    #     current_application_version: 1, # required
    #     definition: {
    #       content: "StringFree65000",
    #       s3_location: "String2000",
    #     },
    #     description: "EntityDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Updates the configuration details for a specific runtime environment.
    #
    # @option params [Boolean] :apply_during_maintenance_window
    #   Indicates whether to update the runtime environment during the
    #   maintenance window. The default is false. Currently, Amazon Web
    #   Services Mainframe Modernization accepts the `engineVersion` parameter
    #   only if `applyDuringMaintenanceWindow` is true. If any parameter other
    #   than `engineVersion` is provided in `UpdateEnvironmentRequest`, it
    #   will fail if `applyDuringMaintenanceWindow` is set to true.
    #
    # @option params [Integer] :desired_capacity
    #   The desired capacity for the runtime environment to update.
    #
    # @option params [String] :engine_version
    #   The version of the runtime engine for the runtime environment.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of the runtime environment that you want to
    #   update.
    #
    # @option params [String] :instance_type
    #   The instance type for the runtime environment to update.
    #
    # @option params [String] :preferred_maintenance_window
    #   Configures the maintenance window you want for the runtime
    #   environment. If you do not provide a value, a random system-generated
    #   value will be assigned.
    #
    # @return [Types::UpdateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentResponse#environment_id #environment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     apply_during_maintenance_window: false,
    #     desired_capacity: 1,
    #     engine_version: "EngineVersion",
    #     environment_id: "Identifier", # required
    #     instance_type: "String20",
    #     preferred_maintenance_window: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
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
      context[:gem_name] = 'aws-sdk-mainframemodernization'
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
