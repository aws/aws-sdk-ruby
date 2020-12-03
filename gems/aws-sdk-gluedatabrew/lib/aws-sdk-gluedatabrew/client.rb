# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:gluedatabrew)

module Aws::GlueDataBrew
  # An API client for GlueDataBrew.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GlueDataBrew::Client.new(
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

    @identifier = :gluedatabrew

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # Deletes one or more versions of a recipe at a time.
    #
    # @option params [required, String] :name
    #   The name of the recipe to be modified.
    #
    # @option params [required, Array<String>] :recipe_versions
    #   An array of version identifiers to be deleted.
    #
    # @return [Types::BatchDeleteRecipeVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteRecipeVersionResponse#name #name} => String
    #   * {Types::BatchDeleteRecipeVersionResponse#errors #errors} => Array&lt;Types::RecipeVersionErrorDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_recipe_version({
    #     name: "RecipeName", # required
    #     recipe_versions: ["RecipeVersion"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].recipe_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/BatchDeleteRecipeVersion AWS API Documentation
    #
    # @overload batch_delete_recipe_version(params = {})
    # @param [Hash] params ({})
    def batch_delete_recipe_version(params = {}, options = {})
      req = build_request(:batch_delete_recipe_version, params)
      req.send_request(options)
    end

    # Creates a new AWS Glue DataBrew dataset for this AWS account.
    #
    # @option params [required, String] :name
    #   The name of the dataset to be created.
    #
    # @option params [Types::FormatOptions] :format_options
    #   Options that define how Microsoft Excel input is to be interpreted by
    #   DataBrew.
    #
    # @option params [required, Types::Input] :input
    #   Information on how AWS Glue DataBrew can find data, in either the AWS
    #   Glue Data Catalog or Amazon S3.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata tags to apply to this dataset.
    #
    # @return [Types::CreateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset({
    #     name: "DatasetName", # required
    #     format_options: {
    #       json: {
    #         multi_line: false,
    #       },
    #       excel: {
    #         sheet_names: ["SheetName"],
    #         sheet_indexes: [1],
    #       },
    #     },
    #     input: { # required
    #       s3_input_definition: {
    #         bucket: "Bucket", # required
    #         key: "Key",
    #       },
    #       data_catalog_input_definition: {
    #         catalog_id: "CatalogId",
    #         database_name: "DatabaseName", # required
    #         table_name: "TableName", # required
    #         temp_directory: {
    #           bucket: "Bucket", # required
    #           key: "Key",
    #         },
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateDataset AWS API Documentation
    #
    # @overload create_dataset(params = {})
    # @param [Hash] params ({})
    def create_dataset(params = {}, options = {})
      req = build_request(:create_dataset, params)
      req.send_request(options)
    end

    # Creates a new job to profile an AWS Glue DataBrew dataset that exists
    # in the current AWS account.
    #
    # @option params [required, String] :dataset_name
    #   The name of the dataset that this job is to act upon.
    #
    # @option params [String] :encryption_key_arn
    #   The Amazon Resource Name (ARN) of an encryption key that is used to
    #   protect the job.
    #
    # @option params [String] :encryption_mode
    #   The encryption mode for the job, which can be one of the following:
    #
    #   * `SSE-KMS` - para&gt;`SSE-KMS` - server-side encryption with AWS
    #     KMS-managed keys.
    #
    #   * `SSE-S3` - Server-side encryption with keys managed by Amazon S3.
    #
    # @option params [required, String] :name
    #   The name of the job to be created.
    #
    # @option params [String] :log_subscription
    #   A value that enables or disables Amazon CloudWatch logging for the
    #   current AWS account. If logging is enabled, CloudWatch writes one log
    #   stream for each job run.
    #
    # @option params [Integer] :max_capacity
    #   The maximum number of nodes that DataBrew can use when the job
    #   processes data.
    #
    # @option params [Integer] :max_retries
    #   The maximum number of times to retry the job after a job run fails.
    #
    # @option params [required, Types::S3Location] :output_location
    #   An Amazon S3 location (bucket name an object key) where DataBrew can
    #   read input data, or write output from a job.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role to be assumed for this request.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata tags to apply to this job.
    #
    # @option params [Integer] :timeout
    #   The job's timeout in minutes. A job that attempts to run longer than
    #   this timeout period ends with a status of `TIMEOUT`.
    #
    # @return [Types::CreateProfileJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProfileJobResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile_job({
    #     dataset_name: "DatasetName", # required
    #     encryption_key_arn: "EncryptionKeyArn",
    #     encryption_mode: "SSE-KMS", # accepts SSE-KMS, SSE-S3
    #     name: "JobName", # required
    #     log_subscription: "ENABLE", # accepts ENABLE, DISABLE
    #     max_capacity: 1,
    #     max_retries: 1,
    #     output_location: { # required
    #       bucket: "Bucket", # required
    #       key: "Key",
    #     },
    #     role_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     timeout: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateProfileJob AWS API Documentation
    #
    # @overload create_profile_job(params = {})
    # @param [Hash] params ({})
    def create_profile_job(params = {}, options = {})
      req = build_request(:create_profile_job, params)
      req.send_request(options)
    end

    # Creates a new AWS Glue DataBrew project in the current AWS account.
    #
    # @option params [required, String] :dataset_name
    #   The name of the dataset to associate this project with.
    #
    # @option params [required, String] :name
    #   A unique name for the new project.
    #
    # @option params [required, String] :recipe_name
    #   The name of an existing recipe to associate with the project.
    #
    # @option params [Types::Sample] :sample
    #   Represents the sample size and sampling type for AWS Glue DataBrew to
    #   use for interactive data analysis.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role to be assumed for this request.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata tags to apply to this project.
    #
    # @return [Types::CreateProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     dataset_name: "DatasetName", # required
    #     name: "ProjectName", # required
    #     recipe_name: "RecipeName", # required
    #     sample: {
    #       size: 1,
    #       type: "FIRST_N", # required, accepts FIRST_N, LAST_N, RANDOM
    #     },
    #     role_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Creates a new AWS Glue DataBrew recipe for the current AWS account.
    #
    # @option params [String] :description
    #   A description for the recipe.
    #
    # @option params [required, String] :name
    #   A unique name for the recipe.
    #
    # @option params [required, Array<Types::RecipeStep>] :steps
    #   An array containing the steps to be performed by the recipe. Each
    #   recipe step consists of one recipe action and (optionally) an array of
    #   condition expressions.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata tags to apply to this recipe.
    #
    # @return [Types::CreateRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRecipeResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recipe({
    #     description: "RecipeDescription",
    #     name: "RecipeName", # required
    #     steps: [ # required
    #       {
    #         action: { # required
    #           operation: "Operation", # required
    #           parameters: {
    #             "ParameterName" => "ParameterValue",
    #           },
    #         },
    #         condition_expressions: [
    #           {
    #             condition: "Condition", # required
    #             value: "ConditionValue",
    #             target_column: "TargetColumn", # required
    #           },
    #         ],
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateRecipe AWS API Documentation
    #
    # @overload create_recipe(params = {})
    # @param [Hash] params ({})
    def create_recipe(params = {}, options = {})
      req = build_request(:create_recipe, params)
      req.send_request(options)
    end

    # Creates a new job for an existing AWS Glue DataBrew recipe in the
    # current AWS account. You can create a standalone job using either a
    # project, or a combination of a recipe and a dataset.
    #
    # @option params [String] :dataset_name
    #   The name of the dataset that this job processes.
    #
    # @option params [String] :encryption_key_arn
    #   The Amazon Resource Name (ARN) of an encryption key that is used to
    #   protect the job.
    #
    # @option params [String] :encryption_mode
    #   The encryption mode for the job, which can be one of the following:
    #
    #   * `SSE-KMS` - Server-side encryption with AWS KMS-managed keys.
    #
    #   * `SSE-S3` - Server-side encryption with keys managed by Amazon S3.
    #
    # @option params [required, String] :name
    #   A unique name for the job.
    #
    # @option params [String] :log_subscription
    #   A value that enables or disables Amazon CloudWatch logging for the
    #   current AWS account. If logging is enabled, CloudWatch writes one log
    #   stream for each job run.
    #
    # @option params [Integer] :max_capacity
    #   The maximum number of nodes that DataBrew can consume when the job
    #   processes data.
    #
    # @option params [Integer] :max_retries
    #   The maximum number of times to retry the job after a job run fails.
    #
    # @option params [required, Array<Types::Output>] :outputs
    #   One or more artifacts that represent the output from running the job.
    #
    # @option params [String] :project_name
    #   Either the name of an existing project, or a combination of a recipe
    #   and a dataset to associate with the recipe.
    #
    # @option params [Types::RecipeReference] :recipe_reference
    #   Represents all of the attributes of an AWS Glue DataBrew recipe.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role to be assumed for this request.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata tags to apply to this job dataset.
    #
    # @option params [Integer] :timeout
    #   The job's timeout in minutes. A job that attempts to run longer than
    #   this timeout period ends with a status of `TIMEOUT`.
    #
    # @return [Types::CreateRecipeJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRecipeJobResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recipe_job({
    #     dataset_name: "DatasetName",
    #     encryption_key_arn: "EncryptionKeyArn",
    #     encryption_mode: "SSE-KMS", # accepts SSE-KMS, SSE-S3
    #     name: "JobName", # required
    #     log_subscription: "ENABLE", # accepts ENABLE, DISABLE
    #     max_capacity: 1,
    #     max_retries: 1,
    #     outputs: [ # required
    #       {
    #         compression_format: "GZIP", # accepts GZIP, LZ4, SNAPPY, BZIP2, DEFLATE, LZO, BROTLI, ZSTD, ZLIB
    #         format: "CSV", # accepts CSV, JSON, PARQUET, GLUEPARQUET, AVRO, ORC, XML
    #         partition_columns: ["ColumnName"],
    #         location: { # required
    #           bucket: "Bucket", # required
    #           key: "Key",
    #         },
    #         overwrite: false,
    #       },
    #     ],
    #     project_name: "ProjectName",
    #     recipe_reference: {
    #       name: "RecipeName", # required
    #       recipe_version: "RecipeVersion",
    #     },
    #     role_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     timeout: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateRecipeJob AWS API Documentation
    #
    # @overload create_recipe_job(params = {})
    # @param [Hash] params ({})
    def create_recipe_job(params = {}, options = {})
      req = build_request(:create_recipe_job, params)
      req.send_request(options)
    end

    # Creates a new schedule for one or more AWS Glue DataBrew jobs. Jobs
    # can be run at a specific date and time, or at regular intervals.
    #
    # @option params [Array<String>] :job_names
    #   The name or names of one or more jobs to be run.
    #
    # @option params [required, String] :cron_expression
    #   The date or dates and time or times, in `cron` format, when the jobs
    #   are to be run.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata tags to apply to this schedule.
    #
    # @option params [required, String] :name
    #   A unique name for the schedule.
    #
    # @return [Types::CreateScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScheduleResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schedule({
    #     job_names: ["JobName"],
    #     cron_expression: "CronExpression", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     name: "ScheduleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateSchedule AWS API Documentation
    #
    # @overload create_schedule(params = {})
    # @param [Hash] params ({})
    def create_schedule(params = {}, options = {})
      req = build_request(:create_schedule, params)
      req.send_request(options)
    end

    # Deletes a dataset from AWS Glue DataBrew.
    #
    # @option params [required, String] :name
    #   The name of the dataset to be deleted.
    #
    # @return [Types::DeleteDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDatasetResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset({
    #     name: "DatasetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteDataset AWS API Documentation
    #
    # @overload delete_dataset(params = {})
    # @param [Hash] params ({})
    def delete_dataset(params = {}, options = {})
      req = build_request(:delete_dataset, params)
      req.send_request(options)
    end

    # Deletes the specified AWS Glue DataBrew job from the current AWS
    # account. The job can be for a recipe or for a profile.
    #
    # @option params [required, String] :name
    #   The name of the job to be deleted.
    #
    # @return [Types::DeleteJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteJobResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job({
    #     name: "JobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteJob AWS API Documentation
    #
    # @overload delete_job(params = {})
    # @param [Hash] params ({})
    def delete_job(params = {}, options = {})
      req = build_request(:delete_job, params)
      req.send_request(options)
    end

    # Deletes an existing AWS Glue DataBrew project from the current AWS
    # account.
    #
    # @option params [required, String] :name
    #   The name of the project to be deleted.
    #
    # @return [Types::DeleteProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProjectResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     name: "ProjectName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteProject AWS API Documentation
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Deletes a single version of an AWS Glue DataBrew recipe.
    #
    # @option params [required, String] :name
    #   The name of the recipe to be deleted.
    #
    # @option params [required, String] :recipe_version
    #   The version of the recipe to be deleted.
    #
    # @return [Types::DeleteRecipeVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRecipeVersionResponse#name #name} => String
    #   * {Types::DeleteRecipeVersionResponse#recipe_version #recipe_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recipe_version({
    #     name: "RecipeName", # required
    #     recipe_version: "RecipeVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.recipe_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteRecipeVersion AWS API Documentation
    #
    # @overload delete_recipe_version(params = {})
    # @param [Hash] params ({})
    def delete_recipe_version(params = {}, options = {})
      req = build_request(:delete_recipe_version, params)
      req.send_request(options)
    end

    # Deletes the specified AWS Glue DataBrew schedule from the current AWS
    # account.
    #
    # @option params [required, String] :name
    #   The name of the schedule to be deleted.
    #
    # @return [Types::DeleteScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteScheduleResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schedule({
    #     name: "ScheduleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteSchedule AWS API Documentation
    #
    # @overload delete_schedule(params = {})
    # @param [Hash] params ({})
    def delete_schedule(params = {}, options = {})
      req = build_request(:delete_schedule, params)
      req.send_request(options)
    end

    # Returns the definition of a specific AWS Glue DataBrew dataset that is
    # in the current AWS account.
    #
    # @option params [required, String] :name
    #   The name of the dataset to be described.
    #
    # @return [Types::DescribeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetResponse#created_by #created_by} => String
    #   * {Types::DescribeDatasetResponse#create_date #create_date} => Time
    #   * {Types::DescribeDatasetResponse#name #name} => String
    #   * {Types::DescribeDatasetResponse#format_options #format_options} => Types::FormatOptions
    #   * {Types::DescribeDatasetResponse#input #input} => Types::Input
    #   * {Types::DescribeDatasetResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::DescribeDatasetResponse#last_modified_by #last_modified_by} => String
    #   * {Types::DescribeDatasetResponse#source #source} => String
    #   * {Types::DescribeDatasetResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeDatasetResponse#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset({
    #     name: "DatasetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_by #=> String
    #   resp.create_date #=> Time
    #   resp.name #=> String
    #   resp.format_options.json.multi_line #=> Boolean
    #   resp.format_options.excel.sheet_names #=> Array
    #   resp.format_options.excel.sheet_names[0] #=> String
    #   resp.format_options.excel.sheet_indexes #=> Array
    #   resp.format_options.excel.sheet_indexes[0] #=> Integer
    #   resp.input.s3_input_definition.bucket #=> String
    #   resp.input.s3_input_definition.key #=> String
    #   resp.input.data_catalog_input_definition.catalog_id #=> String
    #   resp.input.data_catalog_input_definition.database_name #=> String
    #   resp.input.data_catalog_input_definition.table_name #=> String
    #   resp.input.data_catalog_input_definition.temp_directory.bucket #=> String
    #   resp.input.data_catalog_input_definition.temp_directory.key #=> String
    #   resp.last_modified_date #=> Time
    #   resp.last_modified_by #=> String
    #   resp.source #=> String, one of "S3", "DATA-CATALOG"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeDataset AWS API Documentation
    #
    # @overload describe_dataset(params = {})
    # @param [Hash] params ({})
    def describe_dataset(params = {}, options = {})
      req = build_request(:describe_dataset, params)
      req.send_request(options)
    end

    # Returns the definition of a specific AWS Glue DataBrew job that is in
    # the current AWS account.
    #
    # @option params [required, String] :name
    #   The name of the job to be described.
    #
    # @return [Types::DescribeJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobResponse#create_date #create_date} => Time
    #   * {Types::DescribeJobResponse#created_by #created_by} => String
    #   * {Types::DescribeJobResponse#dataset_name #dataset_name} => String
    #   * {Types::DescribeJobResponse#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::DescribeJobResponse#encryption_mode #encryption_mode} => String
    #   * {Types::DescribeJobResponse#name #name} => String
    #   * {Types::DescribeJobResponse#type #type} => String
    #   * {Types::DescribeJobResponse#last_modified_by #last_modified_by} => String
    #   * {Types::DescribeJobResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::DescribeJobResponse#log_subscription #log_subscription} => String
    #   * {Types::DescribeJobResponse#max_capacity #max_capacity} => Integer
    #   * {Types::DescribeJobResponse#max_retries #max_retries} => Integer
    #   * {Types::DescribeJobResponse#outputs #outputs} => Array&lt;Types::Output&gt;
    #   * {Types::DescribeJobResponse#project_name #project_name} => String
    #   * {Types::DescribeJobResponse#recipe_reference #recipe_reference} => Types::RecipeReference
    #   * {Types::DescribeJobResponse#resource_arn #resource_arn} => String
    #   * {Types::DescribeJobResponse#role_arn #role_arn} => String
    #   * {Types::DescribeJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeJobResponse#timeout #timeout} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job({
    #     name: "JobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_date #=> Time
    #   resp.created_by #=> String
    #   resp.dataset_name #=> String
    #   resp.encryption_key_arn #=> String
    #   resp.encryption_mode #=> String, one of "SSE-KMS", "SSE-S3"
    #   resp.name #=> String
    #   resp.type #=> String, one of "PROFILE", "RECIPE"
    #   resp.last_modified_by #=> String
    #   resp.last_modified_date #=> Time
    #   resp.log_subscription #=> String, one of "ENABLE", "DISABLE"
    #   resp.max_capacity #=> Integer
    #   resp.max_retries #=> Integer
    #   resp.outputs #=> Array
    #   resp.outputs[0].compression_format #=> String, one of "GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"
    #   resp.outputs[0].format #=> String, one of "CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML"
    #   resp.outputs[0].partition_columns #=> Array
    #   resp.outputs[0].partition_columns[0] #=> String
    #   resp.outputs[0].location.bucket #=> String
    #   resp.outputs[0].location.key #=> String
    #   resp.outputs[0].overwrite #=> Boolean
    #   resp.project_name #=> String
    #   resp.recipe_reference.name #=> String
    #   resp.recipe_reference.recipe_version #=> String
    #   resp.resource_arn #=> String
    #   resp.role_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.timeout #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeJob AWS API Documentation
    #
    # @overload describe_job(params = {})
    # @param [Hash] params ({})
    def describe_job(params = {}, options = {})
      req = build_request(:describe_job, params)
      req.send_request(options)
    end

    # Returns the definition of a specific AWS Glue DataBrew project that is
    # in the current AWS account.
    #
    # @option params [required, String] :name
    #   The name of the project to be described.
    #
    # @return [Types::DescribeProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProjectResponse#create_date #create_date} => Time
    #   * {Types::DescribeProjectResponse#created_by #created_by} => String
    #   * {Types::DescribeProjectResponse#dataset_name #dataset_name} => String
    #   * {Types::DescribeProjectResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::DescribeProjectResponse#last_modified_by #last_modified_by} => String
    #   * {Types::DescribeProjectResponse#name #name} => String
    #   * {Types::DescribeProjectResponse#recipe_name #recipe_name} => String
    #   * {Types::DescribeProjectResponse#resource_arn #resource_arn} => String
    #   * {Types::DescribeProjectResponse#sample #sample} => Types::Sample
    #   * {Types::DescribeProjectResponse#role_arn #role_arn} => String
    #   * {Types::DescribeProjectResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeProjectResponse#session_status #session_status} => String
    #   * {Types::DescribeProjectResponse#opened_by #opened_by} => String
    #   * {Types::DescribeProjectResponse#open_date #open_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project({
    #     name: "ProjectName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_date #=> Time
    #   resp.created_by #=> String
    #   resp.dataset_name #=> String
    #   resp.last_modified_date #=> Time
    #   resp.last_modified_by #=> String
    #   resp.name #=> String
    #   resp.recipe_name #=> String
    #   resp.resource_arn #=> String
    #   resp.sample.size #=> Integer
    #   resp.sample.type #=> String, one of "FIRST_N", "LAST_N", "RANDOM"
    #   resp.role_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.session_status #=> String, one of "ASSIGNED", "FAILED", "INITIALIZING", "PROVISIONING", "READY", "RECYCLING", "ROTATING", "TERMINATED", "TERMINATING", "UPDATING"
    #   resp.opened_by #=> String
    #   resp.open_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeProject AWS API Documentation
    #
    # @overload describe_project(params = {})
    # @param [Hash] params ({})
    def describe_project(params = {}, options = {})
      req = build_request(:describe_project, params)
      req.send_request(options)
    end

    # Returns the definition of a specific AWS Glue DataBrew recipe that is
    # in the current AWS account.
    #
    # @option params [required, String] :name
    #   The name of the recipe to be described.
    #
    # @option params [String] :recipe_version
    #   The recipe version identifier. If this parameter isn't specified,
    #   then the latest published version is returned.
    #
    # @return [Types::DescribeRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecipeResponse#created_by #created_by} => String
    #   * {Types::DescribeRecipeResponse#create_date #create_date} => Time
    #   * {Types::DescribeRecipeResponse#last_modified_by #last_modified_by} => String
    #   * {Types::DescribeRecipeResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::DescribeRecipeResponse#project_name #project_name} => String
    #   * {Types::DescribeRecipeResponse#published_by #published_by} => String
    #   * {Types::DescribeRecipeResponse#published_date #published_date} => Time
    #   * {Types::DescribeRecipeResponse#description #description} => String
    #   * {Types::DescribeRecipeResponse#name #name} => String
    #   * {Types::DescribeRecipeResponse#steps #steps} => Array&lt;Types::RecipeStep&gt;
    #   * {Types::DescribeRecipeResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeRecipeResponse#resource_arn #resource_arn} => String
    #   * {Types::DescribeRecipeResponse#recipe_version #recipe_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recipe({
    #     name: "RecipeName", # required
    #     recipe_version: "RecipeVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.created_by #=> String
    #   resp.create_date #=> Time
    #   resp.last_modified_by #=> String
    #   resp.last_modified_date #=> Time
    #   resp.project_name #=> String
    #   resp.published_by #=> String
    #   resp.published_date #=> Time
    #   resp.description #=> String
    #   resp.name #=> String
    #   resp.steps #=> Array
    #   resp.steps[0].action.operation #=> String
    #   resp.steps[0].action.parameters #=> Hash
    #   resp.steps[0].action.parameters["ParameterName"] #=> String
    #   resp.steps[0].condition_expressions #=> Array
    #   resp.steps[0].condition_expressions[0].condition #=> String
    #   resp.steps[0].condition_expressions[0].value #=> String
    #   resp.steps[0].condition_expressions[0].target_column #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.resource_arn #=> String
    #   resp.recipe_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeRecipe AWS API Documentation
    #
    # @overload describe_recipe(params = {})
    # @param [Hash] params ({})
    def describe_recipe(params = {}, options = {})
      req = build_request(:describe_recipe, params)
      req.send_request(options)
    end

    # Returns the definition of a specific AWS Glue DataBrew schedule that
    # is in the current AWS account.
    #
    # @option params [required, String] :name
    #   The name of the schedule to be described.
    #
    # @return [Types::DescribeScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScheduleResponse#create_date #create_date} => Time
    #   * {Types::DescribeScheduleResponse#created_by #created_by} => String
    #   * {Types::DescribeScheduleResponse#job_names #job_names} => Array&lt;String&gt;
    #   * {Types::DescribeScheduleResponse#last_modified_by #last_modified_by} => String
    #   * {Types::DescribeScheduleResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::DescribeScheduleResponse#resource_arn #resource_arn} => String
    #   * {Types::DescribeScheduleResponse#cron_expression #cron_expression} => String
    #   * {Types::DescribeScheduleResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeScheduleResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schedule({
    #     name: "ScheduleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_date #=> Time
    #   resp.created_by #=> String
    #   resp.job_names #=> Array
    #   resp.job_names[0] #=> String
    #   resp.last_modified_by #=> String
    #   resp.last_modified_date #=> Time
    #   resp.resource_arn #=> String
    #   resp.cron_expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeSchedule AWS API Documentation
    #
    # @overload describe_schedule(params = {})
    # @param [Hash] params ({})
    def describe_schedule(params = {}, options = {})
      req = build_request(:describe_schedule, params)
      req.send_request(options)
    end

    # Lists all of the AWS Glue DataBrew datasets for the current AWS
    # account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @option params [String] :next_token
    #   A token generated by DataBrew that specifies where to continue
    #   pagination if a previous request was truncated. To get the next set of
    #   pages, pass in the NextToken value from the response object of the
    #   previous page call.
    #
    # @return [Types::ListDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetsResponse#datasets #datasets} => Array&lt;Types::Dataset&gt;
    #   * {Types::ListDatasetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.datasets #=> Array
    #   resp.datasets[0].account_id #=> String
    #   resp.datasets[0].created_by #=> String
    #   resp.datasets[0].create_date #=> Time
    #   resp.datasets[0].name #=> String
    #   resp.datasets[0].format_options.json.multi_line #=> Boolean
    #   resp.datasets[0].format_options.excel.sheet_names #=> Array
    #   resp.datasets[0].format_options.excel.sheet_names[0] #=> String
    #   resp.datasets[0].format_options.excel.sheet_indexes #=> Array
    #   resp.datasets[0].format_options.excel.sheet_indexes[0] #=> Integer
    #   resp.datasets[0].input.s3_input_definition.bucket #=> String
    #   resp.datasets[0].input.s3_input_definition.key #=> String
    #   resp.datasets[0].input.data_catalog_input_definition.catalog_id #=> String
    #   resp.datasets[0].input.data_catalog_input_definition.database_name #=> String
    #   resp.datasets[0].input.data_catalog_input_definition.table_name #=> String
    #   resp.datasets[0].input.data_catalog_input_definition.temp_directory.bucket #=> String
    #   resp.datasets[0].input.data_catalog_input_definition.temp_directory.key #=> String
    #   resp.datasets[0].last_modified_date #=> Time
    #   resp.datasets[0].last_modified_by #=> String
    #   resp.datasets[0].source #=> String, one of "S3", "DATA-CATALOG"
    #   resp.datasets[0].tags #=> Hash
    #   resp.datasets[0].tags["TagKey"] #=> String
    #   resp.datasets[0].resource_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListDatasets AWS API Documentation
    #
    # @overload list_datasets(params = {})
    # @param [Hash] params ({})
    def list_datasets(params = {}, options = {})
      req = build_request(:list_datasets, params)
      req.send_request(options)
    end

    # Lists all of the previous runs of a particular AWS Glue DataBrew job
    # in the current AWS account.
    #
    # @option params [required, String] :name
    #   The name of the job.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @option params [String] :next_token
    #   A token generated by AWS Glue DataBrew that specifies where to
    #   continue pagination if a previous request was truncated. To get the
    #   next set of pages, pass in the NextToken value from the response
    #   object of the previous page call.
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
    #     name: "JobName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_runs #=> Array
    #   resp.job_runs[0].attempt #=> Integer
    #   resp.job_runs[0].completed_on #=> Time
    #   resp.job_runs[0].dataset_name #=> String
    #   resp.job_runs[0].error_message #=> String
    #   resp.job_runs[0].execution_time #=> Integer
    #   resp.job_runs[0].job_name #=> String
    #   resp.job_runs[0].run_id #=> String
    #   resp.job_runs[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.job_runs[0].log_subscription #=> String, one of "ENABLE", "DISABLE"
    #   resp.job_runs[0].log_group_name #=> String
    #   resp.job_runs[0].outputs #=> Array
    #   resp.job_runs[0].outputs[0].compression_format #=> String, one of "GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"
    #   resp.job_runs[0].outputs[0].format #=> String, one of "CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML"
    #   resp.job_runs[0].outputs[0].partition_columns #=> Array
    #   resp.job_runs[0].outputs[0].partition_columns[0] #=> String
    #   resp.job_runs[0].outputs[0].location.bucket #=> String
    #   resp.job_runs[0].outputs[0].location.key #=> String
    #   resp.job_runs[0].outputs[0].overwrite #=> Boolean
    #   resp.job_runs[0].recipe_reference.name #=> String
    #   resp.job_runs[0].recipe_reference.recipe_version #=> String
    #   resp.job_runs[0].started_by #=> String
    #   resp.job_runs[0].started_on #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListJobRuns AWS API Documentation
    #
    # @overload list_job_runs(params = {})
    # @param [Hash] params ({})
    def list_job_runs(params = {}, options = {})
      req = build_request(:list_job_runs, params)
      req.send_request(options)
    end

    # Lists the AWS Glue DataBrew jobs in the current AWS account.
    #
    # @option params [String] :dataset_name
    #   The name of a dataset. Using this parameter indicates to return only
    #   those jobs that act on the specified dataset.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @option params [String] :next_token
    #   A token generated by DataBrew that specifies where to continue
    #   pagination if a previous request was truncated. To get the next set of
    #   pages, pass in the NextToken value from the response object of the
    #   previous page call.
    #
    # @option params [String] :project_name
    #   The name of a project. Using this parameter indicates to return only
    #   those jobs that are associated with the specified project.
    #
    # @return [Types::ListJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResponse#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::ListJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     dataset_name: "DatasetName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     project_name: "ProjectName",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].account_id #=> String
    #   resp.jobs[0].created_by #=> String
    #   resp.jobs[0].create_date #=> Time
    #   resp.jobs[0].dataset_name #=> String
    #   resp.jobs[0].encryption_key_arn #=> String
    #   resp.jobs[0].encryption_mode #=> String, one of "SSE-KMS", "SSE-S3"
    #   resp.jobs[0].name #=> String
    #   resp.jobs[0].type #=> String, one of "PROFILE", "RECIPE"
    #   resp.jobs[0].last_modified_by #=> String
    #   resp.jobs[0].last_modified_date #=> Time
    #   resp.jobs[0].log_subscription #=> String, one of "ENABLE", "DISABLE"
    #   resp.jobs[0].max_capacity #=> Integer
    #   resp.jobs[0].max_retries #=> Integer
    #   resp.jobs[0].outputs #=> Array
    #   resp.jobs[0].outputs[0].compression_format #=> String, one of "GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"
    #   resp.jobs[0].outputs[0].format #=> String, one of "CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML"
    #   resp.jobs[0].outputs[0].partition_columns #=> Array
    #   resp.jobs[0].outputs[0].partition_columns[0] #=> String
    #   resp.jobs[0].outputs[0].location.bucket #=> String
    #   resp.jobs[0].outputs[0].location.key #=> String
    #   resp.jobs[0].outputs[0].overwrite #=> Boolean
    #   resp.jobs[0].project_name #=> String
    #   resp.jobs[0].recipe_reference.name #=> String
    #   resp.jobs[0].recipe_reference.recipe_version #=> String
    #   resp.jobs[0].resource_arn #=> String
    #   resp.jobs[0].role_arn #=> String
    #   resp.jobs[0].timeout #=> Integer
    #   resp.jobs[0].tags #=> Hash
    #   resp.jobs[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Lists all of the DataBrew projects in the current AWS account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListProjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsResponse#projects #projects} => Array&lt;Types::Project&gt;
    #   * {Types::ListProjectsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.projects #=> Array
    #   resp.projects[0].account_id #=> String
    #   resp.projects[0].create_date #=> Time
    #   resp.projects[0].created_by #=> String
    #   resp.projects[0].dataset_name #=> String
    #   resp.projects[0].last_modified_date #=> Time
    #   resp.projects[0].last_modified_by #=> String
    #   resp.projects[0].name #=> String
    #   resp.projects[0].recipe_name #=> String
    #   resp.projects[0].resource_arn #=> String
    #   resp.projects[0].sample.size #=> Integer
    #   resp.projects[0].sample.type #=> String, one of "FIRST_N", "LAST_N", "RANDOM"
    #   resp.projects[0].tags #=> Hash
    #   resp.projects[0].tags["TagKey"] #=> String
    #   resp.projects[0].role_arn #=> String
    #   resp.projects[0].opened_by #=> String
    #   resp.projects[0].open_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListProjects AWS API Documentation
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Lists all of the versions of a particular AWS Glue DataBrew recipe in
    # the current AWS account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [required, String] :name
    #   The name of the recipe for which to return version information.
    #
    # @return [Types::ListRecipeVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecipeVersionsResponse#next_token #next_token} => String
    #   * {Types::ListRecipeVersionsResponse#recipes #recipes} => Array&lt;Types::Recipe&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recipe_versions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     name: "RecipeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recipes #=> Array
    #   resp.recipes[0].created_by #=> String
    #   resp.recipes[0].create_date #=> Time
    #   resp.recipes[0].last_modified_by #=> String
    #   resp.recipes[0].last_modified_date #=> Time
    #   resp.recipes[0].project_name #=> String
    #   resp.recipes[0].published_by #=> String
    #   resp.recipes[0].published_date #=> Time
    #   resp.recipes[0].description #=> String
    #   resp.recipes[0].name #=> String
    #   resp.recipes[0].resource_arn #=> String
    #   resp.recipes[0].steps #=> Array
    #   resp.recipes[0].steps[0].action.operation #=> String
    #   resp.recipes[0].steps[0].action.parameters #=> Hash
    #   resp.recipes[0].steps[0].action.parameters["ParameterName"] #=> String
    #   resp.recipes[0].steps[0].condition_expressions #=> Array
    #   resp.recipes[0].steps[0].condition_expressions[0].condition #=> String
    #   resp.recipes[0].steps[0].condition_expressions[0].value #=> String
    #   resp.recipes[0].steps[0].condition_expressions[0].target_column #=> String
    #   resp.recipes[0].tags #=> Hash
    #   resp.recipes[0].tags["TagKey"] #=> String
    #   resp.recipes[0].recipe_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListRecipeVersions AWS API Documentation
    #
    # @overload list_recipe_versions(params = {})
    # @param [Hash] params ({})
    def list_recipe_versions(params = {}, options = {})
      req = build_request(:list_recipe_versions, params)
      req.send_request(options)
    end

    # Lists all of the AWS Glue DataBrew recipes in the current AWS account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [String] :recipe_version
    #   A version identifier. Using this parameter indicates to return only
    #   those recipes that have this version identifier.
    #
    # @return [Types::ListRecipesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecipesResponse#recipes #recipes} => Array&lt;Types::Recipe&gt;
    #   * {Types::ListRecipesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recipes({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     recipe_version: "RecipeVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.recipes #=> Array
    #   resp.recipes[0].created_by #=> String
    #   resp.recipes[0].create_date #=> Time
    #   resp.recipes[0].last_modified_by #=> String
    #   resp.recipes[0].last_modified_date #=> Time
    #   resp.recipes[0].project_name #=> String
    #   resp.recipes[0].published_by #=> String
    #   resp.recipes[0].published_date #=> Time
    #   resp.recipes[0].description #=> String
    #   resp.recipes[0].name #=> String
    #   resp.recipes[0].resource_arn #=> String
    #   resp.recipes[0].steps #=> Array
    #   resp.recipes[0].steps[0].action.operation #=> String
    #   resp.recipes[0].steps[0].action.parameters #=> Hash
    #   resp.recipes[0].steps[0].action.parameters["ParameterName"] #=> String
    #   resp.recipes[0].steps[0].condition_expressions #=> Array
    #   resp.recipes[0].steps[0].condition_expressions[0].condition #=> String
    #   resp.recipes[0].steps[0].condition_expressions[0].value #=> String
    #   resp.recipes[0].steps[0].condition_expressions[0].target_column #=> String
    #   resp.recipes[0].tags #=> Hash
    #   resp.recipes[0].tags["TagKey"] #=> String
    #   resp.recipes[0].recipe_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListRecipes AWS API Documentation
    #
    # @overload list_recipes(params = {})
    # @param [Hash] params ({})
    def list_recipes(params = {}, options = {})
      req = build_request(:list_recipes, params)
      req.send_request(options)
    end

    # Lists the AWS Glue DataBrew schedules in the current AWS account.
    #
    # @option params [String] :job_name
    #   The name of the job that these schedules apply to.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @return [Types::ListSchedulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchedulesResponse#schedules #schedules} => Array&lt;Types::Schedule&gt;
    #   * {Types::ListSchedulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schedules({
    #     job_name: "JobName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.schedules #=> Array
    #   resp.schedules[0].account_id #=> String
    #   resp.schedules[0].created_by #=> String
    #   resp.schedules[0].create_date #=> Time
    #   resp.schedules[0].job_names #=> Array
    #   resp.schedules[0].job_names[0] #=> String
    #   resp.schedules[0].last_modified_by #=> String
    #   resp.schedules[0].last_modified_date #=> Time
    #   resp.schedules[0].resource_arn #=> String
    #   resp.schedules[0].cron_expression #=> String
    #   resp.schedules[0].tags #=> Hash
    #   resp.schedules[0].tags["TagKey"] #=> String
    #   resp.schedules[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListSchedules AWS API Documentation
    #
    # @overload list_schedules(params = {})
    # @param [Hash] params ({})
    def list_schedules(params = {}, options = {})
      req = build_request(:list_schedules, params)
      req.send_request(options)
    end

    # Lists all the tags for an AWS Glue DataBrew resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   DataBrew resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Publishes a new major version of an AWS Glue DataBrew recipe that
    # exists in the current AWS account.
    #
    # @option params [String] :description
    #   A description of the recipe to be published, for this version of the
    #   recipe.
    #
    # @option params [required, String] :name
    #   The name of the recipe to be published.
    #
    # @return [Types::PublishRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PublishRecipeResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_recipe({
    #     description: "RecipeDescription",
    #     name: "RecipeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/PublishRecipe AWS API Documentation
    #
    # @overload publish_recipe(params = {})
    # @param [Hash] params ({})
    def publish_recipe(params = {}, options = {})
      req = build_request(:publish_recipe, params)
      req.send_request(options)
    end

    # Performs a recipe step within an interactive AWS Glue DataBrew session
    # that's currently open.
    #
    # @option params [Boolean] :preview
    #   Returns the result of the recipe step, without applying it. The result
    #   isn't added to the view frame stack.
    #
    # @option params [required, String] :name
    #   The name of the project to apply the action to.
    #
    # @option params [Types::RecipeStep] :recipe_step
    #   Represents a single step to be performed in an AWS Glue DataBrew
    #   recipe.
    #
    # @option params [Integer] :step_index
    #   The index from which to preview a step. This index is used to preview
    #   the result of steps that have already been applied, so that the
    #   resulting view frame is from earlier in the view frame stack.
    #
    # @option params [String] :client_session_id
    #   A unique identifier for an interactive session that's currently open
    #   and ready for work. The action will be performed on this session.
    #
    # @option params [Types::ViewFrame] :view_frame
    #   Represents the data being being transformed during an AWS Glue
    #   DataBrew project session.
    #
    # @return [Types::SendProjectSessionActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendProjectSessionActionResponse#result #result} => String
    #   * {Types::SendProjectSessionActionResponse#name #name} => String
    #   * {Types::SendProjectSessionActionResponse#action_id #action_id} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_project_session_action({
    #     preview: false,
    #     name: "ProjectName", # required
    #     recipe_step: {
    #       action: { # required
    #         operation: "Operation", # required
    #         parameters: {
    #           "ParameterName" => "ParameterValue",
    #         },
    #       },
    #       condition_expressions: [
    #         {
    #           condition: "Condition", # required
    #           value: "ConditionValue",
    #           target_column: "TargetColumn", # required
    #         },
    #       ],
    #     },
    #     step_index: 1,
    #     client_session_id: "ClientSessionId",
    #     view_frame: {
    #       start_column_index: 1, # required
    #       column_range: 1,
    #       hidden_columns: ["ColumnName"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.result #=> String
    #   resp.name #=> String
    #   resp.action_id #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/SendProjectSessionAction AWS API Documentation
    #
    # @overload send_project_session_action(params = {})
    # @param [Hash] params ({})
    def send_project_session_action(params = {}, options = {})
      req = build_request(:send_project_session_action, params)
      req.send_request(options)
    end

    # Runs an AWS Glue DataBrew job that exists in the current AWS account.
    #
    # @option params [required, String] :name
    #   The name of the job to be run.
    #
    # @return [Types::StartJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartJobRunResponse#run_id #run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job_run({
    #     name: "JobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/StartJobRun AWS API Documentation
    #
    # @overload start_job_run(params = {})
    # @param [Hash] params ({})
    def start_job_run(params = {}, options = {})
      req = build_request(:start_job_run, params)
      req.send_request(options)
    end

    # Creates an interactive session, enabling you to manipulate an AWS Glue
    # DataBrew project.
    #
    # @option params [required, String] :name
    #   The name of the project to act upon.
    #
    # @option params [Boolean] :assume_control
    #   A value that, if true, enables you to take control of a session, even
    #   if a different client is currently accessing the project.
    #
    # @return [Types::StartProjectSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartProjectSessionResponse#name #name} => String
    #   * {Types::StartProjectSessionResponse#client_session_id #client_session_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_project_session({
    #     name: "ProjectName", # required
    #     assume_control: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.client_session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/StartProjectSession AWS API Documentation
    #
    # @overload start_project_session(params = {})
    # @param [Hash] params ({})
    def start_project_session(params = {}, options = {})
      req = build_request(:start_project_session, params)
      req.send_request(options)
    end

    # Stops the specified job from running in the current AWS account.
    #
    # @option params [required, String] :name
    #   The name of the job to be stopped.
    #
    # @option params [required, String] :run_id
    #   The ID of the job run to be stopped.
    #
    # @return [Types::StopJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopJobRunResponse#run_id #run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_job_run({
    #     name: "JobName", # required
    #     run_id: "JobRunId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/StopJobRun AWS API Documentation
    #
    # @overload stop_job_run(params = {})
    # @param [Hash] params ({})
    def stop_job_run(params = {}, options = {})
      req = build_request(:stop_job_run, params)
      req.send_request(options)
    end

    # Adds metadata tags to an AWS Glue DataBrew resource, such as a
    # dataset, job, project, or recipe.
    #
    # @option params [required, String] :resource_arn
    #   The DataBrew resource to which tags should be added. The value for
    #   this parameter is an Amazon Resource Name (ARN). For DataBrew, you can
    #   tag a dataset, a job, a project, or a recipe.
    #
    # @option params [required, Hash<String,String>] :tags
    #   One or more tags to be assigned to the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes metadata tags from an AWS Glue DataBrew resource.
    #
    # @option params [required, String] :resource_arn
    #   An DataBrew resource from which you want to remove a tag or tags. The
    #   value for this parameter is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys (names) of one or more tags to be removed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies the definition of an existing AWS Glue DataBrew dataset in
    # the current AWS account.
    #
    # @option params [required, String] :name
    #   The name of the dataset to be updated.
    #
    # @option params [Types::FormatOptions] :format_options
    #   Options that define how Microsoft Excel input is to be interpreted by
    #   DataBrew.
    #
    # @option params [required, Types::Input] :input
    #   Information on how AWS Glue DataBrew can find data, in either the AWS
    #   Glue Data Catalog or Amazon S3.
    #
    # @return [Types::UpdateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDatasetResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset({
    #     name: "DatasetName", # required
    #     format_options: {
    #       json: {
    #         multi_line: false,
    #       },
    #       excel: {
    #         sheet_names: ["SheetName"],
    #         sheet_indexes: [1],
    #       },
    #     },
    #     input: { # required
    #       s3_input_definition: {
    #         bucket: "Bucket", # required
    #         key: "Key",
    #       },
    #       data_catalog_input_definition: {
    #         catalog_id: "CatalogId",
    #         database_name: "DatabaseName", # required
    #         table_name: "TableName", # required
    #         temp_directory: {
    #           bucket: "Bucket", # required
    #           key: "Key",
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateDataset AWS API Documentation
    #
    # @overload update_dataset(params = {})
    # @param [Hash] params ({})
    def update_dataset(params = {}, options = {})
      req = build_request(:update_dataset, params)
      req.send_request(options)
    end

    # Modifies the definition of an existing AWS Glue DataBrew job in the
    # current AWS account.
    #
    # @option params [String] :encryption_key_arn
    #   The Amazon Resource Name (ARN) of an encryption key that is used to
    #   protect the job.
    #
    # @option params [String] :encryption_mode
    #   The encryption mode for the job, which can be one of the following:
    #
    #   * `SSE-KMS` - Server-side encryption with AWS KMS-managed keys.
    #
    #   * `SSE-S3` - Server-side encryption with keys managed by Amazon S3.
    #
    # @option params [required, String] :name
    #   The name of the job to be updated.
    #
    # @option params [String] :log_subscription
    #   A value that enables or disables Amazon CloudWatch logging for the
    #   current AWS account. If logging is enabled, CloudWatch writes one log
    #   stream for each job run.
    #
    # @option params [Integer] :max_capacity
    #   The maximum number of nodes that DataBrew can use when the job
    #   processes data.
    #
    # @option params [Integer] :max_retries
    #   The maximum number of times to retry the job after a job run fails.
    #
    # @option params [required, Types::S3Location] :output_location
    #   An Amazon S3 location (bucket name an object key) where DataBrew can
    #   read input data, or write output from a job.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role to be assumed for this request.
    #
    # @option params [Integer] :timeout
    #   The job's timeout in minutes. A job that attempts to run longer than
    #   this timeout period ends with a status of `TIMEOUT`.
    #
    # @return [Types::UpdateProfileJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProfileJobResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile_job({
    #     encryption_key_arn: "EncryptionKeyArn",
    #     encryption_mode: "SSE-KMS", # accepts SSE-KMS, SSE-S3
    #     name: "JobName", # required
    #     log_subscription: "ENABLE", # accepts ENABLE, DISABLE
    #     max_capacity: 1,
    #     max_retries: 1,
    #     output_location: { # required
    #       bucket: "Bucket", # required
    #       key: "Key",
    #     },
    #     role_arn: "Arn", # required
    #     timeout: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateProfileJob AWS API Documentation
    #
    # @overload update_profile_job(params = {})
    # @param [Hash] params ({})
    def update_profile_job(params = {}, options = {})
      req = build_request(:update_profile_job, params)
      req.send_request(options)
    end

    # Modifies the definition of an existing AWS Glue DataBrew project in
    # the current AWS account.
    #
    # @option params [Types::Sample] :sample
    #   Represents the sample size and sampling type for AWS Glue DataBrew to
    #   use for interactive data analysis.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed for this
    #   request.
    #
    # @option params [required, String] :name
    #   The name of the project to be updated.
    #
    # @return [Types::UpdateProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::UpdateProjectResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     sample: {
    #       size: 1,
    #       type: "FIRST_N", # required, accepts FIRST_N, LAST_N, RANDOM
    #     },
    #     role_arn: "Arn", # required
    #     name: "ProjectName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.last_modified_date #=> Time
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateProject AWS API Documentation
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # Modifies the definition of the latest working version of an AWS Glue
    # DataBrew recipe in the current AWS account.
    #
    # @option params [String] :description
    #   A description of the recipe.
    #
    # @option params [required, String] :name
    #   The name of the recipe to be updated.
    #
    # @option params [Array<Types::RecipeStep>] :steps
    #   One or more steps to be performed by the recipe. Each step consists of
    #   an action, and the conditions under which the action should succeed.
    #
    # @return [Types::UpdateRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRecipeResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recipe({
    #     description: "RecipeDescription",
    #     name: "RecipeName", # required
    #     steps: [
    #       {
    #         action: { # required
    #           operation: "Operation", # required
    #           parameters: {
    #             "ParameterName" => "ParameterValue",
    #           },
    #         },
    #         condition_expressions: [
    #           {
    #             condition: "Condition", # required
    #             value: "ConditionValue",
    #             target_column: "TargetColumn", # required
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateRecipe AWS API Documentation
    #
    # @overload update_recipe(params = {})
    # @param [Hash] params ({})
    def update_recipe(params = {}, options = {})
      req = build_request(:update_recipe, params)
      req.send_request(options)
    end

    # Modifies the definition of an existing AWS Glue DataBrew recipe job in
    # the current AWS account.
    #
    # @option params [String] :encryption_key_arn
    #   The Amazon Resource Name (ARN) of an encryption key that is used to
    #   protect the job.
    #
    # @option params [String] :encryption_mode
    #   The encryption mode for the job, which can be one of the following:
    #
    #   * `SSE-KMS` - Server-side encryption with AWS KMS-managed keys.
    #
    #   * `SSE-S3` - Server-side encryption with keys managed by Amazon S3.
    #
    # @option params [required, String] :name
    #   The name of the job to update.
    #
    # @option params [String] :log_subscription
    #   A value that enables or disables Amazon CloudWatch logging for the
    #   current AWS account. If logging is enabled, CloudWatch writes one log
    #   stream for each job run.
    #
    # @option params [Integer] :max_capacity
    #   The maximum number of nodes that DataBrew can consume when the job
    #   processes data.
    #
    # @option params [Integer] :max_retries
    #   The maximum number of times to retry the job after a job run fails.
    #
    # @option params [required, Array<Types::Output>] :outputs
    #   One or more artifacts that represent the output from running the job.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role to be assumed for this request.
    #
    # @option params [Integer] :timeout
    #   The job's timeout in minutes. A job that attempts to run longer than
    #   this timeout period ends with a status of `TIMEOUT`.
    #
    # @return [Types::UpdateRecipeJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRecipeJobResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recipe_job({
    #     encryption_key_arn: "EncryptionKeyArn",
    #     encryption_mode: "SSE-KMS", # accepts SSE-KMS, SSE-S3
    #     name: "JobName", # required
    #     log_subscription: "ENABLE", # accepts ENABLE, DISABLE
    #     max_capacity: 1,
    #     max_retries: 1,
    #     outputs: [ # required
    #       {
    #         compression_format: "GZIP", # accepts GZIP, LZ4, SNAPPY, BZIP2, DEFLATE, LZO, BROTLI, ZSTD, ZLIB
    #         format: "CSV", # accepts CSV, JSON, PARQUET, GLUEPARQUET, AVRO, ORC, XML
    #         partition_columns: ["ColumnName"],
    #         location: { # required
    #           bucket: "Bucket", # required
    #           key: "Key",
    #         },
    #         overwrite: false,
    #       },
    #     ],
    #     role_arn: "Arn", # required
    #     timeout: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateRecipeJob AWS API Documentation
    #
    # @overload update_recipe_job(params = {})
    # @param [Hash] params ({})
    def update_recipe_job(params = {}, options = {})
      req = build_request(:update_recipe_job, params)
      req.send_request(options)
    end

    # Modifies the definition of an existing AWS Glue DataBrew schedule in
    # the current AWS account.
    #
    # @option params [Array<String>] :job_names
    #   The name or names of one or more jobs to be run for this schedule.
    #
    # @option params [required, String] :cron_expression
    #   The date or dates and time or times, in `cron` format, when the jobs
    #   are to be run.
    #
    # @option params [required, String] :name
    #   The name of the schedule to update.
    #
    # @return [Types::UpdateScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateScheduleResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_schedule({
    #     job_names: ["JobName"],
    #     cron_expression: "CronExpression", # required
    #     name: "ScheduleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateSchedule AWS API Documentation
    #
    # @overload update_schedule(params = {})
    # @param [Hash] params ({})
    def update_schedule(params = {}, options = {})
      req = build_request(:update_schedule, params)
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
      context[:gem_name] = 'aws-sdk-gluedatabrew'
      context[:gem_version] = '1.0.0'
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
