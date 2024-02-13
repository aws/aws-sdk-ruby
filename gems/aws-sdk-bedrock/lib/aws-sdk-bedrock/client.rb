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

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrock)

module Aws::Bedrock
  # An API client for Bedrock.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Bedrock::Client.new(
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

    @identifier = :bedrock

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
    add_plugin(Aws::Bedrock::Plugins::Endpoints)

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
    #   @option options [Aws::Bedrock::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Bedrock::EndpointParameters`
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

    # Creates a fine-tuning job to customize a base model.
    #
    # You specify the base foundation model and the location of the training
    # data. After the model-customization job completes successfully, your
    # custom model resource will be ready to use. Training data contains
    # input and output text for each record in a JSONL format. Optionally,
    # you can specify validation data in the same format as the training
    # data. Amazon Bedrock returns validation loss metrics and output
    # generations after the job completes.
    #
    # Model-customization jobs are asynchronous and the completion time
    # depends on the base model and the training/validation data size. To
    # monitor a job, use the `GetModelCustomizationJob` operation to
    # retrieve the job status.
    #
    # For more information, see [Custom models][1] in the Bedrock User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    #
    # @option params [required, String] :job_name
    #   Enter a unique name for the fine-tuning job.
    #
    # @option params [required, String] :custom_model_name
    #   Enter a name for the custom model.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon Bedrock can
    #   assume to perform tasks on your behalf. For example, during model
    #   training, Amazon Bedrock needs your permission to read input data from
    #   an S3 bucket, write model artifacts to an S3 bucket. To pass this role
    #   to Amazon Bedrock, the caller of this API must have the `iam:PassRole`
    #   permission.
    #
    # @option params [String] :client_request_token
    #   Unique token value that you can provide. The GetModelCustomizationJob
    #   response includes the same token value.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :base_model_identifier
    #   Name of the base model.
    #
    # @option params [String] :customization_type
    #   The customization type.
    #
    # @option params [String] :custom_model_kms_key_id
    #   The custom model is encrypted at rest using this key.
    #
    # @option params [Array<Types::Tag>] :job_tags
    #   Assign tags to the job.
    #
    # @option params [Array<Types::Tag>] :custom_model_tags
    #   Assign tags to the custom model.
    #
    # @option params [required, Types::TrainingDataConfig] :training_data_config
    #   Information about the training dataset.
    #
    # @option params [Types::ValidationDataConfig] :validation_data_config
    #   Information about the validation dataset.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   S3 location for the output data.
    #
    # @option params [required, Hash<String,String>] :hyper_parameters
    #   Parameters related to tuning the model.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   VPC configuration (optional). Configuration parameters for the private
    #   Virtual Private Cloud (VPC) that contains the resources you are using
    #   for this job.
    #
    # @return [Types::CreateModelCustomizationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelCustomizationJobResponse#job_arn #job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model_customization_job({
    #     job_name: "JobName", # required
    #     custom_model_name: "CustomModelName", # required
    #     role_arn: "RoleArn", # required
    #     client_request_token: "IdempotencyToken",
    #     base_model_identifier: "BaseModelIdentifier", # required
    #     customization_type: "FINE_TUNING", # accepts FINE_TUNING, CONTINUED_PRE_TRAINING
    #     custom_model_kms_key_id: "KmsKeyId",
    #     job_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     custom_model_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     training_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     validation_data_config: {
    #       validators: [ # required
    #         {
    #           s3_uri: "S3Uri", # required
    #         },
    #       ],
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     hyper_parameters: { # required
    #       "String" => "String",
    #     },
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateModelCustomizationJob AWS API Documentation
    #
    # @overload create_model_customization_job(params = {})
    # @param [Hash] params ({})
    def create_model_customization_job(params = {}, options = {})
      req = build_request(:create_model_customization_job, params)
      req.send_request(options)
    end

    # Creates a provisioned throughput with dedicated capacity for a
    # foundation model or a fine-tuned model.
    #
    # For more information, see [Provisioned throughput][1] in the Bedrock
    # User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [String] :client_request_token
    #   Unique token value that you can provide. If this token matches a
    #   previous request, Amazon Bedrock ignores the request, but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Integer] :model_units
    #   Number of model units to allocate.
    #
    # @option params [required, String] :provisioned_model_name
    #   Unique name for this provisioned throughput.
    #
    # @option params [required, String] :model_id
    #   Name or ARN of the model to associate with this provisioned
    #   throughput.
    #
    # @option params [String] :commitment_duration
    #   Commitment duration requested for the provisioned throughput.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with this provisioned throughput.
    #
    # @return [Types::CreateProvisionedModelThroughputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProvisionedModelThroughputResponse#provisioned_model_arn #provisioned_model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioned_model_throughput({
    #     client_request_token: "IdempotencyToken",
    #     model_units: 1, # required
    #     provisioned_model_name: "ProvisionedModelName", # required
    #     model_id: "ModelIdentifier", # required
    #     commitment_duration: "OneMonth", # accepts OneMonth, SixMonths
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateProvisionedModelThroughput AWS API Documentation
    #
    # @overload create_provisioned_model_throughput(params = {})
    # @param [Hash] params ({})
    def create_provisioned_model_throughput(params = {}, options = {})
      req = build_request(:create_provisioned_model_throughput, params)
      req.send_request(options)
    end

    # Deletes a custom model that you created earlier. For more information,
    # see [Custom models][1] in the Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    #
    # @option params [required, String] :model_identifier
    #   Name of the model to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_model({
    #     model_identifier: "ModelIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteCustomModel AWS API Documentation
    #
    # @overload delete_custom_model(params = {})
    # @param [Hash] params ({})
    def delete_custom_model(params = {}, options = {})
      req = build_request(:delete_custom_model, params)
      req.send_request(options)
    end

    # Delete the invocation logging.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteModelInvocationLoggingConfiguration AWS API Documentation
    #
    # @overload delete_model_invocation_logging_configuration(params = {})
    # @param [Hash] params ({})
    def delete_model_invocation_logging_configuration(params = {}, options = {})
      req = build_request(:delete_model_invocation_logging_configuration, params)
      req.send_request(options)
    end

    # Deletes a provisioned throughput. For more information, see
    # [Provisioned throughput][1] in the Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :provisioned_model_id
    #   The ARN or name of the provisioned throughput.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioned_model_throughput({
    #     provisioned_model_id: "ProvisionedModelId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteProvisionedModelThroughput AWS API Documentation
    #
    # @overload delete_provisioned_model_throughput(params = {})
    # @param [Hash] params ({})
    def delete_provisioned_model_throughput(params = {}, options = {})
      req = build_request(:delete_provisioned_model_throughput, params)
      req.send_request(options)
    end

    # Get the properties associated with a Amazon Bedrock custom model that
    # you have created.For more information, see [Custom models][1] in the
    # Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    #
    # @option params [required, String] :model_identifier
    #   Name or ARN of the custom model.
    #
    # @return [Types::GetCustomModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCustomModelResponse#model_arn #model_arn} => String
    #   * {Types::GetCustomModelResponse#model_name #model_name} => String
    #   * {Types::GetCustomModelResponse#job_name #job_name} => String
    #   * {Types::GetCustomModelResponse#job_arn #job_arn} => String
    #   * {Types::GetCustomModelResponse#base_model_arn #base_model_arn} => String
    #   * {Types::GetCustomModelResponse#customization_type #customization_type} => String
    #   * {Types::GetCustomModelResponse#model_kms_key_arn #model_kms_key_arn} => String
    #   * {Types::GetCustomModelResponse#hyper_parameters #hyper_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetCustomModelResponse#training_data_config #training_data_config} => Types::TrainingDataConfig
    #   * {Types::GetCustomModelResponse#validation_data_config #validation_data_config} => Types::ValidationDataConfig
    #   * {Types::GetCustomModelResponse#output_data_config #output_data_config} => Types::OutputDataConfig
    #   * {Types::GetCustomModelResponse#training_metrics #training_metrics} => Types::TrainingMetrics
    #   * {Types::GetCustomModelResponse#validation_metrics #validation_metrics} => Array&lt;Types::ValidatorMetric&gt;
    #   * {Types::GetCustomModelResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_model({
    #     model_identifier: "ModelIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_arn #=> String
    #   resp.model_name #=> String
    #   resp.job_name #=> String
    #   resp.job_arn #=> String
    #   resp.base_model_arn #=> String
    #   resp.customization_type #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #   resp.model_kms_key_arn #=> String
    #   resp.hyper_parameters #=> Hash
    #   resp.hyper_parameters["String"] #=> String
    #   resp.training_data_config.s3_uri #=> String
    #   resp.validation_data_config.validators #=> Array
    #   resp.validation_data_config.validators[0].s3_uri #=> String
    #   resp.output_data_config.s3_uri #=> String
    #   resp.training_metrics.training_loss #=> Float
    #   resp.validation_metrics #=> Array
    #   resp.validation_metrics[0].validation_loss #=> Float
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetCustomModel AWS API Documentation
    #
    # @overload get_custom_model(params = {})
    # @param [Hash] params ({})
    def get_custom_model(params = {}, options = {})
      req = build_request(:get_custom_model, params)
      req.send_request(options)
    end

    # Get details about a Amazon Bedrock foundation model.
    #
    # @option params [required, String] :model_identifier
    #   The model identifier.
    #
    # @return [Types::GetFoundationModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFoundationModelResponse#model_details #model_details} => Types::FoundationModelDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_foundation_model({
    #     model_identifier: "ModelIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_details.model_arn #=> String
    #   resp.model_details.model_id #=> String
    #   resp.model_details.model_name #=> String
    #   resp.model_details.provider_name #=> String
    #   resp.model_details.input_modalities #=> Array
    #   resp.model_details.input_modalities[0] #=> String, one of "TEXT", "IMAGE", "EMBEDDING"
    #   resp.model_details.output_modalities #=> Array
    #   resp.model_details.output_modalities[0] #=> String, one of "TEXT", "IMAGE", "EMBEDDING"
    #   resp.model_details.response_streaming_supported #=> Boolean
    #   resp.model_details.customizations_supported #=> Array
    #   resp.model_details.customizations_supported[0] #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #   resp.model_details.inference_types_supported #=> Array
    #   resp.model_details.inference_types_supported[0] #=> String, one of "ON_DEMAND", "PROVISIONED"
    #   resp.model_details.model_lifecycle.status #=> String, one of "ACTIVE", "LEGACY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetFoundationModel AWS API Documentation
    #
    # @overload get_foundation_model(params = {})
    # @param [Hash] params ({})
    def get_foundation_model(params = {}, options = {})
      req = build_request(:get_foundation_model, params)
      req.send_request(options)
    end

    # Retrieves the properties associated with a model-customization job,
    # including the status of the job. For more information, see [Custom
    # models][1] in the Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    #
    # @option params [required, String] :job_identifier
    #   Identifier for the customization job.
    #
    # @return [Types::GetModelCustomizationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelCustomizationJobResponse#job_arn #job_arn} => String
    #   * {Types::GetModelCustomizationJobResponse#job_name #job_name} => String
    #   * {Types::GetModelCustomizationJobResponse#output_model_name #output_model_name} => String
    #   * {Types::GetModelCustomizationJobResponse#output_model_arn #output_model_arn} => String
    #   * {Types::GetModelCustomizationJobResponse#client_request_token #client_request_token} => String
    #   * {Types::GetModelCustomizationJobResponse#role_arn #role_arn} => String
    #   * {Types::GetModelCustomizationJobResponse#status #status} => String
    #   * {Types::GetModelCustomizationJobResponse#failure_message #failure_message} => String
    #   * {Types::GetModelCustomizationJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetModelCustomizationJobResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetModelCustomizationJobResponse#end_time #end_time} => Time
    #   * {Types::GetModelCustomizationJobResponse#base_model_arn #base_model_arn} => String
    #   * {Types::GetModelCustomizationJobResponse#hyper_parameters #hyper_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetModelCustomizationJobResponse#training_data_config #training_data_config} => Types::TrainingDataConfig
    #   * {Types::GetModelCustomizationJobResponse#validation_data_config #validation_data_config} => Types::ValidationDataConfig
    #   * {Types::GetModelCustomizationJobResponse#output_data_config #output_data_config} => Types::OutputDataConfig
    #   * {Types::GetModelCustomizationJobResponse#customization_type #customization_type} => String
    #   * {Types::GetModelCustomizationJobResponse#output_model_kms_key_arn #output_model_kms_key_arn} => String
    #   * {Types::GetModelCustomizationJobResponse#training_metrics #training_metrics} => Types::TrainingMetrics
    #   * {Types::GetModelCustomizationJobResponse#validation_metrics #validation_metrics} => Array&lt;Types::ValidatorMetric&gt;
    #   * {Types::GetModelCustomizationJobResponse#vpc_config #vpc_config} => Types::VpcConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_customization_job({
    #     job_identifier: "ModelCustomizationJobIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_name #=> String
    #   resp.output_model_name #=> String
    #   resp.output_model_arn #=> String
    #   resp.client_request_token #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.failure_message #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.end_time #=> Time
    #   resp.base_model_arn #=> String
    #   resp.hyper_parameters #=> Hash
    #   resp.hyper_parameters["String"] #=> String
    #   resp.training_data_config.s3_uri #=> String
    #   resp.validation_data_config.validators #=> Array
    #   resp.validation_data_config.validators[0].s3_uri #=> String
    #   resp.output_data_config.s3_uri #=> String
    #   resp.customization_type #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #   resp.output_model_kms_key_arn #=> String
    #   resp.training_metrics.training_loss #=> Float
    #   resp.validation_metrics #=> Array
    #   resp.validation_metrics[0].validation_loss #=> Float
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetModelCustomizationJob AWS API Documentation
    #
    # @overload get_model_customization_job(params = {})
    # @param [Hash] params ({})
    def get_model_customization_job(params = {}, options = {})
      req = build_request(:get_model_customization_job, params)
      req.send_request(options)
    end

    # Get the current configuration values for model invocation logging.
    #
    # @return [Types::GetModelInvocationLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelInvocationLoggingConfigurationResponse#logging_config #logging_config} => Types::LoggingConfig
    #
    # @example Response structure
    #
    #   resp.logging_config.cloud_watch_config.log_group_name #=> String
    #   resp.logging_config.cloud_watch_config.role_arn #=> String
    #   resp.logging_config.cloud_watch_config.large_data_delivery_s3_config.bucket_name #=> String
    #   resp.logging_config.cloud_watch_config.large_data_delivery_s3_config.key_prefix #=> String
    #   resp.logging_config.s3_config.bucket_name #=> String
    #   resp.logging_config.s3_config.key_prefix #=> String
    #   resp.logging_config.text_data_delivery_enabled #=> Boolean
    #   resp.logging_config.image_data_delivery_enabled #=> Boolean
    #   resp.logging_config.embedding_data_delivery_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetModelInvocationLoggingConfiguration AWS API Documentation
    #
    # @overload get_model_invocation_logging_configuration(params = {})
    # @param [Hash] params ({})
    def get_model_invocation_logging_configuration(params = {}, options = {})
      req = build_request(:get_model_invocation_logging_configuration, params)
      req.send_request(options)
    end

    # Get details for a provisioned throughput. For more information, see
    # [Provisioned throughput][1] in the Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :provisioned_model_id
    #   The ARN or name of the provisioned throughput.
    #
    # @return [Types::GetProvisionedModelThroughputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProvisionedModelThroughputResponse#model_units #model_units} => Integer
    #   * {Types::GetProvisionedModelThroughputResponse#desired_model_units #desired_model_units} => Integer
    #   * {Types::GetProvisionedModelThroughputResponse#provisioned_model_name #provisioned_model_name} => String
    #   * {Types::GetProvisionedModelThroughputResponse#provisioned_model_arn #provisioned_model_arn} => String
    #   * {Types::GetProvisionedModelThroughputResponse#model_arn #model_arn} => String
    #   * {Types::GetProvisionedModelThroughputResponse#desired_model_arn #desired_model_arn} => String
    #   * {Types::GetProvisionedModelThroughputResponse#foundation_model_arn #foundation_model_arn} => String
    #   * {Types::GetProvisionedModelThroughputResponse#status #status} => String
    #   * {Types::GetProvisionedModelThroughputResponse#creation_time #creation_time} => Time
    #   * {Types::GetProvisionedModelThroughputResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetProvisionedModelThroughputResponse#failure_message #failure_message} => String
    #   * {Types::GetProvisionedModelThroughputResponse#commitment_duration #commitment_duration} => String
    #   * {Types::GetProvisionedModelThroughputResponse#commitment_expiration_time #commitment_expiration_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_provisioned_model_throughput({
    #     provisioned_model_id: "ProvisionedModelId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_units #=> Integer
    #   resp.desired_model_units #=> Integer
    #   resp.provisioned_model_name #=> String
    #   resp.provisioned_model_arn #=> String
    #   resp.model_arn #=> String
    #   resp.desired_model_arn #=> String
    #   resp.foundation_model_arn #=> String
    #   resp.status #=> String, one of "Creating", "InService", "Updating", "Failed"
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.failure_message #=> String
    #   resp.commitment_duration #=> String, one of "OneMonth", "SixMonths"
    #   resp.commitment_expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetProvisionedModelThroughput AWS API Documentation
    #
    # @overload get_provisioned_model_throughput(params = {})
    # @param [Hash] params ({})
    def get_provisioned_model_throughput(params = {}, options = {})
      req = build_request(:get_provisioned_model_throughput, params)
      req.send_request(options)
    end

    # Returns a list of the custom models that you have created with the
    # `CreateModelCustomizationJob` operation.
    #
    # For more information, see [Custom models][1] in the Bedrock User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   Return custom models created before the specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   Return custom models created after the specified time.
    #
    # @option params [String] :name_contains
    #   Return custom models only if the job name contains these characters.
    #
    # @option params [String] :base_model_arn_equals
    #   Return custom models only if the base model ARN matches this
    #   parameter.
    #
    # @option params [String] :foundation_model_arn_equals
    #   Return custom models only if the foundation model ARN matches this
    #   parameter.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   Continuation token from the previous response, for Amazon Bedrock to
    #   list the next set of results.
    #
    # @option params [String] :sort_by
    #   The field to sort by in the returned list of models.
    #
    # @option params [String] :sort_order
    #   The sort order of the results.
    #
    # @return [Types::ListCustomModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomModelsResponse#next_token #next_token} => String
    #   * {Types::ListCustomModelsResponse#model_summaries #model_summaries} => Array&lt;Types::CustomModelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_models({
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #     name_contains: "CustomModelName",
    #     base_model_arn_equals: "ModelArn",
    #     foundation_model_arn_equals: "FoundationModelArn",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.model_summaries #=> Array
    #   resp.model_summaries[0].model_arn #=> String
    #   resp.model_summaries[0].model_name #=> String
    #   resp.model_summaries[0].creation_time #=> Time
    #   resp.model_summaries[0].base_model_arn #=> String
    #   resp.model_summaries[0].base_model_name #=> String
    #   resp.model_summaries[0].customization_type #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListCustomModels AWS API Documentation
    #
    # @overload list_custom_models(params = {})
    # @param [Hash] params ({})
    def list_custom_models(params = {}, options = {})
      req = build_request(:list_custom_models, params)
      req.send_request(options)
    end

    # List of Amazon Bedrock foundation models that you can use. For more
    # information, see [Foundation models][1] in the Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/foundation-models.html
    #
    # @option params [String] :by_provider
    #   A Amazon Bedrock model provider.
    #
    # @option params [String] :by_customization_type
    #   List by customization type.
    #
    # @option params [String] :by_output_modality
    #   List by output modality type.
    #
    # @option params [String] :by_inference_type
    #   List by inference type.
    #
    # @return [Types::ListFoundationModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFoundationModelsResponse#model_summaries #model_summaries} => Array&lt;Types::FoundationModelSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_foundation_models({
    #     by_provider: "Provider",
    #     by_customization_type: "FINE_TUNING", # accepts FINE_TUNING, CONTINUED_PRE_TRAINING
    #     by_output_modality: "TEXT", # accepts TEXT, IMAGE, EMBEDDING
    #     by_inference_type: "ON_DEMAND", # accepts ON_DEMAND, PROVISIONED
    #   })
    #
    # @example Response structure
    #
    #   resp.model_summaries #=> Array
    #   resp.model_summaries[0].model_arn #=> String
    #   resp.model_summaries[0].model_id #=> String
    #   resp.model_summaries[0].model_name #=> String
    #   resp.model_summaries[0].provider_name #=> String
    #   resp.model_summaries[0].input_modalities #=> Array
    #   resp.model_summaries[0].input_modalities[0] #=> String, one of "TEXT", "IMAGE", "EMBEDDING"
    #   resp.model_summaries[0].output_modalities #=> Array
    #   resp.model_summaries[0].output_modalities[0] #=> String, one of "TEXT", "IMAGE", "EMBEDDING"
    #   resp.model_summaries[0].response_streaming_supported #=> Boolean
    #   resp.model_summaries[0].customizations_supported #=> Array
    #   resp.model_summaries[0].customizations_supported[0] #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #   resp.model_summaries[0].inference_types_supported #=> Array
    #   resp.model_summaries[0].inference_types_supported[0] #=> String, one of "ON_DEMAND", "PROVISIONED"
    #   resp.model_summaries[0].model_lifecycle.status #=> String, one of "ACTIVE", "LEGACY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListFoundationModels AWS API Documentation
    #
    # @overload list_foundation_models(params = {})
    # @param [Hash] params ({})
    def list_foundation_models(params = {}, options = {})
      req = build_request(:list_foundation_models, params)
      req.send_request(options)
    end

    # Returns a list of model customization jobs that you have submitted.
    # You can filter the jobs to return based on one or more criteria.
    #
    # For more information, see [Custom models][1] in the Bedrock User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   Return customization jobs created after the specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   Return customization jobs created before the specified time.
    #
    # @option params [String] :status_equals
    #   Return customization jobs with the specified status.
    #
    # @option params [String] :name_contains
    #   Return customization jobs only if the job name contains these
    #   characters.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   Continuation token from the previous response, for Amazon Bedrock to
    #   list the next set of results.
    #
    # @option params [String] :sort_by
    #   The field to sort by in the returned list of jobs.
    #
    # @option params [String] :sort_order
    #   The sort order of the results.
    #
    # @return [Types::ListModelCustomizationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelCustomizationJobsResponse#next_token #next_token} => String
    #   * {Types::ListModelCustomizationJobsResponse#model_customization_job_summaries #model_customization_job_summaries} => Array&lt;Types::ModelCustomizationJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_model_customization_jobs({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #     name_contains: "JobName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.model_customization_job_summaries #=> Array
    #   resp.model_customization_job_summaries[0].job_arn #=> String
    #   resp.model_customization_job_summaries[0].base_model_arn #=> String
    #   resp.model_customization_job_summaries[0].job_name #=> String
    #   resp.model_customization_job_summaries[0].status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.model_customization_job_summaries[0].last_modified_time #=> Time
    #   resp.model_customization_job_summaries[0].creation_time #=> Time
    #   resp.model_customization_job_summaries[0].end_time #=> Time
    #   resp.model_customization_job_summaries[0].custom_model_arn #=> String
    #   resp.model_customization_job_summaries[0].custom_model_name #=> String
    #   resp.model_customization_job_summaries[0].customization_type #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListModelCustomizationJobs AWS API Documentation
    #
    # @overload list_model_customization_jobs(params = {})
    # @param [Hash] params ({})
    def list_model_customization_jobs(params = {}, options = {})
      req = build_request(:list_model_customization_jobs, params)
      req.send_request(options)
    end

    # List the provisioned capacities. For more information, see
    # [Provisioned throughput][1] in the Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   Return provisioned capacities created after the specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   Return provisioned capacities created before the specified time.
    #
    # @option params [String] :status_equals
    #   Return the list of provisioned capacities that match the specified
    #   status.
    #
    # @option params [String] :model_arn_equals
    #   Return the list of provisioned capacities where their model ARN is
    #   equal to this parameter.
    #
    # @option params [String] :name_contains
    #   Return the list of provisioned capacities if their name contains these
    #   characters.
    #
    # @option params [Integer] :max_results
    #   THe maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   Continuation token from the previous response, for Amazon Bedrock to
    #   list the next set of results.
    #
    # @option params [String] :sort_by
    #   The field to sort by in the returned list of provisioned capacities.
    #
    # @option params [String] :sort_order
    #   The sort order of the results.
    #
    # @return [Types::ListProvisionedModelThroughputsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisionedModelThroughputsResponse#next_token #next_token} => String
    #   * {Types::ListProvisionedModelThroughputsResponse#provisioned_model_summaries #provisioned_model_summaries} => Array&lt;Types::ProvisionedModelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioned_model_throughputs({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "Creating", # accepts Creating, InService, Updating, Failed
    #     model_arn_equals: "ModelArn",
    #     name_contains: "ProvisionedModelName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.provisioned_model_summaries #=> Array
    #   resp.provisioned_model_summaries[0].provisioned_model_name #=> String
    #   resp.provisioned_model_summaries[0].provisioned_model_arn #=> String
    #   resp.provisioned_model_summaries[0].model_arn #=> String
    #   resp.provisioned_model_summaries[0].desired_model_arn #=> String
    #   resp.provisioned_model_summaries[0].foundation_model_arn #=> String
    #   resp.provisioned_model_summaries[0].model_units #=> Integer
    #   resp.provisioned_model_summaries[0].desired_model_units #=> Integer
    #   resp.provisioned_model_summaries[0].status #=> String, one of "Creating", "InService", "Updating", "Failed"
    #   resp.provisioned_model_summaries[0].commitment_duration #=> String, one of "OneMonth", "SixMonths"
    #   resp.provisioned_model_summaries[0].commitment_expiration_time #=> Time
    #   resp.provisioned_model_summaries[0].creation_time #=> Time
    #   resp.provisioned_model_summaries[0].last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListProvisionedModelThroughputs AWS API Documentation
    #
    # @overload list_provisioned_model_throughputs(params = {})
    # @param [Hash] params ({})
    def list_provisioned_model_throughputs(params = {}, options = {})
      req = build_request(:list_provisioned_model_throughputs, params)
      req.send_request(options)
    end

    # List the tags associated with the specified resource.
    #
    # For more information, see [Tagging resources][1] in the Bedrock User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Set the configuration values for model invocation logging.
    #
    # @option params [required, Types::LoggingConfig] :logging_config
    #   The logging configuration values to set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_model_invocation_logging_configuration({
    #     logging_config: { # required
    #       cloud_watch_config: {
    #         log_group_name: "LogGroupName", # required
    #         role_arn: "RoleArn", # required
    #         large_data_delivery_s3_config: {
    #           bucket_name: "BucketName", # required
    #           key_prefix: "KeyPrefix",
    #         },
    #       },
    #       s3_config: {
    #         bucket_name: "BucketName", # required
    #         key_prefix: "KeyPrefix",
    #       },
    #       text_data_delivery_enabled: false,
    #       image_data_delivery_enabled: false,
    #       embedding_data_delivery_enabled: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/PutModelInvocationLoggingConfiguration AWS API Documentation
    #
    # @overload put_model_invocation_logging_configuration(params = {})
    # @param [Hash] params ({})
    def put_model_invocation_logging_configuration(params = {}, options = {})
      req = build_request(:put_model_invocation_logging_configuration, params)
      req.send_request(options)
    end

    # Stops an active model customization job. For more information, see
    # [Custom models][1] in the Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    #
    # @option params [required, String] :job_identifier
    #   Job identifier of the job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_model_customization_job({
    #     job_identifier: "ModelCustomizationJobIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/StopModelCustomizationJob AWS API Documentation
    #
    # @overload stop_model_customization_job(params = {})
    # @param [Hash] params ({})
    def stop_model_customization_job(params = {}, options = {})
      req = build_request(:stop_model_customization_job, params)
      req.send_request(options)
    end

    # Associate tags with a resource. For more information, see [Tagging
    # resources][1] in the Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Tags to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove one or more tags from a resource. For more information, see
    # [Tagging resources][1] in the Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Tag keys of the tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update a provisioned throughput. For more information, see
    # [Provisioned throughput][1] in the Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :provisioned_model_id
    #   The ARN or name of the provisioned throughput to update.
    #
    # @option params [String] :desired_provisioned_model_name
    #   The new name for this provisioned throughput.
    #
    # @option params [String] :desired_model_id
    #   The ARN of the new model to associate with this provisioned
    #   throughput.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioned_model_throughput({
    #     provisioned_model_id: "ProvisionedModelId", # required
    #     desired_provisioned_model_name: "ProvisionedModelName",
    #     desired_model_id: "ModelIdentifier",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/UpdateProvisionedModelThroughput AWS API Documentation
    #
    # @overload update_provisioned_model_throughput(params = {})
    # @param [Hash] params ({})
    def update_provisioned_model_throughput(params = {}, options = {})
      req = build_request(:update_provisioned_model_throughput, params)
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
      context[:gem_name] = 'aws-sdk-bedrock'
      context[:gem_version] = '1.4.0'
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
